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



def parse_string_from_dict(dict_object, dict_element):
    try:
        _result = dict_object[dict_element]
    except (Exception, KeyError):
        _result = None
    return _result


def parse_int_from_dict(dict_object, dict_element):
    try:
        if dict_object[dict_element]:
            _result = int(dict_object[dict_element])
        else:
            _result = None
    except (Exception, KeyError):
        _result = None
    return _result


def parse_decimal_from_dict(dict_object, dict_element):
    try:
        if dict_object[dict_element]:
            _result = Decimal(dict_object[dict_element])
        else:
            _result = None
    except (Exception, KeyError):
        _result = None
    return _result


def parse_date_from_dict(dict_object, dict_element):
    try:
        if len(dict_object[dict_element]) > 0:
            _result = date_from_string(dict_object[dict_element])
        else:
            _result = None
    except (Exception, KeyError):
        _result = None
    return _result


def parse_uuid_from_dict(dict_object, dict_element):
    try:
        _result = uuid.UUID(dict_object[dict_element])
    except (Exception, KeyError):
        _result = None
    return _result


def parse_string_from_tuple(tuple_object, tuple_element):
    try:
        _result = tuple_object[tuple_element]
    except (Exception, IndexError):
        _result = None
    return _result


def parse_int_from_tuple(tuple_object, tuple_element):
    try:
        if tuple_object[tuple_element]:
            _result = int(tuple_object[tuple_element])
        else:
            _result = None
    except (Exception, IndexError):
        _result = None
    return _result


def parse_decimal_from_tuple(tuple_object, tuple_element):
    try:
        if tuple_object[tuple_element]:
            _result = Decimal(tuple_object[tuple_element])
        else:
            _result = None
    except (Exception, IndexError):
        _result = None
    return _result


def parse_date_from_tuple(tuple_object, tuple_element):
    try:
        if len(tuple_object[tuple_element]) > 0:
            _result = date_from_string(tuple_object[tuple_element])
        else:
            _result = None
    except (Exception, IndexError):
        _result = None
    return _result


def parse_interval_from_tuple(tuple_object, tuple_element):
    try:
        _result = _ext.PYINTERVAL(tuple_object[tuple_element], None)
    except (Exception, IndexError):
        _result = None
    return _result


def parse_uuid_from_tuple(tuple_object, tuple_element):
    try:
        _result = uuid.UUID(tuple_object[tuple_element])
    except (Exception, IndexError):
        _result = None
    return _result


def date_from_string(str_date):
    if str_date and len(str_date) > 0:
        return datetime.datetime.strptime(str_date, "%Y-%m-%d")
    else:
        return None


def date_to_string(pydate):
    if pydate:
        return pydate.strftime('%Y-%m-%d')
    else:
        return None


def decimal_to_string(pydecimal, precision=4):
    if pydecimal:
        return float("{0:.{1}f}".format(pydecimal, precision))
    else:
        return None


def uuid_to_string(pyuuid):
    if pyuuid:
        return str(pyuuid)
    else:
        return None


