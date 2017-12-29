--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.6
-- Dumped by pg_dump version 9.6.6

-- Started on 2017-12-30 00:28:52 EET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 23 (class 2615 OID 51538)
-- Name: binding; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA binding;


ALTER SCHEMA binding OWNER TO postgres;

--
-- TOC entry 19 (class 2615 OID 50390)
-- Name: common; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA common;


ALTER SCHEMA common OWNER TO postgres;

--
-- TOC entry 24 (class 2615 OID 50391)
-- Name: component; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA component;


ALTER SCHEMA component OWNER TO postgres;

--
-- TOC entry 4163 (class 0 OID 0)
-- Dependencies: 24
-- Name: SCHEMA component; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA component IS 'components of ebom';


--
-- TOC entry 20 (class 2615 OID 50392)
-- Name: ebom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ebom;


ALTER SCHEMA ebom OWNER TO postgres;

--
-- TOC entry 4164 (class 0 OID 0)
-- Dependencies: 20
-- Name: SCHEMA ebom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA ebom IS 'engenering bill of materials';


--
-- TOC entry 13 (class 2615 OID 50393)
-- Name: inventory; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA inventory;


ALTER SCHEMA inventory OWNER TO postgres;

--
-- TOC entry 4165 (class 0 OID 0)
-- Dependencies: 13
-- Name: SCHEMA inventory; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA inventory IS 'inventory items definition';


--
-- TOC entry 11 (class 2615 OID 50394)
-- Name: material; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA material;


ALTER SCHEMA material OWNER TO postgres;

--
-- TOC entry 4166 (class 0 OID 0)
-- Dependencies: 11
-- Name: SCHEMA material; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA material IS 'materials of mbom';


--
-- TOC entry 8 (class 2615 OID 50395)
-- Name: mbom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA mbom;


ALTER SCHEMA mbom OWNER TO postgres;

--
-- TOC entry 4167 (class 0 OID 0)
-- Dependencies: 8
-- Name: SCHEMA mbom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA mbom IS 'manufacturing bill of materials';


--
-- TOC entry 14 (class 2615 OID 50396)
-- Name: operation; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA operation;


ALTER SCHEMA operation OWNER TO postgres;

--
-- TOC entry 4168 (class 0 OID 0)
-- Dependencies: 14
-- Name: SCHEMA operation; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA operation IS 'operation segments';


--
-- TOC entry 15 (class 2615 OID 50397)
-- Name: pgunit; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA pgunit;


ALTER SCHEMA pgunit OWNER TO postgres;

--
-- TOC entry 9 (class 2615 OID 51564)
-- Name: process; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA process;


ALTER SCHEMA process OWNER TO postgres;

--
-- TOC entry 10 (class 2615 OID 50398)
-- Name: product; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA product;


ALTER SCHEMA product OWNER TO postgres;

--
-- TOC entry 4169 (class 0 OID 0)
-- Dependencies: 10
-- Name: SCHEMA product; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA product IS 'process segments';


--
-- TOC entry 25 (class 2615 OID 50400)
-- Name: production; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA production;


ALTER SCHEMA production OWNER TO postgres;

--
-- TOC entry 4170 (class 0 OID 0)
-- Dependencies: 25
-- Name: SCHEMA production; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA production IS 'production segments';


--
-- TOC entry 21 (class 2615 OID 51714)
-- Name: route; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA route;


ALTER SCHEMA route OWNER TO postgres;

--
-- TOC entry 16 (class 2615 OID 50401)
-- Name: tests; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tests;


ALTER SCHEMA tests OWNER TO postgres;

--
-- TOC entry 1 (class 3079 OID 13343)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 4172 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 5 (class 3079 OID 50402)
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- TOC entry 4173 (class 0 OID 0)
-- Dependencies: 5
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- TOC entry 4 (class 3079 OID 50577)
-- Name: pldbgapi; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pldbgapi WITH SCHEMA public;


--
-- TOC entry 4174 (class 0 OID 0)
-- Dependencies: 4
-- Name: EXTENSION pldbgapi; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pldbgapi IS 'server-side support for debugging PL/pgSQL functions';


--
-- TOC entry 3 (class 3079 OID 50614)
-- Name: plpgsql_check; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql_check WITH SCHEMA public;


--
-- TOC entry 4175 (class 0 OID 0)
-- Dependencies: 3
-- Name: EXTENSION plpgsql_check; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql_check IS 'extended check for plpgsql functions';


--
-- TOC entry 2 (class 3079 OID 50619)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- TOC entry 4176 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET search_path = common, pg_catalog;

--
-- TOC entry 908 (class 1247 OID 50631)
-- Name: component_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE component_kind AS ENUM (
    'ASSEMBLY',
    'PART',
    'BUYABLE'
);


ALTER TYPE component_kind OWNER TO postgres;

--
-- TOC entry 911 (class 1247 OID 50637)
-- Name: quantity; Type: DOMAIN; Schema: common; Owner: postgres
--

CREATE DOMAIN quantity AS numeric(20,4) DEFAULT 0
	CONSTRAINT quantity_is_positive CHECK ((VALUE >= (0)::numeric));


ALTER DOMAIN quantity OWNER TO postgres;

--
-- TOC entry 4177 (class 0 OID 0)
-- Dependencies: 911
-- Name: DOMAIN quantity; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON DOMAIN quantity IS 'quantity domain';


--
-- TOC entry 913 (class 1247 OID 50641)
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
-- TOC entry 916 (class 1247 OID 50643)
-- Name: material_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE material_kind AS ENUM (
    'CONSUMABLE',
    'PRODUCIBLE',
    'PRIMAL'
);


ALTER TYPE material_kind OWNER TO postgres;

--
-- TOC entry 919 (class 1247 OID 50651)
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
-- TOC entry 922 (class 1247 OID 50654)
-- Name: dependency_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE dependency_specification AS (
	ancestor bigint,
	descendant bigint,
	depth integer
);


ALTER TYPE dependency_specification OWNER TO postgres;

--
-- TOC entry 925 (class 1247 OID 50657)
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
-- TOC entry 928 (class 1247 OID 50659)
-- Name: document_fsmt; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE document_fsmt AS ENUM (
    'PROPOSED',
    'COMMITTED',
    'DECOMMITTED'
);


ALTER TYPE document_fsmt OWNER TO postgres;

--
-- TOC entry 931 (class 1247 OID 50666)
-- Name: document_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE document_kind AS ENUM (
    'EBOM',
    'MBOM',
    'OPERATION',
    'PRODUCT',
    'PROCESS',
    'REQUEST',
    'RESPONSE',
    'ROUTE'
);


ALTER TYPE document_kind OWNER TO postgres;

--
-- TOC entry 934 (class 1247 OID 50683)
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
-- TOC entry 937 (class 1247 OID 50686)
-- Name: ebom_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE ebom_document AS (
	head ebom_head,
	body component_specification[]
);


ALTER TYPE ebom_document OWNER TO postgres;

--
-- TOC entry 940 (class 1247 OID 50689)
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
-- TOC entry 943 (class 1247 OID 50691)
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
-- TOC entry 1172 (class 1247 OID 51574)
-- Name: inventory_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE inventory_specification AS (
	part_code character varying,
	version_num integer,
	quantity quantity,
	uom_code character varying,
	inventory_type inventory_kind
);


ALTER TYPE inventory_specification OWNER TO postgres;

--
-- TOC entry 946 (class 1247 OID 50709)
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
-- TOC entry 949 (class 1247 OID 50712)
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
-- TOC entry 952 (class 1247 OID 50715)
-- Name: mbom_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE mbom_document AS (
	head mbom_head,
	body material_specification[]
);


ALTER TYPE mbom_document OWNER TO postgres;

--
-- TOC entry 955 (class 1247 OID 50718)
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
-- TOC entry 958 (class 1247 OID 50721)
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
-- TOC entry 961 (class 1247 OID 50724)
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
-- TOC entry 964 (class 1247 OID 50727)
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
-- TOC entry 967 (class 1247 OID 50730)
-- Name: operation_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE operation_document AS (
	head operation_head,
	body operation_segment[],
	deps dependency_specification[]
);


ALTER TYPE operation_document OWNER TO postgres;

--
-- TOC entry 970 (class 1247 OID 50732)
-- Name: process_segment_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE process_segment_kind AS ENUM (
    'PROCESS',
    'PRODUCTION',
    'MOVEMENT',
    'INSPECTION',
    'OPERATION'
);


ALTER TYPE process_segment_kind OWNER TO postgres;

--
-- TOC entry 1169 (class 1247 OID 51570)
-- Name: product_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE product_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	version_num integer,
	document_date date,
	curr_fsmt document_fsmt,
	document_type document_kind,
	salable_spec inventory_specification
);


ALTER TYPE product_head OWNER TO postgres;

--
-- TOC entry 1175 (class 1247 OID 51577)
-- Name: product_segment; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE product_segment AS (
	gid uuid,
	duration interval,
	consumable_spec consumable_specification[],
	personnel_spec personnel_specification[],
	equipmet_spec equipment_specification[],
	tooling_spec tooling_specification[]
);


ALTER TYPE product_segment OWNER TO postgres;

--
-- TOC entry 1178 (class 1247 OID 51580)
-- Name: product_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE product_document AS (
	head product_head,
	body product_segment[],
	deps dependency_specification[]
);


ALTER TYPE product_document OWNER TO postgres;

--
-- TOC entry 1208 (class 1247 OID 51818)
-- Name: route_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE route_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	version_num integer,
	document_date date,
	curr_fsmt document_fsmt,
	document_type document_kind,
	descendant_spec material_specification
);


ALTER TYPE route_head OWNER TO postgres;

--
-- TOC entry 1211 (class 1247 OID 51833)
-- Name: route_segment; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE route_segment AS (
	descendant_spec material_specification,
	ancestor_spec material_specification[],
	location_spec character varying[]
);


ALTER TYPE route_segment OWNER TO postgres;

--
-- TOC entry 1214 (class 1247 OID 51836)
-- Name: route_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE route_document AS (
	head route_head,
	body route_segment[]
);


ALTER TYPE route_document OWNER TO postgres;

