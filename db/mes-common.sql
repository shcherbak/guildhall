CREATE EXTENSION "uuid-ossp"
  SCHEMA public
  VERSION "1.1";

CREATE EXTENSION ltree
  SCHEMA public
  VERSION "1.1";

DROP SCHEMA common CASCADE;

CREATE SCHEMA common
  AUTHORIZATION postgres;


CREATE DOMAIN common.quantity AS 
  numeric(20,4) DEFAULT 0 
    CONSTRAINT quantity_is_positive CHECK ((VALUE >= (0)::numeric));
COMMENT ON DOMAIN common.quantity IS 'quantity domain';


CREATE TYPE common.document_fsmt AS ENUM
   ('PROPOSED',
    'COMMITTED',
    'DECOMMITTED');
ALTER TYPE common.document_fsmt
  OWNER TO postgres;


CREATE TYPE common.document_kind AS ENUM (
  'EBOM',
  'MBOM',
  'OPERATION',
  'PRODUCT',
  'PROCESS',
  'REQUEST',
  'RESPONSE'
);


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


-- fix field order
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
  material_spec common.material_specification -- any producible
);


CREATE TYPE common.ebom_document AS (
  head common.ebom_information,
  body common.component_specification[]
);


CREATE TYPE common.mbom_document AS (
  head common.mbom_information,
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
  document_id bigint,
  gid uuid,
  display_name character varying,
  version_num integer,
  document_date date,
  curr_fsmt common.document_fsmt,
  document_type common.document_kind,
  producible_spec common.material_specification[]
);


CREATE TYPE common.dependency_specification_ltree AS (
  ancestor uuid,
  descendant uuid,
  depth int,
  pathway ltree
);


CREATE TYPE common.dependency_specification AS (
  ancestor uuid,
  descendant uuid,
  depth int
);


CREATE TYPE common.operation_document AS (
  head common.operation_information,
  body common.operation_segment[],
  deps common.dependency_specification[]
);


/*
create function ();
create function producible_to_part();
*/


CREATE OR REPLACE FUNCTION common.producible_to_part(__material common.material_specification)
  RETURNS common.component_specification AS
$BODY$
BEGIN

  RETURN (
    __material.part_code,
    __material.version_num,
    __material.quantity,
    __material.uom_code,
    'PART'::common.component_kind
  )::common.component_specification;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION common.producible_to_part(__material common.material_specification)
  OWNER TO postgres;

SELECT common.producible_to_part(__material := ('part_code#1', 1, 1.0, 'pcs', 'PRODUCIBLE')::common.material_specification);


CREATE OR REPLACE FUNCTION common.producible_to_assembly(__material common.material_specification)
  RETURNS common.component_specification AS
$BODY$
BEGIN

  RETURN (
    __material.part_code,
    __material.version_num,
    __material.quantity,
    __material.uom_code,
    'ASSEMBLY'::common.component_kind
  )::common.component_specification;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION common.producible_to_assembly(__material common.material_specification)
  OWNER TO postgres;

SELECT common.producible_to_assembly(__material := ('part_code#1', 1, 1.0, 'pcs', 'PRODUCIBLE')::common.material_specification);


CREATE OR REPLACE FUNCTION common.consumable_to_part(__material common.material_specification)
  RETURNS common.component_specification AS
$BODY$
BEGIN

  RETURN (
    __material.part_code,
    __material.version_num,
    __material.quantity,
    __material.uom_code,
    'PART'::common.component_kind
  )::common.component_specification;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION common.consumable_to_part(__material common.material_specification)
  OWNER TO postgres;

SELECT common.consumable_to_part(__material := ('part_code#1', 1, 1.0, 'pcs', 'CONSUMABLE')::common.material_specification);


CREATE OR REPLACE FUNCTION common.consumable_to_assembly(__material common.material_specification)
  RETURNS common.component_specification AS
$BODY$
BEGIN

  RETURN (
    __material.part_code,
    __material.version_num,
    __material.quantity,
    __material.uom_code,
    'ASSEMBLY'::common.component_kind
  )::common.component_specification;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION common.consumable_to_assembly(__material common.material_specification)
  OWNER TO postgres;

SELECT common.consumable_to_assembly(__material := ('part_code#1', 1, 1.0, 'pcs', 'CONSUMABLE')::common.material_specification);


CREATE OR REPLACE FUNCTION common.consumable_to_buyable(__material common.material_specification)
  RETURNS common.component_specification AS
$BODY$
BEGIN

  RETURN (
    __material.part_code,
    __material.version_num,
    __material.quantity,
    __material.uom_code,
    'BUYABLE'::common.component_kind
  )::common.component_specification;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION common.consumable_to_buyable(__material common.material_specification)
  OWNER TO postgres;

SELECT common.consumable_to_buyable(__material := ('part_code#1', 1, 1.0, 'pcs', 'CONSUMABLE')::common.material_specification);


CREATE OR REPLACE FUNCTION common.primal_to_buyable(__material common.material_specification)
  RETURNS common.component_specification AS