class PgUserTypeMaping(object):
    pg_schm_name = ''
    pg_type_name = ''
    pg_field_list = []

    def __conform__(self, proto):
        if proto == _ext.ISQLQuote:
            return self

    def date_from_py(self, pydate):
        pass

    def date_from_pg(self, sqldate):
        pass

    def decimal_from_py(self, pydecimal):
        pass

    def decimal_from_pg(self, sqlnumeric):
        pass

    def py2pg_adapt(self, o):
        if o is None:
            return 'NULL'
        else:
            if isinstance(o, str):
                return "'{0}'".format(o)
            elif isinstance(o, int):
                return o
            elif isinstance(o, Decimal):
                return o
            elif isinstance(o, datetime.date):
                return _ext.DateFromPy(o)
            elif isinstance(o, datetime.timedelta):
                return _ext.IntervalFromPy(o)
            else:
                #return _ext.adapt(obj=o, alternate=None, protocol=None)
                return _ext.adapt(o, None, None)

    _re_tokenize = re.compile(r"""
      \(? ([,)])                        # an empty token, representing NULL
    | \(? " ((?: [^"] | "")*) " [,)]    # or a quoted string
    | \(? ([^",)]+) [,)]                # or an unquoted string
        """, re.VERBOSE)

    _re_undouble = re.compile(r'(["\\])\1')

    def from_tuple(self, t):
        return self

    def to_tuple(self):
        return ()

    def from_dict(self, d):
        return self

    def to_dict(self):
        return {}

    def __repr__(self):
        return self.repr_helper(self.pg_field_list).format(t=self.pg_type_name, d=self.to_dict())

    def repr_helper(self, field_list):
        result = '{t}=('
        idx = 1
        length = len(field_list)
        for item in field_list:
            if idx < length:
                result = result + "{0}={1}{0}{2} ".format(item, '{d[', ']},')
            else:
                result = result + "{0}={1}{0}{2} ".format(item, '{d[', ']})')
            idx += 1
        return result

    def from_string(self, s):
        rv = []
        for m in self._re_tokenize.finditer(s):
            if m is None:
                raise psycopg2.InterfaceError("bad pgtype representation: %r" % s)
            if m.group(1) is not None:
                rv.append(None)
            elif m.group(2) is not None:
                rv.append(self._re_undouble.sub(r"\1", m.group(2)))
            else:
                rv.append(m.group(3))

        self.from_tuple(tuple(rv))

    def adapt_tuple(self, t):
        result = []
        for i in t:
            result.append(self.py2pg_adapt(i))
        return tuple(result)

    def repr_helper2(self, field_list):
        result = '('
        idx = 0
        length = len(field_list) - 1
        for item in field_list:
            if idx < length:
                result = result + "{1}{0}{2} ".format(idx, '{t[', ']},')
            else:
                result = result + "{1}{0}{2}::{3}.{4} ".format(idx, '{t[', ']})', '{schema}', '{pgtype}')
            idx += 1
        return result

    def getquoted(self):
        return self.repr_helper2(self.pg_field_list) \
            .format(schema=self.pg_schm_name, pgtype=self.pg_type_name, t=self.adapt_tuple(self.to_tuple()))

    def _complex_string_to_list(self, s):
        if s == '{}':
            return ()
        s = s.replace("{\"", "")
        s = s.replace("\"}", "")
        result = s.split("\",\"")
        if len(result) > 0:
            return tuple(result)
        else:
            return ()

    def _adapt_list_to_dict(self, spec_list):
        _res = []
        for s in spec_list:
            _res.append(s.to_dict())
        return tuple(_res)


class ComponentSpecification(PgUserTypeMaping):
    pg_schm_name = 'common'
    pg_type_name = 'component_specification'
    pg_field_list = ['part_code', 'version_num', 'quantity',
                     'uom_code', 'component_type']

    def __init__(self, s=None, curs=None):
        self.part_code = None
        self.version_num = None
        self.quantity = None
        self.uom_code = None
        self.component_type = None
        if s:
            self.from_string(s)

    def to_dict(self):
        return {"part_code": self.part_code,
                "version_num": self.version_num,
                "quantity": decimal_to_string(self.quantity),
                "uom_code": self.uom_code,
                "component_type": self.component_type}

    def from_dict(self, d):
        self.part_code = parse_string_from_dict(d, 'part_code')
        self.version_num = parse_int_from_dict(d, 'version_num')
        self.quantity = parse_decimal_from_dict(d, 'quantity')
        self.uom_code = parse_string_from_dict(d, 'uom_code')
        self.component_type = parse_string_from_dict(d, 'component_type')

    def from_tuple(self, t):
        self.part_code = parse_string_from_tuple(t, 0)
        self.version_num = parse_int_from_tuple(t, 1)
        self.quantity = parse_decimal_from_tuple(t, 2)
        self.uom_code = parse_string_from_tuple(t, 3)
        self.component_type = parse_string_from_tuple(t, 4)

    def to_tuple(self):
        return (self.part_code,
                self.version_num,
                self.quantity,
                self.uom_code,
                self.component_type)


