--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.8
-- Dumped by pg_dump version 9.6.8

-- Started on 2018-05-22 01:11:21 EEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 10 (class 2615 OID 86922)
-- Name: binding; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA binding;


ALTER SCHEMA binding OWNER TO postgres;

--
-- TOC entry 12 (class 2615 OID 86923)
-- Name: common; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA common;


ALTER SCHEMA common OWNER TO postgres;

--
-- TOC entry 13 (class 2615 OID 86924)
-- Name: ebom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ebom;


ALTER SCHEMA ebom OWNER TO postgres;

--
-- TOC entry 4431 (class 0 OID 0)
-- Dependencies: 13
-- Name: SCHEMA ebom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA ebom IS 'engenering bill of materials';


--
-- TOC entry 14 (class 2615 OID 86925)
-- Name: inventory; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA inventory;


ALTER SCHEMA inventory OWNER TO postgres;

--
-- TOC entry 4432 (class 0 OID 0)
-- Dependencies: 14
-- Name: SCHEMA inventory; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA inventory IS 'inventory items definition';


--
-- TOC entry 16 (class 2615 OID 86926)
-- Name: mbom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA mbom;


ALTER SCHEMA mbom OWNER TO postgres;

--
-- TOC entry 4433 (class 0 OID 0)
-- Dependencies: 16
-- Name: SCHEMA mbom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA mbom IS 'manufacturing bill of materials';


--
-- TOC entry 17 (class 2615 OID 86927)
-- Name: operation; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA operation;


ALTER SCHEMA operation OWNER TO postgres;

--
-- TOC entry 4434 (class 0 OID 0)
-- Dependencies: 17
-- Name: SCHEMA operation; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA operation IS 'operation segments';


--
-- TOC entry 18 (class 2615 OID 86928)
-- Name: pgunit; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA pgunit;


ALTER SCHEMA pgunit OWNER TO postgres;

--
-- TOC entry 24 (class 2615 OID 86931)
-- Name: process; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA process;


ALTER SCHEMA process OWNER TO postgres;

--
-- TOC entry 4435 (class 0 OID 0)
-- Dependencies: 24
-- Name: SCHEMA process; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA process IS 'production segments ?';


--
-- TOC entry 19 (class 2615 OID 86930)
-- Name: product; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA product;


ALTER SCHEMA product OWNER TO postgres;

--
-- TOC entry 4436 (class 0 OID 0)
-- Dependencies: 19
-- Name: SCHEMA product; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA product IS 'process segments';


--
-- TOC entry 23 (class 2615 OID 93345)
-- Name: production; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA production;


ALTER SCHEMA production OWNER TO postgres;

--
-- TOC entry 4437 (class 0 OID 0)
-- Dependencies: 23
-- Name: SCHEMA production; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA production IS 'production process segments';


--
-- TOC entry 20 (class 2615 OID 86932)
-- Name: route; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA route;


ALTER SCHEMA route OWNER TO postgres;

--
-- TOC entry 4439 (class 0 OID 0)
-- Dependencies: 20
-- Name: SCHEMA route; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA route IS 'material routing';


--
-- TOC entry 21 (class 2615 OID 86933)
-- Name: tests; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tests;


ALTER SCHEMA tests OWNER TO postgres;

--
-- TOC entry 22 (class 2615 OID 86934)
-- Name: uom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA uom;


ALTER SCHEMA uom OWNER TO postgres;

--
-- TOC entry 1 (class 3079 OID 13343)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 4440 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 5 (class 3079 OID 86935)
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- TOC entry 4441 (class 0 OID 0)
-- Dependencies: 5
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- TOC entry 4 (class 3079 OID 87110)
-- Name: pldbgapi; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pldbgapi WITH SCHEMA public;


--
-- TOC entry 4442 (class 0 OID 0)
-- Dependencies: 4
-- Name: EXTENSION pldbgapi; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pldbgapi IS 'server-side support for debugging PL/pgSQL functions';


--
-- TOC entry 3 (class 3079 OID 87147)
-- Name: plpgsql_check; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql_check WITH SCHEMA public;


--
-- TOC entry 4443 (class 0 OID 0)
-- Dependencies: 3
-- Name: EXTENSION plpgsql_check; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql_check IS 'extended check for plpgsql functions';


--
-- TOC entry 2 (class 3079 OID 87152)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- TOC entry 4444 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- TOC entry 968 (class 1247 OID 87164)
-- Name: component_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.component_kind AS ENUM (
    'ASSEMBLY',
    'PART',
    'BUYABLE'
);


ALTER TYPE common.component_kind OWNER TO postgres;

--
-- TOC entry 971 (class 1247 OID 87171)
-- Name: quantity; Type: DOMAIN; Schema: common; Owner: postgres
--

CREATE DOMAIN common.quantity AS numeric(20,4) DEFAULT 0
	CONSTRAINT quantity_is_positive CHECK ((VALUE >= (0)::numeric));


ALTER DOMAIN common.quantity OWNER TO postgres;

--
-- TOC entry 4445 (class 0 OID 0)
-- Dependencies: 971
-- Name: DOMAIN quantity; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON DOMAIN common.quantity IS 'quantity domain';


--
-- TOC entry 973 (class 1247 OID 87175)
-- Name: component_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.component_specification AS (
	part_code character varying,
	version_num integer,
	quantity common.quantity,
	uom_code character varying,
	component_type common.component_kind
);


ALTER TYPE common.component_specification OWNER TO postgres;

--
-- TOC entry 976 (class 1247 OID 87177)
-- Name: material_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.material_kind AS ENUM (
    'CONSUMABLE',
    'PRODUCIBLE',
    'PRIMAL'
);


ALTER TYPE common.material_kind OWNER TO postgres;

--
-- TOC entry 979 (class 1247 OID 87185)
-- Name: consumable_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.consumable_specification AS (
	part_code character varying,
	version_num integer,
	quantity common.quantity,
	uom_code character varying,
	material_type common.material_kind,
	rationing_qty integer
);


ALTER TYPE common.consumable_specification OWNER TO postgres;

--
-- TOC entry 982 (class 1247 OID 87188)
-- Name: dependency_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.dependency_specification AS (
	ancestor bigint,
	descendant bigint,
	depth integer
);


ALTER TYPE common.dependency_specification OWNER TO postgres;

--
-- TOC entry 985 (class 1247 OID 87191)
-- Name: dependency_specification_ltree; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.dependency_specification_ltree AS (
	ancestor uuid,
	descendant uuid,
	depth integer,
	pathway public.ltree
);


ALTER TYPE common.dependency_specification_ltree OWNER TO postgres;

--
-- TOC entry 988 (class 1247 OID 87193)
-- Name: document_fsmt; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.document_fsmt AS ENUM (
    'PROPOSED',
    'COMMITTED',
    'DECOMMITTED'
);


ALTER TYPE common.document_fsmt OWNER TO postgres;

--
-- TOC entry 991 (class 1247 OID 87200)
-- Name: document_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.document_kind AS ENUM (
    'EBOM',
    'MBOM',
    'OPERATION',
    'PRODUCTION',
    'PRODUCT',
    'PROCESS',
    'REQUEST',
    'RESPONSE',
    'ROUTE',
    'INVENTORY'
);


ALTER TYPE common.document_kind OWNER TO postgres;

--
-- TOC entry 994 (class 1247 OID 87221)
-- Name: ebom_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.ebom_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	version_num integer,
	document_date date,
	curr_fsmt common.document_fsmt,
	document_type common.document_kind,
	component_spec common.component_specification
);


ALTER TYPE common.ebom_head OWNER TO postgres;

--
-- TOC entry 997 (class 1247 OID 87224)
-- Name: ebom_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.ebom_document AS (
	head common.ebom_head,
	body common.component_specification[]
);


ALTER TYPE common.ebom_document OWNER TO postgres;

--
-- TOC entry 1000 (class 1247 OID 87227)
-- Name: equipment_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.equipment_specification AS (
	equipment_code character varying,
	version_num integer,
	quantity common.quantity,
	uom_code character varying
);


ALTER TYPE common.equipment_specification OWNER TO postgres;

--
-- TOC entry 1003 (class 1247 OID 87230)
-- Name: inventory_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.inventory_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	part_code character varying,
	version_num integer,
	document_date date,
	uom_code character varying,
	curr_fsmt common.document_fsmt,
	document_type common.document_kind
);


ALTER TYPE common.inventory_head OWNER TO postgres;

--
-- TOC entry 1006 (class 1247 OID 87232)
-- Name: inventory_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.inventory_kind AS ENUM (
    'ASSEMBLY',
    'PART',
    'BUYABLE',
    'CONSUMABLE',
    'PRODUCIBLE',
    'PRIMAL',
    'SALABLE',
    'STORABLE',
    'PHANTOM'
);


ALTER TYPE common.inventory_kind OWNER TO postgres;

--
-- TOC entry 1009 (class 1247 OID 87251)
-- Name: unit_conversion_type; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.unit_conversion_type AS (
	uom_code_from character varying,
	uom_code_to character varying,
	factor numeric
);


ALTER TYPE common.unit_conversion_type OWNER TO postgres;

--
-- TOC entry 1012 (class 1247 OID 87254)
-- Name: inventory_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.inventory_document AS (
	head common.inventory_head,
	meas common.unit_conversion_type[],
	kind common.inventory_kind[]
);


ALTER TYPE common.inventory_document OWNER TO postgres;

--
-- TOC entry 1015 (class 1247 OID 87257)
-- Name: inventory_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.inventory_specification AS (
	part_code character varying,
	version_num integer,
	quantity common.quantity,
	uom_code character varying,
	inventory_type common.inventory_kind
);


ALTER TYPE common.inventory_specification OWNER TO postgres;

--
-- TOC entry 1018 (class 1247 OID 87260)
-- Name: material_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.material_specification AS (
	part_code character varying,
	version_num integer,
	quantity common.quantity,
	uom_code character varying,
	material_type common.material_kind
);


ALTER TYPE common.material_specification OWNER TO postgres;

--
-- TOC entry 1021 (class 1247 OID 87263)
-- Name: mbom_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.mbom_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	version_num integer,
	document_date date,
	curr_fsmt common.document_fsmt,
	document_type common.document_kind,
	material_spec common.material_specification
);


ALTER TYPE common.mbom_head OWNER TO postgres;

--
-- TOC entry 1024 (class 1247 OID 87266)
-- Name: mbom_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.mbom_document AS (
	head common.mbom_head,
	body common.material_specification[]
);


ALTER TYPE common.mbom_document OWNER TO postgres;

--
-- TOC entry 1027 (class 1247 OID 87272)
-- Name: personnel_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.personnel_specification AS (
	personnel_code character varying,
	version_num integer,
	rationing_qty integer,
	batch_qty integer,
	worker_qty integer,
	setup_time interval,
	piece_time interval
);


ALTER TYPE common.personnel_specification OWNER TO postgres;

--
-- TOC entry 1033 (class 1247 OID 87283)
-- Name: process_segment_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.process_segment_kind AS ENUM (
    'PROCESS',
    'PRODUCTION',
    'MOVEMENT',
    'INSPECTION',
    'OPERATION'
);


ALTER TYPE common.process_segment_kind OWNER TO postgres;

--
-- TOC entry 1036 (class 1247 OID 87295)
-- Name: product_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.product_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	version_num integer,
	document_date date,
	curr_fsmt common.document_fsmt,
	document_type common.document_kind,
	salable_spec common.inventory_specification
);


ALTER TYPE common.product_head OWNER TO postgres;

--
-- TOC entry 1030 (class 1247 OID 87275)
-- Name: tooling_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.tooling_specification AS (
	tooling_code character varying,
	version_num integer,
	quantity common.quantity,
	uom_code character varying
);


ALTER TYPE common.tooling_specification OWNER TO postgres;

--
-- TOC entry 1039 (class 1247 OID 87298)
-- Name: product_segment; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.product_segment AS (
	gid uuid,
	duration interval,
	consumable_spec common.consumable_specification[],
	personnel_spec common.personnel_specification[],
	equipmet_spec common.equipment_specification[],
	tooling_spec common.tooling_specification[]
);


ALTER TYPE common.product_segment OWNER TO postgres;

--
-- TOC entry 1042 (class 1247 OID 87301)
-- Name: product_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.product_document AS (
	head common.product_head,
	body common.product_segment[],
	deps common.dependency_specification[]
);


ALTER TYPE common.product_document OWNER TO postgres;

--
-- TOC entry 1060 (class 1247 OID 87269)
-- Name: production_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.production_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	version_num integer,
	document_date date,
	curr_fsmt common.document_fsmt,
	document_type common.document_kind,
	producible_spec common.material_specification
);


ALTER TYPE common.production_head OWNER TO postgres;

--
-- TOC entry 1063 (class 1247 OID 87278)
-- Name: production_segment; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.production_segment AS (
	gid uuid,
	operation_code character varying,
	consumable_spec common.consumable_specification[],
	personnel_spec common.personnel_specification[],
	equipmet_spec common.equipment_specification[],
	tooling_spec common.tooling_specification[]
);


ALTER TYPE common.production_segment OWNER TO postgres;

--
-- TOC entry 1352 (class 1247 OID 87281)
-- Name: production_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.production_document AS (
	head common.production_head,
	body common.production_segment[],
	deps common.dependency_specification[]
);


ALTER TYPE common.production_document OWNER TO postgres;

--
-- TOC entry 4446 (class 0 OID 0)
-- Dependencies: 1352
-- Name: TYPE production_document; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON TYPE common.production_document IS 'operation';


--
-- TOC entry 1045 (class 1247 OID 87304)
-- Name: route_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.route_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	version_num integer,
	document_date date,
	curr_fsmt common.document_fsmt,
	document_type common.document_kind,
	descendant_spec common.material_specification
);


ALTER TYPE common.route_head OWNER TO postgres;

--
-- TOC entry 1048 (class 1247 OID 87307)
-- Name: route_segment; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.route_segment AS (
	descendant_spec common.material_specification,
	ancestor_spec common.material_specification[],
	location_spec character varying[]
);


ALTER TYPE common.route_segment OWNER TO postgres;

--
-- TOC entry 1051 (class 1247 OID 87310)
-- Name: route_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.route_document AS (
	head common.route_head,
	body common.route_segment[]
);


ALTER TYPE common.route_document OWNER TO postgres;

