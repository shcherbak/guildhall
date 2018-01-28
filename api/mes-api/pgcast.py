#!/usr/bin/env python

import datetime
import uuid
from decimal import Decimal

import psycopg2
import psycopg2.extensions as _ext
import psycopg2.extras
import re



def pg_typ_caster(connection, nspname, typname, mapclass):
    def _get_pg_nspname_oid():
        _sql = 'SELECT oid FROM pg_namespace WHERE nspname = %s'
        try:
            _curs = connection.cursor()
            _curs.execute(_sql, (nspname,))
            _oid = _curs.fetchone()[0]
            _curs.close()
            return _oid
        except (Exception, psycopg2.DatabaseError) as error:
            print(error)

    def _get_pg_typname_oid():
        _sql = 'SELECT oid FROM pg_type WHERE typname = %s AND typnamespace = %s;'
        try:
            _nspoid = _get_pg_nspname_oid()
            _curs = connection.cursor()
            _curs.execute(_sql, (typname, _nspoid,))
            _oid = _curs.fetchone()[0]
            _curs.close()
            return _oid
        except (Exception, psycopg2.DatabaseError) as error:
            print(error)

    def _get_pg_typarray_oid():
        _sql = 'SELECT typarray FROM pg_type WHERE typname = %s AND typnamespace = %s'
        try:
            _nspoid = _get_pg_nspname_oid()
            _curs = connection.cursor()
            _curs.execute(_sql, (typname, _nspoid,))
            _oid = _curs.fetchone()[0]
            _curs.close()
            return _oid
        except (Exception, psycopg2.DatabaseError) as error:
            print(error)

    oid1 = _get_pg_typname_oid()
    oid2 = _get_pg_typarray_oid()

    pg_udf_type = _ext.new_type((oid1,), typname.upper(), mapclass)
    pg_udf_type_array = _ext.new_array_type((oid2,), "{0}_ARRAY".format(typname.upper()), pg_udf_type)

    _ext.register_type(pg_udf_type, connection)
    _ext.register_type(pg_udf_type_array, connection)

    return pg_udf_type


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


class ComponentSpecification(object):
    def __init__(self, s=None, curs=None):
        self.part_code = ''
        self.version_num = 0
        self.quantity = Decimal(0)
        self.uom_code = ''
        self.component_type = ''
        if s:
            self.from_string(s)

    def __repr__(self):
        return "{0}(part_code={1}, version_num={2}, quantity={3}, uom_code={4}, component_type={5})" \
            .format(type(self).__name__,
                    self.part_code,
                    self.version_num,
                    str(self.quantity),
                    self.uom_code,
                    self.component_type)

    def __conform__(self, proto):
        if proto == _ext.ISQLQuote:
            return self

    def to_dict(self):
        return {"part_code": self.good_code,
                "version_num": int(self.quantity),
                "quantity": float(self.quantity),
                "uom_code": self.uom_code,
                "component_type": self.component_type}

    def from_dict(self, d):
        self.part_code = d['part_code']
        self.version_num = int(d['version_num'])
        self.quantity = Decimal(d['quantity'])
        self.uom_code = d['uom_code']
        self.component_type = d['component_type']

    def from_tuple(self, t):
        self.part_code = t[0]
        self.version_num = int(t[1])
        self.quantity = Decimal(t[2])
        self.uom_code = t[3]
        self.component_type = t[4]

    def from_string(self, s):
        if s is None:
            return None
        m = re.match(r"\((\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?\)", s)
        if m:
            self.from_tuple((m.group(1),
                             m.group(2),
                             m.group(3),
                             m.group(4),
                             m.group(5)))
        else:
            raise psycopg2.InterfaceError("bad component_specification representation: %r" % s)

    def getquoted(self):
        return "({0}, {1}, {2}, {3}, {4})::common.component_specification"\
            .format(_adapt(self.part_code),
                    _adapt(self.version_num),
                    _adapt(self.quantity),
                    _adapt(self.uom_code),
                    _adapt(self.component_type))


