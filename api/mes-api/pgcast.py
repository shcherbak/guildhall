#!/usr/bin/env python

import datetime
import uuid
from decimal import Decimal

import psycopg2
import psycopg2.extensions as _ext
import psycopg2.extras
import re


def _get_pg_nspname_oid(conn, nspname):
    _sql = 'SELECT oid FROM pg_namespace WHERE nspname = %s'
    _connection = conn
    try:
        _curs = _connection.cursor()
        _curs.execute(_sql, (nspname,))
        _oid = _curs.fetchone()[0]
        _curs.close()
        return _oid
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)


def _get_pg_typname_oid(conn, nspname, typname):
    _sql = 'SELECT oid FROM pg_type WHERE typname = %s AND typnamespace = %s;'
    _connection = conn
    try:
        _nspoid = _get_pg_nspname_oid(_connection, nspname)
        _curs = _connection.cursor()
        _curs.execute(_sql, (typname, _nspoid,))
        _oid = _curs.fetchone()[0]
        _curs.close()
        return _oid
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)


def _get_pg_typarray_oid(conn, nspname, typname):
    _sql = 'SELECT typarray FROM pg_type WHERE typname = %s AND typnamespace = %s'
    _connection = conn
    try:
        _nspoid = _get_pg_nspname_oid(_connection, nspname)
        _curs = _connection.cursor()
        _curs.execute(_sql, (typname, _nspoid,))
        _oid = _curs.fetchone()[0]
        _curs.close()
        return _oid
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)



def date_from_py(pydate):
    pass

def date_from_pg(sqldate):
    pass

def decimal_from_py(pydecimal):
    pass

def decimal_from_pg(sqlnumeric):
    pass

def _adapt(o):
    if o is None:
        return 'NULL'
    else:
        if isinstance(o, str):
            return "'{0}'".format(o)
        else:
            # return _ext.adapt(obj=o, alternate=None, protocol=None)
            return _ext.adapt(o)


class DocumentBody(object):
    def __init__(self, s=None, curs=None):
        self.good_code = ''
        self.quantity = Decimal(0)
        self.uom_code = ''
        if s:
            self.from_string(s)

    def __repr__(self):
        return "{0}(good_code={1}, quantity={2}, uom_code={3})" \
            .format(type(self).__name__,
                    self.good_code,
                    str(self.quantity),
                    self.uom_code)

    def __conform__(self, proto):
        if proto == _ext.ISQLQuote:
            return self

    def to_dict(self):
        return {"good_code": self.good_code,
                "quantity": float(self.quantity),
                "uom_code": self.uom_code}

    def from_dict(self, d):
        self.good_code = d['good_code']
        self.quantity = Decimal(d['quantity'])
        self.uom_code = d['uom_code']

    def from_tuple(self, t):
        self.good_code = t[0]
        self.quantity = Decimal(t[1])
        self.uom_code = t[2]

    def from_string(self, s):
        if s is None:
            return None
        m = re.match(r"\((\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?\)", s)
        if m:
            self.from_tuple((m.group(1),
                             m.group(2),
                             m.group(3)))
        else:
            raise psycopg2.InterfaceError("bad document_body representation: %r" % s)

    def getquoted(self):
        return "({0}, {1}, {2})::common.document_body"\
            .format(_adapt(self.good_code),
                    _adapt(self.quantity),
                    _adapt(self.uom_code))


def register_common_document_body(oid=None, conn_or_curs=None):
    if not oid:
        oid1 = _get_pg_typname_oid(conn_or_curs, 'common', 'document_body')
        oid2 = _get_pg_typarray_oid(conn_or_curs, 'common', 'document_body')
    elif isinstance(oid, (list, tuple)):
        oid1, oid2 = oid
    else:
        print('error')
        exit(1)

    DOCUMENT_BODY = _ext.new_type((oid1,), "DOCUMENT_BODY", DocumentBody)
    DOCUMENT_BODY_ARRAY = _ext.new_array_type((oid2,), "DOCUMENT_BODY_ARRAY", DOCUMENT_BODY)

    _ext.register_type(DOCUMENT_BODY, conn_or_curs)
    _ext.register_type(DOCUMENT_BODY_ARRAY, conn_or_curs)

    return DOCUMENT_BODY


