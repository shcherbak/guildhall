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


class Demand(OutboundDocument):
    GET_HEAD_SQL = "SELECT demand.get_head(__document_id := %s)"
    GET_BODY_SQL = "SELECT demand.get_body(__document_id := %s)"
    UPDATE_BODY_SQL = "SELECT demand.reinit(__document_id := %s, __body := %s)"
    DELETE_DOCUMENT_SQL = "SELECT demand.destroy(__document_id := %s)"
    CREATE_DOCUMENT_SQL = "SELECT demand.init(__head := %s, __body := %s)"
    COMMIT_DOCUMENT_SQL = "SELECT demand.do_commit(__document_id := %s, __apprise := %s)"
    DECOMMIT_DOCUMENT_SQL = "SELECT demand.do_decommit(__document_id := %s, __apprise := %s)"


class Reserve(OutboundDocument):
    GET_HEAD_SQL = "SELECT reserve.get_head(__document_id := %s)"
    GET_BODY_SQL = "SELECT reserve.get_body(__document_id := %s)"
    UPDATE_BODY_SQL = "SELECT reserve.reinit(__document_id := %s, __body := %s)"
    DELETE_DOCUMENT_SQL = "SELECT reserve.destroy(__document_id := %s)"
    CREATE_DOCUMENT_SQL = "SELECT reserve.init(__head := %s, __body := %s)"
    COMMIT_DOCUMENT_SQL = "SELECT reserve.do_commit(__document_id := %s, __apprise := %s)"
    DECOMMIT_DOCUMENT_SQL = "SELECT reserve.do_decommit(__document_id := %s, __apprise := %s)"


class EbomDocument(BaseDocument):
    GET_HEAD_SQL = "SELECT ebom.get_head(__document_id := %s)"
    GET_BODY_SQL = "SELECT ebom.get_body(__document_id := %s)"
    UPDATE_BODY_SQL = "SELECT ebom.reinit(__document_id := %s, __body := %s)"
    DELETE_DOCUMENT_SQL = "SELECT ebom.destroy(__document_id := %s)"
    CREATE_DOCUMENT_SQL = "SELECT ebom.init(__head := %s, __body := %s)"
    COMMIT_DOCUMENT_SQL = "SELECT ebom.do_commit(__document_id := %s, __apprise := %s)"
    DECOMMIT_DOCUMENT_SQL = "SELECT ebom.do_decommit(__document_id := %s, __apprise := %s)"

    def from_dict(self, d):
        self.head = pgcast.EbomHead()
        self.head.from_dict(d['head'])
        #print(d['head'])
        #print(d['body'])
        self.body = []
        for row in d['body']:
            print(row)
            b = pgcast.ComponentSpecification()
            b.from_dict(row)
            self.body.append(b)
            # return self.create_document(self.head, self.body)


class MbomDocument(BaseDocument):
    GET_HEAD_SQL = "SELECT mbom.get_head(__document_id := %s)"
    GET_BODY_SQL = "SELECT mbom.get_body(__document_id := %s)"
    UPDATE_BODY_SQL = "SELECT mbom.reinit(__document_id := %s, __body := %s)"
    DELETE_DOCUMENT_SQL = "SELECT mbom.destroy(__document_id := %s)"
    CREATE_DOCUMENT_SQL = "SELECT mbom.init(__head := %s, __body := %s)"
    COMMIT_DOCUMENT_SQL = "SELECT mbom.do_commit(__document_id := %s, __apprise := %s)"
    DECOMMIT_DOCUMENT_SQL = "SELECT mbom.do_decommit(__document_id := %s, __apprise := %s)"

    def from_dict(self, d):
        self.head = pgcast.MbomHead()
        self.head.from_dict(d['head'])
        #print(d['head'])
        #print(d['body'])
        self.body = []
        for row in d['body']:
            print(row)
            b = pgcast.MaterialSpecification()
            b.from_dict(row)
            self.body.append(b)
            # return self.create_document(self.head, self.body)


class OperationDocument(BaseDocument):
    GET_HEAD_SQL = "SELECT operation.get_head(__document_id := %s)"
    GET_BODY_SQL = "SELECT operation.get_body(__document_id := %s)"
    GET_DEPS_SQL = "SELECT operation.get_deps(__document_id := %s)"
    UPDATE_BODY_SQL = "SELECT operation.reinit(__document_id := %s, __body := %s)"
    DELETE_DOCUMENT_SQL = "SELECT operation.destroy(__document_id := %s)"
    CREATE_DOCUMENT_SQL = "SELECT operation.init(__head := %s, __body := %s)"
    COMMIT_DOCUMENT_SQL = "SELECT operation.do_commit(__document_id := %s, __apprise := %s)"
    DECOMMIT_DOCUMENT_SQL = "SELECT operation.do_decommit(__document_id := %s, __apprise := %s)"

    def __init__(self, pool, document_id=None):
        self.pool = pool
        self.errors = []
        if document_id:
            self.load(document_id)
        else:
            self.head = None
            self.body = None
            self.deps = None

    def load(self, document_id):
        self._load_head(document_id)
        self._load_body(document_id)
        self._load_deps(document_id)

    def _load_deps(self, document_id):
        conn = None
        try:
            conn = self.pool.getconn()
            pgcast.register(conn)
            curs = conn.cursor()
            curs.execute(self.GET_DEPS_SQL, (document_id,))
            self.deps = curs.fetchone()[0]
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
        _deps = []
        for row in self.deps:
            _deps.append(row.to_dict())
        return {"head": self.head.to_dict(),
                "body": _body,
                "deps": _deps}

    def from_dict(self, d):
        self.head = pgcast.OperationHead()
        self.head.from_dict(d['head'])
        #print(d['head'])
        #print(d['body'])
        self.body = []
        for row in d['body']:
            print(row)
            b = pgcast.OperationSegment()
            b.from_dict(row)
            self.body.append(b)
            # return self.create_document(self.head, self.body)
        self.deps = []
        for row in d['deps']:
            print(row)
            b = pgcast.DependencySpecification()
            b.from_dict(row)
            self.deps.append(b)
            # return self.create_document(self.head, self.body)

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


class DemandList(BaseDocumentList):
    GET_LSIT_SQL = "SELECT demand.get_head_batch_proposed(__facility_code := %s, __date_start := %s, __date_end := %s)"


class ReserveList(BaseDocumentList):
    GET_LSIT_SQL = "SELECT reserve.get_head_batch_proposed(__facility_code := %s, __date_start := %s, __date_end := %s)"