--
-- TOC entry 444 (class 1255 OID 87311)
-- Name: assemly_to_consumable(common.component_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.assemly_to_consumable(__component common.component_specification) RETURNS common.material_specification
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


ALTER FUNCTION common.assemly_to_consumable(__component common.component_specification) OWNER TO postgres;

--
-- TOC entry 445 (class 1255 OID 87312)
-- Name: assemly_to_producible(common.component_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.assemly_to_producible(__component common.component_specification) RETURNS common.material_specification
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


ALTER FUNCTION common.assemly_to_producible(__component common.component_specification) OWNER TO postgres;

--
-- TOC entry 446 (class 1255 OID 87313)
-- Name: buyable_to_consumable(common.component_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.buyable_to_consumable(__component common.component_specification) RETURNS common.material_specification
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


ALTER FUNCTION common.buyable_to_consumable(__component common.component_specification) OWNER TO postgres;

--
-- TOC entry 447 (class 1255 OID 87314)
-- Name: buyable_to_primal(common.component_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.buyable_to_primal(__component common.component_specification) RETURNS common.material_specification
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


ALTER FUNCTION common.buyable_to_primal(__component common.component_specification) OWNER TO postgres;

--
-- TOC entry 448 (class 1255 OID 87315)
-- Name: consumable_to_assembly(common.material_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.consumable_to_assembly(__material common.material_specification) RETURNS common.component_specification
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


ALTER FUNCTION common.consumable_to_assembly(__material common.material_specification) OWNER TO postgres;

--
-- TOC entry 449 (class 1255 OID 87316)
-- Name: consumable_to_buyable(common.material_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.consumable_to_buyable(__material common.material_specification) RETURNS common.component_specification
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


ALTER FUNCTION common.consumable_to_buyable(__material common.material_specification) OWNER TO postgres;

--
-- TOC entry 430 (class 1255 OID 87317)
-- Name: consumable_to_part(common.material_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.consumable_to_part(__material common.material_specification) RETURNS common.component_specification
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


ALTER FUNCTION common.consumable_to_part(__material common.material_specification) OWNER TO postgres;

--
-- TOC entry 431 (class 1255 OID 87318)
-- Name: disallow_editing_of_committed_document_head(); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.disallow_editing_of_committed_document_head() RETURNS trigger
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
-- TOC entry 450 (class 1255 OID 87319)
-- Name: part_to_consumable(common.component_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.part_to_consumable(__component common.component_specification) RETURNS common.material_specification
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


ALTER FUNCTION common.part_to_consumable(__component common.component_specification) OWNER TO postgres;

--
-- TOC entry 451 (class 1255 OID 87320)
-- Name: part_to_producible(common.component_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.part_to_producible(__component common.component_specification) RETURNS common.material_specification
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


ALTER FUNCTION common.part_to_producible(__component common.component_specification) OWNER TO postgres;

--
-- TOC entry 452 (class 1255 OID 87321)
-- Name: primal_to_buyable(common.material_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.primal_to_buyable(__material common.material_specification) RETURNS common.component_specification
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


ALTER FUNCTION common.primal_to_buyable(__material common.material_specification) OWNER TO postgres;

--
-- TOC entry 453 (class 1255 OID 87322)
-- Name: producible_to_assembly(common.material_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.producible_to_assembly(__material common.material_specification) RETURNS common.component_specification
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


ALTER FUNCTION common.producible_to_assembly(__material common.material_specification) OWNER TO postgres;

--
-- TOC entry 454 (class 1255 OID 87323)
-- Name: producible_to_part(common.material_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.producible_to_part(__material common.material_specification) RETURNS common.component_specification
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


ALTER FUNCTION common.producible_to_part(__material common.material_specification) OWNER TO postgres;

--
-- TOC entry 455 (class 1255 OID 87324)
-- Name: set_prev_doc_fsmt(); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.set_prev_doc_fsmt() RETURNS trigger
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

--
-- TOC entry 456 (class 1255 OID 87325)
-- Name: destroy(bigint); Type: FUNCTION; Schema: ebom; Owner: postgres
--

CREATE FUNCTION ebom.destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM ebom.definition WHERE id = __document_id;
END;
$$;


ALTER FUNCTION ebom.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 457 (class 1255 OID 87326)
-- Name: get_body(bigint); Type: FUNCTION; Schema: ebom; Owner: postgres
--

CREATE FUNCTION ebom.get_body(__document_id bigint) RETURNS common.component_specification[]
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
-- TOC entry 458 (class 1255 OID 87327)
-- Name: get_gid_by_id(bigint); Type: FUNCTION; Schema: ebom; Owner: postgres
--

CREATE FUNCTION ebom.get_gid_by_id(__document_id bigint) RETURNS uuid
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
-- TOC entry 459 (class 1255 OID 87328)
-- Name: get_head(bigint); Type: FUNCTION; Schema: ebom; Owner: postgres
--

CREATE FUNCTION ebom.get_head(__document_id bigint) RETURNS common.ebom_head
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
-- TOC entry 460 (class 1255 OID 87329)
-- Name: get_id_by_gid(uuid); Type: FUNCTION; Schema: ebom; Owner: postgres
--

CREATE FUNCTION ebom.get_id_by_gid(__document_gid uuid) RETURNS bigint
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
-- TOC entry 461 (class 1255 OID 87330)
-- Name: init(common.ebom_head, common.component_specification[]); Type: FUNCTION; Schema: ebom; Owner: postgres
--

CREATE FUNCTION ebom.init(__head common.ebom_head, __body common.component_specification[]) RETURNS bigint
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
-- TOC entry 462 (class 1255 OID 87331)
-- Name: reinit(bigint, common.component_specification[]); Type: FUNCTION; Schema: ebom; Owner: postgres
--

CREATE FUNCTION ebom.reinit(__document_id bigint, __body common.component_specification[]) RETURNS void
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

--
-- TOC entry 463 (class 1255 OID 87332)
-- Name: destroy(bigint); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION inventory.destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM inventory.definition WHERE id = __document_id;
END;
$$;


ALTER FUNCTION inventory.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 464 (class 1255 OID 87333)
-- Name: get_base_uom(character varying, integer); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION inventory.get_base_uom(_part_code character varying, _version_num integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN 
    definition.uom_code
  FROM 
    inventory.information, 
    inventory.definition
  WHERE 
    information.id = definition.information_id AND
    information.part_code = _part_code AND 
    definition.version_num = _version_num;

END;
$$;


ALTER FUNCTION inventory.get_base_uom(_part_code character varying, _version_num integer) OWNER TO postgres;

--
-- TOC entry 465 (class 1255 OID 87334)
-- Name: get_document(bigint); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION inventory.get_document(__document_id bigint) RETURNS common.inventory_document
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    (inventory.get_head(__document_id),
    inventory.get_meas_spec(__document_id),
    inventory.get_kind_spec(__document_id))::common.inventory_document;
END
$$;


ALTER FUNCTION inventory.get_document(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 466 (class 1255 OID 87335)
-- Name: get_head(bigint); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION inventory.get_head(__document_id bigint) RETURNS common.inventory_head
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN 
    (definition.id, 
    definition.gid, 
    information.display_name, 
    information.part_code, 
    definition.version_num, 
    definition.published_date, 
    definition.uom_code, 
    definition.curr_fsmt,
    'INVENTORY'::common.document_kind
    )::common.inventory_head
  FROM 
    inventory.information, 
    inventory.definition
  WHERE 
    information.id = definition.information_id AND
    definition.id = __document_id;
END;
$$;


ALTER FUNCTION inventory.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 467 (class 1255 OID 87336)
-- Name: get_head_batch(); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION inventory.get_head_batch() RETURNS common.inventory_head[]
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN 
    ARRAY (
      SELECT
        (definition.id, 
        definition.gid, 
        information.display_name, 
        information.part_code, 
        definition.version_num, 
        definition.published_date, 
        definition.uom_code, 
        definition.curr_fsmt,
        'INVENTORY'::common.document_kind
        )::common.inventory_head
      FROM 
        inventory.information, 
        inventory.definition
      WHERE 
        information.id = definition.information_id --AND
        --definition.id = __document_id
    );
END;
$$;


ALTER FUNCTION inventory.get_head_batch() OWNER TO postgres;

--
-- TOC entry 562 (class 1255 OID 87337)
-- Name: get_kind_spec(bigint); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION inventory.get_kind_spec(__document_id bigint) RETURNS common.inventory_kind[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY (
      SELECT assembly.inventory_type FROM inventory.assembly
        WHERE assembly.definition_id = __document_id
      UNION ALL
      SELECT buyable.inventory_type FROM inventory.buyable
        WHERE buyable.definition_id = __document_id
      UNION ALL
      SELECT consumable.inventory_type FROM inventory.consumable
        WHERE consumable.definition_id = __document_id
      UNION ALL
      SELECT part.inventory_type FROM inventory.part
        WHERE part.definition_id = __document_id
      UNION ALL
      SELECT primal.inventory_type FROM inventory.primal
        WHERE primal.definition_id = __document_id
      UNION ALL
      SELECT producible.inventory_type FROM inventory.producible
        WHERE producible.definition_id = __document_id
      UNION ALL
      SELECT salable.inventory_type FROM inventory.salable
        WHERE salable.definition_id = __document_id
      UNION ALL
      SELECT storable.inventory_type FROM inventory.storable
        WHERE storable.definition_id = __document_id
    );
END
$$;


ALTER FUNCTION inventory.get_kind_spec(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 468 (class 1255 OID 87338)
-- Name: get_meas_spec(bigint); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION inventory.get_meas_spec(__document_id bigint) RETURNS common.unit_conversion_type[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (definition.uom_code, 
        measurement.uom_code, 
        measurement.factor)::common.unit_conversion_type
      FROM 
        inventory.definition, 
        inventory.measurement
      WHERE 
        definition.id = measurement.definition_id AND 
        definition.id = __document_id
    );
END
$$;


ALTER FUNCTION inventory.get_meas_spec(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 469 (class 1255 OID 87339)
-- Name: get_uom_conversion_factors(character varying, integer, character varying, character varying); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION inventory.get_uom_conversion_factors(_part_code character varying, _version_num integer, _uom_domain_from character varying, _uom_domain_to character varying) RETURNS common.unit_conversion_type[]
    LANGUAGE plpgsql
    AS $$
DECLARE  
BEGIN

  RETURN 
    ARRAY (
      SELECT
        (definition.uom_code, 
        measurement.uom_code, 
        measurement.factor)::common.unit_conversion_type
      FROM 
        inventory.definition, 
        inventory.measurement, 
        inventory.information, 
        uom.information uom_from, 
        uom.information uom_to
      WHERE 
        definition.id = measurement.definition_id AND
        information.id = definition.information_id AND
        uom_from.uom_code = definition.uom_code AND
        uom_to.uom_code = measurement.uom_code AND
        information.part_code = _part_code AND 
        definition.version_num = _version_num AND 
        uom_from.uom_domain = _uom_domain_from::common.uom_domain_kind AND 
        uom_to.uom_domain = _uom_domain_to::common.uom_domain_kind
      );

END
$$;


ALTER FUNCTION inventory.get_uom_conversion_factors(_part_code character varying, _version_num integer, _uom_domain_from character varying, _uom_domain_to character varying) OWNER TO postgres;

--
-- TOC entry 470 (class 1255 OID 87340)
-- Name: init(common.inventory_head, common.unit_conversion_type[], common.inventory_kind[]); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION inventory.init(__head common.inventory_head, __meas common.unit_conversion_type[], __kind common.inventory_kind[]) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _information_id bigint;
  _definition_id bigint;
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
    inventory.information, 
    inventory.definition
  WHERE 
    information.id = definition.information_id AND
    information.part_code = __head.part_code --AND 
    --definition.version_num = __head.version_num
  INTO
    _max_version_num;


  -- replece with coalesce
  IF (_max_version_num IS NULL) THEN
    _max_version_num := 0;
  END IF;  

  _information_id := id FROM inventory.information WHERE part_code = __head.part_code;

  IF (_information_id IS NULL) THEN
    INSERT INTO
      inventory.information (
        id,
        display_name,
        published_date,
        part_code)
    VALUES (
      DEFAULT,
      __head.display_name,
      __head.document_date,
      __head.part_code)
    RETURNING id INTO _information_id;
  END IF;

  INSERT INTO
    inventory.definition (
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

  PERFORM inventory.set_meas_spec(_definition_id, __meas);
  PERFORM inventory.set_kind_spec(_definition_id, __kind);

  RETURN _definition_id;

END;
$$;


ALTER FUNCTION inventory.init(__head common.inventory_head, __meas common.unit_conversion_type[], __kind common.inventory_kind[]) OWNER TO postgres;

--
-- TOC entry 560 (class 1255 OID 87341)
-- Name: reinit(bigint, common.unit_conversion_type[], common.inventory_kind[]); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION inventory.reinit(__document_id bigint, __meas common.unit_conversion_type[], __kind common.inventory_kind[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN

  DELETE FROM
    inventory.measurement
  WHERE
    definition_id = __document_id;
  
  DELETE FROM
    inventory.conglomeration
  WHERE
    definition_id = __document_id;

  PERFORM inventory.set_meas_spec(__document_id, __meas);
  PERFORM inventory.set_kind_spec(__document_id, __kind);

END;
$$;


ALTER FUNCTION inventory.reinit(__document_id bigint, __meas common.unit_conversion_type[], __kind common.inventory_kind[]) OWNER TO postgres;

--
-- TOC entry 561 (class 1255 OID 87342)
-- Name: set_kind_spec(bigint, common.inventory_kind[]); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION inventory.set_kind_spec(__document_id bigint, __inventory_kinds common.inventory_kind[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _inventory_kind common.inventory_kind;
  _head common.inventory_head;
BEGIN

  _head := inventory.get_head(__document_id);

  FOREACH _inventory_kind IN
    ARRAY __inventory_kinds
  LOOP

      CASE _inventory_kind
        WHEN 'ASSEMBLY'::common.inventory_kind THEN 
          INSERT INTO
            inventory.assembly (
              part_code,
              version_num,
              display_name,
              published_date,
              inventory_type,
              uom_code,
              definition_id)
          VALUES (
            _head.part_code,
            _head.version_num,
            _head.display_name,
            _head.document_date,
            _inventory_kind,
            _head.uom_code,
            __document_id);

        WHEN 'BUYABLE'::common.inventory_kind THEN
          INSERT INTO
            inventory.buyable (
              part_code,
              version_num,
              display_name,
              published_date,
              inventory_type,
              uom_code,
              definition_id)
          VALUES (
            _head.part_code,
            _head.version_num,
            _head.display_name,
            _head.document_date,
            _inventory_kind,
            _head.uom_code,
            __document_id);

        WHEN 'PART'::common.inventory_kind THEN 
          INSERT INTO
            inventory.part (
              part_code,
              version_num,
              display_name,
              published_date,
              inventory_type,
              uom_code,
              definition_id)
          VALUES (
            _head.part_code,
            _head.version_num,
            _head.display_name,
            _head.document_date,
            _inventory_kind,
            _head.uom_code,
            __document_id);
          
        WHEN 'PRIMAL'::common.inventory_kind THEN 
          INSERT INTO
            inventory.primal (
              part_code,
              version_num,
              display_name,
              published_date,
              inventory_type,
              uom_code,
              definition_id)
          VALUES (
            _head.part_code,
            _head.version_num,
            _head.display_name,
            _head.document_date,
            _inventory_kind,
            _head.uom_code,
            __document_id);

        WHEN 'PRODUCIBLE'::common.inventory_kind THEN 
          INSERT INTO
            inventory.producible (
              part_code,
              version_num,
              display_name,
              published_date,
              inventory_type,
              uom_code,
              definition_id)
          VALUES (
            _head.part_code,
            _head.version_num,
            _head.display_name,
            _head.document_date,
            _inventory_kind,
            _head.uom_code,
            __document_id);

        WHEN 'SALABLE'::common.inventory_kind THEN 
          INSERT INTO
            inventory.salable (
              part_code,
              version_num,
              display_name,
              published_date,
              inventory_type,
              uom_code,
              definition_id)
          VALUES (
            _head.part_code,
            _head.version_num,
            _head.display_name,
            _head.document_date,
            _inventory_kind,
            _head.uom_code,
            __document_id);

        WHEN 'STORABLE'::common.inventory_kind THEN 
          INSERT INTO
            inventory.storable (
              part_code,
              version_num,
              display_name,
              published_date,
              inventory_type,
              uom_code,
              definition_id)
          VALUES (
            _head.part_code,
            _head.version_num,
            _head.display_name,
            _head.document_date,
            _inventory_kind,
            _head.uom_code,
            __document_id);

        WHEN 'CONSUMABLE'::common.inventory_kind THEN 
          INSERT INTO
            inventory.consumable (
              part_code,
              version_num,
              display_name,
              published_date,
              inventory_type,
              uom_code,
              definition_id)
          VALUES (
            _head.part_code,
            _head.version_num,
            _head.display_name,
            _head.document_date,
            _inventory_kind,
            _head.uom_code,
            __document_id);

        ELSE
          RAISE EXCEPTION 'unsupported inventory_kind %', _inventory_kind;
    END CASE;

  END LOOP;
END
$$;


ALTER FUNCTION inventory.set_kind_spec(__document_id bigint, __inventory_kinds common.inventory_kind[]) OWNER TO postgres;

--
-- TOC entry 472 (class 1255 OID 87343)
-- Name: set_meas_spec(bigint, common.unit_conversion_type[]); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION inventory.set_meas_spec(__document_id bigint, __uom_conversion_factors common.unit_conversion_type[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _uom_conversion_factor common.unit_conversion_type;
BEGIN
  FOREACH _uom_conversion_factor IN 
    ARRAY __uom_conversion_factors
  LOOP
    INSERT INTO 
      inventory.measurement (
        definition_id,
        uom_code,
        factor)
    VALUES (
      __document_id,
      _uom_conversion_factor.uom_code_to,
      _uom_conversion_factor.factor);
  END LOOP;
END
$$;


ALTER FUNCTION inventory.set_meas_spec(__document_id bigint, __uom_conversion_factors common.unit_conversion_type[]) OWNER TO postgres;

--
-- TOC entry 473 (class 1255 OID 87344)
-- Name: destroy(bigint); Type: FUNCTION; Schema: mbom; Owner: postgres
--

CREATE FUNCTION mbom.destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM mbom.definition WHERE id = __document_id;
END;
$$;


ALTER FUNCTION mbom.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 474 (class 1255 OID 87345)
-- Name: get_body(bigint); Type: FUNCTION; Schema: mbom; Owner: postgres
--

CREATE FUNCTION mbom.get_body(__document_id bigint) RETURNS common.material_specification[]
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
-- TOC entry 475 (class 1255 OID 87346)
-- Name: get_gid_by_id(bigint); Type: FUNCTION; Schema: mbom; Owner: postgres
--

CREATE FUNCTION mbom.get_gid_by_id(__document_id bigint) RETURNS uuid
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
-- TOC entry 476 (class 1255 OID 87347)
-- Name: get_head(bigint); Type: FUNCTION; Schema: mbom; Owner: postgres
--

CREATE FUNCTION mbom.get_head(__document_id bigint) RETURNS common.mbom_head
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
-- TOC entry 477 (class 1255 OID 87348)
-- Name: get_id_by_gid(uuid); Type: FUNCTION; Schema: mbom; Owner: postgres
--

CREATE FUNCTION mbom.get_id_by_gid(__document_gid uuid) RETURNS bigint
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
-- TOC entry 478 (class 1255 OID 87349)
-- Name: init(common.mbom_head, common.material_specification[]); Type: FUNCTION; Schema: mbom; Owner: postgres
--

CREATE FUNCTION mbom.init(__head common.mbom_head, __body common.material_specification[]) RETURNS bigint
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
-- TOC entry 479 (class 1255 OID 87350)
-- Name: reinit(bigint, common.material_specification[]); Type: FUNCTION; Schema: mbom; Owner: postgres
--

CREATE FUNCTION mbom.reinit(__document_id bigint, __body common.material_specification[]) RETURNS void
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

--
-- TOC entry 480 (class 1255 OID 87351)
-- Name: destroy(bigint); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION operation.destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM operation.definition WHERE id = __document_id;
END;
$$;


ALTER FUNCTION operation.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 481 (class 1255 OID 87352)
-- Name: get_body(bigint); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION operation.get_body(__document_id bigint) RETURNS common.production_segment[]
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
-- TOC entry 482 (class 1255 OID 87353)
-- Name: get_consumable_spec(bigint); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION operation.get_consumable_spec(__segment_id bigint) RETURNS common.consumable_specification[]
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
-- TOC entry 483 (class 1255 OID 87354)
-- Name: get_deps(bigint); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION operation.get_deps(__document_id bigint) RETURNS common.dependency_specification[]
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
-- TOC entry 471 (class 1255 OID 87355)
-- Name: get_equipment_spec(bigint); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION operation.get_equipment_spec(__segment_id bigint) RETURNS common.equipment_specification[]
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
-- TOC entry 484 (class 1255 OID 87356)
-- Name: get_gid_by_id(bigint); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION operation.get_gid_by_id(__document_id bigint) RETURNS uuid
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
-- TOC entry 485 (class 1255 OID 87357)
-- Name: get_head(bigint); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION operation.get_head(__document_id bigint) RETURNS common.production_head
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
-- TOC entry 486 (class 1255 OID 87358)
-- Name: get_id_by_gid(uuid); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION operation.get_id_by_gid(__document_gid uuid) RETURNS bigint
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
-- TOC entry 487 (class 1255 OID 87359)
-- Name: get_personnel_spec(bigint); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION operation.get_personnel_spec(__segment_id bigint) RETURNS common.personnel_specification[]
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
-- TOC entry 488 (class 1255 OID 87360)
-- Name: get_segment(bigint); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION operation.get_segment(__segment_id bigint) RETURNS common.production_segment
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
-- TOC entry 489 (class 1255 OID 87361)
-- Name: get_tooling_spec(bigint); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION operation.get_tooling_spec(__segment_id bigint) RETURNS common.tooling_specification[]
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
-- TOC entry 490 (class 1255 OID 87362)
-- Name: init(common.production_head, common.production_segment[], common.dependency_specification[]); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION operation.init(__head common.production_head, __body common.production_segment[], __deps common.dependency_specification[]) RETURNS bigint
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


ALTER FUNCTION operation.init(__head common.production_head, __body common.production_segment[], __deps common.dependency_specification[]) OWNER TO postgres;

--
-- TOC entry 491 (class 1255 OID 87363)
-- Name: reinit(bigint, common.production_segment[], common.dependency_specification[]); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION operation.reinit(__document_id bigint, __body common.production_segment[], __deps common.dependency_specification[]) RETURNS void
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


ALTER FUNCTION operation.reinit(__document_id bigint, __body common.production_segment[], __deps common.dependency_specification[]) OWNER TO postgres;

--
-- TOC entry 492 (class 1255 OID 87364)
-- Name: set_consumable_spec(bigint, common.consumable_specification[]); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION operation.set_consumable_spec(__segment_id bigint, __material common.consumable_specification[]) RETURNS void
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
-- TOC entry 493 (class 1255 OID 87365)
-- Name: set_equipment_spec(bigint, common.equipment_specification[]); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION operation.set_equipment_spec(__segment_id bigint, __equipment common.equipment_specification[]) RETURNS void
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
-- TOC entry 494 (class 1255 OID 87366)
-- Name: set_personnel_spec(bigint, common.personnel_specification[]); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION operation.set_personnel_spec(__segment_id bigint, __personnel common.personnel_specification[]) RETURNS void
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
-- TOC entry 495 (class 1255 OID 87367)
-- Name: set_tooling_spec(bigint, common.tooling_specification[]); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION operation.set_tooling_spec(__segment_id bigint, __tooling common.tooling_specification[]) RETURNS void
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

--
-- TOC entry 496 (class 1255 OID 87368)
-- Name: assert_array_equals(anyelement, anyelement, character varying); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION pgunit.assert_array_equals(_expected anyelement, _actual anyelement, _message character varying) RETURNS void
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
-- TOC entry 497 (class 1255 OID 87369)
-- Name: assert_equals(anyelement, anyelement, character varying); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION pgunit.assert_equals(_expected anyelement, _actual anyelement, _message character varying) RETURNS void
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
-- TOC entry 498 (class 1255 OID 87370)
-- Name: assert_false(boolean, character varying); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION pgunit.assert_false(_value boolean, _message character varying) RETURNS void
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
-- TOC entry 499 (class 1255 OID 87371)
-- Name: assert_not_equals(anyelement, anyelement, character varying); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION pgunit.assert_not_equals(_expected anyelement, _actual anyelement, _message character varying) RETURNS void
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
-- TOC entry 500 (class 1255 OID 87372)
-- Name: assert_not_null(anyelement, character varying); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION pgunit.assert_not_null(_value anyelement, _message character varying) RETURNS void
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
-- TOC entry 501 (class 1255 OID 87373)
-- Name: assert_null(anyelement, character varying); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION pgunit.assert_null(_value anyelement, _message character varying) RETURNS void
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
-- TOC entry 502 (class 1255 OID 87374)
-- Name: assert_true(boolean, character varying); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION pgunit.assert_true(_value boolean, _message character varying) RETURNS void
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
-- TOC entry 503 (class 1255 OID 87375)
-- Name: fail(character varying); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION pgunit.fail(_message character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  RAISE EXCEPTION E'#fail\n%', _message;
END;
$$;


ALTER FUNCTION pgunit.fail(_message character varying) OWNER TO postgres;

--
-- TOC entry 504 (class 1255 OID 87376)
-- Name: run_test(character varying); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION pgunit.run_test(_sp character varying) RETURNS character varying
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
-- TOC entry 505 (class 1255 OID 87377)
-- Name: test_assert_array_equals(); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION pgunit.test_assert_array_equals() RETURNS void
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
-- TOC entry 506 (class 1255 OID 87378)
-- Name: test_assert_equals(); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION pgunit.test_assert_equals() RETURNS void
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
-- TOC entry 507 (class 1255 OID 87379)
-- Name: test_assert_false(); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION pgunit.test_assert_false() RETURNS void
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
-- TOC entry 508 (class 1255 OID 87380)
-- Name: test_assert_not_null(); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION pgunit.test_assert_not_null() RETURNS void
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
-- TOC entry 509 (class 1255 OID 87381)
-- Name: test_assert_null(); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION pgunit.test_assert_null() RETURNS void
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
-- TOC entry 510 (class 1255 OID 87382)
-- Name: test_assert_true(); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION pgunit.test_assert_true() RETURNS void
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
-- TOC entry 511 (class 1255 OID 87383)
-- Name: test_fail(); Type: FUNCTION; Schema: pgunit; Owner: postgres
--

CREATE FUNCTION pgunit.test_fail() RETURNS void
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

--
-- TOC entry 512 (class 1255 OID 87384)
-- Name: destroy(bigint); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM product.definition WHERE id = __document_id;
END;
$$;


ALTER FUNCTION product.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 513 (class 1255 OID 87385)
-- Name: get_body(bigint); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.get_body(__document_id bigint) RETURNS common.product_segment[]
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
-- TOC entry 514 (class 1255 OID 87386)
-- Name: get_consumable_spec(bigint); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.get_consumable_spec(__segment_id bigint) RETURNS common.consumable_specification[]
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
-- TOC entry 515 (class 1255 OID 87387)
-- Name: get_deps(bigint); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.get_deps(__document_id bigint) RETURNS common.dependency_specification[]
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
-- TOC entry 516 (class 1255 OID 87388)
-- Name: get_equipment_spec(bigint); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.get_equipment_spec(__segment_id bigint) RETURNS common.equipment_specification[]
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
-- TOC entry 517 (class 1255 OID 87389)
-- Name: get_gid_by_id(bigint); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.get_gid_by_id(__document_id bigint) RETURNS uuid
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
-- TOC entry 518 (class 1255 OID 87390)
-- Name: get_head(bigint); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.get_head(__document_id bigint) RETURNS common.product_head
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
-- TOC entry 519 (class 1255 OID 87391)
-- Name: get_id_by_gid(uuid); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.get_id_by_gid(__document_gid uuid) RETURNS bigint
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
-- TOC entry 520 (class 1255 OID 87392)
-- Name: get_personnel_spec(bigint); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.get_personnel_spec(__segment_id bigint) RETURNS common.personnel_specification[]
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
-- TOC entry 521 (class 1255 OID 87393)
-- Name: get_segment(bigint); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.get_segment(__segment_id bigint) RETURNS common.product_segment
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    (segment.gid,
    segment.duration,
    product.get_consumable_spec(__segment_id := __segment_id),
    product.get_personnel_spec(__segment_id := __segment_id),
    product.get_equipment_spec(__segment_id := __segment_id),
    product.get_tooling_spec(__segment_id := __segment_id))::common.product_segment
  FROM 
    product.segment
  WHERE 
    segment.id = __segment_id;
END
$$;


ALTER FUNCTION product.get_segment(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 522 (class 1255 OID 87394)
-- Name: get_tooling_spec(bigint); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.get_tooling_spec(__segment_id bigint) RETURNS common.tooling_specification[]
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
-- TOC entry 523 (class 1255 OID 87395)
-- Name: init(common.product_head, common.product_segment[], common.dependency_specification[]); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.init(__head common.product_head, __body common.product_segment[], __deps common.dependency_specification[]) RETURNS bigint
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
-- TOC entry 524 (class 1255 OID 87396)
-- Name: reinit(bigint, common.product_segment[], common.dependency_specification[]); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.reinit(__document_id bigint, __body common.product_segment[], __deps common.dependency_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.product_segment;
BEGIN


END;
$$;


ALTER FUNCTION product.reinit(__document_id bigint, __body common.product_segment[], __deps common.dependency_specification[]) OWNER TO postgres;

--
-- TOC entry 525 (class 1255 OID 87397)
-- Name: set_consumable_spec(bigint, common.consumable_specification[]); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.set_consumable_spec(__segment_id bigint, __material common.consumable_specification[]) RETURNS void
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
-- TOC entry 526 (class 1255 OID 87398)
-- Name: set_equipment_spec(bigint, common.equipment_specification[]); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.set_equipment_spec(__segment_id bigint, __equipment common.equipment_specification[]) RETURNS void
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
-- TOC entry 527 (class 1255 OID 87399)
-- Name: set_personnel_spec(bigint, common.personnel_specification[]); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.set_personnel_spec(__segment_id bigint, __personnel common.personnel_specification[]) RETURNS void
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
-- TOC entry 528 (class 1255 OID 87400)
-- Name: set_tooling_spec(bigint, common.tooling_specification[]); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.set_tooling_spec(__segment_id bigint, __tooling common.tooling_specification[]) RETURNS void
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

--
-- TOC entry 565 (class 1255 OID 93346)
-- Name: destroy(bigint); Type: FUNCTION; Schema: production; Owner: postgres
--

CREATE FUNCTION production.destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM production.definition WHERE id = __document_id;
END;
$$;


ALTER FUNCTION production.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 566 (class 1255 OID 93347)
-- Name: get_body(bigint); Type: FUNCTION; Schema: production; Owner: postgres
--

CREATE FUNCTION production.get_body(__document_id bigint) RETURNS common.production_segment[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY(
      SELECT 
        production.get_segment(segment.id)
      FROM 
        production.segment
      WHERE 
        segment.definition_id = __document_id
    );
END
$$;


ALTER FUNCTION production.get_body(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 567 (class 1255 OID 93348)
-- Name: get_consumable_spec(bigint); Type: FUNCTION; Schema: production; Owner: postgres
--

CREATE FUNCTION production.get_consumable_spec(__segment_id bigint) RETURNS common.consumable_specification[]
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
        production.material
      WHERE 
        material.segment_id = __segment_id
    );
END
$$;


ALTER FUNCTION production.get_consumable_spec(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 568 (class 1255 OID 93349)
-- Name: get_deps(bigint); Type: FUNCTION; Schema: production; Owner: postgres
--

CREATE FUNCTION production.get_deps(__document_id bigint) RETURNS common.dependency_specification[]
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
        production.dependency, 
        production.segment
      WHERE 
        segment.id = dependency.ancestor AND
        segment.definition_id = __document_id
    );
END
$$;


ALTER FUNCTION production.get_deps(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 569 (class 1255 OID 93350)
-- Name: get_equipment_spec(bigint); Type: FUNCTION; Schema: production; Owner: postgres
--

CREATE FUNCTION production.get_equipment_spec(__segment_id bigint) RETURNS common.equipment_specification[]
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
        production.equipment
      WHERE 
        equipment.segment_id = __segment_id
    );
END
$$;


ALTER FUNCTION production.get_equipment_spec(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 570 (class 1255 OID 93351)
-- Name: get_gid_by_id(bigint); Type: FUNCTION; Schema: production; Owner: postgres
--

CREATE FUNCTION production.get_gid_by_id(__document_id bigint) RETURNS uuid
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN gid
    FROM
      production.definition
    WHERE
      id = __document_id;
END;
$$;


ALTER FUNCTION production.get_gid_by_id(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 571 (class 1255 OID 93352)
-- Name: get_head(bigint); Type: FUNCTION; Schema: production; Owner: postgres
--

CREATE FUNCTION production.get_head(__document_id bigint) RETURNS common.production_head
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
    'PRODUCTION'::common.document_kind,
      (information.part_code, 
      information.version_num, 
      1.0::common.quantity, 
      'pcs', 
      'PRODUCIBLE')::common.material_specification
    )::common.production_head
  FROM
    production.information, 
    production.definition
  WHERE
    information.id = definition.information_id AND
    definition.id = __document_id;
END;
$$;


ALTER FUNCTION production.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 572 (class 1255 OID 93353)
-- Name: get_id_by_gid(uuid); Type: FUNCTION; Schema: production; Owner: postgres
--

CREATE FUNCTION production.get_id_by_gid(__document_gid uuid) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN id
    FROM
      production.definition
    WHERE
      gid = __document_gid;
END;
$$;


ALTER FUNCTION production.get_id_by_gid(__document_gid uuid) OWNER TO postgres;

--
-- TOC entry 573 (class 1255 OID 93354)
-- Name: get_personnel_spec(bigint); Type: FUNCTION; Schema: production; Owner: postgres
--

CREATE FUNCTION production.get_personnel_spec(__segment_id bigint) RETURNS common.personnel_specification[]
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
        production.personnel
      WHERE 
        personnel.segment_id = __segment_id
    );
END
$$;


ALTER FUNCTION production.get_personnel_spec(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 574 (class 1255 OID 93355)
-- Name: get_segment(bigint); Type: FUNCTION; Schema: production; Owner: postgres
--

CREATE FUNCTION production.get_segment(__segment_id bigint) RETURNS common.production_segment
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN

      --SELECT 
        (segment.gid,
        segment.production_code,
        production.get_consumable_spec(__segment_id := __segment_id),
        production.get_personnel_spec(__segment_id := __segment_id),
        production.get_equipment_spec(__segment_id := __segment_id),
        production.get_tooling_spec(__segment_id := __segment_id))::common.production_segment
      FROM 
        production.segment
      WHERE 
        segment.id = __segment_id;
    --;
END
$$;


ALTER FUNCTION production.get_segment(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 575 (class 1255 OID 93356)
-- Name: get_tooling_spec(bigint); Type: FUNCTION; Schema: production; Owner: postgres
--

CREATE FUNCTION production.get_tooling_spec(__segment_id bigint) RETURNS common.tooling_specification[]
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
        production.tooling
      WHERE 
        tooling.segment_id = __segment_id
    );
END
$$;


ALTER FUNCTION production.get_tooling_spec(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 576 (class 1255 OID 93357)
-- Name: init(common.production_head, common.production_segment[], common.dependency_specification[]); Type: FUNCTION; Schema: production; Owner: postgres
--

CREATE FUNCTION production.init(__head common.production_head, __body common.production_segment[], __deps common.dependency_specification[]) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _information_id bigint;
  _definition_id bigint;
  _max_version_num integer;
  _segment_id bigint;
  _seg common.production_segment;
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
    production.information, 
    production.definition
  WHERE 
    information.id = definition.information_id AND
    information.part_code = (__head.producible_spec).part_code AND 
    information.version_num = (__head.producible_spec).version_num
  INTO
    _max_version_num;

  IF (_max_version_num IS NULL) THEN
    _max_version_num := 0;

    INSERT INTO
      production.information (
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
      production.information
    WHERE
      information.part_code = (__head.producible_spec).part_code AND 
      information.version_num = (__head.producible_spec).version_num
    INTO
      _information_id;

  END IF;

  INSERT INTO
    production.definition (
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
      production.segment (
        id,
        gid,
        definition_id,
        production_code)
    VALUES (
      DEFAULT,
      _seg.gid,
      _definition_id,
      _seg.production_code)
    RETURNING id INTO _segment_id;
    PERFORM production.set_consumable_spec(_segment_id, _seg.consumable_spec);
    PERFORM production.set_personnel_spec(_segment_id, _seg.personnel_spec);
    PERFORM production.set_equipment_spec(_segment_id, _seg.equipmet_spec);
    PERFORM production.set_tooling_spec(_segment_id, _seg.tooling_spec);
  END LOOP;

  FOREACH _dep IN
    ARRAY __deps
  LOOP
    INSERT INTO
      production.dependency (
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


ALTER FUNCTION production.init(__head common.production_head, __body common.production_segment[], __deps common.dependency_specification[]) OWNER TO postgres;

--
-- TOC entry 577 (class 1255 OID 93358)
-- Name: reinit(bigint, common.production_segment[], common.dependency_specification[]); Type: FUNCTION; Schema: production; Owner: postgres
--

CREATE FUNCTION production.reinit(__document_id bigint, __body common.production_segment[], __deps common.dependency_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _segment_id bigint;
  _seg common.production_segment;
  _dep common.dependency_specification;
BEGIN

  DELETE FROM
    production.segment
  WHERE
    definition_id = __document_id;

  FOREACH _seg IN
    ARRAY __body
  LOOP
    INSERT INTO
      production.segment (
        id,
        gid,
        definition_id,
        production_code)
    VALUES (
      DEFAULT,
      _seg.gid,
      __document_id,
      _seg.production_code)
    RETURNING id INTO _segment_id;
    PERFORM production.set_consumable_spec(_segment_id, _seg.consumable_spec);
    PERFORM production.set_personnel_spec(_segment_id, _seg.personnel_spec);
    PERFORM production.set_equipment_spec(_segment_id, _seg.equipmet_spec);
    PERFORM production.set_tooling_spec(_segment_id, _seg.tooling_spec);
  END LOOP;

  FOREACH _dep IN
    ARRAY __deps
  LOOP
    INSERT INTO
      production.dependency (
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


ALTER FUNCTION production.reinit(__document_id bigint, __body common.production_segment[], __deps common.dependency_specification[]) OWNER TO postgres;

--
-- TOC entry 578 (class 1255 OID 93359)
-- Name: set_consumable_spec(bigint, common.consumable_specification[]); Type: FUNCTION; Schema: production; Owner: postgres
--

CREATE FUNCTION production.set_consumable_spec(__segment_id bigint, __material common.consumable_specification[]) RETURNS void
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
        production.primal (
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
        production.consumable (
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


ALTER FUNCTION production.set_consumable_spec(__segment_id bigint, __material common.consumable_specification[]) OWNER TO postgres;

--
-- TOC entry 579 (class 1255 OID 93360)
-- Name: set_equipment_spec(bigint, common.equipment_specification[]); Type: FUNCTION; Schema: production; Owner: postgres
--

CREATE FUNCTION production.set_equipment_spec(__segment_id bigint, __equipment common.equipment_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.equipment_specification;
BEGIN

  FOREACH _item IN
    ARRAY __equipment
  LOOP
    INSERT INTO
      production.equipment (
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


ALTER FUNCTION production.set_equipment_spec(__segment_id bigint, __equipment common.equipment_specification[]) OWNER TO postgres;

--
-- TOC entry 580 (class 1255 OID 93361)
-- Name: set_personnel_spec(bigint, common.personnel_specification[]); Type: FUNCTION; Schema: production; Owner: postgres
--

CREATE FUNCTION production.set_personnel_spec(__segment_id bigint, __personnel common.personnel_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.personnel_specification;
BEGIN

  FOREACH _item IN
    ARRAY __personnel
  LOOP
    INSERT INTO
      production.personnel (
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


ALTER FUNCTION production.set_personnel_spec(__segment_id bigint, __personnel common.personnel_specification[]) OWNER TO postgres;

--
-- TOC entry 581 (class 1255 OID 93362)
-- Name: set_tooling_spec(bigint, common.tooling_specification[]); Type: FUNCTION; Schema: production; Owner: postgres
--

CREATE FUNCTION production.set_tooling_spec(__segment_id bigint, __tooling common.tooling_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.tooling_specification;
BEGIN

  FOREACH _item IN
    ARRAY __tooling
  LOOP
    INSERT INTO
      production.tooling (
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


ALTER FUNCTION production.set_tooling_spec(__segment_id bigint, __tooling common.tooling_specification[]) OWNER TO postgres;

--
-- TOC entry 529 (class 1255 OID 87401)
-- Name: _reset_data(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public._reset_data() RETURNS void
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

--
-- TOC entry 530 (class 1255 OID 87402)
-- Name: destroy(bigint); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION route.destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM route.definition WHERE id = __document_id;
END;
$$;


ALTER FUNCTION route.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 531 (class 1255 OID 87403)
-- Name: get_ancestor_spec(bigint); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION route.get_ancestor_spec(__document_id bigint) RETURNS common.material_specification[]
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
-- TOC entry 532 (class 1255 OID 87404)
-- Name: get_body(bigint); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION route.get_body(__document_id bigint) RETURNS common.route_segment
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
-- TOC entry 533 (class 1255 OID 87405)
-- Name: get_gid_by_id(bigint); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION route.get_gid_by_id(__document_id bigint) RETURNS uuid
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
-- TOC entry 534 (class 1255 OID 87406)
-- Name: get_head(bigint); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION route.get_head(__document_id bigint) RETURNS common.route_head
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
-- TOC entry 535 (class 1255 OID 87407)
-- Name: get_id_by_gid(uuid); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION route.get_id_by_gid(__document_gid uuid) RETURNS bigint
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
-- TOC entry 536 (class 1255 OID 87408)
-- Name: get_location_spec(bigint); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION route.get_location_spec(__document_id bigint) RETURNS character varying[]
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
-- TOC entry 537 (class 1255 OID 87409)
-- Name: init(common.route_head, common.route_segment); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION route.init(__head common.route_head, __body common.route_segment) RETURNS bigint
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
-- TOC entry 538 (class 1255 OID 87410)
-- Name: reinit(bigint, common.route_segment); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION route.reinit(__document_id bigint, __body common.route_segment) RETURNS void
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

--
-- TOC entry 549 (class 1255 OID 87411)
-- Name: __ebom__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__ebom__destroy() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.ebom_head;
BEGIN
  
  RAISE DEBUG '#trace Check __ebom__destroy()';

  INSERT INTO
    inventory.information
      (id, gid, part_code, display_name, published_date)
    VALUES
      (101, 'a711da30-fa3a-11e7-8e63-d4bed939923a', '11.31.050-001', '11с31п-50х40: information', '2018-01-15'),
      (102, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', '11.32.050-001', '11с32п-50х40: information', '2018-01-15'),
      (103, 'f08b5682-fa3a-11e7-86da-d4bed939923a', '11.33.050-001', '11с33п-50х40: information', '2018-01-15');

  INSERT INTO
    inventory.definition 
      (id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id, uom_code)
    VALUES 
      (101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'DECOMMITTED', '2018-01-10', 101, 'pcs'),
      (102, 'd83fb96a-fa3a-11e7-948a-d4bed939923a', '11.32.050-001', 1, '2018-01-15', NULL, NULL, 'COMMITTED', '2018-01-15', 102, 'pcs'),
      (103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', '11.32.050-001', 2, '2018-01-16', NULL, NULL, 'PROPOSED', '2018-01-16', 102, 'pcs'),
      (104, 'c792f74d-7e6e-4577-ad69-987f56af7af7', '11.33.050-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 103, 'pcs');

  INSERT INTO
    inventory.assembly
      ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
    VALUES
      ( '11.32.050-001', 1, '11с32п-50х40: information', '2018-01-15', 'ASSEMBLY', 'pcs', 102),
      ( '11.32.050-001', 2, '11с32п-50х40: information', '2018-01-15', 'ASSEMBLY', 'pcs', 103);

  INSERT INTO
    ebom.information
      ( id, gid, part_code, version_num, display_name, published_date )
    VALUES
      (101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23');


  INSERT INTO
    ebom.definition
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id )
    VALUES
      (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101),
      (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101),
      (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21',101);

  PERFORM ebom.destroy(201); -- + add not allowed delete test
  
  _head := ebom.get_head(201);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

  _head := ebom.get_head(203);
  PERFORM pgunit.assert_not_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__ebom__destroy() OWNER TO postgres;

--
-- TOC entry 539 (class 1255 OID 87412)
-- Name: __ebom__get_body(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__ebom__get_body() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _body common.component_specification[];
  _test_body CONSTANT common.component_specification[] := ARRAY[('72.01.009-001', 1, 2.0000, 'pcs', 'PART'), ('80.31.050-001', 1, 1.0000, 'pcs', 'ASSEMBLY')]::common.component_specification[];
BEGIN
  
  RAISE DEBUG '#trace Check __ebom__get_body()';

  INSERT INTO
    inventory.information
      ( id, gid, part_code, display_name, published_date )
    VALUES
      ( 101, 'a711da30-fa3a-11e7-8e63-d4bed939923a', '11.31.050-001', '11с31п-50х40: information', '2018-01-15' ),
      ( 102, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', '11.32.050-001', '11с32п-50х40: information', '2018-01-15' ),
      ( 103, 'f08b5682-fa3a-11e7-86da-d4bed939923a', '11.33.050-001', '11с33п-50х40: information', '2018-01-15' ),
      ( 104, '8236af18-eb1a-11e6-8a73-d4bed939923a', '80.31.050-001', 'xxxxxxxxxxxa: information', '2018-01-15' ),
      ( 105, 'f20d7196-01d1-11e7-b441-d4bed939923a', '72.01.009-001', 'xxxxxxxxxxxb: information', '2018-01-15' ),
      ( 106, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'Гайка-М12-001', 'xxxxxxxxxxxc: information', '2018-01-15' );

  INSERT INTO
    inventory.definition 
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id, uom_code )
    VALUES 
      ( 101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'DECOMMITTED', '2018-01-10', 101, 'pcs' ),
      ( 102, 'd83fb96a-fa3a-11e7-948a-d4bed939923a', '11.32.050-001', 1, '2018-01-15', NULL, NULL, 'COMMITTED', '2018-01-15', 102, 'pcs' ),
      ( 103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', '11.32.050-001', 2, '2018-01-16', NULL, NULL, 'PROPOSED', '2018-01-16', 102, 'pcs' ),
      ( 104, 'c792f74d-7e6e-4577-ad69-987f56af7af7', '11.33.050-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 103, 'pcs' ),
      ( 105, '9b2952fa-01d1-11e7-b440-d4bed939923a', '80.31.050-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 104, 'pcs' ),
      ( 106, '8236af18-eb1a-11e6-8a73-d4bed939923a', '72.01.009-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 105, 'pcs' ),
      ( 107, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'Гайка-М12-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 106, 'pcs' );

  INSERT INTO
    inventory.assembly
      ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
    VALUES
      ( '11.31.050-001', 1, '11с31п-50х40: information', '2018-01-15', 'ASSEMBLY', 'pcs', 101 ),
      ( '11.32.050-001', 1, '11с32п-50х40: information', '2018-01-15', 'ASSEMBLY', 'pcs', 102 ),
      ( '11.32.050-001', 2, '11с32п-50х40: information', '2018-01-15', 'ASSEMBLY', 'pcs', 103 ),
      ( '11.33.050-001', 1, '11с32п-50х40: information', '2018-01-15', 'ASSEMBLY', 'pcs', 104 ),
      ( '80.31.050-001', 1, '80с31п-50х40: information', '2018-01-15', 'ASSEMBLY', 'pcs', 104 );

  INSERT INTO
    inventory.part
      ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
    VALUES
      ( '72.01.009-001', 1, '72с01п-50х40: information', '2018-01-15', 'PART', 'pcs', 105 );

  INSERT INTO
    inventory.buyable
      ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
    VALUES
      ( 'Гайка-М12-001', 1, 'Гайка-М12-001: information', '2018-01-15', 'BUYABLE', 'pcs', 106 );

  INSERT INTO
    ebom.information
      ( id, gid, part_code, version_num, display_name, published_date )
    VALUES
      ( 101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23' );
  
  INSERT INTO
    ebom.definition
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id )
    VALUES
      ( 201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 );

  INSERT INTO
    ebom.assembly
      ( definition_id, part_code, version_num, quantity, uom_code, component_type )
    VALUES
      ( 201, '80.31.050-001', 1, 1.0000, 'pcs', 'ASSEMBLY' ),
      ( 203, '80.31.050-001', 1, 1.0000, 'pcs', 'ASSEMBLY' );
  
  INSERT INTO
    ebom.buyable 
      ( definition_id, part_code, version_num, quantity, uom_code, component_type ) 
    VALUES
      ( 201, 'Гайка-М12-001', 1, 1.0000, 'pcs', 'BUYABLE' );

  INSERT INTO
    ebom.part 
      ( definition_id, part_code, version_num, quantity, uom_code, component_type )
    VALUES
      ( 201, '72.01.009-001', 1, 2.0000, 'pcs', 'PART' ),
      ( 203, '72.01.009-001', 1, 2.0000, 'pcs', 'PART' );

  _body := ebom.get_body(203);
  PERFORM pgunit.assert_array_equals(_test_body, _body, 'Incorrect _body value');

END;
$$;


ALTER FUNCTION tests.__ebom__get_body() OWNER TO postgres;

--
-- TOC entry 550 (class 1255 OID 87413)
-- Name: __ebom__get_gid_by_id(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__ebom__get_gid_by_id() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_id CONSTANT bigint := 202;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a';
  _gid uuid;
BEGIN
  
  RAISE DEBUG '#trace Check __ebom__get_gid_by_id()';

  INSERT INTO
    inventory.information
      ( id, gid, part_code, display_name, published_date )
    VALUES
      ( 102, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', '11.32.050-001', '11с32п-50х40: information', '2018-01-15' );

  INSERT INTO
    inventory.definition 
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id, uom_code )
    VALUES 
      ( 102, 'd83fb96a-fa3a-11e7-948a-d4bed939923a', '11.32.050-001', 1, '2018-01-15', NULL, NULL, 'COMMITTED', '2018-01-15', 102, 'pcs' ),
      ( 103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', '11.32.050-001', 2, '2018-01-16', NULL, NULL, 'PROPOSED', '2018-01-16', 102, 'pcs' );

  INSERT INTO
    inventory.assembly
      ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
    VALUES
      ( '11.32.050-001', 1, '11с32п-50х40: information', '2018-01-15', 'ASSEMBLY', 'pcs', 102 ),
      ( '11.32.050-001', 2, '11с32п-50х40: information', '2018-01-15', 'ASSEMBLY', 'pcs', 103 );

  INSERT INTO
    ebom.information
      ( id, gid, part_code, version_num, display_name, published_date )
    VALUES
      ( 101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23' );

  INSERT INTO
    ebom.definition
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id )
    VALUES
      ( 201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 );

  _gid := ebom.get_gid_by_id(_test_id);
  PERFORM pgunit.assert_equals(_test_gid, _gid, 'Incorrect _gid value');

END;
$$;


ALTER FUNCTION tests.__ebom__get_gid_by_id() OWNER TO postgres;

--
-- TOC entry 541 (class 1255 OID 87414)
-- Name: __ebom__get_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__ebom__get_head() RETURNS void
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

  INSERT INTO
    inventory.information
      ( id, gid, part_code, display_name, published_date )
    VALUES
      ( 102, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', '11.32.050-001', '11с32п-50х40: information', '2018-01-15' );

  INSERT INTO
    inventory.definition 
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id, uom_code )
    VALUES 
      ( 102, 'd83fb96a-fa3a-11e7-948a-d4bed939923a', '11.32.050-001', 1, '2018-01-15', NULL, NULL, 'COMMITTED', '2018-01-15', 102, 'pcs' ),
      ( 103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', '11.32.050-001', 2, '2018-01-16', NULL, NULL, 'PROPOSED', '2018-01-16', 102, 'pcs' );

  INSERT INTO
    inventory.assembly
      ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
    VALUES
      ( '11.32.050-001', 1, '11с32п-50х40: information', '2018-01-15', 'ASSEMBLY', 'pcs', 102 ),
      ( '11.32.050-001', 2, '11с32п-50х40: information', '2018-01-15', 'ASSEMBLY', 'pcs', 103 );

  INSERT INTO
    ebom.information
      ( id, gid, part_code, version_num, display_name, published_date )
    VALUES
      ( 101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23' );

  INSERT INTO
    ebom.definition
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id )
    VALUES
      ( 201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-20', NULL, NULL, 'PROPOSED', '2017-10-20', 101 ),
      ( 202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'COMMITTED', '2017-10-21', 101 ),
      ( 203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-22', NULL, NULL, 'PROPOSED', '2017-10-22', 101 );

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
-- TOC entry 542 (class 1255 OID 87415)
-- Name: __ebom__get_id_by_gid(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__ebom__get_id_by_gid() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_id CONSTANT bigint := 202;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a';
  _id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __ebom__get_id_by_gid()';

  INSERT INTO
    inventory.information
      ( id, gid, part_code, display_name, published_date )
    VALUES
      ( 102, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', '11.32.050-001', '11с32п-50х40: information', '2018-01-15' );

  INSERT INTO
    inventory.definition 
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id, uom_code )
    VALUES 
      ( 102, 'd83fb96a-fa3a-11e7-948a-d4bed939923a', '11.32.050-001', 1, '2018-01-15', NULL, NULL, 'COMMITTED', '2018-01-15', 102, 'pcs' ),
      ( 103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', '11.32.050-001', 2, '2018-01-16', NULL, NULL, 'PROPOSED', '2018-01-16', 102, 'pcs' );

  INSERT INTO
    inventory.assembly
      ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
    VALUES
      ( '11.32.050-001', 1, '11с32п-50х40: information', '2018-01-15', 'ASSEMBLY', 'pcs', 102 ),
      ( '11.32.050-001', 2, '11с32п-50х40: information', '2018-01-15', 'ASSEMBLY', 'pcs', 103 );

  INSERT INTO
    ebom.information
      ( id, gid, part_code, version_num, display_name, published_date )
    VALUES
      ( 101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23' );

  INSERT INTO
    ebom.definition
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id )
    VALUES
      ( 201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 );

  _id := ebom.get_id_by_gid(_test_gid);
  PERFORM pgunit.assert_equals(_test_id, _id, 'Incorrect _id value');

END;
$$;


ALTER FUNCTION tests.__ebom__get_id_by_gid() OWNER TO postgres;

--
-- TOC entry 552 (class 1255 OID 87416)
-- Name: __ebom__init(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__ebom__init() RETURNS void
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

  INSERT INTO
    inventory.information
      ( id, gid, part_code, display_name, published_date )
    VALUES
      ( 101, 'a711da30-fa3a-11e7-8e63-d4bed939923a', '11.31.050-001', '11с31п-50х40: information', '2018-01-15' ),
      ( 102, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', '11.32.050-001', '11с32п-50х40: information', '2018-01-15' ),
      ( 103, 'f08b5682-fa3a-11e7-86da-d4bed939923a', '11.33.050-001', '11с33п-50х40: information', '2018-01-15' ),
      ( 104, '8236af18-eb1a-11e6-8a73-d4bed939923a', '80.31.050-001', 'xxxxxxxxxxxa: information', '2018-01-15' ),
      ( 105, 'f20d7196-01d1-11e7-b441-d4bed939923a', '72.01.009-001', 'xxxxxxxxxxxb: information', '2018-01-15' ),
      ( 106, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'Гайка-М12-001', 'xxxxxxxxxxxc: information', '2018-01-15' );

  INSERT INTO
    inventory.definition 
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id, uom_code )
    VALUES 
      ( 101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'DECOMMITTED', '2018-01-10', 101, 'pcs' ),
      ( 102, 'd83fb96a-fa3a-11e7-948a-d4bed939923a', '11.32.050-001', 1, '2018-01-15', NULL, NULL, 'COMMITTED', '2018-01-15', 102, 'pcs' ),
      ( 103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', '11.32.050-001', 2, '2018-01-16', NULL, NULL, 'PROPOSED', '2018-01-16', 102, 'pcs' ),
      ( 104, 'c792f74d-7e6e-4577-ad69-987f56af7af7', '11.33.050-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 103, 'pcs' ),
      ( 105, '9b2952fa-01d1-11e7-b440-d4bed939923a', '80.31.050-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 104, 'pcs' ),
      ( 106, '8236af18-eb1a-11e6-8a73-d4bed939923a', '72.01.009-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 105, 'pcs' ),
      ( 107, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'Гайка-М12-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 106, 'pcs' );

  INSERT INTO
    inventory.assembly
      ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
    VALUES
      ( '11.31.050-001', 1, '11с31п-50х40: information', '2018-01-15', 'ASSEMBLY', 'pcs', 101 ),
      ( '11.32.050-001', 1, '11с32п-50х40: information', '2018-01-15', 'ASSEMBLY', 'pcs', 102 ),
      ( '11.32.050-001', 2, '11с32п-50х40: information', '2018-01-15', 'ASSEMBLY', 'pcs', 103 ),
      ( '11.33.050-001', 1, '11с32п-50х40: information', '2018-01-15', 'ASSEMBLY', 'pcs', 104 ),
      ( '80.31.050-001', 1, '80с31п-50х40: information', '2018-01-15', 'ASSEMBLY', 'pcs', 104 );

  INSERT INTO
    inventory.part
      ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
    VALUES
      ( '72.01.009-001', 1, '72с01п-50х40: information', '2018-01-15', 'PART', 'pcs', 105 ),
      ( '80.31.050-001', 1, '80с31п-50х40: information', '2018-01-15', 'PART', 'pcs', 104 );
  
  _document_id := ebom.init(_test_head[1], _test_body);
  _head := ebom.get_head(_document_id);
  _body := ebom.get_body(_document_id);
  --PERFORM pgunit.assert_equals(_test_head[1], _head, 'Incorrect _head value');
  PERFORM pgunit.assert_array_equals(_test_body, _body, 'Incorrect _body value');


END;
$$;


ALTER FUNCTION tests.__ebom__init() OWNER TO postgres;

--
-- TOC entry 551 (class 1255 OID 87417)
-- Name: __ebom__reinit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__ebom__reinit() RETURNS void
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

  INSERT INTO
    inventory.information
      ( id, gid, part_code, display_name, published_date )
    VALUES
      ( 101, 'a711da30-fa3a-11e7-8e63-d4bed939923a', '11.31.050-001', '11с31п-50х40: information', '2018-01-15' ),
      ( 102, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', '11.32.050-001', '11с32п-50х40: information', '2018-01-15' ),
      ( 103, 'f08b5682-fa3a-11e7-86da-d4bed939923a', '11.33.050-001', '11с33п-50х40: information', '2018-01-15' ),
      ( 104, '8236af18-eb1a-11e6-8a73-d4bed939923a', '80.31.050-001', 'xxxxxxxxxxxa: information', '2018-01-15' ),
      ( 105, 'f20d7196-01d1-11e7-b441-d4bed939923a', '72.01.009-001', 'xxxxxxxxxxxb: information', '2018-01-15' ),
      ( 106, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'Гайка-М12-001', 'xxxxxxxxxxxc: information', '2018-01-15' );

  INSERT INTO
    inventory.definition 
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id, uom_code )
    VALUES 
      ( 101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'DECOMMITTED', '2018-01-10', 101, 'pcs' ),
      ( 102, 'd83fb96a-fa3a-11e7-948a-d4bed939923a', '11.32.050-001', 1, '2018-01-15', NULL, NULL, 'COMMITTED', '2018-01-15', 102, 'pcs' ),
      ( 103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', '11.32.050-001', 2, '2018-01-16', NULL, NULL, 'PROPOSED', '2018-01-16', 102, 'pcs' ),
      ( 104, 'c792f74d-7e6e-4577-ad69-987f56af7af7', '11.33.050-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 103, 'pcs' ),
      ( 105, '9b2952fa-01d1-11e7-b440-d4bed939923a', '80.31.050-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 104, 'pcs' ),
      ( 106, '8236af18-eb1a-11e6-8a73-d4bed939923a', '72.01.009-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 105, 'pcs' ),
      ( 107, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'Гайка-М12-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 106, 'pcs' );

  INSERT INTO
    inventory.assembly
      ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
    VALUES
      ( '11.31.050-001', 1, '11с31п-50х40: information', '2018-01-15', 'ASSEMBLY', 'pcs', 101 ),
      ( '11.32.050-001', 1, '11с32п-50х40: information', '2018-01-15', 'ASSEMBLY', 'pcs', 102 ),
      ( '11.32.050-001', 2, '11с32п-50х40: information', '2018-01-15', 'ASSEMBLY', 'pcs', 103 ),
      ( '11.33.050-001', 1, '11с32п-50х40: information', '2018-01-15', 'ASSEMBLY', 'pcs', 104 ),
      ( '80.31.050-001', 1, '80с31п-50х40: information', '2018-01-15', 'ASSEMBLY', 'pcs', 104 );

  INSERT INTO
    inventory.part
      ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
    VALUES
      ( '72.01.009-001', 1, '72с01п-50х40: information', '2018-01-15', 'PART', 'pcs', 105 ),
      ( '80.31.050-001', 1, '80с31п-50х40: information', '2018-01-15', 'PART', 'pcs', 104 );
  
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
-- TOC entry 540 (class 1255 OID 87418)
-- Name: __inventory__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__inventory__destroy() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.inventory_head;
BEGIN
  
  RAISE DEBUG '#trace Check __inventory__destroy()';

  INSERT INTO
    inventory.information
      (id, gid, part_code, display_name, published_date)
    VALUES
      (101, 'a711da30-fa3a-11e7-8e63-d4bed939923a', '22.16.050-001', 'fl-16-50', '2018-01-15'),
      (102, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', '22.25.050-001', 'fl-25-50', '2018-01-15'),
      (103, 'f08b5682-fa3a-11e7-86da-d4bed939923a', '22.40.050-001', 'fl-40-50', '2018-01-15');

  INSERT INTO
    inventory.definition 
      (id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id, uom_code)
    VALUES 
      (101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', 'fl-16-50', 1, '2018-01-10', NULL, NULL, 'DECOMMITTED', '2018-01-10', 101, 'pcs'),
      (102, 'd83fb96a-fa3a-11e7-948a-d4bed939923a', 'fl-25-50', 1, '2018-01-15', NULL, NULL, 'COMMITTED', '2018-01-15', 102, 'pcs'),
      (103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', 'fl-25-50', 2, '2018-01-16', NULL, NULL, 'PROPOSED', '2018-01-16', 102, 'pcs'),
      (104, 'c792f74d-7e6e-4577-ad69-987f56af7af7', 'fl-40-50', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 103, 'pcs');

  PERFORM inventory.destroy(101); -- + add not allowed delete test
  
  _head := inventory.get_head(101);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

  _head := inventory.get_head(103);
  PERFORM pgunit.assert_not_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__inventory__destroy() OWNER TO postgres;

--
-- TOC entry 544 (class 1255 OID 87419)
-- Name: __inventory__get_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__inventory__get_head() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.inventory_head;
  _test_gid CONSTANT uuid := 'cf77e3ea-0b5c-4e62-be62-63704f4071b7';
  _test_display_name CONSTANT character varying := 'fl-25-50';
  _test_part_code CONSTANT character varying := '22.25.050-001';
  _test_document_date CONSTANT date := '2018-01-16'::date;
  _test_version_num CONSTANT integer := 2;
  _test_uom_code CONSTANT character varying := 'pcs';
  _test_curr_fsmt CONSTANT common.document_fsmt := 'PROPOSED'::common.document_fsmt;
  _test_document_type CONSTANT common.document_kind := 'INVENTORY'::common.document_kind;
BEGIN
  
  RAISE DEBUG '#trace Check __inventory__get_head()';

  INSERT INTO
    inventory.information
      (id, gid, part_code, display_name, published_date)
    VALUES
      (101, 'a711da30-fa3a-11e7-8e63-d4bed939923a', '22.16.050-001', 'fl-16-50', '2018-01-15'),
      (102, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', '22.25.050-001', 'fl-25-50', '2018-01-15'),
      (103, 'f08b5682-fa3a-11e7-86da-d4bed939923a', '22.40.050-001', 'fl-40-50', '2018-01-15');

  INSERT INTO
    inventory.definition 
      (id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id, uom_code)
    VALUES 
      (101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', 'fl-16-50', 1, '2018-01-10', NULL, NULL, 'DECOMMITTED', '2018-01-10', 101, 'pcs'),
      (102, 'd83fb96a-fa3a-11e7-948a-d4bed939923a', 'fl-25-50', 1, '2018-01-15', NULL, NULL, 'COMMITTED', '2018-01-15', 102, 'pcs'),
      (103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', 'fl-25-50', 2, '2018-01-16', NULL, NULL, 'PROPOSED', '2018-01-16', 102, 'pcs'),
      (104, 'c792f74d-7e6e-4577-ad69-987f56af7af7', 'fl-40-50', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 103, 'pcs');

  _head := inventory.get_head(103);
  PERFORM pgunit.assert_equals(_test_gid, _head.gid, 'Incorrect gid value');
  PERFORM pgunit.assert_equals(_test_display_name, _head.display_name, 'Incorrect display_name value');
  PERFORM pgunit.assert_equals(_test_part_code, _head.part_code, 'Incorrect part_code value');
  PERFORM pgunit.assert_equals(_test_document_date, _head.document_date, 'Incorrect document_date value');
  PERFORM pgunit.assert_equals(_test_version_num, _head.version_num, 'Incorrect version_num value');
  PERFORM pgunit.assert_equals(_test_uom_code, _head.uom_code, 'Incorrect uom_code value');
  PERFORM pgunit.assert_equals(_test_curr_fsmt, _head.curr_fsmt, 'Incorrect curr_fsmt value');
  PERFORM pgunit.assert_equals(_test_document_type, _head.document_type, 'Incorrect document_type value');


  _head := inventory.get_head(104);
  PERFORM pgunit.assert_not_equals(_test_gid, _head.gid, 'Incorrect gid value');
  
  _head := inventory.get_head(105);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__inventory__get_head() OWNER TO postgres;

--
-- TOC entry 543 (class 1255 OID 87420)
-- Name: __inventory__init(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__inventory__init() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.inventory_head[] := ARRAY[(103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', 'fl-25-50', '20.25.50-001', 2, '2018-01-16', 'pcs', 'PROPOSED', 'INVENTORY')]::common.inventory_head[];
  _test_meas CONSTANT common.unit_conversion_type[] := ARRAY[('pcs', 'pcs', 1), ('pcs', 'g', 1000)]::common.unit_conversion_type[];
  _test_kind CONSTANT common.inventory_kind[] := ARRAY[('ASSEMBLY'), ('STORABLE')]::common.inventory_kind[];
  _head common.inventory_head;
  _meas common.unit_conversion_type[];
  _kind common.inventory_kind[];
  _document_id bigint;
BEGIN

  RAISE DEBUG '#trace Check __inventory__init()';
  
  _document_id := inventory.init(_test_head[1], _test_meas, _test_kind);
  _head := inventory.get_head(_document_id);
  _meas := inventory.get_meas_spec(_document_id);
  _kind := inventory.get_kind_spec(_document_id);

  PERFORM pgunit.assert_array_equals(_test_meas, _meas, 'Incorrect _meas value');
  PERFORM pgunit.assert_array_equals(_test_kind, _kind, 'Incorrect _kind value');


END;
$$;


ALTER FUNCTION tests.__inventory__init() OWNER TO postgres;

--
-- TOC entry 563 (class 1255 OID 87421)
-- Name: __inventory__reinit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__inventory__reinit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.inventory_head[] := ARRAY[(103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', 'fl-25-50', '20.25.50-001', 2, '2018-01-16', 'pcs', 'PROPOSED', 'INVENTORY')]::common.inventory_head[];
  _test_meas_init CONSTANT common.unit_conversion_type[] := ARRAY[('pcs', 'pcs', 1), ('pcs', 'g', 1000)]::common.unit_conversion_type[];
  _test_meas_reinit CONSTANT common.unit_conversion_type[] := ARRAY[('pcs', 'pcs', 1), ('pcs', 'kg', 10)]::common.unit_conversion_type[];
  _test_kind_init CONSTANT common.inventory_kind[] := ARRAY[('ASSEMBLY'), ('STORABLE')]::common.inventory_kind[];
  _test_kind_reinit CONSTANT common.inventory_kind[] := ARRAY[('PART'), ('CONSUMABLE')]::common.inventory_kind[];
  _head common.inventory_head;
  _meas common.unit_conversion_type[];
  _kind common.inventory_kind[];
  _document_id bigint;
BEGIN

  RAISE DEBUG '#trace Check __inventory__reinit()';
  
  _document_id := inventory.init(_test_head[1], _test_meas_init, _test_kind_init);
  PERFORM inventory.reinit(_document_id, _test_meas_reinit, _test_kind_reinit);
  _head := inventory.get_head(_document_id);
  _meas := inventory.get_meas_spec(_document_id);
  _kind := inventory.get_kind_spec(_document_id);

  PERFORM pgunit.assert_array_equals(_meas, _test_meas_reinit, 'Incorrect _meas_reinit value');
  PERFORM pgunit.assert_array_equals(_kind, _test_kind_reinit, 'Incorrect _kind_reinit value');

END;
$$;


ALTER FUNCTION tests.__inventory__reinit() OWNER TO postgres;

--
-- TOC entry 554 (class 1255 OID 87422)
-- Name: __mbom__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__mbom__destroy() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.mbom_head;
BEGIN
  
  RAISE DEBUG '#trace Check __mbom__destroy()';

  INSERT INTO
    inventory.information
      ( id, gid, part_code, display_name, published_date)
    VALUES
      ( 101, 'a711da30-fa3a-11e7-8e63-d4bed939923a', '11.31.050-001', '11с31п-50х40: information', '2018-01-15' ),
      ( 102, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', '11.32.050-001', '11с32п-50х40: information', '2018-01-15' ),
      ( 103, 'f08b5682-fa3a-11e7-86da-d4bed939923a', '11.33.050-001', '11с33п-50х40: information', '2018-01-15' );

  INSERT INTO
    inventory.definition 
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id, uom_code )
    VALUES 
      ( 101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'DECOMMITTED', '2018-01-10', 101, 'pcs' ),
      ( 102, 'd83fb96a-fa3a-11e7-948a-d4bed939923a', '11.32.050-001', 1, '2018-01-15', NULL, NULL, 'COMMITTED', '2018-01-15', 102, 'pcs' ),
      ( 103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', '11.32.050-001', 2, '2018-01-16', NULL, NULL, 'PROPOSED', '2018-01-16', 102, 'pcs' ),
      ( 104, 'c792f74d-7e6e-4577-ad69-987f56af7af7', '11.33.050-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 103, 'pcs' );

  INSERT INTO
    inventory.producible
      ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
    VALUES
      ( '11.32.050-001', 1, '11с32п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 102 ),
      ( '11.32.050-001', 2, '11с32п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 103 );

  INSERT INTO
    mbom.information
      ( id, gid, part_code, version_num, display_name, published_date )
    VALUES
      ( 101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23' );

  INSERT INTO
    mbom.definition
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id )
    VALUES
      ( 201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 );

  PERFORM mbom.destroy(201); -- + add not allowed delete test
  
  _head := mbom.get_head(201);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

  _head := mbom.get_head(203);
  PERFORM pgunit.assert_not_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__mbom__destroy() OWNER TO postgres;

--
-- TOC entry 558 (class 1255 OID 87423)
-- Name: __mbom__get_body(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__mbom__get_body() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _body common.material_specification[];
  _test_body CONSTANT common.material_specification[] := ARRAY[('72.01.009-001', 1, 2.0000, 'pcs', 'CONSUMABLE'), ('80.31.050-001', 1, 1.0000, 'pcs', 'CONSUMABLE')]::common.material_specification[];
BEGIN
  
  RAISE DEBUG '#trace Check __mbom__get_body()';

  INSERT INTO
    inventory.information
      ( id, gid, part_code, display_name, published_date )
    VALUES
      ( 101, 'a711da30-fa3a-11e7-8e63-d4bed939923a', '11.31.050-001', '11с31п-50х40: information', '2018-01-15' ),
      ( 102, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', '11.32.050-001', '11с32п-50х40: information', '2018-01-15' ),
      ( 103, 'f08b5682-fa3a-11e7-86da-d4bed939923a', '11.33.050-001', '11с33п-50х40: information', '2018-01-15' ),
      ( 104, '8236af18-eb1a-11e6-8a73-d4bed939923a', '80.31.050-001', 'xxxxxxxxxxxa: information', '2018-01-15' ),
      ( 105, 'f20d7196-01d1-11e7-b441-d4bed939923a', '72.01.009-001', 'xxxxxxxxxxxb: information', '2018-01-15' ),
      ( 106, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'Гайка-М12-001', 'xxxxxxxxxxxc: information', '2018-01-15' );

  INSERT INTO
    inventory.definition 
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id, uom_code )
    VALUES 
      ( 101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'DECOMMITTED', '2018-01-10', 101, 'pcs' ),
      ( 102, 'd83fb96a-fa3a-11e7-948a-d4bed939923a', '11.32.050-001', 1, '2018-01-15', NULL, NULL, 'COMMITTED', '2018-01-15', 102, 'pcs' ),
      ( 103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', '11.32.050-001', 2, '2018-01-16', NULL, NULL, 'PROPOSED', '2018-01-16', 102, 'pcs' ),
      ( 104, 'c792f74d-7e6e-4577-ad69-987f56af7af7', '11.33.050-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 103, 'pcs' ),
      ( 105, '9b2952fa-01d1-11e7-b440-d4bed939923a', '80.31.050-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 104, 'pcs' ),
      ( 106, '8236af18-eb1a-11e6-8a73-d4bed939923a', '72.01.009-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 105, 'pcs' ),
      ( 107, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'Гайка-М12-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 106, 'pcs' );

  INSERT INTO
    inventory.producible
      ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
    VALUES
      ( '11.31.050-001', 1, '11с31п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 101 ),
      ( '11.32.050-001', 1, '11с32п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 102 ),
      ( '11.32.050-001', 2, '11с32п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 103 ),
      ( '11.33.050-001', 1, '11с32п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 104 ),
      ( '80.31.050-001', 1, '80с31п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 104 );

  INSERT INTO
    inventory.part
      ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
    VALUES
      ( '72.01.009-001', 1, '72с01п-50х40: information', '2018-01-15', 'PART', 'pcs', 105 ),
      ( '80.31.050-001', 1, '80с31п-50х40: information', '2018-01-15', 'PART', 'pcs', 104 );

  INSERT INTO
    inventory.consumable
      ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
    VALUES
      ( '72.01.009-001', 1, '72с01п-50х40: information', '2018-01-15', 'CONSUMABLE', 'pcs', 105 ),
      ( '80.31.050-001', 1, '80с31п-50х40: information', '2018-01-15', 'CONSUMABLE', 'pcs', 104 );

  INSERT INTO
    inventory.primal
      ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
    VALUES
      ( 'Гайка-М12-001', 1, 'Гайка-М12-001: information', '2018-01-15', 'PRIMAL', 'pcs', 106 );

  INSERT INTO
    mbom.information
      ( id, gid, part_code, version_num, display_name, published_date )
    VALUES
      ( 101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23' );
  
  INSERT INTO
    mbom.definition
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id )
    VALUES
      ( 201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 );
      
  
  INSERT INTO
    mbom.primal 
      ( definition_id, part_code, version_num, quantity, uom_code, material_type ) 
    VALUES
      ( 201, 'Гайка-М12-001', 1, 1.0000, 'pcs', 'PRIMAL' );

  INSERT INTO
    mbom.consumable 
      ( definition_id, part_code, version_num, quantity, uom_code, material_type )
    VALUES
      ( 201, '72.01.009-001', 1, 2.0000, 'pcs', 'CONSUMABLE' ),
      ( 201, '80.31.050-001', 1, 1.0000, 'pcs', 'CONSUMABLE' ),
      ( 203, '80.31.050-001', 1, 1.0000, 'pcs', 'CONSUMABLE' ),
      ( 203, '72.01.009-001', 1, 2.0000, 'pcs', 'CONSUMABLE' );

  _body := mbom.get_body(203);
  PERFORM pgunit.assert_array_equals(_test_body, _body, 'Incorrect _body value');

END;
$$;


ALTER FUNCTION tests.__mbom__get_body() OWNER TO postgres;

--
-- TOC entry 553 (class 1255 OID 87424)
-- Name: __mbom__get_gid_by_id(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__mbom__get_gid_by_id() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_id CONSTANT bigint := 202;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a';
  _gid uuid;
BEGIN
  
  RAISE DEBUG '#trace Check __mbom__get_gid_by_id()';

  INSERT INTO
    inventory.information
      ( id, gid, part_code, display_name, published_date )
    VALUES
      ( 102, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', '11.32.050-001', '11с32п-50х40: information', '2018-01-15' );

  INSERT INTO
    inventory.definition 
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id, uom_code )
    VALUES 
      ( 102, 'd83fb96a-fa3a-11e7-948a-d4bed939923a', '11.32.050-001', 1, '2018-01-15', NULL, NULL, 'COMMITTED', '2018-01-15', 102, 'pcs' ),
      ( 103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', '11.32.050-001', 2, '2018-01-16', NULL, NULL, 'PROPOSED', '2018-01-16', 102, 'pcs' );

  INSERT INTO
    inventory.producible
      ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
    VALUES
      ( '11.32.050-001', 1, '11с32п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 102 ),
      ( '11.32.050-001', 2, '11с32п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 103 );

  INSERT INTO
    mbom.information
      ( id, gid, part_code, version_num, display_name, published_date )
    VALUES
      ( 101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23' );

  INSERT INTO
    mbom.definition
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id )
    VALUES
      ( 201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 );

  _gid := mbom.get_gid_by_id(_test_id);
  PERFORM pgunit.assert_equals(_test_gid, _gid, 'Incorrect _gid value');

END;
$$;


ALTER FUNCTION tests.__mbom__get_gid_by_id() OWNER TO postgres;

--
-- TOC entry 555 (class 1255 OID 87425)
-- Name: __mbom__get_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__mbom__get_head() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.mbom_head;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a';
  _test_display_name CONSTANT character varying := '11с32п-50х40: definition';
  _test_document_date CONSTANT date := '2017-10-21'::date;
  _test_curr_fsmt CONSTANT common.document_fsmt := 'COMMITTED'::common.document_fsmt;
  _test_document_type CONSTANT common.document_kind := 'MBOM'::common.document_kind;
  _test_component_part_code CONSTANT character varying := '11.32.050-001';
  _test_component_version_num CONSTANT integer := 1;
BEGIN
  
  RAISE DEBUG '#trace Check __mbom__get_head()';

  INSERT INTO
    inventory.information
      ( id, gid, part_code, display_name, published_date )
    VALUES
      ( 102, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', '11.32.050-001', '11с32п-50х40: information', '2018-01-15' );

  INSERT INTO
    inventory.definition 
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id, uom_code )
    VALUES 
      ( 102, 'd83fb96a-fa3a-11e7-948a-d4bed939923a', '11.32.050-001', 1, '2018-01-15', NULL, NULL, 'COMMITTED', '2018-01-15', 102, 'pcs' ),
      ( 103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', '11.32.050-001', 2, '2018-01-16', NULL, NULL, 'PROPOSED', '2018-01-16', 102, 'pcs' );

  INSERT INTO
    inventory.producible
      ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
    VALUES
      ( '11.32.050-001', 1, '11с32п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 102 ),
      ( '11.32.050-001', 2, '11с32п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 103 );

  INSERT INTO
    mbom.information
      ( id, gid, part_code, version_num, display_name, published_date )
    VALUES
      ( 101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23' );

  INSERT INTO
    mbom.definition
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id )
    VALUES
      ( 201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-20', NULL, NULL, 'PROPOSED', '2017-10-20', 101 ),
      ( 202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'COMMITTED', '2017-10-21', 101 ),
      ( 203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-22', NULL, NULL, 'PROPOSED', '2017-10-22', 101 );

  _head := mbom.get_head(202);
  PERFORM pgunit.assert_equals(_test_gid, _head.gid, 'Incorrect gid value');
  PERFORM pgunit.assert_equals(_test_display_name, _head.display_name, 'Incorrect display_name value');
  PERFORM pgunit.assert_equals(_test_document_date, _head.document_date, 'Incorrect document_date value');
  PERFORM pgunit.assert_equals(_test_curr_fsmt, _head.curr_fsmt, 'Incorrect curr_fsmt value');
  PERFORM pgunit.assert_equals(_test_document_type, _head.document_type, 'Incorrect document_type value');
  PERFORM pgunit.assert_equals(_test_component_part_code, (_head.material_spec).part_code, 'Incorrect component_part_code value');
  PERFORM pgunit.assert_equals(_test_component_version_num, (_head.material_spec).version_num, 'Incorrect component_version_num value');

  _head := mbom.get_head(203);
  PERFORM pgunit.assert_not_equals(_test_gid, _head.gid, 'Incorrect gid value');
  
  _head := mbom.get_head(204);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__mbom__get_head() OWNER TO postgres;

--
-- TOC entry 556 (class 1255 OID 87426)
-- Name: __mbom__get_id_by_gid(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__mbom__get_id_by_gid() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_id CONSTANT bigint := 202;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a';
  _id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __mbom__get_id_by_gid()';

  INSERT INTO
    inventory.information
      ( id, gid, part_code, display_name, published_date )
    VALUES
      ( 102, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', '11.32.050-001', '11с32п-50х40: information', '2018-01-15' );

  INSERT INTO
    inventory.definition 
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id, uom_code )
    VALUES 
      ( 102, 'd83fb96a-fa3a-11e7-948a-d4bed939923a', '11.32.050-001', 1, '2018-01-15', NULL, NULL, 'COMMITTED', '2018-01-15', 102, 'pcs' ),
      ( 103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', '11.32.050-001', 2, '2018-01-16', NULL, NULL, 'PROPOSED', '2018-01-16', 102, 'pcs' );

  INSERT INTO
    inventory.producible
      ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
    VALUES
      ( '11.32.050-001', 1, '11с32п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 102 ),
      ( '11.32.050-001', 2, '11с32п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 103 );

  INSERT INTO
    mbom.information
      ( id, gid, part_code, version_num, display_name, published_date )
    VALUES
      ( 101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23' );

  INSERT INTO
    mbom.definition
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id )
    VALUES
      ( 201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 );

  _id := mbom.get_id_by_gid(_test_gid);
  PERFORM pgunit.assert_equals(_test_id, _id, 'Incorrect _id value');

END;
$$;


ALTER FUNCTION tests.__mbom__get_id_by_gid() OWNER TO postgres;

--
-- TOC entry 557 (class 1255 OID 87427)
-- Name: __mbom__init(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__mbom__init() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.mbom_head[] := ARRAY[(203,'9b2952fa-01d1-11e7-b440-d4bed939923a','11с32п-50х40: definition',3,'2017-10-21','PROPOSED','EBOM',('11.32.050-001',1,1.0000,'pcs','PRODUCIBLE'))]::common.mbom_head[];
  _test_body CONSTANT common.material_specification[] := ARRAY[('80.31.050-001',1,1.0000,'pcs','CONSUMABLE'), ('72.01.009-001',1,2.0000,'pcs','CONSUMABLE')]::common.material_specification[];
  _head common.mbom_head;
  _body common.material_specification[];
  _document_id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __mbom__init()';

  INSERT INTO
    inventory.information
      ( id, gid, part_code, display_name, published_date )
    VALUES
      ( 101, 'a711da30-fa3a-11e7-8e63-d4bed939923a', '11.31.050-001', '11с31п-50х40: information', '2018-01-15' ),
      ( 102, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', '11.32.050-001', '11с32п-50х40: information', '2018-01-15' ),
      ( 103, 'f08b5682-fa3a-11e7-86da-d4bed939923a', '11.33.050-001', '11с33п-50х40: information', '2018-01-15' ),
      ( 104, '8236af18-eb1a-11e6-8a73-d4bed939923a', '80.31.050-001', 'xxxxxxxxxxxa: information', '2018-01-15' ),
      ( 105, 'f20d7196-01d1-11e7-b441-d4bed939923a', '72.01.009-001', 'xxxxxxxxxxxb: information', '2018-01-15' ),
      ( 106, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'Гайка-М12-001', 'xxxxxxxxxxxc: information', '2018-01-15' );

  INSERT INTO
    inventory.definition 
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id, uom_code )
    VALUES 
      ( 101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'DECOMMITTED', '2018-01-10', 101, 'pcs' ),
      ( 102, 'd83fb96a-fa3a-11e7-948a-d4bed939923a', '11.32.050-001', 1, '2018-01-15', NULL, NULL, 'COMMITTED', '2018-01-15', 102, 'pcs' ),
      ( 103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', '11.32.050-001', 2, '2018-01-16', NULL, NULL, 'PROPOSED', '2018-01-16', 102, 'pcs' ),
      ( 104, 'c792f74d-7e6e-4577-ad69-987f56af7af7', '11.33.050-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 103, 'pcs' ),
      ( 105, '9b2952fa-01d1-11e7-b440-d4bed939923a', '80.31.050-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 104, 'pcs' ),
      ( 106, '8236af18-eb1a-11e6-8a73-d4bed939923a', '72.01.009-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 105, 'pcs' ),
      ( 107, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'Гайка-М12-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 106, 'pcs' );

  INSERT INTO
    inventory.producible
      ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
    VALUES
      ( '11.31.050-001', 1, '11с31п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 101 ),
      ( '11.32.050-001', 1, '11с32п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 102 ),
      ( '11.32.050-001', 2, '11с32п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 103 ),
      ( '11.33.050-001', 1, '11с32п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 104 ),
      ( '80.31.050-001', 1, '80с31п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 104 );

  INSERT INTO
    inventory.consumable
      ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
    VALUES
      ( '72.01.009-001', 1, '72с01п-50х40: information', '2018-01-15', 'CONSUMABLE', 'pcs', 105 ),
      ( '80.31.050-001', 1, '80с31п-50х40: information', '2018-01-15', 'CONSUMABLE', 'pcs', 104 );
  
  _document_id := mbom.init(_test_head[1], _test_body);
  _head := mbom.get_head(_document_id);
  _body := mbom.get_body(_document_id);
  --PERFORM pgunit.assert_equals(_test_head[1], _head, 'Incorrect _head value');
  PERFORM pgunit.assert_array_equals(_test_body, _body, 'Incorrect _body value');


END;
$$;


ALTER FUNCTION tests.__mbom__init() OWNER TO postgres;

--
-- TOC entry 559 (class 1255 OID 87428)
-- Name: __mbom__reinit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__mbom__reinit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.mbom_head[] := ARRAY[(203,'9b2952fa-01d1-11e7-b440-d4bed939923a','11с32п-50х40: definition',3,'2017-10-21','PROPOSED','EBOM',('11.32.050-001',1,1.0000,'pcs','PRODUCIBLE'))]::common.mbom_head[];
  _test_body_init CONSTANT common.material_specification[] := ARRAY[('80.31.050-001',1,1.0000,'pcs','CONSUMABLE'), ('72.01.009-001',1,2.0000,'pcs','CONSUMABLE')]::common.material_specification[];
  _test_body_reinit CONSTANT common.material_specification[] := ARRAY[('80.31.050-001',1,2.0000,'pcs','CONSUMABLE'), ('72.01.009-001',1,4.0000,'pcs','CONSUMABLE')]::common.material_specification[];
  _head common.mbom_head;
  _body common.material_specification[];
  _document_id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __mbom__reinit()';

  INSERT INTO
    inventory.information
      ( id, gid, part_code, display_name, published_date )
    VALUES
      ( 101, 'a711da30-fa3a-11e7-8e63-d4bed939923a', '11.31.050-001', '11с31п-50х40: information', '2018-01-15' ),
      ( 102, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', '11.32.050-001', '11с32п-50х40: information', '2018-01-15' ),
      ( 103, 'f08b5682-fa3a-11e7-86da-d4bed939923a', '11.33.050-001', '11с33п-50х40: information', '2018-01-15' ),
      ( 104, '8236af18-eb1a-11e6-8a73-d4bed939923a', '80.31.050-001', 'xxxxxxxxxxxa: information', '2018-01-15' ),
      ( 105, 'f20d7196-01d1-11e7-b441-d4bed939923a', '72.01.009-001', 'xxxxxxxxxxxb: information', '2018-01-15' ),
      ( 106, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'Гайка-М12-001', 'xxxxxxxxxxxc: information', '2018-01-15' );

  INSERT INTO
    inventory.definition 
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id, uom_code )
    VALUES 
      ( 101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'DECOMMITTED', '2018-01-10', 101, 'pcs' ),
      ( 102, 'd83fb96a-fa3a-11e7-948a-d4bed939923a', '11.32.050-001', 1, '2018-01-15', NULL, NULL, 'COMMITTED', '2018-01-15', 102, 'pcs' ),
      ( 103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', '11.32.050-001', 2, '2018-01-16', NULL, NULL, 'PROPOSED', '2018-01-16', 102, 'pcs' ),
      ( 104, 'c792f74d-7e6e-4577-ad69-987f56af7af7', '11.33.050-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 103, 'pcs' ),
      ( 105, '9b2952fa-01d1-11e7-b440-d4bed939923a', '80.31.050-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 104, 'pcs' ),
      ( 106, '8236af18-eb1a-11e6-8a73-d4bed939923a', '72.01.009-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 105, 'pcs' ),
      ( 107, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'Гайка-М12-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 106, 'pcs' );

  INSERT INTO
    inventory.producible
      ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
    VALUES
      ( '11.31.050-001', 1, '11с31п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 101 ),
      ( '11.32.050-001', 1, '11с32п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 102 ),
      ( '11.32.050-001', 2, '11с32п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 103 ),
      ( '11.33.050-001', 1, '11с32п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 104 ),
      ( '80.31.050-001', 1, '80с31п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 104 );

  INSERT INTO
    inventory.consumable
      ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
    VALUES
      ( '72.01.009-001', 1, '72с01п-50х40: information', '2018-01-15', 'CONSUMABLE', 'pcs', 105 ),
      ( '80.31.050-001', 1, '80с31п-50х40: information', '2018-01-15', 'CONSUMABLE', 'pcs', 104 );
  
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
-- TOC entry 548 (class 1255 OID 87429)
-- Name: _load_data(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests._load_data() RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  PERFORM inventory.init(
    (NULL, NULL, '80-31-050', '80.31.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82-31-050', '82.31.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  --
  PERFORM inventory.init(
    (NULL, NULL, '22-25-050', '22.25.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40-32-050', '40.32.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '50-01-050', '50.01.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '51-01-050', '51.01.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '52-01-050', '52.01.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '53-01-004', '53.01.004-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60-01-050', '60.01.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61-01-050', '61.01.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70-01-050', '70.01.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70-04-020', '70.04.020-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41-31-050', '41.31.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42-01-050', '42.01.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42-02-022', '42.02.022-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55-31-050', '55.31.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71-01-020', '71.01.020-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );

  --
  PERFORM inventory.init(
    (NULL, NULL, '11-32-050', '11.32.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );


  --
  PERFORM inventory.init(
    (NULL, NULL, '72-01-009', '72.01.009-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  --
  PERFORM inventory.init(
    (NULL, NULL, 'Гайка M12', '00.00.000-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );

  /*
  "4";"006";"Метр"
  "14";"166";"Кілограм"
  "1425";"Матеріал: Круг ГОСТ 2590 ст20 022";"Крг-ст20-022";"Крг-022-ст20";"ГОСТ 2590-2006. Прокат сортовой стальной горячекатаный круглый. Сортамент";4
  "1522";"Матеріал: Круг ГОСТ 2590 ст20Х13 16";"Крг-ст20Х13-016";"Крг-016-ст20Х13";"ГОСТ 2590-2006. Прокат сортовой стальной горячекатаный круглый. Сортамент";4
  "1531";"Матеріал: Круг ГОСТ 2590 ст45 04,0";"Крг-ст45-004,0";"Крг-004,0-ст45";"ГОСТ 2590-2006. Прокат сортовой стальной горячекатаный круглый. Сортамент";4
  "1535";"Матеріал: Лист ГОСТ 16523 ст3 3,0";"Лст-ст3-003,0";"Лст-003,0-ст3";"ГОСТ 16523-97. Прокат тонколистовой из углеродистой стали качественной и обыкновенного качества общего назначения. Технические условия";14
  "1538";"Матеріал: Лист ГОСТ 19903 ст65Г 1,2";"Лст-ст65Г-001,2";"Лст-001,2-ст65Г";"ГОСТ 19903-74. Прокат листовой горячекатаный. Сортамент";14
  "1545";"Матеріал: Лист ГОСТ 5582 ст20Х17 01,0";"Лст-ст20Х17-001,0";"Лст-001,0-ст20Х17";"ГОСТ 5582-75. Прокат тонколистовой коррозионно-стойкий, жаростойкий и жаропрочный. Технические условия";14
  "1549";"Матеріал: Полоса ГОСТ 103 ст3 20х4";"Плс-ст3-020х4";"Плс-020х4-ст3";"ГОСТ 103-76. Полоса стальная горячекатаная. Сортамент";14
  "1564";"Матеріал: Труба ГОСТ 10705 ст20 057,0х3,5";"Трб-ст20-057,0х03,5-Ш";"Трб-057,0х03,5-ст20-Ш";"ГОСТ 10705-80. Трубы стальные электросварные. Технические условия";4
  "1572";"Матеріал: Труба ГОСТ 10705 ст20 089,0х3,5";"Трб-ст20-089,0х03,5-Ш";"Трб-089,0х03,5-ст20-Ш";"ГОСТ 10705-80. Трубы стальные электросварные. Технические условия";4
  "1590";"Матеріал: Труба ГОСТ 10705 ст20 089,0х3,0";"Трб-ст20-089,0х03,0-Ш";"Трб-089,0х03,0-ст20-Ш";"";4
  "1607";"Матеріал: Труба ГОСТ 9940 ст20Х13 068,0х4,0";"Трб-ст20Х13-068,0х04,0";"Трб-068,0х04,0-ст20Х13";"ГОСТ 9940-81. Трубы бесшовные горячедеформированные из коррозионно-стойкой стали. Технические условия";4
  "1619";"Матеріал: Заготовка квадратна ст3пс 080х080";"Квд-ст3ПС-080х080";"Квд-080х080-ст3ПС";"";14
  "1794";"Матеріал: Поліетилен високого тиску ГОСТ16337-77 сорт 15803-020";"ПЕ 15803-020";"ПЕ 15803-020";"";14
  "1796";"Матеріал: Фторопласт Ф4 ГОСТ10007";"Ф-4";"Ф-4";"";14
  "2175";"Матеріал: Лист ГОСТ 5582 ст20Х17 00,8";"Лст-ст20Х17-000,8";"Лст-000,8-ст20Х17";"ГОСТ 5582-75. Прокат тонколистовой коррозионно-стойкий, жаростойкий и жаропрочный. Технические условия";14
  "2368";"Матеріал: Лист ГОСТ 7350 ст20Х17 04,4";"Лст-ст20Х17-004,4";"Лст-004,4-ст20Х17";"ГОСТ 7350-77. Сталь толстолистовая коррозионно-стойкая, жаростойкая и жаропрочная. Технические условия";14
  "2375";"Матеріал: Труба ГОСТ 9940 ст20Х13 068,0х3,5";"Трб-ст20Х13-068,0х03,5";"Трб-068,0х03,5-ст20Х13";"";4
  */

  PERFORM inventory.init(
    (NULL, NULL, 'Крг-ст20-022', 'Крг-022-ст20', 1, '2018-05-01', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('m', 'm', 1), ('m', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-ст20Х13-016', 'Крг-016-ст20Х13', 1, '2018-05-01', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('m', 'm', 1), ('m', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-ст45-004,0', 'Крг-004,0-ст45', 1, '2018-05-01', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('m', 'm', 1), ('m', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-ст3-003,0', 'Лст-003,0-ст3', 1, '2018-05-01', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('kg', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-ст65Г-001,2', 'Лст-001,2-ст65Г', 1, '2018-05-01', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('kg', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-ст20Х17-001,0', 'Лст-001,0-ст20Х17', 1, '2018-05-01', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('kg', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Плс-ст3-020х4', 'Плс-020х4-ст3', 1, '2018-05-01', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('kg', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-ст20-057,0х03,5-Ш', 'Трб-057,0х03,5-ст20-Ш', 1, '2018-05-01', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('m', 'm', 1), ('m', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-ст20-089,0х03,5-Ш', 'Трб-089,0х03,5-ст20-Ш', 1, '2018-05-01', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('m', 'm', 1), ('m', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-ст20-089,0х03,0-Ш', 'Трб-089,0х03,0-ст20-Ш', 1, '2018-05-01', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('m', 'm', 1), ('m', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-ст20Х13-068,0х04,0', 'Трб-068,0х04,0-ст20Х13', 1, '2018-05-01', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('m', 'm', 1), ('m', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Квд-ст3ПС-080х080', 'Квд-080х080-ст3ПС', 1, '2018-05-01', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('kg', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'ПЕ-15803-020', 'ПЕ-15803-020', 1, '2018-05-01', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('kg', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Ф-4', 'Ф-4', 1, '2018-05-01', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('kg', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-ст20Х17-000,8', 'Лст-000,8-ст20Х17', 1, '2018-05-01', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('kg', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-ст20Х17-004,4', 'Лст-004,4-ст20Х17', 1, '2018-05-01', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('kg', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-ст20Х13-068,0х03,5', 'Трб-068,0х03,5-ст20Х13', 1, '2018-05-01', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('m', 'm', 1), ('m', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );



  PERFORM ebom.init(
    (NULL, NULL, '11-32-50: definition', 3, '2018-05-21','PROPOSED', 'EBOM', ('11.32.050-001', 1, 1.0000, 'pcs', 'ASSEMBLY'))::common.ebom_head,
    ARRAY[
      ('80.31.050-001', 1, 1.0000, 'pcs', 'ASSEMBLY'),
      ('82.31.050-001', 1, 1.0000, 'pcs', 'ASSEMBLY'),
      ('22.25.050-001', 1, 2.0000, 'pcs', 'PART'),
      ('40.32.050-001', 1, 2.0000, 'pcs', 'PART'),
      ('50.01.050-001', 1, 2.0000, 'pcs', 'PART'),
      ('51.01.050-001', 1, 2.0000, 'pcs', 'PART'),
      ('52.01.050-001', 1, 2.0000, 'pcs', 'PART'),
      ('53.01.004-001', 1, 1.0000, 'pcs', 'PART'),
      ('60.01.050-001', 1, 1.0000, 'pcs', 'PART'),
      ('61.01.050-001', 1, 1.0000, 'pcs', 'PART'),
      ('70.01.050-001', 1, 2.0000, 'pcs', 'PART'),
      ('70.04.020-001', 1, 1.0000, 'pcs', 'PART'),
      ('72.01.009-001', 1, 2.0000, 'pcs', 'BUYABLE'),
      ('00.00.000-001', 1, 1.0000, 'pcs', 'BUYABLE')
    ]::common.component_specification[]
  );

  PERFORM ebom.init(
    (NULL, NULL, '80-31-50: definition', 3, '2018-05-21','PROPOSED', 'EBOM', ('80.31.050-001', 1, 1.0000, 'pcs', 'ASSEMBLY'))::common.ebom_head,
    ARRAY[
      ('41.31.050-001', 1, 1.0000, 'pcs', 'PART'),
      ('42.01.050-001', 1, 1.0000, 'pcs', 'PART')
    ]::common.component_specification[]
  );

  PERFORM ebom.init(
    (NULL, NULL, '82-31-50: definition', 3, '2018-05-21','PROPOSED', 'EBOM', ('82.31.050-001', 1, 1.0000, 'pcs', 'ASSEMBLY'))::common.ebom_head,
    ARRAY[
      ('42.02.022-001', 1, 1.0000, 'pcs', 'PART'),
      ('55.31.050-001', 1, 1.0000, 'pcs', 'PART'),
      ('71.01.020-001', 1, 1.0000, 'pcs', 'PART')
    ]::common.component_specification[]
  );


  /*
  pout_code like '22.25.050-001%' OR
  pout_code like '40.32.050-001%' OR
  pout_code like '50.01.050-001%' OR
  pout_code like '51.01.050-001%' OR
  pout_code like '52.01.050-001%' OR
  pout_code like '53.01.004-001%' OR
  pout_code like '60.01.050-001%' OR
  pout_code like '61.01.050-001%' OR
  pout_code like '70.01.050-001%' OR
  pout_code like '70.04.020-001%' OR
  pout_code like '72.01.009-001%' OR
  pout_code like '41.31.050-001%' OR
  pout_code like '42.02.022-001%' OR
  pout_code like '55.31.050-001%' OR
  pout_code like '71.01.020-001%' OR
  pout_code like '42.01.050-001%' OR
  */


  PERFORM mbom.init(
    (NULL, NULL, '22.25.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('22.25.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Квд-080х080-ст3ПС', 1, 3.4, 'kg', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.init(
    (NULL, NULL, '42.01.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('42.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Крг-022-ст20', 1, 50, 'mm', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.init(
    (NULL, NULL, '42.02.022-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('42.02.022-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Крг-022-ст20', 1, 18, 'mm', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.init(
    (NULL, NULL, '61.01.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('61.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Крг-016-ст20Х13', 1, 81, 'mm', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.init(
    (NULL, NULL, '53.01.004-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('53.01.004-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Крг-004,0-ст45', 1, 14, 'mm', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.init(
    (NULL, NULL, '50.01.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('50.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Лст-000,8-ст20Х17', 1, 0, 'kg', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.init(
    (NULL, NULL, '50.01.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('50.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Лст-000,8-ст20Х17', 1, 0.02, 'kg', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.init(
    (NULL, NULL, '50.01.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('50.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Лст-001,0-ст20Х17', 1, 0.03, 'kg', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.init(
    (NULL, NULL, '60.01.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('60.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Лст-004,4-ст20Х17', 1, 0.4, 'kg', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.init(
    (NULL, NULL, '52.01.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('52.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Лст-003,0-ст3', 1, 0, 'kg', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.init(
    (NULL, NULL, '52.01.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('52.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Лст-003,0-ст3', 1, 0.08, 'kg', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.init(
    (NULL, NULL, '51.01.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('51.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Лст-001,2-ст65Г', 1, 0, 'kg', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.init(
    (NULL, NULL, '51.01.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('51.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Лст-001,2-ст65Г', 1, 0.03, 'kg', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.init(
    (NULL, NULL, '71.01.020-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('71.01.020-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('ПЕ-15803-020', 1, 0.01, 'kg', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.init(
    (NULL, NULL, '55.31.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('55.31.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Плс-020х4-ст3', 1, 0.15, 'kg', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.init(
    (NULL, NULL, '40.32.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('40.32.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Трб-057,0х03,5-ст20-Ш', 1, 78, 'mm', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.init(
    (NULL, NULL, '41.31.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('41.31.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Трб-089,0х03,0-ст20-Ш', 1, 115, 'mm', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.init(
    (NULL, NULL, '41.31.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('41.31.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Трб-089,0х03,5-ст20-Ш', 1, 115, 'mm', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.init(
    (NULL, NULL, '60.01.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('60.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Трб-068,0х03,5-ст20Х13', 1, 65, 'mm', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.init(
    (NULL, NULL, '60.01.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('60.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Трб-068,0х04,0-ст20Х13', 1, 65, 'mm', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.init(
    (NULL, NULL, '70.01.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('70.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Ф-4', 1, 15.6, 'g', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.init(
    (NULL, NULL, '70.04.020-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('70.04.020-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Ф-4', 1, 0.5, 'g', 'PRIMAL')]::common.material_specification[]
  );

  PERFORM mbom.init(
    (NULL, NULL, '11-32-50: definition', 3, '2018-05-21','PROPOSED', 'MBOM', ('11.32.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[
      ('80.31.050-001', 1, 1.0000, 'pcs', 'CONSUMABLE'),
      ('82.31.050-001', 1, 1.0000, 'pcs', 'CONSUMABLE'),
      ('22.25.050-001', 1, 2.0000, 'pcs', 'CONSUMABLE'),
      ('40.32.050-001', 1, 2.0000, 'pcs', 'CONSUMABLE'),
      ('50.01.050-001', 1, 2.0000, 'pcs', 'CONSUMABLE'),
      ('51.01.050-001', 1, 2.0000, 'pcs', 'CONSUMABLE'),
      ('52.01.050-001', 1, 2.0000, 'pcs', 'CONSUMABLE'),
      ('53.01.004-001', 1, 1.0000, 'pcs', 'CONSUMABLE'),
      ('60.01.050-001', 1, 1.0000, 'pcs', 'CONSUMABLE'),
      ('61.01.050-001', 1, 1.0000, 'pcs', 'CONSUMABLE'),
      ('70.01.050-001', 1, 2.0000, 'pcs', 'CONSUMABLE'),
      ('70.04.020-001', 1, 1.0000, 'pcs', 'CONSUMABLE'),
      ('72.01.009-001', 1, 2.0000, 'pcs', 'PRIMAL'),
      ('00.00.000-001', 1, 1.0000, 'pcs', 'PRIMAL')
    ]::common.material_specification[]
  );

  PERFORM mbom.init(
    (NULL, NULL, '80-31-50: definition', 3, '2018-05-21','PROPOSED', 'MBOM', ('80.31.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[
      ('41.31.050-001', 1, 1.0000, 'pcs', 'CONSUMABLE'),
      ('42.01.050-001', 1, 1.0000, 'pcs', 'CONSUMABLE')
    ]::common.material_specification[]
  );

  PERFORM mbom.init(
    (NULL, NULL, '82-31-50: definition', 3, '2018-05-21','PROPOSED', 'MBOM', ('82.31.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[
      ('42.02.022-001', 1, 1.0000, 'pcs', 'CONSUMABLE'),
      ('55.31.050-001', 1, 1.0000, 'pcs', 'CONSUMABLE'),
      ('71.01.020-001', 1, 1.0000, 'pcs', 'CONSUMABLE')
    ]::common.material_specification[]
  );

END;
$$;


ALTER FUNCTION tests._load_data() OWNER TO postgres;

--
-- TOC entry 564 (class 1255 OID 87431)
-- Name: _reset_data(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests._reset_data() RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  /*
  SELECT 'TRUNCATE TABLE ' || table_schema || '.' ||table_name || ' CASCADE;'
  FROM information_schema.tables
  WHERE table_schema NOT IN ('pg_catalog', 'information_schema', 'public', 'tests', 'common')
  ORDER BY table_schema,table_name;
  */
  TRUNCATE TABLE binding.ebom_to_mbom CASCADE;
  TRUNCATE TABLE binding.ebom_to_product CASCADE;
  TRUNCATE TABLE binding.ebom_to_route CASCADE;
  TRUNCATE TABLE binding.mbom_to_operation CASCADE;
  TRUNCATE TABLE binding.mbom_to_product CASCADE;
  TRUNCATE TABLE binding.operation_to_product CASCADE;
  TRUNCATE TABLE binding.route_to_mbom CASCADE;
  TRUNCATE TABLE binding.route_to_operation CASCADE;
  TRUNCATE TABLE ebom.assembly CASCADE;
  TRUNCATE TABLE ebom.buyable CASCADE;
  TRUNCATE TABLE ebom.component CASCADE;
  TRUNCATE TABLE ebom.definition CASCADE;
  TRUNCATE TABLE ebom.information CASCADE;
  TRUNCATE TABLE ebom.part CASCADE;
  TRUNCATE TABLE inventory.assembly CASCADE;
  TRUNCATE TABLE inventory.buyable CASCADE;
  TRUNCATE TABLE inventory.conglomeration CASCADE;
  TRUNCATE TABLE inventory.consumable CASCADE;
  TRUNCATE TABLE inventory.definition CASCADE;
  TRUNCATE TABLE inventory.information CASCADE;
  TRUNCATE TABLE inventory.measurement CASCADE;
  TRUNCATE TABLE inventory.part CASCADE;
  TRUNCATE TABLE inventory.primal CASCADE;
  TRUNCATE TABLE inventory.producible CASCADE;
  TRUNCATE TABLE inventory.salable CASCADE;
  TRUNCATE TABLE inventory.storable CASCADE;
  TRUNCATE TABLE mbom.consumable CASCADE;
  TRUNCATE TABLE mbom.definition CASCADE;
  TRUNCATE TABLE mbom.information CASCADE;
  TRUNCATE TABLE mbom.material CASCADE;
  TRUNCATE TABLE mbom.primal CASCADE;
  TRUNCATE TABLE operation.consumable CASCADE;
  TRUNCATE TABLE operation.definition CASCADE;
  TRUNCATE TABLE operation.dependency CASCADE;
  TRUNCATE TABLE operation.equipment CASCADE;
  TRUNCATE TABLE operation.information CASCADE;
  TRUNCATE TABLE operation.material CASCADE;
  TRUNCATE TABLE operation.personnel CASCADE;
  TRUNCATE TABLE operation.primal CASCADE;
  TRUNCATE TABLE operation.segment CASCADE;
  TRUNCATE TABLE operation.tooling CASCADE;
  TRUNCATE TABLE product.consumable CASCADE;
  TRUNCATE TABLE product.definition CASCADE;
  TRUNCATE TABLE product.dependency CASCADE;
  TRUNCATE TABLE product.equipment CASCADE;
  TRUNCATE TABLE product.information CASCADE;
  TRUNCATE TABLE product.material CASCADE;
  TRUNCATE TABLE product.personnel CASCADE;
  TRUNCATE TABLE product.primal CASCADE;
  TRUNCATE TABLE product.segment CASCADE;
  TRUNCATE TABLE product.tooling CASCADE;
  TRUNCATE TABLE route.consumable CASCADE;
  TRUNCATE TABLE route.definition CASCADE;
  TRUNCATE TABLE route.information CASCADE;
  TRUNCATE TABLE route.location CASCADE;
  TRUNCATE TABLE route.primal CASCADE;
  TRUNCATE TABLE route.segment CASCADE;
  -- TRUNCATE TABLE uom.assignment CASCADE;
  -- TRUNCATE TABLE uom.information CASCADE;
  /*
  SELECT 'ALTER SEQUENCE ' || sequence_schema || '.' || sequence_name || ' RESTART WITH 1;'
  FROM information_schema.sequences
  WHERE sequence_catalog = 'mes' AND sequence_schema != 'common'
  ORDER by sequence_schema, sequence_name;
  */
  ALTER SEQUENCE ebom.definition_id_seq RESTART WITH 1;
  ALTER SEQUENCE ebom.information_id_seq RESTART WITH 1;
  ALTER SEQUENCE inventory.definition_id_seq RESTART WITH 1;
  ALTER SEQUENCE inventory.information_id_seq RESTART WITH 1;
  ALTER SEQUENCE mbom.definition_id_seq RESTART WITH 1;
  ALTER SEQUENCE mbom.information_id_seq RESTART WITH 1;
  ALTER SEQUENCE operation.definition_id_seq RESTART WITH 1;
  ALTER SEQUENCE operation.information_id_seq RESTART WITH 1;
  ALTER SEQUENCE operation.segment_id_seq RESTART WITH 1;
  ALTER SEQUENCE product.definition_id_seq RESTART WITH 1;
  ALTER SEQUENCE product.information_id_seq RESTART WITH 1;
  ALTER SEQUENCE product.segment_id_seq RESTART WITH 1;
  ALTER SEQUENCE route.definition_id_seq RESTART WITH 1;
  ALTER SEQUENCE route.information_id_seq RESTART WITH 1;
  -- ALTER SEQUENCE uom.uom_role_uom_role_id_seq RESTART WITH 1;
END;
$$;


ALTER FUNCTION tests._reset_data() OWNER TO postgres;

--
-- TOC entry 545 (class 1255 OID 87432)
-- Name: _run_all(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests._run_all() RETURNS void
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

--
-- TOC entry 546 (class 1255 OID 87433)
-- Name: get_domain(character varying); Type: FUNCTION; Schema: uom; Owner: postgres
--

CREATE FUNCTION uom.get_domain(_uom_code character varying) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN uom_domain FROM uom.information WHERE uom_code = _uom_code;

END;
$$;


ALTER FUNCTION uom.get_domain(_uom_code character varying) OWNER TO postgres;

--
-- TOC entry 547 (class 1255 OID 87434)
-- Name: get_factor(character varying, character varying); Type: FUNCTION; Schema: uom; Owner: postgres
--

CREATE FUNCTION uom.get_factor(_uom_code_src character varying, _uom_code_dst character varying) RETURNS double precision
    LANGUAGE plpgsql
    AS $$
DECLARE
  __factor_1 double precision;
  __factor_2 double precision;
  __uom_domain_from character varying;
  __uom_domain_to character varying;

BEGIN

  -- визначити домен одиниці виміру, з якої приводимо
  __uom_domain_from := uom.get_domain(_uom_code := _uom_code_src);

  -- визначити домен одиниці виміру, до якої приводимо
  __uom_domain_to := uom.get_domain(_uom_code := _uom_code_dst);

  IF (__uom_domain_from = __uom_domain_to) THEN
    -- привести з вказаної одиниці до базової Сі = *
    __factor_1 := factor
      FROM 
        uom.information
      WHERE 
        uom_code = _uom_code_src;

    -- привести з базової Сі до вказаної = /
    __factor_2 := factor
      FROM 
        uom.information
      WHERE 
        uom_code = _uom_code_dst;

    RETURN __factor_1 / __factor_2;

  ELSE
    RAISE EXCEPTION 'units of measure are not in the same domain: "%" and "%"', _uom_code_src, _uom_code_dst;
    --RETURN NULL;
  END IF;

END;
$$;


ALTER FUNCTION uom.get_factor(_uom_code_src character varying, _uom_code_dst character varying) OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 232 (class 1259 OID 87435)
-- Name: ebom_to_mbom; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.ebom_to_mbom (
    ebom_id bigint NOT NULL,
    mbom_id bigint NOT NULL
);


ALTER TABLE binding.ebom_to_mbom OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 87438)
-- Name: ebom_to_product; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.ebom_to_product (
    ebom_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE binding.ebom_to_product OWNER TO postgres;

--
-- TOC entry 322 (class 1259 OID 93538)
-- Name: ebom_to_production; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.ebom_to_production (
    ebom_id bigint NOT NULL,
    production_id bigint NOT NULL
);


ALTER TABLE binding.ebom_to_production OWNER TO postgres;

--
-- TOC entry 323 (class 1259 OID 93543)
-- Name: ebom_to_route; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.ebom_to_route (
    ebom_id bigint NOT NULL,
    route_id bigint NOT NULL
);


ALTER TABLE binding.ebom_to_route OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 87444)
-- Name: mbom_to_operation; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.mbom_to_operation (
    mbom_id bigint NOT NULL,
    operation_id bigint NOT NULL
);


ALTER TABLE binding.mbom_to_operation OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 87447)
-- Name: mbom_to_product; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.mbom_to_product (
    mbom_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE binding.mbom_to_product OWNER TO postgres;

--
-- TOC entry 324 (class 1259 OID 93548)
-- Name: mbom_to_production; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.mbom_to_production (
    mbom_id bigint NOT NULL,
    production_id bigint NOT NULL
);


ALTER TABLE binding.mbom_to_production OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 87450)
-- Name: operation_to_product; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.operation_to_product (
    operation_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE binding.operation_to_product OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 87453)
-- Name: route_to_mbom; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.route_to_mbom (
    route_id bigint NOT NULL,
    mbom_id bigint NOT NULL
);


ALTER TABLE binding.route_to_mbom OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 87456)
-- Name: route_to_operation; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.route_to_operation (
    route_id bigint NOT NULL,
    operation_id bigint NOT NULL
);


ALTER TABLE binding.route_to_operation OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 87459)
-- Name: component; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE ebom.component (
    definition_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    quantity common.quantity NOT NULL,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL,
    component_type common.component_kind NOT NULL
);


ALTER TABLE ebom.component OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 87466)
-- Name: assembly; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE ebom.assembly (
    CONSTRAINT assembly_component_type_check CHECK ((component_type = 'ASSEMBLY'::common.component_kind))
)
INHERITS (ebom.component);


ALTER TABLE ebom.assembly OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 87474)
-- Name: buyable; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE ebom.buyable (
    CONSTRAINT buyable_component_type_check CHECK ((component_type = 'BUYABLE'::common.component_kind))
)
INHERITS (ebom.component);


ALTER TABLE ebom.buyable OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 87482)
-- Name: definition; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE ebom.definition (
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


ALTER TABLE ebom.definition OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 87493)
-- Name: definition_id_seq; Type: SEQUENCE; Schema: ebom; Owner: postgres
--

CREATE SEQUENCE ebom.definition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ebom.definition_id_seq OWNER TO postgres;

--
-- TOC entry 4447 (class 0 OID 0)
-- Dependencies: 243
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: ebom; Owner: postgres
--

ALTER SEQUENCE ebom.definition_id_seq OWNED BY ebom.definition.id;


--
-- TOC entry 244 (class 1259 OID 87495)
-- Name: information; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE ebom.information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL
);


ALTER TABLE ebom.information OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 87503)
-- Name: information_id_seq; Type: SEQUENCE; Schema: ebom; Owner: postgres
--

CREATE SEQUENCE ebom.information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ebom.information_id_seq OWNER TO postgres;

--
-- TOC entry 4448 (class 0 OID 0)
-- Dependencies: 245
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: ebom; Owner: postgres
--

ALTER SEQUENCE ebom.information_id_seq OWNED BY ebom.information.id;


--
-- TOC entry 246 (class 1259 OID 87505)
-- Name: part; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE ebom.part (
    CONSTRAINT part_component_type_check CHECK ((component_type = 'PART'::common.component_kind))
)
INHERITS (ebom.component);


ALTER TABLE ebom.part OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 87513)
-- Name: conglomeration; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.conglomeration (
    part_code character varying NOT NULL,
    version_num integer DEFAULT 1 NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    inventory_type common.inventory_kind NOT NULL,
    uom_code character varying,
    definition_id bigint
);


ALTER TABLE inventory.conglomeration OWNER TO postgres;

--
-- TOC entry 4449 (class 0 OID 0)
-- Dependencies: 247
-- Name: TABLE conglomeration; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.conglomeration IS 'inventory list';


--
-- TOC entry 248 (class 1259 OID 87521)
-- Name: assembly; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.assembly (
    CONSTRAINT assembly_inventory_type_check CHECK ((inventory_type = 'ASSEMBLY'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.assembly OWNER TO postgres;

--
-- TOC entry 4450 (class 0 OID 0)
-- Dependencies: 248
-- Name: TABLE assembly; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.assembly IS 'ebom assembly component';


--
-- TOC entry 249 (class 1259 OID 87530)
-- Name: buyable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.buyable (
    CONSTRAINT buyable_inventory_type_check CHECK ((inventory_type = 'BUYABLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.buyable OWNER TO postgres;

--
-- TOC entry 4451 (class 0 OID 0)
-- Dependencies: 249
-- Name: TABLE buyable; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.buyable IS 'ebom buyable component';


--
-- TOC entry 250 (class 1259 OID 87539)
-- Name: consumable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.consumable (
    CONSTRAINT consumable_inventory_type_check CHECK ((inventory_type = 'CONSUMABLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.consumable OWNER TO postgres;

--
-- TOC entry 4452 (class 0 OID 0)
-- Dependencies: 250
-- Name: TABLE consumable; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.consumable IS 'mbom consumable component';


--
-- TOC entry 251 (class 1259 OID 87548)
-- Name: definition; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.definition (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    version_num integer DEFAULT 1 NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    prev_fsmt common.document_fsmt,
    prev_fsmt_date timestamp with time zone,
    curr_fsmt common.document_fsmt DEFAULT 'PROPOSED'::common.document_fsmt NOT NULL,
    curr_fsmt_date timestamp with time zone DEFAULT now() NOT NULL,
    information_id bigint,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL
);


ALTER TABLE inventory.definition OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 87560)
-- Name: definition_id_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE inventory.definition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE inventory.definition_id_seq OWNER TO postgres;

--
-- TOC entry 4453 (class 0 OID 0)
-- Dependencies: 252
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: inventory; Owner: postgres
--

ALTER SEQUENCE inventory.definition_id_seq OWNED BY inventory.definition.id;


--
-- TOC entry 253 (class 1259 OID 87562)
-- Name: information; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    part_code character varying NOT NULL,
    display_name character varying,
    published_date date DEFAULT now() NOT NULL
);


ALTER TABLE inventory.information OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 87570)
-- Name: information_id_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE inventory.information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE inventory.information_id_seq OWNER TO postgres;

--
-- TOC entry 4454 (class 0 OID 0)
-- Dependencies: 254
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: inventory; Owner: postgres
--

ALTER SEQUENCE inventory.information_id_seq OWNED BY inventory.information.id;


--
-- TOC entry 255 (class 1259 OID 87572)
-- Name: measurement; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.measurement (
    definition_id bigint NOT NULL,
    uom_code character varying NOT NULL,
    factor numeric
);


ALTER TABLE inventory.measurement OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 87578)
-- Name: part; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.part (
    CONSTRAINT part_inventory_type_check CHECK ((inventory_type = 'PART'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.part OWNER TO postgres;

--
-- TOC entry 4455 (class 0 OID 0)
-- Dependencies: 256
-- Name: TABLE part; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.part IS 'ebom part component';


--
-- TOC entry 308 (class 1259 OID 93327)
-- Name: phantom; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.phantom (
    CONSTRAINT phantom_inventory_type_check CHECK ((inventory_type = 'PHANTOM'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.phantom OWNER TO postgres;

--
-- TOC entry 4456 (class 0 OID 0)
-- Dependencies: 308
-- Name: TABLE phantom; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.phantom IS 'mbom phantom component';


--
-- TOC entry 257 (class 1259 OID 87587)
-- Name: primal; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.primal (
    CONSTRAINT primal_inventory_type_check CHECK ((inventory_type = 'PRIMAL'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.primal OWNER TO postgres;

--
-- TOC entry 4457 (class 0 OID 0)
-- Dependencies: 257
-- Name: TABLE primal; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.primal IS 'mbom primal component';


--
-- TOC entry 258 (class 1259 OID 87596)
-- Name: producible; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.producible (
    CONSTRAINT producible_inventory_type_check CHECK ((inventory_type = 'PRODUCIBLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.producible OWNER TO postgres;

--
-- TOC entry 4458 (class 0 OID 0)
-- Dependencies: 258
-- Name: TABLE producible; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.producible IS 'mbom producible component';


--
-- TOC entry 259 (class 1259 OID 87605)
-- Name: salable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.salable (
    CONSTRAINT salable_inventory_type_check CHECK ((inventory_type = 'SALABLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.salable OWNER TO postgres;

--
-- TOC entry 4459 (class 0 OID 0)
-- Dependencies: 259
-- Name: TABLE salable; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.salable IS 'inventory salable component';


--
-- TOC entry 260 (class 1259 OID 87614)
-- Name: storable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.storable (
    CONSTRAINT storable_inventory_type_check CHECK ((inventory_type = 'STORABLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.storable OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 87623)
-- Name: material; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE mbom.material (
    definition_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    quantity common.quantity NOT NULL,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL,
    material_type common.material_kind NOT NULL
);


ALTER TABLE mbom.material OWNER TO postgres;

--
-- TOC entry 262 (class 1259 OID 87630)
-- Name: consumable; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE mbom.consumable (
    CONSTRAINT consumable_component_type_check CHECK ((material_type = 'CONSUMABLE'::common.material_kind))
)
INHERITS (mbom.material);


ALTER TABLE mbom.consumable OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 87638)
-- Name: definition; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE mbom.definition (
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


ALTER TABLE mbom.definition OWNER TO postgres;

--
-- TOC entry 264 (class 1259 OID 87649)
-- Name: definition_id_seq; Type: SEQUENCE; Schema: mbom; Owner: postgres
--

CREATE SEQUENCE mbom.definition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mbom.definition_id_seq OWNER TO postgres;

--
-- TOC entry 4460 (class 0 OID 0)
-- Dependencies: 264
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: mbom; Owner: postgres
--

ALTER SEQUENCE mbom.definition_id_seq OWNED BY mbom.definition.id;


--
-- TOC entry 265 (class 1259 OID 87651)
-- Name: information; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE mbom.information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    published_date date DEFAULT now() NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL
);


ALTER TABLE mbom.information OWNER TO postgres;

--
-- TOC entry 266 (class 1259 OID 87659)
-- Name: information_id_seq; Type: SEQUENCE; Schema: mbom; Owner: postgres
--

CREATE SEQUENCE mbom.information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mbom.information_id_seq OWNER TO postgres;

--
-- TOC entry 4461 (class 0 OID 0)
-- Dependencies: 266
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: mbom; Owner: postgres
--

ALTER SEQUENCE mbom.information_id_seq OWNED BY mbom.information.id;


--
-- TOC entry 267 (class 1259 OID 87661)
-- Name: primal; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE mbom.primal (
    CONSTRAINT primal_component_type_check CHECK ((material_type = 'PRIMAL'::common.material_kind))
)
INHERITS (mbom.material);


ALTER TABLE mbom.primal OWNER TO postgres;

--
-- TOC entry 268 (class 1259 OID 87669)
-- Name: material; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE operation.material (
    segment_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    quantity common.quantity,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL,
    material_type common.material_kind,
    rationing_qty integer DEFAULT 1
);


ALTER TABLE operation.material OWNER TO postgres;

--
-- TOC entry 269 (class 1259 OID 87677)
-- Name: consumable; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE operation.consumable (
)
INHERITS (operation.material);


ALTER TABLE operation.consumable OWNER TO postgres;

--
-- TOC entry 270 (class 1259 OID 87685)
-- Name: definition; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE operation.definition (
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


ALTER TABLE operation.definition OWNER TO postgres;

--
-- TOC entry 271 (class 1259 OID 87696)
-- Name: definition_id_seq; Type: SEQUENCE; Schema: operation; Owner: postgres
--

CREATE SEQUENCE operation.definition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE operation.definition_id_seq OWNER TO postgres;

--
-- TOC entry 4462 (class 0 OID 0)
-- Dependencies: 271
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE operation.definition_id_seq OWNED BY operation.definition.id;


--
-- TOC entry 272 (class 1259 OID 87698)
-- Name: dependency; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE operation.dependency (
    ancestor bigint NOT NULL,
    descendant bigint NOT NULL,
    depth integer DEFAULT 1 NOT NULL
);


ALTER TABLE operation.dependency OWNER TO postgres;

--
-- TOC entry 273 (class 1259 OID 87702)
-- Name: equipment; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE operation.equipment (
    segment_id bigint NOT NULL,
    equipment_code character varying NOT NULL,
    version_num integer,
    quantity common.quantity,
    uom_code character varying
);


ALTER TABLE operation.equipment OWNER TO postgres;

--
-- TOC entry 274 (class 1259 OID 87708)
-- Name: information; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE operation.information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    published_date date DEFAULT now() NOT NULL,
    part_code character varying,
    version_num integer
);


ALTER TABLE operation.information OWNER TO postgres;

--
-- TOC entry 275 (class 1259 OID 87716)
-- Name: information_id_seq; Type: SEQUENCE; Schema: operation; Owner: postgres
--

CREATE SEQUENCE operation.information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE operation.information_id_seq OWNER TO postgres;

--
-- TOC entry 4463 (class 0 OID 0)
-- Dependencies: 275
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE operation.information_id_seq OWNED BY operation.information.id;


--
-- TOC entry 276 (class 1259 OID 87718)
-- Name: personnel; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE operation.personnel (
    segment_id bigint NOT NULL,
    personnel_code character varying NOT NULL,
    version_num integer,
    rationing_qty integer DEFAULT 1 NOT NULL,
    batch_qty integer,
    workers_qty integer DEFAULT 1 NOT NULL,
    setup_time interval DEFAULT '00:01:00'::interval NOT NULL,
    piece_time interval DEFAULT '00:01:00'::interval NOT NULL
);


ALTER TABLE operation.personnel OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 87728)
-- Name: primal; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE operation.primal (
)
INHERITS (operation.material);


ALTER TABLE operation.primal OWNER TO postgres;

--
-- TOC entry 278 (class 1259 OID 87736)
-- Name: segment; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE operation.segment (
    id bigint NOT NULL,
    definition_id bigint NOT NULL,
    operation_code character varying NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL
);


ALTER TABLE operation.segment OWNER TO postgres;

--
-- TOC entry 279 (class 1259 OID 87743)
-- Name: segment_id_seq; Type: SEQUENCE; Schema: operation; Owner: postgres
--

CREATE SEQUENCE operation.segment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE operation.segment_id_seq OWNER TO postgres;

--
-- TOC entry 4464 (class 0 OID 0)
-- Dependencies: 279
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE operation.segment_id_seq OWNED BY operation.segment.id;


--
-- TOC entry 280 (class 1259 OID 87745)
-- Name: tooling; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE operation.tooling (
    segment_id bigint NOT NULL,
    tooling_code character varying NOT NULL,
    version_num integer,
    quantity common.quantity,
    uom_code character varying
);


ALTER TABLE operation.tooling OWNER TO postgres;

--
-- TOC entry 281 (class 1259 OID 87751)
-- Name: material; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.material (
    segment_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    quantity common.quantity,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL,
    material_type common.material_kind,
    rationing_qty integer DEFAULT 1
);


ALTER TABLE product.material OWNER TO postgres;

--
-- TOC entry 282 (class 1259 OID 87759)
-- Name: consumable; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.consumable (
    CONSTRAINT consumable_material_type_check CHECK ((material_type = 'CONSUMABLE'::common.material_kind))
)
INHERITS (product.material);


ALTER TABLE product.consumable OWNER TO postgres;

--
-- TOC entry 283 (class 1259 OID 87768)
-- Name: definition; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.definition (
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


ALTER TABLE product.definition OWNER TO postgres;

--
-- TOC entry 284 (class 1259 OID 87779)
-- Name: definition_id_seq; Type: SEQUENCE; Schema: product; Owner: postgres
--

CREATE SEQUENCE product.definition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product.definition_id_seq OWNER TO postgres;

--
-- TOC entry 4465 (class 0 OID 0)
-- Dependencies: 284
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE product.definition_id_seq OWNED BY product.definition.id;


--
-- TOC entry 285 (class 1259 OID 87781)
-- Name: dependency; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.dependency (
    ancestor bigint NOT NULL,
    descendant bigint NOT NULL,
    depth integer DEFAULT 1 NOT NULL
);


ALTER TABLE product.dependency OWNER TO postgres;

--
-- TOC entry 286 (class 1259 OID 87785)
-- Name: equipment; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.equipment (
    segment_id bigint NOT NULL,
    equipment_code character varying NOT NULL,
    version_num integer,
    quantity common.quantity,
    uom_code character varying
);


ALTER TABLE product.equipment OWNER TO postgres;

--
-- TOC entry 287 (class 1259 OID 87791)
-- Name: information; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    published_date date DEFAULT now() NOT NULL,
    part_code character varying,
    version_num integer
);


ALTER TABLE product.information OWNER TO postgres;

--
-- TOC entry 288 (class 1259 OID 87799)
-- Name: information_id_seq; Type: SEQUENCE; Schema: product; Owner: postgres
--

CREATE SEQUENCE product.information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product.information_id_seq OWNER TO postgres;

--
-- TOC entry 4466 (class 0 OID 0)
-- Dependencies: 288
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE product.information_id_seq OWNED BY product.information.id;


--
-- TOC entry 289 (class 1259 OID 87802)
-- Name: personnel; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.personnel (
    segment_id bigint NOT NULL,
    personnel_code character varying NOT NULL,
    version_num integer,
    rationing_qty integer DEFAULT 1 NOT NULL,
    batch_qty integer,
    workers_qty integer DEFAULT 1 NOT NULL,
    setup_time interval DEFAULT '00:01:00'::interval NOT NULL,
    piece_time interval DEFAULT '00:01:00'::interval NOT NULL
);


ALTER TABLE product.personnel OWNER TO postgres;

--
-- TOC entry 290 (class 1259 OID 87812)
-- Name: primal; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.primal (
    CONSTRAINT primal_material_type_check CHECK ((material_type = 'PRIMAL'::common.material_kind))
)
INHERITS (product.material);


ALTER TABLE product.primal OWNER TO postgres;

--
-- TOC entry 291 (class 1259 OID 87821)
-- Name: segment; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.segment (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    definition_id bigint NOT NULL,
    location_id character varying,
    hierarhy_scope character varying,
    duration interval,
    descr character varying,
    segment_kind common.process_segment_kind
);


ALTER TABLE product.segment OWNER TO postgres;

--
-- TOC entry 4467 (class 0 OID 0)
-- Dependencies: 291
-- Name: TABLE segment; Type: COMMENT; Schema: product; Owner: postgres
--

COMMENT ON TABLE product.segment IS 'segments to specify process';


--
-- TOC entry 292 (class 1259 OID 87828)
-- Name: segment_id_seq; Type: SEQUENCE; Schema: product; Owner: postgres
--

CREATE SEQUENCE product.segment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product.segment_id_seq OWNER TO postgres;

--
-- TOC entry 4468 (class 0 OID 0)
-- Dependencies: 292
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE product.segment_id_seq OWNED BY product.segment.id;


--
-- TOC entry 293 (class 1259 OID 87830)
-- Name: tooling; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.tooling (
    segment_id bigint NOT NULL,
    tooling_code character varying NOT NULL,
    version_num integer,
    quantity common.quantity,
    uom_code character varying
);


ALTER TABLE product.tooling OWNER TO postgres;

--
-- TOC entry 309 (class 1259 OID 93363)
-- Name: material; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE production.material (
    segment_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    quantity common.quantity,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL,
    material_type common.material_kind,
    rationing_qty integer DEFAULT 1
);


ALTER TABLE production.material OWNER TO postgres;

--
-- TOC entry 310 (class 1259 OID 93371)
-- Name: consumable; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE production.consumable (
)
INHERITS (production.material);


ALTER TABLE production.consumable OWNER TO postgres;

--
-- TOC entry 311 (class 1259 OID 93379)
-- Name: definition; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE production.definition (
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


ALTER TABLE production.definition OWNER TO postgres;

--
-- TOC entry 312 (class 1259 OID 93390)
-- Name: definition_id_seq; Type: SEQUENCE; Schema: production; Owner: postgres
--

CREATE SEQUENCE production.definition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE production.definition_id_seq OWNER TO postgres;

--
-- TOC entry 4469 (class 0 OID 0)
-- Dependencies: 312
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: production; Owner: postgres
--

ALTER SEQUENCE production.definition_id_seq OWNED BY production.definition.id;


--
-- TOC entry 313 (class 1259 OID 93392)
-- Name: dependency; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE production.dependency (
    ancestor bigint NOT NULL,
    descendant bigint NOT NULL,
    depth integer DEFAULT 1 NOT NULL
);


ALTER TABLE production.dependency OWNER TO postgres;

--
-- TOC entry 314 (class 1259 OID 93396)
-- Name: equipment; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE production.equipment (
    segment_id bigint NOT NULL,
    equipment_code character varying NOT NULL,
    version_num integer,
    quantity common.quantity,
    uom_code character varying
);


ALTER TABLE production.equipment OWNER TO postgres;

--
-- TOC entry 315 (class 1259 OID 93402)
-- Name: information; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE production.information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    published_date date DEFAULT now() NOT NULL,
    part_code character varying,
    version_num integer
);


ALTER TABLE production.information OWNER TO postgres;

--
-- TOC entry 316 (class 1259 OID 93410)
-- Name: information_id_seq; Type: SEQUENCE; Schema: production; Owner: postgres
--

CREATE SEQUENCE production.information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE production.information_id_seq OWNER TO postgres;

--
-- TOC entry 4470 (class 0 OID 0)
-- Dependencies: 316
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: production; Owner: postgres
--

ALTER SEQUENCE production.information_id_seq OWNED BY production.information.id;


--
-- TOC entry 317 (class 1259 OID 93412)
-- Name: personnel; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE production.personnel (
    segment_id bigint NOT NULL,
    personnel_code character varying NOT NULL,
    version_num integer,
    rationing_qty integer DEFAULT 1 NOT NULL,
    batch_qty integer,
    workers_qty integer DEFAULT 1 NOT NULL,
    setup_time interval DEFAULT '00:01:00'::interval NOT NULL,
    piece_time interval DEFAULT '00:01:00'::interval NOT NULL
);


ALTER TABLE production.personnel OWNER TO postgres;

--
-- TOC entry 318 (class 1259 OID 93422)
-- Name: primal; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE production.primal (
)
INHERITS (production.material);


ALTER TABLE production.primal OWNER TO postgres;

--
-- TOC entry 319 (class 1259 OID 93430)
-- Name: segment; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE production.segment (
    id bigint NOT NULL,
    definition_id bigint NOT NULL,
    operation_code character varying NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL
);


ALTER TABLE production.segment OWNER TO postgres;

--
-- TOC entry 320 (class 1259 OID 93437)
-- Name: segment_id_seq; Type: SEQUENCE; Schema: production; Owner: postgres
--

CREATE SEQUENCE production.segment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE production.segment_id_seq OWNER TO postgres;

--
-- TOC entry 4471 (class 0 OID 0)
-- Dependencies: 320
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: production; Owner: postgres
--

ALTER SEQUENCE production.segment_id_seq OWNED BY production.segment.id;


--
-- TOC entry 321 (class 1259 OID 93439)
-- Name: tooling; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE production.tooling (
    segment_id bigint NOT NULL,
    tooling_code character varying NOT NULL,
    version_num integer,
    quantity common.quantity,
    uom_code character varying
);


ALTER TABLE production.tooling OWNER TO postgres;

--
-- TOC entry 294 (class 1259 OID 87836)
-- Name: segment; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE route.segment (
    definition_id bigint NOT NULL,
    descendant_part_code character varying NOT NULL,
    descendant_version_num integer NOT NULL,
    ancestor_part_code character varying NOT NULL,
    ancestor_version_num integer NOT NULL,
    ancestor_material_type common.material_kind NOT NULL
);


ALTER TABLE route.segment OWNER TO postgres;

--
-- TOC entry 295 (class 1259 OID 87842)
-- Name: consumable; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE route.consumable (
    CONSTRAINT consumable_ancestor_material_type_check CHECK ((ancestor_material_type = 'CONSUMABLE'::common.material_kind)),
    CONSTRAINT consumable_check CHECK (((descendant_part_code)::text <> (ancestor_part_code)::text))
)
INHERITS (route.segment);


ALTER TABLE route.consumable OWNER TO postgres;

--
-- TOC entry 296 (class 1259 OID 87850)
-- Name: definition; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE route.definition (
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


ALTER TABLE route.definition OWNER TO postgres;

--
-- TOC entry 297 (class 1259 OID 87861)
-- Name: definition_id_seq; Type: SEQUENCE; Schema: route; Owner: postgres
--

CREATE SEQUENCE route.definition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE route.definition_id_seq OWNER TO postgres;

--
-- TOC entry 4472 (class 0 OID 0)
-- Dependencies: 297
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: route; Owner: postgres
--

ALTER SEQUENCE route.definition_id_seq OWNED BY route.definition.id;


--
-- TOC entry 298 (class 1259 OID 87863)
-- Name: information; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE route.information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    published_date date DEFAULT now() NOT NULL,
    part_code character varying,
    version_num integer
);


ALTER TABLE route.information OWNER TO postgres;

--
-- TOC entry 299 (class 1259 OID 87871)
-- Name: information_id_seq; Type: SEQUENCE; Schema: route; Owner: postgres
--

CREATE SEQUENCE route.information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE route.information_id_seq OWNER TO postgres;

--
-- TOC entry 4473 (class 0 OID 0)
-- Dependencies: 299
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: route; Owner: postgres
--

ALTER SEQUENCE route.information_id_seq OWNED BY route.information.id;


--
-- TOC entry 300 (class 1259 OID 87873)
-- Name: location; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE route.location (
    definition_id bigint NOT NULL,
    location_code character varying NOT NULL
);


ALTER TABLE route.location OWNER TO postgres;

--
-- TOC entry 301 (class 1259 OID 87879)
-- Name: primal; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE route.primal (
    CONSTRAINT primal_ancestor_material_type_check CHECK ((ancestor_material_type = 'PRIMAL'::common.material_kind)),
    CONSTRAINT primal_check CHECK (((descendant_part_code)::text <> (ancestor_part_code)::text))
)
INHERITS (route.segment);


ALTER TABLE route.primal OWNER TO postgres;

--
-- TOC entry 302 (class 1259 OID 87887)
-- Name: pgunit_covarage; Type: VIEW; Schema: tests; Owner: postgres
--

CREATE VIEW tests.pgunit_covarage AS
 SELECT ((('__'::text || (routines.specific_schema)::text) || '__'::text) || (routines.routine_name)::text) AS _function_to_run
   FROM information_schema.routines
  WHERE (((routines.specific_schema)::text <> ALL (ARRAY[('tests'::character varying)::text, ('pgunit'::character varying)::text, ('public'::character varying)::text, ('pg_catalog'::character varying)::text, ('information_schema'::character varying)::text])) AND ((routines.routine_name)::text !~~ 'disall%'::text))
EXCEPT
 SELECT routines.routine_name AS _function_to_run
   FROM information_schema.routines
  WHERE (((routines.specific_schema)::text = 'tests'::text) AND ((routines.routine_name)::text ~~ '\_\_%'::text))
  ORDER BY 1;


ALTER TABLE tests.pgunit_covarage OWNER TO postgres;

--
-- TOC entry 303 (class 1259 OID 87892)
-- Name: plpgsql_check_all; Type: VIEW; Schema: tests; Owner: postgres
--

CREATE VIEW tests.plpgsql_check_all AS
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


ALTER TABLE tests.plpgsql_check_all OWNER TO postgres;

--
-- TOC entry 304 (class 1259 OID 87897)
-- Name: plpgsql_check_nontriggered; Type: VIEW; Schema: tests; Owner: postgres
--

CREATE VIEW tests.plpgsql_check_nontriggered AS
 SELECT p.oid,
    p.proname,
    public.plpgsql_check_function((p.oid)::regprocedure) AS plpgsql_check_function
   FROM ((pg_namespace n
     JOIN pg_proc p ON ((p.pronamespace = n.oid)))
     JOIN pg_language l ON ((p.prolang = l.oid)))
  WHERE ((l.lanname = 'plpgsql'::name) AND (p.prorettype <> (2279)::oid));


ALTER TABLE tests.plpgsql_check_nontriggered OWNER TO postgres;

--
-- TOC entry 305 (class 1259 OID 87902)
-- Name: assignment; Type: TABLE; Schema: uom; Owner: postgres
--

CREATE TABLE uom.assignment (
    uom_role_id bigint NOT NULL,
    uom_role_code character varying(100),
    uom_role_name character varying(300)
);


ALTER TABLE uom.assignment OWNER TO postgres;

--
-- TOC entry 4474 (class 0 OID 0)
-- Dependencies: 305
-- Name: TABLE assignment; Type: COMMENT; Schema: uom; Owner: postgres
--

COMMENT ON TABLE uom.assignment IS 'uom role';


--
-- TOC entry 306 (class 1259 OID 87905)
-- Name: information; Type: TABLE; Schema: uom; Owner: postgres
--

CREATE TABLE uom.information (
    uom_code character varying(4) NOT NULL,
    uom_domain character varying(10),
    base_uom_code character varying,
    factor numeric
);


ALTER TABLE uom.information OWNER TO postgres;

--
-- TOC entry 307 (class 1259 OID 87911)
-- Name: uom_role_uom_role_id_seq; Type: SEQUENCE; Schema: uom; Owner: postgres
--

CREATE SEQUENCE uom.uom_role_uom_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE uom.uom_role_uom_role_id_seq OWNER TO postgres;

--
-- TOC entry 4475 (class 0 OID 0)
-- Dependencies: 307
-- Name: uom_role_uom_role_id_seq; Type: SEQUENCE OWNED BY; Schema: uom; Owner: postgres
--

ALTER SEQUENCE uom.uom_role_uom_role_id_seq OWNED BY uom.assignment.uom_role_id;


--
-- TOC entry 3813 (class 2604 OID 87913)
-- Name: assembly uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.assembly ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3815 (class 2604 OID 87914)
-- Name: buyable uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.buyable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3822 (class 2604 OID 87915)
-- Name: definition id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition ALTER COLUMN id SET DEFAULT nextval('ebom.definition_id_seq'::regclass);


--
-- TOC entry 3825 (class 2604 OID 87916)
-- Name: information id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information ALTER COLUMN id SET DEFAULT nextval('ebom.information_id_seq'::regclass);


--
-- TOC entry 3826 (class 2604 OID 87917)
-- Name: part uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.part ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3830 (class 2604 OID 87918)
-- Name: assembly version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.assembly ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3831 (class 2604 OID 87919)
-- Name: assembly published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.assembly ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3833 (class 2604 OID 87920)
-- Name: buyable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.buyable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3834 (class 2604 OID 87921)
-- Name: buyable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.buyable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3836 (class 2604 OID 87922)
-- Name: consumable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.consumable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3837 (class 2604 OID 87923)
-- Name: consumable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.consumable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3845 (class 2604 OID 87924)
-- Name: definition id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition ALTER COLUMN id SET DEFAULT nextval('inventory.definition_id_seq'::regclass);


--
-- TOC entry 3848 (class 2604 OID 87925)
-- Name: information id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.information ALTER COLUMN id SET DEFAULT nextval('inventory.information_id_seq'::regclass);


--
-- TOC entry 3849 (class 2604 OID 87926)
-- Name: part version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.part ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3850 (class 2604 OID 87927)
-- Name: part published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.part ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3938 (class 2604 OID 93330)
-- Name: phantom version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.phantom ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3939 (class 2604 OID 93331)
-- Name: phantom published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.phantom ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3852 (class 2604 OID 87928)
-- Name: primal version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.primal ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3853 (class 2604 OID 87929)
-- Name: primal published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.primal ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3855 (class 2604 OID 87930)
-- Name: producible version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.producible ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3856 (class 2604 OID 87931)
-- Name: producible published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.producible ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3858 (class 2604 OID 87932)
-- Name: salable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.salable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3859 (class 2604 OID 87933)
-- Name: salable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.salable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3861 (class 2604 OID 87934)
-- Name: storable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.storable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3862 (class 2604 OID 87935)
-- Name: storable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.storable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3865 (class 2604 OID 87936)
-- Name: consumable uom_code; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3872 (class 2604 OID 87937)
-- Name: definition id; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition ALTER COLUMN id SET DEFAULT nextval('mbom.definition_id_seq'::regclass);


--
-- TOC entry 3875 (class 2604 OID 87938)
-- Name: information id; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.information ALTER COLUMN id SET DEFAULT nextval('mbom.information_id_seq'::regclass);


--
-- TOC entry 3876 (class 2604 OID 87939)
-- Name: primal uom_code; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3880 (class 2604 OID 87940)
-- Name: consumable uom_code; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3881 (class 2604 OID 87941)
-- Name: consumable rationing_qty; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.consumable ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3887 (class 2604 OID 87942)
-- Name: definition id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.definition ALTER COLUMN id SET DEFAULT nextval('operation.definition_id_seq'::regclass);


--
-- TOC entry 3891 (class 2604 OID 87943)
-- Name: information id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.information ALTER COLUMN id SET DEFAULT nextval('operation.information_id_seq'::regclass);


--
-- TOC entry 3896 (class 2604 OID 87944)
-- Name: primal uom_code; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3897 (class 2604 OID 87945)
-- Name: primal rationing_qty; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.primal ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3899 (class 2604 OID 87946)
-- Name: segment id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.segment ALTER COLUMN id SET DEFAULT nextval('operation.segment_id_seq'::regclass);


--
-- TOC entry 3902 (class 2604 OID 87947)
-- Name: consumable uom_code; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3903 (class 2604 OID 87948)
-- Name: consumable rationing_qty; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.consumable ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3910 (class 2604 OID 87949)
-- Name: definition id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.definition ALTER COLUMN id SET DEFAULT nextval('product.definition_id_seq'::regclass);


--
-- TOC entry 3914 (class 2604 OID 87950)
-- Name: information id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.information ALTER COLUMN id SET DEFAULT nextval('product.information_id_seq'::regclass);


--
-- TOC entry 3919 (class 2604 OID 87951)
-- Name: primal uom_code; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3920 (class 2604 OID 87952)
-- Name: primal rationing_qty; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.primal ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3923 (class 2604 OID 87953)
-- Name: segment id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.segment ALTER COLUMN id SET DEFAULT nextval('product.segment_id_seq'::regclass);


--
-- TOC entry 3943 (class 2604 OID 93445)
-- Name: consumable uom_code; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3944 (class 2604 OID 93446)
-- Name: consumable rationing_qty; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.consumable ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3950 (class 2604 OID 93447)
-- Name: definition id; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.definition ALTER COLUMN id SET DEFAULT nextval('production.definition_id_seq'::regclass);


--
-- TOC entry 3954 (class 2604 OID 93448)
-- Name: information id; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.information ALTER COLUMN id SET DEFAULT nextval('production.information_id_seq'::regclass);


--
-- TOC entry 3959 (class 2604 OID 93449)
-- Name: primal uom_code; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3960 (class 2604 OID 93450)
-- Name: primal rationing_qty; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.primal ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3962 (class 2604 OID 93451)
-- Name: segment id; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.segment ALTER COLUMN id SET DEFAULT nextval('production.segment_id_seq'::regclass);


--
-- TOC entry 3931 (class 2604 OID 87954)
-- Name: definition id; Type: DEFAULT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.definition ALTER COLUMN id SET DEFAULT nextval('route.definition_id_seq'::regclass);


--
-- TOC entry 3934 (class 2604 OID 87955)
-- Name: information id; Type: DEFAULT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.information ALTER COLUMN id SET DEFAULT nextval('route.information_id_seq'::regclass);


--
-- TOC entry 3937 (class 2604 OID 87956)
-- Name: assignment uom_role_id; Type: DEFAULT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.assignment ALTER COLUMN uom_role_id SET DEFAULT nextval('uom.uom_role_uom_role_id_seq'::regclass);


--
-- TOC entry 4335 (class 0 OID 87435)
-- Dependencies: 232
-- Data for Name: ebom_to_mbom; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4336 (class 0 OID 87438)
-- Dependencies: 233
-- Data for Name: ebom_to_product; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4422 (class 0 OID 93538)
-- Dependencies: 322
-- Data for Name: ebom_to_production; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4423 (class 0 OID 93543)
-- Dependencies: 323
-- Data for Name: ebom_to_route; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4337 (class 0 OID 87444)
-- Dependencies: 234
-- Data for Name: mbom_to_operation; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4338 (class 0 OID 87447)
-- Dependencies: 235
-- Data for Name: mbom_to_product; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4424 (class 0 OID 93548)
-- Dependencies: 324
-- Data for Name: mbom_to_production; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4339 (class 0 OID 87450)
-- Dependencies: 236
-- Data for Name: operation_to_product; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4340 (class 0 OID 87453)
-- Dependencies: 237
-- Data for Name: route_to_mbom; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4341 (class 0 OID 87456)
-- Dependencies: 238
-- Data for Name: route_to_operation; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4343 (class 0 OID 87466)
-- Dependencies: 240
-- Data for Name: assembly; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO ebom.assembly VALUES (1, '80.31.050-001', 1, 1.0000, 'pcs', 'ASSEMBLY');
INSERT INTO ebom.assembly VALUES (1, '82.31.050-001', 1, 1.0000, 'pcs', 'ASSEMBLY');


--
-- TOC entry 4344 (class 0 OID 87474)
-- Dependencies: 241
-- Data for Name: buyable; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO ebom.buyable VALUES (1, '72.01.009-001', 1, 2.0000, 'pcs', 'BUYABLE');
INSERT INTO ebom.buyable VALUES (1, '00.00.000-001', 1, 1.0000, 'pcs', 'BUYABLE');


--
-- TOC entry 4342 (class 0 OID 87459)
-- Dependencies: 239
-- Data for Name: component; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 4345 (class 0 OID 87482)
-- Dependencies: 242
-- Data for Name: definition; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO ebom.definition VALUES (1, '914ca938-5c77-11e8-adfb-d4bed939923a', '11-32-50: definition', 1, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 1);
INSERT INTO ebom.definition VALUES (2, '914d3d44-5c77-11e8-adfd-d4bed939923a', '80-31-50: definition', 1, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 2);
INSERT INTO ebom.definition VALUES (3, '914d5450-5c77-11e8-adff-d4bed939923a', '82-31-50: definition', 1, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 3);


--
-- TOC entry 4476 (class 0 OID 0)
-- Dependencies: 243
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: ebom; Owner: postgres
--

SELECT pg_catalog.setval('ebom.definition_id_seq', 3, true);


--
-- TOC entry 4347 (class 0 OID 87495)
-- Dependencies: 244
-- Data for Name: information; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO ebom.information VALUES (1, '914c9524-5c77-11e8-adfa-d4bed939923a', '11.32.050-001', 1, '11-32-50: definition', '2018-05-21');
INSERT INTO ebom.information VALUES (2, '914d374a-5c77-11e8-adfc-d4bed939923a', '80.31.050-001', 1, '80-31-50: definition', '2018-05-21');
INSERT INTO ebom.information VALUES (3, '914d5004-5c77-11e8-adfe-d4bed939923a', '82.31.050-001', 1, '82-31-50: definition', '2018-05-21');


--
-- TOC entry 4477 (class 0 OID 0)
-- Dependencies: 245
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: ebom; Owner: postgres
--

SELECT pg_catalog.setval('ebom.information_id_seq', 3, true);


--
-- TOC entry 4349 (class 0 OID 87505)
-- Dependencies: 246
-- Data for Name: part; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO ebom.part VALUES (1, '22.25.050-001', 1, 2.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (1, '40.32.050-001', 1, 2.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (1, '50.01.050-001', 1, 2.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (1, '51.01.050-001', 1, 2.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (1, '52.01.050-001', 1, 2.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (1, '53.01.004-001', 1, 1.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (1, '60.01.050-001', 1, 1.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (1, '61.01.050-001', 1, 1.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (1, '70.01.050-001', 1, 2.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (1, '70.04.020-001', 1, 1.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (2, '41.31.050-001', 1, 1.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (2, '42.01.050-001', 1, 1.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (3, '42.02.022-001', 1, 1.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (3, '55.31.050-001', 1, 1.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (3, '71.01.020-001', 1, 1.0000, 'pcs', 'PART');


--
-- TOC entry 4351 (class 0 OID 87521)
-- Dependencies: 248
-- Data for Name: assembly; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.assembly VALUES ('80.31.050-001', 1, '80-31-050', '2018-05-01', 'ASSEMBLY', 'pcs', 1);
INSERT INTO inventory.assembly VALUES ('82.31.050-001', 1, '82-31-050', '2018-05-01', 'ASSEMBLY', 'pcs', 2);
INSERT INTO inventory.assembly VALUES ('11.32.050-001', 1, '11-32-050', '2018-05-01', 'ASSEMBLY', 'pcs', 18);


--
-- TOC entry 4352 (class 0 OID 87530)
-- Dependencies: 249
-- Data for Name: buyable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.buyable VALUES ('72.01.009-001', 1, '72-01-009', '2018-05-01', 'BUYABLE', 'pcs', 19);
INSERT INTO inventory.buyable VALUES ('00.00.000-001', 1, 'Гайка M12', '2018-05-01', 'BUYABLE', 'pcs', 20);
INSERT INTO inventory.buyable VALUES ('Крг-022-ст20', 1, 'Крг-ст20-022', '2018-05-01', 'BUYABLE', 'pcs', 21);
INSERT INTO inventory.buyable VALUES ('Крг-016-ст20Х13', 1, 'Крг-ст20Х13-016', '2018-05-01', 'BUYABLE', 'pcs', 22);
INSERT INTO inventory.buyable VALUES ('Крг-004,0-ст45', 1, 'Крг-ст45-004,0', '2018-05-01', 'BUYABLE', 'pcs', 23);
INSERT INTO inventory.buyable VALUES ('Лст-003,0-ст3', 1, 'Лст-ст3-003,0', '2018-05-01', 'BUYABLE', 'pcs', 24);
INSERT INTO inventory.buyable VALUES ('Лст-001,2-ст65Г', 1, 'Лст-ст65Г-001,2', '2018-05-01', 'BUYABLE', 'pcs', 25);
INSERT INTO inventory.buyable VALUES ('Лст-001,0-ст20Х17', 1, 'Лст-ст20Х17-001,0', '2018-05-01', 'BUYABLE', 'pcs', 26);
INSERT INTO inventory.buyable VALUES ('Плс-020х4-ст3', 1, 'Плс-ст3-020х4', '2018-05-01', 'BUYABLE', 'pcs', 27);
INSERT INTO inventory.buyable VALUES ('Трб-057,0х03,5-ст20-Ш', 1, 'Трб-ст20-057,0х03,5-Ш', '2018-05-01', 'BUYABLE', 'pcs', 28);
INSERT INTO inventory.buyable VALUES ('Трб-089,0х03,5-ст20-Ш', 1, 'Трб-ст20-089,0х03,5-Ш', '2018-05-01', 'BUYABLE', 'pcs', 29);
INSERT INTO inventory.buyable VALUES ('Трб-089,0х03,0-ст20-Ш', 1, 'Трб-ст20-089,0х03,0-Ш', '2018-05-01', 'BUYABLE', 'pcs', 30);
INSERT INTO inventory.buyable VALUES ('Трб-068,0х04,0-ст20Х13', 1, 'Трб-ст20Х13-068,0х04,0', '2018-05-01', 'BUYABLE', 'pcs', 31);
INSERT INTO inventory.buyable VALUES ('Квд-080х080-ст3ПС', 1, 'Квд-ст3ПС-080х080', '2018-05-01', 'BUYABLE', 'pcs', 32);
INSERT INTO inventory.buyable VALUES ('ПЕ-15803-020', 1, 'ПЕ-15803-020', '2018-05-01', 'BUYABLE', 'pcs', 33);
INSERT INTO inventory.buyable VALUES ('Ф-4', 1, 'Ф-4', '2018-05-01', 'BUYABLE', 'pcs', 34);
INSERT INTO inventory.buyable VALUES ('Лст-000,8-ст20Х17', 1, 'Лст-ст20Х17-000,8', '2018-05-01', 'BUYABLE', 'pcs', 35);
INSERT INTO inventory.buyable VALUES ('Лст-004,4-ст20Х17', 1, 'Лст-ст20Х17-004,4', '2018-05-01', 'BUYABLE', 'pcs', 36);
INSERT INTO inventory.buyable VALUES ('Трб-068,0х03,5-ст20Х13', 1, 'Трб-ст20Х13-068,0х03,5', '2018-05-01', 'BUYABLE', 'pcs', 37);


--
-- TOC entry 4350 (class 0 OID 87513)
-- Dependencies: 247
-- Data for Name: conglomeration; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4353 (class 0 OID 87539)
-- Dependencies: 250
-- Data for Name: consumable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.consumable VALUES ('80.31.050-001', 1, '80-31-050', '2018-05-01', 'CONSUMABLE', 'pcs', 1);
INSERT INTO inventory.consumable VALUES ('82.31.050-001', 1, '82-31-050', '2018-05-01', 'CONSUMABLE', 'pcs', 2);
INSERT INTO inventory.consumable VALUES ('22.25.050-001', 1, '22-25-050', '2018-05-01', 'CONSUMABLE', 'pcs', 3);
INSERT INTO inventory.consumable VALUES ('40.32.050-001', 1, '40-32-050', '2018-05-01', 'CONSUMABLE', 'pcs', 4);
INSERT INTO inventory.consumable VALUES ('50.01.050-001', 1, '50-01-050', '2018-05-01', 'CONSUMABLE', 'pcs', 5);
INSERT INTO inventory.consumable VALUES ('51.01.050-001', 1, '51-01-050', '2018-05-01', 'CONSUMABLE', 'pcs', 6);
INSERT INTO inventory.consumable VALUES ('52.01.050-001', 1, '52-01-050', '2018-05-01', 'CONSUMABLE', 'pcs', 7);
INSERT INTO inventory.consumable VALUES ('53.01.004-001', 1, '53-01-004', '2018-05-01', 'CONSUMABLE', 'pcs', 8);
INSERT INTO inventory.consumable VALUES ('60.01.050-001', 1, '60-01-050', '2018-05-01', 'CONSUMABLE', 'pcs', 9);
INSERT INTO inventory.consumable VALUES ('61.01.050-001', 1, '61-01-050', '2018-05-01', 'CONSUMABLE', 'pcs', 10);
INSERT INTO inventory.consumable VALUES ('70.01.050-001', 1, '70-01-050', '2018-05-01', 'CONSUMABLE', 'pcs', 11);
INSERT INTO inventory.consumable VALUES ('70.04.020-001', 1, '70-04-020', '2018-05-01', 'CONSUMABLE', 'pcs', 12);
INSERT INTO inventory.consumable VALUES ('41.31.050-001', 1, '41-31-050', '2018-05-01', 'CONSUMABLE', 'pcs', 13);
INSERT INTO inventory.consumable VALUES ('42.01.050-001', 1, '42-01-050', '2018-05-01', 'CONSUMABLE', 'pcs', 14);
INSERT INTO inventory.consumable VALUES ('42.02.022-001', 1, '42-02-022', '2018-05-01', 'CONSUMABLE', 'pcs', 15);
INSERT INTO inventory.consumable VALUES ('55.31.050-001', 1, '55-31-050', '2018-05-01', 'CONSUMABLE', 'pcs', 16);
INSERT INTO inventory.consumable VALUES ('71.01.020-001', 1, '71-01-020', '2018-05-01', 'CONSUMABLE', 'pcs', 17);


--
-- TOC entry 4354 (class 0 OID 87548)
-- Dependencies: 251
-- Data for Name: definition; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.definition VALUES (1, '9147b482-5c77-11e8-adb1-d4bed939923a', '80-31-050', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 1, 'pcs');
INSERT INTO inventory.definition VALUES (2, '9148d1b4-5c77-11e8-adb3-d4bed939923a', '82-31-050', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 2, 'pcs');
INSERT INTO inventory.definition VALUES (3, '91492a1a-5c77-11e8-adb5-d4bed939923a', '22-25-050', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 3, 'pcs');
INSERT INTO inventory.definition VALUES (4, '91497f6a-5c77-11e8-adb7-d4bed939923a', '40-32-050', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 4, 'pcs');
INSERT INTO inventory.definition VALUES (5, '9149aa62-5c77-11e8-adb9-d4bed939923a', '50-01-050', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 5, 'pcs');
INSERT INTO inventory.definition VALUES (6, '9149d442-5c77-11e8-adbb-d4bed939923a', '51-01-050', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 6, 'pcs');
INSERT INTO inventory.definition VALUES (7, '9149f832-5c77-11e8-adbd-d4bed939923a', '52-01-050', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 7, 'pcs');
INSERT INTO inventory.definition VALUES (8, '914a0d9a-5c77-11e8-adbf-d4bed939923a', '53-01-004', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 8, 'pcs');
INSERT INTO inventory.definition VALUES (9, '914a2258-5c77-11e8-adc1-d4bed939923a', '60-01-050', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 9, 'pcs');
INSERT INTO inventory.definition VALUES (10, '914a35cc-5c77-11e8-adc3-d4bed939923a', '61-01-050', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 10, 'pcs');
INSERT INTO inventory.definition VALUES (11, '914a45ee-5c77-11e8-adc5-d4bed939923a', '70-01-050', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 11, 'pcs');
INSERT INTO inventory.definition VALUES (12, '914a5764-5c77-11e8-adc7-d4bed939923a', '70-04-020', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 12, 'pcs');
INSERT INTO inventory.definition VALUES (13, '914a6a06-5c77-11e8-adc9-d4bed939923a', '41-31-050', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 13, 'pcs');
INSERT INTO inventory.definition VALUES (14, '914a7ad2-5c77-11e8-adcb-d4bed939923a', '42-01-050', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 14, 'pcs');
INSERT INTO inventory.definition VALUES (15, '914a8c52-5c77-11e8-adcd-d4bed939923a', '42-02-022', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 15, 'pcs');
INSERT INTO inventory.definition VALUES (16, '914a9c24-5c77-11e8-adcf-d4bed939923a', '55-31-050', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 16, 'pcs');
INSERT INTO inventory.definition VALUES (17, '914aae08-5c77-11e8-add1-d4bed939923a', '71-01-020', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 17, 'pcs');
INSERT INTO inventory.definition VALUES (18, '914abf2e-5c77-11e8-add3-d4bed939923a', '11-32-050', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 18, 'pcs');
INSERT INTO inventory.definition VALUES (19, '914ae026-5c77-11e8-add5-d4bed939923a', '72-01-009', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 19, 'pcs');
INSERT INTO inventory.definition VALUES (20, '914b0722-5c77-11e8-add7-d4bed939923a', 'Гайка M12', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 20, 'pcs');
INSERT INTO inventory.definition VALUES (21, '914b20fe-5c77-11e8-add9-d4bed939923a', 'Крг-ст20-022', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 21, 'pcs');
INSERT INTO inventory.definition VALUES (22, '914b38b4-5c77-11e8-addb-d4bed939923a', 'Крг-ст20Х13-016', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 22, 'pcs');
INSERT INTO inventory.definition VALUES (23, '914b4f98-5c77-11e8-addd-d4bed939923a', 'Крг-ст45-004,0', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 23, 'pcs');
INSERT INTO inventory.definition VALUES (24, '914b65f0-5c77-11e8-addf-d4bed939923a', 'Лст-ст3-003,0', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 24, 'pcs');
INSERT INTO inventory.definition VALUES (25, '914b7ac2-5c77-11e8-ade1-d4bed939923a', 'Лст-ст65Г-001,2', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 25, 'pcs');
INSERT INTO inventory.definition VALUES (26, '914b8c74-5c77-11e8-ade3-d4bed939923a', 'Лст-ст20Х17-001,0', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 26, 'pcs');
INSERT INTO inventory.definition VALUES (27, '914b9d7c-5c77-11e8-ade5-d4bed939923a', 'Плс-ст3-020х4', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 27, 'pcs');
INSERT INTO inventory.definition VALUES (28, '914badd0-5c77-11e8-ade7-d4bed939923a', 'Трб-ст20-057,0х03,5-Ш', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 28, 'pcs');
INSERT INTO inventory.definition VALUES (29, '914bc036-5c77-11e8-ade9-d4bed939923a', 'Трб-ст20-089,0х03,5-Ш', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 29, 'pcs');
INSERT INTO inventory.definition VALUES (30, '914bd260-5c77-11e8-adeb-d4bed939923a', 'Трб-ст20-089,0х03,0-Ш', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 30, 'pcs');
INSERT INTO inventory.definition VALUES (31, '914be480-5c77-11e8-aded-d4bed939923a', 'Трб-ст20Х13-068,0х04,0', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 31, 'pcs');
INSERT INTO inventory.definition VALUES (32, '914bf5ce-5c77-11e8-adef-d4bed939923a', 'Квд-ст3ПС-080х080', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 32, 'pcs');
INSERT INTO inventory.definition VALUES (33, '914c0618-5c77-11e8-adf1-d4bed939923a', 'ПЕ-15803-020', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 33, 'pcs');
INSERT INTO inventory.definition VALUES (34, '914c164e-5c77-11e8-adf3-d4bed939923a', 'Ф-4', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 34, 'pcs');
INSERT INTO inventory.definition VALUES (35, '914c267a-5c77-11e8-adf5-d4bed939923a', 'Лст-ст20Х17-000,8', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 35, 'pcs');
INSERT INTO inventory.definition VALUES (36, '914c3728-5c77-11e8-adf7-d4bed939923a', 'Лст-ст20Х17-004,4', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 36, 'pcs');
INSERT INTO inventory.definition VALUES (37, '914c483a-5c77-11e8-adf9-d4bed939923a', 'Трб-ст20Х13-068,0х03,5', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 37, 'pcs');


--
-- TOC entry 4478 (class 0 OID 0)
-- Dependencies: 252
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.definition_id_seq', 39, true);


--
-- TOC entry 4356 (class 0 OID 87562)
-- Dependencies: 253
-- Data for Name: information; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.information VALUES (1, '91479ccc-5c77-11e8-adb0-d4bed939923a', '80.31.050-001', '80-31-050', '2018-05-01');
INSERT INTO inventory.information VALUES (2, '9148ccf0-5c77-11e8-adb2-d4bed939923a', '82.31.050-001', '82-31-050', '2018-05-01');
INSERT INTO inventory.information VALUES (3, '914925ba-5c77-11e8-adb4-d4bed939923a', '22.25.050-001', '22-25-050', '2018-05-01');
INSERT INTO inventory.information VALUES (4, '91497c22-5c77-11e8-adb6-d4bed939923a', '40.32.050-001', '40-32-050', '2018-05-01');
INSERT INTO inventory.information VALUES (5, '9149a7f6-5c77-11e8-adb8-d4bed939923a', '50.01.050-001', '50-01-050', '2018-05-01');
INSERT INTO inventory.information VALUES (6, '9149d212-5c77-11e8-adba-d4bed939923a', '51.01.050-001', '51-01-050', '2018-05-01');
INSERT INTO inventory.information VALUES (7, '9149f6de-5c77-11e8-adbc-d4bed939923a', '52.01.050-001', '52-01-050', '2018-05-01');
INSERT INTO inventory.information VALUES (8, '914a0c46-5c77-11e8-adbe-d4bed939923a', '53.01.004-001', '53-01-004', '2018-05-01');
INSERT INTO inventory.information VALUES (9, '914a210e-5c77-11e8-adc0-d4bed939923a', '60.01.050-001', '60-01-050', '2018-05-01');
INSERT INTO inventory.information VALUES (10, '914a3414-5c77-11e8-adc2-d4bed939923a', '61.01.050-001', '61-01-050', '2018-05-01');
INSERT INTO inventory.information VALUES (11, '914a44cc-5c77-11e8-adc4-d4bed939923a', '70.01.050-001', '70-01-050', '2018-05-01');
INSERT INTO inventory.information VALUES (12, '914a5642-5c77-11e8-adc6-d4bed939923a', '70.04.020-001', '70-04-020', '2018-05-01');
INSERT INTO inventory.information VALUES (13, '914a68e4-5c77-11e8-adc8-d4bed939923a', '41.31.050-001', '41-31-050', '2018-05-01');
INSERT INTO inventory.information VALUES (14, '914a796a-5c77-11e8-adca-d4bed939923a', '42.01.050-001', '42-01-050', '2018-05-01');
INSERT INTO inventory.information VALUES (15, '914a8b30-5c77-11e8-adcc-d4bed939923a', '42.02.022-001', '42-02-022', '2018-05-01');
INSERT INTO inventory.information VALUES (16, '914a9b02-5c77-11e8-adce-d4bed939923a', '55.31.050-001', '55-31-050', '2018-05-01');
INSERT INTO inventory.information VALUES (17, '914aac82-5c77-11e8-add0-d4bed939923a', '71.01.020-001', '71-01-020', '2018-05-01');
INSERT INTO inventory.information VALUES (18, '914abe0c-5c77-11e8-add2-d4bed939923a', '11.32.050-001', '11-32-050', '2018-05-01');
INSERT INTO inventory.information VALUES (19, '914adef0-5c77-11e8-add4-d4bed939923a', '72.01.009-001', '72-01-009', '2018-05-01');
INSERT INTO inventory.information VALUES (20, '914b05ec-5c77-11e8-add6-d4bed939923a', '00.00.000-001', 'Гайка M12', '2018-05-01');
INSERT INTO inventory.information VALUES (21, '914b1fbe-5c77-11e8-add8-d4bed939923a', 'Крг-022-ст20', 'Крг-ст20-022', '2018-05-01');
INSERT INTO inventory.information VALUES (22, '914b3738-5c77-11e8-adda-d4bed939923a', 'Крг-016-ст20Х13', 'Крг-ст20Х13-016', '2018-05-01');
INSERT INTO inventory.information VALUES (23, '914b4e4e-5c77-11e8-addc-d4bed939923a', 'Крг-004,0-ст45', 'Крг-ст45-004,0', '2018-05-01');
INSERT INTO inventory.information VALUES (24, '914b64a6-5c77-11e8-adde-d4bed939923a', 'Лст-003,0-ст3', 'Лст-ст3-003,0', '2018-05-01');
INSERT INTO inventory.information VALUES (25, '914b796e-5c77-11e8-ade0-d4bed939923a', 'Лст-001,2-ст65Г', 'Лст-ст65Г-001,2', '2018-05-01');
INSERT INTO inventory.information VALUES (26, '914b8ad0-5c77-11e8-ade2-d4bed939923a', 'Лст-001,0-ст20Х17', 'Лст-ст20Х17-001,0', '2018-05-01');
INSERT INTO inventory.information VALUES (27, '914b9c0a-5c77-11e8-ade4-d4bed939923a', 'Плс-020х4-ст3', 'Плс-ст3-020х4', '2018-05-01');
INSERT INTO inventory.information VALUES (28, '914bac90-5c77-11e8-ade6-d4bed939923a', 'Трб-057,0х03,5-ст20-Ш', 'Трб-ст20-057,0х03,5-Ш', '2018-05-01');
INSERT INTO inventory.information VALUES (29, '914bbf0a-5c77-11e8-ade8-d4bed939923a', 'Трб-089,0х03,5-ст20-Ш', 'Трб-ст20-089,0х03,5-Ш', '2018-05-01');
INSERT INTO inventory.information VALUES (30, '914bd116-5c77-11e8-adea-d4bed939923a', 'Трб-089,0х03,0-ст20-Ш', 'Трб-ст20-089,0х03,0-Ш', '2018-05-01');
INSERT INTO inventory.information VALUES (31, '914be336-5c77-11e8-adec-d4bed939923a', 'Трб-068,0х04,0-ст20Х13', 'Трб-ст20Х13-068,0х04,0', '2018-05-01');
INSERT INTO inventory.information VALUES (32, '914bf484-5c77-11e8-adee-d4bed939923a', 'Квд-080х080-ст3ПС', 'Квд-ст3ПС-080х080', '2018-05-01');
INSERT INTO inventory.information VALUES (33, '914c04ce-5c77-11e8-adf0-d4bed939923a', 'ПЕ-15803-020', 'ПЕ-15803-020', '2018-05-01');
INSERT INTO inventory.information VALUES (34, '914c14f0-5c77-11e8-adf2-d4bed939923a', 'Ф-4', 'Ф-4', '2018-05-01');
INSERT INTO inventory.information VALUES (35, '914c253a-5c77-11e8-adf4-d4bed939923a', 'Лст-000,8-ст20Х17', 'Лст-ст20Х17-000,8', '2018-05-01');
INSERT INTO inventory.information VALUES (36, '914c35e8-5c77-11e8-adf6-d4bed939923a', 'Лст-004,4-ст20Х17', 'Лст-ст20Х17-004,4', '2018-05-01');
INSERT INTO inventory.information VALUES (37, '914c46fa-5c77-11e8-adf8-d4bed939923a', 'Трб-068,0х03,5-ст20Х13', 'Трб-ст20Х13-068,0х03,5', '2018-05-01');


--
-- TOC entry 4479 (class 0 OID 0)
-- Dependencies: 254
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.information_id_seq', 39, true);


--
-- TOC entry 4358 (class 0 OID 87572)
-- Dependencies: 255
-- Data for Name: measurement; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.measurement VALUES (1, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (2, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (3, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (4, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (5, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (6, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (7, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (8, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (9, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (10, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (11, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (12, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (13, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (14, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (15, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (16, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (17, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (18, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (19, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (20, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (21, 'm', 1);
INSERT INTO inventory.measurement VALUES (21, 'kg', 2);
INSERT INTO inventory.measurement VALUES (22, 'm', 1);
INSERT INTO inventory.measurement VALUES (22, 'kg', 2);
INSERT INTO inventory.measurement VALUES (23, 'm', 1);
INSERT INTO inventory.measurement VALUES (23, 'kg', 2);
INSERT INTO inventory.measurement VALUES (24, 'kg', 2);
INSERT INTO inventory.measurement VALUES (25, 'kg', 2);
INSERT INTO inventory.measurement VALUES (26, 'kg', 2);
INSERT INTO inventory.measurement VALUES (27, 'kg', 2);
INSERT INTO inventory.measurement VALUES (28, 'm', 1);
INSERT INTO inventory.measurement VALUES (28, 'kg', 2);
INSERT INTO inventory.measurement VALUES (29, 'm', 1);
INSERT INTO inventory.measurement VALUES (29, 'kg', 2);
INSERT INTO inventory.measurement VALUES (30, 'm', 1);
INSERT INTO inventory.measurement VALUES (30, 'kg', 2);
INSERT INTO inventory.measurement VALUES (31, 'm', 1);
INSERT INTO inventory.measurement VALUES (31, 'kg', 2);
INSERT INTO inventory.measurement VALUES (32, 'kg', 2);
INSERT INTO inventory.measurement VALUES (33, 'kg', 2);
INSERT INTO inventory.measurement VALUES (34, 'kg', 2);
INSERT INTO inventory.measurement VALUES (35, 'kg', 2);
INSERT INTO inventory.measurement VALUES (36, 'kg', 2);
INSERT INTO inventory.measurement VALUES (37, 'm', 1);
INSERT INTO inventory.measurement VALUES (37, 'kg', 2);


--
-- TOC entry 4359 (class 0 OID 87578)
-- Dependencies: 256
-- Data for Name: part; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.part VALUES ('22.25.050-001', 1, '22-25-050', '2018-05-01', 'PART', 'pcs', 3);
INSERT INTO inventory.part VALUES ('40.32.050-001', 1, '40-32-050', '2018-05-01', 'PART', 'pcs', 4);
INSERT INTO inventory.part VALUES ('50.01.050-001', 1, '50-01-050', '2018-05-01', 'PART', 'pcs', 5);
INSERT INTO inventory.part VALUES ('51.01.050-001', 1, '51-01-050', '2018-05-01', 'PART', 'pcs', 6);
INSERT INTO inventory.part VALUES ('52.01.050-001', 1, '52-01-050', '2018-05-01', 'PART', 'pcs', 7);
INSERT INTO inventory.part VALUES ('53.01.004-001', 1, '53-01-004', '2018-05-01', 'PART', 'pcs', 8);
INSERT INTO inventory.part VALUES ('60.01.050-001', 1, '60-01-050', '2018-05-01', 'PART', 'pcs', 9);
INSERT INTO inventory.part VALUES ('61.01.050-001', 1, '61-01-050', '2018-05-01', 'PART', 'pcs', 10);
INSERT INTO inventory.part VALUES ('70.01.050-001', 1, '70-01-050', '2018-05-01', 'PART', 'pcs', 11);
INSERT INTO inventory.part VALUES ('70.04.020-001', 1, '70-04-020', '2018-05-01', 'PART', 'pcs', 12);
INSERT INTO inventory.part VALUES ('41.31.050-001', 1, '41-31-050', '2018-05-01', 'PART', 'pcs', 13);
INSERT INTO inventory.part VALUES ('42.01.050-001', 1, '42-01-050', '2018-05-01', 'PART', 'pcs', 14);
INSERT INTO inventory.part VALUES ('42.02.022-001', 1, '42-02-022', '2018-05-01', 'PART', 'pcs', 15);
INSERT INTO inventory.part VALUES ('55.31.050-001', 1, '55-31-050', '2018-05-01', 'PART', 'pcs', 16);
INSERT INTO inventory.part VALUES ('71.01.020-001', 1, '71-01-020', '2018-05-01', 'PART', 'pcs', 17);


--
-- TOC entry 4408 (class 0 OID 93327)
-- Dependencies: 308
-- Data for Name: phantom; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4360 (class 0 OID 87587)
-- Dependencies: 257
-- Data for Name: primal; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.primal VALUES ('72.01.009-001', 1, '72-01-009', '2018-05-01', 'PRIMAL', 'pcs', 19);
INSERT INTO inventory.primal VALUES ('00.00.000-001', 1, 'Гайка M12', '2018-05-01', 'PRIMAL', 'pcs', 20);
INSERT INTO inventory.primal VALUES ('Крг-022-ст20', 1, 'Крг-ст20-022', '2018-05-01', 'PRIMAL', 'pcs', 21);
INSERT INTO inventory.primal VALUES ('Крг-016-ст20Х13', 1, 'Крг-ст20Х13-016', '2018-05-01', 'PRIMAL', 'pcs', 22);
INSERT INTO inventory.primal VALUES ('Крг-004,0-ст45', 1, 'Крг-ст45-004,0', '2018-05-01', 'PRIMAL', 'pcs', 23);
INSERT INTO inventory.primal VALUES ('Лст-003,0-ст3', 1, 'Лст-ст3-003,0', '2018-05-01', 'PRIMAL', 'pcs', 24);
INSERT INTO inventory.primal VALUES ('Лст-001,2-ст65Г', 1, 'Лст-ст65Г-001,2', '2018-05-01', 'PRIMAL', 'pcs', 25);
INSERT INTO inventory.primal VALUES ('Лст-001,0-ст20Х17', 1, 'Лст-ст20Х17-001,0', '2018-05-01', 'PRIMAL', 'pcs', 26);
INSERT INTO inventory.primal VALUES ('Плс-020х4-ст3', 1, 'Плс-ст3-020х4', '2018-05-01', 'PRIMAL', 'pcs', 27);
INSERT INTO inventory.primal VALUES ('Трб-057,0х03,5-ст20-Ш', 1, 'Трб-ст20-057,0х03,5-Ш', '2018-05-01', 'PRIMAL', 'pcs', 28);
INSERT INTO inventory.primal VALUES ('Трб-089,0х03,5-ст20-Ш', 1, 'Трб-ст20-089,0х03,5-Ш', '2018-05-01', 'PRIMAL', 'pcs', 29);
INSERT INTO inventory.primal VALUES ('Трб-089,0х03,0-ст20-Ш', 1, 'Трб-ст20-089,0х03,0-Ш', '2018-05-01', 'PRIMAL', 'pcs', 30);
INSERT INTO inventory.primal VALUES ('Трб-068,0х04,0-ст20Х13', 1, 'Трб-ст20Х13-068,0х04,0', '2018-05-01', 'PRIMAL', 'pcs', 31);
INSERT INTO inventory.primal VALUES ('Квд-080х080-ст3ПС', 1, 'Квд-ст3ПС-080х080', '2018-05-01', 'PRIMAL', 'pcs', 32);
INSERT INTO inventory.primal VALUES ('ПЕ-15803-020', 1, 'ПЕ-15803-020', '2018-05-01', 'PRIMAL', 'pcs', 33);
INSERT INTO inventory.primal VALUES ('Ф-4', 1, 'Ф-4', '2018-05-01', 'PRIMAL', 'pcs', 34);
INSERT INTO inventory.primal VALUES ('Лст-000,8-ст20Х17', 1, 'Лст-ст20Х17-000,8', '2018-05-01', 'PRIMAL', 'pcs', 35);
INSERT INTO inventory.primal VALUES ('Лст-004,4-ст20Х17', 1, 'Лст-ст20Х17-004,4', '2018-05-01', 'PRIMAL', 'pcs', 36);
INSERT INTO inventory.primal VALUES ('Трб-068,0х03,5-ст20Х13', 1, 'Трб-ст20Х13-068,0х03,5', '2018-05-01', 'PRIMAL', 'pcs', 37);


--
-- TOC entry 4361 (class 0 OID 87596)
-- Dependencies: 258
-- Data for Name: producible; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.producible VALUES ('80.31.050-001', 1, '80-31-050', '2018-05-01', 'PRODUCIBLE', 'pcs', 1);
INSERT INTO inventory.producible VALUES ('82.31.050-001', 1, '82-31-050', '2018-05-01', 'PRODUCIBLE', 'pcs', 2);
INSERT INTO inventory.producible VALUES ('22.25.050-001', 1, '22-25-050', '2018-05-01', 'PRODUCIBLE', 'pcs', 3);
INSERT INTO inventory.producible VALUES ('40.32.050-001', 1, '40-32-050', '2018-05-01', 'PRODUCIBLE', 'pcs', 4);
INSERT INTO inventory.producible VALUES ('50.01.050-001', 1, '50-01-050', '2018-05-01', 'PRODUCIBLE', 'pcs', 5);
INSERT INTO inventory.producible VALUES ('51.01.050-001', 1, '51-01-050', '2018-05-01', 'PRODUCIBLE', 'pcs', 6);
INSERT INTO inventory.producible VALUES ('52.01.050-001', 1, '52-01-050', '2018-05-01', 'PRODUCIBLE', 'pcs', 7);
INSERT INTO inventory.producible VALUES ('53.01.004-001', 1, '53-01-004', '2018-05-01', 'PRODUCIBLE', 'pcs', 8);
INSERT INTO inventory.producible VALUES ('60.01.050-001', 1, '60-01-050', '2018-05-01', 'PRODUCIBLE', 'pcs', 9);
INSERT INTO inventory.producible VALUES ('61.01.050-001', 1, '61-01-050', '2018-05-01', 'PRODUCIBLE', 'pcs', 10);
INSERT INTO inventory.producible VALUES ('70.01.050-001', 1, '70-01-050', '2018-05-01', 'PRODUCIBLE', 'pcs', 11);
INSERT INTO inventory.producible VALUES ('70.04.020-001', 1, '70-04-020', '2018-05-01', 'PRODUCIBLE', 'pcs', 12);
INSERT INTO inventory.producible VALUES ('41.31.050-001', 1, '41-31-050', '2018-05-01', 'PRODUCIBLE', 'pcs', 13);
INSERT INTO inventory.producible VALUES ('42.01.050-001', 1, '42-01-050', '2018-05-01', 'PRODUCIBLE', 'pcs', 14);
INSERT INTO inventory.producible VALUES ('42.02.022-001', 1, '42-02-022', '2018-05-01', 'PRODUCIBLE', 'pcs', 15);
INSERT INTO inventory.producible VALUES ('55.31.050-001', 1, '55-31-050', '2018-05-01', 'PRODUCIBLE', 'pcs', 16);
INSERT INTO inventory.producible VALUES ('71.01.020-001', 1, '71-01-020', '2018-05-01', 'PRODUCIBLE', 'pcs', 17);
INSERT INTO inventory.producible VALUES ('11.32.050-001', 1, '11-32-050', '2018-05-01', 'PRODUCIBLE', 'pcs', 18);


--
-- TOC entry 4362 (class 0 OID 87605)
-- Dependencies: 259
-- Data for Name: salable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.salable VALUES ('11.32.050-001', 1, '11-32-050', '2018-05-01', 'SALABLE', 'pcs', 18);


--
-- TOC entry 4363 (class 0 OID 87614)
-- Dependencies: 260
-- Data for Name: storable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.storable VALUES ('80.31.050-001', 1, '80-31-050', '2018-05-01', 'STORABLE', 'pcs', 1);
INSERT INTO inventory.storable VALUES ('82.31.050-001', 1, '82-31-050', '2018-05-01', 'STORABLE', 'pcs', 2);
INSERT INTO inventory.storable VALUES ('22.25.050-001', 1, '22-25-050', '2018-05-01', 'STORABLE', 'pcs', 3);
INSERT INTO inventory.storable VALUES ('40.32.050-001', 1, '40-32-050', '2018-05-01', 'STORABLE', 'pcs', 4);
INSERT INTO inventory.storable VALUES ('50.01.050-001', 1, '50-01-050', '2018-05-01', 'STORABLE', 'pcs', 5);
INSERT INTO inventory.storable VALUES ('51.01.050-001', 1, '51-01-050', '2018-05-01', 'STORABLE', 'pcs', 6);
INSERT INTO inventory.storable VALUES ('52.01.050-001', 1, '52-01-050', '2018-05-01', 'STORABLE', 'pcs', 7);
INSERT INTO inventory.storable VALUES ('53.01.004-001', 1, '53-01-004', '2018-05-01', 'STORABLE', 'pcs', 8);
INSERT INTO inventory.storable VALUES ('60.01.050-001', 1, '60-01-050', '2018-05-01', 'STORABLE', 'pcs', 9);
INSERT INTO inventory.storable VALUES ('61.01.050-001', 1, '61-01-050', '2018-05-01', 'STORABLE', 'pcs', 10);
INSERT INTO inventory.storable VALUES ('70.01.050-001', 1, '70-01-050', '2018-05-01', 'STORABLE', 'pcs', 11);
INSERT INTO inventory.storable VALUES ('70.04.020-001', 1, '70-04-020', '2018-05-01', 'STORABLE', 'pcs', 12);
INSERT INTO inventory.storable VALUES ('41.31.050-001', 1, '41-31-050', '2018-05-01', 'STORABLE', 'pcs', 13);
INSERT INTO inventory.storable VALUES ('42.01.050-001', 1, '42-01-050', '2018-05-01', 'STORABLE', 'pcs', 14);
INSERT INTO inventory.storable VALUES ('42.02.022-001', 1, '42-02-022', '2018-05-01', 'STORABLE', 'pcs', 15);
INSERT INTO inventory.storable VALUES ('55.31.050-001', 1, '55-31-050', '2018-05-01', 'STORABLE', 'pcs', 16);
INSERT INTO inventory.storable VALUES ('71.01.020-001', 1, '71-01-020', '2018-05-01', 'STORABLE', 'pcs', 17);
INSERT INTO inventory.storable VALUES ('11.32.050-001', 1, '11-32-050', '2018-05-01', 'STORABLE', 'pcs', 18);
INSERT INTO inventory.storable VALUES ('72.01.009-001', 1, '72-01-009', '2018-05-01', 'STORABLE', 'pcs', 19);
INSERT INTO inventory.storable VALUES ('00.00.000-001', 1, 'Гайка M12', '2018-05-01', 'STORABLE', 'pcs', 20);
INSERT INTO inventory.storable VALUES ('Крг-022-ст20', 1, 'Крг-ст20-022', '2018-05-01', 'STORABLE', 'pcs', 21);
INSERT INTO inventory.storable VALUES ('Крг-016-ст20Х13', 1, 'Крг-ст20Х13-016', '2018-05-01', 'STORABLE', 'pcs', 22);
INSERT INTO inventory.storable VALUES ('Крг-004,0-ст45', 1, 'Крг-ст45-004,0', '2018-05-01', 'STORABLE', 'pcs', 23);
INSERT INTO inventory.storable VALUES ('Лст-003,0-ст3', 1, 'Лст-ст3-003,0', '2018-05-01', 'STORABLE', 'pcs', 24);
INSERT INTO inventory.storable VALUES ('Лст-001,2-ст65Г', 1, 'Лст-ст65Г-001,2', '2018-05-01', 'STORABLE', 'pcs', 25);
INSERT INTO inventory.storable VALUES ('Лст-001,0-ст20Х17', 1, 'Лст-ст20Х17-001,0', '2018-05-01', 'STORABLE', 'pcs', 26);
INSERT INTO inventory.storable VALUES ('Плс-020х4-ст3', 1, 'Плс-ст3-020х4', '2018-05-01', 'STORABLE', 'pcs', 27);
INSERT INTO inventory.storable VALUES ('Трб-057,0х03,5-ст20-Ш', 1, 'Трб-ст20-057,0х03,5-Ш', '2018-05-01', 'STORABLE', 'pcs', 28);
INSERT INTO inventory.storable VALUES ('Трб-089,0х03,5-ст20-Ш', 1, 'Трб-ст20-089,0х03,5-Ш', '2018-05-01', 'STORABLE', 'pcs', 29);
INSERT INTO inventory.storable VALUES ('Трб-089,0х03,0-ст20-Ш', 1, 'Трб-ст20-089,0х03,0-Ш', '2018-05-01', 'STORABLE', 'pcs', 30);
INSERT INTO inventory.storable VALUES ('Трб-068,0х04,0-ст20Х13', 1, 'Трб-ст20Х13-068,0х04,0', '2018-05-01', 'STORABLE', 'pcs', 31);
INSERT INTO inventory.storable VALUES ('Квд-080х080-ст3ПС', 1, 'Квд-ст3ПС-080х080', '2018-05-01', 'STORABLE', 'pcs', 32);
INSERT INTO inventory.storable VALUES ('ПЕ-15803-020', 1, 'ПЕ-15803-020', '2018-05-01', 'STORABLE', 'pcs', 33);
INSERT INTO inventory.storable VALUES ('Ф-4', 1, 'Ф-4', '2018-05-01', 'STORABLE', 'pcs', 34);
INSERT INTO inventory.storable VALUES ('Лст-000,8-ст20Х17', 1, 'Лст-ст20Х17-000,8', '2018-05-01', 'STORABLE', 'pcs', 35);
INSERT INTO inventory.storable VALUES ('Лст-004,4-ст20Х17', 1, 'Лст-ст20Х17-004,4', '2018-05-01', 'STORABLE', 'pcs', 36);
INSERT INTO inventory.storable VALUES ('Трб-068,0х03,5-ст20Х13', 1, 'Трб-ст20Х13-068,0х03,5', '2018-05-01', 'STORABLE', 'pcs', 37);


--
-- TOC entry 4365 (class 0 OID 87630)
-- Dependencies: 262
-- Data for Name: consumable; Type: TABLE DATA; Schema: mbom; Owner: postgres
--

INSERT INTO mbom.consumable VALUES (23, '80.31.050-001', 1, 1.0000, 'pcs', 'CONSUMABLE');
INSERT INTO mbom.consumable VALUES (23, '82.31.050-001', 1, 1.0000, 'pcs', 'CONSUMABLE');
INSERT INTO mbom.consumable VALUES (23, '22.25.050-001', 1, 2.0000, 'pcs', 'CONSUMABLE');
INSERT INTO mbom.consumable VALUES (23, '40.32.050-001', 1, 2.0000, 'pcs', 'CONSUMABLE');
INSERT INTO mbom.consumable VALUES (23, '50.01.050-001', 1, 2.0000, 'pcs', 'CONSUMABLE');
INSERT INTO mbom.consumable VALUES (23, '51.01.050-001', 1, 2.0000, 'pcs', 'CONSUMABLE');
INSERT INTO mbom.consumable VALUES (23, '52.01.050-001', 1, 2.0000, 'pcs', 'CONSUMABLE');
INSERT INTO mbom.consumable VALUES (23, '53.01.004-001', 1, 1.0000, 'pcs', 'CONSUMABLE');
INSERT INTO mbom.consumable VALUES (23, '60.01.050-001', 1, 1.0000, 'pcs', 'CONSUMABLE');
INSERT INTO mbom.consumable VALUES (23, '61.01.050-001', 1, 1.0000, 'pcs', 'CONSUMABLE');
INSERT INTO mbom.consumable VALUES (23, '70.01.050-001', 1, 2.0000, 'pcs', 'CONSUMABLE');
INSERT INTO mbom.consumable VALUES (23, '70.04.020-001', 1, 1.0000, 'pcs', 'CONSUMABLE');
INSERT INTO mbom.consumable VALUES (24, '41.31.050-001', 1, 1.0000, 'pcs', 'CONSUMABLE');
INSERT INTO mbom.consumable VALUES (24, '42.01.050-001', 1, 1.0000, 'pcs', 'CONSUMABLE');
INSERT INTO mbom.consumable VALUES (25, '42.02.022-001', 1, 1.0000, 'pcs', 'CONSUMABLE');
INSERT INTO mbom.consumable VALUES (25, '55.31.050-001', 1, 1.0000, 'pcs', 'CONSUMABLE');
INSERT INTO mbom.consumable VALUES (25, '71.01.020-001', 1, 1.0000, 'pcs', 'CONSUMABLE');


--
-- TOC entry 4366 (class 0 OID 87638)
-- Dependencies: 263
-- Data for Name: definition; Type: TABLE DATA; Schema: mbom; Owner: postgres
--

INSERT INTO mbom.definition VALUES (1, '914d92da-5c77-11e8-ae01-d4bed939923a', '22.25.050-001: definition', 1, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 1);
INSERT INTO mbom.definition VALUES (2, '914dc9b2-5c77-11e8-ae03-d4bed939923a', '42.01.050-001: definition', 1, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 2);
INSERT INTO mbom.definition VALUES (3, '914ddfce-5c77-11e8-ae05-d4bed939923a', '42.02.022-001: definition', 1, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 3);
INSERT INTO mbom.definition VALUES (4, '914df798-5c77-11e8-ae07-d4bed939923a', '61.01.050-001: definition', 1, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 4);
INSERT INTO mbom.definition VALUES (5, '914e0e18-5c77-11e8-ae09-d4bed939923a', '53.01.004-001: definition', 1, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 5);
INSERT INTO mbom.definition VALUES (6, '914e24a2-5c77-11e8-ae0b-d4bed939923a', '50.01.050-001: definition', 1, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 6);
INSERT INTO mbom.definition VALUES (7, '914e3cda-5c77-11e8-ae0c-d4bed939923a', '50.01.050-001: definition', 2, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 6);
INSERT INTO mbom.definition VALUES (8, '914e49a0-5c77-11e8-ae0d-d4bed939923a', '50.01.050-001: definition', 3, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 6);
INSERT INTO mbom.definition VALUES (9, '914e5742-5c77-11e8-ae0f-d4bed939923a', '60.01.050-001: definition', 1, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 7);
INSERT INTO mbom.definition VALUES (10, '914e644e-5c77-11e8-ae11-d4bed939923a', '52.01.050-001: definition', 1, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 8);
INSERT INTO mbom.definition VALUES (11, '914e6f34-5c77-11e8-ae12-d4bed939923a', '52.01.050-001: definition', 2, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 8);
INSERT INTO mbom.definition VALUES (12, '914e7b3c-5c77-11e8-ae14-d4bed939923a', '51.01.050-001: definition', 1, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 9);
INSERT INTO mbom.definition VALUES (13, '914e85a0-5c77-11e8-ae15-d4bed939923a', '51.01.050-001: definition', 2, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 9);
INSERT INTO mbom.definition VALUES (14, '914e9108-5c77-11e8-ae17-d4bed939923a', '71.01.020-001: definition', 1, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 10);
INSERT INTO mbom.definition VALUES (15, '914e9ed2-5c77-11e8-ae19-d4bed939923a', '55.31.050-001: definition', 1, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 11);
INSERT INTO mbom.definition VALUES (16, '914ea9d6-5c77-11e8-ae1b-d4bed939923a', '40.32.050-001: definition', 1, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 12);
INSERT INTO mbom.definition VALUES (17, '914eb4d0-5c77-11e8-ae1d-d4bed939923a', '41.31.050-001: definition', 1, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 13);
INSERT INTO mbom.definition VALUES (18, '914ec2f4-5c77-11e8-ae1e-d4bed939923a', '41.31.050-001: definition', 2, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 13);
INSERT INTO mbom.definition VALUES (19, '914ed0be-5c77-11e8-ae1f-d4bed939923a', '60.01.050-001: definition', 2, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 7);
INSERT INTO mbom.definition VALUES (20, '914edca8-5c77-11e8-ae20-d4bed939923a', '60.01.050-001: definition', 3, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 7);
INSERT INTO mbom.definition VALUES (21, '914ee96e-5c77-11e8-ae22-d4bed939923a', '70.01.050-001: definition', 1, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 14);
INSERT INTO mbom.definition VALUES (22, '914ef4ea-5c77-11e8-ae24-d4bed939923a', '70.04.020-001: definition', 1, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 15);
INSERT INTO mbom.definition VALUES (23, '914f080e-5c77-11e8-ae26-d4bed939923a', '11-32-50: definition', 1, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 16);
INSERT INTO mbom.definition VALUES (24, '914f57d2-5c77-11e8-ae28-d4bed939923a', '80-31-50: definition', 1, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 17);
INSERT INTO mbom.definition VALUES (25, '914f684e-5c77-11e8-ae2a-d4bed939923a', '82-31-50: definition', 1, '2018-05-21', NULL, NULL, 'PROPOSED', '2018-05-21 00:48:44.253662+03', 18);


--
-- TOC entry 4480 (class 0 OID 0)
-- Dependencies: 264
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: mbom; Owner: postgres
--

SELECT pg_catalog.setval('mbom.definition_id_seq', 25, true);


--
-- TOC entry 4368 (class 0 OID 87651)
-- Dependencies: 265
-- Data for Name: information; Type: TABLE DATA; Schema: mbom; Owner: postgres
--

INSERT INTO mbom.information VALUES (1, '914d83f8-5c77-11e8-ae00-d4bed939923a', '22.25.050-001: definition', '2018-05-21', '22.25.050-001', 1);
INSERT INTO mbom.information VALUES (2, '914dc520-5c77-11e8-ae02-d4bed939923a', '42.01.050-001: definition', '2018-05-21', '42.01.050-001', 1);
INSERT INTO mbom.information VALUES (3, '914ddbb4-5c77-11e8-ae04-d4bed939923a', '42.02.022-001: definition', '2018-05-21', '42.02.022-001', 1);
INSERT INTO mbom.information VALUES (4, '914df34c-5c77-11e8-ae06-d4bed939923a', '61.01.050-001: definition', '2018-05-21', '61.01.050-001', 1);
INSERT INTO mbom.information VALUES (5, '914e09ae-5c77-11e8-ae08-d4bed939923a', '53.01.004-001: definition', '2018-05-21', '53.01.004-001', 1);
INSERT INTO mbom.information VALUES (6, '914e1fde-5c77-11e8-ae0a-d4bed939923a', '50.01.050-001: definition', '2018-05-21', '50.01.050-001', 1);
INSERT INTO mbom.information VALUES (7, '914e542c-5c77-11e8-ae0e-d4bed939923a', '60.01.050-001: definition', '2018-05-21', '60.01.050-001', 1);
INSERT INTO mbom.information VALUES (8, '914e6188-5c77-11e8-ae10-d4bed939923a', '52.01.050-001: definition', '2018-05-21', '52.01.050-001', 1);
INSERT INTO mbom.information VALUES (9, '914e7916-5c77-11e8-ae13-d4bed939923a', '51.01.050-001: definition', '2018-05-21', '51.01.050-001', 1);
INSERT INTO mbom.information VALUES (10, '914e8ece-5c77-11e8-ae16-d4bed939923a', '71.01.020-001: definition', '2018-05-21', '71.01.020-001', 1);
INSERT INTO mbom.information VALUES (11, '914e9bd0-5c77-11e8-ae18-d4bed939923a', '55.31.050-001: definition', '2018-05-21', '55.31.050-001', 1);
INSERT INTO mbom.information VALUES (12, '914ea7a6-5c77-11e8-ae1a-d4bed939923a', '40.32.050-001: definition', '2018-05-21', '40.32.050-001', 1);
INSERT INTO mbom.information VALUES (13, '914eb2b4-5c77-11e8-ae1c-d4bed939923a', '41.31.050-001: definition', '2018-05-21', '41.31.050-001', 1);
INSERT INTO mbom.information VALUES (14, '914ee6da-5c77-11e8-ae21-d4bed939923a', '70.01.050-001: definition', '2018-05-21', '70.01.050-001', 1);
INSERT INTO mbom.information VALUES (15, '914ef29c-5c77-11e8-ae23-d4bed939923a', '70.04.020-001: definition', '2018-05-21', '70.04.020-001', 1);
INSERT INTO mbom.information VALUES (16, '914f0566-5c77-11e8-ae25-d4bed939923a', '11-32-50: definition', '2018-05-21', '11.32.050-001', 1);
INSERT INTO mbom.information VALUES (17, '914f557a-5c77-11e8-ae27-d4bed939923a', '80-31-50: definition', '2018-05-21', '80.31.050-001', 1);
INSERT INTO mbom.information VALUES (18, '914f65b0-5c77-11e8-ae29-d4bed939923a', '82-31-50: definition', '2018-05-21', '82.31.050-001', 1);


--
-- TOC entry 4481 (class 0 OID 0)
-- Dependencies: 266
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: mbom; Owner: postgres
--

SELECT pg_catalog.setval('mbom.information_id_seq', 18, true);


--
-- TOC entry 4364 (class 0 OID 87623)
-- Dependencies: 261
-- Data for Name: material; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 4370 (class 0 OID 87661)
-- Dependencies: 267
-- Data for Name: primal; Type: TABLE DATA; Schema: mbom; Owner: postgres
--

INSERT INTO mbom.primal VALUES (1, 'Квд-080х080-ст3ПС', 1, 3.4000, 'kg', 'PRIMAL');
INSERT INTO mbom.primal VALUES (2, 'Крг-022-ст20', 1, 50.0000, 'mm', 'PRIMAL');
INSERT INTO mbom.primal VALUES (3, 'Крг-022-ст20', 1, 18.0000, 'mm', 'PRIMAL');
INSERT INTO mbom.primal VALUES (4, 'Крг-016-ст20Х13', 1, 81.0000, 'mm', 'PRIMAL');
INSERT INTO mbom.primal VALUES (5, 'Крг-004,0-ст45', 1, 14.0000, 'mm', 'PRIMAL');
INSERT INTO mbom.primal VALUES (6, 'Лст-000,8-ст20Х17', 1, 0.0000, 'kg', 'PRIMAL');
INSERT INTO mbom.primal VALUES (7, 'Лст-000,8-ст20Х17', 1, 0.0200, 'kg', 'PRIMAL');
INSERT INTO mbom.primal VALUES (8, 'Лст-001,0-ст20Х17', 1, 0.0300, 'kg', 'PRIMAL');
INSERT INTO mbom.primal VALUES (9, 'Лст-004,4-ст20Х17', 1, 0.4000, 'kg', 'PRIMAL');
INSERT INTO mbom.primal VALUES (10, 'Лст-003,0-ст3', 1, 0.0000, 'kg', 'PRIMAL');
INSERT INTO mbom.primal VALUES (11, 'Лст-003,0-ст3', 1, 0.0800, 'kg', 'PRIMAL');
INSERT INTO mbom.primal VALUES (12, 'Лст-001,2-ст65Г', 1, 0.0000, 'kg', 'PRIMAL');
INSERT INTO mbom.primal VALUES (13, 'Лст-001,2-ст65Г', 1, 0.0300, 'kg', 'PRIMAL');
INSERT INTO mbom.primal VALUES (14, 'ПЕ-15803-020', 1, 0.0100, 'kg', 'PRIMAL');
INSERT INTO mbom.primal VALUES (15, 'Плс-020х4-ст3', 1, 0.1500, 'kg', 'PRIMAL');
INSERT INTO mbom.primal VALUES (16, 'Трб-057,0х03,5-ст20-Ш', 1, 78.0000, 'mm', 'PRIMAL');
INSERT INTO mbom.primal VALUES (17, 'Трб-089,0х03,0-ст20-Ш', 1, 115.0000, 'mm', 'PRIMAL');
INSERT INTO mbom.primal VALUES (18, 'Трб-089,0х03,5-ст20-Ш', 1, 115.0000, 'mm', 'PRIMAL');
INSERT INTO mbom.primal VALUES (19, 'Трб-068,0х03,5-ст20Х13', 1, 65.0000, 'mm', 'PRIMAL');
INSERT INTO mbom.primal VALUES (20, 'Трб-068,0х04,0-ст20Х13', 1, 65.0000, 'mm', 'PRIMAL');
INSERT INTO mbom.primal VALUES (21, 'Ф-4', 1, 15.6000, 'g', 'PRIMAL');
INSERT INTO mbom.primal VALUES (22, 'Ф-4', 1, 0.5000, 'g', 'PRIMAL');
INSERT INTO mbom.primal VALUES (23, '72.01.009-001', 1, 2.0000, 'pcs', 'PRIMAL');
INSERT INTO mbom.primal VALUES (23, '00.00.000-001', 1, 1.0000, 'pcs', 'PRIMAL');


--
-- TOC entry 4372 (class 0 OID 87677)
-- Dependencies: 269
-- Data for Name: consumable; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 4373 (class 0 OID 87685)
-- Dependencies: 270
-- Data for Name: definition; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 4482 (class 0 OID 0)
-- Dependencies: 271
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('operation.definition_id_seq', 1, false);


--
-- TOC entry 4375 (class 0 OID 87698)
-- Dependencies: 272
-- Data for Name: dependency; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 4376 (class 0 OID 87702)
-- Dependencies: 273
-- Data for Name: equipment; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 4377 (class 0 OID 87708)
-- Dependencies: 274
-- Data for Name: information; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 4483 (class 0 OID 0)
-- Dependencies: 275
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('operation.information_id_seq', 1, false);


--
-- TOC entry 4371 (class 0 OID 87669)
-- Dependencies: 268
-- Data for Name: material; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 4379 (class 0 OID 87718)
-- Dependencies: 276
-- Data for Name: personnel; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 4380 (class 0 OID 87728)
-- Dependencies: 277
-- Data for Name: primal; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 4381 (class 0 OID 87736)
-- Dependencies: 278
-- Data for Name: segment; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 4484 (class 0 OID 0)
-- Dependencies: 279
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('operation.segment_id_seq', 1, false);


--
-- TOC entry 4383 (class 0 OID 87745)
-- Dependencies: 280
-- Data for Name: tooling; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 4385 (class 0 OID 87759)
-- Dependencies: 282
-- Data for Name: consumable; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4386 (class 0 OID 87768)
-- Dependencies: 283
-- Data for Name: definition; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4485 (class 0 OID 0)
-- Dependencies: 284
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('product.definition_id_seq', 1, false);


--
-- TOC entry 4388 (class 0 OID 87781)
-- Dependencies: 285
-- Data for Name: dependency; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4389 (class 0 OID 87785)
-- Dependencies: 286
-- Data for Name: equipment; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4390 (class 0 OID 87791)
-- Dependencies: 287
-- Data for Name: information; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4486 (class 0 OID 0)
-- Dependencies: 288
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('product.information_id_seq', 1, false);


--
-- TOC entry 4384 (class 0 OID 87751)
-- Dependencies: 281
-- Data for Name: material; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4392 (class 0 OID 87802)
-- Dependencies: 289
-- Data for Name: personnel; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4393 (class 0 OID 87812)
-- Dependencies: 290
-- Data for Name: primal; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4394 (class 0 OID 87821)
-- Dependencies: 291
-- Data for Name: segment; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4487 (class 0 OID 0)
-- Dependencies: 292
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('product.segment_id_seq', 1, false);


--
-- TOC entry 4396 (class 0 OID 87830)
-- Dependencies: 293
-- Data for Name: tooling; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4410 (class 0 OID 93371)
-- Dependencies: 310
-- Data for Name: consumable; Type: TABLE DATA; Schema: production; Owner: postgres
--



--
-- TOC entry 4411 (class 0 OID 93379)
-- Dependencies: 311
-- Data for Name: definition; Type: TABLE DATA; Schema: production; Owner: postgres
--



--
-- TOC entry 4488 (class 0 OID 0)
-- Dependencies: 312
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: production; Owner: postgres
--

SELECT pg_catalog.setval('production.definition_id_seq', 1, false);


--
-- TOC entry 4413 (class 0 OID 93392)
-- Dependencies: 313
-- Data for Name: dependency; Type: TABLE DATA; Schema: production; Owner: postgres
--



--
-- TOC entry 4414 (class 0 OID 93396)
-- Dependencies: 314
-- Data for Name: equipment; Type: TABLE DATA; Schema: production; Owner: postgres
--



--
-- TOC entry 4415 (class 0 OID 93402)
-- Dependencies: 315
-- Data for Name: information; Type: TABLE DATA; Schema: production; Owner: postgres
--



--
-- TOC entry 4489 (class 0 OID 0)
-- Dependencies: 316
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: production; Owner: postgres
--

SELECT pg_catalog.setval('production.information_id_seq', 1, false);


--
-- TOC entry 4409 (class 0 OID 93363)
-- Dependencies: 309
-- Data for Name: material; Type: TABLE DATA; Schema: production; Owner: postgres
--



--
-- TOC entry 4417 (class 0 OID 93412)
-- Dependencies: 317
-- Data for Name: personnel; Type: TABLE DATA; Schema: production; Owner: postgres
--



--
-- TOC entry 4418 (class 0 OID 93422)
-- Dependencies: 318
-- Data for Name: primal; Type: TABLE DATA; Schema: production; Owner: postgres
--



--
-- TOC entry 4419 (class 0 OID 93430)
-- Dependencies: 319
-- Data for Name: segment; Type: TABLE DATA; Schema: production; Owner: postgres
--



--
-- TOC entry 4490 (class 0 OID 0)
-- Dependencies: 320
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: production; Owner: postgres
--

SELECT pg_catalog.setval('production.segment_id_seq', 1, false);


--
-- TOC entry 4421 (class 0 OID 93439)
-- Dependencies: 321
-- Data for Name: tooling; Type: TABLE DATA; Schema: production; Owner: postgres
--



--
-- TOC entry 4398 (class 0 OID 87842)
-- Dependencies: 295
-- Data for Name: consumable; Type: TABLE DATA; Schema: route; Owner: postgres
--



--
-- TOC entry 4399 (class 0 OID 87850)
-- Dependencies: 296
-- Data for Name: definition; Type: TABLE DATA; Schema: route; Owner: postgres
--



--
-- TOC entry 4491 (class 0 OID 0)
-- Dependencies: 297
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: route; Owner: postgres
--

SELECT pg_catalog.setval('route.definition_id_seq', 1, false);


--
-- TOC entry 4401 (class 0 OID 87863)
-- Dependencies: 298
-- Data for Name: information; Type: TABLE DATA; Schema: route; Owner: postgres
--



--
-- TOC entry 4492 (class 0 OID 0)
-- Dependencies: 299
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: route; Owner: postgres
--

SELECT pg_catalog.setval('route.information_id_seq', 1, false);


--
-- TOC entry 4403 (class 0 OID 87873)
-- Dependencies: 300
-- Data for Name: location; Type: TABLE DATA; Schema: route; Owner: postgres
--



--
-- TOC entry 4404 (class 0 OID 87879)
-- Dependencies: 301
-- Data for Name: primal; Type: TABLE DATA; Schema: route; Owner: postgres
--



--
-- TOC entry 4397 (class 0 OID 87836)
-- Dependencies: 294
-- Data for Name: segment; Type: TABLE DATA; Schema: route; Owner: postgres
--



--
-- TOC entry 4405 (class 0 OID 87902)
-- Dependencies: 305
-- Data for Name: assignment; Type: TABLE DATA; Schema: uom; Owner: postgres
--



--
-- TOC entry 4406 (class 0 OID 87905)
-- Dependencies: 306
-- Data for Name: information; Type: TABLE DATA; Schema: uom; Owner: postgres
--

INSERT INTO uom.information VALUES ('kg', 'MASS', 'kg', 1);
INSERT INTO uom.information VALUES ('m', 'LENGHT', 'm', 1);
INSERT INTO uom.information VALUES ('pcs', 'QUANTITY', 'pcs', 1);
INSERT INTO uom.information VALUES ('g', 'MASS', 'kg', 0.001);
INSERT INTO uom.information VALUES ('t', 'MASS', 'kg', 1000);
INSERT INTO uom.information VALUES ('mm', 'LENGHT', 'm', 0.001);
INSERT INTO uom.information VALUES ('km', 'LENGHT', 'm', 1000);
INSERT INTO uom.information VALUES ('cm', 'LENGHT', 'm', 0.01);
INSERT INTO uom.information VALUES ('l', 'VOLUME', 'l', 1);
INSERT INTO uom.information VALUES ('ml', 'VOLUME', 'l', 0.001);


--
-- TOC entry 4493 (class 0 OID 0)
-- Dependencies: 307
-- Name: uom_role_uom_role_id_seq; Type: SEQUENCE SET; Schema: uom; Owner: postgres
--

SELECT pg_catalog.setval('uom.uom_role_uom_role_id_seq', 1, false);


--
-- TOC entry 3964 (class 2606 OID 87958)
-- Name: ebom_to_mbom ebom_to_mbom_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.ebom_to_mbom
    ADD CONSTRAINT ebom_to_mbom_pkey PRIMARY KEY (ebom_id, mbom_id);


--
-- TOC entry 3966 (class 2606 OID 87960)
-- Name: ebom_to_product ebom_to_product_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.ebom_to_product
    ADD CONSTRAINT ebom_to_product_pkey PRIMARY KEY (ebom_id, product_id);


--
-- TOC entry 4138 (class 2606 OID 93542)
-- Name: ebom_to_production ebom_to_production_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.ebom_to_production
    ADD CONSTRAINT ebom_to_production_pkey PRIMARY KEY (ebom_id, production_id);


--
-- TOC entry 4140 (class 2606 OID 93547)
-- Name: ebom_to_route ebom_to_route_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.ebom_to_route
    ADD CONSTRAINT ebom_to_route_pkey PRIMARY KEY (ebom_id, route_id);


--
-- TOC entry 3968 (class 2606 OID 87964)
-- Name: mbom_to_operation mbom_to_operation_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.mbom_to_operation
    ADD CONSTRAINT mbom_to_operation_pkey PRIMARY KEY (mbom_id, operation_id);


--
-- TOC entry 3970 (class 2606 OID 87966)
-- Name: mbom_to_product mbom_to_product_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.mbom_to_product
    ADD CONSTRAINT mbom_to_product_pkey PRIMARY KEY (mbom_id, product_id);


--
-- TOC entry 4142 (class 2606 OID 93552)
-- Name: mbom_to_production mbom_to_production_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.mbom_to_production
    ADD CONSTRAINT mbom_to_production_pkey PRIMARY KEY (mbom_id, production_id);


--
-- TOC entry 3972 (class 2606 OID 87968)
-- Name: operation_to_product operation_to_product_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.operation_to_product
    ADD CONSTRAINT operation_to_product_pkey PRIMARY KEY (operation_id, product_id);


--
-- TOC entry 3974 (class 2606 OID 87970)
-- Name: route_to_mbom route_to_mbom_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.route_to_mbom
    ADD CONSTRAINT route_to_mbom_pkey PRIMARY KEY (route_id, mbom_id);


--
-- TOC entry 3976 (class 2606 OID 87972)
-- Name: route_to_operation route_to_operation_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.route_to_operation
    ADD CONSTRAINT route_to_operation_pkey PRIMARY KEY (route_id, operation_id);


--
-- TOC entry 3980 (class 2606 OID 87974)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3982 (class 2606 OID 87976)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3978 (class 2606 OID 87978)
-- Name: component component_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.component
    ADD CONSTRAINT component_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3984 (class 2606 OID 87980)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 3986 (class 2606 OID 87982)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 3988 (class 2606 OID 87984)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3990 (class 2606 OID 87986)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 3992 (class 2606 OID 87988)
-- Name: information information_part_code_version_num_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information
    ADD CONSTRAINT information_part_code_version_num_key UNIQUE (part_code, version_num);


--
-- TOC entry 3994 (class 2606 OID 87990)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3996 (class 2606 OID 87992)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.part
    ADD CONSTRAINT part_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4000 (class 2606 OID 87994)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4002 (class 2606 OID 87996)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3998 (class 2606 OID 87998)
-- Name: conglomeration conglomeration_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.conglomeration
    ADD CONSTRAINT conglomeration_pkey PRIMARY KEY (part_code, version_num, inventory_type);


--
-- TOC entry 4004 (class 2606 OID 88000)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4006 (class 2606 OID 88002)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 4008 (class 2606 OID 88004)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 4010 (class 2606 OID 88006)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4012 (class 2606 OID 88008)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 4014 (class 2606 OID 88010)
-- Name: information information_part_code; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.information
    ADD CONSTRAINT information_part_code UNIQUE (part_code);


--
-- TOC entry 4016 (class 2606 OID 88012)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4018 (class 2606 OID 88014)
-- Name: measurement measurement_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.measurement
    ADD CONSTRAINT measurement_pkey PRIMARY KEY (definition_id, uom_code);


--
-- TOC entry 4020 (class 2606 OID 88016)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.part
    ADD CONSTRAINT part_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4112 (class 2606 OID 93337)
-- Name: phantom phantom_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.phantom
    ADD CONSTRAINT phantom_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4022 (class 2606 OID 88018)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4024 (class 2606 OID 88020)
-- Name: producible producible_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.producible
    ADD CONSTRAINT producible_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4026 (class 2606 OID 88022)
-- Name: salable salable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.salable
    ADD CONSTRAINT salable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4028 (class 2606 OID 88024)
-- Name: storable storable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.storable
    ADD CONSTRAINT storable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4032 (class 2606 OID 88026)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4034 (class 2606 OID 88028)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 4036 (class 2606 OID 88030)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 4038 (class 2606 OID 88032)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4040 (class 2606 OID 88034)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4030 (class 2606 OID 88036)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4042 (class 2606 OID 88038)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4046 (class 2606 OID 88040)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4048 (class 2606 OID 88042)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4050 (class 2606 OID 88044)
-- Name: definition definition_version_num_information_id_key; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.definition
    ADD CONSTRAINT definition_version_num_information_id_key UNIQUE (version_num, information_id);


--
-- TOC entry 4052 (class 2606 OID 88046)
-- Name: dependency dependency_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.dependency
    ADD CONSTRAINT dependency_pkey PRIMARY KEY (ancestor, descendant);


--
-- TOC entry 4054 (class 2606 OID 88048)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, equipment_code);


--
-- TOC entry 4056 (class 2606 OID 88050)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4044 (class 2606 OID 88052)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4058 (class 2606 OID 88054)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, personnel_code);


--
-- TOC entry 4060 (class 2606 OID 88056)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4062 (class 2606 OID 88058)
-- Name: segment segment_definition_id_operation_code_key; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.segment
    ADD CONSTRAINT segment_definition_id_operation_code_key UNIQUE (definition_id, operation_code);


--
-- TOC entry 4064 (class 2606 OID 88060)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 4066 (class 2606 OID 88062)
-- Name: tooling tooling_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.tooling
    ADD CONSTRAINT tooling_pkey PRIMARY KEY (segment_id, tooling_code);


--
-- TOC entry 4070 (class 2606 OID 88064)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4072 (class 2606 OID 88066)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4074 (class 2606 OID 88068)
-- Name: definition definition_version_num_information_id_key; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.definition
    ADD CONSTRAINT definition_version_num_information_id_key UNIQUE (version_num, information_id);


--
-- TOC entry 4076 (class 2606 OID 88070)
-- Name: dependency dependency_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.dependency
    ADD CONSTRAINT dependency_pkey PRIMARY KEY (ancestor, descendant);


--
-- TOC entry 4078 (class 2606 OID 88072)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, equipment_code);


--
-- TOC entry 4080 (class 2606 OID 88074)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4068 (class 2606 OID 88076)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4082 (class 2606 OID 88078)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, personnel_code);


--
-- TOC entry 4084 (class 2606 OID 88080)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4086 (class 2606 OID 88082)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 4088 (class 2606 OID 88084)
-- Name: tooling tooling_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.tooling
    ADD CONSTRAINT tooling_pkey PRIMARY KEY (segment_id, tooling_code);


--
-- TOC entry 4116 (class 2606 OID 93453)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4118 (class 2606 OID 93455)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4120 (class 2606 OID 93457)
-- Name: definition definition_version_num_information_id_key; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.definition
    ADD CONSTRAINT definition_version_num_information_id_key UNIQUE (version_num, information_id);


--
-- TOC entry 4122 (class 2606 OID 93459)
-- Name: dependency dependency_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.dependency
    ADD CONSTRAINT dependency_pkey PRIMARY KEY (ancestor, descendant);


--
-- TOC entry 4124 (class 2606 OID 93461)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, equipment_code);


--
-- TOC entry 4126 (class 2606 OID 93463)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4114 (class 2606 OID 93465)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4128 (class 2606 OID 93467)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, personnel_code);


--
-- TOC entry 4130 (class 2606 OID 93469)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4132 (class 2606 OID 93471)
-- Name: segment segment_definition_id_operation_code_key; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.segment
    ADD CONSTRAINT segment_definition_id_operation_code_key UNIQUE (definition_id, operation_code);


--
-- TOC entry 4134 (class 2606 OID 93473)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 4136 (class 2606 OID 93475)
-- Name: tooling tooling_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.tooling
    ADD CONSTRAINT tooling_pkey PRIMARY KEY (segment_id, tooling_code);


--
-- TOC entry 4092 (class 2606 OID 88086)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (definition_id, descendant_part_code, descendant_version_num, ancestor_part_code, ancestor_version_num);


--
-- TOC entry 4094 (class 2606 OID 88088)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 4096 (class 2606 OID 88090)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 4098 (class 2606 OID 88092)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4100 (class 2606 OID 88094)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4102 (class 2606 OID 88096)
-- Name: location location_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.location
    ADD CONSTRAINT location_pkey PRIMARY KEY (definition_id, location_code);


--
-- TOC entry 4104 (class 2606 OID 88098)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (definition_id, descendant_part_code, descendant_version_num, ancestor_part_code, ancestor_version_num);


--
-- TOC entry 4090 (class 2606 OID 88100)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (definition_id, ancestor_part_code, ancestor_version_num, descendant_part_code, descendant_version_num);


--
-- TOC entry 4110 (class 2606 OID 88102)
-- Name: information uom_pkey; Type: CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.information
    ADD CONSTRAINT uom_pkey PRIMARY KEY (uom_code);


--
-- TOC entry 4106 (class 2606 OID 88104)
-- Name: assignment uom_role_pkey; Type: CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.assignment
    ADD CONSTRAINT uom_role_pkey PRIMARY KEY (uom_role_id);


--
-- TOC entry 4108 (class 2606 OID 88106)
-- Name: assignment uom_role_uom_role_code_key; Type: CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.assignment
    ADD CONSTRAINT uom_role_uom_role_code_key UNIQUE (uom_role_code);


--
-- TOC entry 4214 (class 2620 OID 88107)
-- Name: definition set_prev_doc_fsmt; Type: TRIGGER; Schema: ebom; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON ebom.definition FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 4143 (class 2606 OID 88108)
-- Name: assembly assembly_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.assembly
    ADD CONSTRAINT assembly_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES ebom.definition(id);


--
-- TOC entry 4144 (class 2606 OID 88113)
-- Name: assembly assembly_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.assembly
    ADD CONSTRAINT assembly_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.assembly(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4145 (class 2606 OID 88118)
-- Name: buyable buyable_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.buyable
    ADD CONSTRAINT buyable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES ebom.definition(id);


--
-- TOC entry 4146 (class 2606 OID 88123)
-- Name: buyable buyable_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.buyable
    ADD CONSTRAINT buyable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.buyable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4147 (class 2606 OID 88128)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES ebom.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4148 (class 2606 OID 88133)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.assembly(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4149 (class 2606 OID 88138)
-- Name: part part_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.part
    ADD CONSTRAINT part_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES ebom.definition(id);


--
-- TOC entry 4150 (class 2606 OID 88143)
-- Name: part part_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.part
    ADD CONSTRAINT part_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.part(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4151 (class 2606 OID 88148)
-- Name: assembly assembly_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.assembly
    ADD CONSTRAINT assembly_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4152 (class 2606 OID 88153)
-- Name: buyable buyable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.buyable
    ADD CONSTRAINT buyable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4153 (class 2606 OID 88158)
-- Name: consumable consumable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.consumable
    ADD CONSTRAINT consumable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4154 (class 2606 OID 88163)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES inventory.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4155 (class 2606 OID 88168)
-- Name: measurement measurement_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.measurement
    ADD CONSTRAINT measurement_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4156 (class 2606 OID 88173)
-- Name: part part_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.part
    ADD CONSTRAINT part_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4201 (class 2606 OID 93338)
-- Name: phantom phantom_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.phantom
    ADD CONSTRAINT phantom_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4157 (class 2606 OID 88178)
-- Name: primal primal_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.primal
    ADD CONSTRAINT primal_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4158 (class 2606 OID 88183)
-- Name: producible producible_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.producible
    ADD CONSTRAINT producible_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4159 (class 2606 OID 88188)
-- Name: salable salable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.salable
    ADD CONSTRAINT salable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4160 (class 2606 OID 88193)
-- Name: storable storable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.storable
    ADD CONSTRAINT storable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4161 (class 2606 OID 88198)
-- Name: consumable consumable_definition_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.consumable
    ADD CONSTRAINT consumable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES mbom.definition(id);


--
-- TOC entry 4162 (class 2606 OID 88203)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4163 (class 2606 OID 88208)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES mbom.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4164 (class 2606 OID 88213)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4165 (class 2606 OID 88218)
-- Name: primal primal_definition_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.primal
    ADD CONSTRAINT primal_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES mbom.definition(id);


--
-- TOC entry 4166 (class 2606 OID 88223)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4167 (class 2606 OID 88228)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4168 (class 2606 OID 88233)
-- Name: consumable consumable_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.consumable
    ADD CONSTRAINT consumable_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES operation.segment(id);


--
-- TOC entry 4169 (class 2606 OID 88238)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES operation.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4170 (class 2606 OID 88243)
-- Name: dependency dependency_ancestor_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.dependency
    ADD CONSTRAINT dependency_ancestor_fkey FOREIGN KEY (ancestor) REFERENCES operation.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4171 (class 2606 OID 88248)
-- Name: dependency dependency_descendant_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.dependency
    ADD CONSTRAINT dependency_descendant_fkey FOREIGN KEY (descendant) REFERENCES operation.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4172 (class 2606 OID 88253)
-- Name: equipment equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES operation.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4173 (class 2606 OID 88258)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4174 (class 2606 OID 88263)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES operation.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4175 (class 2606 OID 88268)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4176 (class 2606 OID 88273)
-- Name: primal primal_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.primal
    ADD CONSTRAINT primal_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES operation.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4177 (class 2606 OID 88278)
-- Name: segment segment_definition_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.segment
    ADD CONSTRAINT segment_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES operation.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4178 (class 2606 OID 88283)
-- Name: tooling tooling_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.tooling
    ADD CONSTRAINT tooling_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES operation.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4179 (class 2606 OID 88288)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4180 (class 2606 OID 88293)
-- Name: consumable consumable_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.consumable
    ADD CONSTRAINT consumable_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES product.segment(id);


--
-- TOC entry 4181 (class 2606 OID 88298)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES product.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4182 (class 2606 OID 88303)
-- Name: dependency dependency_ancestor_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.dependency
    ADD CONSTRAINT dependency_ancestor_fkey FOREIGN KEY (ancestor) REFERENCES product.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4183 (class 2606 OID 88308)
-- Name: dependency dependency_descendant_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.dependency
    ADD CONSTRAINT dependency_descendant_fkey FOREIGN KEY (descendant) REFERENCES product.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4184 (class 2606 OID 88313)
-- Name: equipment equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES product.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4185 (class 2606 OID 88318)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.salable(part_code, version_num);


--
-- TOC entry 4186 (class 2606 OID 88323)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES product.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4187 (class 2606 OID 88328)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4188 (class 2606 OID 88333)
-- Name: primal primal_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.primal
    ADD CONSTRAINT primal_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES product.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4189 (class 2606 OID 88338)
-- Name: segment segment_definition_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.segment
    ADD CONSTRAINT segment_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES product.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4190 (class 2606 OID 88343)
-- Name: tooling tooling_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.tooling
    ADD CONSTRAINT tooling_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES product.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4203 (class 2606 OID 93476)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4202 (class 2606 OID 93481)
-- Name: consumable consumable_segment_id_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.consumable
    ADD CONSTRAINT consumable_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES production.segment(id);


--
-- TOC entry 4204 (class 2606 OID 93486)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES production.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4206 (class 2606 OID 93491)
-- Name: dependency dependency_ancestor_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.dependency
    ADD CONSTRAINT dependency_ancestor_fkey FOREIGN KEY (ancestor) REFERENCES production.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4205 (class 2606 OID 93496)
-- Name: dependency dependency_descendant_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.dependency
    ADD CONSTRAINT dependency_descendant_fkey FOREIGN KEY (descendant) REFERENCES production.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4207 (class 2606 OID 93501)
-- Name: equipment equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES production.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4208 (class 2606 OID 93506)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4209 (class 2606 OID 93511)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES production.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4211 (class 2606 OID 93516)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4210 (class 2606 OID 93521)
-- Name: primal primal_segment_id_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.primal
    ADD CONSTRAINT primal_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES production.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4212 (class 2606 OID 93526)
-- Name: segment segment_definition_id_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.segment
    ADD CONSTRAINT segment_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES production.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4213 (class 2606 OID 93531)
-- Name: tooling tooling_segment_id_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY production.tooling
    ADD CONSTRAINT tooling_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES production.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4191 (class 2606 OID 88348)
-- Name: consumable consumable_ancestor_part_code_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.consumable
    ADD CONSTRAINT consumable_ancestor_part_code_fkey FOREIGN KEY (ancestor_part_code, ancestor_version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4192 (class 2606 OID 88353)
-- Name: consumable consumable_definition_id_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.consumable
    ADD CONSTRAINT consumable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES route.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4193 (class 2606 OID 88358)
-- Name: consumable consumable_descendant_part_code_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.consumable
    ADD CONSTRAINT consumable_descendant_part_code_fkey FOREIGN KEY (descendant_part_code, descendant_version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4194 (class 2606 OID 88363)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES route.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4195 (class 2606 OID 88368)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4196 (class 2606 OID 88373)
-- Name: location location_definition_id_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.location
    ADD CONSTRAINT location_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES route.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4197 (class 2606 OID 88378)
-- Name: primal primal_ancestor_part_code_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.primal
    ADD CONSTRAINT primal_ancestor_part_code_fkey FOREIGN KEY (ancestor_part_code, ancestor_version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4198 (class 2606 OID 88383)
-- Name: primal primal_definition_id_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.primal
    ADD CONSTRAINT primal_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES route.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4199 (class 2606 OID 88388)
-- Name: primal primal_descendant_part_code_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.primal
    ADD CONSTRAINT primal_descendant_part_code_fkey FOREIGN KEY (descendant_part_code, descendant_version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4200 (class 2606 OID 88393)
-- Name: information uom_base_uom_code_fkey; Type: FK CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.information
    ADD CONSTRAINT uom_base_uom_code_fkey FOREIGN KEY (base_uom_code) REFERENCES uom.information(uom_code);


-- Completed on 2018-05-22 01:11:22 EEST

--
-- PostgreSQL database dump complete
--

