#!/usr/bin/env python

import psycopg2
import psycopg2.extras

import pgcast


class BaseDocument:
    GET_HEAD_SQL = None
    GET_BODY_SQL = None
    UPDATE_BODY_SQL = None
    DELETE_DOCUMENT_SQL = None
    CREATE_DOCUMENT_SQL = None
    COMMIT_DOCUMENT_SQL = None
    DECOMMIT_DOCUMENT_SQL = None

    def __init__(self, pool, document_id=None):
        self.pool = pool
        self.errors = []
        if document_id:
            self.load(document_id)
        else:
            self.head = None
            self.body = None

    def init(self):
        conn = None
        document_id = None
        try:
            conn = self.pool.getconn()
            pgcast.register(conn)
            curs = conn.cursor()
            curs.execute(self.CREATE_DOCUMENT_SQL, (self.head, self.body,))
            document_id = curs.fetchone()[0]
            conn.commit()
            curs.close()
        except (Exception, psycopg2.DatabaseError) as error:
            self.errors.append(error.pgerror)
        finally:
            if conn is not None:
                self.pool.putconn(conn)
        return document_id

    def reinit(self, document_id):
        success = True
        conn = None
        try:
            conn = self.pool.getconn()
            pgcast.register(conn)
            curs = conn.cursor()
            curs.execute(self.UPDATE_BODY_SQL, (document_id, self.body,))
            conn.commit()
            curs.close()
        except (Exception, psycopg2.DatabaseError) as error:
            success = False
            self.errors.append(error.pgerror)
        finally:
            if conn is not None:
                self.pool.putconn(conn)
        return success

    def load(self, document_id):
        self._load_head(document_id)
        self._load_body(document_id)

    def delete(self, document_id):
        success = True
        conn = None
        try:
            conn = self.pool.getconn()
            pgcast.register(conn)
            curs = conn.cursor()
            curs.execute(self.DELETE_DOCUMENT_SQL, (document_id,))
            conn.commit()
            curs.close()
        except (Exception, psycopg2.DatabaseError) as error:
            success = False
            self.errors.append(error.pgerror)
        finally:
            if conn is not None:
                self.pool.putconn(conn)
        return success

    def commit(self, document_id, apprise=True):
        success = True
        conn = None
        try:
            conn = self.pool.getconn()
            pgcast.register(conn)
            curs = conn.cursor()
            curs.execute(self.COMMIT_DOCUMENT_SQL, (document_id, apprise,))
            conn.commit()
            curs.close()
        except (Exception, psycopg2.DatabaseError) as error:
            success = False
            self.errors.append(error.pgerror)
        finally:
            if conn is not None:
                self.pool.putconn(conn)
        return success

    def decommit(self, document_id, apprise=True):
        success = True
        conn = None
        try:
            conn = self.pool.getconn()
            pgcast.register(conn)
            curs = conn.cursor()
            curs.execute(self.DECOMMIT_DOCUMENT_SQL, (document_id, apprise,))
            conn.commit()
            curs.close()
        except (Exception, psycopg2.DatabaseError) as error:
            success = False
            self.errors.append(error.pgerror)
        finally:
            if conn is not None:
                self.pool.putconn(conn)
        return success

    def _load_head(self, document_id):
        conn = None
        try:
            conn = self.pool.getconn()
            pgcast.register(conn)
            curs = conn.cursor()
            curs.execute(self.GET_HEAD_SQL, (document_id,))
            self.head = curs.fetchone()[0]
            conn.commit()
            curs.close()
        except (Exception, psycopg2.DatabaseError) as error:
            print(error)
        finally:
            if conn is not None:
                self.pool.putconn(conn)

    def _load_body(self, document_id):
        conn = None
        try:
            conn = self.pool.getconn()
            pgcast.register(conn)
            curs = conn.cursor()
            curs.execute(self.GET_BODY_SQL, (document_id,))
            self.body = curs.fetchone()[0]
            conn.commit()
            curs.close()
        except (Exception, psycopg2.DatabaseError) as error:
            print(error)
        finally:
            if conn is not None:
                self.pool.putconn(conn)

    def to_dict(self):
        _body = []
        for row in self.body:
            _body.append(row.to_dict())
        return {"head": self.head.to_dict(), "body": _body}

    def from_dict(self, d):
        self.head = pgcast.DocumentHead()
        self.head.from_dict(d['head'])
        self.body = []
        for row in d['body']:
            b = pgcast.DocumentBody()
            b.from_dict(row)
            self.body.append(b)
            # return self.create_document(self.head, self.body)

    def to_json(self):
        return "json string {0}".format(self)

    def from_json(self, json):
        self.head = json
        self.body = json
        # return self