class StocktakeBody(object):
    def __init__(self, s=None, curs=None):
        self.good_code = ''
        self.quantity = Decimal(0)
        self.uom_code = ''
        self.quantity_diff = Decimal(0)
        if s:
            self.from_string(s)

    def __repr__(self):
        return "stocktake_body(good_code={0}, quantity={1}, uom_code={2}, quantity_diff={3})" \
            .format(self.good_code,
                    self.quantity,
                    self.uom_code,
                    self.quantity_diff)

    def __conform__(self, proto):
        if proto == _ext.ISQLQuote:
            return self

    def to_dict(self):
        return {"good_code": self.good_code,
                "quantity": float(self.quantity),
                "uom_code": self.uom_code,
                "quantity_diff": float(self.quantity_diff)}

    def from_dict(self, d):
        self.good_code = d['good_code']
        self.quantity = Decimal(d['quantity'])
        self.uom_code = d['uom_code']
        self.quantity_diff = Decimal(d['quantity_diff'])

    def from_tuple(self, t):
        self.good_code = t[0]
        self.quantity = Decimal(t[1])
        self.uom_code = t[2]
        self.quantity_diff = Decimal(t[3])

    def from_string(self, s):
        if s is None:
            return None
        m = re.match(r"\((\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?\)", s)
        if m:
            self.from_tuple((m.group(1),
                             m.group(2),
                             m.group(3),
                             m.group(4)))
        else:
            raise psycopg2.InterfaceError("bad stocktake_body representation: %r" % s)

    def getquoted(self):
        return "({0}, {1}, {2}, {3})::common.stocktake_body"\
            .format(_adapt(self.good_code),
                    _adapt(self.quantity),
                    _adapt(self.uom_code),
                    _adapt(self.quantity_diff))


def register_common_stocktake_body(oid=None, conn_or_curs=None):
    if not oid:
        oid1 = _get_pg_typname_oid(conn_or_curs, 'common', 'stocktake_body')
        oid2 = _get_pg_typarray_oid(conn_or_curs, 'common', 'stocktake_body')
    elif isinstance(oid, (list, tuple)):
        oid1, oid2 = oid
    else:
        print('error')

    stocktake_body = _ext.new_type((oid1,), "STOCKTAKE_BODY", StocktakeBody)
    stocktake_body_ARRAY = _ext.new_array_type((oid2,), "STOCKTAKE_BODY_ARRAY", stocktake_body)

    _ext.register_type(stocktake_body, conn_or_curs)
    _ext.register_type(stocktake_body_ARRAY, conn_or_curs)

    return stocktake_body


class DocumentHead(object):
    def __init__(self, s=None, curs=None):
        self.document_id = None
        self.gid = None
        self.display_name = None
        self.document_date = None
        self.facility_code = None
        self.curr_fsmt = None
        self.doctype = None
        if s:
            self.from_string(s)

    def __repr__(self):
        return "document_head(document_id={0}, gid={1}, display_name={2}, document_date={3}, facility_code={4}, curr_fsmt={5}, doctype={6})". \
            format(self.document_id,
                   self.gid,
                   self.display_name,
                   self.document_date,
                   self.facility_code,
                   self.curr_fsmt,
                   self.doctype)

    def __conform__(self, proto):
        if proto == _ext.ISQLQuote:
            return self

    def to_dict(self):
        if self.document_date:
            _document_date = self.document_date.strftime('%Y-%m-%d')
        else:
            _document_date = None
        return {"document_id": self.document_id,
                "gid": self.gid,
                "display_name": self.display_name,
                "document_date": _document_date,
                "facility_code": self.facility_code,
                "curr_fsmt": self.curr_fsmt,
                "doctype": self.doctype}

    def from_dict(self, d):
        if len(d['document_date']) > 0:
            _document_date = datetime.datetime.strptime(d['document_date'], "%Y-%m-%d").date()
        else:
            _document_date = None

        self.document_id = d['document_id']
        self.gid = d['gid']
        self.display_name = d['display_name']
        self.document_date = _document_date
        self.facility_code = d['facility_code']
        self.curr_fsmt = d['curr_fsmt']
        self.doctype = d['doctype']

    def from_tuple(self, t):
        self.document_id = int(t[0])
        self.gid = uuid.UUID(t[1])
        self.display_name = t[2]
        if len(t[3]) > 0:
            self.document_date = datetime.datetime.strptime(t[3], "%Y-%m-%d")
        else:
            self.document_date = None
        self.facility_code = t[4]
        self.curr_fsmt = t[5]
        self.doctype = t[6]

    def from_string(self, s):
        if s is None:
            return None
        m = re.match(r"\((\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?\)", s)
        if m:
            self.from_tuple((m.group(1),
                             m.group(2),
                             m.group(3),
                             m.group(4),
                             m.group(5),
                             m.group(6),
                             m.group(7)))
        else:
            raise psycopg2.InterfaceError("bad document_head representation: %r" % s)

    def getquoted(self):
        return "({0}, {1}, {2}, {3}, {4}, {5}, {6})" \
            .format(_adapt(self.document_id),
                    _adapt(self.gid),
                    _adapt(self.display_name),
                    _adapt(self.document_date),
                    _adapt(self.facility_code),
                    _adapt(self.curr_fsmt),
                    _adapt(self.doctype))