class MaterialSpecification(object):
    def __init__(self, s=None, curs=None):
        self.part_code = ''
        self.version_num = 0
        self.quantity = Decimal(0)
        self.uom_code = ''
        self.material_type = ''
        if s:
            self.from_string(s)

    def __repr__(self):
        return "{0}(part_code={1}, version_num={2}, quantity={3}, uom_code={4}, material_type={5})" \
            .format(type(self).__name__,
                    self.part_code,
                    self.version_num,
                    str(self.quantity),
                    self.uom_code,
                    self.material_type)

    def __conform__(self, proto):
        if proto == _ext.ISQLQuote:
            return self

    def to_dict(self):
        return {"part_code": self.good_code,
                "version_num": int(self.quantity),
                "quantity": float(self.quantity),
                "uom_code": self.uom_code,
                "material_type": self.material_type}

    def from_dict(self, d):
        self.part_code = d['part_code']
        self.version_num = int(d['version_num'])
        self.quantity = Decimal(d['quantity'])
        self.uom_code = d['uom_code']
        self.material_type = d['material_type']

    def from_tuple(self, t):
        self.part_code = t[0]
        self.version_num = int(t[1])
        self.quantity = Decimal(t[2])
        self.uom_code = t[3]
        self.material_type = t[4]

    def from_string(self, s):
        if s is None:
            return None
        m = re.match(r"\((\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?\)", s)
        if m:
            self.from_tuple((m.group(1),
                             m.group(2),
                             m.group(3),
                             m.group(4),
                             m.group(5)))
        else:
            raise psycopg2.InterfaceError("bad material_specification representation: %r" % s)

    def getquoted(self):
        return "({0}, {1}, {2}, {3}, {4})::common.material_specification"\
            .format(_adapt(self.part_code),
                    _adapt(self.version_num),
                    _adapt(self.quantity),
                    _adapt(self.uom_code),
                    _adapt(self.material_type))


class PersonnelSpecification(object):
    def __init__(self, s=None, curs=None):
        self.personnel_code = ''
        self.version_num = 0
        self.quantity = Decimal(0)
        self.uom_code = ''
        if s:
            self.from_string(s)

    def __repr__(self):
        return "{0}(personnel_code={1}, version_num={2}, quantity={3}, uom_code={4})" \
            .format(type(self).__name__,
                    self.personnel_code,
                    self.version_num,
                    str(self.quantity),
                    self.uom_code)

    def __conform__(self, proto):
        if proto == _ext.ISQLQuote:
            return self

    def to_dict(self):
        return {"personnel_code": self.good_code,
                "version_num": int(self.quantity),
                "quantity": float(self.quantity),
                "uom_code": self.uom_code}

    def from_dict(self, d):
        self.personnel_code = d['personnel_code']
        self.version_num = int(d['version_num'])
        self.quantity = Decimal(d['quantity'])
        self.uom_code = d['uom_code']

    def from_tuple(self, t):
        self.personnel_code = t[0]
        self.version_num = int(t[1])
        self.quantity = Decimal(t[2])
        self.uom_code = t[3]

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
            raise psycopg2.InterfaceError("bad personnel_specification representation: %r" % s)

    def getquoted(self):
        return "({0}, {1}, {2}, {4})::common.personnel_specification"\
            .format(_adapt(self.personnel_code),
                    _adapt(self.version_num),
                    _adapt(self.quantity),
                    _adapt(self.uom_code))


class ToolingSpecification(object):
    def __init__(self, s=None, curs=None):
        self.tooling_code = ''
        self.version_num = 0
        self.quantity = Decimal(0)
        self.uom_code = ''
        if s:
            self.from_string(s)

    def __repr__(self):
        return "{0}(tooling_code={1}, version_num={2}, quantity={3}, uom_code={4})" \
            .format(type(self).__name__,
                    self.tooling_code,
                    self.version_num,
                    str(self.quantity),
                    self.uom_code)

    def __conform__(self, proto):
        if proto == _ext.ISQLQuote:
            return self

    def to_dict(self):
        return {"tooling_code": self.good_code,
                "version_num": int(self.quantity),
                "quantity": float(self.quantity),
                "uom_code": self.uom_code}

    def from_dict(self, d):
        self.tooling_code = d['tooling_code']
        self.version_num = int(d['version_num'])
        self.quantity = Decimal(d['quantity'])
        self.uom_code = d['uom_code']

    def from_tuple(self, t):
        self.tooling_code = t[0]
        self.version_num = int(t[1])
        self.quantity = Decimal(t[2])
        self.uom_code = t[3]

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
            raise psycopg2.InterfaceError("bad tooling_specification representation: %r" % s)

    def getquoted(self):
        return "({0}, {1}, {2}, {4})::common.tooling_specification"\
            .format(_adapt(self.tooling_code),
                    _adapt(self.version_num),
                    _adapt(self.quantity),
                    _adapt(self.uom_code))


class EquipmentSpecification(object):
    def __init__(self, s=None, curs=None):
        self.equipment_code = ''
        self.version_num = 0
        self.quantity = Decimal(0)
        self.uom_code = ''
        if s:
            self.from_string(s)

    def __repr__(self):
        return "{0}(equipment_code={1}, version_num={2}, quantity={3}, uom_code={4})" \
            .format(type(self).__name__,
                    self.equipment_code,
                    self.version_num,
                    str(self.quantity),
                    self.uom_code)

    def __conform__(self, proto):
        if proto == _ext.ISQLQuote:
            return self

    def to_dict(self):
        return {"equipment_code": self.good_code,
                "version_num": int(self.quantity),
                "quantity": float(self.quantity),
                "uom_code": self.uom_code}

    def from_dict(self, d):
        self.equipment_code = d['equipment_code']
        self.version_num = int(d['version_num'])
        self.quantity = Decimal(d['quantity'])
        self.uom_code = d['uom_code']

    def from_tuple(self, t):
        self.equipment_code = t[0]
        self.version_num = int(t[1])
        self.quantity = Decimal(t[2])
        self.uom_code = t[3]

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
            raise psycopg2.InterfaceError("bad equipment_specification representation: %r" % s)

    def getquoted(self):
        return "({0}, {1}, {2}, {4})::common.equipment_specification"\
            .format(_adapt(self.equipment_code),
                    _adapt(self.version_num),
                    _adapt(self.quantity),
                    _adapt(self.uom_code))