class OutboundDocument(BaseDocument):
    def from_dict(self, d):
        self.head = pgcast.OutboundHead()
        self.head.from_dict(d['head'])
        self.body = []
        for row in d['body']:
            b = pgcast.DocumentBody()
            b.from_dict(row)
            self.body.append(b)
            # return self.create_document(self.head, self.body)
        #print (self.head.to_dict())


class InboundDocument(BaseDocument):
    def from_dict(self, d):
        self.head = pgcast.InboundHead()
        self.head.from_dict(d['head'])
        self.body = []
        for row in d['body']:
            b = pgcast.DocumentBody()
            b.from_dict(row)
            self.body.append(b)
            # return self.create_document(self.head, self.body)


class Delivery(InboundDocument):
    GET_HEAD_SQL = "SELECT delivery.get_head(__document_id := %s)"
    GET_BODY_SQL = "SELECT delivery.get_body(__document_id := %s)"
    UPDATE_BODY_SQL = "SELECT delivery.reinit(__document_id := %s, __body := %s)"
    DELETE_DOCUMENT_SQL = "SELECT delivery.destroy(__document_id := %s)"
    CREATE_DOCUMENT_SQL = "SELECT delivery.init(__head := %s, __body := %s)"
    COMMIT_DOCUMENT_SQL = "SELECT delivery.do_commit(__document_id := %s, __apprise := %s)"
    DECOMMIT_DOCUMENT_SQL = "SELECT delivery.do_decommit(__document_id := %s, __apprise := %s)"


class Demand(OutboundDocument):
    GET_HEAD_SQL = "SELECT demand.get_head(__document_id := %s)"
    GET_BODY_SQL = "SELECT demand.get_body(__document_id := %s)"
    UPDATE_BODY_SQL = "SELECT demand.reinit(__document_id := %s, __body := %s)"
    DELETE_DOCUMENT_SQL = "SELECT demand.destroy(__document_id := %s)"
    CREATE_DOCUMENT_SQL = "SELECT demand.init(__head := %s, __body := %s)"
    COMMIT_DOCUMENT_SQL = "SELECT demand.do_commit(__document_id := %s, __apprise := %s)"
    DECOMMIT_DOCUMENT_SQL = "SELECT demand.do_decommit(__document_id := %s, __apprise := %s)"


class Despatch(OutboundDocument):
    GET_HEAD_SQL = "SELECT despatch.get_head(__document_id := %s)"
    GET_BODY_SQL = "SELECT despatch.get_body(__document_id := %s)"
    UPDATE_BODY_SQL = "SELECT despatch.reinit(__document_id := %s, __body := %s)"
    DELETE_DOCUMENT_SQL = "SELECT despatch.destroy(__document_id := %s)"
    CREATE_DOCUMENT_SQL = "SELECT despatch.init(__head := %s, __body := %s)"
    COMMIT_DOCUMENT_SQL = "SELECT despatch.do_commit(__document_id := %s, __apprise := %s)"
    DECOMMIT_DOCUMENT_SQL = "SELECT despatch.do_decommit(__document_id := %s, __apprise := %s)"