class MaterialSpecification(PgUserTypeMaping):
    pg_schm_name = 'common'
    pg_type_name = 'material_specification'
    pg_field_list = ['part_code', 'version_num', 'quantity',
                     'uom_code', 'material_type']

    def __init__(self, s=None, curs=None):
        self.part_code = None
        self.version_num = None
        self.quantity = None
        self.uom_code = None
        self.material_type = None
        if s:
            self.from_string(s)

    def to_dict(self):
        return {"part_code": self.part_code,
                "version_num": self.version_num,
                "quantity": decimal_to_string(self.quantity),
                "uom_code": self.uom_code,
                "material_type": self.material_type}

    def from_dict(self, d):
        self.part_code = parse_string_from_dict(d, 'part_code')
        self.version_num = parse_int_from_dict(d, 'version_num')
        self.quantity = parse_decimal_from_dict(d, 'quantity')
        self.uom_code = parse_string_from_dict(d, 'uom_code')
        self.material_type = parse_string_from_dict(d, 'material_type')

    def from_tuple(self, t):
        self.part_code = parse_string_from_tuple(t, 0)
        self.version_num = parse_int_from_tuple(t, 1)
        self.quantity = parse_decimal_from_tuple(t, 2)
        self.uom_code = parse_string_from_tuple(t, 3)
        self.material_type = parse_string_from_tuple(t, 4)

    def to_tuple(self):
        return (self.part_code,
                self.version_num,
                self.quantity,
                self.uom_code,
                self.material_type)


class PersonnelSpecification(PgUserTypeMaping):
    pg_schm_name = 'common'
    pg_type_name = 'personnel_specification'
    pg_field_list = ['personnel_code', 'version_num', 'quantity', 'uom_code']

    def __init__(self, s=None, curs=None):
        self.personnel_code = None
        self.version_num = None
        self.quantity = None
        self.uom_code = None
        if s:
            self.from_string(s)

    def to_dict(self):
        return {"personnel_code": self.personnel_code,
                "version_num": self.version_num,
                "quantity": decimal_to_string(self.quantity),
                "uom_code": self.uom_code}

    def from_dict(self, d):
        self.personnel_code = parse_string_from_dict(d, 'personnel_code')
        self.version_num = parse_int_from_dict(d, 'version_num')
        self.quantity = parse_decimal_from_dict(d, 'quantity')
        self.uom_code = parse_string_from_dict(d, 'uom_code')

    def from_tuple(self, t):
        self.personnel_code = parse_string_from_tuple(t, 0)
        self.version_num = parse_int_from_tuple(t, 1)
        self.quantity = parse_decimal_from_tuple(t, 2)
        self.uom_code = parse_string_from_tuple(t, 3)

    def to_tuple(self):
        return (self.personnel_code,
                self.version_num,
                self.quantity,
                self.uom_code)


class ToolingSpecification(PgUserTypeMaping):
    pg_schm_name = 'common'
    pg_type_name = 'tooling_specification'
    pg_field_list = ['tooling_code', 'version_num', 'quantity', 'uom_code']

    def __init__(self, s=None, curs=None):
        self.tooling_code = None
        self.version_num = None
        self.quantity = None
        self.uom_code = None
        if s:
            self.from_string(s)

    def to_dict(self):
        return {"tooling_code": self.tooling_code,
                "version_num": self.version_num,
                "quantity": decimal_to_string(self.quantity),
                "uom_code": self.uom_code}

    def from_dict(self, d):
        self.tooling_code = parse_string_from_dict(d, 'tooling_code')
        self.version_num = parse_int_from_dict(d, 'version_num')
        self.quantity = parse_decimal_from_dict(d, 'quantity')
        self.uom_code = parse_string_from_dict(d, 'uom_code')

    def from_tuple(self, t):
        self.tooling_code = parse_string_from_tuple(t, 0)
        self.version_num = parse_int_from_tuple(t, 1)
        self.quantity = parse_decimal_from_tuple(t, 2)
        self.uom_code = parse_string_from_tuple(t, 3)

    def to_tuple(self):
        return (self.tooling_code,
                self.version_num,
                self.quantity,
                self.uom_code)


class EquipmentSpecification(PgUserTypeMaping):
    pg_schm_name = 'common'
    pg_type_name = 'equipment_specification'
    pg_field_list = ['equipment_code', 'version_num', 'quantity', 'uom_code']

    def __init__(self, s=None, curs=None):
        self.equipment_code = None
        self.version_num = None
        self.quantity = None
        self.uom_code = None
        if s:
            self.from_string(s)

    def to_dict(self):
        return {"equipment_code": self.equipment_code,
                "version_num": self.version_num,
                "quantity": decimal_to_string(self.quantity),
                "uom_code": self.uom_code}

    def from_dict(self, d):
        self.equipment_code = parse_string_from_dict(d, 'equipment_code')
        self.version_num = parse_int_from_dict(d, 'version_num')
        self.quantity = parse_decimal_from_dict(d, 'quantity')
        self.uom_code = parse_string_from_dict(d, 'uom_code')

    def from_tuple(self, t):
        self.equipment_code = parse_string_from_tuple(t, 0)
        self.version_num = parse_int_from_tuple(t, 1)
        self.quantity = parse_decimal_from_tuple(t, 2)
        self.uom_code = parse_string_from_tuple(t, 3)

    def to_tuple(self):
        return (self.equipment_code,
                self.version_num,
                self.quantity,
                self.uom_code)