def register_common_document_head(oid=None, conn_or_curs=None):
    if not oid:
        oid1 = _get_pg_typname_oid(conn_or_curs, 'common', 'document_head')
        oid2 = _get_pg_typarray_oid(conn_or_curs, 'common', 'document_head')
    elif isinstance(oid, (list, tuple)):
        oid1, oid2 = oid
    else:
        print('error')

    DOCUMENT_HEAD = _ext.new_type((oid1,), "DOCUMENT_HEAD", DocumentHead)
    DOCUMENT_HEAD_ARRAY = _ext.new_array_type((oid2,), "DOCUMENT_HEAD_ARRAY", DOCUMENT_HEAD)

    _ext.register_type(DOCUMENT_HEAD, conn_or_curs)
    _ext.register_type(DOCUMENT_HEAD_ARRAY, conn_or_curs)

    return DOCUMENT_HEAD


class GoalHead(object):
    def __init__(self, s=None, curs=None):
        self.document_id = None
        self.gid = None
        self.display_name = None
        self.document_date = None
        self.facility_code = None
        self.curr_fsmt = None
        self.doctype = None
        if s:
            self.from_string(s)

    def __repr__(self):
        return "goal_head(document_id={0}, gid={1}, display_name={2}, document_date={3}, facility_code={4}, curr_fsmt={5}, doctype={6})". \
            format(self.document_id,
                   self.gid,
                   self.display_name,
                   self.document_date,
                   self.facility_code,
                   self.curr_fsmt,
                   self.doctype)

    def __conform__(self, proto):
        if proto == _ext.ISQLQuote:
            return self

    def to_dict(self):
        if self.document_date:
            _document_date = self.document_date.strftime('%Y-%m-%d')
        else:
            _document_date = None
        return {"document_id": self.document_id,
                "gid": self.gid,
                "display_name": self.display_name,
                "document_date": _document_date,
                "facility_code": self.facility_code,
                "curr_fsmt": self.curr_fsmt,
                "doctype": self.doctype}

    def from_dict(self, d):
        if self.document_date:
            _document_date = self.document_date.strftime('%Y-%m-%d')
        else:
            _document_date = None
        self.document_id = d['document_id']
        self.gid = Decimal(d['gid'])
        self.display_name = d['display_name']
        self.document_date = _document_date
        self.facility_code = d['facility_code']
        self.curr_fsmt = d['curr_fsmt']
        self.doctype = d['doctype']

    def from_tuple(self, t):
        self.document_id = int(t[0])
        self.gid = uuid.UUID(t[1])
        self.display_name = t[2]
        if len(t[3]) > 0:
            self.document_date = datetime.datetime.strptime(t[3], "%Y-%m-%d")
        else:
            self.document_date = None
        self.facility_code = t[4]
        self.curr_fsmt = t[5]
        self.doctype = t[6]

    def from_string(self, s):
        if s is None:
            return None
        m = re.match(r"\((\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?\)", s)
        if m:
            self.from_tuple((m.group(1),
                             m.group(2),
                             m.group(3),
                             m.group(4),
                             m.group(5),
                             m.group(6),
                             m.group(7)))
        else:
            raise psycopg2.InterfaceError("bad goal_head representation: %r" % s)

    def getquoted(self):
        return "({0}, {1}, {2}, {3}, {4}, {5}, {6})" \
            .format(_adapt(self.document_id),
                    _adapt(self.gid),
                    _adapt(self.display_name),
                    _adapt(self.document_date),
                    _adapt(self.facility_code),
                    _adapt(self.curr_fsmt),
                    _adapt(self.doctype))