class Issue(OutboundDocument):
    GET_HEAD_SQL = "SELECT issue.get_head(__document_id := %s)"
    GET_BODY_SQL = "SELECT issue.get_body(__document_id := %s)"
    UPDATE_BODY_SQL = "SELECT issue.reinit(__document_id := %s, __body := %s)"
    DELETE_DOCUMENT_SQL = "SELECT issue.destroy(__document_id := %s)"
    CREATE_DOCUMENT_SQL = "SELECT issue.init(__head := %s, __body := %s)"
    COMMIT_DOCUMENT_SQL = "SELECT issue.do_commit(__document_id := %s, __apprise := %s)"
    DECOMMIT_DOCUMENT_SQL = "SELECT issue.do_decommit(__document_id := %s, __apprise := %s)"


class Picklist(OutboundDocument):
    GET_HEAD_SQL = "SELECT picklist.get_head(__document_id := %s)"
    GET_BODY_SQL = "SELECT picklist.get_body(__document_id := %s)"
    UPDATE_BODY_SQL = "SELECT picklist.reinit(__document_id := %s, __body := %s)"
    DELETE_DOCUMENT_SQL = "SELECT picklist.destroy(__document_id := %s)"
    CREATE_DOCUMENT_SQL = "SELECT picklist.init(__head := %s, __body := %s)"
    COMMIT_DOCUMENT_SQL = "SELECT picklist.do_commit(__document_id := %s, __apprise := %s)"
    DECOMMIT_DOCUMENT_SQL = "SELECT picklist.do_decommit(__document_id := %s, __apprise := %s)"


class Rebound(InboundDocument):
    GET_HEAD_SQL = "SELECT rebound.get_head(__document_id := %s)"
    GET_BODY_SQL = "SELECT rebound.get_body(__document_id := %s)"
    UPDATE_BODY_SQL = "SELECT rebound.reinit(__document_id := %s, __body := %s)"
    DELETE_DOCUMENT_SQL = "SELECT rebound.destroy(__document_id := %s)"
    CREATE_DOCUMENT_SQL = "SELECT rebound.init(__head := %s, __body := %s)"
    COMMIT_DOCUMENT_SQL = "SELECT rebound.do_commit(__document_id := %s, __apprise := %s)"
    DECOMMIT_DOCUMENT_SQL = "SELECT rebound.do_decommit(__document_id := %s, __apprise := %s)"


class Receipt(InboundDocument):
    GET_HEAD_SQL = "SELECT receipt.get_head(__document_id := %s)"
    GET_BODY_SQL = "SELECT receipt.get_body(__document_id := %s)"
    UPDATE_BODY_SQL = "SELECT receipt.reinit(__document_id := %s, __body := %s)"
    DELETE_DOCUMENT_SQL = "SELECT receipt.destroy(__document_id := %s)"
    CREATE_DOCUMENT_SQL = "SELECT receipt.init(__head := %s, __body := %s)"
    COMMIT_DOCUMENT_SQL = "SELECT receipt.do_commit(__document_id := %s, __apprise := %s)"
    DECOMMIT_DOCUMENT_SQL = "SELECT receipt.do_decommit(__document_id := %s, __apprise := %s)"


class Reserve(OutboundDocument):
    GET_HEAD_SQL = "SELECT reserve.get_head(__document_id := %s)"
    GET_BODY_SQL = "SELECT reserve.get_body(__document_id := %s)"
    UPDATE_BODY_SQL = "SELECT reserve.reinit(__document_id := %s, __body := %s)"
    DELETE_DOCUMENT_SQL = "SELECT reserve.destroy(__document_id := %s)"
    CREATE_DOCUMENT_SQL = "SELECT reserve.init(__head := %s, __body := %s)"
    COMMIT_DOCUMENT_SQL = "SELECT reserve.do_commit(__document_id := %s, __apprise := %s)"
    DECOMMIT_DOCUMENT_SQL = "SELECT reserve.do_decommit(__document_id := %s, __apprise := %s)"