--
-- TOC entry 419 (class 1255 OID 50743)
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
-- TOC entry 420 (class 1255 OID 50744)
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
-- TOC entry 421 (class 1255 OID 50745)
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
-- TOC entry 422 (class 1255 OID 50746)
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
-- TOC entry 423 (class 1255 OID 50747)
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
-- TOC entry 424 (class 1255 OID 50748)
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
-- TOC entry 405 (class 1255 OID 50749)
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
-- TOC entry 406 (class 1255 OID 50750)
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
-- TOC entry 425 (class 1255 OID 50751)
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
-- TOC entry 426 (class 1255 OID 50752)
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
-- TOC entry 427 (class 1255 OID 50753)
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
-- TOC entry 428 (class 1255 OID 50754)
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
-- TOC entry 429 (class 1255 OID 50755)
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
-- TOC entry 430 (class 1255 OID 50756)
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
-- TOC entry 431 (class 1255 OID 50757)
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
-- TOC entry 432 (class 1255 OID 50758)
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
-- TOC entry 433 (class 1255 OID 50759)
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
-- TOC entry 434 (class 1255 OID 50760)
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
-- TOC entry 435 (class 1255 OID 50761)
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
-- TOC entry 436 (class 1255 OID 50762)
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
-- TOC entry 437 (class 1255 OID 50763)
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
-- TOC entry 438 (class 1255 OID 50764)
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
-- TOC entry 439 (class 1255 OID 50765)
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
-- TOC entry 440 (class 1255 OID 50766)
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
-- TOC entry 441 (class 1255 OID 50767)
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
-- TOC entry 442 (class 1255 OID 50768)
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
-- TOC entry 443 (class 1255 OID 50769)
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
-- TOC entry 444 (class 1255 OID 50770)
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
-- TOC entry 445 (class 1255 OID 50771)
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
-- TOC entry 446 (class 1255 OID 50772)
-- Name: get_body(bigint); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION get_body(__document_id bigint) RETURNS common.operation_segment[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY(
      SELECT 
        operation.get_segment(segment.id)
      FROM 
        operation.segment
      WHERE 
        segment.definition_id = __document_id
    );
END
$$;


ALTER FUNCTION operation.get_body(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 447 (class 1255 OID 50773)
-- Name: get_consumable_spec(bigint); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION get_consumable_spec(__segment_id bigint) RETURNS common.consumable_specification[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (material.part_code, 
        material.version_num, 
        material.quantity, 
        material.uom_code, 
        material.material_type, 
        material.rationing_qty)::common.consumable_specification
      FROM 
        operation.material
      WHERE 
        material.segment_id = __segment_id
    );
END
$$;


ALTER FUNCTION operation.get_consumable_spec(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 448 (class 1255 OID 50774)
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
-- TOC entry 449 (class 1255 OID 50775)
-- Name: get_equipment_spec(bigint); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION get_equipment_spec(__segment_id bigint) RETURNS common.equipment_specification[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (equipment.equipment_code, 
        equipment.version_num, 
        equipment.quantity, 
        equipment.uom_code)::common.equipment_specification
      FROM 
        operation.equipment
      WHERE 
        equipment.segment_id = __segment_id
    );
END
$$;


ALTER FUNCTION operation.get_equipment_spec(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 450 (class 1255 OID 50776)
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
-- TOC entry 451 (class 1255 OID 50777)
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
      (information.part_code, 
      information.version_num, 
      1.0::common.quantity, 
      'pcs', 
      'PRODUCIBLE')::common.material_specification
    )::common.operation_head
  FROM
    operation.information, 
    operation.definition
  WHERE
    information.id = definition.information_id AND
    definition.id = __document_id;
END;
$$;


ALTER FUNCTION operation.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 452 (class 1255 OID 50778)
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

--
-- TOC entry 453 (class 1255 OID 50779)
-- Name: get_personnel_spec(bigint); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION get_personnel_spec(__segment_id bigint) RETURNS common.personnel_specification[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (personnel.personnel_code, 
        personnel.version_num, 
        personnel.rationing_qty, 
        personnel.batch_qty, 
        personnel.workers_qty, 
        personnel.setup_time, 
        personnel.piece_time)::common.personnel_specification
      FROM 
        operation.personnel
      WHERE 
        personnel.segment_id = __segment_id
    );
END
$$;


ALTER FUNCTION operation.get_personnel_spec(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 454 (class 1255 OID 50780)
-- Name: get_segment(bigint); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION get_segment(__segment_id bigint) RETURNS common.operation_segment
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN

      --SELECT 
        (segment.gid,
        segment.operation_code,
        operation.get_consumable_spec(__segment_id := __segment_id),
        operation.get_personnel_spec(__segment_id := __segment_id),
        operation.get_equipment_spec(__segment_id := __segment_id),
        operation.get_tooling_spec(__segment_id := __segment_id))::common.operation_segment
      FROM 
        operation.segment
      WHERE 
        segment.id = __segment_id;
    --;
END
$$;


ALTER FUNCTION operation.get_segment(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 455 (class 1255 OID 50781)
-- Name: get_tooling_spec(bigint); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION get_tooling_spec(__segment_id bigint) RETURNS common.tooling_specification[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (tooling.tooling_code, 
        tooling.version_num, 
        tooling.quantity, 
        tooling.uom_code)::common.tooling_specification
      FROM 
        operation.tooling
      WHERE 
        tooling.segment_id = __segment_id
    );
END
$$;


ALTER FUNCTION operation.get_tooling_spec(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 456 (class 1255 OID 50782)
-- Name: init(common.operation_head, common.operation_segment[], common.dependency_specification[]); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION init(__head common.operation_head, __body common.operation_segment[], __deps common.dependency_specification[]) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _information_id bigint;
  _definition_id bigint;
  _max_version_num integer;
  _segment_id bigint;
  _seg common.operation_segment;
  _dep common.dependency_specification;
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
    operation.information, 
    operation.definition
  WHERE 
    information.id = definition.information_id AND
    information.part_code = (__head.producible_spec).part_code AND 
    information.version_num = (__head.producible_spec).version_num
  INTO
    _max_version_num;

  IF (_max_version_num IS NULL) THEN
    _max_version_num := 0;

    INSERT INTO
      operation.information (
        id,
        display_name,
        published_date,
        part_code,
        version_num)
    VALUES (
      DEFAULT,
      __head.display_name,
      __head.document_date,
      (__head.producible_spec).part_code,
      (__head.producible_spec).version_num)
    RETURNING id INTO _information_id;
  ELSE
    SELECT
      id
    FROM
      operation.information
    WHERE
      information.part_code = (__head.producible_spec).part_code AND 
      information.version_num = (__head.producible_spec).version_num
    INTO
      _information_id;

  END IF;

  INSERT INTO
    operation.definition (
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

  FOREACH _seg IN
    ARRAY __body
  LOOP
    INSERT INTO
      operation.segment (
        id,
        gid,
        definition_id,
        operation_code)
    VALUES (
      DEFAULT,
      _seg.gid,
      _definition_id,
      _seg.operation_code)
    RETURNING id INTO _segment_id;
    PERFORM operation.set_consumable_spec(_segment_id, _seg.consumable_spec);
    PERFORM operation.set_personnel_spec(_segment_id, _seg.personnel_spec);
    PERFORM operation.set_equipment_spec(_segment_id, _seg.equipmet_spec);
    PERFORM operation.set_tooling_spec(_segment_id, _seg.tooling_spec);
  END LOOP;

  FOREACH _dep IN
    ARRAY __deps
  LOOP
    INSERT INTO
      operation.dependency (
        ancestor,
        descendant,
        depth)
    VALUES (
      _item.ancestor,
      _item.descendant,
      _item.depth);
  END LOOP;

  RETURN _definition_id;

END;
$$;


ALTER FUNCTION operation.init(__head common.operation_head, __body common.operation_segment[], __deps common.dependency_specification[]) OWNER TO postgres;

--
-- TOC entry 457 (class 1255 OID 50783)
-- Name: reinit(bigint, common.operation_segment[], common.dependency_specification[]); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION reinit(__document_id bigint, __body common.operation_segment[], __deps common.dependency_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _segment_id bigint;
  _seg common.operation_segment;
  _dep common.dependency_specification;
BEGIN

  DELETE FROM
    operation.segment
  WHERE
    definition_id = __document_id;

  FOREACH _seg IN
    ARRAY __body
  LOOP
    INSERT INTO
      operation.segment (
        id,
        gid,
        definition_id,
        operation_code)
    VALUES (
      DEFAULT,
      _seg.gid,
      __document_id,
      _seg.operation_code)
    RETURNING id INTO _segment_id;
    PERFORM operation.set_consumable_spec(_segment_id, _seg.consumable_spec);
    PERFORM operation.set_personnel_spec(_segment_id, _seg.personnel_spec);
    PERFORM operation.set_equipment_spec(_segment_id, _seg.equipmet_spec);
    PERFORM operation.set_tooling_spec(_segment_id, _seg.tooling_spec);
  END LOOP;

  FOREACH _dep IN
    ARRAY __deps
  LOOP
    INSERT INTO
      operation.dependency (
        ancestor,
        descendant,
        depth)
    VALUES (
      _item.ancestor,
      _item.descendant,
      _item.depth);
  END LOOP;

END;
$$;


ALTER FUNCTION operation.reinit(__document_id bigint, __body common.operation_segment[], __deps common.dependency_specification[]) OWNER TO postgres;

--
-- TOC entry 458 (class 1255 OID 50784)
-- Name: set_consumable_spec(bigint, common.consumable_specification[]); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION set_consumable_spec(__segment_id bigint, __material common.consumable_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.consumable_specification;
BEGIN

  FOREACH _item IN
    ARRAY __material
  LOOP
    IF (_item.material_type = 'PRIMAL') THEN
      INSERT INTO
        operation.primal (
          segment_id,
          part_code,
          version_num,
          quantity,
          uom_code,
          material_type,
          rationing_qty)
      VALUES (
        __segment_id,
        _item.part_code,
        _item.version_num,
        _item.quantity,
        _item.uom_code,
        _item.material_type,
        _item.rationing_qty);

    ELSIF (_item.material_type = 'CONSUMABLE') THEN
      INSERT INTO
        operation.consumable (
          segment_id,
          part_code,
          version_num,
          quantity,
          uom_code,
          material_type,
          rationing_qty)
      VALUES (
        __segment_id,
        _item.part_code,
        _item.version_num,
        _item.quantity,
        _item.uom_code,
        _item.material_type,
        _item.rationing_qty);
      
    ELSE
      RAISE EXCEPTION '% unknown material_type', _item;
    END IF;
  END LOOP;

END;
$$;


ALTER FUNCTION operation.set_consumable_spec(__segment_id bigint, __material common.consumable_specification[]) OWNER TO postgres;

--
-- TOC entry 459 (class 1255 OID 50785)
-- Name: set_equipment_spec(bigint, common.equipment_specification[]); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION set_equipment_spec(__segment_id bigint, __equipment common.equipment_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.equipment_specification;
BEGIN

  FOREACH _item IN
    ARRAY __equipment
  LOOP
    INSERT INTO
      operation.equipment (
        segment_id,
        equipment_code,
        version_num,
        quantity,
        uom_code)
    VALUES (
      __segment_id,
      _item.equipment_code,
      _item.version_num,
      _item.quantity,
      _item.uom_code);
  END LOOP;

END;
$$;


ALTER FUNCTION operation.set_equipment_spec(__segment_id bigint, __equipment common.equipment_specification[]) OWNER TO postgres;

--
-- TOC entry 460 (class 1255 OID 50786)
-- Name: set_personnel_spec(bigint, common.personnel_specification[]); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION set_personnel_spec(__segment_id bigint, __personnel common.personnel_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.personnel_specification;
BEGIN

  FOREACH _item IN
    ARRAY __personnel
  LOOP
    INSERT INTO
      operation.personnel (
        segment_id,
        personnel_code,
        version_num,
        rationing_qty,
        batch_qty,
        workers_qty,
        setup_time,
        piece_time)
    VALUES (
      __segment_id,
      _item.personnel_code,
      _item.version_num,
      _item.rationing_qty,
      _item.batch_qty,
      _item.worker_qty,
      _item.setup_time,
      _item.piece_time);
  END LOOP;

END;
$$;


ALTER FUNCTION operation.set_personnel_spec(__segment_id bigint, __personnel common.personnel_specification[]) OWNER TO postgres;

--
-- TOC entry 461 (class 1255 OID 50787)
-- Name: set_tooling_spec(bigint, common.tooling_specification[]); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION set_tooling_spec(__segment_id bigint, __tooling common.tooling_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.tooling_specification;
BEGIN

  FOREACH _item IN
    ARRAY __tooling
  LOOP
    INSERT INTO
      operation.tooling (
        segment_id,
        tooling_code,
        version_num,
        quantity,
        uom_code)
    VALUES (
      __segment_id,
      _item.tooling_code,
      _item.version_num,
      _item.quantity,
      _item.uom_code);
  END LOOP;

END;
$$;


ALTER FUNCTION operation.set_tooling_spec(__segment_id bigint, __tooling common.tooling_specification[]) OWNER TO postgres;

SET search_path = pgunit, pg_catalog;

--
-- TOC entry 462 (class 1255 OID 50788)
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
-- TOC entry 463 (class 1255 OID 50789)
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
-- TOC entry 464 (class 1255 OID 50790)
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
-- TOC entry 465 (class 1255 OID 50791)
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
-- TOC entry 466 (class 1255 OID 50792)
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
-- TOC entry 467 (class 1255 OID 50793)
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
-- TOC entry 468 (class 1255 OID 50794)
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
-- TOC entry 469 (class 1255 OID 50795)
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
-- TOC entry 470 (class 1255 OID 50796)
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
-- TOC entry 471 (class 1255 OID 50797)
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
-- TOC entry 472 (class 1255 OID 50798)
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
-- TOC entry 473 (class 1255 OID 50799)
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
-- TOC entry 474 (class 1255 OID 50800)
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
-- TOC entry 475 (class 1255 OID 50801)
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
-- TOC entry 476 (class 1255 OID 50802)
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
-- TOC entry 477 (class 1255 OID 50803)
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

SET search_path = product, pg_catalog;

--
-- TOC entry 499 (class 1255 OID 51567)
-- Name: destroy(bigint); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM product.definition WHERE id = __document_id;
END;
$$;


ALTER FUNCTION product.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 513 (class 1255 OID 51594)
-- Name: get_body(bigint); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION get_body(__document_id bigint) RETURNS common.product_segment[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY(
      SELECT 
        product.get_segment(segment.id)
      FROM 
        product.segment
      WHERE 
        segment.definition_id = __document_id
    );
END
$$;


ALTER FUNCTION product.get_body(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 512 (class 1255 OID 51593)
-- Name: get_consumable_spec(bigint); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION get_consumable_spec(__segment_id bigint) RETURNS common.consumable_specification[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (material.part_code, 
        material.version_num, 
        material.quantity, 
        material.uom_code, 
        material.material_type, 
        material.rationing_qty)::common.consumable_specification
      FROM 
        product.material
      WHERE 
        material.segment_id = __segment_id
    );
END
$$;


ALTER FUNCTION product.get_consumable_spec(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 511 (class 1255 OID 51592)
-- Name: get_deps(bigint); Type: FUNCTION; Schema: product; Owner: postgres
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
        product.dependency, 
        product.segment
      WHERE 
        segment.id = dependency.ancestor AND
        segment.definition_id = __document_id
    );
END
$$;


ALTER FUNCTION product.get_deps(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 510 (class 1255 OID 51591)
-- Name: get_equipment_spec(bigint); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION get_equipment_spec(__segment_id bigint) RETURNS common.equipment_specification[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (equipment.equipment_code, 
        equipment.version_num, 
        equipment.quantity, 
        equipment.uom_code)::common.equipment_specification
      FROM 
        product.equipment
      WHERE 
        equipment.segment_id = __segment_id
    );
END
$$;


ALTER FUNCTION product.get_equipment_spec(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 497 (class 1255 OID 51565)
-- Name: get_gid_by_id(bigint); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION get_gid_by_id(__document_id bigint) RETURNS uuid
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN gid
    FROM
      product.definition
    WHERE
      id = __document_id;
END;
$$;


ALTER FUNCTION product.get_gid_by_id(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 500 (class 1255 OID 51571)
-- Name: get_head(bigint); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION get_head(__document_id bigint) RETURNS common.product_head
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
    'PRODUCT'::common.document_kind,
      (information.part_code, 
      information.version_num, 
      1.0::common.quantity, 
      'pcs', 
      'SALABLE')::common.inventory_specification
    )::common.product_head
  FROM
    product.information, 
    product.definition
  WHERE
    information.id = definition.information_id AND
    definition.id = __document_id;
END;
$$;


ALTER FUNCTION product.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 498 (class 1255 OID 51566)
-- Name: get_id_by_gid(uuid); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION get_id_by_gid(__document_gid uuid) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN id
    FROM
      product.definition
    WHERE
      gid = __document_gid;
END;
$$;


ALTER FUNCTION product.get_id_by_gid(__document_gid uuid) OWNER TO postgres;

--
-- TOC entry 509 (class 1255 OID 51590)
-- Name: get_personnel_spec(bigint); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION get_personnel_spec(__segment_id bigint) RETURNS common.personnel_specification[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (personnel.personnel_code, 
        personnel.version_num, 
        personnel.rationing_qty, 
        personnel.batch_qty, 
        personnel.workers_qty, 
        personnel.setup_time, 
        personnel.piece_time)::common.personnel_specification
      FROM 
        product.personnel
      WHERE 
        personnel.segment_id = __segment_id
    );
END
$$;


ALTER FUNCTION product.get_personnel_spec(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 508 (class 1255 OID 51589)
-- Name: get_segment(bigint); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION get_segment(__segment_id bigint) RETURNS common.product_segment
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN

      --SELECT 
        (segment.gid,
        segment.product_code,
        product.get_consumable_spec(__segment_id := __segment_id),
        product.get_personnel_spec(__segment_id := __segment_id),
        product.get_equipment_spec(__segment_id := __segment_id),
        product.get_tooling_spec(__segment_id := __segment_id))::common.product_segment
      FROM 
        product.segment
      WHERE 
        segment.id = __segment_id;
    --;
END
$$;


ALTER FUNCTION product.get_segment(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 507 (class 1255 OID 51588)
-- Name: get_tooling_spec(bigint); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION get_tooling_spec(__segment_id bigint) RETURNS common.tooling_specification[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (tooling.tooling_code, 
        tooling.version_num, 
        tooling.quantity, 
        tooling.uom_code)::common.tooling_specification
      FROM 
        product.tooling
      WHERE 
        tooling.segment_id = __segment_id
    );
END
$$;


ALTER FUNCTION product.get_tooling_spec(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 501 (class 1255 OID 51582)
-- Name: init(common.product_head, common.product_segment[], common.dependency_specification[]); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION init(__head common.product_head, __body common.product_segment[], __deps common.dependency_specification[]) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.product_segment;
BEGIN

  /*
  if body is null, then generate body
  1) собрать список вариантов маршрута
  2) проверить есть ли уже определение продукта, испоьзующее маршрут

  */

  IF (__body IS NULL) THEN
    __body := product.generate(__part_code, __version_num);
  END IF;
  RETURN 1::bigint;

END;
$$;


ALTER FUNCTION product.init(__head common.product_head, __body common.product_segment[], __deps common.dependency_specification[]) OWNER TO postgres;

--
-- TOC entry 502 (class 1255 OID 51583)
-- Name: reinit(bigint, common.product_segment[], common.dependency_specification[]); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION reinit(__document_id bigint, __body common.product_segment[], __deps common.dependency_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.product_segment;
BEGIN


END;
$$;


ALTER FUNCTION product.reinit(__document_id bigint, __body common.product_segment[], __deps common.dependency_specification[]) OWNER TO postgres;

--
-- TOC entry 506 (class 1255 OID 51587)
-- Name: set_consumable_spec(bigint, common.consumable_specification[]); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION set_consumable_spec(__segment_id bigint, __material common.consumable_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.consumable_specification;
BEGIN

  FOREACH _item IN
    ARRAY __material
  LOOP
    IF (_item.material_type = 'PRIMAL') THEN
      INSERT INTO
        product.primal (
          segment_id,
          part_code,
          version_num,
          quantity,
          uom_code,
          material_type,
          rationing_qty)
      VALUES (
        __segment_id,
        _item.part_code,
        _item.version_num,
        _item.quantity,
        _item.uom_code,
        _item.material_type,
        _item.rationing_qty);

    ELSIF (_item.material_type = 'CONSUMABLE') THEN
      INSERT INTO
        product.consumable (
          segment_id,
          part_code,
          version_num,
          quantity,
          uom_code,
          material_type,
          rationing_qty)
      VALUES (
        __segment_id,
        _item.part_code,
        _item.version_num,
        _item.quantity,
        _item.uom_code,
        _item.material_type,
        _item.rationing_qty);
      
    ELSE
      RAISE EXCEPTION '% unknown material_type', _item;
    END IF;
  END LOOP;

END;
$$;


ALTER FUNCTION product.set_consumable_spec(__segment_id bigint, __material common.consumable_specification[]) OWNER TO postgres;

--
-- TOC entry 505 (class 1255 OID 51586)
-- Name: set_equipment_spec(bigint, common.equipment_specification[]); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION set_equipment_spec(__segment_id bigint, __equipment common.equipment_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.equipment_specification;
BEGIN

  FOREACH _item IN
    ARRAY __equipment
  LOOP
    INSERT INTO
      product.equipment (
        segment_id,
        equipment_code,
        version_num,
        quantity,
        uom_code)
    VALUES (
      __segment_id,
      _item.equipment_code,
      _item.version_num,
      _item.quantity,
      _item.uom_code);
  END LOOP;

END;
$$;


ALTER FUNCTION product.set_equipment_spec(__segment_id bigint, __equipment common.equipment_specification[]) OWNER TO postgres;

--
-- TOC entry 504 (class 1255 OID 51585)
-- Name: set_personnel_spec(bigint, common.personnel_specification[]); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION set_personnel_spec(__segment_id bigint, __personnel common.personnel_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.personnel_specification;
BEGIN

  FOREACH _item IN
    ARRAY __personnel
  LOOP
    INSERT INTO
      product.personnel (
        segment_id,
        personnel_code,
        version_num,
        rationing_qty,
        batch_qty,
        workers_qty,
        setup_time,
        piece_time)
    VALUES (
      __segment_id,
      _item.personnel_code,
      _item.version_num,
      _item.rationing_qty,
      _item.batch_qty,
      _item.worker_qty,
      _item.setup_time,
      _item.piece_time);
  END LOOP;

END;
$$;


ALTER FUNCTION product.set_personnel_spec(__segment_id bigint, __personnel common.personnel_specification[]) OWNER TO postgres;

--
-- TOC entry 503 (class 1255 OID 51584)
-- Name: set_tooling_spec(bigint, common.tooling_specification[]); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION set_tooling_spec(__segment_id bigint, __tooling common.tooling_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.tooling_specification;
BEGIN

  FOREACH _item IN
    ARRAY __tooling
  LOOP
    INSERT INTO
      product.tooling (
        segment_id,
        tooling_code,
        version_num,
        quantity,
        uom_code)
    VALUES (
      __segment_id,
      _item.tooling_code,
      _item.version_num,
      _item.quantity,
      _item.uom_code);
  END LOOP;

END;
$$;


ALTER FUNCTION product.set_tooling_spec(__segment_id bigint, __tooling common.tooling_specification[]) OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 478 (class 1255 OID 50804)
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

SET search_path = route, pg_catalog;

--
-- TOC entry 516 (class 1255 OID 51803)
-- Name: destroy(bigint); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM route.definition WHERE id = __document_id;
END;
$$;


ALTER FUNCTION route.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 519 (class 1255 OID 51825)
-- Name: get_ancestor_spec(bigint); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION get_ancestor_spec(__document_id bigint) RETURNS common.material_specification[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY(
      SELECT 
        (segment.ancestor_part_code, 
        segment.ancestor_version_num,
        1,
        'pcs',
        segment.ancestor_material_type)::common.material_specification
      FROM 
        route.segment
      WHERE 
        segment.definition_id = __document_id
    );
END
$$;


ALTER FUNCTION route.get_ancestor_spec(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 495 (class 1255 OID 51837)
-- Name: get_body(bigint); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION get_body(__document_id bigint) RETURNS common.route_segment
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ((information.part_code, 
    information.version_num,
    1.0,
    'pcs',
    'PRODUCIBLE')::common.material_specification,
    route.get_ancestor_spec(__document_id := __document_id),
    route.get_location_spec(__document_id := __document_id))::common.route_segment
  FROM 
    route.definition, 
    route.information
  WHERE 
    information.id = definition.information_id AND
    definition.id = __document_id;
END
$$;


ALTER FUNCTION route.get_body(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 515 (class 1255 OID 51802)
-- Name: get_gid_by_id(bigint); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION get_gid_by_id(__document_id bigint) RETURNS uuid
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN gid
    FROM
      route.definition
    WHERE
      id = __document_id;
END;
$$;


ALTER FUNCTION route.get_gid_by_id(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 517 (class 1255 OID 51822)
-- Name: get_head(bigint); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION get_head(__document_id bigint) RETURNS common.route_head
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
    'ROUTE'::common.document_kind,
    (information.part_code, information.version_num, 1, 'pcs', 'PRODUCIBLE')::common.material_specification
    )::common.route_head
  FROM
    route.definition,
    route.information
  WHERE
    information.id = definition.information_id AND
    definition.id = __document_id;
END;
$$;


ALTER FUNCTION route.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 514 (class 1255 OID 51801)
-- Name: get_id_by_gid(uuid); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION get_id_by_gid(__document_gid uuid) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN id
    FROM
      route.definition
    WHERE
      gid = __document_gid;
END;
$$;


ALTER FUNCTION route.get_id_by_gid(__document_gid uuid) OWNER TO postgres;

--
-- TOC entry 518 (class 1255 OID 51827)
-- Name: get_location_spec(bigint); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION get_location_spec(__document_id bigint) RETURNS character varying[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY (
      SELECT 
        location.location_code
      FROM 
        route.location
      WHERE 
        location.definition_id = __document_id
    );
END
$$;


ALTER FUNCTION route.get_location_spec(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 520 (class 1255 OID 51841)
-- Name: init(common.route_head, common.route_segment); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION init(__head common.route_head, __body common.route_segment) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.material_specification;
  _definition_id bigint;
  _information_id bigint;
  _max_version_num integer;
  _location character varying;
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
    route.information, 
    route.definition
  WHERE 
    information.id = definition.information_id AND
    information.part_code = (__head.descendant_spec).part_code AND 
    information.version_num = (__head.descendant_spec).version_num
  INTO
    _max_version_num;

  IF (_max_version_num IS NULL) THEN
    _max_version_num := 0;

    INSERT INTO
      route.information (
        id,
        display_name,
        published_date,
        part_code,
        version_num)
    VALUES (
      DEFAULT,
      __head.display_name,
      __head.document_date,
      (__head.descendant_spec).part_code,
      (__head.descendant_spec).version_num)
    RETURNING id INTO _information_id;
  ELSE
    SELECT
      id
    FROM
      route.information
    WHERE
      information.part_code = (__head.descendant_spec).part_code AND 
      information.version_num = (__head.descendant_spec).version_num
    INTO
      _information_id;

  END IF;

  INSERT INTO
    route.definition (
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
    ARRAY __body.ancestor_spec
  LOOP
  IF (_item.material_type = 'CONSUMABLE') THEN
    INSERT INTO
      route.consumable (
        definition_id,
        descendant_part_code,
        descendant_version_num,
        ancestor_part_code,
        ancestor_version_num,
        ancestor_material_type)
    VALUES (
      _definition_id,
      (__head.descendant_spec).part_code,
      (__head.descendant_spec).version_num,
      _item.part_code,
      _item.version_num,
      _item.material_type);
  ELSIF (_item.material_type = 'PRIMAL') THEN
    INSERT INTO
      route.primal (
        definition_id,
        descendant_part_code,
        descendant_version_num,
        ancestor_part_code,
        ancestor_version_num,
        ancestor_material_type)
    VALUES (
      _definition_id,
      (__head.descendant_spec).part_code,
      (__head.descendant_spec).version_num,
      _item.part_code,
      _item.version_num,
      _item.material_type);
    ELSE
      RAISE EXCEPTION '% unknown material_type', _item;
    END IF;
  END LOOP;

  FOREACH _location IN
    ARRAY __body.location_spec
  LOOP
  INSERT INTO
    route.location (
      definition_id,
      location_code)
  VALUES (
    _definition_id,
    _location);
  END LOOP;

  RETURN _definition_id;

END;
$$;


ALTER FUNCTION route.init(__head common.route_head, __body common.route_segment) OWNER TO postgres;

--
-- TOC entry 521 (class 1255 OID 51936)
-- Name: reinit(bigint, common.route_segment); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION reinit(__document_id bigint, __body common.route_segment) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.material_specification;
  _location character varying;
  _head common.route_head; 
BEGIN

  DELETE FROM
    route.segment
  WHERE
    definition_id = __document_id;

  DELETE FROM
    route.location
  WHERE
    definition_id = __document_id;

  _head := route.get_head(__document_id);

  FOREACH _item IN
    ARRAY __body.ancestor_spec
  LOOP
  IF (_item.material_type = 'CONSUMABLE') THEN
    INSERT INTO
      route.consumable (
        definition_id,
        descendant_part_code,
        descendant_version_num,
        ancestor_part_code,
        ancestor_version_num,
        ancestor_material_type)
    VALUES (
      __document_id,
      (_head.descendant_spec).part_code,
      (_head.descendant_spec).version_num,
      _item.part_code,
      _item.version_num,
      _item.material_type);
  ELSIF (_item.material_type = 'PRIMAL') THEN
    INSERT INTO
      route.primal (
        definition_id,
        descendant_part_code,
        descendant_version_num,
        ancestor_part_code,
        ancestor_version_num,
        ancestor_material_type)
    VALUES (
      __document_id,
      (_head.descendant_spec).part_code,
      (_head.descendant_spec).version_num,
      _item.part_code,
      _item.version_num,
      _item.material_type);
    ELSE
      RAISE EXCEPTION '% unknown material_type', _item;
    END IF;
  END LOOP;

  FOREACH _location IN
    ARRAY __body.location_spec
  LOOP
  INSERT INTO
    route.location (
      definition_id,
      location_code)
  VALUES (
    __document_id,
    _location);
  END LOOP;

END;
$$;


ALTER FUNCTION route.reinit(__document_id bigint, __body common.route_segment) OWNER TO postgres;

SET search_path = tests, pg_catalog;

--
-- TOC entry 479 (class 1255 OID 50805)
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
-- TOC entry 480 (class 1255 OID 50806)
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
-- TOC entry 481 (class 1255 OID 50807)
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
-- TOC entry 482 (class 1255 OID 50808)
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
-- TOC entry 483 (class 1255 OID 50809)
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
-- TOC entry 484 (class 1255 OID 50810)
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
-- TOC entry 485 (class 1255 OID 50811)
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
-- TOC entry 486 (class 1255 OID 50812)
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
-- TOC entry 487 (class 1255 OID 50813)
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
-- TOC entry 488 (class 1255 OID 50814)
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
-- TOC entry 489 (class 1255 OID 50815)
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
-- TOC entry 490 (class 1255 OID 50816)
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
-- TOC entry 491 (class 1255 OID 50817)
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
-- TOC entry 492 (class 1255 OID 50818)
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
-- TOC entry 493 (class 1255 OID 50819)
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
-- TOC entry 494 (class 1255 OID 50821)
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
-- TOC entry 496 (class 1255 OID 50822)
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

SET search_path = binding, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 280 (class 1259 OID 51554)
-- Name: ebom_to_mbom; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE ebom_to_mbom (
    ebom_id bigint NOT NULL,
    mbom_id bigint NOT NULL
);


ALTER TABLE ebom_to_mbom OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 51539)
-- Name: ebom_to_product; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE ebom_to_product (
    ebom_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE ebom_to_product OWNER TO postgres;

--
-- TOC entry 286 (class 1259 OID 51699)
-- Name: ebom_to_route; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE ebom_to_route (
    ebom_id bigint NOT NULL,
    route_id bigint NOT NULL
);


ALTER TABLE ebom_to_route OWNER TO postgres;

--
-- TOC entry 281 (class 1259 OID 51559)
-- Name: mbom_to_operation; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE mbom_to_operation (
    mbom_id bigint NOT NULL,
    operation_id bigint NOT NULL
);


ALTER TABLE mbom_to_operation OWNER TO postgres;

--
-- TOC entry 278 (class 1259 OID 51544)
-- Name: mbom_to_product; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE mbom_to_product (
    mbom_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE mbom_to_product OWNER TO postgres;

--
-- TOC entry 279 (class 1259 OID 51549)
-- Name: operation_to_product; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE operation_to_product (
    operation_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE operation_to_product OWNER TO postgres;

--
-- TOC entry 287 (class 1259 OID 51704)
-- Name: route_to_mbom; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE route_to_mbom (
    route_id bigint NOT NULL,
    mbom_id bigint NOT NULL
);


ALTER TABLE route_to_mbom OWNER TO postgres;

--
-- TOC entry 288 (class 1259 OID 51709)
-- Name: route_to_operation; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE route_to_operation (
    route_id bigint NOT NULL,
    operation_id bigint NOT NULL
);


ALTER TABLE route_to_operation OWNER TO postgres;

SET search_path = component, pg_catalog;

--
-- TOC entry 223 (class 1259 OID 50823)
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
-- TOC entry 4178 (class 0 OID 0)
-- Dependencies: 223
-- Name: TABLE information; Type: COMMENT; Schema: component; Owner: postgres
--

COMMENT ON TABLE information IS 'ebom component list';


--
-- TOC entry 224 (class 1259 OID 50831)
-- Name: assembly; Type: TABLE; Schema: component; Owner: postgres
--

CREATE TABLE assembly (
    CONSTRAINT assembly_component_type_check CHECK ((component_type = 'ASSEMBLY'::common.component_kind))
)
INHERITS (information);


ALTER TABLE assembly OWNER TO postgres;

--
-- TOC entry 4179 (class 0 OID 0)
-- Dependencies: 224
-- Name: TABLE assembly; Type: COMMENT; Schema: component; Owner: postgres
--

COMMENT ON TABLE assembly IS 'ebom assembly component';


--
-- TOC entry 225 (class 1259 OID 50840)
-- Name: buyable; Type: TABLE; Schema: component; Owner: postgres
--

CREATE TABLE buyable (
    CONSTRAINT buyable_component_type_check CHECK ((component_type = 'BUYABLE'::common.component_kind)),
    CONSTRAINT buyable_version_num_check CHECK ((version_num = 1))
)
INHERITS (information);


ALTER TABLE buyable OWNER TO postgres;

--
-- TOC entry 4180 (class 0 OID 0)
-- Dependencies: 225
-- Name: TABLE buyable; Type: COMMENT; Schema: component; Owner: postgres
--

COMMENT ON TABLE buyable IS 'ebom buyable component';


--
-- TOC entry 226 (class 1259 OID 50850)
-- Name: part; Type: TABLE; Schema: component; Owner: postgres
--

CREATE TABLE part (
    CONSTRAINT part_component_type_check CHECK ((component_type = 'PART'::common.component_kind))
)
INHERITS (information);


ALTER TABLE part OWNER TO postgres;

--
-- TOC entry 4181 (class 0 OID 0)
-- Dependencies: 226
-- Name: TABLE part; Type: COMMENT; Schema: component; Owner: postgres
--

COMMENT ON TABLE part IS 'ebom part component';


SET search_path = ebom, pg_catalog;

--
-- TOC entry 227 (class 1259 OID 50859)
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
-- TOC entry 228 (class 1259 OID 50866)
-- Name: assembly; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE assembly (
    CONSTRAINT assembly_component_type_check CHECK ((component_type = 'ASSEMBLY'::common.component_kind))
)
INHERITS (component);


ALTER TABLE assembly OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 50874)
-- Name: buyable; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE buyable (
    CONSTRAINT buyable_component_type_check CHECK ((component_type = 'BUYABLE'::common.component_kind))
)
INHERITS (component);


ALTER TABLE buyable OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 50882)
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
-- TOC entry 231 (class 1259 OID 50893)
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
-- TOC entry 4182 (class 0 OID 0)
-- Dependencies: 231
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: ebom; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 232 (class 1259 OID 50895)
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
-- TOC entry 233 (class 1259 OID 50903)
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
-- TOC entry 4183 (class 0 OID 0)
-- Dependencies: 233
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: ebom; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 234 (class 1259 OID 50905)
-- Name: part; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE part (
    CONSTRAINT part_component_type_check CHECK ((component_type = 'PART'::common.component_kind))
)
INHERITS (component);


ALTER TABLE part OWNER TO postgres;

SET search_path = inventory, pg_catalog;

--
-- TOC entry 235 (class 1259 OID 50913)
-- Name: information; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE information (
    part_code character varying NOT NULL,
    version_num integer DEFAULT 1 NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    inventory_type common.inventory_kind NOT NULL
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 50921)
-- Name: salable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE salable (
    CONSTRAINT salable_inventory_type_check CHECK ((inventory_type = 'SALABLE'::common.inventory_kind))
)
INHERITS (information);


ALTER TABLE salable OWNER TO postgres;

SET search_path = material, pg_catalog;

--
-- TOC entry 237 (class 1259 OID 50929)
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
-- TOC entry 4184 (class 0 OID 0)
-- Dependencies: 237
-- Name: TABLE information; Type: COMMENT; Schema: material; Owner: postgres
--

COMMENT ON TABLE information IS 'mbom component list';


--
-- TOC entry 238 (class 1259 OID 50937)
-- Name: consumable; Type: TABLE; Schema: material; Owner: postgres
--

CREATE TABLE consumable (
    CONSTRAINT consumable_material_type_check CHECK ((material_type = 'CONSUMABLE'::common.material_kind))
)
INHERITS (information);


ALTER TABLE consumable OWNER TO postgres;

--
-- TOC entry 4185 (class 0 OID 0)
-- Dependencies: 238
-- Name: TABLE consumable; Type: COMMENT; Schema: material; Owner: postgres
--

COMMENT ON TABLE consumable IS 'mbom consumable component';


--
-- TOC entry 239 (class 1259 OID 50946)
-- Name: primal; Type: TABLE; Schema: material; Owner: postgres
--

CREATE TABLE primal (
    CONSTRAINT primal_material_type_check CHECK ((material_type = 'PRIMAL'::common.material_kind)),
    CONSTRAINT primal_version_num_check CHECK ((version_num = 1))
)
INHERITS (information);


ALTER TABLE primal OWNER TO postgres;

--
-- TOC entry 4186 (class 0 OID 0)
-- Dependencies: 239
-- Name: TABLE primal; Type: COMMENT; Schema: material; Owner: postgres
--

COMMENT ON TABLE primal IS 'mbom primal component';


--
-- TOC entry 240 (class 1259 OID 50956)
-- Name: producible; Type: TABLE; Schema: material; Owner: postgres
--

CREATE TABLE producible (
    CONSTRAINT producible_material_type_check CHECK ((material_type = 'PRODUCIBLE'::common.material_kind))
)
INHERITS (information);


ALTER TABLE producible OWNER TO postgres;

--
-- TOC entry 4187 (class 0 OID 0)
-- Dependencies: 240
-- Name: TABLE producible; Type: COMMENT; Schema: material; Owner: postgres
--

COMMENT ON TABLE producible IS 'mbom producible component';


SET search_path = mbom, pg_catalog;

--
-- TOC entry 241 (class 1259 OID 50965)
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
-- TOC entry 242 (class 1259 OID 50972)
-- Name: consumable; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE consumable (
    CONSTRAINT consumable_component_type_check CHECK ((material_type = 'CONSUMABLE'::common.material_kind))
)
INHERITS (material);


ALTER TABLE consumable OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 50980)
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
-- TOC entry 244 (class 1259 OID 50991)
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
-- TOC entry 4188 (class 0 OID 0)
-- Dependencies: 244
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: mbom; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 245 (class 1259 OID 50993)
-- Name: information; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    published_date date DEFAULT now() NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 51001)
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
-- TOC entry 4189 (class 0 OID 0)
-- Dependencies: 246
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: mbom; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 247 (class 1259 OID 51003)
-- Name: primal; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE primal (
    CONSTRAINT primal_component_type_check CHECK ((material_type = 'PRIMAL'::common.material_kind))
)
INHERITS (material);


ALTER TABLE primal OWNER TO postgres;

SET search_path = operation, pg_catalog;

--
-- TOC entry 248 (class 1259 OID 51011)
-- Name: material; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE material (
    segment_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    quantity common.quantity,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL,
    material_type common.material_kind,
    rationing_qty integer DEFAULT 1
);


ALTER TABLE material OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 51019)
-- Name: consumable; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE consumable (
)
INHERITS (material);


ALTER TABLE consumable OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 51027)
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
-- TOC entry 251 (class 1259 OID 51038)
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
-- TOC entry 4190 (class 0 OID 0)
-- Dependencies: 251
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 252 (class 1259 OID 51040)
-- Name: dependency; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE dependency (
    ancestor bigint NOT NULL,
    descendant bigint NOT NULL,
    depth integer DEFAULT 1 NOT NULL
);


ALTER TABLE dependency OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 51044)
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
-- TOC entry 254 (class 1259 OID 51050)
-- Name: information; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    published_date date DEFAULT now() NOT NULL,
    part_code character varying,
    version_num integer
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 51058)
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
-- TOC entry 4191 (class 0 OID 0)
-- Dependencies: 255
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 256 (class 1259 OID 51060)
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
-- TOC entry 257 (class 1259 OID 51070)
-- Name: primal; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE primal (
)
INHERITS (material);


ALTER TABLE primal OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 51078)
-- Name: segment; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE segment (
    id bigint NOT NULL,
    definition_id bigint NOT NULL,
    operation_code character varying NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL
);


ALTER TABLE segment OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 51085)
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
-- TOC entry 4192 (class 0 OID 0)
-- Dependencies: 259
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


--
-- TOC entry 260 (class 1259 OID 51087)
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

SET search_path = product, pg_catalog;

--
-- TOC entry 261 (class 1259 OID 51093)
-- Name: material; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE material (
    segment_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    quantity common.quantity,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL,
    material_type common.material_kind,
    rationing_qty integer DEFAULT 1
);


ALTER TABLE material OWNER TO postgres;

--
-- TOC entry 262 (class 1259 OID 51101)
-- Name: consumable; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE consumable (
    CONSTRAINT consumable_material_type_check CHECK ((material_type = 'CONSUMABLE'::common.material_kind))
)
INHERITS (material);


ALTER TABLE consumable OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 51109)
-- Name: definition; Type: TABLE; Schema: product; Owner: postgres
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
-- TOC entry 264 (class 1259 OID 51120)
-- Name: definition_id_seq; Type: SEQUENCE; Schema: product; Owner: postgres
--

CREATE SEQUENCE definition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE definition_id_seq OWNER TO postgres;

--
-- TOC entry 4193 (class 0 OID 0)
-- Dependencies: 264
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 265 (class 1259 OID 51122)
-- Name: dependency; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE dependency (
    ancestor bigint NOT NULL,
    descendant bigint NOT NULL,
    depth integer DEFAULT 1 NOT NULL
);


ALTER TABLE dependency OWNER TO postgres;

--
-- TOC entry 266 (class 1259 OID 51126)
-- Name: equipment; Type: TABLE; Schema: product; Owner: postgres
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
-- TOC entry 267 (class 1259 OID 51132)
-- Name: information; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    published_date date DEFAULT now() NOT NULL,
    part_code character varying,
    version_num integer
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 268 (class 1259 OID 51140)
-- Name: information_id_seq; Type: SEQUENCE; Schema: product; Owner: postgres
--

CREATE SEQUENCE information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE information_id_seq OWNER TO postgres;

--
-- TOC entry 4194 (class 0 OID 0)
-- Dependencies: 268
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 269 (class 1259 OID 51148)
-- Name: personnel; Type: TABLE; Schema: product; Owner: postgres
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
-- TOC entry 270 (class 1259 OID 51158)
-- Name: primal; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE primal (
    CONSTRAINT primal_material_type_check CHECK ((material_type = 'PRIMAL'::common.material_kind))
)
INHERITS (material);


ALTER TABLE primal OWNER TO postgres;

--
-- TOC entry 271 (class 1259 OID 51166)
-- Name: segment; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE segment (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    definition_id bigint NOT NULL,
    location_id character varying,
    hierarhy_scope character varying,
    duration interval,
    descr character varying,
    segment_kind common.process_segment_kind
);


ALTER TABLE segment OWNER TO postgres;

--
-- TOC entry 4195 (class 0 OID 0)
-- Dependencies: 271
-- Name: TABLE segment; Type: COMMENT; Schema: product; Owner: postgres
--

COMMENT ON TABLE segment IS 'segments to specify process';


--
-- TOC entry 272 (class 1259 OID 51173)
-- Name: segment_id_seq; Type: SEQUENCE; Schema: product; Owner: postgres
--

CREATE SEQUENCE segment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE segment_id_seq OWNER TO postgres;

--
-- TOC entry 4196 (class 0 OID 0)
-- Dependencies: 272
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


--
-- TOC entry 273 (class 1259 OID 51175)
-- Name: tooling; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE tooling (
    segment_id bigint NOT NULL,
    tooling_code character varying NOT NULL,
    version_num integer,
    quantity common.quantity,
    uom_code character varying
);


ALTER TABLE tooling OWNER TO postgres;

SET search_path = route, pg_catalog;

--
-- TOC entry 293 (class 1259 OID 51785)
-- Name: segment; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE segment (
    definition_id bigint NOT NULL,
    descendant_part_code character varying NOT NULL,
    descendant_version_num integer NOT NULL,
    ancestor_part_code character varying NOT NULL,
    ancestor_version_num integer NOT NULL,
    ancestor_material_type common.material_kind NOT NULL
);


ALTER TABLE segment OWNER TO postgres;

--
-- TOC entry 298 (class 1259 OID 51854)
-- Name: consumable; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE consumable (
    CONSTRAINT consumable_ancestor_material_type_check CHECK ((ancestor_material_type = 'CONSUMABLE'::common.material_kind)),
    CONSTRAINT consumable_check CHECK (((descendant_part_code)::text <> (ancestor_part_code)::text))
)
INHERITS (segment);


ALTER TABLE consumable OWNER TO postgres;

--
-- TOC entry 292 (class 1259 OID 51754)
-- Name: definition; Type: TABLE; Schema: route; Owner: postgres
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
-- TOC entry 291 (class 1259 OID 51752)
-- Name: definition_id_seq; Type: SEQUENCE; Schema: route; Owner: postgres
--

CREATE SEQUENCE definition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE definition_id_seq OWNER TO postgres;

--
-- TOC entry 4197 (class 0 OID 0)
-- Dependencies: 291
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: route; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 290 (class 1259 OID 51741)
-- Name: information; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    published_date date DEFAULT now() NOT NULL,
    part_code character varying,
    version_num integer
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 289 (class 1259 OID 51739)
-- Name: information_id_seq; Type: SEQUENCE; Schema: route; Owner: postgres
--

CREATE SEQUENCE information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE information_id_seq OWNER TO postgres;

--
-- TOC entry 4198 (class 0 OID 0)
-- Dependencies: 289
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: route; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 294 (class 1259 OID 51793)
-- Name: location; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE location (
    definition_id bigint NOT NULL,
    location_code character varying NOT NULL
);


ALTER TABLE location OWNER TO postgres;

--
-- TOC entry 299 (class 1259 OID 51860)
-- Name: primal; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE primal (
    CONSTRAINT primal_ancestor_material_type_check CHECK ((ancestor_material_type = 'PRIMAL'::common.material_kind)),
    CONSTRAINT primal_check CHECK (((descendant_part_code)::text <> (ancestor_part_code)::text))
)
INHERITS (segment);


ALTER TABLE primal OWNER TO postgres;

SET search_path = tests, pg_catalog;

--
-- TOC entry 274 (class 1259 OID 51181)
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
-- TOC entry 275 (class 1259 OID 51186)
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
-- TOC entry 276 (class 1259 OID 51191)
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
-- TOC entry 3675 (class 2604 OID 51196)
-- Name: assembly version_num; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY assembly ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3676 (class 2604 OID 51197)
-- Name: assembly published_date; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY assembly ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3678 (class 2604 OID 51198)
-- Name: buyable version_num; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY buyable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3679 (class 2604 OID 51199)
-- Name: buyable published_date; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY buyable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3682 (class 2604 OID 51200)
-- Name: part version_num; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY part ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3683 (class 2604 OID 51201)
-- Name: part published_date; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY part ALTER COLUMN published_date SET DEFAULT now();


SET search_path = ebom, pg_catalog;

--
-- TOC entry 3686 (class 2604 OID 51202)
-- Name: assembly uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY assembly ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3688 (class 2604 OID 51203)
-- Name: buyable uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY buyable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3695 (class 2604 OID 51204)
-- Name: definition id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3698 (class 2604 OID 51205)
-- Name: information id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3699 (class 2604 OID 51206)
-- Name: part uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY part ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


SET search_path = inventory, pg_catalog;

--
-- TOC entry 3703 (class 2604 OID 51207)
-- Name: salable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3704 (class 2604 OID 51208)
-- Name: salable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable ALTER COLUMN published_date SET DEFAULT now();


SET search_path = material, pg_catalog;

--
-- TOC entry 3708 (class 2604 OID 51209)
-- Name: consumable version_num; Type: DEFAULT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3709 (class 2604 OID 51210)
-- Name: consumable published_date; Type: DEFAULT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3711 (class 2604 OID 51211)
-- Name: primal version_num; Type: DEFAULT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3712 (class 2604 OID 51212)
-- Name: primal published_date; Type: DEFAULT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3715 (class 2604 OID 51213)
-- Name: producible version_num; Type: DEFAULT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY producible ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3716 (class 2604 OID 51214)
-- Name: producible published_date; Type: DEFAULT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY producible ALTER COLUMN published_date SET DEFAULT now();


SET search_path = mbom, pg_catalog;

--
-- TOC entry 3719 (class 2604 OID 51215)
-- Name: consumable uom_code; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3726 (class 2604 OID 51216)
-- Name: definition id; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3729 (class 2604 OID 51217)
-- Name: information id; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3730 (class 2604 OID 51218)
-- Name: primal uom_code; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


SET search_path = operation, pg_catalog;

--
-- TOC entry 3734 (class 2604 OID 51219)
-- Name: consumable uom_code; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3735 (class 2604 OID 51220)
-- Name: consumable rationing_qty; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3741 (class 2604 OID 51221)
-- Name: definition id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3745 (class 2604 OID 51222)
-- Name: information id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3750 (class 2604 OID 51223)
-- Name: primal uom_code; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3751 (class 2604 OID 51224)
-- Name: primal rationing_qty; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3753 (class 2604 OID 51225)
-- Name: segment id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


SET search_path = product, pg_catalog;

--
-- TOC entry 3756 (class 2604 OID 51226)
-- Name: consumable uom_code; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3757 (class 2604 OID 51227)
-- Name: consumable rationing_qty; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3764 (class 2604 OID 51228)
-- Name: definition id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3768 (class 2604 OID 51229)
-- Name: information id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3773 (class 2604 OID 51230)
-- Name: primal uom_code; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3774 (class 2604 OID 51231)
-- Name: primal rationing_qty; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3777 (class 2604 OID 51232)
-- Name: segment id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


SET search_path = route, pg_catalog;

--
-- TOC entry 3781 (class 2604 OID 51757)
-- Name: definition id; Type: DEFAULT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3778 (class 2604 OID 51744)
-- Name: information id; Type: DEFAULT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


SET search_path = binding, pg_catalog;

--
-- TOC entry 4145 (class 0 OID 51554)
-- Dependencies: 280
-- Data for Name: ebom_to_mbom; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4142 (class 0 OID 51539)
-- Dependencies: 277
-- Data for Name: ebom_to_product; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4147 (class 0 OID 51699)
-- Dependencies: 286
-- Data for Name: ebom_to_route; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4146 (class 0 OID 51559)
-- Dependencies: 281
-- Data for Name: mbom_to_operation; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4143 (class 0 OID 51544)
-- Dependencies: 278
-- Data for Name: mbom_to_product; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4144 (class 0 OID 51549)
-- Dependencies: 279
-- Data for Name: operation_to_product; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4148 (class 0 OID 51704)
-- Dependencies: 287
-- Data for Name: route_to_mbom; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4149 (class 0 OID 51709)
-- Dependencies: 288
-- Data for Name: route_to_operation; Type: TABLE DATA; Schema: binding; Owner: postgres
--



SET search_path = component, pg_catalog;

--
-- TOC entry 4092 (class 0 OID 50831)
-- Dependencies: 224
-- Data for Name: assembly; Type: TABLE DATA; Schema: component; Owner: postgres
--

INSERT INTO assembly VALUES ('11.31.050-001', 1, '11с31п-50х40', '2017-10-21', 'ASSEMBLY');
INSERT INTO assembly VALUES ('11.32.050-001', 1, '11с32п-50х40', '2017-10-21', 'ASSEMBLY');
INSERT INTO assembly VALUES ('11.33.050-001', 1, '11с33п-50х40', '2017-10-21', 'ASSEMBLY');
INSERT INTO assembly VALUES ('80.31.050-001', 1, 'Крпс-089,0х109,0', '2017-10-21', 'ASSEMBLY');
INSERT INTO assembly VALUES ('82.31.050-001', 1, 'Рчк-250х20', '2017-10-21', 'ASSEMBLY');


--
-- TOC entry 4093 (class 0 OID 50840)
-- Dependencies: 225
-- Data for Name: buyable; Type: TABLE DATA; Schema: component; Owner: postgres
--

INSERT INTO buyable VALUES ('Гайка М12', 1, 'Гайка-М12', '2017-10-21', 'BUYABLE');


--
-- TOC entry 4091 (class 0 OID 50823)
-- Dependencies: 223
-- Data for Name: information; Type: TABLE DATA; Schema: component; Owner: postgres
--



--
-- TOC entry 4094 (class 0 OID 50850)
-- Dependencies: 226
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
-- TOC entry 4096 (class 0 OID 50866)
-- Dependencies: 228
-- Data for Name: assembly; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO assembly VALUES (1, '80.31.050-001', 1, 1.0000, 'pcs', 'ASSEMBLY');
INSERT INTO assembly VALUES (1, '82.31.050-001', 1, 1.0000, 'pcs', 'ASSEMBLY');


--
-- TOC entry 4097 (class 0 OID 50874)
-- Dependencies: 229
-- Data for Name: buyable; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO buyable VALUES (1, 'Гайка М12', 1, 1.0000, 'pcs', 'BUYABLE');


--
-- TOC entry 4095 (class 0 OID 50859)
-- Dependencies: 227
-- Data for Name: component; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 4098 (class 0 OID 50882)
-- Dependencies: 230
-- Data for Name: definition; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO definition VALUES (1, '93152072-d07e-11e7-9ea1-d4bed939923a', '11с31п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21 20:55:30.985148+03', 1);


--
-- TOC entry 4199 (class 0 OID 0)
-- Dependencies: 231
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: ebom; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 19, true);


--
-- TOC entry 4100 (class 0 OID 50895)
-- Dependencies: 232
-- Data for Name: information; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO information VALUES (1, '9314e846-d07e-11e7-9ea0-d4bed939923a', '11.31.050-001', 1, '11с31п-50х40: information', '2017-10-23');


--
-- TOC entry 4200 (class 0 OID 0)
-- Dependencies: 233
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: ebom; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 20, true);


--
-- TOC entry 4102 (class 0 OID 50905)
-- Dependencies: 234
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


SET search_path = inventory, pg_catalog;

--
-- TOC entry 4103 (class 0 OID 50913)
-- Dependencies: 235
-- Data for Name: information; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4104 (class 0 OID 50921)
-- Dependencies: 236
-- Data for Name: salable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



SET search_path = material, pg_catalog;

--
-- TOC entry 4106 (class 0 OID 50937)
-- Dependencies: 238
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
-- TOC entry 4105 (class 0 OID 50929)
-- Dependencies: 237
-- Data for Name: information; Type: TABLE DATA; Schema: material; Owner: postgres
--



--
-- TOC entry 4107 (class 0 OID 50946)
-- Dependencies: 239
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
-- TOC entry 4108 (class 0 OID 50956)
-- Dependencies: 240
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
-- TOC entry 4110 (class 0 OID 50972)
-- Dependencies: 242
-- Data for Name: consumable; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 4111 (class 0 OID 50980)
-- Dependencies: 243
-- Data for Name: definition; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 4201 (class 0 OID 0)
-- Dependencies: 244
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: mbom; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 20, true);


--
-- TOC entry 4113 (class 0 OID 50993)
-- Dependencies: 245
-- Data for Name: information; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 4202 (class 0 OID 0)
-- Dependencies: 246
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: mbom; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 22, true);


--
-- TOC entry 4109 (class 0 OID 50965)
-- Dependencies: 241
-- Data for Name: material; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 4115 (class 0 OID 51003)
-- Dependencies: 247
-- Data for Name: primal; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



SET search_path = operation, pg_catalog;

--
-- TOC entry 4117 (class 0 OID 51019)
-- Dependencies: 249
-- Data for Name: consumable; Type: TABLE DATA; Schema: operation; Owner: postgres
--

INSERT INTO consumable VALUES (1, '42.02.022-001', 1, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO consumable VALUES (2, '42.02.022-001', 1, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO consumable VALUES (4, '42.02.022-001', 1, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO consumable VALUES (5, '42.02.022-001', 1, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO consumable VALUES (6, '42.02.022-001', 1, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO consumable VALUES (7, '42.02.022-001', 1, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO consumable VALUES (8, '42.02.022-001', 1, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO consumable VALUES (9, '42.02.022-001', 1, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO consumable VALUES (10, '42.02.022-001', 1, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO consumable VALUES (11, '42.02.022-001', 1, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO consumable VALUES (12, '42.02.022-001', 1, 1.0000, 'pcs', 'CONSUMABLE', 1);


--
-- TOC entry 4118 (class 0 OID 51027)
-- Dependencies: 250
-- Data for Name: definition; Type: TABLE DATA; Schema: operation; Owner: postgres
--

INSERT INTO definition VALUES (5, 'c4648a42-d5c8-11e7-999f-54ab3aa56755', 'operation 1', 1, '2017-11-30', NULL, NULL, 'PROPOSED', '2017-11-30 14:19:52.275602+02', 1);
INSERT INTO definition VALUES (6, 'ea536f14-d7aa-11e7-bc40-d4bed939923a', 'NO-NAME', 1, '2017-12-02', NULL, NULL, 'PROPOSED', '2017-12-02 23:51:12.964508+02', 5);
INSERT INTO definition VALUES (7, '1797dd84-d7ab-11e7-bc42-d4bed939923a', 'NO-NAME', 1, '2017-12-02', NULL, NULL, 'PROPOSED', '2017-12-02 23:52:29.328723+02', 6);
INSERT INTO definition VALUES (8, '344ed61c-d7ab-11e7-bc44-d4bed939923a', 'NO-NAME', 1, '2017-12-02', NULL, NULL, 'PROPOSED', '2017-12-02 23:53:17.504215+02', 7);
INSERT INTO definition VALUES (9, '35e97694-d7ab-11e7-bc46-d4bed939923a', 'NO-NAME', 1, '2017-12-02', NULL, NULL, 'PROPOSED', '2017-12-02 23:53:20.194558+02', 8);
INSERT INTO definition VALUES (10, '364cdf7c-d7ab-11e7-bc48-d4bed939923a', 'NO-NAME', 1, '2017-12-02', NULL, NULL, 'PROPOSED', '2017-12-02 23:53:20.846738+02', 9);
INSERT INTO definition VALUES (11, 'a5e435c4-d7ab-11e7-bc4a-d4bed939923a', 'NO-NAME', 1, '2017-12-02', NULL, NULL, 'PROPOSED', '2017-12-02 23:56:28.064945+02', 10);
INSERT INTO definition VALUES (12, 'a9e8ec7c-d7ac-11e7-bc4c-d4bed939923a', 'NO-NAME', 1, '2017-12-03', NULL, NULL, 'PROPOSED', '2017-12-03 00:03:44.304357+02', 11);
INSERT INTO definition VALUES (13, '6bb6ffa6-d7ad-11e7-bc4e-d4bed939923a', 'NO-NAME', 1, '2017-12-03', NULL, NULL, 'PROPOSED', '2017-12-03 00:09:09.454607+02', 12);
INSERT INTO definition VALUES (15, 'aa32eefc-d7ad-11e7-bc50-d4bed939923a', 'operation 1', 2, '2017-11-30', NULL, NULL, 'PROPOSED', '2017-12-03 00:10:54.285161+02', 1);
INSERT INTO definition VALUES (16, 'ab2d752a-d7ad-11e7-bc51-d4bed939923a', 'operation 1', 3, '2017-11-30', NULL, NULL, 'PROPOSED', '2017-12-03 00:10:55.927535+02', 1);
INSERT INTO definition VALUES (17, 'abdac68a-d7ad-11e7-bc52-d4bed939923a', 'operation 1', 4, '2017-11-30', NULL, NULL, 'PROPOSED', '2017-12-03 00:10:57.063573+02', 1);
INSERT INTO definition VALUES (18, 'ac4520a2-d7ad-11e7-bc53-d4bed939923a', 'operation 1', 5, '2017-11-30', NULL, NULL, 'PROPOSED', '2017-12-03 00:10:57.760195+02', 1);


--
-- TOC entry 4203 (class 0 OID 0)
-- Dependencies: 251
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 18, true);


--
-- TOC entry 4120 (class 0 OID 51040)
-- Dependencies: 252
-- Data for Name: dependency; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 4121 (class 0 OID 51044)
-- Dependencies: 253
-- Data for Name: equipment; Type: TABLE DATA; Schema: operation; Owner: postgres
--

INSERT INTO equipment VALUES (1, 'eq_1', 1, 1.0000, 'pcs');
INSERT INTO equipment VALUES (2, 'eq_2', 1, 1.0000, 'pcs');
INSERT INTO equipment VALUES (2, 'eq_3', 1, 2.0000, 'pcs');
INSERT INTO equipment VALUES (4, 'eq_1', 1, 1.0000, 'pcs');
INSERT INTO equipment VALUES (5, 'eq_1', 1, 1.0000, 'pcs');
INSERT INTO equipment VALUES (6, 'eq_2', 1, 1.0000, 'pcs');
INSERT INTO equipment VALUES (6, 'eq_3', 1, 2.0000, 'pcs');
INSERT INTO equipment VALUES (7, 'eq_1', 1, 1.0000, 'pcs');
INSERT INTO equipment VALUES (8, 'eq_2', 1, 1.0000, 'pcs');
INSERT INTO equipment VALUES (8, 'eq_3', 1, 2.0000, 'pcs');
INSERT INTO equipment VALUES (9, 'eq_1', 1, 1.0000, 'pcs');
INSERT INTO equipment VALUES (10, 'eq_2', 1, 1.0000, 'pcs');
INSERT INTO equipment VALUES (10, 'eq_3', 1, 2.0000, 'pcs');
INSERT INTO equipment VALUES (11, 'eq_1', 1, 1.0000, 'pcs');
INSERT INTO equipment VALUES (12, 'eq_2', 1, 1.0000, 'pcs');
INSERT INTO equipment VALUES (12, 'eq_3', 1, 2.0000, 'pcs');


--
-- TOC entry 4122 (class 0 OID 51050)
-- Dependencies: 254
-- Data for Name: information; Type: TABLE DATA; Schema: operation; Owner: postgres
--

INSERT INTO information VALUES (1, 'ef5e95b6-d24a-11e7-b8ee-d4bed939923a', 'information #1', '2017-11-26', '11.31.050-001', 1);
INSERT INTO information VALUES (5, 'ea5072be-d7aa-11e7-bc3f-d4bed939923a', 'NO-NAME', '2017-12-02', NULL, NULL);
INSERT INTO information VALUES (6, '1797d9ec-d7ab-11e7-bc41-d4bed939923a', 'NO-NAME', '2017-12-02', NULL, NULL);
INSERT INTO information VALUES (7, '344ed306-d7ab-11e7-bc43-d4bed939923a', 'NO-NAME', '2017-12-02', NULL, NULL);
INSERT INTO information VALUES (8, '35e972f2-d7ab-11e7-bc45-d4bed939923a', 'NO-NAME', '2017-12-02', NULL, NULL);
INSERT INTO information VALUES (9, '364cdc66-d7ab-11e7-bc47-d4bed939923a', 'NO-NAME', '2017-12-02', NULL, NULL);
INSERT INTO information VALUES (10, 'a5e4306a-d7ab-11e7-bc49-d4bed939923a', 'NO-NAME', '2017-12-02', NULL, NULL);
INSERT INTO information VALUES (11, 'a9e8e8a8-d7ac-11e7-bc4b-d4bed939923a', 'NO-NAME', '2017-12-03', NULL, NULL);
INSERT INTO information VALUES (12, '6bb6fa9c-d7ad-11e7-bc4d-d4bed939923a', 'NO-NAME', '2017-12-03', NULL, NULL);


--
-- TOC entry 4204 (class 0 OID 0)
-- Dependencies: 255
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 12, true);


--
-- TOC entry 4116 (class 0 OID 51011)
-- Dependencies: 248
-- Data for Name: material; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 4124 (class 0 OID 51060)
-- Dependencies: 256
-- Data for Name: personnel; Type: TABLE DATA; Schema: operation; Owner: postgres
--

INSERT INTO personnel VALUES (1, 'personnel_1', 1, 1, 1, 1, '00:00:01', '00:00:01');
INSERT INTO personnel VALUES (1, 'personnel_2', 1, 1, 1, 1, '00:00:01', '00:00:01');
INSERT INTO personnel VALUES (4, 'personnel_1', 1, 1, 1, 1, '00:00:01', '00:00:01');
INSERT INTO personnel VALUES (4, 'personnel_2', 1, 1, 1, 1, '00:00:01', '00:00:01');
INSERT INTO personnel VALUES (5, 'personnel_1', 1, 1, 1, 1, '00:00:01', '00:00:01');
INSERT INTO personnel VALUES (5, 'personnel_2', 1, 1, 1, 1, '00:00:01', '00:00:01');
INSERT INTO personnel VALUES (7, 'personnel_1', 1, 1, 1, 1, '00:00:01', '00:00:01');
INSERT INTO personnel VALUES (7, 'personnel_2', 1, 1, 1, 1, '00:00:01', '00:00:01');
INSERT INTO personnel VALUES (9, 'personnel_1', 1, 1, 1, 1, '00:00:01', '00:00:01');
INSERT INTO personnel VALUES (9, 'personnel_2', 1, 1, 1, 1, '00:00:01', '00:00:01');
INSERT INTO personnel VALUES (11, 'personnel_1', 1, 1, 1, 1, '00:00:01', '00:00:01');
INSERT INTO personnel VALUES (11, 'personnel_2', 1, 1, 1, 1, '00:00:01', '00:00:01');


--
-- TOC entry 4125 (class 0 OID 51070)
-- Dependencies: 257
-- Data for Name: primal; Type: TABLE DATA; Schema: operation; Owner: postgres
--

INSERT INTO primal VALUES (1, 'Крг-022-ст20', 1, 1.0000, 'pcs', 'PRIMAL', 1);
INSERT INTO primal VALUES (2, 'Крг-022-ст20', 1, 1.0000, 'pcs', 'PRIMAL', 1);
INSERT INTO primal VALUES (4, 'Крг-022-ст20', 1, 1.0000, 'pcs', 'PRIMAL', 1);
INSERT INTO primal VALUES (5, 'Крг-022-ст20', 1, 1.0000, 'pcs', 'PRIMAL', 1);
INSERT INTO primal VALUES (6, 'Крг-022-ст20', 1, 1.0000, 'pcs', 'PRIMAL', 1);
INSERT INTO primal VALUES (7, 'Крг-022-ст20', 1, 1.0000, 'pcs', 'PRIMAL', 1);
INSERT INTO primal VALUES (8, 'Крг-022-ст20', 1, 1.0000, 'pcs', 'PRIMAL', 1);
INSERT INTO primal VALUES (9, 'Крг-022-ст20', 1, 1.0000, 'pcs', 'PRIMAL', 1);
INSERT INTO primal VALUES (10, 'Крг-022-ст20', 1, 1.0000, 'pcs', 'PRIMAL', 1);
INSERT INTO primal VALUES (11, 'Крг-022-ст20', 1, 1.0000, 'pcs', 'PRIMAL', 1);
INSERT INTO primal VALUES (12, 'Крг-022-ст20', 1, 1.0000, 'pcs', 'PRIMAL', 1);


--
-- TOC entry 4126 (class 0 OID 51078)
-- Dependencies: 258
-- Data for Name: segment; Type: TABLE DATA; Schema: operation; Owner: postgres
--

INSERT INTO segment VALUES (1, 5, 'op_code_1', '26ae8ebc-d6f2-11e7-8e76-d4bed939923a');
INSERT INTO segment VALUES (2, 5, 'op_code_2', '26ae9114-d6f2-11e7-8e77-d4bed939923a');
INSERT INTO segment VALUES (4, 6, 'op1', '1bdbfba4-d7ac-11e7-b52a-d4bed939923a');
INSERT INTO segment VALUES (5, 15, 'op_code_1', '26ae8ebc-d6f2-11e7-8e76-d4bed939923a');
INSERT INTO segment VALUES (6, 15, 'op_code_2', '26ae9114-d6f2-11e7-8e77-d4bed939923a');
INSERT INTO segment VALUES (7, 16, 'op_code_1', '26ae8ebc-d6f2-11e7-8e76-d4bed939923a');
INSERT INTO segment VALUES (8, 16, 'op_code_2', '26ae9114-d6f2-11e7-8e77-d4bed939923a');
INSERT INTO segment VALUES (9, 17, 'op_code_1', '26ae8ebc-d6f2-11e7-8e76-d4bed939923a');
INSERT INTO segment VALUES (10, 17, 'op_code_2', '26ae9114-d6f2-11e7-8e77-d4bed939923a');
INSERT INTO segment VALUES (11, 18, 'op_code_1', '26ae8ebc-d6f2-11e7-8e76-d4bed939923a');
INSERT INTO segment VALUES (12, 18, 'op_code_2', '26ae9114-d6f2-11e7-8e77-d4bed939923a');


--
-- TOC entry 4205 (class 0 OID 0)
-- Dependencies: 259
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 12, true);


--
-- TOC entry 4128 (class 0 OID 51087)
-- Dependencies: 260
-- Data for Name: tooling; Type: TABLE DATA; Schema: operation; Owner: postgres
--



SET search_path = product, pg_catalog;

--
-- TOC entry 4130 (class 0 OID 51101)
-- Dependencies: 262
-- Data for Name: consumable; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4131 (class 0 OID 51109)
-- Dependencies: 263
-- Data for Name: definition; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4206 (class 0 OID 0)
-- Dependencies: 264
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 1, false);


--
-- TOC entry 4133 (class 0 OID 51122)
-- Dependencies: 265
-- Data for Name: dependency; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4134 (class 0 OID 51126)
-- Dependencies: 266
-- Data for Name: equipment; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4135 (class 0 OID 51132)
-- Dependencies: 267
-- Data for Name: information; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4207 (class 0 OID 0)
-- Dependencies: 268
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, false);


--
-- TOC entry 4129 (class 0 OID 51093)
-- Dependencies: 261
-- Data for Name: material; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4137 (class 0 OID 51148)
-- Dependencies: 269
-- Data for Name: personnel; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4138 (class 0 OID 51158)
-- Dependencies: 270
-- Data for Name: primal; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4139 (class 0 OID 51166)
-- Dependencies: 271
-- Data for Name: segment; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4208 (class 0 OID 0)
-- Dependencies: 272
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 1, false);


--
-- TOC entry 4141 (class 0 OID 51175)
-- Dependencies: 273
-- Data for Name: tooling; Type: TABLE DATA; Schema: product; Owner: postgres
--



SET search_path = route, pg_catalog;

--
-- TOC entry 4156 (class 0 OID 51854)
-- Dependencies: 298
-- Data for Name: consumable; Type: TABLE DATA; Schema: route; Owner: postgres
--

INSERT INTO consumable VALUES (1, '22.16.050-001', 1, '22.16.050-001.030', 1, 'CONSUMABLE');


--
-- TOC entry 4153 (class 0 OID 51754)
-- Dependencies: 292
-- Data for Name: definition; Type: TABLE DATA; Schema: route; Owner: postgres
--

INSERT INTO definition VALUES (1, '1e999d70-ded1-11e7-a137-d4bed939923a', 'route #1', 1, '2017-12-12', NULL, NULL, 'PROPOSED', '2017-12-12 02:12:19.975723+02', 1);


--
-- TOC entry 4209 (class 0 OID 0)
-- Dependencies: 291
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: route; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 7, true);


--
-- TOC entry 4151 (class 0 OID 51741)
-- Dependencies: 290
-- Data for Name: information; Type: TABLE DATA; Schema: route; Owner: postgres
--

INSERT INTO information VALUES (1, '26cf4af8-ded1-11e7-9070-d4bed939923a', 'route #1', '2017-12-12', '22.16.050-001', 1);
INSERT INTO information VALUES (2, '893303e2-ded1-11e7-a4be-d4bed939923a', 'route #2', '2017-12-12', '22.25.050-001', 1);


--
-- TOC entry 4210 (class 0 OID 0)
-- Dependencies: 289
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: route; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 2, true);


--
-- TOC entry 4155 (class 0 OID 51793)
-- Dependencies: 294
-- Data for Name: location; Type: TABLE DATA; Schema: route; Owner: postgres
--

INSERT INTO location VALUES (1, 'A1');
INSERT INTO location VALUES (1, 'B1');


--
-- TOC entry 4157 (class 0 OID 51860)
-- Dependencies: 299
-- Data for Name: primal; Type: TABLE DATA; Schema: route; Owner: postgres
--

INSERT INTO primal VALUES (1, '22.16.050-001', 1, 'Ф-4', 1, 'PRIMAL');


--
-- TOC entry 4154 (class 0 OID 51785)
-- Dependencies: 293
-- Data for Name: segment; Type: TABLE DATA; Schema: route; Owner: postgres
--



SET search_path = binding, pg_catalog;

--
-- TOC entry 3898 (class 2606 OID 51558)
-- Name: ebom_to_mbom ebom_to_mbom_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY ebom_to_mbom
    ADD CONSTRAINT ebom_to_mbom_pkey PRIMARY KEY (ebom_id, mbom_id);


--
-- TOC entry 3892 (class 2606 OID 51543)
-- Name: ebom_to_product ebom_to_product_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY ebom_to_product
    ADD CONSTRAINT ebom_to_product_pkey PRIMARY KEY (ebom_id, product_id);


--
-- TOC entry 3902 (class 2606 OID 51703)
-- Name: ebom_to_route ebom_to_route_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY ebom_to_route
    ADD CONSTRAINT ebom_to_route_pkey PRIMARY KEY (ebom_id, route_id);


--
-- TOC entry 3900 (class 2606 OID 51563)
-- Name: mbom_to_operation mbom_to_operation_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY mbom_to_operation
    ADD CONSTRAINT mbom_to_operation_pkey PRIMARY KEY (mbom_id, operation_id);


--
-- TOC entry 3894 (class 2606 OID 51548)
-- Name: mbom_to_product mbom_to_product_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY mbom_to_product
    ADD CONSTRAINT mbom_to_product_pkey PRIMARY KEY (mbom_id, product_id);


--
-- TOC entry 3896 (class 2606 OID 51553)
-- Name: operation_to_product operation_to_product_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY operation_to_product
    ADD CONSTRAINT operation_to_product_pkey PRIMARY KEY (operation_id, product_id);


--
-- TOC entry 3904 (class 2606 OID 51708)
-- Name: route_to_mbom route_to_mbom_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY route_to_mbom
    ADD CONSTRAINT route_to_mbom_pkey PRIMARY KEY (route_id, mbom_id);


--
-- TOC entry 3906 (class 2606 OID 51713)
-- Name: route_to_operation route_to_operation_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY route_to_operation
    ADD CONSTRAINT route_to_operation_pkey PRIMARY KEY (route_id, operation_id);


SET search_path = component, pg_catalog;

--
-- TOC entry 3794 (class 2606 OID 51234)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3796 (class 2606 OID 51236)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3792 (class 2606 OID 51238)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4211 (class 0 OID 0)
-- Dependencies: 3792
-- Name: CONSTRAINT information_pkey ON information; Type: COMMENT; Schema: component; Owner: postgres
--

COMMENT ON CONSTRAINT information_pkey ON information IS 'may be part_code + version_num + component_type';


--
-- TOC entry 3798 (class 2606 OID 51240)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_pkey PRIMARY KEY (part_code, version_num);


SET search_path = ebom, pg_catalog;

--
-- TOC entry 3802 (class 2606 OID 51242)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3804 (class 2606 OID 51244)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3800 (class 2606 OID 51246)
-- Name: component component_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY component
    ADD CONSTRAINT component_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3806 (class 2606 OID 51248)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 3808 (class 2606 OID 51250)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 3810 (class 2606 OID 51252)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3812 (class 2606 OID 51254)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 3814 (class 2606 OID 51256)
-- Name: information information_part_code_version_num_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_part_code_version_num_key UNIQUE (part_code, version_num);


--
-- TOC entry 3816 (class 2606 OID 51258)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3818 (class 2606 OID 51260)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_pkey PRIMARY KEY (definition_id, part_code);


SET search_path = inventory, pg_catalog;

--
-- TOC entry 3820 (class 2606 OID 51262)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (part_code, version_num, inventory_type);


--
-- TOC entry 3822 (class 2606 OID 51532)
-- Name: salable salable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable
    ADD CONSTRAINT salable_pkey PRIMARY KEY (part_code, version_num);


SET search_path = material, pg_catalog;

--
-- TOC entry 3826 (class 2606 OID 51264)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3824 (class 2606 OID 51266)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (part_code, version_num, material_type);


--
-- TOC entry 3828 (class 2606 OID 51268)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3830 (class 2606 OID 51270)
-- Name: producible producible_pkey; Type: CONSTRAINT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY producible
    ADD CONSTRAINT producible_pkey PRIMARY KEY (part_code, version_num);


SET search_path = mbom, pg_catalog;

--
-- TOC entry 3834 (class 2606 OID 51272)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3836 (class 2606 OID 51274)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 3838 (class 2606 OID 51276)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 3840 (class 2606 OID 51278)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3842 (class 2606 OID 51280)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3832 (class 2606 OID 51282)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY material
    ADD CONSTRAINT material_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3844 (class 2606 OID 51284)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (definition_id, part_code);


SET search_path = operation, pg_catalog;

--
-- TOC entry 3848 (class 2606 OID 51286)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3850 (class 2606 OID 51288)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3852 (class 2606 OID 51290)
-- Name: definition definition_version_num_information_id_key; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_version_num_information_id_key UNIQUE (version_num, information_id);


--
-- TOC entry 3854 (class 2606 OID 51292)
-- Name: dependency dependency_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_pkey PRIMARY KEY (ancestor, descendant);


--
-- TOC entry 3856 (class 2606 OID 51294)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, equipment_code);


--
-- TOC entry 3858 (class 2606 OID 51296)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3846 (class 2606 OID 51298)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY material
    ADD CONSTRAINT material_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3860 (class 2606 OID 51300)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, personnel_code);


--
-- TOC entry 3862 (class 2606 OID 51302)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3864 (class 2606 OID 51304)
-- Name: segment segment_definition_id_operation_code_key; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_definition_id_operation_code_key UNIQUE (definition_id, operation_code);


--
-- TOC entry 3866 (class 2606 OID 51306)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 3868 (class 2606 OID 51308)
-- Name: tooling tooling_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY tooling
    ADD CONSTRAINT tooling_pkey PRIMARY KEY (segment_id, tooling_code);


SET search_path = product, pg_catalog;

--
-- TOC entry 3872 (class 2606 OID 51310)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3874 (class 2606 OID 51312)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3876 (class 2606 OID 51314)
-- Name: definition definition_version_num_information_id_key; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_version_num_information_id_key UNIQUE (version_num, information_id);


--
-- TOC entry 3878 (class 2606 OID 51316)
-- Name: dependency dependency_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_pkey PRIMARY KEY (ancestor, descendant);


--
-- TOC entry 3880 (class 2606 OID 51318)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, equipment_code);


--
-- TOC entry 3882 (class 2606 OID 51320)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3870 (class 2606 OID 51322)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY material
    ADD CONSTRAINT material_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3884 (class 2606 OID 51326)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, personnel_code);


--
-- TOC entry 3886 (class 2606 OID 51328)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3888 (class 2606 OID 51330)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 3890 (class 2606 OID 51332)
-- Name: tooling tooling_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY tooling
    ADD CONSTRAINT tooling_pkey PRIMARY KEY (segment_id, tooling_code);


SET search_path = route, pg_catalog;

--
-- TOC entry 3920 (class 2606 OID 51883)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (definition_id, descendant_part_code, descendant_version_num, ancestor_part_code, ancestor_version_num);


--
-- TOC entry 3910 (class 2606 OID 51769)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 3912 (class 2606 OID 51771)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 3914 (class 2606 OID 51767)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3908 (class 2606 OID 51751)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3918 (class 2606 OID 51800)
-- Name: location location_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY location
    ADD CONSTRAINT location_pkey PRIMARY KEY (definition_id, location_code);


--
-- TOC entry 3922 (class 2606 OID 51885)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (definition_id, descendant_part_code, descendant_version_num, ancestor_part_code, ancestor_version_num);


--
-- TOC entry 3916 (class 2606 OID 51792)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (definition_id, ancestor_part_code, ancestor_version_num, descendant_part_code, descendant_version_num);


SET search_path = ebom, pg_catalog;

--
-- TOC entry 3970 (class 2620 OID 51333)
-- Name: definition set_prev_doc_fsmt; Type: TRIGGER; Schema: ebom; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON definition FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 3923 (class 2606 OID 51334)
-- Name: assembly assembly_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id);


--
-- TOC entry 3924 (class 2606 OID 51339)
-- Name: assembly assembly_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES component.assembly(part_code, version_num);


--
-- TOC entry 3925 (class 2606 OID 51344)
-- Name: buyable buyable_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id);


--
-- TOC entry 3926 (class 2606 OID 51349)
-- Name: buyable buyable_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES component.buyable(part_code, version_num);


--
-- TOC entry 3927 (class 2606 OID 51354)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3928 (class 2606 OID 51359)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES component.assembly(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3929 (class 2606 OID 51364)
-- Name: part part_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id);


--
-- TOC entry 3930 (class 2606 OID 51369)
-- Name: part part_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES component.part(part_code, version_num);


SET search_path = mbom, pg_catalog;

--
-- TOC entry 3931 (class 2606 OID 51374)
-- Name: consumable consumable_definition_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id);


--
-- TOC entry 3932 (class 2606 OID 51379)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.consumable(part_code, version_num);


--
-- TOC entry 3933 (class 2606 OID 51384)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3934 (class 2606 OID 51389)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3935 (class 2606 OID 51394)
-- Name: primal primal_definition_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id);


--
-- TOC entry 3936 (class 2606 OID 51399)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.primal(part_code, version_num);


SET search_path = operation, pg_catalog;

--
-- TOC entry 3937 (class 2606 OID 51404)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3938 (class 2606 OID 51409)
-- Name: consumable consumable_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id);


--
-- TOC entry 3939 (class 2606 OID 51414)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3940 (class 2606 OID 51419)
-- Name: dependency dependency_ancestor_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_ancestor_fkey FOREIGN KEY (ancestor) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3941 (class 2606 OID 51424)
-- Name: dependency dependency_descendant_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_descendant_fkey FOREIGN KEY (descendant) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3942 (class 2606 OID 51429)
-- Name: equipment equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3943 (class 2606 OID 51434)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.producible(part_code, version_num);


--
-- TOC entry 3944 (class 2606 OID 51439)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3945 (class 2606 OID 51444)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3946 (class 2606 OID 51449)
-- Name: primal primal_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3947 (class 2606 OID 51454)
-- Name: segment segment_definition_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3948 (class 2606 OID 51459)
-- Name: tooling tooling_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY tooling
    ADD CONSTRAINT tooling_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = product, pg_catalog;

--
-- TOC entry 3949 (class 2606 OID 51464)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3950 (class 2606 OID 51469)
-- Name: consumable consumable_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id);


--
-- TOC entry 3951 (class 2606 OID 51474)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3952 (class 2606 OID 51479)
-- Name: dependency dependency_ancestor_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_ancestor_fkey FOREIGN KEY (ancestor) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3953 (class 2606 OID 51484)
-- Name: dependency dependency_descendant_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_descendant_fkey FOREIGN KEY (descendant) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3954 (class 2606 OID 51489)
-- Name: equipment equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3955 (class 2606 OID 51533)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.salable(part_code, version_num);


--
-- TOC entry 3956 (class 2606 OID 51504)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3957 (class 2606 OID 51509)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3958 (class 2606 OID 51514)
-- Name: primal primal_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3959 (class 2606 OID 51519)
-- Name: segment segment_definition_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3960 (class 2606 OID 51524)
-- Name: tooling tooling_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY tooling
    ADD CONSTRAINT tooling_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = route, pg_catalog;

--
-- TOC entry 3964 (class 2606 OID 51931)
-- Name: consumable consumable_ancestor_part_code_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_ancestor_part_code_fkey FOREIGN KEY (ancestor_part_code, ancestor_version_num) REFERENCES material.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3965 (class 2606 OID 51891)
-- Name: consumable consumable_definition_id_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3966 (class 2606 OID 51921)
-- Name: consumable consumable_descendant_part_code_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_descendant_part_code_fkey FOREIGN KEY (descendant_part_code, descendant_version_num) REFERENCES material.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3962 (class 2606 OID 51772)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3961 (class 2606 OID 51849)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3963 (class 2606 OID 51886)
-- Name: location location_definition_id_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY location
    ADD CONSTRAINT location_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3967 (class 2606 OID 51906)
-- Name: primal primal_ancestor_part_code_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_ancestor_part_code_fkey FOREIGN KEY (ancestor_part_code, ancestor_version_num) REFERENCES material.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3968 (class 2606 OID 51911)
-- Name: primal primal_definition_id_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3969 (class 2606 OID 51916)
-- Name: primal primal_descendant_part_code_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_descendant_part_code_fkey FOREIGN KEY (descendant_part_code, descendant_version_num) REFERENCES material.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2017-12-30 00:28:54 EET

--
-- PostgreSQL database dump complete
--