$BODY$
BEGIN

  RETURN (
    __material.part_code,
    __material.version_num,
    __material.quantity,
    __material.uom_code,
    'BUYABLE'::common.component_kind
  )::common.component_specification;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION common.primal_to_buyable(__material common.material_specification)
  OWNER TO postgres;

SELECT common.primal_to_buyable(__material := ('part_code#1', 1, 1.0, 'pcs', 'PRIMAL')::common.material_specification);


CREATE OR REPLACE FUNCTION common.assemly_to_producible(__component common.component_specification)
  RETURNS common.material_specification AS
$BODY$
BEGIN

  RETURN (
    __component.part_code,
    __component.version_num,
    __component.quantity,
    __component.uom_code,
    'PRODUCIBLE'::common.material_kind
  )::common.material_specification;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION common.assemly_to_producible(__component common.component_specification)
  OWNER TO postgres;

SELECT common.assemly_to_producible(__component := ('part_code#1', 1, 1.0, 'pcs', 'ASSEMBLY')::common.component_specification);


CREATE OR REPLACE FUNCTION common.part_to_producible(__component common.component_specification)
  RETURNS common.material_specification AS
$BODY$
BEGIN

  RETURN (
    __component.part_code,
    __component.version_num,
    __component.quantity,
    __component.uom_code,
    'PRODUCIBLE'::common.material_kind
  )::common.material_specification;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION common.part_to_producible(__component common.component_specification)
  OWNER TO postgres;

SELECT common.part_to_producible(__component := ('part_code#1', 1, 1.0, 'pcs', 'PART')::common.component_specification);


CREATE OR REPLACE FUNCTION common.buyable_to_primal(__component common.component_specification)
  RETURNS common.material_specification AS
$BODY$
BEGIN

  RETURN (
    __component.part_code,
    __component.version_num,
    __component.quantity,
    __component.uom_code,
    'PRIMAL'::common.material_kind
  )::common.material_specification;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION common.buyable_to_primal(__component common.component_specification)
  OWNER TO postgres;

SELECT common.buyable_to_primal(__component := ('part_code#1', 1, 1.0, 'pcs', 'BUYABLE')::common.component_specification);


CREATE OR REPLACE FUNCTION common.part_to_consumable(__component common.component_specification)
  RETURNS common.material_specification AS
$BODY$
BEGIN

  RETURN (
    __component.part_code,
    __component.version_num,
    __component.quantity,
    __component.uom_code,
    'CONSUMABLE'::common.material_kind
  )::common.material_specification;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION common.part_to_consumable(__component common.component_specification)
  OWNER TO postgres;

SELECT common.part_to_consumable(__component := ('part_code#1', 1, 1.0, 'pcs', 'PART')::common.component_specification);


CREATE OR REPLACE FUNCTION common.assemly_to_consumable(__component common.component_specification)
  RETURNS common.material_specification AS
$BODY$
BEGIN

  RETURN (
    __component.part_code,
    __component.version_num,
    __component.quantity,
    __component.uom_code,
    'CONSUMABLE'::common.material_kind
  )::common.material_specification;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION common.assemly_to_consumable(__component common.component_specification)
  OWNER TO postgres;

SELECT common.assemly_to_consumable(__component := ('part_code#1', 1, 1.0, 'pcs', 'ASSEMBLY')::common.component_specification);


CREATE OR REPLACE FUNCTION common.buyable_to_consumable(__component common.component_specification)
  RETURNS common.material_specification AS
$BODY$
BEGIN

  RETURN (
    __component.part_code,
    __component.version_num,
    __component.quantity,
    __component.uom_code,
    'CONSUMABLE'::common.material_kind
  )::common.material_specification;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION common.buyable_to_consumable(__component common.component_specification)
  OWNER TO postgres;

SELECT common.buyable_to_consumable(__component := ('part_code#1', 1, 1.0, 'pcs', 'BUYABLE')::common.component_specification);


/*CREATE TYPE common.dependency_kind AS ENUM
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
  OWNER TO postgres;*/


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


/*CREATE TABLE test (path ltree);
INSERT INTO test VALUES ('ROOT');
INSERT INTO test VALUES ('ROOT.c8114e6e-bdcc-11e7-b716-d4bed939923a');
INSERT INTO test VALUES ('ROOT.c8114e6e-bdcc-11e7-b716-d4bed939923a.e2c8da4c-bdcc-11e7-b717-d4bed939923a');
INSERT INTO test VALUES ('ROOT.c8114e6e-bdcc-11e7-b716-d4bed939923a.Operation#2');
INSERT INTO test VALUES ('ROOT.c8114e6e-bdcc-11e7-b716-d4bed939923a.e2c8da4c-bdcc-11e7-b717-d4bed939923a.Operation#11');
INSERT INTO test VALUES ('ROOT.c8114e6e-bdcc-11e7-b716-d4bed939923a.e2c8da4c-bdcc-11e7-b717-d4bed939923a.Operation#12');
INSERT INTO test VALUES ('ROOT.c8114e6e-bdcc-11e7-b716-d4bed939923a.e2c8da4c-bdcc-11e7-b717-d4bed939923a.Operation#21');
INSERT INTO test VALUES ('ROOT.c8114e6e-bdcc-11e7-b716-d4bed939923a.e2c8da4c-bdcc-11e7-b717-d4bed939923a.Operation#22');
CREATE INDEX path_gist_idx ON test USING GIST (path);
CREATE INDEX path_idx ON test USING BTREE (path);*/