class DependencySpecification(PgUserTypeMaping):
    pg_schm_name = 'common'
    pg_type_name = 'dependency_specification'
    pg_field_list = ['ancestor', 'descendant', 'depth']

    def __init__(self, s=None, curs=None):
        self.ancestor = None
        self.descendant = None
        self.depth = None
        if s:
            self.from_string(s)

    def to_dict(self):
        return {"ancestor": self.ancestor,
                "descendant": self.descendant,
                "depth": self.depth}

    def from_dict(self, d):
        self.ancestor = parse_int_from_dict(d, 'ancestor')
        self.descendant = parse_int_from_dict(d, 'descendant')
        self.depth = parse_int_from_dict(d, 'depth')

    def from_tuple(self, t):
        self.ancestor = parse_int_from_tuple(t, 0)
        self.descendant = parse_int_from_tuple(t, 1)
        self.depth = parse_int_from_tuple(t, 2)

    def to_tuple(self):
        return (self.ancestor,
                self.descendant,
                self.depth)


class EbomHead(PgUserTypeMaping):
    pg_schm_name = 'common'
    pg_type_name = 'ebom_head'
    pg_field_list = ['document_id', 'gid', 'display_name', 'version_num',
                     'document_date', 'curr_fsmt', 'document_type', 'component_spec']

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

    def to_dict(self):
        return {"document_id": self.document_id,
                "gid": self.gid,
                "display_name": self.display_name,
                "version_num": self.version_num,
                "document_date": date_to_string(self.document_date),
                "curr_fsmt": self.curr_fsmt,
                "document_type": self.document_type,
                "component_spec": ComponentSpecification(self.component_spec).to_dict()}

    def from_dict(self, d):
        self.document_id = parse_int_from_dict(d, 'document_id')
        self.gid = parse_uuid_from_dict(d, 'gid')
        self.display_name = parse_string_from_dict(d, 'display_name')
        self.version_num = parse_int_from_dict(d, 'version_num')
        self.document_date = parse_date_from_dict(d, 'document_date')
        self.curr_fsmt = parse_string_from_dict(d, 'curr_fsmt')
        self.document_type = parse_string_from_dict(d, 'document_type')
        #self.component_spec = parse_string_from_dict(d, 'component_spec')
        #self.component_spec = d['component_spec']
        # KeyError: 'component_spec'
        self.component_spec = ComponentSpecification().from_dict(d['component_spec'])
        #self.component_spec = spec
        #print(type(spec))

    def from_tuple(self, t):
        self.document_id = parse_int_from_tuple(t, 0)
        self.gid = parse_uuid_from_tuple(t, 1)
        self.display_name = parse_string_from_tuple(t, 2)
        self.version_num = parse_int_from_tuple(t, 3)
        self.document_date = parse_date_from_tuple(t, 4)
        self.curr_fsmt = parse_string_from_tuple(t, 5)
        self.document_type = parse_string_from_tuple(t, 6)
        self.component_spec = parse_string_from_tuple(t, 7)

    def to_tuple(self):
        return (self.document_id,
                uuid_to_string(self.gid),
                self.display_name,
                self.version_num,
                self.document_date,
                self.curr_fsmt,
                self.document_type,
                self.component_spec)