class DependencySpecification(object):
    def __init__(self, s=None, curs=None):
        self.ancestor = None
        self.descendant = None
        self.depth = None
        if s:
            self.from_string(s)

    def __repr__(self):
        return "{0}(dependency_code={1}, version_num={2}, quantity={3})" \
            .format(type(self).__name__,
                    self.ancestor,
                    self.descendant,
                    self.depth)

    def __conform__(self, proto):
        if proto == _ext.ISQLQuote:
            return self

    def to_dict(self):
        return {"ancestor": self.ancestor,
                "descendant": self.descendant,
                "depth": int(self.depth)}

    def from_dict(self, d):
        self.ancestor = d['ancestor']
        self.descendant = d['descendant']
        self.depth = int(d['depth'])

    def from_tuple(self, t):
        self.ancestor = uuid.UUID(t[0])
        self.descendant = uuid.UUID(t[1])
        self.depth = int(t[2])

    def from_string(self, s):
        if s is None:
            return None
        m = re.match(r"\((\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?,(\"[^\"]*\"|[^,]+)?\)", s)
        if m:
            self.from_tuple((m.group(1),
                             m.group(2),
                             m.group(3)))
        else:
            raise psycopg2.InterfaceError("bad dependency_specification representation: %r" % s)

    def getquoted(self):
        return "({0}, {1}, {2})::common.dependency_specification"\
            .format(_adapt(self.ancestor),
                    _adapt(self.descendant),
                    _adapt(self.depth))


class EbomHead(object):
    def __init__(self, s=None, curs=None):
        self.document_id = None
        self.gid = None
        self.display_name = None
        self.version_num = None
        self.document_date = None
        self.curr_fsmt = None
        self.document_type = None
        self.component_spec = None
        if s:
            self.from_string(s)

    def from_string(self, s):
        pass


class MbomHead(object):
    def __init__(self, s=None, curs=None):
        self.document_id = None
        self.gid = None
        self.display_name = None
        self.version_num = None
        self.document_date = None
        self.curr_fsmt = None
        self.document_type = None
        self.material_spec = None
        if s:
            self.from_string(s)

    def from_string(self, s):
        pass


class OperationHead(object):
    def __init__(self, s=None, curs=None):
        self.document_id = None
        self.gid = None
        self.display_name = None
        self.version_num = None
        self.document_date = None
        self.curr_fsmt = None
        self.document_type = None
        self.producible_spec = None
        if s:
            self.from_string(s)

    def from_string(self, s):
        pass


class OperationSegment(object):
    def __init__(self, s=None, curs=None):
        self.gid = None
        self.operation_code = None
        self.material_spec = None
        self.personnel_spec = None
        self.equipmet_spec = None
        self.tooling_spec = None
        if s:
            self.from_string(s)

    def from_string(self, s):
        pass


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


def register(conn):
    psycopg2.extras.register_uuid()
    pg_typ_caster(connection=conn, nspname='common', typname='component_specificatio', mapclass=ComponentSpecification)
    pg_typ_caster(connection=conn, nspname='common', typname='material_specification', mapclass=MaterialSpecification)
    pg_typ_caster(connection=conn, nspname='common', typname='personnel_specification', mapclass=PersonnelSpecification)
    pg_typ_caster(connection=conn, nspname='common', typname='tooling_specification', mapclass=ToolingSpecification)
    pg_typ_caster(connection=conn, nspname='common', typname='equipment_specification', mapclass=EquipmentSpecification)
    pg_typ_caster(connection=conn, nspname='common', typname='dependency_specification', mapclass=DependencySpecification)
    pg_typ_caster(connection=conn, nspname='common', typname='operation_segment', mapclass=OperationSegment)
    pg_typ_caster(connection=conn, nspname='common', typname='ebom_head', mapclass=EbomHead)
    pg_typ_caster(connection=conn, nspname='common', typname='mbom_head', mapclass=MbomHead)
    pg_typ_caster(connection=conn, nspname='common', typname='operation_head', mapclass=OperationHead)
    pg_typ_caster(connection=conn, nspname='common', typname='document_body', mapclass=DocumentBody)
    pg_typ_caster(connection=conn, nspname='common', typname='document_head', mapclass=DocumentHead)
    pg_typ_caster(connection=conn, nspname='common', typname='outbound_head', mapclass=OutboundHead)
