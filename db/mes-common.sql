CREATE DOMAIN common.quantity AS 
  numeric(20,4) DEFAULT 0 
    CONSTRAINT quantity_is_positive CHECK ((VALUE >= (0)::numeric));
COMMENT ON DOMAIN common.quantity IS 'quantity domain';


CREATE TYPE common.inventory_kind AS ENUM (
  'ASSEMBLY',
  'PART',
  'BUYABLE',
  'CONSUMABLE',
  'PRODUCIBLE',
  'PRIMAL',
  'SALABLE',
  'STORABLE'
);


CREATE TYPE common.component_kind AS ENUM (
  'ASSEMBLY',
  'PART',
  'BUYABLE'
);


CREATE TYPE common.material_kind AS ENUM (
  'CONSUMABLE',
  'PRODUCIBLE',
  'PRIMAL'
);


CREATE TYPE common.material_specification AS (
  part_code   character varying,
  version_num integer,
  quantity    common.quantity,
  uom_code    character varying,
  material_type common.material_kind
);


CREATE TYPE common.component_specification AS (
  part_code   character varying,
  version_num integer,
  quantity    common.quantity,
  uom_code    character varying,
  component_type common.component_kind
);


CREATE TYPE common.equipment_specification AS (
  equipment_code  character varying,
  version_num     integer,
  quantity        common.quantity,
  uom_code        character varying
);


CREATE TYPE common.personnel_specification AS (
  personnel_code  character varying,
  version_num     integer,
  quantity        common.quantity,
  uom_code        character varying
);


CREATE TYPE common.tooling_specification AS (
  tooling_code  character varying,
  version_num   integer,
  quantity      common.quantity,
  uom_code      character varying
);






create function buyable_to_primal();
create function buyable_to_consumable();
create function part_to_producible();
create function part_to_consumable();
create function assemly_to_producible();
create function assemly_to_consumable();
create function consumable_to_assembly();
create function consumable_to_part();
create function consumable_to_buyable();
create function producible_to_assembly();
create function producible_to_part();
create function primal_to_buyable();


CREATE TYPE common.ebom_information AS (
  document_id bigint,
  gid uuid,
  display_name character varying,
  version_num integer,
  document_date date,
  curr_fsmt common.document_fsmt,
  document_type common.document_kind,
  component_spec common.component_specification -- assembly only
);


CREATE TYPE common.mbom_information AS (
  document_id bigint,
  gid uuid,
  display_name character varying,
  version_num integer,
  document_date date,
  curr_fsmt common.document_fsmt,
  document_type common.document_kind,
  material_spec common.material_specification, -- any producible
);


CREATE TYPE common.ebom_document AS (
  head common.mbom_information
  body common.component_specification[]
);


CREATE TYPE common.mbom_document AS (
  head common.mbom_head,
  body common.material_specification[]
);


CREATE TYPE common.operation_segment AS (
  gid uuid,
  operation_code character varying,
  material_spec  common.material_specification[],
  personnel_spec common.personnel_specification[],
  equipmet_spec  common.equipment_specification[],
  tooling_spec   common.tooling_specification[]
);


CREATE TYPE common.operation_information AS (
  gid uuid,
  producible_spec common.material_specification[],
);

CREATE TYPE common.dependency_specification AS (
  parent uuid,
  node uuid,
  path ltree,
);


CREATE TYPE common.dependency_specification AS (
  parent uuid,
  child uuid,
  depth int,
);


CREATE TYPE common.operatio_document AS (
  head common.operation_information,
  body common.operation_segment[],
  deps common.dependency_specification[]
);


CREATE TYPE common.dependency_kind AS ENUM
   ('NotFollow',
    'PossibleParallel',
    'NotInParallel',
    'AtStart',
    'AfterStart',
    'AfterEnd',
    'NoLaterAfterStart',
    'NoEarlierAfterStart',
    'NoLaterAfterEnd',
    'NoEarlierAfterEnd');
ALTER TYPE common.dependency_kind
  OWNER TO postgres;


/*CREATE TYPE common.ebom_body AS (
  part_code character varying,
  version_num integer,
  quantity common.quantity,
  uom_code character varying,
  component_type common.component_kind
);


CREATE TYPE common.mbom_body AS (
  part_code character varying,
  version_num integer,
  quantity common.quantity,
  uom_code character varying,
  material_type common.material_kind
);*/


CREATE TABLE test (path ltree);
INSERT INTO test VALUES ('ROOT');
INSERT INTO test VALUES ('ROOT.c8114e6e-bdcc-11e7-b716-d4bed939923a');
INSERT INTO test VALUES ('ROOT.c8114e6e-bdcc-11e7-b716-d4bed939923a.e2c8da4c-bdcc-11e7-b717-d4bed939923a');
INSERT INTO test VALUES ('ROOT.c8114e6e-bdcc-11e7-b716-d4bed939923a.Operation#2');
INSERT INTO test VALUES ('ROOT.c8114e6e-bdcc-11e7-b716-d4bed939923a.e2c8da4c-bdcc-11e7-b717-d4bed939923a.Operation#11');
INSERT INTO test VALUES ('ROOT.c8114e6e-bdcc-11e7-b716-d4bed939923a.e2c8da4c-bdcc-11e7-b717-d4bed939923a.Operation#12');
INSERT INTO test VALUES ('ROOT.c8114e6e-bdcc-11e7-b716-d4bed939923a.e2c8da4c-bdcc-11e7-b717-d4bed939923a.Operation#21');
INSERT INTO test VALUES ('ROOT.c8114e6e-bdcc-11e7-b716-d4bed939923a.e2c8da4c-bdcc-11e7-b717-d4bed939923a.Operation#22');
CREATE INDEX path_gist_idx ON test USING GIST (path);
CREATE INDEX path_idx ON test USING BTREE (path);