def register_common_goal_head(oid=None, conn_or_curs=None):
    if not oid:
        oid1 = _get_pg_typname_oid(conn_or_curs, 'common', 'goal_head')
        oid2 = _get_pg_typarray_oid(conn_or_curs, 'common', 'goal_head')
    elif isinstance(oid, (list, tuple)):
        oid1, oid2 = oid
    else:
        print('error')

    GOAL_HEAD = _ext.new_type((oid1,), "DOCUMENT_HEAD", GoalHead)
    GOAL_HEAD_ARRAY = _ext.new_array_type((oid2,), "DOCUMENT_HEAD_ARRAY", GOAL_HEAD)

    _ext.register_type(GOAL_HEAD, conn_or_curs)
    _ext.register_type(GOAL_HEAD_ARRAY, conn_or_curs)

    return GOAL_HEAD


class OutboundHead(object):
    def __init__(self, s=None, curs=None):
        self.document_id = None
        self.gid = None
        self.display_name = None
        self.document_date = None
        self.facility_code = None
        self.curr_fsmt = None
        self.doctype = None
        self.addressee = None
        self.due_date = None
        if s:
            self.from_string(s)

    def __repr__(self):
        return "outbound_head(document_id={0}, gid={1}, display_name={2}, document_date={3}, facility_code={4}, curr_fsmt={5}, doctype={6}, addressee={7}, due_date={8})" \
            .format(self.document_id,
                    self.gid,
                    self.display_name,
                    self.document_date,
                    self.facility_code,
                    self.curr_fsmt,
                    self.doctype,
                    self.addressee,
                    self.due_date)

    def to_dict(self):
        if self.due_date:
            _due_date = self.due_date.strftime('%Y-%m-%d')
        else:
            _due_date = None
        if self.document_date:
            _document_date = self.document_date.strftime('%Y-%m-%d')
        else:
            _document_date = None
        return {"document_id": self.document_id,
                "gid": self.gid,
                "display_name": self.display_name,
                "document_date": _document_date,
                "facility_code": self.facility_code,
                "curr_fsmt": self.curr_fsmt,
                "doctype": self.doctype,
                "addressee": self.addressee,
                "due_date": _due_date}

    def from_dict(self, d):
        if len(d['due_date']) > 0:
            _due_date = datetime.datetime.strptime(d['due_date'], "%Y-%m-%d").date()
        else:
            _due_date = None
        if len(d['document_date']) > 0:
            _document_date = datetime.datetime.strptime(d['document_date'], "%Y-%m-%d").date()
        else:
            _document_date = None
        self.document_id = d['document_id']
        self.gid = d['gid']
        self.display_name = d['display_name']
        self.document_date = _document_date
        self.facility_code = d['facility_code']
        self.curr_fsmt = d['curr_fsmt']
        self.doctype = d['doctype']
        self.addressee = d['addressee']
        self.due_date = _due_date

    def __conform__(self, proto):
        if proto == _ext.ISQLQuote:
            return self

    def from_tuple(self, t):
        self.document_id = int(t[0])
        self.gid = uuid.UUID(t[1])
        self.display_name = t[2]
        if len(t[3]) > 0:
            self.document_date = datetime.datetime.strptime(t[3], "%Y-%m-%d")
        else:
            self.document_date = None
        self.facility_code = t[4]
        self.curr_fsmt = t[5]
        self.doctype = t[6]
        self.addressee = t[7]
        if len(t[8]) > 0:
            self.due_date = datetime.datetime.strptime(t[8], "%Y-%m-%d")
        else:
            self.due_date = None

    def from_string(self, s):
        if s is None:
            return None
        m = re.match(r"\((\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?\)", s)
        if m:
            self.from_tuple((m.group(1),
                             m.group(2),
                             m.group(3),
                             m.group(4),
                             m.group(5),
                             m.group(6),
                             m.group(7),
                             m.group(8),
                             m.group(9)))
        else:
            raise psycopg2.InterfaceError("bad outbound_head representation: %r" % s)

    def getquoted(self):
        return "({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8})::common.outbound_head" \
            .format(_adapt(self.document_id),
                    _adapt(self.gid),
                    _adapt(self.display_name),
                    _adapt(self.document_date),
                    _adapt(self.facility_code),
                    _adapt(self.curr_fsmt),
                    _adapt(self.doctype),
                    _adapt(self.addressee),
                    _adapt(self.due_date))


def register_common_outbound_head(oid=None, conn_or_curs=None):
    if not oid:
        oid1 = _get_pg_typname_oid(conn_or_curs, 'common', 'outbound_head')
        oid2 = _get_pg_typarray_oid(conn_or_curs, 'common', 'outbound_head')
    elif isinstance(oid, (list, tuple)):
        oid1, oid2 = oid
    else:
        print('error')

    OUTBOUND_HEAD = _ext.new_type((oid1,), "OUTBOUND_HEAD", OutboundHead)
    OUTBOUND_HEAD_ARRAY = _ext.new_array_type((oid2,), "OUTBOUND_HEAD_ARRAY", OUTBOUND_HEAD)

    _ext.register_type(OUTBOUND_HEAD, conn_or_curs)
    _ext.register_type(OUTBOUND_HEAD_ARRAY, conn_or_curs)

    return OUTBOUND_HEAD


