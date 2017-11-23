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
CREATE TYPE common.ebom_head AS (
  document_id bigint,
  gid uuid,
  display_name character varying,
  version_num integer,
  document_date date,
  curr_fsmt common.document_fsmt,
  document_type common.document_kind,
  component_spec common.component_specification -- assembly only
);


CREATE TYPE common.mbom_head AS (
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
  head common.ebom_head,
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


CREATE TYPE common.operation_head AS (
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
  head common.operation_head,
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


  CREATE OR REPLACE FUNCTION common.disallow_editing_of_committed_document_head()
    RETURNS trigger AS
  $BODY$
  BEGIN
    IF (TG_OP = 'UPDATE') THEN

      IF (OLD.curr_fsmt = 'COMMITTED'::common.document_fsmt AND NEW.curr_fsmt <> 'DECOMMITTED'::common.document_fsmt) THEN
        RAISE EXCEPTION 'not allowed to edit document %, %, %', OLD.id, OLD.gid, OLD.curr_fsmt;
      END IF;

      RETURN NEW;

    ELSIF (TG_OP = 'DELETE') THEN

      IF (OLD.curr_fsmt = 'COMMITTED'::common.document_fsmt) THEN
        RAISE EXCEPTION 'not allowed to delete document %, %', OLD.id, OLD.curr_fsmt;
      END IF;

      RETURN OLD;
    END IF;
    RETURN NULL;
  END;
  $BODY$
    LANGUAGE plpgsql VOLATILE
    COST 100;
  ALTER FUNCTION common.disallow_editing_of_committed_document_head()
    OWNER TO postgres;


    CREATE OR REPLACE FUNCTION common.set_prev_doc_fsmt()
      RETURNS trigger AS
    $BODY$
    BEGIN
      IF (TG_OP = 'UPDATE' AND NEW.curr_fsmt != OLD.curr_fsmt) THEN
        NEW.prev_fsmt := OLD.curr_fsmt;
        NEW.prev_fsmt_date := OLD.curr_fsmt_date;
        NEW.curr_fsmt_date := now();
      END IF;
      RETURN NEW;
    END;
    $BODY$
      LANGUAGE plpgsql VOLATILE
      COST 100;
    ALTER FUNCTION common.set_prev_doc_fsmt()
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


-- TODO: deal with information table
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
    )::common.ebom_head
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
ALTER FUNCTION ebom.get_head(bigint)
  OWNER TO postgres;


CREATE OR REPLACE FUNCTION ebom.get_body(__document_id bigint)
  RETURNS common.component_specification[] AS
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
ALTER FUNCTION ebom.get_body(bigint)
  OWNER TO postgres;


-- Function: ebom.init(common.ebom_head, common.component_specification[])

-- DROP FUNCTION ebom.init(common.ebom_head, common.component_specification[]);

CREATE OR REPLACE FUNCTION ebom.init(
    __head common.ebom_head,
    __body common.component_specification[])
  RETURNS bigint AS
$BODY$
DECLARE
  _item common.component_specification;
  _definition_id bigint;
  _information_id bigint;
  _max_version_num integer;
BEGIN

  IF (__head.document_date IS NULL) THEN
    __head.document_date := now()::date;
  END IF;

  IF (__head.version_num IS NULL) THEN
    __head.version_num := 1;
  END IF;

  IF (__head.display_name IS NULL) THEN
    __head.display_name := 'NO-NAME';
  END IF;

  SELECT
    max(definition.version_num)
  FROM
    ebom.information,
    ebom.definition
  WHERE
    information.id = definition.information_id AND
    information.part_code = (__head.component_spec).part_code AND
    information.version_num = (__head.component_spec).version_num
  INTO
    _max_version_num;

  IF NOT FOUND THEN
    _max_version_num := 0;

    INSERT INTO
      ebom.information (
        id,
        display_name,
        published_date,
        part_code,
        version_num)
    VALUES (
      DEFAULT,
      __head.display_name,
      __head.document_date,
      (__head.component_spec).part_code,
      (__head.component_spec).version_num)
    RETURNING id INTO _information_id;
  ELSE
    SELECT
      id
    FROM
      ebom.information
    WHERE
      information.part_code = (__head.component_spec).part_code AND
      information.version_num = (__head.component_spec).version_num
    INTO
      _information_id;

  END IF;

  INSERT INTO
    ebom.definition (
      id,
      display_name,
      version_num,
      published_date,
      information_id)
  VALUES (
    DEFAULT,
    __head.display_name,
    _max_version_num + 1,
    __head.document_date,
    _information_id)
  RETURNING id INTO _definition_id;

  FOREACH _item IN
    ARRAY __body
  LOOP
    IF (_item.component_type = 'ASSEMBLY') THEN
      INSERT INTO
        ebom.assembly (
          definition_id,
          part_code,
          version_num,
          qty,
          uom_code,
          component_type)
      VALUES (
        _definition_id,
        _item.part_code,
        _item.version_num,
        _item.quantity,
        _item.uom_code,
        _item.component_type);
    ELSIF (_item.component_type = 'PART') THEN
      INSERT INTO
        ebom.part (
          definition_id,
          part_code,
          version_num,
          qty,
          uom_code,
          component_type)
      VALUES (
        _definition_id,
        _item.part_code,
        _item.version_num,
        _item.quantity,
        _item.uom_code,
        _item.component_type);
    ELSIF (_item.component_type = 'BUYABLE') THEN
      INSERT INTO
        ebom.buyable (
          definition_id,
          part_code,
          version_num,
          qty,
          uom_code,
          component_type)
      VALUES (
        _definition_id,
        _item.part_code,
        _item.version_num,
        _item.quantity,
        _item.uom_code,
        _item.component_type);
    ELSE
      RAISE '% unknown component_type', _item;
    END IF;
  END LOOP;

  RETURN _definition_id;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION ebom.init(common.ebom_head, common.component_specification[])
  OWNER TO postgres;



-- Function: demand.reinit(bigint, common.document_body[])

-- DROP FUNCTION demand.reinit(bigint, common.document_body[]);

CREATE OR REPLACE FUNCTION ebom.reinit(
    __document_id bigint,
    __body common.component_specification[])
  RETURNS void AS
$BODY$
DECLARE
  _item common.component_specification;
BEGIN

  DELETE FROM
    ebom.component
  WHERE
    definition_id = __document_id;

  FOREACH _item IN
    ARRAY __body
  LOOP
    IF (_item.component_type = 'ASSEMBLY') THEN
      INSERT INTO
        ebom.assembly (
          definition_id,
          part_code,
          version_num,
          qty,
          uom_code,
          component_type)
      VALUES (
        __document_id,
        _item.part_code,
        _item.version_num,
        _item.quantity,
        _item.uom_code,
        _item.component_type);
    ELSIF (_item.component_type = 'PART') THEN
      INSERT INTO
        ebom.part (
          definition_id,
          part_code,
          version_num,
          qty,
          uom_code,
          component_type)
      VALUES (
        __document_id,
        _item.part_code,
        _item.version_num,
        _item.quantity,
        _item.uom_code,
        _item.component_type);
    ELSIF (_item.component_type = 'BUYABLE') THEN
      INSERT INTO
        ebom.buyable (
          definition_id,
          part_code,
          version_num,
          qty,
          uom_code,
          component_type)
      VALUES (
        __document_id,
        _item.part_code,
        _item.version_num,
        _item.quantity,
        _item.uom_code,
        _item.component_type);
    ELSE
      RAISE '% unknown component_type', _item;
    END IF;
  END LOOP;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION ebom.reinit(bigint, common.component_specification[])
  OWNER TO postgres;
