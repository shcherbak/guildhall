--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.6
-- Dumped by pg_dump version 9.6.6

-- Started on 2017-11-29 18:04:41 EET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 12 (class 2615 OID 36186)
-- Name: common; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA common;


ALTER SCHEMA common OWNER TO postgres;

--
-- TOC entry 9 (class 2615 OID 36187)
-- Name: component; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA component;


ALTER SCHEMA component OWNER TO postgres;

--
-- TOC entry 3779 (class 0 OID 0)
-- Dependencies: 9
-- Name: SCHEMA component; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA component IS 'components of ebom';


--
-- TOC entry 18 (class 2615 OID 36188)
-- Name: ebom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ebom;


ALTER SCHEMA ebom OWNER TO postgres;

--
-- TOC entry 3780 (class 0 OID 0)
-- Dependencies: 18
-- Name: SCHEMA ebom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA ebom IS 'engenering bill of materials';


--
-- TOC entry 7 (class 2615 OID 36189)
-- Name: material; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA material;


ALTER SCHEMA material OWNER TO postgres;

--
-- TOC entry 3781 (class 0 OID 0)
-- Dependencies: 7
-- Name: SCHEMA material; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA material IS 'materials of mbom';


--
-- TOC entry 8 (class 2615 OID 36190)
-- Name: mbom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA mbom;


ALTER SCHEMA mbom OWNER TO postgres;

--
-- TOC entry 3782 (class 0 OID 0)
-- Dependencies: 8
-- Name: SCHEMA mbom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA mbom IS 'manufacturing bill of materials';


--
-- TOC entry 15 (class 2615 OID 36191)
-- Name: operation; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA operation;


ALTER SCHEMA operation OWNER TO postgres;

--
-- TOC entry 3783 (class 0 OID 0)
-- Dependencies: 15
-- Name: SCHEMA operation; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA operation IS 'operation segments';


--
-- TOC entry 11 (class 2615 OID 36192)
-- Name: pgunit; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA pgunit;


ALTER SCHEMA pgunit OWNER TO postgres;

--
-- TOC entry 17 (class 2615 OID 36193)
-- Name: tests; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tests;


ALTER SCHEMA tests OWNER TO postgres;

--
-- TOC entry 1 (class 3079 OID 13350)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3785 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 4 (class 3079 OID 36194)
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- TOC entry 3786 (class 0 OID 0)
-- Dependencies: 4
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- TOC entry 3 (class 3079 OID 36369)
-- Name: plpgsql_check; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql_check WITH SCHEMA public;


--
-- TOC entry 3787 (class 0 OID 0)
-- Dependencies: 3
-- Name: EXTENSION plpgsql_check; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql_check IS 'extended check for plpgsql functions';


--
-- TOC entry 2 (class 3079 OID 36374)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- TOC entry 3788 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET search_path = common, pg_catalog;

--
-- TOC entry 785 (class 1247 OID 36386)
-- Name: component_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE component_kind AS ENUM (
    'ASSEMBLY',
    'PART',
    'BUYABLE'
);


ALTER TYPE component_kind OWNER TO postgres;

--
-- TOC entry 788 (class 1247 OID 36393)
-- Name: quantity; Type: DOMAIN; Schema: common; Owner: postgres
--

CREATE DOMAIN quantity AS numeric(20,4) DEFAULT 0
	CONSTRAINT quantity_is_positive CHECK ((VALUE >= (0)::numeric));


ALTER DOMAIN quantity OWNER TO postgres;

--
-- TOC entry 3789 (class 0 OID 0)
-- Dependencies: 788
-- Name: DOMAIN quantity; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON DOMAIN quantity IS 'quantity domain';


--
-- TOC entry 790 (class 1247 OID 36397)
-- Name: component_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE component_specification AS (
	part_code character varying,
	version_num integer,
	quantity quantity,
	uom_code character varying,
	component_type component_kind
);


ALTER TYPE component_specification OWNER TO postgres;

--
-- TOC entry 793 (class 1247 OID 36399)
-- Name: material_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE material_kind AS ENUM (
    'CONSUMABLE',
    'PRODUCIBLE',
    'PRIMAL'
);


ALTER TYPE material_kind OWNER TO postgres;

--
-- TOC entry 796 (class 1247 OID 36407)
-- Name: consumable_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE consumable_specification AS (
	part_code character varying,
	version_num integer,
	quantity quantity,
	uom_code character varying,
	material_type material_kind,
	rationing_qty integer
);


ALTER TYPE consumable_specification OWNER TO postgres;

--
-- TOC entry 799 (class 1247 OID 36410)
-- Name: dependency_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE dependency_specification AS (
	ancestor bigint,
	descendant bigint,
	depth integer
);


ALTER TYPE dependency_specification OWNER TO postgres;

--
-- TOC entry 802 (class 1247 OID 36413)
-- Name: dependency_specification_ltree; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE dependency_specification_ltree AS (
	ancestor uuid,
	descendant uuid,
	depth integer,
	pathway public.ltree
);


ALTER TYPE dependency_specification_ltree OWNER TO postgres;

--
-- TOC entry 805 (class 1247 OID 36415)
-- Name: document_fsmt; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE document_fsmt AS ENUM (
    'PROPOSED',
    'COMMITTED',
    'DECOMMITTED'
);


ALTER TYPE document_fsmt OWNER TO postgres;

--
-- TOC entry 808 (class 1247 OID 36422)
-- Name: document_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE document_kind AS ENUM (
    'EBOM',
    'MBOM',
    'OPERATION',
    'PRODUCT',
    'PROCESS',
    'REQUEST',
    'RESPONSE'
);


ALTER TYPE document_kind OWNER TO postgres;

--
-- TOC entry 811 (class 1247 OID 36439)
-- Name: ebom_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE ebom_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	version_num integer,
	document_date date,
	curr_fsmt document_fsmt,
	document_type document_kind,
	component_spec component_specification
);


ALTER TYPE ebom_head OWNER TO postgres;

--
-- TOC entry 814 (class 1247 OID 36442)
-- Name: ebom_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE ebom_document AS (
	head ebom_head,
	body component_specification[]
);


ALTER TYPE ebom_document OWNER TO postgres;

--
-- TOC entry 817 (class 1247 OID 36445)
-- Name: equipment_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE equipment_specification AS (
	equipment_code character varying,
	version_num integer,
	quantity quantity,
	uom_code character varying
);


ALTER TYPE equipment_specification OWNER TO postgres;

--
-- TOC entry 820 (class 1247 OID 36447)
-- Name: inventory_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE inventory_kind AS ENUM (
    'ASSEMBLY',
    'PART',
    'BUYABLE',
    'CONSUMABLE',
    'PRODUCIBLE',
    'PRIMAL',
    'SALABLE',
    'STORABLE'
);


ALTER TYPE inventory_kind OWNER TO postgres;

--
-- TOC entry 823 (class 1247 OID 36465)
-- Name: material_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE material_specification AS (
	part_code character varying,
	version_num integer,
	quantity quantity,
	uom_code character varying,
	material_type material_kind
);


ALTER TYPE material_specification OWNER TO postgres;

--
-- TOC entry 826 (class 1247 OID 36468)
-- Name: mbom_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE mbom_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	version_num integer,
	document_date date,
	curr_fsmt document_fsmt,
	document_type document_kind,
	material_spec material_specification
);


ALTER TYPE mbom_head OWNER TO postgres;

--
-- TOC entry 829 (class 1247 OID 36471)
-- Name: mbom_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE mbom_document AS (
	head mbom_head,
	body material_specification[]
);


ALTER TYPE mbom_document OWNER TO postgres;

--
-- TOC entry 832 (class 1247 OID 36474)
-- Name: operation_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE operation_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	version_num integer,
	document_date date,
	curr_fsmt document_fsmt,
	document_type document_kind,
	producible_spec material_specification
);


ALTER TYPE operation_head OWNER TO postgres;

--
-- TOC entry 835 (class 1247 OID 36477)
-- Name: personnel_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE personnel_specification AS (
	personnel_code character varying,
	version_num integer,
	rationing_qty integer,
	batch_qty integer,
	worker_qty integer,
	setup_time interval,
	piece_time interval
);


ALTER TYPE personnel_specification OWNER TO postgres;

--
-- TOC entry 838 (class 1247 OID 36480)
-- Name: tooling_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE tooling_specification AS (
	tooling_code character varying,
	version_num integer,
	quantity quantity,
	uom_code character varying
);


ALTER TYPE tooling_specification OWNER TO postgres;

--
-- TOC entry 841 (class 1247 OID 36483)
-- Name: operation_segment; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE operation_segment AS (
	gid uuid,
	operation_code character varying,
	consumable_spec consumable_specification[],
	personnel_spec personnel_specification[],
	equipmet_spec equipment_specification[],
	tooling_spec tooling_specification[]
);


ALTER TYPE operation_segment OWNER TO postgres;

--
-- TOC entry 844 (class 1247 OID 36486)
-- Name: operation_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE operation_document AS (
	head operation_head,
	body operation_segment[],
	deps dependency_specification[]
);


ALTER TYPE operation_document OWNER TO postgres;

--
-- TOC entry 347 (class 1255 OID 36487)
-- Name: assemly_to_consumable(component_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION assemly_to_consumable(__component component_specification) RETURNS material_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __component.part_code,
    __component.version_num,
    __component.quantity,
    __component.uom_code,
    'CONSUMABLE'::common.material_kind
  )::common.material_specification;

END;
$$;


ALTER FUNCTION common.assemly_to_consumable(__component component_specification) OWNER TO postgres;

--
-- TOC entry 348 (class 1255 OID 36488)
-- Name: assemly_to_producible(component_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION assemly_to_producible(__component component_specification) RETURNS material_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __component.part_code,
    __component.version_num,
    __component.quantity,
    __component.uom_code,
    'PRODUCIBLE'::common.material_kind
  )::common.material_specification;

END;
$$;


ALTER FUNCTION common.assemly_to_producible(__component component_specification) OWNER TO postgres;

--
-- TOC entry 349 (class 1255 OID 36489)
-- Name: buyable_to_consumable(component_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION buyable_to_consumable(__component component_specification) RETURNS material_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __component.part_code,
    __component.version_num,
    __component.quantity,
    __component.uom_code,
    'CONSUMABLE'::common.material_kind
  )::common.material_specification;

END;
$$;


ALTER FUNCTION common.buyable_to_consumable(__component component_specification) OWNER TO postgres;

--
-- TOC entry 350 (class 1255 OID 36490)
-- Name: buyable_to_primal(component_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION buyable_to_primal(__component component_specification) RETURNS material_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __component.part_code,
    __component.version_num,
    __component.quantity,
    __component.uom_code,
    'PRIMAL'::common.material_kind
  )::common.material_specification;

END;
$$;


ALTER FUNCTION common.buyable_to_primal(__component component_specification) OWNER TO postgres;

--
-- TOC entry 351 (class 1255 OID 36491)
-- Name: consumable_to_assembly(material_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION consumable_to_assembly(__material material_specification) RETURNS component_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __material.part_code,
    __material.version_num,
    __material.quantity,
    __material.uom_code,
    'ASSEMBLY'::common.component_kind
  )::common.component_specification;

END;
$$;


ALTER FUNCTION common.consumable_to_assembly(__material material_specification) OWNER TO postgres;

--
-- TOC entry 352 (class 1255 OID 36492)
-- Name: consumable_to_buyable(material_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION consumable_to_buyable(__material material_specification) RETURNS component_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __material.part_code,
    __material.version_num,
    __material.quantity,
    __material.uom_code,
    'BUYABLE'::common.component_kind
  )::common.component_specification;

END;
$$;


ALTER FUNCTION common.consumable_to_buyable(__material material_specification) OWNER TO postgres;

--
-- TOC entry 353 (class 1255 OID 36493)
-- Name: consumable_to_part(material_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION consumable_to_part(__material material_specification) RETURNS component_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __material.part_code,
    __material.version_num,
    __material.quantity,
    __material.uom_code,
    'PART'::common.component_kind
  )::common.component_specification;

END;
$$;


ALTER FUNCTION common.consumable_to_part(__material material_specification) OWNER TO postgres;

--
-- TOC entry 354 (class 1255 OID 36494)
-- Name: disallow_editing_of_committed_document_head(); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION disallow_editing_of_committed_document_head() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
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
  $$;


ALTER FUNCTION common.disallow_editing_of_committed_document_head() OWNER TO postgres;

--
-- TOC entry 355 (class 1255 OID 36495)
-- Name: part_to_consumable(component_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION part_to_consumable(__component component_specification) RETURNS material_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __component.part_code,
    __component.version_num,
    __component.quantity,
    __component.uom_code,
    'CONSUMABLE'::common.material_kind
  )::common.material_specification;

END;
$$;


ALTER FUNCTION common.part_to_consumable(__component component_specification) OWNER TO postgres;

--
-- TOC entry 356 (class 1255 OID 36496)
-- Name: part_to_producible(component_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION part_to_producible(__component component_specification) RETURNS material_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __component.part_code,
    __component.version_num,
    __component.quantity,
    __component.uom_code,
    'PRODUCIBLE'::common.material_kind
  )::common.material_specification;

END;
$$;


ALTER FUNCTION common.part_to_producible(__component component_specification) OWNER TO postgres;

--
-- TOC entry 357 (class 1255 OID 36497)
-- Name: primal_to_buyable(material_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION primal_to_buyable(__material material_specification) RETURNS component_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __material.part_code,
    __material.version_num,
    __material.quantity,
    __material.uom_code,
    'BUYABLE'::common.component_kind
  )::common.component_specification;

END;
$$;


ALTER FUNCTION common.primal_to_buyable(__material material_specification) OWNER TO postgres;

--
-- TOC entry 358 (class 1255 OID 36498)
-- Name: producible_to_assembly(material_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION producible_to_assembly(__material material_specification) RETURNS component_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __material.part_code,
    __material.version_num,
    __material.quantity,
    __material.uom_code,
    'ASSEMBLY'::common.component_kind
  )::common.component_specification;

END;
$$;


ALTER FUNCTION common.producible_to_assembly(__material material_specification) OWNER TO postgres;

--
-- TOC entry 359 (class 1255 OID 36499)
-- Name: producible_to_part(material_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION producible_to_part(__material material_specification) RETURNS component_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __material.part_code,
    __material.version_num,
    __material.quantity,
    __material.uom_code,
    'PART'::common.component_kind
  )::common.component_specification;

END;
$$;


ALTER FUNCTION common.producible_to_part(__material material_specification) OWNER TO postgres;

--
-- TOC entry 360 (class 1255 OID 36500)
-- Name: set_prev_doc_fsmt(); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION set_prev_doc_fsmt() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
    BEGIN
      IF (TG_OP = 'UPDATE' AND NEW.curr_fsmt != OLD.curr_fsmt) THEN
        NEW.prev_fsmt := OLD.curr_fsmt;
        NEW.prev_fsmt_date := OLD.curr_fsmt_date;
        NEW.curr_fsmt_date := now();
      END IF;
      RETURN NEW;
    END;
    $$;


ALTER FUNCTION common.set_prev_doc_fsmt() OWNER TO postgres;

SET search_path = ebom, pg_catalog;