class InboundHead(object):
    def __init__(self, s=None, curs=None):
        self.document_id = None
        self.gid = None
        self.display_name = None
        self.document_date = None
        self.facility_code = None
        self.curr_fsmt = None
        self.doctype = None
        self.addresser = None
        if s:
            self.from_string(s)

    def to_dict(self):
        if self.document_date:
            _document_date = self.document_date.strftime('%Y-%m-%d')
        else:
            _document_date = None
        return {"document_id": self.document_id,
                "gid": self.gid,
                "display_name": self.display_name,
                "document_date": _document_date,
                "facility_code": self.facility_code,
                "curr_fsmt": self.curr_fsmt,
                "doctype": self.doctype,
                "addresser": self.addresser}

    def from_dict(self, d):
        if len(d['document_date']) > 0:
            _document_date = datetime.datetime.strptime(d['document_date'], "%Y-%m-%d").date()
        else:
            _document_date = None
        self.document_id = d['document_id']
        self.gid = d['gid']
        self.display_name = d['display_name']
        self.document_date = _document_date
        self.facility_code = d['facility_code']
        self.curr_fsmt = d['curr_fsmt']
        self.doctype = d['doctype']
        self.addresser = d['addresser']

    def __repr__(self):
        return "inbound_head(document_id={0}, gid={1}, display_name={2}, document_date={3}, facility_code={4}, curr_fsmt={5}, doctype={6}, addresser={7})" \
            .format(self.document_id,
                    self.gid,
                    self.display_name,
                    self.document_date,
                    self.facility_code,
                    self.curr_fsmt,
                    self.doctype,
                    self.addresser)

    def __conform__(self, proto):
        if proto == _ext.ISQLQuote:
            return self

    def from_tuple(self, t):
        self.document_id = int(t[0])
        self.gid = uuid.UUID(t[1])
        self.display_name = t[2]
        if len(t[3]) > 0:
            self.document_date = datetime.datetime.strptime(t[3], "%Y-%m-%d")
        else:
            self.document_date = None
        self.facility_code = t[4]
        self.curr_fsmt = t[5]
        self.doctype = t[6]
        self.addresser = t[7]

    def from_string(self, s):
        if s is None:
            return None
        m = re.match(r"\((\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?\)", s)
        if m:
            self.from_tuple((m.group(1),
                             m.group(2),
                             m.group(3),
                             m.group(4),
                             m.group(5),
                             m.group(6),
                             m.group(7),
                             m.group(8)))
        else:
            raise psycopg2.InterfaceError("bad inbound_head representation: %r" % s)

    def getquoted(self):
        return "({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7})" \
            .format(_adapt(self.document_id),
                    _adapt(self.gid),
                    _adapt(self.display_name),
                    _adapt(self.document_date),
                    _adapt(self.facility_code),
                    _adapt(self.curr_fsmt),
                    _adapt(self.doctype),
                    _adapt(self.addresser))


def register_common_inbound_head(oid=None, conn_or_curs=None):
    if not oid:
        oid1 = _get_pg_typname_oid(conn_or_curs, 'common', 'inbound_head')
        oid2 = _get_pg_typarray_oid(conn_or_curs, 'common', 'inbound_head')
    elif isinstance(oid, (list, tuple)):
        oid1, oid2 = oid
    else:
        print('error')

    INBOUND_HEAD = _ext.new_type((oid1,), "OUTBOUND_HEAD", InboundHead)
    INBOUND_HEAD_ARRAY = _ext.new_array_type((oid2,), "OUTBOUND_HEAD_ARRAY", INBOUND_HEAD)

    _ext.register_type(INBOUND_HEAD, conn_or_curs)
    _ext.register_type(INBOUND_HEAD_ARRAY, conn_or_curs)

    return INBOUND_HEAD


def register(conn):
    psycopg2.extras.register_uuid()
    register_common_document_body(conn_or_curs=conn)
    register_common_stocktake_body(conn_or_curs=conn)
    register_common_document_head(conn_or_curs=conn)
    register_common_goal_head(conn_or_curs=conn)
    register_common_outbound_head(conn_or_curs=conn)
    register_common_inbound_head(conn_or_curs=conn)
