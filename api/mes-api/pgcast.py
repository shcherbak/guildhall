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

    @staticmethod
    def _adapt(o):
        if o is None:
            return 'NULL'
        else:
            # return _ext.adapt(o)
            if isinstance(o, str):
                return "'{0}'".format(o)
            else:
                # return _ext.adapt(obj=o, alternate=None, protocol=None)
                return _ext.adapt(obj=o, alternate=None, protocol=None)

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

    @staticmethod
    def repr_helper(field_list):
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
        l = []
        for i in t:
            l.append(self._adapt(i))
        return tuple(l)

    @staticmethod
    def repr_helper2(field_list):
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


class ComponentSpecification(PgUserTypeMaping):
    pg_schm_name = 'common'
    pg_type_name = 'component_specification'
    pg_field_list = ['part_code', 'version_num', 'quantity',
                     'uom_code', 'component_type']

    def __init__(self, s=None, curs=None):
        self.part_code = ''
        self.version_num = 0
        self.quantity = Decimal(0)
        self.uom_code = ''
        self.component_type = ''
        if s:
            self.from_string(s)

    def to_dict(self):
        return {"part_code": self.part_code,
                "version_num": int(self.version_num),
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
        self.part_code = ''
        self.version_num = 0
        self.quantity = Decimal(0)
        self.uom_code = ''
        self.material_type = ''
        if s:
            self.from_string(s)

    def to_dict(self):
        return {"part_code": self.part_code,
                "version_num": int(self.version_num),
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
        self.personnel_code = ''
        self.version_num = 0
        self.quantity = Decimal(0)
        self.uom_code = ''
        if s:
            self.from_string(s)

    def to_dict(self):
        return {"personnel_code": self.personnel_code,
                "version_num": int(self.version_num),
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
        self.tooling_code = ''
        self.version_num = 0
        self.quantity = Decimal(0)
        self.uom_code = ''
        if s:
            self.from_string(s)

    def to_dict(self):
        return {"tooling_code": self.tooling_code,
                "version_num": int(self.version_num),
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
        self.equipment_code = ''
        self.version_num = 0
        self.quantity = Decimal(0)
        self.uom_code = ''
        if s:
            self.from_string(s)

    def to_dict(self):
        return {"equipment_code": self.equipment_code,
                "version_num": int(self.version_num),
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
                "depth": int(self.depth)}

    def from_dict(self, d):
        self.ancestor = d['ancestor']
        self.descendant = d['descendant']
        self.depth = int(d['depth'])

    def from_tuple(self, t):
        self.ancestor = uuid.UUID(t[0])
        self.descendant = uuid.UUID(t[1])
        self.depth = int(t[2])

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
                "component_spec": ComponentSpecification(self.component_spec).to_dict()}

    def from_dict(self, d):
        if len(d['document_date']) > 0:
            _document_date = datetime.datetime.strptime(d['document_date'], "%Y-%m-%d").date()
        else:
            _document_date = None

        self.document_id = d['document_id']
        self.gid = d['gid']
        self.display_name = d['display_name']
        self.version_num = d['version_num']
        self.document_date = _document_date
        self.curr_fsmt = d['curr_fsmt']
        self.document_type = d['document_type']
        self.component_spec = d['component_spec']
        #spec = ComponentSpecification.from_dict(d['component_spec'])
        #self.component_spec = spec
        #print(type(spec))

    def from_tuple(self, t):
        self.document_id = int(t[0])
        self.gid = uuid.UUID(t[1])
        self.display_name = t[2]
        self.version_num = t[3]
        if len(t[4]) > 0:
            self.document_date = datetime.datetime.strptime(t[4], "%Y-%m-%d")
        else:
            self.document_date = None
        self.curr_fsmt = t[5]
        self.document_type = t[6]
        self.component_spec = t[7]

    def to_tuple(self):
        return (self.document_id,
                self.gid,
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
        #ms = MaterialSpecification()
        if len(d['document_date']) > 0:
            _document_date = datetime.datetime.strptime(d['document_date'], "%Y-%m-%d").date()
        else:
            _document_date = None

        self.document_id = d['document_id']
        self.gid = d['gid']
        self.display_name = d['display_name']
        self.version_num = d['version_num']
        self.document_date = _document_date
        self.curr_fsmt = d['curr_fsmt']
        self.document_type = d['document_type']
        self.material_spec = MaterialSpecification().from_dict(d['material_spec'])

    def from_tuple(self, t):
        self.document_id = int(t[0])
        self.gid = uuid.UUID(t[1])
        self.display_name = t[2]
        self.version_num = t[3]
        if len(t[4]) > 0:
            self.document_date = datetime.datetime.strptime(t[4], "%Y-%m-%d")
        else:
            self.document_date = None
        self.curr_fsmt = t[5]
        self.document_type = t[6]
        self.material_spec = t[7]

    def to_tuple(self):
        return (self.document_id,
                self.gid,
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
        if len(d['document_date']) > 0:
            _document_date = datetime.datetime.strptime(d['document_date'], "%Y-%m-%d").date()
        else:
            _document_date = None

        self.document_id = d['document_id']
        self.gid = d['gid']
        self.display_name = d['display_name']
        self.version_num = d['version_num']
        self.document_date = _document_date
        self.curr_fsmt = d['curr_fsmt']
        self.document_type = d['document_type']
        self.producible_spec = d['producible_spec']

    def from_tuple(self, t):
        self.document_id = int(t[0])
        self.gid = uuid.UUID(t[1])
        self.display_name = t[2]
        self.version_num = t[3]
        if len(t[4]) > 0:
            self.document_date = datetime.datetime.strptime(t[4], "%Y-%m-%d")
        else:
            self.document_date = None
        self.curr_fsmt = t[5]
        self.document_type = t[6]
        self.producible_spec = t[7]

    def to_tuple(self):
        return (self.document_id,
                self.gid,
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
        _mspec = []
        for s in self.material_spec:
            _mspec.append(s.to_dict())
        _tspec = []
        for s in self.tooling_spec:
            _tspec.append(s.to_dict())
        return {"gid": self.gid,
                "operation_code": self.operation_code,
                "material_spec": _mspec,
                "personnel_spec": self.personnel_spec,
                "equipment_spec": self.equipment_spec,
                "tooling_spec": _tspec}

    def from_dict(self, d):
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
        print("call OperationSegment from_dict")
        self.gid = d['gid']
        self.operation_code = d['operation_code']
        #self.material_spec = d['material_spec']
        self.personnel_spec = d['personnel_spec']
        self.equipment_spec = d['equipment_spec']
        #self.tooling_spec = d['tooling_spec']

    def from_tuple(self, t):
        print("call OperationSegment from_tuple")
        self.gid = uuid.UUID(t[0])
        self.operation_code = t[1]
        #self.material_spec = t[2]
        #print(type(self.material_spec))
        #print(self.material_spec)
        #print(type(self.material_spec))
        #lin = self.material_spec
        self.material_spec = []
        lin = t[2]
        lin = lin.replace("{\"", "")
        lin = lin.replace("\"}", "")
        print("lin IS ", lin)
        fields = lin.split("\",\"")
        for filed in fields:
            print(filed)
            print(MaterialSpecification(filed))
            self.material_spec.append(MaterialSpecification(filed))
        #print(MaterialSpecification(self.material_spec))
        #self.material_spec = []
        #for row in t[2]:
        #    print(row)
        #    #b = MaterialSpecification()
        #    #b.from_tuple(row)
        #    #self.material_spec.append(b)
        #    #print(b)
        self.personnel_spec = t[3]
        self.equipment_spec = t[4]
        #self.tooling_spec = t[5]
        self.tooling_spec = []
        lin = t[5]
        lin = lin.replace("{\"", "")
        lin = lin.replace("\"}", "")
        print("lin IS ", lin)
        fields = lin.split("\",\"")
        for filed in fields:
            print(filed)
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