--
-- TOC entry 361 (class 1255 OID 36501)
-- Name: destroy(bigint); Type: FUNCTION; Schema: ebom; Owner: postgres
--

CREATE FUNCTION destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM ebom.definition WHERE id = __document_id;
END;
$$;


ALTER FUNCTION ebom.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 362 (class 1255 OID 36502)
-- Name: get_body(bigint); Type: FUNCTION; Schema: ebom; Owner: postgres
--

CREATE FUNCTION get_body(__document_id bigint) RETURNS common.component_specification[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY(
      SELECT
        (component.part_code,
        component.version_num,
        component.quantity,
        'pcs',
        component.component_type)::common.component_specification
      FROM
        ebom.component
      WHERE
        component.definition_id = __document_id
    );
END
$$;


ALTER FUNCTION ebom.get_body(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 363 (class 1255 OID 36503)
-- Name: get_gid_by_id(bigint); Type: FUNCTION; Schema: ebom; Owner: postgres
--

CREATE FUNCTION get_gid_by_id(__document_id bigint) RETURNS uuid
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN gid
    FROM
      ebom.definition
    WHERE
      id = __document_id;
END;
$$;


ALTER FUNCTION ebom.get_gid_by_id(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 364 (class 1255 OID 36504)
-- Name: get_head(bigint); Type: FUNCTION; Schema: ebom; Owner: postgres
--

CREATE FUNCTION get_head(__document_id bigint) RETURNS common.ebom_head
    LANGUAGE plpgsql
    AS $$
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
$$;


ALTER FUNCTION ebom.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 365 (class 1255 OID 36505)
-- Name: get_id_by_gid(uuid); Type: FUNCTION; Schema: ebom; Owner: postgres
--

CREATE FUNCTION get_id_by_gid(__document_gid uuid) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN id
    FROM
      ebom.definition
    WHERE
      gid = __document_gid;
END;
$$;


ALTER FUNCTION ebom.get_id_by_gid(__document_gid uuid) OWNER TO postgres;

--
-- TOC entry 366 (class 1255 OID 36506)
-- Name: init(common.ebom_head, common.component_specification[]); Type: FUNCTION; Schema: ebom; Owner: postgres
--

CREATE FUNCTION init(__head common.ebom_head, __body common.component_specification[]) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
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

  IF (_max_version_num IS NULL) THEN
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
          quantity,
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
          quantity,
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
          quantity,
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
$$;


ALTER FUNCTION ebom.init(__head common.ebom_head, __body common.component_specification[]) OWNER TO postgres;

--
-- TOC entry 370 (class 1255 OID 36507)
-- Name: reinit(bigint, common.component_specification[]); Type: FUNCTION; Schema: ebom; Owner: postgres
--

CREATE FUNCTION reinit(__document_id bigint, __body common.component_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
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
          quantity,
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
          quantity,
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
          quantity,
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
$$;


ALTER FUNCTION ebom.reinit(__document_id bigint, __body common.component_specification[]) OWNER TO postgres;

SET search_path = mbom, pg_catalog;

--
-- TOC entry 371 (class 1255 OID 36508)
-- Name: destroy(bigint); Type: FUNCTION; Schema: mbom; Owner: postgres
--

CREATE FUNCTION destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM mbom.definition WHERE id = __document_id;
END;
$$;


ALTER FUNCTION mbom.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 372 (class 1255 OID 36509)
-- Name: get_body(bigint); Type: FUNCTION; Schema: mbom; Owner: postgres
--

CREATE FUNCTION get_body(__document_id bigint) RETURNS common.material_specification[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY(
      SELECT
        (material.part_code,
        material.version_num,
        material.quantity,
        'pcs',
        material.material_type)::common.material_specification
      FROM
        mbom.material
      WHERE
        material.definition_id = __document_id
    );
END
$$;


ALTER FUNCTION mbom.get_body(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 373 (class 1255 OID 36510)
-- Name: get_gid_by_id(bigint); Type: FUNCTION; Schema: mbom; Owner: postgres
--

CREATE FUNCTION get_gid_by_id(__document_id bigint) RETURNS uuid
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN gid
    FROM
      mbom.definition
    WHERE
      id = __document_id;
END;
$$;


ALTER FUNCTION mbom.get_gid_by_id(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 374 (class 1255 OID 36511)
-- Name: get_head(bigint); Type: FUNCTION; Schema: mbom; Owner: postgres
--

CREATE FUNCTION get_head(__document_id bigint) RETURNS common.mbom_head
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN
    (definition.id,
    definition.gid,
    definition.display_name,
    definition.version_num,
    definition.published_date,
    definition.curr_fsmt,
    'MBOM'::common.document_kind,
    (information.part_code, information.version_num, 1, 'pcs', 'PRODUCIBLE')::common.material_specification
    )::common.mbom_head
  FROM
    mbom.definition,
    mbom.information
  WHERE
    information.id = definition.information_id AND
    definition.id = __document_id;
END;
$$;


ALTER FUNCTION mbom.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 375 (class 1255 OID 36512)
-- Name: get_id_by_gid(uuid); Type: FUNCTION; Schema: mbom; Owner: postgres
--

CREATE FUNCTION get_id_by_gid(__document_gid uuid) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN id
    FROM
      mbom.definition
    WHERE
      gid = __document_gid;
END;
$$;


ALTER FUNCTION mbom.get_id_by_gid(__document_gid uuid) OWNER TO postgres;

--
-- TOC entry 376 (class 1255 OID 36513)
-- Name: init(common.mbom_head, common.material_specification[]); Type: FUNCTION; Schema: mbom; Owner: postgres
--

CREATE FUNCTION init(__head common.mbom_head, __body common.material_specification[]) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.material_specification;
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
    mbom.information, 
    mbom.definition
  WHERE 
    information.id = definition.information_id AND
    information.part_code = (__head.material_spec).part_code AND 
    information.version_num = (__head.material_spec).version_num
  INTO
    _max_version_num;

  IF (_max_version_num IS NULL) THEN
    _max_version_num := 0;

    INSERT INTO
      mbom.information (
        id,
        display_name,
        published_date,
        part_code,
        version_num)
    VALUES (
      DEFAULT,
      __head.display_name,
      __head.document_date,
      (__head.material_spec).part_code,
      (__head.material_spec).version_num)
    RETURNING id INTO _information_id;
  ELSE
    SELECT
      id
    FROM
      mbom.information
    WHERE
      information.part_code = (__head.material_spec).part_code AND 
      information.version_num = (__head.material_spec).version_num
    INTO
      _information_id;

  END IF;

  INSERT INTO
    mbom.definition (
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
    IF (_item.material_type = 'CONSUMABLE') THEN
      INSERT INTO
        mbom.consumable (
          definition_id,
          part_code,
          version_num,
          quantity,
          uom_code,
          material_type)
      VALUES (
        _definition_id,
        _item.part_code,
        _item.version_num,
        _item.quantity,
        _item.uom_code,
        _item.material_type);
    ELSIF (_item.material_type = 'PRIMAL') THEN
      INSERT INTO
        mbom.primal (
          definition_id,
          part_code,
          version_num,
          quantity,
          uom_code,
          material_type)
      VALUES (
        _definition_id,
        _item.part_code,
        _item.version_num,
        _item.quantity,
        _item.uom_code,
        _item.material_type);
    ELSE
      RAISE '% unknown material_type', _item;
    END IF;
  END LOOP;

  RETURN _definition_id;

END;
$$;


ALTER FUNCTION mbom.init(__head common.mbom_head, __body common.material_specification[]) OWNER TO postgres;

--
-- TOC entry 377 (class 1255 OID 36514)
-- Name: reinit(bigint, common.material_specification[]); Type: FUNCTION; Schema: mbom; Owner: postgres
--

CREATE FUNCTION reinit(__document_id bigint, __body common.material_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.material_specification;
BEGIN

  DELETE FROM
    mbom.material
  WHERE
    definition_id = __document_id;

  FOREACH _item IN
    ARRAY __body
  LOOP
    IF (_item.material_type = 'CONSUMABLE') THEN
      INSERT INTO
        mbom.consumable (
          definition_id,
          part_code,
          version_num,
          quantity,
          uom_code,
          material_type)
      VALUES (
        __document_id,
        _item.part_code,
        _item.version_num,
        _item.quantity,
        _item.uom_code,
        _item.material_type);
    ELSIF (_item.material_type = 'PRIMAL') THEN
      INSERT INTO
        mbom.primal (
          definition_id,
          part_code,
          version_num,
          quantity,
          uom_code,
          material_type)
      VALUES (
        __document_id,
        _item.part_code,
        _item.version_num,
        _item.quantity,
        _item.uom_code,
        _item.material_type);
    ELSE
      RAISE '% unknown material_type', _item;
    END IF;
  END LOOP;

END;
$$;


ALTER FUNCTION mbom.reinit(__document_id bigint, __body common.material_specification[]) OWNER TO postgres;

SET search_path = operation, pg_catalog;

--
-- TOC entry 411 (class 1255 OID 37068)
-- Name: destroy(bigint); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM operation.definition WHERE id = __document_id;
END;
$$;


ALTER FUNCTION operation.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 413 (class 1255 OID 37076)
-- Name: get_deps(bigint); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION get_deps(__document_id bigint) RETURNS common.dependency_specification[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY(
      SELECT 
        (dependency.ancestor, 
        dependency.descendant, 
        dependency.depth)::common.dependency_specification
      FROM 
        operation.dependency, 
        operation.segment
      WHERE 
        segment.id = dependency.ancestor AND
        segment.definition_id = __document_id
    );
END
$$;


ALTER FUNCTION operation.get_deps(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 409 (class 1255 OID 37066)
-- Name: get_gid_by_id(bigint); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION get_gid_by_id(__document_id bigint) RETURNS uuid
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN gid
    FROM
      operation.definition
    WHERE
      id = __document_id;
END;
$$;


ALTER FUNCTION operation.get_gid_by_id(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 412 (class 1255 OID 37074)
-- Name: get_head(bigint); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION get_head(__document_id bigint) RETURNS common.operation_head
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN
    (definition.id,
    definition.gid,
    definition.display_name,
    definition.version_num,
    definition.published_date,
    definition.curr_fsmt,
    'OPERATION'::common.document_kind,
      (producible.part_code, 
      producible.version_num, 
      producible.quantity, 
      producible.uom_code, 
      producible.material_type)::common.material_specification
    )::common.operation_head
  FROM
    operation.information, 
    operation.definition, 
    operation.producible
  WHERE
    information.id = producible.information_id AND
    information.id = definition.information_id AND
    definition.id = __document_id;
END;
$$;


ALTER FUNCTION operation.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 410 (class 1255 OID 37067)
-- Name: get_id_by_gid(uuid); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION get_id_by_gid(__document_gid uuid) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN id
    FROM
      operation.definition
    WHERE
      gid = __document_gid;
END;
$$;


ALTER FUNCTION operation.get_id_by_gid(__document_gid uuid) OWNER TO postgres;

SET search_path = pgunit, pg_catalog;

--
-- TOC entry 378 (class 1255 OID 36515)
-- Name: assert_array_equals(anyelement, anyelement, character varying); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION assert_array_equals(_expected anyelement, _actual anyelement, _message character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF _expected IS NULL THEN
    RAISE EXCEPTION '#incorrect_expected_value NULL';
  END IF;
  IF NOT (_expected::varchar[] @> _actual::varchar[] AND _actual::varchar[] @> _expected::varchar[])
     OR _actual IS NULL
     OR (array_dims(_expected) <> array_dims(_actual))
  THEN
    RAISE EXCEPTION E'#assert_array_equals\n%\nExpected: %\nActual: %', _message, _expected, _actual;
  END IF;
END;
$$;


ALTER FUNCTION pgunit.assert_array_equals(_expected anyelement, _actual anyelement, _message character varying) OWNER TO postgres;

--
-- TOC entry 379 (class 1255 OID 36516)
-- Name: assert_equals(anyelement, anyelement, character varying); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION assert_equals(_expected anyelement, _actual anyelement, _message character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF _expected IS NULL THEN
    RAISE EXCEPTION '#incorrect_expected_value NULL';
  END IF;
  IF _expected IS DISTINCT FROM _actual THEN
    RAISE EXCEPTION E'#assert_equals\n%\nExpected: %\nActual: %', _message, _expected, _actual;
  END IF;
END;
$$;


ALTER FUNCTION pgunit.assert_equals(_expected anyelement, _actual anyelement, _message character varying) OWNER TO postgres;

--
-- TOC entry 380 (class 1255 OID 36517)
-- Name: assert_false(boolean, character varying); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION assert_false(_value boolean, _message character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF _value OR _value IS NULL THEN
    RAISE EXCEPTION E'#assert_false\n%\nValue: %', _message, _value;
  END IF;
END;
$$;


ALTER FUNCTION pgunit.assert_false(_value boolean, _message character varying) OWNER TO postgres;

--
-- TOC entry 367 (class 1255 OID 36518)
-- Name: assert_not_equals(anyelement, anyelement, character varying); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION assert_not_equals(_expected anyelement, _actual anyelement, _message character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF _expected IS NULL THEN
    RAISE EXCEPTION '#incorrect_expected_value NULL';
  END IF;
  IF _expected IS NOT DISTINCT FROM _actual THEN
    RAISE EXCEPTION E'#assert_not_equals\n%\nExpected: %\nActual: %', _message, _expected, _actual;
  END IF;
END;
$$;


ALTER FUNCTION pgunit.assert_not_equals(_expected anyelement, _actual anyelement, _message character varying) OWNER TO postgres;

--
-- TOC entry 368 (class 1255 OID 36519)
-- Name: assert_not_null(anyelement, character varying); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION assert_not_null(_value anyelement, _message character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF _value IS NULL THEN
    RAISE EXCEPTION E'#assert_not_null\n%', _message;
  END IF;
END;
$$;


ALTER FUNCTION pgunit.assert_not_null(_value anyelement, _message character varying) OWNER TO postgres;

--
-- TOC entry 369 (class 1255 OID 36520)
-- Name: assert_null(anyelement, character varying); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION assert_null(_value anyelement, _message character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF _value IS NOT NULL THEN
    RAISE EXCEPTION E'#assert_null\n%\nValue: %', _message, _value;
  END IF;
END;
$$;


ALTER FUNCTION pgunit.assert_null(_value anyelement, _message character varying) OWNER TO postgres;

--
-- TOC entry 381 (class 1255 OID 36521)
-- Name: assert_true(boolean, character varying); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION assert_true(_value boolean, _message character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF NOT _value OR _value IS NULL THEN
    RAISE EXCEPTION E'#assert_true\n%\nValue: %', _message, _value;
  END IF;
END;
$$;


ALTER FUNCTION pgunit.assert_true(_value boolean, _message character varying) OWNER TO postgres;

--
-- TOC entry 382 (class 1255 OID 36522)
-- Name: fail(character varying); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION fail(_message character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  RAISE EXCEPTION E'#fail\n%', _message;
END;
$$;


ALTER FUNCTION pgunit.fail(_message character varying) OWNER TO postgres;

--
-- TOC entry 383 (class 1255 OID 36523)
-- Name: run_test(character varying); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION run_test(_sp character varying) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
  EXECUTE 'SELECT ' || _sp;
  RAISE EXCEPTION '#OK';
EXCEPTION
  WHEN others THEN
    RETURN SQLERRM;
END;
$$;


ALTER FUNCTION pgunit.run_test(_sp character varying) OWNER TO postgres;

--
-- TOC entry 384 (class 1255 OID 36524)
-- Name: test_assert_array_equals(); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION test_assert_array_equals() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _message  varchar;
BEGIN
  _message := 'qazwsxedc';

  -- EMPTY ARRAYS

  PERFORM pgunit.assert_array_equals('{}'::varchar[], '{}'::varchar[], _message);

  BEGIN
    PERFORM pgunit.assert_array_equals('{}'::varchar[], array['1']::varchar[], _message);
    RAISE EXCEPTION 'Epic fail. Line: 18';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_array_equals\n%' THEN
        RAISE;
      END IF;
  END;

  BEGIN
    PERFORM pgunit.assert_array_equals(array['1']::varchar[], '{}'::varchar[], _message);
    RAISE EXCEPTION 'Epic fail. Line: 28';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_array_equals\n%' THEN
        RAISE;
      END IF;
  END;

  BEGIN
    PERFORM pgunit.assert_array_equals(array['1']::varchar[], NULL::varchar[], _message);
    RAISE EXCEPTION 'Epic fail. Line: 38';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_array_equals\n%' THEN
        RAISE;
      END IF;
  END;

  BEGIN
    PERFORM pgunit.assert_array_equals('{}'::varchar[], NULL::varchar[], _message);
    RAISE EXCEPTION 'Epic fail. Line: 48';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_array_equals\n%' THEN
        RAISE;
      END IF;
  END;

  BEGIN
    PERFORM pgunit.assert_array_equals(NULL::varchar[], array['1']::varchar[], _message);
    RAISE EXCEPTION 'Epic fail. Line: 58';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#incorrect_expected_value %' THEN
        RAISE;
      END IF;
  END;

  -- UNARY ARRAY

  PERFORM pgunit.assert_array_equals(array['1']::varchar[], array['1']::varchar[], _message);

  BEGIN
    PERFORM pgunit.assert_array_equals(array['2']::varchar[], array['1']::varchar[], _message);
    RAISE EXCEPTION 'Epic fail. Line: 72';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_array_equals\n%' THEN
        RAISE;
      END IF;
  END;

  -- ARRAYS

  PERFORM pgunit.assert_array_equals(array['1', '2']::varchar[], array['1', '2']::varchar[], _message);
  PERFORM pgunit.assert_array_equals(array['2', '1']::varchar[], array['1', '2']::varchar[], _message);
  PERFORM pgunit.assert_array_equals(array['1', '2', '3']::varchar[], array['1', '3', '2']::varchar[], _message);


  BEGIN
    PERFORM pgunit.assert_array_equals(array['1', '2', '3']::varchar[], array['1', '3', '2', '2']::varchar[], _message);
    RAISE EXCEPTION 'Epic fail. Line: 77';
  EXCEPTION
  WHEN others THEN
    IF SQLERRM NOT ILIKE E'#assert_array_equals\n%' THEN
      RAISE;
    END IF;
  END;


  BEGIN
    PERFORM pgunit.assert_array_equals(array['1', '2', '3']::varchar[], array['1', '2', '2']::varchar[], _message);
    RAISE EXCEPTION 'Epic fail. Line: 89';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_array_equals\n%' THEN
        RAISE;
      END IF;
  END;

  BEGIN
    PERFORM pgunit.assert_array_equals(array['1', '2', '3']::varchar[], array['4', '5', '6']::varchar[], _message);
    RAISE EXCEPTION 'Epic fail. Line: 99';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_array_equals\n%' THEN
        RAISE;
      END IF;
  END;
END;
$$;


ALTER FUNCTION pgunit.test_assert_array_equals() OWNER TO postgres;

--
-- TOC entry 385 (class 1255 OID 36525)
-- Name: test_assert_equals(); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION test_assert_equals() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE

  _message  varchar;
BEGIN
  _message := 'qazwsxedc';

  -- INT

  PERFORM pgunit.assert_equals(1::int, 1::int, _message);

  BEGIN
    PERFORM pgunit.assert_equals(1::int, 2::int, _message);
    RAISE EXCEPTION 'Epic fail. Line: 18';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_equals\n%' THEN
        RAISE;
      END IF;
  END;

  BEGIN
    PERFORM pgunit.assert_equals(1::int, NULL::int, _message);
    RAISE EXCEPTION 'Epic fail. Line: 28';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_equals\n%' THEN
        RAISE;
      END IF;
  END;

  -- INT8

  PERFORM pgunit.assert_equals(1::int8, 1::int8, _message);

  BEGIN
    PERFORM pgunit.assert_equals(1::int8, 2::int8, _message);
    RAISE EXCEPTION 'Epic fail. Line: 42';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_equals\n%' THEN
        RAISE;
      END IF;
  END;

  -- NUMERIC

  PERFORM pgunit.assert_equals(1.1::numeric, 1.1::numeric, _message);

  BEGIN
    PERFORM pgunit.assert_equals(1.1::numeric, 1.2::numeric, _message);
    RAISE EXCEPTION 'Epic fail. Line: 56';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_equals\n%' THEN
        RAISE;
      END IF;
  END;

  -- VARCHAR

  PERFORM pgunit.assert_equals('1.1'::varchar, '1.1'::varchar, _message);

  BEGIN
    PERFORM pgunit.assert_equals('1.1'::varchar, '1.1 '::varchar, _message);
    RAISE EXCEPTION 'Epic fail. Line: 70';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_equals\n%' THEN
        RAISE;
      END IF;
  END;

  -- TEXT

  PERFORM pgunit.assert_equals('1.1'::text, '1.1'::text, _message);

  BEGIN
    PERFORM pgunit.assert_equals('1.1'::text, '1.1 '::text, _message);
    RAISE EXCEPTION 'Epic fail. Line: 84';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_equals\n%' THEN
        RAISE;
      END IF;
  END;
END;
$$;


ALTER FUNCTION pgunit.test_assert_equals() OWNER TO postgres;

--
-- TOC entry 386 (class 1255 OID 36526)
-- Name: test_assert_false(); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION test_assert_false() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE

  _message  varchar;
BEGIN
  _message := 'qazwsxedc';

  PERFORM pgunit.assert_false(False, _message);

  BEGIN
    PERFORM pgunit.assert_false(True, _message);
    RAISE EXCEPTION 'Epic fail. Line: 16';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_false\n%' THEN
        RAISE;
      END IF;
  END;

  BEGIN
    PERFORM pgunit.assert_false(NULL::boolean, _message);
    RAISE EXCEPTION 'Epic fail. Line: 26';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_false\n%' THEN
        RAISE;
      END IF;
  END;

END;
$$;


ALTER FUNCTION pgunit.test_assert_false() OWNER TO postgres;

--
-- TOC entry 387 (class 1255 OID 36527)
-- Name: test_assert_not_null(); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION test_assert_not_null() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE

  _message  varchar;
BEGIN
  _message := 'qazwsxedc';

  -- INT4

  PERFORM pgunit.assert_not_null(1::int4, _message);

  BEGIN
    PERFORM pgunit.assert_not_null(NULL::int4, _message);
    RAISE EXCEPTION 'Epic fail. Line: 18';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_not_null\n%' THEN
        RAISE;
      END IF;
  END;

  -- INT8

  PERFORM pgunit.assert_not_null(1::int8, _message);

  BEGIN
    PERFORM pgunit.assert_not_null(NULL::int8, _message);
    RAISE EXCEPTION 'Epic fail. Line: 32';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_not_null\n%' THEN
        RAISE;
      END IF;
  END;

  -- NUMERIC

  PERFORM pgunit.assert_not_null(1.1::numeric, _message);

  BEGIN
    PERFORM pgunit.assert_not_null(NULL::numeric, _message);
    RAISE EXCEPTION 'Epic fail. Line: 46';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_not_null\n%' THEN
        RAISE;
      END IF;
  END;

  -- VARCHAR

  PERFORM pgunit.assert_not_null('1.1'::varchar, _message);

  BEGIN
    PERFORM pgunit.assert_not_null(NULL::varchar, _message);
    RAISE EXCEPTION 'Epic fail. Line: 60';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_not_null\n%' THEN
        RAISE;
      END IF;
  END;

  -- TEXT

  PERFORM pgunit.assert_not_null('1.1'::text, _message);

  BEGIN
    PERFORM pgunit.assert_not_null(NULL::text, _message);
    RAISE EXCEPTION 'Epic fail. Line: 74';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_not_null\n%' THEN
        RAISE;
      END IF;
  END;
END;
$$;


ALTER FUNCTION pgunit.test_assert_not_null() OWNER TO postgres;

--
-- TOC entry 388 (class 1255 OID 36528)
-- Name: test_assert_null(); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION test_assert_null() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE

  _message  varchar;
BEGIN
  _message := 'qazwsxedc';

  -- INT4

  PERFORM pgunit.assert_null(NULL::int4, _message);

  BEGIN
    PERFORM pgunit.assert_null(1::int4, _message);
    RAISE EXCEPTION 'Epic fail. Line: 18';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_null\n%' THEN
        RAISE;
      END IF;
  END;

  -- INT8

  PERFORM pgunit.assert_null(NULL::int8, _message);


  BEGIN
    PERFORM pgunit.assert_null(1::int8, _message);
    RAISE EXCEPTION 'Epic fail. Line: 33';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_null\n%' THEN
        RAISE;
      END IF;
  END;

  -- NUMERIC

  PERFORM pgunit.assert_null(NULL::numeric, _message);

  BEGIN
    PERFORM pgunit.assert_null(1.1::numeric, _message);
    RAISE EXCEPTION 'Epic fail. Line: 47';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_null\n%' THEN
        RAISE;
      END IF;
  END;

  -- VARCHAR

  PERFORM pgunit.assert_null(NULL::varchar, _message);

  BEGIN
    PERFORM pgunit.assert_null('1.1'::varchar, _message);
    RAISE EXCEPTION 'Epic fail. Line: 61';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_null\n%' THEN
        RAISE;
      END IF;
  END;

  -- TEXT

  PERFORM pgunit.assert_null(NULL::text, _message);

  BEGIN
    PERFORM pgunit.assert_null('1.1'::text, _message);
    RAISE EXCEPTION 'Epic fail. Line: 75';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_null\n%' THEN
        RAISE;
      END IF;
  END;
END;
$$;


ALTER FUNCTION pgunit.test_assert_null() OWNER TO postgres;

--
-- TOC entry 389 (class 1255 OID 36529)
-- Name: test_assert_true(); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION test_assert_true() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _message  varchar;
BEGIN
  _message := 'qazwsxedc';

  PERFORM pgunit.assert_true(True, _message);

  BEGIN
    PERFORM pgunit.assert_true(False, _message);
    RAISE EXCEPTION 'Epic fail. Line: 16';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_true\n%' THEN
        RAISE;
      END IF;
  END;

  BEGIN
    PERFORM pgunit.assert_true(NULL::boolean, _message);
    RAISE EXCEPTION 'Epic fail. Line: 26';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#assert_true\n%' THEN
        RAISE;
      END IF;
  END;
END;
$$;


ALTER FUNCTION pgunit.test_assert_true() OWNER TO postgres;

--
-- TOC entry 390 (class 1255 OID 36530)
-- Name: test_fail(); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION test_fail() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _message  text;
BEGIN
  _message := 'qazwxedc';
  BEGIN
    PERFORM pgunit.fail(_message);
    RAISE EXCEPTION 'Epic fail. Line: 14';
  EXCEPTION
    WHEN others THEN
      IF SQLERRM NOT ILIKE E'#fail\n%' THEN
        RAISE;
      END IF;
  END;
END;
$$;


ALTER FUNCTION pgunit.test_fail() OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 391 (class 1255 OID 36531)
-- Name: _reset_data(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION _reset_data() RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  /*
  SELECT 'TRUNCATE TABLE ' || table_schema || '.' ||table_name || ' CASCADE;'
  FROM information_schema.tables
  WHERE table_schema NOT IN ('pg_catalog', 'information_schema', 'public', 'tests', 'common')
  ORDER BY table_schema,table_name;
  */
  TRUNCATE TABLE component.assembly CASCADE;
  TRUNCATE TABLE component.buyable CASCADE;
  TRUNCATE TABLE component.information CASCADE;
  TRUNCATE TABLE component.part CASCADE;
  TRUNCATE TABLE ebom.assembly CASCADE;
  TRUNCATE TABLE ebom.buyable CASCADE;
  TRUNCATE TABLE ebom.component CASCADE;
  TRUNCATE TABLE ebom.definition CASCADE;
  TRUNCATE TABLE ebom.information CASCADE;
  TRUNCATE TABLE ebom.part CASCADE;

  /*SELECT 'ALTER SEQUENCE ' || sequence_schema || '.' || sequence_name || ' RESTART WITH 1;'
  FROM information_schema.sequences
  WHERE sequence_catalog = 'wms' AND sequence_schema != 'common'
  ORDER by sequence_schema, sequence_name;*/
  ALTER SEQUENCE ebom.definition_id_seq RESTART WITH 1;
  ALTER SEQUENCE ebom.information_id_seq RESTART WITH 1;


END;
$$;


ALTER FUNCTION public._reset_data() OWNER TO postgres;

SET search_path = tests, pg_catalog;

--
-- TOC entry 392 (class 1255 OID 36532)
-- Name: __ebom__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __ebom__destroy() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.ebom_head;
BEGIN
  
  RAISE DEBUG '#trace Check __ebom__destroy()';

  INSERT INTO ebom.information VALUES (101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23');
  INSERT INTO ebom.definition VALUES (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101);
  INSERT INTO ebom.definition VALUES (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101);
  INSERT INTO ebom.definition VALUES (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101);

  PERFORM ebom.destroy(201); -- + add not allowed delete test
  
  _head := ebom.get_head(201);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

  _head := ebom.get_head(203);
  PERFORM pgunit.assert_not_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__ebom__destroy() OWNER TO postgres;

--
-- TOC entry 393 (class 1255 OID 36533)
-- Name: __ebom__get_body(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __ebom__get_body() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _body common.component_specification[];
  _test_body CONSTANT common.component_specification[] := ARRAY[('72.01.009-001', 1, 2.0000, 'pcs', 'PART'), ('80.31.050-001', 1, 1.0000, 'pcs', 'ASSEMBLY')]::common.component_specification[];
BEGIN
  
  RAISE DEBUG '#trace Check __ebom__get_body()';

  INSERT INTO ebom.information VALUES (101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23');
  INSERT INTO ebom.definition VALUES (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101);
  INSERT INTO ebom.definition VALUES (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101);
  INSERT INTO ebom.definition VALUES (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101);

  INSERT INTO ebom.part VALUES (201, '72.01.009-001', 1, 2.0000, 'pcs', 'PART');
  INSERT INTO ebom.assembly VALUES (201, '80.31.050-001', 1, 1.0000, 'pcs', 'ASSEMBLY');
  INSERT INTO ebom.buyable VALUES (201, 'Гайка М12', 1, 1.0000, 'pcs', 'BUYABLE');

  INSERT INTO ebom.part VALUES (203, '72.01.009-001', 1, 2.0000, 'pcs', 'PART');
  INSERT INTO ebom.assembly VALUES (203, '80.31.050-001', 1, 1.0000, 'pcs', 'ASSEMBLY');


  _body := ebom.get_body(203);
  PERFORM pgunit.assert_array_equals(_test_body, _body, 'Incorrect _body value');

END;
$$;


ALTER FUNCTION tests.__ebom__get_body() OWNER TO postgres;

--
-- TOC entry 394 (class 1255 OID 36534)
-- Name: __ebom__get_gid_by_id(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __ebom__get_gid_by_id() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_id CONSTANT bigint := 202;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a';
  _gid uuid;
BEGIN
  
  RAISE DEBUG '#trace Check __ebom__get_gid_by_id()';

  INSERT INTO ebom.information VALUES (101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23');
  INSERT INTO ebom.definition VALUES (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101);
  INSERT INTO ebom.definition VALUES (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101);
  INSERT INTO ebom.definition VALUES (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101);

  _gid := ebom.get_gid_by_id(_test_id);
  PERFORM pgunit.assert_equals(_test_gid, _gid, 'Incorrect _gid value');

END;
$$;


ALTER FUNCTION tests.__ebom__get_gid_by_id() OWNER TO postgres;

--
-- TOC entry 395 (class 1255 OID 36535)
-- Name: __ebom__get_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __ebom__get_head() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.ebom_head;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a';
  _test_display_name CONSTANT character varying := '11с32п-50х40: definition';
  _test_document_date CONSTANT date := '2017-10-21'::date;
  _test_curr_fsmt CONSTANT common.document_fsmt := 'COMMITTED'::common.document_fsmt;
  _test_document_type CONSTANT common.document_kind := 'EBOM'::common.document_kind;
  _test_component_part_code CONSTANT character varying := '11.32.050-001';
  _test_component_version_num CONSTANT integer := 1;
BEGIN
  
  RAISE DEBUG '#trace Check __ebom__get_head()';

  INSERT INTO ebom.information VALUES (101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23');
  INSERT INTO ebom.definition VALUES (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-20', NULL, NULL, 'PROPOSED', '2017-10-20',101);
  INSERT INTO ebom.definition VALUES (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'COMMITTED', '2017-10-21',101);
  INSERT INTO ebom.definition VALUES (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-22', NULL, NULL, 'PROPOSED', '2017-10-22',101);

  _head := ebom.get_head(202);
  PERFORM pgunit.assert_equals(_test_gid, _head.gid, 'Incorrect gid value');
  PERFORM pgunit.assert_equals(_test_display_name, _head.display_name, 'Incorrect display_name value');
  PERFORM pgunit.assert_equals(_test_document_date, _head.document_date, 'Incorrect document_date value');
  PERFORM pgunit.assert_equals(_test_curr_fsmt, _head.curr_fsmt, 'Incorrect curr_fsmt value');
  PERFORM pgunit.assert_equals(_test_document_type, _head.document_type, 'Incorrect document_type value');
  PERFORM pgunit.assert_equals(_test_component_part_code, (_head.component_spec).part_code, 'Incorrect component_part_code value');
  PERFORM pgunit.assert_equals(_test_component_version_num, (_head.component_spec).version_num, 'Incorrect component_version_num value');

  _head := ebom.get_head(203);
  PERFORM pgunit.assert_not_equals(_test_gid, _head.gid, 'Incorrect gid value');
  
  _head := ebom.get_head(204);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__ebom__get_head() OWNER TO postgres;

--
-- TOC entry 396 (class 1255 OID 36536)
-- Name: __ebom__get_id_by_gid(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __ebom__get_id_by_gid() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_id CONSTANT bigint := 202;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a';
  _id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __ebom__get_id_by_gid()';

  INSERT INTO ebom.information VALUES (101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23');
  INSERT INTO ebom.definition VALUES (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101);
  INSERT INTO ebom.definition VALUES (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101);
  INSERT INTO ebom.definition VALUES (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101);

  _id := ebom.get_id_by_gid(_test_gid);
  PERFORM pgunit.assert_equals(_test_id, _id, 'Incorrect _id value');

END;
$$;


ALTER FUNCTION tests.__ebom__get_id_by_gid() OWNER TO postgres;

--
-- TOC entry 397 (class 1255 OID 36537)
-- Name: __ebom__init(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __ebom__init() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.ebom_head[] := ARRAY[(203,'9b2952fa-01d1-11e7-b440-d4bed939923a','11с32п-50х40: definition',3,'2017-10-21','PROPOSED','EBOM',('11.32.050-001',1,1.0000,'pcs','ASSEMBLY'))]::common.ebom_head[];
  _test_body CONSTANT common.component_specification[] := ARRAY[('80.31.050-001',1,1.0000,'pcs','ASSEMBLY'), ('72.01.009-001',1,2.0000,'pcs','PART')]::common.component_specification[];
  _head common.ebom_head;
  _body common.component_specification[];
  _document_id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __ebom__init()';
  
  _document_id := ebom.init(_test_head[1], _test_body);
  _head := ebom.get_head(_document_id);
  _body := ebom.get_body(_document_id);
  --PERFORM pgunit.assert_equals(_test_head[1], _head, 'Incorrect _head value');
  PERFORM pgunit.assert_array_equals(_test_body, _body, 'Incorrect _body value');


END;
$$;


ALTER FUNCTION tests.__ebom__init() OWNER TO postgres;

--
-- TOC entry 398 (class 1255 OID 36538)
-- Name: __ebom__reinit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __ebom__reinit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.ebom_head[] := ARRAY[(203,'9b2952fa-01d1-11e7-b440-d4bed939923a','11с32п-50х40: definition',3,'2017-10-21','PROPOSED','EBOM',('11.32.050-001',1,1.0000,'pcs','ASSEMBLY'))]::common.ebom_head[];
  _test_body_init CONSTANT common.component_specification[] := ARRAY[('80.31.050-001',1,1.0000,'pcs','ASSEMBLY'), ('72.01.009-001',1,2.0000,'pcs','PART')]::common.component_specification[];
  _test_body_reinit CONSTANT common.component_specification[] := ARRAY[('80.31.050-001',1,2.0000,'pcs','ASSEMBLY'), ('72.01.009-001',1,4.0000,'pcs','PART')]::common.component_specification[];
  _head common.ebom_head;
  _body common.component_specification[];
  _document_id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __ebom__reinit()';
  
  _document_id := ebom.init(_test_head[1], _test_body_init);
  PERFORM ebom.reinit(_document_id, _test_body_reinit);
  _head := ebom.get_head(_document_id);
  _body := ebom.get_body(_document_id);
  --PERFORM pgunit.assert_equals(_test_head[1], _head, 'Incorrect _head value');
  PERFORM pgunit.assert_array_equals(_test_body_reinit, _body, 'Incorrect _body value');


END;
$$;


ALTER FUNCTION tests.__ebom__reinit() OWNER TO postgres;

--
-- TOC entry 399 (class 1255 OID 36539)
-- Name: __mbom__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __mbom__destroy() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.mbom_head;
BEGIN
  
  RAISE DEBUG '#trace Check __mbom__destroy()';

  INSERT INTO mbom.information VALUES (101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23');
  INSERT INTO mbom.definition VALUES (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101);
  INSERT INTO mbom.definition VALUES (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101);
  INSERT INTO mbom.definition VALUES (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101);

  PERFORM mbom.destroy(201); -- + add not allowed delete test
  
  _head := mbom.get_head(201);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

  _head := mbom.get_head(203);
  PERFORM pgunit.assert_not_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__mbom__destroy() OWNER TO postgres;

--
-- TOC entry 400 (class 1255 OID 36540)
-- Name: __mbom__get_body(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __mbom__get_body() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _body common.material_specification[];
  _test_body CONSTANT common.material_specification[] := ARRAY[('72.01.009-001', 1, 2.0000, 'pcs', 'CONSUMABLE'), ('80.31.050-001', 1, 1.0000, 'pcs', 'CONSUMABLE')]::common.material_specification[];
BEGIN
  
  RAISE DEBUG '#trace Check __mbom__get_body()';

  INSERT INTO mbom.information VALUES (101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23');
  INSERT INTO mbom.definition VALUES (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101);
  INSERT INTO mbom.definition VALUES (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101);
  INSERT INTO mbom.definition VALUES (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101);

  INSERT INTO mbom.consumable VALUES (201, '72.01.009-001', 1, 2.0000, 'pcs', 'CONSUMABLE');
  INSERT INTO mbom.consumable VALUES (201, '80.31.050-001', 1, 1.0000, 'pcs', 'CONSUMABLE');

  INSERT INTO mbom.consumable VALUES (203, '72.01.009-001', 1, 2.0000, 'pcs', 'CONSUMABLE');
  INSERT INTO mbom.consumable VALUES (203, '80.31.050-001', 1, 1.0000, 'pcs', 'CONSUMABLE');


  _body := mbom.get_body(203);
  PERFORM pgunit.assert_array_equals(_test_body, _body, 'Incorrect _body value');

END;
$$;


ALTER FUNCTION tests.__mbom__get_body() OWNER TO postgres;

--
-- TOC entry 401 (class 1255 OID 36541)
-- Name: __mbom__get_gid_by_id(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __mbom__get_gid_by_id() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_id CONSTANT bigint := 202;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a';
  _gid uuid;
BEGIN
  
  RAISE DEBUG '#trace Check __mbom__get_gid_by_id()';

  INSERT INTO mbom.information VALUES (101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23');
  INSERT INTO mbom.definition VALUES (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101);
  INSERT INTO mbom.definition VALUES (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101);
  INSERT INTO mbom.definition VALUES (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101);

  _gid := mbom.get_gid_by_id(_test_id);
  PERFORM pgunit.assert_equals(_test_gid, _gid, 'Incorrect _gid value');

END;
$$;


ALTER FUNCTION tests.__mbom__get_gid_by_id() OWNER TO postgres;

--
-- TOC entry 402 (class 1255 OID 36542)
-- Name: __mbom__get_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __mbom__get_head() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.mbom_head;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a';
  _test_display_name CONSTANT character varying := '11с32п-50х40: definition';
  _test_document_date CONSTANT date := '2017-10-21'::date;
  _test_curr_fsmt CONSTANT common.document_fsmt := 'COMMITTED'::common.document_fsmt;
  _test_document_type CONSTANT common.document_kind := 'MBOM'::common.document_kind;
  _test_material_part_code CONSTANT character varying := '11.32.050-001';
  _test_material_version_num CONSTANT integer := 1;
BEGIN
  
  RAISE DEBUG '#trace Check __mbom__get_head()';

  INSERT INTO mbom.information VALUES (101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23');
  INSERT INTO mbom.definition VALUES (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-20', NULL, NULL, 'PROPOSED', '2017-10-20',101);
  INSERT INTO mbom.definition VALUES (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'COMMITTED', '2017-10-21',101);
  INSERT INTO mbom.definition VALUES (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-22', NULL, NULL, 'PROPOSED', '2017-10-22',101);

  _head := mbom.get_head(202);
  PERFORM pgunit.assert_equals(_test_gid, _head.gid, 'Incorrect gid value');
  PERFORM pgunit.assert_equals(_test_display_name, _head.display_name, 'Incorrect display_name value');
  PERFORM pgunit.assert_equals(_test_document_date, _head.document_date, 'Incorrect document_date value');
  PERFORM pgunit.assert_equals(_test_curr_fsmt, _head.curr_fsmt, 'Incorrect curr_fsmt value');
  PERFORM pgunit.assert_equals(_test_document_type, _head.document_type, 'Incorrect document_type value');
  PERFORM pgunit.assert_equals(_test_material_part_code, (_head.material_spec).part_code, 'Incorrect material_CONSUMABLE_code value');
  PERFORM pgunit.assert_equals(_test_material_version_num, (_head.material_spec).version_num, 'Incorrect material_version_num value');

  _head := mbom.get_head(203);
  PERFORM pgunit.assert_not_equals(_test_gid, _head.gid, 'Incorrect gid value');
  
  _head := mbom.get_head(204);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__mbom__get_head() OWNER TO postgres;

--
-- TOC entry 403 (class 1255 OID 36543)
-- Name: __mbom__get_id_by_gid(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __mbom__get_id_by_gid() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_id CONSTANT bigint := 202;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a';
  _id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __mbom__get_id_by_gid()';

  INSERT INTO mbom.information VALUES (101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23');
  INSERT INTO mbom.definition VALUES (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101);
  INSERT INTO mbom.definition VALUES (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101);
  INSERT INTO mbom.definition VALUES (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101);

  _id := mbom.get_id_by_gid(_test_gid);
  PERFORM pgunit.assert_equals(_test_id, _id, 'Incorrect _id value');

END;
$$;


ALTER FUNCTION tests.__mbom__get_id_by_gid() OWNER TO postgres;

--
-- TOC entry 404 (class 1255 OID 36544)
-- Name: __mbom__init(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __mbom__init() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.mbom_head[] := ARRAY[(203,'9b2952fa-01d1-11e7-b440-d4bed939923a','11с32п-50х40: definition',3,'2017-10-21','PROPOSED','MBOM',('11.32.050-001',1,1.0000,'pcs','CONSUMABLE'))]::common.mbom_head[];
  _test_body CONSTANT common.material_specification[] := ARRAY[('80.31.050-001',1,1.0000,'pcs','CONSUMABLE'), ('72.01.009-001',1,2.0000,'pcs','CONSUMABLE')]::common.material_specification[];
  _head common.mbom_head;
  _body common.material_specification[];
  _document_id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __mbom__init()';
  
  _document_id := mbom.init(_test_head[1], _test_body);
  _head := mbom.get_head(_document_id);
  _body := mbom.get_body(_document_id);
  --PERFORM pgunit.assert_equals(_test_head[1], _head, 'Incorrect _head value');
  PERFORM pgunit.assert_array_equals(_test_body, _body, 'Incorrect _body value');


END;
$$;


ALTER FUNCTION tests.__mbom__init() OWNER TO postgres;

--
-- TOC entry 405 (class 1255 OID 36545)
-- Name: __mbom__reinit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __mbom__reinit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.mbom_head[] := ARRAY[(203,'9b2952fa-01d1-11e7-b440-d4bed939923a','11с32п-50х40: definition',3,'2017-10-21','PROPOSED','MBOM',('11.32.050-001',1,1.0000,'pcs','CONSUMABLE'))]::common.mbom_head[];
  _test_body_init CONSTANT common.material_specification[] := ARRAY[('80.31.050-001',1,1.0000,'pcs','CONSUMABLE'), ('72.01.009-001',1,2.0000,'pcs','CONSUMABLE')]::common.material_specification[];
  _test_body_reinit CONSTANT common.material_specification[] := ARRAY[('80.31.050-001',1,2.0000,'pcs','CONSUMABLE'), ('72.01.009-001',1,4.0000,'pcs','CONSUMABLE')]::common.material_specification[];
  _head common.mbom_head;
  _body common.material_specification[];
  _document_id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __mbom__reinit()';
  
  _document_id := mbom.init(_test_head[1], _test_body_init);
  PERFORM mbom.reinit(_document_id, _test_body_reinit);
  _head := mbom.get_head(_document_id);
  _body := mbom.get_body(_document_id);
  --PERFORM pgunit.assert_equals(_test_head[1], _head, 'Incorrect _head value');
  PERFORM pgunit.assert_array_equals(_test_body_reinit, _body, 'Incorrect _body value');


END;
$$;


ALTER FUNCTION tests.__mbom__reinit() OWNER TO postgres;

--
-- TOC entry 406 (class 1255 OID 36546)
-- Name: _load_data(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION _load_data() RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  --SET search_path = component, pg_catalog;
  INSERT INTO component.assembly VALUES ('11.31.050-001', 1, '11с31п-50х40', '2017-10-21', 'ASSEMBLY');
  INSERT INTO component.assembly VALUES ('11.32.050-001', 1, '11с32п-50х40', '2017-10-21', 'ASSEMBLY');
  INSERT INTO component.assembly VALUES ('11.33.050-001', 1, '11с33п-50х40', '2017-10-21', 'ASSEMBLY');
  INSERT INTO component.assembly VALUES ('80.31.050-001', 1, 'Крпс-089,0х109,0', '2017-10-21', 'ASSEMBLY');
  INSERT INTO component.assembly VALUES ('82.31.050-001', 1, 'Рчк-250х20', '2017-10-21', 'ASSEMBLY');

  INSERT INTO component.buyable VALUES ('Гайка М12', 1, 'Гайка-М12', '2017-10-21', 'BUYABLE');

  INSERT INTO component.part VALUES ('22.16.050-001', 1, 'КТ33-50х40', '2017-10-21', 'PART');
  INSERT INTO component.part VALUES ('22.25.050-001', 1, 'КТ32-50х40', '2017-10-21', 'PART');
  INSERT INTO component.part VALUES ('40.31.050-001', 1, 'Птрб-057,0х126,0', '2017-10-21', 'PART');
  INSERT INTO component.part VALUES ('40.32.050-001', 1, 'Птрб-057,0х074,0', '2017-10-21', 'PART');
  INSERT INTO component.part VALUES ('40.33.050-001', 1, 'Птрб-057,0х054,0', '2017-10-21', 'PART');
  INSERT INTO component.part VALUES ('41.31.050-001', 1, 'Крпс-089,0х109,0', '2017-10-21', 'PART');
  INSERT INTO component.part VALUES ('42.01.050-001', 1, 'Ббшк-022,0х044,0', '2017-10-21', 'PART');
  INSERT INTO component.part VALUES ('50.01.050-001', 1, 'Втлк-050,0х039,0', '2017-10-21', 'PART');
  INSERT INTO component.part VALUES ('60.01.050-001', 1, 'ШП-068,0х052,5', '2017-10-21', 'PART');
  INSERT INTO component.part VALUES ('51.01.050-001', 1, 'Пржн-050,6х042,0', '2017-10-21', 'PART');
  INSERT INTO component.part VALUES ('61.01.050-001', 1, 'Штк-013,3х075,0', '2017-10-21', 'PART');
  INSERT INTO component.part VALUES ('52.01.050-001', 1, 'Шйб-051,0х042,6', '2017-10-21', 'PART');
  INSERT INTO component.part VALUES ('70.01.050-001', 1, 'Ф4-051,5х041,7х11,0', '2017-10-21', 'PART');
  INSERT INTO component.part VALUES ('71.02.050-001', 1, 'Кршк-ПП-50', '2017-10-21', 'PART');
  INSERT INTO component.part VALUES ('71.03.050-001', 1, 'Зглш-ПП-50', '2017-10-21', 'PART');
  INSERT INTO component.part VALUES ('55.31.050-001', 1, 'Рчк-250х20', '2017-10-21', 'PART');
  INSERT INTO component.part VALUES ('53.01.004-001', 1, 'Штфт-4', '2017-10-21', 'PART');
  INSERT INTO component.part VALUES ('70.04.020-001', 1, 'Клц-20', '2017-10-21', 'PART');
  INSERT INTO component.part VALUES ('72.01.009-001', 1, 'Клц-009', '2017-10-21', 'PART');
  INSERT INTO component.part VALUES ('42.02.022-001', 1, 'Втлк-Р-50х18', '2017-10-21', 'PART');

  --SET search_path = ebom, pg_catalog;
  INSERT INTO ebom.information VALUES (1, DEFAULT, '11.31.050-001', 1, '11с31п-50х40: information', '2017-10-23');
  INSERT INTO ebom.definition VALUES (1, DEFAULT, '11с31п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21 20:55:30.985148+03', 1);
  INSERT INTO ebom.assembly VALUES (1, '80.31.050-001', 1, 1.0000, 'pcs', 'ASSEMBLY');
  INSERT INTO ebom.assembly VALUES (1, '82.31.050-001', 1, 1.0000, 'pcs', 'ASSEMBLY');
  INSERT INTO ebom.buyable VALUES (1, 'Гайка М12', 1, 1.0000, 'pcs', 'BUYABLE');
  INSERT INTO ebom.part VALUES (1, '40.31.050-001', 1, 2.0000, 'pcs', 'PART');
  INSERT INTO ebom.part VALUES (1, '50.01.050-001', 1, 2.0000, 'pcs', 'PART');
  INSERT INTO ebom.part VALUES (1, '51.01.050-001', 1, 2.0000, 'pcs', 'PART');
  INSERT INTO ebom.part VALUES (1, '52.01.050-001', 1, 2.0000, 'pcs', 'PART');
  INSERT INTO ebom.part VALUES (1, '53.01.004-001', 1, 1.0000, 'pcs', 'PART');
  INSERT INTO ebom.part VALUES (1, '60.01.050-001', 1, 1.0000, 'pcs', 'PART');
  INSERT INTO ebom.part VALUES (1, '61.01.050-001', 1, 1.0000, 'pcs', 'PART');
  INSERT INTO ebom.part VALUES (1, '70.01.050-001', 1, 2.0000, 'pcs', 'PART');
  INSERT INTO ebom.part VALUES (1, '70.04.020-001', 1, 1.0000, 'pcs', 'PART');
  INSERT INTO ebom.part VALUES (1, '72.01.009-001', 1, 2.0000, 'pcs', 'PART');

  --SET search_path = material, pg_catalog;
  INSERT INTO material.consumable VALUES ('22.16.050-001', 1, 'КТ33-50х40', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('22.25.050-001', 1, 'КТ32-50х40', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('40.31.050-001', 1, 'Птрб-057,0х126,0', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('40.32.050-001', 1, 'Птрб-057,0х074,0', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('40.33.050-001', 1, 'Птрб-057,0х054,0', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('41.31.050-001', 1, 'Крпс-089,0х109,0', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('42.01.050-001', 1, 'Ббшк-022,0х044,0', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('50.01.050-001', 1, 'Втлк-050,0х039,0', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('60.01.050-001', 1, 'ШП-068,0х052,5', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('51.01.050-001', 1, 'Пржн-050,6х042,0', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('61.01.050-001', 1, 'Штк-013,3х075,0', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('52.01.050-001', 1, 'Шйб-051,0х042,6', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('70.01.050-001', 1, 'Ф4-051,5х041,7х11,0', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('71.02.050-001', 1, 'Кршк-ПП-50', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('71.03.050-001', 1, 'Зглш-ПП-50', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('55.31.050-001', 1, 'Рчк-250х20', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('53.01.004-001', 1, 'Штфт-4', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('70.04.020-001', 1, 'Клц-20', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('72.01.009-001', 1, 'Клц-009', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('42.02.022-001', 1, 'Втлк-Р-50х18', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('80.31.050-001', 1, 'Крпс-089,0х109,0', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('82.31.050-001', 1, 'Рчк-250х20', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('53.01.004-001.010', 1, 'Штфт-004,0х012,0', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('40.31.050-001.010', 1, 'Птрб-057,0х126,0', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('82.31.050-001.010', 1, 'Рчк-250х20', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('40.32.050-001.010', 1, 'Птрб-057,0х074,0', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('80.31.050-001.010', 1, 'Крпс-089,0х109,0', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('60.01.050-001.020', 1, 'ШП-068,0х052,5', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('22.25.050-001.030', 1, 'КТ32-50х40', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('40.33.050-001.010', 1, 'Птрб-057,0х054,0', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('51.01.050-001.010', 1, 'Пржн-050,6х042,0', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('60.01.050-001.010', 1, 'ШП-068,0х052,5', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('60.01.050-001.030', 1, 'ШП-068,0х052,5', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('41.31.050-001.010', 1, 'Крпс-089,0х109,0', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('41.31.050-001.020', 1, 'Крпс-089,0х109,0', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('60.01.050-001.011', 1, 'ШП-068,0х052,5', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('22.16.050-001.030', 1, 'КТ33-50х40', '2017-10-22', 'CONSUMABLE');
  INSERT INTO material.consumable VALUES ('Гайка М12', 1, 'Гайка М12', '2017-10-24', 'CONSUMABLE');

  INSERT INTO material.primal VALUES ('Квд-080х080-ст3ПС', 1, 'Квд-ст3ПС-080х080', '2017-10-22', 'PRIMAL');
  INSERT INTO material.primal VALUES ('Крг-004,0-ст45', 1, 'Крг-ст45-004,0', '2017-10-22', 'PRIMAL');
  INSERT INTO material.primal VALUES ('Крг-016-ст20Х13', 1, 'Крг-ст20Х13-016', '2017-10-22', 'PRIMAL');
  INSERT INTO material.primal VALUES ('Крг-022-ст20', 1, 'Крг-ст20-022', '2017-10-22', 'PRIMAL');
  INSERT INTO material.primal VALUES ('Лст-000,8-ст08Х17', 1, 'Лст-ст08Х17-000,8', '2017-10-22', 'PRIMAL');
  INSERT INTO material.primal VALUES ('Лст-001,0-ст08Х17', 1, 'Лст-ст08Х17-001,0', '2017-10-22', 'PRIMAL');
  INSERT INTO material.primal VALUES ('Лст-001,2-ст65Г', 1, 'Лст-ст65Г-001,2', '2017-10-22', 'PRIMAL');
  INSERT INTO material.primal VALUES ('Лст-003,0-ст3', 1, 'Лст-ст3-003,0', '2017-10-22', 'PRIMAL');
  INSERT INTO material.primal VALUES ('Лст-004,4-ст08Х17', 1, 'Лст-ст08Х17-004,4', '2017-10-22', 'PRIMAL');
  INSERT INTO material.primal VALUES ('ПЕ 15803-020', 1, 'ПЕ 15803-020', '2017-10-22', 'PRIMAL');
  INSERT INTO material.primal VALUES ('Плс-020х4-ст3', 1, 'Плс-ст3-020х4', '2017-10-22', 'PRIMAL');
  INSERT INTO material.primal VALUES ('Трб-057,0х03,5-ст20-Ш', 1, 'Трб-ст20-057,0х03,5-Ш', '2017-10-22', 'PRIMAL');
  INSERT INTO material.primal VALUES ('Трб-068,0х03,5-ст20Х13', 1, 'Трб-ст20Х13-068,0х03,5', '2017-10-22', 'PRIMAL');
  INSERT INTO material.primal VALUES ('Трб-068,0х04,0-ст20Х13', 1, 'Трб-ст20Х13-068,0х04,0', '2017-10-22', 'PRIMAL');
  INSERT INTO material.primal VALUES ('Трб-089,0х03,0-ст20-Ш', 1, 'Трб-ст20-089,0х03,0-Ш', '2017-10-22', 'PRIMAL');
  INSERT INTO material.primal VALUES ('Трб-089,0х03,5-ст20-Ш', 1, 'Трб-ст20-089,0х03,5-Ш', '2017-10-22', 'PRIMAL');
  INSERT INTO material.primal VALUES ('Ф-4', 1, 'Ф-4', '2017-10-22', 'PRIMAL');

  INSERT INTO material.producible VALUES ('22.16.050-001', 1, 'КТ33-50х40', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('22.25.050-001', 1, 'КТ32-50х40', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('40.31.050-001', 1, 'Птрб-057,0х126,0', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('40.32.050-001', 1, 'Птрб-057,0х074,0', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('40.33.050-001', 1, 'Птрб-057,0х054,0', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('41.31.050-001', 1, 'Крпс-089,0х109,0', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('42.01.050-001', 1, 'Ббшк-022,0х044,0', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('50.01.050-001', 1, 'Втлк-050,0х039,0', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('60.01.050-001', 1, 'ШП-068,0х052,5', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('51.01.050-001', 1, 'Пржн-050,6х042,0', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('61.01.050-001', 1, 'Штк-013,3х075,0', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('52.01.050-001', 1, 'Шйб-051,0х042,6', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('70.01.050-001', 1, 'Ф4-051,5х041,7х11,0', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('71.02.050-001', 1, 'Кршк-ПП-50', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('71.03.050-001', 1, 'Зглш-ПП-50', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('55.31.050-001', 1, 'Рчк-250х20', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('53.01.004-001', 1, 'Штфт-4', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('70.04.020-001', 1, 'Клц-20', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('72.01.009-001', 1, 'Клц-009', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('42.02.022-001', 1, 'Втлк-Р-50х18', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('11.31.050-001', 1, '11с31п-50х40', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('11.32.050-001', 1, '11с32п-50х40', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('11.33.050-001', 1, '11с33п-50х40', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('80.31.050-001', 1, 'Крпс-089,0х109,0', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('82.31.050-001', 1, 'Рчк-250х20', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('53.01.004-001.010', 1, 'Штфт-004,0х012,0', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('40.31.050-001.010', 1, 'Птрб-057,0х126,0', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('82.31.050-001.010', 1, 'Рчк-250х20', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('40.32.050-001.010', 1, 'Птрб-057,0х074,0', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('80.31.050-001.010', 1, 'Крпс-089,0х109,0', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('60.01.050-001.020', 1, 'ШП-068,0х052,5', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('22.25.050-001.030', 1, 'КТ32-50х40', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('40.33.050-001.010', 1, 'Птрб-057,0х054,0', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('51.01.050-001.010', 1, 'Пржн-050,6х042,0', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('60.01.050-001.010', 1, 'ШП-068,0х052,5', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('60.01.050-001.030', 1, 'ШП-068,0х052,5', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('41.31.050-001.010', 1, 'Крпс-089,0х109,0', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('41.31.050-001.020', 1, 'Крпс-089,0х109,0', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('60.01.050-001.011', 1, 'ШП-068,0х052,5', '2017-10-22', 'PRODUCIBLE');
  INSERT INTO material.producible VALUES ('22.16.050-001.030', 1, 'КТ33-50х40', '2017-10-22', 'PRODUCIBLE');

END;
$$;


ALTER FUNCTION tests._load_data() OWNER TO postgres;

--
-- TOC entry 407 (class 1255 OID 36548)
-- Name: _reset_data(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION _reset_data() RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  /*
  SELECT 'TRUNCATE TABLE ' || table_schema || '.' ||table_name || ' CASCADE;'
  FROM information_schema.tables
  WHERE table_schema NOT IN ('pg_catalog', 'information_schema', 'public', 'tests', 'common')
  ORDER BY table_schema,table_name;
  */
  TRUNCATE TABLE component.assembly CASCADE;
  TRUNCATE TABLE component.buyable CASCADE;
  TRUNCATE TABLE component.information CASCADE;
  TRUNCATE TABLE component.part CASCADE;
  TRUNCATE TABLE ebom.assembly CASCADE;
  TRUNCATE TABLE ebom.buyable CASCADE;
  TRUNCATE TABLE ebom.component CASCADE;
  TRUNCATE TABLE ebom.definition CASCADE;
  TRUNCATE TABLE ebom.information CASCADE;
  TRUNCATE TABLE ebom.part CASCADE;

  /*SELECT 'ALTER SEQUENCE ' || sequence_schema || '.' || sequence_name || ' RESTART WITH 1;'
  FROM information_schema.sequences
  WHERE sequence_catalog = 'wms' AND sequence_schema != 'common'
  ORDER by sequence_schema, sequence_name;*/
  ALTER SEQUENCE ebom.definition_id_seq RESTART WITH 1;
  ALTER SEQUENCE ebom.information_id_seq RESTART WITH 1;


END;
$$;


ALTER FUNCTION tests._reset_data() OWNER TO postgres;

--
-- TOC entry 408 (class 1255 OID 36549)
-- Name: _run_all(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION _run_all() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _result text;
  _routines record;
  --_function_to_run text;
  _ok_count int DEFAULT 0;
  _error_count int DEFAULT 0;
  _failed_tests text[];
BEGIN
  SET search_path = tests, pg_catalog;
  SET client_min_messages = 'debug';
  FOR _routines IN
    SELECT
      routines.routine_name || '()' AS _function_to_run
    FROM
      information_schema.routines
    WHERE
      routines.specific_schema = 'tests' AND routines.routine_name like '\_\_%'
    ORDER BY
      routines.specific_schema, routines.routine_name
  LOOP
    _result := pgunit.run_test(_routines._function_to_run);
    RAISE NOTICE 'PERFORMING: % , RESULT: %', _routines._function_to_run, _result;
    IF (_result = '#OK') THEN
      _ok_count := _ok_count + 1;
    ELSE
      _error_count := _error_count + 1;
      _failed_tests := array_append(_failed_tests, _routines._function_to_run);
    END IF;
  END LOOP;
  RAISE NOTICE 'OK - %; ERROR - %;', _ok_count, _error_count;
  IF (_error_count > 0) THEN
  RAISE NOTICE 'FAILED: %;', _failed_tests;
  END IF;
END;
$$;


ALTER FUNCTION tests._run_all() OWNER TO postgres;

SET search_path = component, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 211 (class 1259 OID 36550)
-- Name: information; Type: TABLE; Schema: component; Owner: postgres
--

CREATE TABLE information (
    part_code character varying NOT NULL,
    version_num integer DEFAULT 1 NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    component_type common.component_kind NOT NULL
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 3790 (class 0 OID 0)
-- Dependencies: 211
-- Name: TABLE information; Type: COMMENT; Schema: component; Owner: postgres
--

COMMENT ON TABLE information IS 'ebom component list';


--
-- TOC entry 212 (class 1259 OID 36558)
-- Name: assembly; Type: TABLE; Schema: component; Owner: postgres
--

CREATE TABLE assembly (
    CONSTRAINT assembly_component_type_check CHECK ((component_type = 'ASSEMBLY'::common.component_kind))
)
INHERITS (information);


ALTER TABLE assembly OWNER TO postgres;

--
-- TOC entry 3791 (class 0 OID 0)
-- Dependencies: 212
-- Name: TABLE assembly; Type: COMMENT; Schema: component; Owner: postgres
--

COMMENT ON TABLE assembly IS 'ebom assembly component';


--
-- TOC entry 213 (class 1259 OID 36567)
-- Name: buyable; Type: TABLE; Schema: component; Owner: postgres
--

CREATE TABLE buyable (
    CONSTRAINT buyable_component_type_check CHECK ((component_type = 'BUYABLE'::common.component_kind)),
    CONSTRAINT buyable_version_num_check CHECK ((version_num = 1))
)
INHERITS (information);


ALTER TABLE buyable OWNER TO postgres;

--
-- TOC entry 3792 (class 0 OID 0)
-- Dependencies: 213
-- Name: TABLE buyable; Type: COMMENT; Schema: component; Owner: postgres
--

COMMENT ON TABLE buyable IS 'ebom buyable component';


--
-- TOC entry 214 (class 1259 OID 36577)
-- Name: part; Type: TABLE; Schema: component; Owner: postgres
--

CREATE TABLE part (
    CONSTRAINT part_component_type_check CHECK ((component_type = 'PART'::common.component_kind))
)
INHERITS (information);


ALTER TABLE part OWNER TO postgres;

--
-- TOC entry 3793 (class 0 OID 0)
-- Dependencies: 214
-- Name: TABLE part; Type: COMMENT; Schema: component; Owner: postgres
--

COMMENT ON TABLE part IS 'ebom part component';


SET search_path = ebom, pg_catalog;

--
-- TOC entry 215 (class 1259 OID 36586)
-- Name: component; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE component (
    definition_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    quantity common.quantity NOT NULL,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL,
    component_type common.component_kind NOT NULL
);


ALTER TABLE component OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 36593)
-- Name: assembly; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE assembly (
    CONSTRAINT assembly_component_type_check CHECK ((component_type = 'ASSEMBLY'::common.component_kind))
)
INHERITS (component);


ALTER TABLE assembly OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 36601)
-- Name: buyable; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE buyable (
    CONSTRAINT buyable_component_type_check CHECK ((component_type = 'BUYABLE'::common.component_kind))
)
INHERITS (component);


ALTER TABLE buyable OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 36609)
-- Name: definition; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE definition (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying NOT NULL,
    version_num integer DEFAULT 1 NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    prev_fsmt common.document_fsmt,
    prev_fsmt_date timestamp with time zone,
    curr_fsmt common.document_fsmt DEFAULT 'PROPOSED'::common.document_fsmt NOT NULL,
    curr_fsmt_date timestamp with time zone DEFAULT now() NOT NULL,
    information_id bigint
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 36620)
-- Name: definition_id_seq; Type: SEQUENCE; Schema: ebom; Owner: postgres
--

CREATE SEQUENCE definition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE definition_id_seq OWNER TO postgres;

--
-- TOC entry 3794 (class 0 OID 0)
-- Dependencies: 219
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: ebom; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 220 (class 1259 OID 36622)
-- Name: information; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 36630)
-- Name: information_id_seq; Type: SEQUENCE; Schema: ebom; Owner: postgres
--

CREATE SEQUENCE information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE information_id_seq OWNER TO postgres;

--
-- TOC entry 3795 (class 0 OID 0)
-- Dependencies: 221
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: ebom; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 222 (class 1259 OID 36632)
-- Name: part; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE part (
    CONSTRAINT part_component_type_check CHECK ((component_type = 'PART'::common.component_kind))
)
INHERITS (component);


ALTER TABLE part OWNER TO postgres;

SET search_path = material, pg_catalog;

--
-- TOC entry 223 (class 1259 OID 36640)
-- Name: information; Type: TABLE; Schema: material; Owner: postgres
--

CREATE TABLE information (
    part_code character varying NOT NULL,
    version_num integer DEFAULT 1 NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    material_type common.material_kind NOT NULL
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 3796 (class 0 OID 0)
-- Dependencies: 223
-- Name: TABLE information; Type: COMMENT; Schema: material; Owner: postgres
--

COMMENT ON TABLE information IS 'mbom component list';


--
-- TOC entry 224 (class 1259 OID 36648)
-- Name: consumable; Type: TABLE; Schema: material; Owner: postgres
--

CREATE TABLE consumable (
    CONSTRAINT consumable_material_type_check CHECK ((material_type = 'CONSUMABLE'::common.material_kind))
)
INHERITS (information);


ALTER TABLE consumable OWNER TO postgres;

--
-- TOC entry 3797 (class 0 OID 0)
-- Dependencies: 224
-- Name: TABLE consumable; Type: COMMENT; Schema: material; Owner: postgres
--

COMMENT ON TABLE consumable IS 'mbom consumable component';


--
-- TOC entry 225 (class 1259 OID 36657)
-- Name: primal; Type: TABLE; Schema: material; Owner: postgres
--

CREATE TABLE primal (
    CONSTRAINT primal_material_type_check CHECK ((material_type = 'PRIMAL'::common.material_kind)),
    CONSTRAINT primal_version_num_check CHECK ((version_num = 1))
)
INHERITS (information);


ALTER TABLE primal OWNER TO postgres;

--
-- TOC entry 3798 (class 0 OID 0)
-- Dependencies: 225
-- Name: TABLE primal; Type: COMMENT; Schema: material; Owner: postgres
--

COMMENT ON TABLE primal IS 'mbom primal component';


--
-- TOC entry 226 (class 1259 OID 36667)
-- Name: producible; Type: TABLE; Schema: material; Owner: postgres
--

CREATE TABLE producible (
    CONSTRAINT producible_material_type_check CHECK ((material_type = 'PRODUCIBLE'::common.material_kind))
)
INHERITS (information);


ALTER TABLE producible OWNER TO postgres;

--
-- TOC entry 3799 (class 0 OID 0)
-- Dependencies: 226
-- Name: TABLE producible; Type: COMMENT; Schema: material; Owner: postgres
--

COMMENT ON TABLE producible IS 'mbom producible component';


SET search_path = mbom, pg_catalog;

--
-- TOC entry 227 (class 1259 OID 36676)
-- Name: material; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE material (
    definition_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    quantity common.quantity NOT NULL,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL,
    material_type common.material_kind NOT NULL
);


ALTER TABLE material OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 36683)
-- Name: consumable; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE consumable (
    CONSTRAINT consumable_component_type_check CHECK ((material_type = 'CONSUMABLE'::common.material_kind))
)
INHERITS (material);


ALTER TABLE consumable OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 36691)
-- Name: definition; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE definition (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    version_num integer DEFAULT 1 NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    prev_fsmt common.document_fsmt,
    prev_fsmt_date timestamp with time zone,
    curr_fsmt common.document_fsmt DEFAULT 'PROPOSED'::common.document_fsmt NOT NULL,
    curr_fsmt_date timestamp with time zone DEFAULT now() NOT NULL,
    information_id bigint
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 36702)
-- Name: definition_id_seq; Type: SEQUENCE; Schema: mbom; Owner: postgres
--

CREATE SEQUENCE definition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE definition_id_seq OWNER TO postgres;

--
-- TOC entry 3800 (class 0 OID 0)
-- Dependencies: 230
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: mbom; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 231 (class 1259 OID 36704)
-- Name: information; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    display_name character varying,
    published_date date DEFAULT now() NOT NULL
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 36712)
-- Name: information_id_seq; Type: SEQUENCE; Schema: mbom; Owner: postgres
--

CREATE SEQUENCE information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE information_id_seq OWNER TO postgres;

--
-- TOC entry 3801 (class 0 OID 0)
-- Dependencies: 232
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: mbom; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 233 (class 1259 OID 36714)
-- Name: primal; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE primal (
    CONSTRAINT primal_component_type_check CHECK ((material_type = 'PRIMAL'::common.material_kind))
)
INHERITS (material);


ALTER TABLE primal OWNER TO postgres;

SET search_path = operation, pg_catalog;

--
-- TOC entry 234 (class 1259 OID 36722)
-- Name: material; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE material (
    segment_id bigint NOT NULL,
    serial_num integer DEFAULT 1 NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL,
    material_type common.material_kind,
    rationing_qty integer
);


ALTER TABLE material OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 36730)
-- Name: consumable; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE consumable (
)
INHERITS (material);


ALTER TABLE consumable OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 36738)
-- Name: definition; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE definition (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying NOT NULL,
    version_num integer DEFAULT 1 NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    prev_fsmt common.document_fsmt,
    prev_fsmt_date time with time zone,
    curr_fsmt common.document_fsmt DEFAULT 'PROPOSED'::common.document_fsmt NOT NULL,
    curr_fsmt_date timestamp with time zone DEFAULT now() NOT NULL,
    information_id bigint
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 36749)
-- Name: definition_id_seq; Type: SEQUENCE; Schema: operation; Owner: postgres
--

CREATE SEQUENCE definition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE definition_id_seq OWNER TO postgres;

--
-- TOC entry 3802 (class 0 OID 0)
-- Dependencies: 237
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 238 (class 1259 OID 36751)
-- Name: dependency; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE dependency (
    ancestor bigint NOT NULL,
    descendant bigint NOT NULL,
    depth integer DEFAULT 1 NOT NULL
);


ALTER TABLE dependency OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 36755)
-- Name: equipment; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE equipment (
    segment_id bigint NOT NULL,
    equipment_code character varying NOT NULL,
    version_num integer,
    quantity common.quantity,
    uom_code character varying
);


ALTER TABLE equipment OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 36761)
-- Name: information; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    published_date date DEFAULT now() NOT NULL
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 36769)
-- Name: information_id_seq; Type: SEQUENCE; Schema: operation; Owner: postgres
--

CREATE SEQUENCE information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE information_id_seq OWNER TO postgres;

--
-- TOC entry 3803 (class 0 OID 0)
-- Dependencies: 241
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 242 (class 1259 OID 36771)
-- Name: personnel; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE personnel (
    segment_id bigint NOT NULL,
    personnel_code character varying NOT NULL,
    version_num integer,
    rationing_qty integer DEFAULT 1 NOT NULL,
    batch_qty integer,
    workers_qty integer DEFAULT 1 NOT NULL,
    setup_time interval DEFAULT '00:01:00'::interval NOT NULL,
    piece_time interval DEFAULT '00:01:00'::interval NOT NULL
);


ALTER TABLE personnel OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 36781)
-- Name: primal; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE primal (
)
INHERITS (material);


ALTER TABLE primal OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 36789)
-- Name: producible; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE producible (
    information_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    quantity common.quantity,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL,
    material_type common.material_kind
);


ALTER TABLE producible OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 36796)
-- Name: segment; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE segment (
    id bigint NOT NULL,
    definition_id bigint NOT NULL,
    operation_code character varying NOT NULL
);


ALTER TABLE segment OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 36802)
-- Name: segment_id_seq; Type: SEQUENCE; Schema: operation; Owner: postgres
--

CREATE SEQUENCE segment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE segment_id_seq OWNER TO postgres;

--
-- TOC entry 3804 (class 0 OID 0)
-- Dependencies: 246
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


--
-- TOC entry 247 (class 1259 OID 36804)
-- Name: tooling; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE tooling (
    segment_id bigint NOT NULL,
    tooling_code character varying NOT NULL,
    version_num integer,
    quantity common.quantity,
    uom_code character varying
);


ALTER TABLE tooling OWNER TO postgres;

SET search_path = tests, pg_catalog;

--
-- TOC entry 248 (class 1259 OID 36810)
-- Name: pgunit_covarage; Type: VIEW; Schema: tests; Owner: postgres
--

CREATE VIEW pgunit_covarage AS
 SELECT ((('__'::text || (routines.specific_schema)::text) || '__'::text) || (routines.routine_name)::text) AS _function_to_run
   FROM information_schema.routines
  WHERE (((routines.specific_schema)::text <> ALL (ARRAY[('tests'::character varying)::text, ('pgunit'::character varying)::text, ('public'::character varying)::text, ('pg_catalog'::character varying)::text, ('information_schema'::character varying)::text])) AND ((routines.routine_name)::text !~~ 'disall%'::text))
EXCEPT
 SELECT routines.routine_name AS _function_to_run
   FROM information_schema.routines
  WHERE (((routines.specific_schema)::text = 'tests'::text) AND ((routines.routine_name)::text ~~ '\_\_%'::text))
  ORDER BY 1;


ALTER TABLE pgunit_covarage OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 36815)
-- Name: plpgsql_check_all; Type: VIEW; Schema: tests; Owner: postgres
--

CREATE VIEW plpgsql_check_all AS
 SELECT ((ss.pcf).functionid)::regprocedure AS functionid,
    (ss.pcf).lineno AS lineno,
    (ss.pcf).statement AS statement,
    (ss.pcf).sqlstate AS sqlstate,
    (ss.pcf).message AS message,
    (ss.pcf).detail AS detail,
    (ss.pcf).hint AS hint,
    (ss.pcf).level AS level,
    (ss.pcf)."position" AS "position",
    (ss.pcf).query AS query,
    (ss.pcf).context AS context
   FROM ( SELECT public.plpgsql_check_function_tb((pg_proc.oid)::regprocedure, (COALESCE(pg_trigger.tgrelid, (0)::oid))::regclass) AS pcf
           FROM (pg_proc
             LEFT JOIN pg_trigger ON ((pg_trigger.tgfoid = pg_proc.oid)))
          WHERE ((pg_proc.prolang = ( SELECT lang.oid
                   FROM pg_language lang
                  WHERE (lang.lanname = 'plpgsql'::name))) AND (pg_proc.pronamespace <> ( SELECT nsp.oid
                   FROM pg_namespace nsp
                  WHERE (nsp.nspname = 'pg_catalog'::name))) AND ((pg_proc.prorettype <> ( SELECT typ.oid
                   FROM pg_type typ
                  WHERE (typ.typname = 'trigger'::name))) OR (pg_trigger.tgfoid IS NOT NULL)))
         OFFSET 0) ss
  ORDER BY (((ss.pcf).functionid)::regprocedure)::text, (ss.pcf).lineno;


ALTER TABLE plpgsql_check_all OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 36820)
-- Name: plpgsql_check_nontriggered; Type: VIEW; Schema: tests; Owner: postgres
--

CREATE VIEW plpgsql_check_nontriggered AS
 SELECT p.oid,
    p.proname,
    public.plpgsql_check_function((p.oid)::regprocedure) AS plpgsql_check_function
   FROM ((pg_namespace n
     JOIN pg_proc p ON ((p.pronamespace = n.oid)))
     JOIN pg_language l ON ((p.prolang = l.oid)))
  WHERE ((l.lanname = 'plpgsql'::name) AND (p.prorettype <> (2279)::oid));


ALTER TABLE plpgsql_check_nontriggered OWNER TO postgres;

SET search_path = component, pg_catalog;

--
-- TOC entry 3439 (class 2604 OID 36825)
-- Name: assembly version_num; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY assembly ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3440 (class 2604 OID 36826)
-- Name: assembly published_date; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY assembly ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3442 (class 2604 OID 36827)
-- Name: buyable version_num; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY buyable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3443 (class 2604 OID 36828)
-- Name: buyable published_date; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY buyable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3446 (class 2604 OID 36829)
-- Name: part version_num; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY part ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3447 (class 2604 OID 36830)
-- Name: part published_date; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY part ALTER COLUMN published_date SET DEFAULT now();


SET search_path = ebom, pg_catalog;

--
-- TOC entry 3450 (class 2604 OID 36831)
-- Name: assembly uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY assembly ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3452 (class 2604 OID 36832)
-- Name: buyable uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY buyable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3459 (class 2604 OID 36833)
-- Name: definition id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3462 (class 2604 OID 36834)
-- Name: information id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3463 (class 2604 OID 36835)
-- Name: part uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY part ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


SET search_path = material, pg_catalog;

--
-- TOC entry 3467 (class 2604 OID 36836)
-- Name: consumable version_num; Type: DEFAULT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3468 (class 2604 OID 36837)
-- Name: consumable published_date; Type: DEFAULT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3470 (class 2604 OID 36838)
-- Name: primal version_num; Type: DEFAULT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3471 (class 2604 OID 36839)
-- Name: primal published_date; Type: DEFAULT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3474 (class 2604 OID 36840)
-- Name: producible version_num; Type: DEFAULT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY producible ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3475 (class 2604 OID 36841)
-- Name: producible published_date; Type: DEFAULT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY producible ALTER COLUMN published_date SET DEFAULT now();


SET search_path = mbom, pg_catalog;

--
-- TOC entry 3478 (class 2604 OID 36842)
-- Name: consumable uom_code; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3485 (class 2604 OID 36843)
-- Name: definition id; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3488 (class 2604 OID 36844)
-- Name: information id; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3489 (class 2604 OID 36845)
-- Name: primal uom_code; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


SET search_path = operation, pg_catalog;

--
-- TOC entry 3493 (class 2604 OID 36846)
-- Name: consumable serial_num; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN serial_num SET DEFAULT 1;


--
-- TOC entry 3494 (class 2604 OID 36847)
-- Name: consumable uom_code; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3500 (class 2604 OID 36848)
-- Name: definition id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3504 (class 2604 OID 36849)
-- Name: information id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3509 (class 2604 OID 36850)
-- Name: primal serial_num; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN serial_num SET DEFAULT 1;


--
-- TOC entry 3510 (class 2604 OID 36851)
-- Name: primal uom_code; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3512 (class 2604 OID 36852)
-- Name: segment id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


SET search_path = component, pg_catalog;

--
-- TOC entry 3738 (class 0 OID 36558)
-- Dependencies: 212
-- Data for Name: assembly; Type: TABLE DATA; Schema: component; Owner: postgres
--

INSERT INTO assembly VALUES ('11.31.050-001', 1, '11с31п-50х40', '2017-10-21', 'ASSEMBLY');
INSERT INTO assembly VALUES ('11.32.050-001', 1, '11с32п-50х40', '2017-10-21', 'ASSEMBLY');
INSERT INTO assembly VALUES ('11.33.050-001', 1, '11с33п-50х40', '2017-10-21', 'ASSEMBLY');
INSERT INTO assembly VALUES ('80.31.050-001', 1, 'Крпс-089,0х109,0', '2017-10-21', 'ASSEMBLY');
INSERT INTO assembly VALUES ('82.31.050-001', 1, 'Рчк-250х20', '2017-10-21', 'ASSEMBLY');


--
-- TOC entry 3739 (class 0 OID 36567)
-- Dependencies: 213
-- Data for Name: buyable; Type: TABLE DATA; Schema: component; Owner: postgres
--

INSERT INTO buyable VALUES ('Гайка М12', 1, 'Гайка-М12', '2017-10-21', 'BUYABLE');


--
-- TOC entry 3737 (class 0 OID 36550)
-- Dependencies: 211
-- Data for Name: information; Type: TABLE DATA; Schema: component; Owner: postgres
--



--
-- TOC entry 3740 (class 0 OID 36577)
-- Dependencies: 214
-- Data for Name: part; Type: TABLE DATA; Schema: component; Owner: postgres
--

INSERT INTO part VALUES ('22.16.050-001', 1, 'КТ33-50х40', '2017-10-21', 'PART');
INSERT INTO part VALUES ('22.25.050-001', 1, 'КТ32-50х40', '2017-10-21', 'PART');
INSERT INTO part VALUES ('40.31.050-001', 1, 'Птрб-057,0х126,0', '2017-10-21', 'PART');
INSERT INTO part VALUES ('40.32.050-001', 1, 'Птрб-057,0х074,0', '2017-10-21', 'PART');
INSERT INTO part VALUES ('40.33.050-001', 1, 'Птрб-057,0х054,0', '2017-10-21', 'PART');
INSERT INTO part VALUES ('41.31.050-001', 1, 'Крпс-089,0х109,0', '2017-10-21', 'PART');
INSERT INTO part VALUES ('42.01.050-001', 1, 'Ббшк-022,0х044,0', '2017-10-21', 'PART');
INSERT INTO part VALUES ('50.01.050-001', 1, 'Втлк-050,0х039,0', '2017-10-21', 'PART');
INSERT INTO part VALUES ('60.01.050-001', 1, 'ШП-068,0х052,5', '2017-10-21', 'PART');
INSERT INTO part VALUES ('51.01.050-001', 1, 'Пржн-050,6х042,0', '2017-10-21', 'PART');
INSERT INTO part VALUES ('61.01.050-001', 1, 'Штк-013,3х075,0', '2017-10-21', 'PART');
INSERT INTO part VALUES ('52.01.050-001', 1, 'Шйб-051,0х042,6', '2017-10-21', 'PART');
INSERT INTO part VALUES ('70.01.050-001', 1, 'Ф4-051,5х041,7х11,0', '2017-10-21', 'PART');
INSERT INTO part VALUES ('71.02.050-001', 1, 'Кршк-ПП-50', '2017-10-21', 'PART');
INSERT INTO part VALUES ('71.03.050-001', 1, 'Зглш-ПП-50', '2017-10-21', 'PART');
INSERT INTO part VALUES ('55.31.050-001', 1, 'Рчк-250х20', '2017-10-21', 'PART');
INSERT INTO part VALUES ('53.01.004-001', 1, 'Штфт-4', '2017-10-21', 'PART');
INSERT INTO part VALUES ('70.04.020-001', 1, 'Клц-20', '2017-10-21', 'PART');
INSERT INTO part VALUES ('72.01.009-001', 1, 'Клц-009', '2017-10-21', 'PART');
INSERT INTO part VALUES ('42.02.022-001', 1, 'Втлк-Р-50х18', '2017-10-21', 'PART');


SET search_path = ebom, pg_catalog;

--
-- TOC entry 3742 (class 0 OID 36593)
-- Dependencies: 216
-- Data for Name: assembly; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO assembly VALUES (1, '80.31.050-001', 1, 1.0000, 'pcs', 'ASSEMBLY');
INSERT INTO assembly VALUES (1, '82.31.050-001', 1, 1.0000, 'pcs', 'ASSEMBLY');


--
-- TOC entry 3743 (class 0 OID 36601)
-- Dependencies: 217
-- Data for Name: buyable; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO buyable VALUES (1, 'Гайка М12', 1, 1.0000, 'pcs', 'BUYABLE');


--
-- TOC entry 3741 (class 0 OID 36586)
-- Dependencies: 215
-- Data for Name: component; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 3744 (class 0 OID 36609)
-- Dependencies: 218
-- Data for Name: definition; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO definition VALUES (1, '93152072-d07e-11e7-9ea1-d4bed939923a', '11с31п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21 20:55:30.985148+03', 1);


--
-- TOC entry 3805 (class 0 OID 0)
-- Dependencies: 219
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: ebom; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 17, true);


--
-- TOC entry 3746 (class 0 OID 36622)
-- Dependencies: 220
-- Data for Name: information; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO information VALUES (1, '9314e846-d07e-11e7-9ea0-d4bed939923a', '11.31.050-001', 1, '11с31п-50х40: information', '2017-10-23');


--
-- TOC entry 3806 (class 0 OID 0)
-- Dependencies: 221
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: ebom; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 18, true);


--
-- TOC entry 3748 (class 0 OID 36632)
-- Dependencies: 222
-- Data for Name: part; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO part VALUES (1, '40.31.050-001', 1, 2.0000, 'pcs', 'PART');
INSERT INTO part VALUES (1, '50.01.050-001', 1, 2.0000, 'pcs', 'PART');
INSERT INTO part VALUES (1, '51.01.050-001', 1, 2.0000, 'pcs', 'PART');
INSERT INTO part VALUES (1, '52.01.050-001', 1, 2.0000, 'pcs', 'PART');
INSERT INTO part VALUES (1, '53.01.004-001', 1, 1.0000, 'pcs', 'PART');
INSERT INTO part VALUES (1, '60.01.050-001', 1, 1.0000, 'pcs', 'PART');
INSERT INTO part VALUES (1, '61.01.050-001', 1, 1.0000, 'pcs', 'PART');
INSERT INTO part VALUES (1, '70.01.050-001', 1, 2.0000, 'pcs', 'PART');
INSERT INTO part VALUES (1, '70.04.020-001', 1, 1.0000, 'pcs', 'PART');
INSERT INTO part VALUES (1, '72.01.009-001', 1, 2.0000, 'pcs', 'PART');


SET search_path = material, pg_catalog;

--
-- TOC entry 3750 (class 0 OID 36648)
-- Dependencies: 224
-- Data for Name: consumable; Type: TABLE DATA; Schema: material; Owner: postgres
--

INSERT INTO consumable VALUES ('22.16.050-001', 1, 'КТ33-50х40', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('22.25.050-001', 1, 'КТ32-50х40', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('40.31.050-001', 1, 'Птрб-057,0х126,0', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('40.32.050-001', 1, 'Птрб-057,0х074,0', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('40.33.050-001', 1, 'Птрб-057,0х054,0', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('41.31.050-001', 1, 'Крпс-089,0х109,0', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('42.01.050-001', 1, 'Ббшк-022,0х044,0', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('50.01.050-001', 1, 'Втлк-050,0х039,0', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('60.01.050-001', 1, 'ШП-068,0х052,5', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('51.01.050-001', 1, 'Пржн-050,6х042,0', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('61.01.050-001', 1, 'Штк-013,3х075,0', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('52.01.050-001', 1, 'Шйб-051,0х042,6', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('70.01.050-001', 1, 'Ф4-051,5х041,7х11,0', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('71.02.050-001', 1, 'Кршк-ПП-50', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('71.03.050-001', 1, 'Зглш-ПП-50', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('55.31.050-001', 1, 'Рчк-250х20', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('53.01.004-001', 1, 'Штфт-4', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('70.04.020-001', 1, 'Клц-20', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('72.01.009-001', 1, 'Клц-009', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('42.02.022-001', 1, 'Втлк-Р-50х18', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('80.31.050-001', 1, 'Крпс-089,0х109,0', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('82.31.050-001', 1, 'Рчк-250х20', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('53.01.004-001.010', 1, 'Штфт-004,0х012,0', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('40.31.050-001.010', 1, 'Птрб-057,0х126,0', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('82.31.050-001.010', 1, 'Рчк-250х20', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('40.32.050-001.010', 1, 'Птрб-057,0х074,0', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('80.31.050-001.010', 1, 'Крпс-089,0х109,0', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('60.01.050-001.020', 1, 'ШП-068,0х052,5', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('22.25.050-001.030', 1, 'КТ32-50х40', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('40.33.050-001.010', 1, 'Птрб-057,0х054,0', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('51.01.050-001.010', 1, 'Пржн-050,6х042,0', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('60.01.050-001.010', 1, 'ШП-068,0х052,5', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('60.01.050-001.030', 1, 'ШП-068,0х052,5', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('41.31.050-001.010', 1, 'Крпс-089,0х109,0', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('41.31.050-001.020', 1, 'Крпс-089,0х109,0', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('60.01.050-001.011', 1, 'ШП-068,0х052,5', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('22.16.050-001.030', 1, 'КТ33-50х40', '2017-10-22', 'CONSUMABLE');
INSERT INTO consumable VALUES ('Гайка М12', 1, 'Гайка М12', '2017-10-24', 'CONSUMABLE');


--
-- TOC entry 3749 (class 0 OID 36640)
-- Dependencies: 223
-- Data for Name: information; Type: TABLE DATA; Schema: material; Owner: postgres
--



--
-- TOC entry 3751 (class 0 OID 36657)
-- Dependencies: 225
-- Data for Name: primal; Type: TABLE DATA; Schema: material; Owner: postgres
--

INSERT INTO primal VALUES ('Квд-080х080-ст3ПС', 1, 'Квд-ст3ПС-080х080', '2017-10-22', 'PRIMAL');
INSERT INTO primal VALUES ('Крг-004,0-ст45', 1, 'Крг-ст45-004,0', '2017-10-22', 'PRIMAL');
INSERT INTO primal VALUES ('Крг-016-ст20Х13', 1, 'Крг-ст20Х13-016', '2017-10-22', 'PRIMAL');
INSERT INTO primal VALUES ('Крг-022-ст20', 1, 'Крг-ст20-022', '2017-10-22', 'PRIMAL');
INSERT INTO primal VALUES ('Лст-000,8-ст08Х17', 1, 'Лст-ст08Х17-000,8', '2017-10-22', 'PRIMAL');
INSERT INTO primal VALUES ('Лст-001,0-ст08Х17', 1, 'Лст-ст08Х17-001,0', '2017-10-22', 'PRIMAL');
INSERT INTO primal VALUES ('Лст-001,2-ст65Г', 1, 'Лст-ст65Г-001,2', '2017-10-22', 'PRIMAL');
INSERT INTO primal VALUES ('Лст-003,0-ст3', 1, 'Лст-ст3-003,0', '2017-10-22', 'PRIMAL');
INSERT INTO primal VALUES ('Лст-004,4-ст08Х17', 1, 'Лст-ст08Х17-004,4', '2017-10-22', 'PRIMAL');
INSERT INTO primal VALUES ('ПЕ 15803-020', 1, 'ПЕ 15803-020', '2017-10-22', 'PRIMAL');
INSERT INTO primal VALUES ('Плс-020х4-ст3', 1, 'Плс-ст3-020х4', '2017-10-22', 'PRIMAL');
INSERT INTO primal VALUES ('Трб-057,0х03,5-ст20-Ш', 1, 'Трб-ст20-057,0х03,5-Ш', '2017-10-22', 'PRIMAL');
INSERT INTO primal VALUES ('Трб-068,0х03,5-ст20Х13', 1, 'Трб-ст20Х13-068,0х03,5', '2017-10-22', 'PRIMAL');
INSERT INTO primal VALUES ('Трб-068,0х04,0-ст20Х13', 1, 'Трб-ст20Х13-068,0х04,0', '2017-10-22', 'PRIMAL');
INSERT INTO primal VALUES ('Трб-089,0х03,0-ст20-Ш', 1, 'Трб-ст20-089,0х03,0-Ш', '2017-10-22', 'PRIMAL');
INSERT INTO primal VALUES ('Трб-089,0х03,5-ст20-Ш', 1, 'Трб-ст20-089,0х03,5-Ш', '2017-10-22', 'PRIMAL');
INSERT INTO primal VALUES ('Ф-4', 1, 'Ф-4', '2017-10-22', 'PRIMAL');


--
-- TOC entry 3752 (class 0 OID 36667)
-- Dependencies: 226
-- Data for Name: producible; Type: TABLE DATA; Schema: material; Owner: postgres
--

INSERT INTO producible VALUES ('22.16.050-001', 1, 'КТ33-50х40', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('22.25.050-001', 1, 'КТ32-50х40', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('40.31.050-001', 1, 'Птрб-057,0х126,0', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('40.32.050-001', 1, 'Птрб-057,0х074,0', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('40.33.050-001', 1, 'Птрб-057,0х054,0', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('41.31.050-001', 1, 'Крпс-089,0х109,0', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('42.01.050-001', 1, 'Ббшк-022,0х044,0', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('50.01.050-001', 1, 'Втлк-050,0х039,0', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('60.01.050-001', 1, 'ШП-068,0х052,5', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('51.01.050-001', 1, 'Пржн-050,6х042,0', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('61.01.050-001', 1, 'Штк-013,3х075,0', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('52.01.050-001', 1, 'Шйб-051,0х042,6', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('70.01.050-001', 1, 'Ф4-051,5х041,7х11,0', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('71.02.050-001', 1, 'Кршк-ПП-50', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('71.03.050-001', 1, 'Зглш-ПП-50', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('55.31.050-001', 1, 'Рчк-250х20', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('53.01.004-001', 1, 'Штфт-4', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('70.04.020-001', 1, 'Клц-20', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('72.01.009-001', 1, 'Клц-009', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('42.02.022-001', 1, 'Втлк-Р-50х18', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('11.31.050-001', 1, '11с31п-50х40', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('11.32.050-001', 1, '11с32п-50х40', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('11.33.050-001', 1, '11с33п-50х40', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('80.31.050-001', 1, 'Крпс-089,0х109,0', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('82.31.050-001', 1, 'Рчк-250х20', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('53.01.004-001.010', 1, 'Штфт-004,0х012,0', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('40.31.050-001.010', 1, 'Птрб-057,0х126,0', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('82.31.050-001.010', 1, 'Рчк-250х20', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('40.32.050-001.010', 1, 'Птрб-057,0х074,0', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('80.31.050-001.010', 1, 'Крпс-089,0х109,0', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('60.01.050-001.020', 1, 'ШП-068,0х052,5', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('22.25.050-001.030', 1, 'КТ32-50х40', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('40.33.050-001.010', 1, 'Птрб-057,0х054,0', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('51.01.050-001.010', 1, 'Пржн-050,6х042,0', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('60.01.050-001.010', 1, 'ШП-068,0х052,5', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('60.01.050-001.030', 1, 'ШП-068,0х052,5', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('41.31.050-001.010', 1, 'Крпс-089,0х109,0', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('41.31.050-001.020', 1, 'Крпс-089,0х109,0', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('60.01.050-001.011', 1, 'ШП-068,0х052,5', '2017-10-22', 'PRODUCIBLE');
INSERT INTO producible VALUES ('22.16.050-001.030', 1, 'КТ33-50х40', '2017-10-22', 'PRODUCIBLE');


SET search_path = mbom, pg_catalog;

--
-- TOC entry 3754 (class 0 OID 36683)
-- Dependencies: 228
-- Data for Name: consumable; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 3755 (class 0 OID 36691)
-- Dependencies: 229
-- Data for Name: definition; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 3807 (class 0 OID 0)
-- Dependencies: 230
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: mbom; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 18, true);


--
-- TOC entry 3757 (class 0 OID 36704)
-- Dependencies: 231
-- Data for Name: information; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 3808 (class 0 OID 0)
-- Dependencies: 232
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: mbom; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 20, true);


--
-- TOC entry 3753 (class 0 OID 36676)
-- Dependencies: 227
-- Data for Name: material; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 3759 (class 0 OID 36714)
-- Dependencies: 233
-- Data for Name: primal; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



SET search_path = operation, pg_catalog;

--
-- TOC entry 3761 (class 0 OID 36730)
-- Dependencies: 235
-- Data for Name: consumable; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3762 (class 0 OID 36738)
-- Dependencies: 236
-- Data for Name: definition; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3809 (class 0 OID 0)
-- Dependencies: 237
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 4, true);


--
-- TOC entry 3764 (class 0 OID 36751)
-- Dependencies: 238
-- Data for Name: dependency; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3765 (class 0 OID 36755)
-- Dependencies: 239
-- Data for Name: equipment; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3766 (class 0 OID 36761)
-- Dependencies: 240
-- Data for Name: information; Type: TABLE DATA; Schema: operation; Owner: postgres
--

INSERT INTO information VALUES (1, 'ef5e95b6-d24a-11e7-b8ee-d4bed939923a', 'information #1', '2017-11-26');
INSERT INTO information VALUES (2, 'ef5e982c-d24a-11e7-b8ef-d4bed939923a', 'information #2', '2017-11-26');
INSERT INTO information VALUES (3, 'ef5e985e-d24a-11e7-b8f0-d4bed939923a', 'information #3', '2017-11-26');
INSERT INTO information VALUES (4, 'ef5e987c-d24a-11e7-b8f1-d4bed939923a', 'information #4', '2017-11-26');


--
-- TOC entry 3810 (class 0 OID 0)
-- Dependencies: 241
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 4, true);


--
-- TOC entry 3760 (class 0 OID 36722)
-- Dependencies: 234
-- Data for Name: material; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3768 (class 0 OID 36771)
-- Dependencies: 242
-- Data for Name: personnel; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3769 (class 0 OID 36781)
-- Dependencies: 243
-- Data for Name: primal; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3770 (class 0 OID 36789)
-- Dependencies: 244
-- Data for Name: producible; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3771 (class 0 OID 36796)
-- Dependencies: 245
-- Data for Name: segment; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3811 (class 0 OID 0)
-- Dependencies: 246
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 1, false);


--
-- TOC entry 3773 (class 0 OID 36804)
-- Dependencies: 247
-- Data for Name: tooling; Type: TABLE DATA; Schema: operation; Owner: postgres
--



SET search_path = component, pg_catalog;

--
-- TOC entry 3516 (class 2606 OID 36854)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3518 (class 2606 OID 36856)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3514 (class 2606 OID 36858)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3812 (class 0 OID 0)
-- Dependencies: 3514
-- Name: CONSTRAINT information_pkey ON information; Type: COMMENT; Schema: component; Owner: postgres
--

COMMENT ON CONSTRAINT information_pkey ON information IS 'may be part_code + version_num + component_type';


--
-- TOC entry 3520 (class 2606 OID 36860)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_pkey PRIMARY KEY (part_code, version_num);


SET search_path = ebom, pg_catalog;

--
-- TOC entry 3524 (class 2606 OID 36862)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3526 (class 2606 OID 36864)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3522 (class 2606 OID 36866)
-- Name: component component_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY component
    ADD CONSTRAINT component_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3528 (class 2606 OID 36868)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 3530 (class 2606 OID 36870)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 3532 (class 2606 OID 36872)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3534 (class 2606 OID 36874)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 3536 (class 2606 OID 36876)
-- Name: information information_part_code_version_num_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_part_code_version_num_key UNIQUE (part_code, version_num);


--
-- TOC entry 3538 (class 2606 OID 36878)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3540 (class 2606 OID 36880)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_pkey PRIMARY KEY (definition_id, part_code);


SET search_path = material, pg_catalog;

--
-- TOC entry 3544 (class 2606 OID 36882)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3542 (class 2606 OID 36884)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (part_code, version_num, material_type);


--
-- TOC entry 3546 (class 2606 OID 36886)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3548 (class 2606 OID 36888)
-- Name: producible producible_pkey; Type: CONSTRAINT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY producible
    ADD CONSTRAINT producible_pkey PRIMARY KEY (part_code, version_num);


SET search_path = mbom, pg_catalog;

--
-- TOC entry 3552 (class 2606 OID 36890)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3554 (class 2606 OID 36892)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 3556 (class 2606 OID 36894)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 3558 (class 2606 OID 36896)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3560 (class 2606 OID 36898)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3550 (class 2606 OID 36900)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY material
    ADD CONSTRAINT material_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3562 (class 2606 OID 36902)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (definition_id, part_code);


SET search_path = operation, pg_catalog;

--
-- TOC entry 3566 (class 2606 OID 36904)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3568 (class 2606 OID 36906)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3570 (class 2606 OID 36908)
-- Name: definition definition_version_num_information_id_key; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_version_num_information_id_key UNIQUE (version_num, information_id);


--
-- TOC entry 3572 (class 2606 OID 36910)
-- Name: dependency dependency_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_pkey PRIMARY KEY (ancestor, descendant);


--
-- TOC entry 3574 (class 2606 OID 36912)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, equipment_code);


--
-- TOC entry 3576 (class 2606 OID 36914)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3564 (class 2606 OID 36916)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY material
    ADD CONSTRAINT material_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3578 (class 2606 OID 36918)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, personnel_code);


--
-- TOC entry 3580 (class 2606 OID 36920)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3582 (class 2606 OID 36922)
-- Name: producible producible_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY producible
    ADD CONSTRAINT producible_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 3584 (class 2606 OID 36924)
-- Name: segment segment_definition_id_operation_code_key; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_definition_id_operation_code_key UNIQUE (definition_id, operation_code);


--
-- TOC entry 3586 (class 2606 OID 36926)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 3588 (class 2606 OID 36928)
-- Name: tooling tooling_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY tooling
    ADD CONSTRAINT tooling_pkey PRIMARY KEY (segment_id, tooling_code);


SET search_path = ebom, pg_catalog;

--
-- TOC entry 3616 (class 2620 OID 36929)
-- Name: definition set_prev_doc_fsmt; Type: TRIGGER; Schema: ebom; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON definition FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 3589 (class 2606 OID 36930)
-- Name: assembly assembly_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id);


--
-- TOC entry 3590 (class 2606 OID 36935)
-- Name: assembly assembly_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES component.assembly(part_code, version_num);


--
-- TOC entry 3591 (class 2606 OID 36940)
-- Name: buyable buyable_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id);


--
-- TOC entry 3592 (class 2606 OID 36945)
-- Name: buyable buyable_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES component.buyable(part_code, version_num);


--
-- TOC entry 3593 (class 2606 OID 36950)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3594 (class 2606 OID 36955)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES component.assembly(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3595 (class 2606 OID 36960)
-- Name: part part_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id);


--
-- TOC entry 3596 (class 2606 OID 36965)
-- Name: part part_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES component.part(part_code, version_num);


SET search_path = mbom, pg_catalog;

--
-- TOC entry 3597 (class 2606 OID 36970)
-- Name: consumable consumable_definition_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id);


--
-- TOC entry 3598 (class 2606 OID 36975)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.consumable(part_code, version_num);


--
-- TOC entry 3599 (class 2606 OID 36980)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3600 (class 2606 OID 36985)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3601 (class 2606 OID 36990)
-- Name: primal primal_definition_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id);


--
-- TOC entry 3602 (class 2606 OID 36995)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.primal(part_code, version_num);


SET search_path = operation, pg_catalog;

--
-- TOC entry 3603 (class 2606 OID 37000)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3604 (class 2606 OID 37005)
-- Name: consumable consumable_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id);


--
-- TOC entry 3605 (class 2606 OID 37010)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3606 (class 2606 OID 37015)
-- Name: dependency dependency_ancestor_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_ancestor_fkey FOREIGN KEY (ancestor) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3607 (class 2606 OID 37020)
-- Name: dependency dependency_descendant_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_descendant_fkey FOREIGN KEY (descendant) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3608 (class 2606 OID 37025)
-- Name: equipment equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3609 (class 2606 OID 37030)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3610 (class 2606 OID 37035)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3611 (class 2606 OID 37040)
-- Name: primal primal_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3613 (class 2606 OID 37069)
-- Name: producible producible_information_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY producible
    ADD CONSTRAINT producible_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3612 (class 2606 OID 37050)
-- Name: producible producible_part_code_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY producible
    ADD CONSTRAINT producible_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3614 (class 2606 OID 37055)
-- Name: segment segment_definition_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3615 (class 2606 OID 37060)
-- Name: tooling tooling_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY tooling
    ADD CONSTRAINT tooling_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2017-11-29 18:04:44 EET

--
-- PostgreSQL database dump complete
--