class MbomHead(PgUserTypeMaping):
    pg_schm_name = 'common'
    pg_type_name = 'mbom_head'
    pg_field_list = ['document_id', 'gid', 'display_name', 'version_num',
                     'document_date', 'curr_fsmt', 'document_type', 'material_spec']

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

    def to_dict(self):
        #ms = MaterialSpecification().from_string(self.material_spec)
        if self.document_date:
            _document_date = self.document_date.strftime('%Y-%m-%d')
        else:
            _document_date = None
        return {"document_id": self.document_id,
                "gid": self.gid,
                "display_name": self.display_name,
                "version_num": self.version_num,
                "document_date": _document_date,
                "curr_fsmt": self.curr_fsmt,
                "document_type": self.document_type,
                "material_spec": MaterialSpecification(self.material_spec).to_dict()}

    def from_dict(self, d):
        self.document_id = parse_int_from_dict(d, 'document_id')
        self.gid = parse_uuid_from_dict(d, 'gid')
        self.display_name = parse_string_from_dict(d, 'display_name')
        self.version_num = parse_int_from_dict(d, 'version_num')
        self.document_date = parse_date_from_dict(d, 'document_date')
        self.curr_fsmt = parse_string_from_dict(d, 'curr_fsmt')
        self.document_type = parse_string_from_dict(d, 'document_type')
        self.material_spec = MaterialSpecification().from_dict(d['material_spec'])

    def from_tuple(self, t):
        self.document_id = parse_int_from_tuple(t, 0)
        self.gid = parse_uuid_from_tuple(t, 1)
        self.display_name = parse_string_from_tuple(t, 2)
        self.version_num = parse_int_from_tuple(t, 3)
        self.document_date = parse_date_from_tuple(t, 4)
        self.curr_fsmt = parse_string_from_tuple(t, 5)
        self.document_type = parse_string_from_tuple(t, 6)
        self.material_spec = parse_string_from_tuple(t, 7)

    def to_tuple(self):
        return (self.document_id,
                uuid_to_string(self.gid),
                self.display_name,
                self.version_num,
                self.document_date,
                self.curr_fsmt,
                self.document_type,
                self.material_spec)


class OperationHead(PgUserTypeMaping):
    pg_schm_name = 'common'
    pg_type_name = 'operation_head'
    pg_field_list = ['document_id', 'gid', 'display_name', 'version_num',
                     'document_date', 'curr_fsmt', 'document_type', 'producible_spec']

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

    def to_dict(self):
        if self.document_date:
            _document_date = self.document_date.strftime('%Y-%m-%d')
        else:
            _document_date = None
        return {"document_id": self.document_id,
                "gid": self.gid,
                "display_name": self.display_name,
                "version_num": self.version_num,
                "document_date": _document_date,
                "curr_fsmt": self.curr_fsmt,
                "document_type": self.document_type,
                "producible_spec": MaterialSpecification(self.producible_spec).to_dict()}

    def from_dict(self, d):
        self.document_id = parse_int_from_dict(d, 'document_id')
        self.gid = parse_uuid_from_dict(d, 'gid')
        self.display_name = parse_string_from_dict(d, 'display_name')
        self.version_num = parse_int_from_dict(d, 'version_num')
        self.document_date = parse_date_from_dict(d, 'document_date')
        self.curr_fsmt = parse_string_from_dict(d, 'curr_fsmt')
        self.document_type = parse_string_from_dict(d, 'document_type')
        self.producible_spec = MaterialSpecification().from_dict(d['producible_spec'])
        #self.producible_spec = d['producible_spec']

    def from_tuple(self, t):
        self.document_id = parse_int_from_tuple(t, 0)
        self.gid = parse_uuid_from_tuple(t, 1)
        self.display_name = parse_string_from_tuple(t, 2)
        self.version_num = parse_int_from_tuple(t, 3)
        self.document_date = parse_date_from_tuple(t, 4)
        self.curr_fsmt = parse_string_from_tuple(t, 5)
        self.document_type = parse_string_from_tuple(t, 6)
        self.producible_spec = parse_string_from_tuple(t, 7)

    def to_tuple(self):
        return (self.document_id,
                uuid_to_string(self.gid),
                self.display_name,
                self.version_num,
                self.document_date,
                self.curr_fsmt,
                self.document_type,
                self.producible_spec)