CREATE OR REPLACE FUNCTION ebom.get_gid_by_id(__document_id bigint)
  RETURNS uuid AS
$BODY$
BEGIN
  RETURN gid
    FROM 
      ebom.definition
    WHERE 
      id = __document_id;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION ebom.get_gid_by_id(bigint)
  OWNER TO postgres;


CREATE OR REPLACE FUNCTION ebom.get_id_by_gid(__document_gid uuid)
  RETURNS bigint AS
$BODY$
BEGIN
  RETURN id
    FROM 
      ebom.definition
    WHERE 
      gid = __document_gid;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION ebom.get_id_by_gid(uuid)
  OWNER TO postgres;


CREATE OR REPLACE FUNCTION ebom.destroy(__document_id bigint)
  RETURNS void AS
$BODY$
BEGIN
  DELETE FROM ebom.definition WHERE id = __document_id;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION ebom.destroy(bigint)
  OWNER TO postgres;


-- Function: demand.get_head(bigint)

-- DROP FUNCTION demand.get_head(bigint);

CREATE OR REPLACE FUNCTION ebom.get_head(__document_id bigint)
  RETURNS common.ebom_head AS
$BODY$
DECLARE
BEGIN
  RETURN 
    (definition.id, 
    definition.gid, 
    definition.display_name, 
    definition.version_num,  
    definition.published_date, 
    definition.curr_fsmt, 
    'EBOM'::common.document_kind,
    (information.part_code, information.version_num, 1, 'pcs', 'ASSEMBLY')::common.component_specification
    )::common.ebom_information
  FROM 
    ebom.definition, 
    ebom.information
  WHERE 
    information.id = definition.information_id AND
    definition.id = __document_id;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION ebom.get_information(bigint)
  OWNER TO postgres;


CREATE OR REPLACE FUNCTION ebom.get_body(__document_id bigint)
  RETURNS common.ebom_body[] AS
$BODY$
BEGIN
  RETURN
    ARRAY(
      SELECT 
        (component.part_code, 
        component.version_num, 
        component.qty,
        'pcs',
        component.component_type)::common.component_specification
      FROM 
        ebom.component
      WHERE 
        component.information_id = __document_id
    );
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION demand.get_body(bigint)
  OWNER TO postgres;


-- Function: demand.init(common.outbound_head, common.document_body[])

-- DROP FUNCTION demand.init(common.outbound_head, common.document_body[]);

CREATE OR REPLACE FUNCTION ebom.init(
    __head common.ebom_head,
    __body common.ebom_body[])
  RETURNS bigint AS
$BODY$
DECLARE
  _item common.ebom_body;
  _document_id bigint;
BEGIN

  IF (__head.facility_code IS NULL) THEN
    RAISE EXCEPTION 'field facility_code is not defined';
  END IF;

  IF (__head.document_date IS NULL) THEN
    __head.document_date := now()::date;
  END IF;

  IF (__head.due_date IS NULL) THEN
    __head.due_date := __head.document_date + 1;
  END IF;

  IF (__head.display_name IS NULL) THEN
    __head.display_name := demand.generate_display_name(
        __document_date := __head.document_date,
        __facility_code := __head.facility_code);
  END IF;

  INSERT INTO
    demand.head (
      id, 
      display_name,
      document_date, 
      due_date, 
      ship_from, 
      ship_to)
  VALUES (
    DEFAULT, 
    __head.display_name,
    __head.document_date, 
    __head.due_date, 
    __head.facility_code, 
    __head.addressee) 
  RETURNING id INTO _document_id;

  FOREACH _item IN
    ARRAY __body
  LOOP
    INSERT INTO
      demand.body (
        head_id, 
        good_code, 
        quantity, 
        uom_code)
    VALUES (
      _document_id, 
      _item.good_code, 
      _item.quantity, 
      _item.uom_code);
  END LOOP;

  RETURN _document_id;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION demand.init(common.outbound_head, common.document_body[])
  OWNER TO postgres;


-- Function: demand.reinit(bigint, common.document_body[])

-- DROP FUNCTION demand.reinit(bigint, common.document_body[]);

CREATE OR REPLACE FUNCTION demand.reinit(
    __document_id bigint,
    __body common.document_body[])
  RETURNS void AS
$BODY$
DECLARE
  _item common.document_body;
BEGIN

  DELETE FROM
    demand.body
  WHERE 
    head_id = __document_id;

  FOREACH _item IN
    ARRAY __body
  LOOP
    INSERT INTO 
      demand.body (
        head_id,
        good_code,
        quantity,
        uom_code)
    VALUES (
      __document_id, 
      _item.good_code, 
      _item.quantity, 
      _item.uom_code);
  END LOOP;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION demand.reinit(bigint, common.document_body[])
  OWNER TO postgres;