class Cutoff(BaseDocument):
    GET_HEAD_SQL = "SELECT cutoff.get_head(__document_id := %s)"
    GET_BODY_SQL = None
    UPDATE_BODY_SQL = None
    DELETE_DOCUMENT_SQL = "SELECT cutoff.destroy(__document_id := %s)"
    CREATE_DOCUMENT_SQL = "SELECT cutoff.init(__head := %s)"
    COMMIT_DOCUMENT_SQL = "SELECT cutoff.do_commit(__document_id := %s)"
    DECOMMIT_DOCUMENT_SQL = "SELECT cutoff.do_decommit(__document_id := %s)"

    def __init__(self, pool, document_id=None):
        self.pool = pool
        self.errors = []
        if document_id:
            self.load(document_id)
        else:
            self.head = None
            self.body = None

    def init(self):
        conn = None
        document_id = None
        try:
            conn = self.pool.getconn()
            pgcast.register(conn)
            curs = conn.cursor()
            curs.execute(self.CREATE_DOCUMENT_SQL, (self.head,))
            document_id = curs.fetchone()[0]
            conn.commit()
            curs.close()
        except (Exception, psycopg2.DatabaseError) as error:
            self.errors.append(error.pgerror)
        finally:
            if conn is not None:
                self.pool.putconn(conn)
        return document_id

    def reinit(self, document_id):
        pass

    def load(self, document_id):
        self._load_head(document_id)

    def commit(self, document_id, apprise=True):
        success = True
        conn = None
        try:
            conn = self.pool.getconn()
            pgcast.register(conn)
            curs = conn.cursor()
            curs.execute(self.COMMIT_DOCUMENT_SQL, (document_id,))
            conn.commit()
            curs.close()
        except (Exception, psycopg2.DatabaseError) as error:
            success = False
            self.errors.append(error.pgerror)
        finally:
            if conn is not None:
                self.pool.putconn(conn)
        return success

    def decommit(self, document_id, apprise=True):
        success = True
        conn = None
        try:
            conn = self.pool.getconn()
            pgcast.register(conn)
            curs = conn.cursor()
            curs.execute(self.DECOMMIT_DOCUMENT_SQL, (document_id,))
            conn.commit()
            curs.close()
        except (Exception, psycopg2.DatabaseError) as error:
            success = False
            self.errors.append(error.pgerror)
        finally:
            if conn is not None:
                self.pool.putconn(conn)
        return success

    def _load_head(self, document_id):
        conn = None
        try:
            conn = self.pool.getconn()
            pgcast.register(conn)
            curs = conn.cursor()
            curs.execute(self.GET_HEAD_SQL, (document_id,))
            self.head = curs.fetchone()[0]
            conn.commit()
            curs.close()
        except (Exception, psycopg2.DatabaseError) as error:
            print(error)
        finally:
            if conn is not None:
                self.pool.putconn(conn)

    def _load_body(self, document_id):
        pass

    def to_dict(self):
        #_body = []
        #for row in self.body:
        #    _body.append(row.to_dict())
        return {"head": self.head.to_dict(), "body": []}

    def from_dict(self, d):
        self.head = pgcast.DocumentHead()
        self.head.from_dict(d['head'])
        self.body = []
        #for row in d['body']:
        #    b = pgcast.DocumentBody()
        #    b.from_dict(row)
        #    self.body.append(b)
        #    # return self.create_document(self.head, self.body)


class Stocktake(BaseDocument):
    GET_HEAD_SQL = "SELECT stocktake.get_head(__document_id := %s)"
    GET_BODY_SQL = "SELECT stocktake.get_body(__document_id := %s)"
    UPDATE_BODY_SQL = "SELECT stocktake.reinit(__document_id := %s, __body := %s)"
    DELETE_DOCUMENT_SQL = "SELECT stocktake.destroy(__document_id := %s)"
    CREATE_DOCUMENT_SQL = "SELECT stocktake.init(__head := %s, __body := %s)"
    COMMIT_DOCUMENT_SQL = "SELECT stocktake.do_commit(__document_id := %s, __apprise := %s)"
    DECOMMIT_DOCUMENT_SQL = "SELECT stocktake.do_decommit(__document_id := %s, __apprise := %s)"

    #def from_dict(self, d):
    #    self.head = pgcast.DocumentHead()
    #    self.head.from_dict(d['head'])
    #    self.body = []
    #    for row in d['body']:
    #        b = pgcast.StocktakeBody()
    #        b.from_dict(row)
    #        self.body.append(b)
    #        # return self.create_document(self.head, self.body)