class OperationSegment(PgUserTypeMaping):
    pg_schm_name = 'common'
    pg_type_name = 'operation_segment'
    pg_field_list = ['gid', 'operation_code', 'material_spec', 'personnel_spec',
                     'equipment_spec', 'tooling_spec']

    def __init__(self, s=None, curs=None):
        self.gid = None
        self.operation_code = None
        self.material_spec = None
        self.personnel_spec = None
        self.equipment_spec = None
        self.tooling_spec = None
        if s:
            self.from_string(s)
            #print(self.material_spec)
            #print(type(self.material_spec))

    def to_dict(self):
        print("call OperationSegment to_dict")
        return {"gid": self.gid,
                "operation_code": self.operation_code,
                "material_spec": self._adapt_list_to_dict(self.material_spec),
                "personnel_spec": self._adapt_list_to_dict(self.personnel_spec),
                "equipment_spec": self._adapt_list_to_dict(self.equipment_spec),
                "tooling_spec": self._adapt_list_to_dict(self.tooling_spec)}

    def from_dict(self, d):
        print("call OperationSegment from_dict")
        self.material_spec = []
        for row in d['material_spec']:
            print(row)
            b = MaterialSpecification()
            b.from_dict(row)
            self.material_spec.append(b)

        self.tooling_spec = []
        for row in d['tooling_spec']:
            print(row)
            b = ToolingSpecification()
            b.from_dict(row)
            self.tooling_spec.append(b)

        self.personnel_spec = []
        for row in d['personnel_spec']:
            print(row)
            b = PersonnelSpecification()
            b.from_dict(row)
            self.personnel_spec.append(b)

        self.equipment_spec = []
        for row in d['equipment_spec']:
            print(row)
            b = EquipmentSpecification()
            b.from_dict(row)
            self.equipment_spec.append(b)

        print("call OperationSegment from_dict")
        self.gid = d['gid']
        self.operation_code = d['operation_code']
        #self.material_spec = d['material_spec']
        #self.personnel_spec = d['personnel_spec']
        #self.equipment_spec = d['equipment_spec']
        #self.tooling_spec = d['tooling_spec']

    def from_tuple(self, t):
        print("call OperationSegment from_tuple")
        self.gid = uuid.UUID(t[0])
        self.operation_code = t[1]

        self.material_spec = []
        #print("TYP", t[2])
        fields = self._complex_string_to_list(t[2])
        if (len(fields) > 0):
            for filed in fields:
                #print(filed)
                print(MaterialSpecification(filed))
                self.material_spec.append(MaterialSpecification(filed))

        self.personnel_spec = []
        fields = self._complex_string_to_list(t[3])
        #print("PERS", fields)
        #print("TYP", type(t[3]))
        #print(t[3])
        if (len(fields) > 0):
            for filed in fields:
                #print(filed)
                print(PersonnelSpecification(filed))
                self.personnel_spec.append(PersonnelSpecification(filed))


        self.equipment_spec = []
        fields = self._complex_string_to_list(t[4])
        if (len(fields) > 0):
            for filed in fields:
                #print(filed)
                print(EquipmentSpecification(filed))
                self.equipment_spec.append(EquipmentSpecification(filed))

        self.tooling_spec = []
        fields = self._complex_string_to_list(t[5])
        if (len(fields) > 0):
            for filed in fields:
                #print(filed)
                print(ToolingSpecification(filed))
                self.tooling_spec.append(ToolingSpecification(filed))

    def to_tuple(self):
        print("call to_tuple")
        return (self.gid,
                self.operation_code,
                self.material_spec,
                self.personnel_spec,
                self.equipment_spec,
                self.tooling_spec)


def register(conn):
    psycopg2.extras.register_uuid()
    pg_typ_caster(connection=conn, nspname='common', typname='component_specification', mapclass=ComponentSpecification)
    pg_typ_caster(connection=conn, nspname='common', typname='material_specification', mapclass=MaterialSpecification)
    pg_typ_caster(connection=conn, nspname='common', typname='personnel_specification', mapclass=PersonnelSpecification)
    pg_typ_caster(connection=conn, nspname='common', typname='tooling_specification', mapclass=ToolingSpecification)
    pg_typ_caster(connection=conn, nspname='common', typname='equipment_specification', mapclass=EquipmentSpecification)
    pg_typ_caster(connection=conn, nspname='common', typname='dependency_specification', mapclass=DependencySpecification)
    pg_typ_caster(connection=conn, nspname='common', typname='operation_segment', mapclass=OperationSegment)
    pg_typ_caster(connection=conn, nspname='common', typname='ebom_head', mapclass=EbomHead)
    pg_typ_caster(connection=conn, nspname='common', typname='mbom_head', mapclass=MbomHead)
    pg_typ_caster(connection=conn, nspname='common', typname='operation_head', mapclass=OperationHead)