class BaseDocumentList:
    GET_LSIT_SQL = None

    def __init__(self, pool, facility=None, sdate=None, edate=None):
        self.pool = pool

        # self.facility_code = None
        if facility:
            self.facility_code = facility

        # self.date_start = None
        if sdate:
            self.date_start = sdate

        # self.date_end = None
        if edate:
            self.date_end = edate

    def get_document_list(self):
        conn = None
        document_list = None
        try:
            conn = self.pool.getconn()
            pgcast.register(conn)
            curs = conn.cursor()
            curs.execute(self.GET_LSIT_SQL, (self.facility_code, self.date_start, self.date_end,))
            document_list = curs.fetchone()[0]
            conn.commit()
            curs.close()
        except (Exception, psycopg2.DatabaseError) as error:
            print(error)
        finally:
            if conn is not None:
                self.pool.putconn(conn)
        return document_list

    def to_dict(self):
        result_list = []
        list_in = self.get_document_list()
        for row in list_in:
            result_list.append(row.to_dict())
        return result_list


class DeliveryList(BaseDocumentList):
    GET_LSIT_SQL = "SELECT delivery.get_head_batch_proposed(__facility_code := %s, __date_start := %s, __date_end := %s)"


class DemandList(BaseDocumentList):
    GET_LSIT_SQL = "SELECT demand.get_head_batch_proposed(__facility_code := %s, __date_start := %s, __date_end := %s)"


class DespatchList(BaseDocumentList):
    GET_LSIT_SQL = "SELECT despatch.get_head_batch_proposed(__facility_code := %s, __date_start := %s, __date_end := %s)"


class IssueList(BaseDocumentList):
    GET_LSIT_SQL = "SELECT issue.get_head_batch_proposed(__facility_code := %s, __date_start := %s, __date_end := %s)"


class PicklistList(BaseDocumentList):
    GET_LSIT_SQL = "SELECT picklist.get_head_batch_proposed(__facility_code := %s, __date_start := %s, __date_end := %s)"


class ReboundList(BaseDocumentList):
    GET_LSIT_SQL = "SELECT rebound.get_head_batch_proposed(__facility_code := %s, __date_start := %s, __date_end := %s)"


class ReceiptList(BaseDocumentList):
    GET_LSIT_SQL = "SELECT receipt.get_head_batch_proposed(__facility_code := %s, __date_start := %s, __date_end := %s)"


class ReserveList(BaseDocumentList):
    GET_LSIT_SQL = "SELECT reserve.get_head_batch_proposed(__facility_code := %s, __date_start := %s, __date_end := %s)"


class StocktakeList(BaseDocumentList):
    GET_LSIT_SQL = "SELECT stocktake.get_head_batch_proposed(__facility_code := %s, __date_start := %s, __date_end := %s)"


class CutoffList(BaseDocumentList):
    GET_LSIT_SQL = "SELECT cutoff.get_head_batch_proposed(__facility_code := %s, __date_start := %s, __date_end := %s)"


class Balance:
    GET_BALANCE_SQL0 = "SELECT facility_code, good_code from balance.balance"
    GET_BALANCE_SQL1 = "SELECT facility_code, good_code from balance.balance WHERE good_code = %s"

    def __init__(self, pool):
        self.pool = pool
        self.errors = []

    def to_dict(self):
        _body = []
        for row in self.body:
            _body.append(row)
        return {"body": _body}

    def load(self, good_code=None):
        conn = None
        try:
            conn = self.pool.getconn()
            pgcast.register(conn)
            curs = conn.cursor()
            if good_code:
                curs.execute(self.GET_BALANCE_SQL0)
            else:
                curs.execute(self.GET_BALANCE_SQL0, (good_code,))
            self.body = curs.fetchall()
            conn.commit()
            curs.close()
        except (Exception, psycopg2.DatabaseError) as error:
            print(error)
        finally:
            if conn is not None:
                self.pool.putconn(conn)
