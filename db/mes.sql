--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.5
-- Dumped by pg_dump version 9.6.5

-- Started on 2017-11-01 02:04:50 EET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 26 (class 2615 OID 39500)
-- Name: api; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA api;


ALTER SCHEMA api OWNER TO postgres;

--
-- TOC entry 21 (class 2615 OID 39501)
-- Name: binding; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA binding;


ALTER SCHEMA binding OWNER TO postgres;

--
-- TOC entry 12 (class 2615 OID 39502)
-- Name: changelog; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA changelog;


ALTER SCHEMA changelog OWNER TO postgres;

--
-- TOC entry 16 (class 2615 OID 39503)
-- Name: common; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA common;


ALTER SCHEMA common OWNER TO postgres;

--
-- TOC entry 4289 (class 0 OID 0)
-- Dependencies: 16
-- Name: SCHEMA common; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA common IS 'common types and functions';


--
-- TOC entry 22 (class 2615 OID 39504)
-- Name: component; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA component;


ALTER SCHEMA component OWNER TO postgres;

--
-- TOC entry 4290 (class 0 OID 0)
-- Dependencies: 22
-- Name: SCHEMA component; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA component IS 'components of ebom';


--
-- TOC entry 27 (class 2615 OID 39505)
-- Name: ebom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ebom;


ALTER SCHEMA ebom OWNER TO postgres;

--
-- TOC entry 4291 (class 0 OID 0)
-- Dependencies: 27
-- Name: SCHEMA ebom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA ebom IS 'engenering bill of materials';


--
-- TOC entry 17 (class 2615 OID 39506)
-- Name: equipment; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA equipment;


ALTER SCHEMA equipment OWNER TO postgres;

--
-- TOC entry 37 (class 2615 OID 39507)
-- Name: goal; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA goal;


ALTER SCHEMA goal OWNER TO postgres;

--
-- TOC entry 38 (class 2615 OID 39508)
-- Name: inspection; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA inspection;


ALTER SCHEMA inspection OWNER TO postgres;

--
-- TOC entry 4292 (class 0 OID 0)
-- Dependencies: 38
-- Name: SCHEMA inspection; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA inspection IS 'inspection segments';


--
-- TOC entry 29 (class 2615 OID 39509)
-- Name: inventory; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA inventory;


ALTER SCHEMA inventory OWNER TO postgres;

--
-- TOC entry 4293 (class 0 OID 0)
-- Dependencies: 29
-- Name: SCHEMA inventory; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA inventory IS 'inventory items definition';


--
-- TOC entry 11 (class 2615 OID 39510)
-- Name: maintenance; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA maintenance;


ALTER SCHEMA maintenance OWNER TO postgres;

--
-- TOC entry 13 (class 2615 OID 39511)
-- Name: material; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA material;


ALTER SCHEMA material OWNER TO postgres;

--
-- TOC entry 4294 (class 0 OID 0)
-- Dependencies: 13
-- Name: SCHEMA material; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA material IS 'materials of mbom';


--
-- TOC entry 19 (class 2615 OID 39512)
-- Name: mbom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA mbom;


ALTER SCHEMA mbom OWNER TO postgres;

--
-- TOC entry 4295 (class 0 OID 0)
-- Dependencies: 19
-- Name: SCHEMA mbom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA mbom IS 'manufacturing bill of materials';


--
-- TOC entry 10 (class 2615 OID 39513)
-- Name: movement; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA movement;


ALTER SCHEMA movement OWNER TO postgres;

--
-- TOC entry 4296 (class 0 OID 0)
-- Dependencies: 10
-- Name: SCHEMA movement; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA movement IS 'movement segments';


--
-- TOC entry 14 (class 2615 OID 39514)
-- Name: operation; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA operation;


ALTER SCHEMA operation OWNER TO postgres;

--
-- TOC entry 4297 (class 0 OID 0)
-- Dependencies: 14
-- Name: SCHEMA operation; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA operation IS 'operation segments';


--
-- TOC entry 36 (class 2615 OID 39515)
-- Name: performance; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA performance;


ALTER SCHEMA performance OWNER TO postgres;

--
-- TOC entry 15 (class 2615 OID 39516)
-- Name: personnel; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA personnel;


ALTER SCHEMA personnel OWNER TO postgres;

--
-- TOC entry 32 (class 2615 OID 39517)
-- Name: pgunit; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA pgunit;


ALTER SCHEMA pgunit OWNER TO postgres;

--
-- TOC entry 35 (class 2615 OID 39518)
-- Name: process; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA process;


ALTER SCHEMA process OWNER TO postgres;

--
-- TOC entry 4298 (class 0 OID 0)
-- Dependencies: 35
-- Name: SCHEMA process; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA process IS 'process segments';


--
-- TOC entry 31 (class 2615 OID 39519)
-- Name: product; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA product;


ALTER SCHEMA product OWNER TO postgres;

--
-- TOC entry 4299 (class 0 OID 0)
-- Dependencies: 31
-- Name: SCHEMA product; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA product IS 'product segments';


--
-- TOC entry 20 (class 2615 OID 39520)
-- Name: production; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA production;


ALTER SCHEMA production OWNER TO postgres;

--
-- TOC entry 4300 (class 0 OID 0)
-- Dependencies: 20
-- Name: SCHEMA production; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA production IS 'production segments';


--
-- TOC entry 28 (class 2615 OID 39521)
-- Name: request; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA request;


ALTER SCHEMA request OWNER TO postgres;

--
-- TOC entry 33 (class 2615 OID 39522)
-- Name: response; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA response;


ALTER SCHEMA response OWNER TO postgres;

--
-- TOC entry 39 (class 2615 OID 39523)
-- Name: schedule; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA schedule;


ALTER SCHEMA schedule OWNER TO postgres;

--
-- TOC entry 30 (class 2615 OID 39524)
-- Name: tests; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tests;


ALTER SCHEMA tests OWNER TO postgres;

--
-- TOC entry 24 (class 2615 OID 39525)
-- Name: tooling; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tooling;


ALTER SCHEMA tooling OWNER TO postgres;

--
-- TOC entry 2 (class 3079 OID 13343)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 4302 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 1 (class 3079 OID 39526)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 4303 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


--
-- TOC entry 3 (class 3079 OID 39657)
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- TOC entry 4304 (class 0 OID 0)
-- Dependencies: 3
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- TOC entry 7 (class 3079 OID 39535)
-- Name: pldbgapi; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pldbgapi WITH SCHEMA public;


--
-- TOC entry 4305 (class 0 OID 0)
-- Dependencies: 7
-- Name: EXTENSION pldbgapi; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pldbgapi IS 'server-side support for debugging PL/pgSQL functions';


--
-- TOC entry 6 (class 3079 OID 39572)
-- Name: plpgsql_check; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql_check WITH SCHEMA public;


--
-- TOC entry 4306 (class 0 OID 0)
-- Dependencies: 6
-- Name: EXTENSION plpgsql_check; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql_check IS 'extended check for plpgsql functions';


--
-- TOC entry 5 (class 3079 OID 39577)
-- Name: plprofiler; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plprofiler WITH SCHEMA public;


--
-- TOC entry 4307 (class 0 OID 0)
-- Dependencies: 5
-- Name: EXTENSION plprofiler; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plprofiler IS 'server-side support for profiling PL/pgSQL functions';


--
-- TOC entry 4 (class 3079 OID 39646)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- TOC entry 4308 (class 0 OID 0)
-- Dependencies: 4
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET search_path = common, pg_catalog;

--
-- TOC entry 909 (class 1247 OID 39833)
-- Name: component_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE component_kind AS ENUM (
    'ASSEMBLY',
    'PART',
    'BUYABLE'
);


ALTER TYPE component_kind OWNER TO postgres;

--
-- TOC entry 939 (class 1247 OID 39963)
-- Name: quantity; Type: DOMAIN; Schema: common; Owner: postgres
--

CREATE DOMAIN quantity AS numeric(20,4) DEFAULT 0
	CONSTRAINT quantity_is_positive CHECK ((VALUE >= (0)::numeric));


ALTER DOMAIN quantity OWNER TO postgres;

--
-- TOC entry 4309 (class 0 OID 0)
-- Dependencies: 939
-- Name: DOMAIN quantity; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON DOMAIN quantity IS 'quantity domain';


--
-- TOC entry 947 (class 1247 OID 39986)
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
-- TOC entry 912 (class 1247 OID 39840)
-- Name: dependency_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE dependency_kind AS ENUM (
    'NotFollow',
    'PossibleParallel',
    'NotInParallel',
    'AtStart',
    'AfterStart',
    'AfterEnd',
    'NoLaterAfterStart',
    'NoEarlierAfterStart',
    'NoLaterAfterEnd',
    'NoEarlierAfterEnd'
);


ALTER TYPE dependency_kind OWNER TO postgres;

--
-- TOC entry 977 (class 1247 OID 40016)
-- Name: dependency_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE dependency_specification AS (
	ancestor uuid,
	descendant uuid,
	depth integer
);


ALTER TYPE dependency_specification OWNER TO postgres;

--
-- TOC entry 1298 (class 1247 OID 41030)
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
-- TOC entry 915 (class 1247 OID 39862)
-- Name: document_fsmt; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE document_fsmt AS ENUM (
    'PROPOSED',
    'COMMITTED',
    'DECOMMITTED'
);


ALTER TYPE document_fsmt OWNER TO postgres;

--
-- TOC entry 941 (class 1247 OID 39966)
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
-- TOC entry 959 (class 1247 OID 39998)
-- Name: ebom_information; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE ebom_information AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	version_num integer,
	document_date date,
	curr_fsmt document_fsmt,
	document_type document_kind,
	component_spec component_specification
);


ALTER TYPE ebom_information OWNER TO postgres;

--
-- TOC entry 965 (class 1247 OID 40004)
-- Name: ebom_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE ebom_document AS (
	head ebom_information,
	body component_specification[]
);


ALTER TYPE ebom_document OWNER TO postgres;

--
-- TOC entry 950 (class 1247 OID 39989)
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
-- TOC entry 918 (class 1247 OID 39870)
-- Name: inventory_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE inventory_kind AS ENUM (
    'BUYABLE',
    'COMPOSITE',
    'CONSUMABLE',
    'PRODUCIBLE',
    'SALABLE',
    'STORABLE',
    'ASSEMBLY',
    'PART',
    'PRIMAL'
);


ALTER TYPE inventory_kind OWNER TO postgres;

--
-- TOC entry 921 (class 1247 OID 39890)
-- Name: job_order_command_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE job_order_command_kind AS ENUM (
    'Start',
    'Stop',
    'Hold',
    'Restart',
    'Abort',
    'Reset',
    'Pause',
    'Resume'
);


ALTER TYPE job_order_command_kind OWNER TO postgres;

--
-- TOC entry 924 (class 1247 OID 39908)
-- Name: material_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE material_kind AS ENUM (
    'CONSUMABLE',
    'PRODUCIBLE',
    'RAW',
    'PRIMAL'
);


ALTER TYPE material_kind OWNER TO postgres;

--
-- TOC entry 944 (class 1247 OID 39983)
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
-- TOC entry 927 (class 1247 OID 39918)
-- Name: material_use_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE material_use_kind AS ENUM (
    'CONSUMABLE',
    'PRODUCIBLE'
);


ALTER TYPE material_use_kind OWNER TO postgres;

--
-- TOC entry 962 (class 1247 OID 40001)
-- Name: mbom_information; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE mbom_information AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	version_num integer,
	document_date date,
	curr_fsmt document_fsmt,
	document_type document_kind,
	material_spec material_specification
);


ALTER TYPE mbom_information OWNER TO postgres;

--
-- TOC entry 968 (class 1247 OID 40007)
-- Name: mbom_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE mbom_document AS (
	head mbom_information,
	body material_specification[]
);


ALTER TYPE mbom_document OWNER TO postgres;

--
-- TOC entry 974 (class 1247 OID 40013)
-- Name: operation_information; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE operation_information AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	version_num integer,
	document_date date,
	curr_fsmt document_fsmt,
	document_type document_kind,
	producible_spec material_specification[]
);


ALTER TYPE operation_information OWNER TO postgres;

--
-- TOC entry 953 (class 1247 OID 39992)
-- Name: personnel_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE personnel_specification AS (
	personnel_code character varying,
	version_num integer,
	quantity quantity,
	uom_code character varying
);


ALTER TYPE personnel_specification OWNER TO postgres;

--
-- TOC entry 956 (class 1247 OID 39995)
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
-- TOC entry 971 (class 1247 OID 40010)
-- Name: operation_segment; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE operation_segment AS (
	gid uuid,
	operation_code character varying,
	material_spec material_specification[],
	personnel_spec personnel_specification[],
	equipmet_spec equipment_specification[],
	tooling_spec tooling_specification[]
);


ALTER TYPE operation_segment OWNER TO postgres;

--
-- TOC entry 980 (class 1247 OID 40019)
-- Name: operation_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE operation_document AS (
	head operation_information,
	body operation_segment[],
	deps dependency_specification[]
);


ALTER TYPE operation_document OWNER TO postgres;

--
-- TOC entry 930 (class 1247 OID 39924)
-- Name: operations_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE operations_kind AS ENUM (
    'Production',
    'Maintenance',
    'Quality',
    'Inventory',
    'Mixed',
    'Other'
);


ALTER TYPE operations_kind OWNER TO postgres;

--
-- TOC entry 933 (class 1247 OID 39938)
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
-- TOC entry 936 (class 1247 OID 39950)
-- Name: response_state_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE response_state_kind AS ENUM (
    'Ready',
    'Running',
    'Completed',
    'Aborted',
    'Holding',
    'Paused'
);


ALTER TYPE response_state_kind OWNER TO postgres;

--
-- TOC entry 482 (class 1255 OID 40030)
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
-- TOC entry 478 (class 1255 OID 40026)
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
-- TOC entry 483 (class 1255 OID 40031)
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
-- TOC entry 480 (class 1255 OID 40028)
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
-- TOC entry 475 (class 1255 OID 40023)
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
-- TOC entry 476 (class 1255 OID 40024)
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
-- TOC entry 474 (class 1255 OID 40022)
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
-- TOC entry 484 (class 1255 OID 40032)
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
-- TOC entry 481 (class 1255 OID 40029)
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
-- TOC entry 479 (class 1255 OID 40027)
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
-- TOC entry 477 (class 1255 OID 40025)
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
-- TOC entry 473 (class 1255 OID 40021)
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
-- TOC entry 472 (class 1255 OID 40020)
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
-- TOC entry 485 (class 1255 OID 40033)
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

SET search_path = pgunit, pg_catalog;

--
-- TOC entry 486 (class 1255 OID 40034)
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
-- TOC entry 487 (class 1255 OID 40035)
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
-- TOC entry 488 (class 1255 OID 40036)
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
-- TOC entry 489 (class 1255 OID 40037)
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
-- TOC entry 490 (class 1255 OID 40038)
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
-- TOC entry 491 (class 1255 OID 40039)
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
-- TOC entry 492 (class 1255 OID 40040)
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
-- TOC entry 493 (class 1255 OID 40041)
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
-- TOC entry 494 (class 1255 OID 40042)
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
-- TOC entry 495 (class 1255 OID 40043)
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
-- TOC entry 496 (class 1255 OID 40044)
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
-- TOC entry 497 (class 1255 OID 40045)
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
-- TOC entry 498 (class 1255 OID 40046)
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
-- TOC entry 499 (class 1255 OID 40047)
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
-- TOC entry 500 (class 1255 OID 40048)
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
-- TOC entry 501 (class 1255 OID 40049)
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

SET search_path = process, pg_catalog;

--
-- TOC entry 502 (class 1255 OID 40050)
-- Name: child_segment_ref_trigger(); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION child_segment_ref_trigger() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM process.segment WHERE id = NEW.child_segment_id
        ) THEN
        RAISE foreign_key_violation USING MESSAGE = FORMAT('Referenced segment id not found, segment_id:%s', NEW.child_segment_id);
    END IF;
    RETURN NEW;
END;
$$;


ALTER FUNCTION process.child_segment_ref_trigger() OWNER TO postgres;

SET search_path = production, pg_catalog;

--
-- TOC entry 503 (class 1255 OID 40051)
-- Name: child_segment_ref_trigger(); Type: FUNCTION; Schema: production; Owner: postgres
--

CREATE FUNCTION child_segment_ref_trigger() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM production.segment WHERE id = NEW.child_segment_id
        ) THEN
        RAISE foreign_key_violation USING MESSAGE = FORMAT('Referenced segment id not found, segment_id:%s', NEW.child_segment_id);
    END IF;
    RETURN NEW;
END;
$$;


ALTER FUNCTION production.child_segment_ref_trigger() OWNER TO postgres;

SET search_path = tests, pg_catalog;

--
-- TOC entry 504 (class 1255 OID 40052)
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
  TRUNCATE TABLE binding.mbom_to_operation CASCADE;
  TRUNCATE TABLE component.assembly CASCADE;
  TRUNCATE TABLE component.buyable CASCADE;
  TRUNCATE TABLE component.information CASCADE;
  TRUNCATE TABLE component.part CASCADE;
  TRUNCATE TABLE ebom.assembly CASCADE;
  TRUNCATE TABLE ebom.buyable CASCADE;
  TRUNCATE TABLE ebom.definition CASCADE;
  TRUNCATE TABLE ebom.information CASCADE;
  TRUNCATE TABLE ebom.part CASCADE;
  TRUNCATE TABLE equipment.information CASCADE;
  TRUNCATE TABLE inspection.equipment CASCADE;
  TRUNCATE TABLE inspection.personnel CASCADE;
  TRUNCATE TABLE inspection.segment CASCADE;
  TRUNCATE TABLE inventory.assembly CASCADE;
  TRUNCATE TABLE inventory.buyable CASCADE;
  TRUNCATE TABLE inventory.consumable CASCADE;
  TRUNCATE TABLE inventory.information CASCADE;
  TRUNCATE TABLE inventory.part CASCADE;
  TRUNCATE TABLE inventory.primal CASCADE;
  TRUNCATE TABLE inventory.producible CASCADE;
  TRUNCATE TABLE inventory.salable CASCADE;
  TRUNCATE TABLE inventory.storable CASCADE;
  TRUNCATE TABLE maintenance.demand CASCADE;
  TRUNCATE TABLE maintenance.request CASCADE;
  TRUNCATE TABLE maintenance.response CASCADE;
  TRUNCATE TABLE material.consumable CASCADE;
  TRUNCATE TABLE material.information CASCADE;
  TRUNCATE TABLE material.primal CASCADE;
  TRUNCATE TABLE material.producible CASCADE;
  TRUNCATE TABLE mbom.consumable CASCADE;
  TRUNCATE TABLE mbom.definition CASCADE;
  TRUNCATE TABLE mbom.information CASCADE;
  TRUNCATE TABLE mbom.primal CASCADE;
  TRUNCATE TABLE movement.equipment CASCADE;
  TRUNCATE TABLE movement.personnel CASCADE;
  TRUNCATE TABLE movement.segment CASCADE;
  TRUNCATE TABLE operation.consumable CASCADE;
  TRUNCATE TABLE operation.definition CASCADE;
  TRUNCATE TABLE operation.equipment CASCADE;
  TRUNCATE TABLE operation.material CASCADE;
  TRUNCATE TABLE operation.personnel CASCADE;
  TRUNCATE TABLE operation.primal CASCADE;
  TRUNCATE TABLE operation.producible CASCADE;
  TRUNCATE TABLE operation.segment CASCADE;
  TRUNCATE TABLE operation.tool CASCADE;
  TRUNCATE TABLE personnel.information CASCADE;
  TRUNCATE TABLE process.definition CASCADE;
  TRUNCATE TABLE process.equipment CASCADE;
  TRUNCATE TABLE process.information CASCADE;
  TRUNCATE TABLE process.personnel CASCADE;
  TRUNCATE TABLE process.segment CASCADE;
  TRUNCATE TABLE process.specification CASCADE;
  TRUNCATE TABLE product.definition CASCADE;
  TRUNCATE TABLE product.dependency CASCADE;
  TRUNCATE TABLE product.equipment CASCADE;
  TRUNCATE TABLE product.information CASCADE;
  TRUNCATE TABLE product.material CASCADE;
  TRUNCATE TABLE product.personnel CASCADE;
  TRUNCATE TABLE product.segment CASCADE;
  TRUNCATE TABLE production.equipment CASCADE;
  TRUNCATE TABLE production.personnel CASCADE;
  TRUNCATE TABLE production.segment CASCADE;
  TRUNCATE TABLE production.specification CASCADE;
  /*SELECT 'ALTER SEQUENCE ' || sequence_schema || '.' || sequence_name || ' RESTART WITH 1;' 
  FROM information_schema.sequences
  WHERE sequence_catalog = 'wms' AND sequence_schema != 'common'
  ORDER by sequence_schema, sequence_name;*/
  ALTER SEQUENCE ebom.information_id_seq RESTART WITH 1;
  ALTER SEQUENCE equipment.information_id_seq RESTART WITH 1;
  ALTER SEQUENCE inventory.information_id_seq RESTART WITH 1;
  ALTER SEQUENCE maintenance.demand_id_seq RESTART WITH 1;
  ALTER SEQUENCE maintenance.request_id_seq RESTART WITH 1;
  ALTER SEQUENCE maintenance.response_id_seq RESTART WITH 1;
  ALTER SEQUENCE mbom.information_id_seq RESTART WITH 1;
  ALTER SEQUENCE operation.definition_id_seq RESTART WITH 1;
  ALTER SEQUENCE operation.segment_id_seq RESTART WITH 1;
  ALTER SEQUENCE personnel.information_id_seq RESTART WITH 1;
  ALTER SEQUENCE process.definition_id_seq RESTART WITH 1;
  ALTER SEQUENCE process.information_id_seq RESTART WITH 1;
  ALTER SEQUENCE process.segment_id_seq RESTART WITH 1;
  ALTER SEQUENCE product.information_id_seq RESTART WITH 1;
  ALTER SEQUENCE product.segment_id_seq RESTART WITH 1;

END;
$$;


ALTER FUNCTION tests._reset_data() OWNER TO postgres;

--
-- TOC entry 505 (class 1255 OID 40053)
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
-- TOC entry 240 (class 1259 OID 40054)
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
-- TOC entry 4310 (class 0 OID 0)
-- Dependencies: 240
-- Name: TABLE information; Type: COMMENT; Schema: component; Owner: postgres
--

COMMENT ON TABLE information IS 'ebom component list';


--
-- TOC entry 241 (class 1259 OID 40062)
-- Name: assembly; Type: TABLE; Schema: component; Owner: postgres
--

CREATE TABLE assembly (
    CONSTRAINT assembly_component_type_check CHECK ((component_type = 'ASSEMBLY'::common.component_kind))
)
INHERITS (information);


ALTER TABLE assembly OWNER TO postgres;

--
-- TOC entry 4311 (class 0 OID 0)
-- Dependencies: 241
-- Name: TABLE assembly; Type: COMMENT; Schema: component; Owner: postgres
--

COMMENT ON TABLE assembly IS 'ebom assembly component';


--
-- TOC entry 242 (class 1259 OID 40071)
-- Name: buyable; Type: TABLE; Schema: component; Owner: postgres
--

CREATE TABLE buyable (
    CONSTRAINT buyable_component_type_check CHECK ((component_type = 'BUYABLE'::common.component_kind)),
    CONSTRAINT buyable_version_num_check CHECK ((version_num = 1))
)
INHERITS (information);


ALTER TABLE buyable OWNER TO postgres;

--
-- TOC entry 4312 (class 0 OID 0)
-- Dependencies: 242
-- Name: TABLE buyable; Type: COMMENT; Schema: component; Owner: postgres
--

COMMENT ON TABLE buyable IS 'ebom buyable component';


--
-- TOC entry 243 (class 1259 OID 40081)
-- Name: part; Type: TABLE; Schema: component; Owner: postgres
--

CREATE TABLE part (
    CONSTRAINT part_component_type_check CHECK ((component_type = 'PART'::common.component_kind))
)
INHERITS (information);


ALTER TABLE part OWNER TO postgres;

--
-- TOC entry 4313 (class 0 OID 0)
-- Dependencies: 243
-- Name: TABLE part; Type: COMMENT; Schema: component; Owner: postgres
--

COMMENT ON TABLE part IS 'ebom part component';


SET search_path = ebom, pg_catalog;

--
-- TOC entry 244 (class 1259 OID 40090)
-- Name: component; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE component (
    information_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    qty numeric(10,4) NOT NULL,
    component_type common.component_kind NOT NULL
);


ALTER TABLE component OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 40096)
-- Name: assembly; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE assembly (
    CONSTRAINT assembly_component_type_check CHECK ((component_type = 'ASSEMBLY'::common.component_kind))
)
INHERITS (component);


ALTER TABLE assembly OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 40103)
-- Name: buyable; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE buyable (
    CONSTRAINT buyable_component_type_check CHECK ((component_type = 'BUYABLE'::common.component_kind))
)
INHERITS (component);


ALTER TABLE buyable OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 40110)
-- Name: definition; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE definition (
    id bigint NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    prev_fsmt common.document_fsmt,
    prev_fsmt_date timestamp with time zone,
    curr_fsmt common.document_fsmt DEFAULT 'PROPOSED'::common.document_fsmt NOT NULL,
    curr_fsmt_date timestamp with time zone DEFAULT now() NOT NULL,
    information_id bigint
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 40119)
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
-- TOC entry 4314 (class 0 OID 0)
-- Dependencies: 248
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: ebom; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 249 (class 1259 OID 40121)
-- Name: information; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 40128)
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
-- TOC entry 4315 (class 0 OID 0)
-- Dependencies: 250
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: ebom; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 251 (class 1259 OID 40130)
-- Name: part; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE part (
    CONSTRAINT part_component_type_check CHECK ((component_type = 'PART'::common.component_kind))
)
INHERITS (component);


ALTER TABLE part OWNER TO postgres;

SET search_path = equipment, pg_catalog;

--
-- TOC entry 252 (class 1259 OID 40137)
-- Name: information; Type: TABLE; Schema: equipment; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    descr character varying,
    location_id character varying,
    hierarhy_scope character varying,
    published_date date
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 4316 (class 0 OID 0)
-- Dependencies: 252
-- Name: TABLE information; Type: COMMENT; Schema: equipment; Owner: postgres
--

COMMENT ON TABLE information IS 'equipment information';


--
-- TOC entry 253 (class 1259 OID 40143)
-- Name: information_id_seq; Type: SEQUENCE; Schema: equipment; Owner: postgres
--

CREATE SEQUENCE information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE information_id_seq OWNER TO postgres;

--
-- TOC entry 4317 (class 0 OID 0)
-- Dependencies: 253
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: equipment; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


SET search_path = goal, pg_catalog;

--
-- TOC entry 254 (class 1259 OID 40145)
-- Name: information; Type: TABLE; Schema: goal; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    descr character varying,
    location_id character varying,
    hierarhy_scope character varying,
    published_date date
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 4318 (class 0 OID 0)
-- Dependencies: 254
-- Name: TABLE information; Type: COMMENT; Schema: goal; Owner: postgres
--

COMMENT ON TABLE information IS 'goal information';


--
-- TOC entry 255 (class 1259 OID 40151)
-- Name: information_id_seq; Type: SEQUENCE; Schema: goal; Owner: postgres
--

CREATE SEQUENCE information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE information_id_seq OWNER TO postgres;

--
-- TOC entry 4319 (class 0 OID 0)
-- Dependencies: 255
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: goal; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


SET search_path = process, pg_catalog;

--
-- TOC entry 256 (class 1259 OID 40153)
-- Name: equipment; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE equipment (
    segment_id bigint NOT NULL,
    class_id character varying NOT NULL,
    descr character varying,
    qty numeric(10,2),
    qty_uom character varying
);


ALTER TABLE equipment OWNER TO postgres;

SET search_path = inspection, pg_catalog;

--
-- TOC entry 257 (class 1259 OID 40159)
-- Name: equipment; Type: TABLE; Schema: inspection; Owner: postgres
--

CREATE TABLE equipment (
)
INHERITS (process.equipment);


ALTER TABLE equipment OWNER TO postgres;

SET search_path = process, pg_catalog;

--
-- TOC entry 258 (class 1259 OID 40165)
-- Name: personnel; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE personnel (
    segment_id bigint NOT NULL,
    class_id character varying NOT NULL,
    descr character varying,
    qty numeric(10,2),
    qty_uom character varying
);


ALTER TABLE personnel OWNER TO postgres;

SET search_path = inspection, pg_catalog;

--
-- TOC entry 259 (class 1259 OID 40171)
-- Name: personnel; Type: TABLE; Schema: inspection; Owner: postgres
--

CREATE TABLE personnel (
)
INHERITS (process.personnel);


ALTER TABLE personnel OWNER TO postgres;

SET search_path = process, pg_catalog;

--
-- TOC entry 260 (class 1259 OID 40177)
-- Name: segment; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE segment (
    id bigint NOT NULL,
    descr character varying,
    segment_kind common.process_segment_kind,
    location_id character varying,
    hierarhy_scope character varying,
    published_date date,
    duration interval
);


ALTER TABLE segment OWNER TO postgres;

--
-- TOC entry 4320 (class 0 OID 0)
-- Dependencies: 260
-- Name: TABLE segment; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE segment IS 'segments to specify process';


SET search_path = inspection, pg_catalog;

--
-- TOC entry 261 (class 1259 OID 40183)
-- Name: segment; Type: TABLE; Schema: inspection; Owner: postgres
--

CREATE TABLE segment (
    CONSTRAINT segment_segment_kind_check CHECK ((segment_kind = 'INSPECTION'::common.process_segment_kind))
)
INHERITS (process.segment);


ALTER TABLE segment OWNER TO postgres;

SET search_path = inventory, pg_catalog;

--
-- TOC entry 262 (class 1259 OID 40190)
-- Name: information; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    good_code character varying,
    inventory_type common.inventory_kind
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 4321 (class 0 OID 0)
-- Dependencies: 262
-- Name: TABLE information; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE information IS 'inventory item list';


--
-- TOC entry 263 (class 1259 OID 40197)
-- Name: assembly; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE assembly (
)
INHERITS (information);


ALTER TABLE assembly OWNER TO postgres;

--
-- TOC entry 4322 (class 0 OID 0)
-- Dependencies: 263
-- Name: TABLE assembly; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE assembly IS 'ebom assembly component';


--
-- TOC entry 264 (class 1259 OID 40204)
-- Name: buyable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE buyable (
)
INHERITS (information);


ALTER TABLE buyable OWNER TO postgres;

--
-- TOC entry 4323 (class 0 OID 0)
-- Dependencies: 264
-- Name: TABLE buyable; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE buyable IS 'ebom buyable component';


--
-- TOC entry 265 (class 1259 OID 40211)
-- Name: consumable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE consumable (
)
INHERITS (information);


ALTER TABLE consumable OWNER TO postgres;

--
-- TOC entry 4324 (class 0 OID 0)
-- Dependencies: 265
-- Name: TABLE consumable; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE consumable IS 'mbom consumable component';


--
-- TOC entry 266 (class 1259 OID 40218)
-- Name: information_id_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE information_id_seq OWNER TO postgres;

--
-- TOC entry 4325 (class 0 OID 0)
-- Dependencies: 266
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: inventory; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 267 (class 1259 OID 40220)
-- Name: part; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE part (
)
INHERITS (information);


ALTER TABLE part OWNER TO postgres;

--
-- TOC entry 4326 (class 0 OID 0)
-- Dependencies: 267
-- Name: TABLE part; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE part IS 'ebom part component';


--
-- TOC entry 268 (class 1259 OID 40227)
-- Name: primal; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE primal (
)
INHERITS (information);


ALTER TABLE primal OWNER TO postgres;

--
-- TOC entry 4327 (class 0 OID 0)
-- Dependencies: 268
-- Name: TABLE primal; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE primal IS 'mbom primal material component';


--
-- TOC entry 269 (class 1259 OID 40234)
-- Name: producible; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE producible (
)
INHERITS (information);


ALTER TABLE producible OWNER TO postgres;

--
-- TOC entry 4328 (class 0 OID 0)
-- Dependencies: 269
-- Name: TABLE producible; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE producible IS 'mbom producible component';


--
-- TOC entry 270 (class 1259 OID 40241)
-- Name: salable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE salable (
)
INHERITS (information);


ALTER TABLE salable OWNER TO postgres;

--
-- TOC entry 271 (class 1259 OID 40248)
-- Name: storable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE storable (
)
INHERITS (information);


ALTER TABLE storable OWNER TO postgres;

SET search_path = maintenance, pg_catalog;

--
-- TOC entry 272 (class 1259 OID 40255)
-- Name: demand; Type: TABLE; Schema: maintenance; Owner: postgres
--

CREATE TABLE demand (
    id bigint NOT NULL
);


ALTER TABLE demand OWNER TO postgres;

--
-- TOC entry 4329 (class 0 OID 0)
-- Dependencies: 272
-- Name: TABLE demand; Type: COMMENT; Schema: maintenance; Owner: postgres
--

COMMENT ON TABLE demand IS 'aka order';


--
-- TOC entry 273 (class 1259 OID 40258)
-- Name: demand_id_seq; Type: SEQUENCE; Schema: maintenance; Owner: postgres
--

CREATE SEQUENCE demand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE demand_id_seq OWNER TO postgres;

--
-- TOC entry 4330 (class 0 OID 0)
-- Dependencies: 273
-- Name: demand_id_seq; Type: SEQUENCE OWNED BY; Schema: maintenance; Owner: postgres
--

ALTER SEQUENCE demand_id_seq OWNED BY demand.id;


--
-- TOC entry 274 (class 1259 OID 40260)
-- Name: request; Type: TABLE; Schema: maintenance; Owner: postgres
--

CREATE TABLE request (
    id bigint NOT NULL
);


ALTER TABLE request OWNER TO postgres;

--
-- TOC entry 275 (class 1259 OID 40263)
-- Name: request_id_seq; Type: SEQUENCE; Schema: maintenance; Owner: postgres
--

CREATE SEQUENCE request_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE request_id_seq OWNER TO postgres;

--
-- TOC entry 4331 (class 0 OID 0)
-- Dependencies: 275
-- Name: request_id_seq; Type: SEQUENCE OWNED BY; Schema: maintenance; Owner: postgres
--

ALTER SEQUENCE request_id_seq OWNED BY request.id;


--
-- TOC entry 276 (class 1259 OID 40265)
-- Name: response; Type: TABLE; Schema: maintenance; Owner: postgres
--

CREATE TABLE response (
    id bigint NOT NULL
);


ALTER TABLE response OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 40268)
-- Name: response_id_seq; Type: SEQUENCE; Schema: maintenance; Owner: postgres
--

CREATE SEQUENCE response_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE response_id_seq OWNER TO postgres;

--
-- TOC entry 4332 (class 0 OID 0)
-- Dependencies: 277
-- Name: response_id_seq; Type: SEQUENCE OWNED BY; Schema: maintenance; Owner: postgres
--

ALTER SEQUENCE response_id_seq OWNED BY response.id;


SET search_path = material, pg_catalog;

--
-- TOC entry 278 (class 1259 OID 40270)
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
-- TOC entry 4333 (class 0 OID 0)
-- Dependencies: 278
-- Name: TABLE information; Type: COMMENT; Schema: material; Owner: postgres
--

COMMENT ON TABLE information IS 'mbom component list';


--
-- TOC entry 279 (class 1259 OID 40278)
-- Name: consumable; Type: TABLE; Schema: material; Owner: postgres
--

CREATE TABLE consumable (
    CONSTRAINT consumable_material_type_check CHECK ((material_type = 'CONSUMABLE'::common.material_kind))
)
INHERITS (information);


ALTER TABLE consumable OWNER TO postgres;

--
-- TOC entry 4334 (class 0 OID 0)
-- Dependencies: 279
-- Name: TABLE consumable; Type: COMMENT; Schema: material; Owner: postgres
--

COMMENT ON TABLE consumable IS 'mbom consumable component';


--
-- TOC entry 280 (class 1259 OID 40287)
-- Name: primal; Type: TABLE; Schema: material; Owner: postgres
--

CREATE TABLE primal (
    CONSTRAINT primal_material_type_check CHECK ((material_type = 'PRIMAL'::common.material_kind)),
    CONSTRAINT primal_version_num_check CHECK ((version_num = 1))
)
INHERITS (information);


ALTER TABLE primal OWNER TO postgres;

--
-- TOC entry 4335 (class 0 OID 0)
-- Dependencies: 280
-- Name: TABLE primal; Type: COMMENT; Schema: material; Owner: postgres
--

COMMENT ON TABLE primal IS 'mbom primal component';


--
-- TOC entry 281 (class 1259 OID 40297)
-- Name: producible; Type: TABLE; Schema: material; Owner: postgres
--

CREATE TABLE producible (
    CONSTRAINT producible_material_type_check CHECK ((material_type = 'PRODUCIBLE'::common.material_kind))
)
INHERITS (information);


ALTER TABLE producible OWNER TO postgres;

--
-- TOC entry 4336 (class 0 OID 0)
-- Dependencies: 281
-- Name: TABLE producible; Type: COMMENT; Schema: material; Owner: postgres
--

COMMENT ON TABLE producible IS 'mbom producible component';


SET search_path = mbom, pg_catalog;

--
-- TOC entry 282 (class 1259 OID 40306)
-- Name: material; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE material (
    definition_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    qty numeric(10,4) NOT NULL,
    material_type common.material_kind NOT NULL,
    qty_uom character varying DEFAULT 'pcs'::character varying NOT NULL
);


ALTER TABLE material OWNER TO postgres;

--
-- TOC entry 283 (class 1259 OID 40313)
-- Name: consumable; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE consumable (
    CONSTRAINT consumable_component_type_check CHECK ((material_type = 'CONSUMABLE'::common.material_kind))
)
INHERITS (material);


ALTER TABLE consumable OWNER TO postgres;

--
-- TOC entry 284 (class 1259 OID 40321)
-- Name: definition; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE definition (
    id bigint NOT NULL,
    version_num integer NOT NULL,
    display_name character varying,
    published_date date DEFAULT now() NOT NULL,
    information_id bigint
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 285 (class 1259 OID 40328)
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
-- TOC entry 4337 (class 0 OID 0)
-- Dependencies: 285
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: mbom; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 286 (class 1259 OID 40330)
-- Name: information; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    display_name character varying,
    published_date date DEFAULT now() NOT NULL
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 287 (class 1259 OID 40337)
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
-- TOC entry 4338 (class 0 OID 0)
-- Dependencies: 287
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: mbom; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 288 (class 1259 OID 40339)
-- Name: primal; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE primal (
    CONSTRAINT primal_component_type_check CHECK ((material_type = 'PRIMAL'::common.material_kind))
)
INHERITS (material);


ALTER TABLE primal OWNER TO postgres;

SET search_path = movement, pg_catalog;

--
-- TOC entry 289 (class 1259 OID 40347)
-- Name: equipment; Type: TABLE; Schema: movement; Owner: postgres
--

CREATE TABLE equipment (
)
INHERITS (process.equipment);


ALTER TABLE equipment OWNER TO postgres;

--
-- TOC entry 290 (class 1259 OID 40353)
-- Name: personnel; Type: TABLE; Schema: movement; Owner: postgres
--

CREATE TABLE personnel (
)
INHERITS (process.personnel);


ALTER TABLE personnel OWNER TO postgres;

--
-- TOC entry 291 (class 1259 OID 40359)
-- Name: segment; Type: TABLE; Schema: movement; Owner: postgres
--

CREATE TABLE segment (
    CONSTRAINT segment_segment_kind_check CHECK ((segment_kind = 'MOVEMENT'::common.process_segment_kind))
)
INHERITS (process.segment);


ALTER TABLE segment OWNER TO postgres;

SET search_path = operation, pg_catalog;

--
-- TOC entry 292 (class 1259 OID 40366)
-- Name: material; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE material (
    segment_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    consumed_qty numeric(10,4) DEFAULT 1 NOT NULL,
    consumed_uom character varying DEFAULT 'pcs'::character varying NOT NULL,
    rationing_qty numeric(10,4) DEFAULT 1 NOT NULL,
    rationing_uom character varying DEFAULT 'pcs'::character varying NOT NULL,
    serial_num integer DEFAULT 1 NOT NULL
);


ALTER TABLE material OWNER TO postgres;

--
-- TOC entry 293 (class 1259 OID 40377)
-- Name: consumable; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE consumable (
)
INHERITS (material);


ALTER TABLE consumable OWNER TO postgres;

--
-- TOC entry 294 (class 1259 OID 40388)
-- Name: definition; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE definition (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    descr character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    version_num integer DEFAULT 1 NOT NULL,
    information_id bigint
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 295 (class 1259 OID 40397)
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
-- TOC entry 4339 (class 0 OID 0)
-- Dependencies: 295
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 296 (class 1259 OID 40399)
-- Name: equipment; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE equipment (
    segment_id bigint NOT NULL,
    equipment_code character varying NOT NULL,
    serial_num integer DEFAULT 1 NOT NULL
);


ALTER TABLE equipment OWNER TO postgres;

--
-- TOC entry 297 (class 1259 OID 40406)
-- Name: information; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    display_name character varying,
    published_date date DEFAULT now() NOT NULL
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 298 (class 1259 OID 40413)
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
-- TOC entry 4340 (class 0 OID 0)
-- Dependencies: 298
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 299 (class 1259 OID 40415)
-- Name: personnel; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE personnel (
    segment_id bigint NOT NULL,
    personnel_code character varying NOT NULL,
    serial_num integer DEFAULT 1 NOT NULL,
    simultaneously_qty integer DEFAULT 1 NOT NULL,
    batch_qty numeric(10,4) DEFAULT 1 NOT NULL,
    time_per_piece_ratio numeric(10,4) DEFAULT 1 NOT NULL,
    standard_setup_time interval DEFAULT '00:01:00'::interval NOT NULL,
    standard_piece_time interval DEFAULT '00:01:00'::interval NOT NULL,
    workers_qty integer DEFAULT 1 NOT NULL,
    rationing_qty numeric(10,4) DEFAULT 1 NOT NULL,
    rationing_uom character varying DEFAULT 'pcs'::character varying NOT NULL
);


ALTER TABLE personnel OWNER TO postgres;

--
-- TOC entry 300 (class 1259 OID 40430)
-- Name: primal; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE primal (
)
INHERITS (material);


ALTER TABLE primal OWNER TO postgres;

--
-- TOC entry 301 (class 1259 OID 40441)
-- Name: producible; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE producible (
    definition_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    produced_qty numeric(10,4) DEFAULT 1 NOT NULL,
    produced_uom character varying DEFAULT 'pcs'::character varying NOT NULL,
    serial_num integer DEFAULT 1 NOT NULL
);


ALTER TABLE producible OWNER TO postgres;

--
-- TOC entry 302 (class 1259 OID 40450)
-- Name: segment; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE segment (
    id bigint NOT NULL,
    definition_id bigint NOT NULL,
    operation_code character varying NOT NULL,
    serial_num integer DEFAULT 1 NOT NULL
);


ALTER TABLE segment OWNER TO postgres;

--
-- TOC entry 303 (class 1259 OID 40457)
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
-- TOC entry 4341 (class 0 OID 0)
-- Dependencies: 303
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


--
-- TOC entry 304 (class 1259 OID 40459)
-- Name: tooling; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE tooling (
    segment_id bigint NOT NULL,
    tool_code character varying NOT NULL,
    serial_num integer DEFAULT 1 NOT NULL
);


ALTER TABLE tooling OWNER TO postgres;

SET search_path = performance, pg_catalog;

--
-- TOC entry 305 (class 1259 OID 40466)
-- Name: information; Type: TABLE; Schema: performance; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    descr character varying,
    location_id character varying,
    hierarhy_scope character varying,
    published_date date
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 4342 (class 0 OID 0)
-- Dependencies: 305
-- Name: TABLE information; Type: COMMENT; Schema: performance; Owner: postgres
--

COMMENT ON TABLE information IS 'performance information';


--
-- TOC entry 306 (class 1259 OID 40472)
-- Name: information_id_seq; Type: SEQUENCE; Schema: performance; Owner: postgres
--

CREATE SEQUENCE information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE information_id_seq OWNER TO postgres;

--
-- TOC entry 4343 (class 0 OID 0)
-- Dependencies: 306
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: performance; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


SET search_path = personnel, pg_catalog;

--
-- TOC entry 307 (class 1259 OID 40474)
-- Name: information; Type: TABLE; Schema: personnel; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    descr character varying,
    location_id character varying,
    hierarhy_scope character varying,
    published_date date
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 4344 (class 0 OID 0)
-- Dependencies: 307
-- Name: TABLE information; Type: COMMENT; Schema: personnel; Owner: postgres
--

COMMENT ON TABLE information IS 'personnel information';


--
-- TOC entry 308 (class 1259 OID 40480)
-- Name: information_id_seq; Type: SEQUENCE; Schema: personnel; Owner: postgres
--

CREATE SEQUENCE information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE information_id_seq OWNER TO postgres;

--
-- TOC entry 4345 (class 0 OID 0)
-- Dependencies: 308
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: personnel; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


SET search_path = process, pg_catalog;

--
-- TOC entry 309 (class 1259 OID 40482)
-- Name: definition; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE definition (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 4346 (class 0 OID 0)
-- Dependencies: 309
-- Name: TABLE definition; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE definition IS 'definition of specific process';


--
-- TOC entry 310 (class 1259 OID 40488)
-- Name: definition_id_seq; Type: SEQUENCE; Schema: process; Owner: postgres
--

CREATE SEQUENCE definition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE definition_id_seq OWNER TO postgres;

--
-- TOC entry 4347 (class 0 OID 0)
-- Dependencies: 310
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 311 (class 1259 OID 40490)
-- Name: information; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    descr character varying,
    location_id character varying,
    hierarhy_scope character varying,
    published_date date
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 4348 (class 0 OID 0)
-- Dependencies: 311
-- Name: TABLE information; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE information IS 'list of process segments';


--
-- TOC entry 312 (class 1259 OID 40496)
-- Name: information_id_seq; Type: SEQUENCE; Schema: process; Owner: postgres
--

CREATE SEQUENCE information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE information_id_seq OWNER TO postgres;

--
-- TOC entry 4349 (class 0 OID 0)
-- Dependencies: 312
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 313 (class 1259 OID 40498)
-- Name: segment_id_seq; Type: SEQUENCE; Schema: process; Owner: postgres
--

CREATE SEQUENCE segment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE segment_id_seq OWNER TO postgres;

--
-- TOC entry 4350 (class 0 OID 0)
-- Dependencies: 313
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


--
-- TOC entry 314 (class 1259 OID 40500)
-- Name: specification; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE specification (
    parent_segment_id bigint NOT NULL,
    child_segment_id bigint NOT NULL,
    qty integer DEFAULT 1 NOT NULL,
    CONSTRAINT specification_check CHECK ((parent_segment_id <> child_segment_id))
);


ALTER TABLE specification OWNER TO postgres;

SET search_path = product, pg_catalog;

--
-- TOC entry 315 (class 1259 OID 40505)
-- Name: definition; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE definition (
    information_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 316 (class 1259 OID 40511)
-- Name: dependency; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE dependency (
    parent_segment_id bigint NOT NULL,
    child_segment_id bigint NOT NULL,
    qty integer DEFAULT 1 NOT NULL,
    dependency_type common.dependency_kind,
    CONSTRAINT dependency_check CHECK ((parent_segment_id <> child_segment_id))
);


ALTER TABLE dependency OWNER TO postgres;

--
-- TOC entry 317 (class 1259 OID 40516)
-- Name: equipment; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE equipment (
    segment_id bigint NOT NULL,
    class_id character varying NOT NULL,
    descr character varying,
    qty numeric(10,2),
    qty_uom character varying
);


ALTER TABLE equipment OWNER TO postgres;

--
-- TOC entry 318 (class 1259 OID 40522)
-- Name: information; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    display_name character varying,
    published_date date DEFAULT now() NOT NULL
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 319 (class 1259 OID 40529)
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
-- TOC entry 4351 (class 0 OID 0)
-- Dependencies: 319
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 320 (class 1259 OID 40531)
-- Name: material; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE material (
    segment_id bigint NOT NULL,
    class_id character varying NOT NULL,
    descr character varying,
    qty numeric(10,2),
    qty_uom character varying,
    material_use common.material_use_kind
);


ALTER TABLE material OWNER TO postgres;

--
-- TOC entry 321 (class 1259 OID 40537)
-- Name: personnel; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE personnel (
    segment_id bigint NOT NULL,
    class_id character varying NOT NULL,
    descr character varying,
    qty numeric(10,2),
    qty_uom character varying
);


ALTER TABLE personnel OWNER TO postgres;

--
-- TOC entry 322 (class 1259 OID 40543)
-- Name: segment; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE segment (
    id bigint NOT NULL,
    descr character varying,
    location_id character varying,
    hierarhy_scope character varying,
    published_date date,
    duration interval
);


ALTER TABLE segment OWNER TO postgres;

--
-- TOC entry 4352 (class 0 OID 0)
-- Dependencies: 322
-- Name: TABLE segment; Type: COMMENT; Schema: product; Owner: postgres
--

COMMENT ON TABLE segment IS 'segments to specify product';


--
-- TOC entry 323 (class 1259 OID 40549)
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
-- TOC entry 4353 (class 0 OID 0)
-- Dependencies: 323
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


SET search_path = production, pg_catalog;

--
-- TOC entry 324 (class 1259 OID 40551)
-- Name: equipment; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE equipment (
)
INHERITS (process.equipment);


ALTER TABLE equipment OWNER TO postgres;

--
-- TOC entry 325 (class 1259 OID 40557)
-- Name: personnel; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE personnel (
)
INHERITS (process.personnel);


ALTER TABLE personnel OWNER TO postgres;

--
-- TOC entry 326 (class 1259 OID 40563)
-- Name: segment; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE segment (
    segment_class character varying,
    CONSTRAINT segment_segment_kind_check CHECK ((segment_kind = 'PRODUCTION'::common.process_segment_kind))
)
INHERITS (process.segment);


ALTER TABLE segment OWNER TO postgres;

--
-- TOC entry 327 (class 1259 OID 40570)
-- Name: specification; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE specification (
    CONSTRAINT specification_check CHECK ((parent_segment_id <> child_segment_id))
)
INHERITS (process.specification);


ALTER TABLE specification OWNER TO postgres;

SET search_path = request, pg_catalog;

--
-- TOC entry 328 (class 1259 OID 40575)
-- Name: information; Type: TABLE; Schema: request; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    descr character varying,
    location_id character varying,
    hierarhy_scope character varying,
    published_date date
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 4354 (class 0 OID 0)
-- Dependencies: 328
-- Name: TABLE information; Type: COMMENT; Schema: request; Owner: postgres
--

COMMENT ON TABLE information IS 'request information';


--
-- TOC entry 329 (class 1259 OID 40581)
-- Name: information_id_seq; Type: SEQUENCE; Schema: request; Owner: postgres
--

CREATE SEQUENCE information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE information_id_seq OWNER TO postgres;

--
-- TOC entry 4355 (class 0 OID 0)
-- Dependencies: 329
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: request; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


SET search_path = response, pg_catalog;

--
-- TOC entry 330 (class 1259 OID 40583)
-- Name: information; Type: TABLE; Schema: response; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    descr character varying,
    location_id character varying,
    hierarhy_scope character varying,
    published_date date
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 4356 (class 0 OID 0)
-- Dependencies: 330
-- Name: TABLE information; Type: COMMENT; Schema: response; Owner: postgres
--

COMMENT ON TABLE information IS 'response information';


--
-- TOC entry 331 (class 1259 OID 40589)
-- Name: information_id_seq; Type: SEQUENCE; Schema: response; Owner: postgres
--

CREATE SEQUENCE information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE information_id_seq OWNER TO postgres;

--
-- TOC entry 4357 (class 0 OID 0)
-- Dependencies: 331
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: response; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


SET search_path = schedule, pg_catalog;

--
-- TOC entry 332 (class 1259 OID 40591)
-- Name: information; Type: TABLE; Schema: schedule; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    descr character varying,
    location_id character varying,
    hierarhy_scope character varying,
    published_date date
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 4358 (class 0 OID 0)
-- Dependencies: 332
-- Name: TABLE information; Type: COMMENT; Schema: schedule; Owner: postgres
--

COMMENT ON TABLE information IS 'schedule information';


--
-- TOC entry 333 (class 1259 OID 40597)
-- Name: information_id_seq; Type: SEQUENCE; Schema: schedule; Owner: postgres
--

CREATE SEQUENCE information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE information_id_seq OWNER TO postgres;

--
-- TOC entry 4359 (class 0 OID 0)
-- Dependencies: 333
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: schedule; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


SET search_path = tests, pg_catalog;

--
-- TOC entry 334 (class 1259 OID 40599)
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
-- TOC entry 335 (class 1259 OID 40604)
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
-- TOC entry 336 (class 1259 OID 40609)
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

SET search_path = tooling, pg_catalog;

--
-- TOC entry 337 (class 1259 OID 40614)
-- Name: information; Type: TABLE; Schema: tooling; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    descr character varying,
    location_id character varying,
    hierarhy_scope character varying,
    published_date date
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 4360 (class 0 OID 0)
-- Dependencies: 337
-- Name: TABLE information; Type: COMMENT; Schema: tooling; Owner: postgres
--

COMMENT ON TABLE information IS 'tool information';


--
-- TOC entry 338 (class 1259 OID 40620)
-- Name: information_id_seq; Type: SEQUENCE; Schema: tooling; Owner: postgres
--

CREATE SEQUENCE information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE information_id_seq OWNER TO postgres;

--
-- TOC entry 4361 (class 0 OID 0)
-- Dependencies: 338
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: tooling; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


SET search_path = component, pg_catalog;

--
-- TOC entry 3753 (class 2604 OID 40622)
-- Name: assembly version_num; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY assembly ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3754 (class 2604 OID 40623)
-- Name: assembly published_date; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY assembly ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3756 (class 2604 OID 40624)
-- Name: buyable version_num; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY buyable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3757 (class 2604 OID 40625)
-- Name: buyable published_date; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY buyable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3760 (class 2604 OID 40626)
-- Name: part version_num; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY part ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3761 (class 2604 OID 40627)
-- Name: part published_date; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY part ALTER COLUMN published_date SET DEFAULT now();


SET search_path = ebom, pg_catalog;

--
-- TOC entry 3768 (class 2604 OID 40628)
-- Name: definition id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3770 (class 2604 OID 40629)
-- Name: information id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


SET search_path = equipment, pg_catalog;

--
-- TOC entry 3772 (class 2604 OID 40630)
-- Name: information id; Type: DEFAULT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


SET search_path = goal, pg_catalog;

--
-- TOC entry 3773 (class 2604 OID 40631)
-- Name: information id; Type: DEFAULT; Schema: goal; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


SET search_path = inspection, pg_catalog;

--
-- TOC entry 3775 (class 2604 OID 40632)
-- Name: segment id; Type: DEFAULT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('process.segment_id_seq'::regclass);


SET search_path = inventory, pg_catalog;

--
-- TOC entry 3779 (class 2604 OID 40633)
-- Name: assembly id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY assembly ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3780 (class 2604 OID 40634)
-- Name: assembly gid; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY assembly ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3781 (class 2604 OID 40635)
-- Name: buyable id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY buyable ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3782 (class 2604 OID 40636)
-- Name: buyable gid; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY buyable ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3783 (class 2604 OID 40637)
-- Name: consumable id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3784 (class 2604 OID 40638)
-- Name: consumable gid; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3778 (class 2604 OID 40639)
-- Name: information id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3785 (class 2604 OID 40640)
-- Name: part id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY part ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3786 (class 2604 OID 40641)
-- Name: part gid; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY part ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3787 (class 2604 OID 40642)
-- Name: primal id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3788 (class 2604 OID 40643)
-- Name: primal gid; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3789 (class 2604 OID 40644)
-- Name: producible id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY producible ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3790 (class 2604 OID 40645)
-- Name: producible gid; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY producible ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3791 (class 2604 OID 40646)
-- Name: salable id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3792 (class 2604 OID 40647)
-- Name: salable gid; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3793 (class 2604 OID 40648)
-- Name: storable id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY storable ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3794 (class 2604 OID 40649)
-- Name: storable gid; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY storable ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


SET search_path = maintenance, pg_catalog;

--
-- TOC entry 3795 (class 2604 OID 40650)
-- Name: demand id; Type: DEFAULT; Schema: maintenance; Owner: postgres
--

ALTER TABLE ONLY demand ALTER COLUMN id SET DEFAULT nextval('demand_id_seq'::regclass);


--
-- TOC entry 3796 (class 2604 OID 40651)
-- Name: request id; Type: DEFAULT; Schema: maintenance; Owner: postgres
--

ALTER TABLE ONLY request ALTER COLUMN id SET DEFAULT nextval('request_id_seq'::regclass);


--
-- TOC entry 3797 (class 2604 OID 40652)
-- Name: response id; Type: DEFAULT; Schema: maintenance; Owner: postgres
--

ALTER TABLE ONLY response ALTER COLUMN id SET DEFAULT nextval('response_id_seq'::regclass);


SET search_path = material, pg_catalog;

--
-- TOC entry 3800 (class 2604 OID 40653)
-- Name: consumable version_num; Type: DEFAULT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3801 (class 2604 OID 40654)
-- Name: consumable published_date; Type: DEFAULT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3803 (class 2604 OID 40655)
-- Name: primal version_num; Type: DEFAULT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3804 (class 2604 OID 40656)
-- Name: primal published_date; Type: DEFAULT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3807 (class 2604 OID 40657)
-- Name: producible version_num; Type: DEFAULT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY producible ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3808 (class 2604 OID 40658)
-- Name: producible published_date; Type: DEFAULT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY producible ALTER COLUMN published_date SET DEFAULT now();


SET search_path = mbom, pg_catalog;

--
-- TOC entry 3811 (class 2604 OID 40659)
-- Name: consumable qty_uom; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN qty_uom SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3814 (class 2604 OID 40660)
-- Name: definition id; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3816 (class 2604 OID 40661)
-- Name: information id; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3817 (class 2604 OID 40662)
-- Name: primal qty_uom; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN qty_uom SET DEFAULT 'pcs'::character varying;


SET search_path = movement, pg_catalog;

--
-- TOC entry 3819 (class 2604 OID 40663)
-- Name: segment id; Type: DEFAULT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('process.segment_id_seq'::regclass);


SET search_path = operation, pg_catalog;

--
-- TOC entry 3826 (class 2604 OID 40664)
-- Name: consumable consumed_qty; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN consumed_qty SET DEFAULT 1;


--
-- TOC entry 3827 (class 2604 OID 40665)
-- Name: consumable consumed_uom; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN consumed_uom SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3828 (class 2604 OID 40666)
-- Name: consumable rationing_qty; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3829 (class 2604 OID 40667)
-- Name: consumable rationing_uom; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN rationing_uom SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3830 (class 2604 OID 40668)
-- Name: consumable serial_num; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN serial_num SET DEFAULT 1;


--
-- TOC entry 3834 (class 2604 OID 40669)
-- Name: definition id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3837 (class 2604 OID 40670)
-- Name: information id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3847 (class 2604 OID 40671)
-- Name: primal consumed_qty; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN consumed_qty SET DEFAULT 1;


--
-- TOC entry 3848 (class 2604 OID 40672)
-- Name: primal consumed_uom; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN consumed_uom SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3849 (class 2604 OID 40673)
-- Name: primal rationing_qty; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3850 (class 2604 OID 40674)
-- Name: primal rationing_uom; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN rationing_uom SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3851 (class 2604 OID 40675)
-- Name: primal serial_num; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN serial_num SET DEFAULT 1;


--
-- TOC entry 3856 (class 2604 OID 40676)
-- Name: segment id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


SET search_path = performance, pg_catalog;

--
-- TOC entry 3858 (class 2604 OID 40677)
-- Name: information id; Type: DEFAULT; Schema: performance; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


SET search_path = personnel, pg_catalog;

--
-- TOC entry 3859 (class 2604 OID 40678)
-- Name: information id; Type: DEFAULT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


SET search_path = process, pg_catalog;

--
-- TOC entry 3860 (class 2604 OID 40679)
-- Name: definition id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3861 (class 2604 OID 40680)
-- Name: information id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3774 (class 2604 OID 40681)
-- Name: segment id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


SET search_path = product, pg_catalog;

--
-- TOC entry 3867 (class 2604 OID 40682)
-- Name: information id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3868 (class 2604 OID 40683)
-- Name: segment id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


SET search_path = production, pg_catalog;

--
-- TOC entry 3869 (class 2604 OID 40684)
-- Name: segment id; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('process.segment_id_seq'::regclass);


--
-- TOC entry 3871 (class 2604 OID 40685)
-- Name: specification qty; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY specification ALTER COLUMN qty SET DEFAULT 1;


SET search_path = request, pg_catalog;

--
-- TOC entry 3873 (class 2604 OID 40686)
-- Name: information id; Type: DEFAULT; Schema: request; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


SET search_path = response, pg_catalog;

--
-- TOC entry 3874 (class 2604 OID 40687)
-- Name: information id; Type: DEFAULT; Schema: response; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


SET search_path = schedule, pg_catalog;

--
-- TOC entry 3875 (class 2604 OID 40688)
-- Name: information id; Type: DEFAULT; Schema: schedule; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


SET search_path = tooling, pg_catalog;

--
-- TOC entry 3876 (class 2604 OID 40689)
-- Name: information id; Type: DEFAULT; Schema: tooling; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


SET search_path = component, pg_catalog;

--
-- TOC entry 4189 (class 0 OID 40062)
-- Dependencies: 241
-- Data for Name: assembly; Type: TABLE DATA; Schema: component; Owner: postgres
--

INSERT INTO assembly VALUES ('11.31.050-001', 1, '11с31п-50х40', '2017-10-21', 'ASSEMBLY');
INSERT INTO assembly VALUES ('11.32.050-001', 1, '11с32п-50х40', '2017-10-21', 'ASSEMBLY');
INSERT INTO assembly VALUES ('11.33.050-001', 1, '11с33п-50х40', '2017-10-21', 'ASSEMBLY');
INSERT INTO assembly VALUES ('80.31.050-001', 1, 'Крпс-089,0х109,0', '2017-10-21', 'ASSEMBLY');
INSERT INTO assembly VALUES ('82.31.050-001', 1, 'Рчк-250х20', '2017-10-21', 'ASSEMBLY');


--
-- TOC entry 4190 (class 0 OID 40071)
-- Dependencies: 242
-- Data for Name: buyable; Type: TABLE DATA; Schema: component; Owner: postgres
--

INSERT INTO buyable VALUES ('Гайка М12', 1, 'Гайка-М12', '2017-10-21', 'BUYABLE');


--
-- TOC entry 4188 (class 0 OID 40054)
-- Dependencies: 240
-- Data for Name: information; Type: TABLE DATA; Schema: component; Owner: postgres
--



--
-- TOC entry 4191 (class 0 OID 40081)
-- Dependencies: 243
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
-- TOC entry 4193 (class 0 OID 40096)
-- Dependencies: 245
-- Data for Name: assembly; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO assembly VALUES (1, '80.31.050-001', 1, 1.0000, 'ASSEMBLY');
INSERT INTO assembly VALUES (1, '82.31.050-001', 1, 1.0000, 'ASSEMBLY');
INSERT INTO assembly VALUES (2, '80.31.050-001', 1, 1.0000, 'ASSEMBLY');
INSERT INTO assembly VALUES (2, '82.31.050-001', 1, 1.0000, 'ASSEMBLY');
INSERT INTO assembly VALUES (3, '80.31.050-001', 1, 1.0000, 'ASSEMBLY');
INSERT INTO assembly VALUES (3, '82.31.050-001', 1, 1.0000, 'ASSEMBLY');


--
-- TOC entry 4194 (class 0 OID 40103)
-- Dependencies: 246
-- Data for Name: buyable; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO buyable VALUES (1, 'Гайка М12', 1, 1.0000, 'BUYABLE');
INSERT INTO buyable VALUES (2, 'Гайка М12', 1, 1.0000, 'BUYABLE');
INSERT INTO buyable VALUES (3, 'Гайка М12', 1, 1.0000, 'BUYABLE');


--
-- TOC entry 4192 (class 0 OID 40090)
-- Dependencies: 244
-- Data for Name: component; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 4195 (class 0 OID 40110)
-- Dependencies: 247
-- Data for Name: definition; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO definition VALUES (1, '11с31п-50х40: definition', '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21 20:55:30.985148+03', 1);
INSERT INTO definition VALUES (2, '11с32п-50х40: definition', '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21 20:55:30.985148+03', 2);
INSERT INTO definition VALUES (3, '11с33п-50х40: definition', '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21 20:55:30.985148+03', 3);
INSERT INTO definition VALUES (4, 'Крпс-089,0х109,0: definition', '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21 20:55:30.985148+03', 4);
INSERT INTO definition VALUES (5, 'Рчк-250х20: definition', '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21 20:55:30.985148+03', 5);


--
-- TOC entry 4362 (class 0 OID 0)
-- Dependencies: 248
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: ebom; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 5, true);


--
-- TOC entry 4197 (class 0 OID 40121)
-- Dependencies: 249
-- Data for Name: information; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO information VALUES (1, '11.31.050-001', 1, '11с31п-50х40: information', '2017-10-23');
INSERT INTO information VALUES (2, '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23');
INSERT INTO information VALUES (3, '11.33.050-001', 1, '11с33п-50х40: information', '2017-10-23');
INSERT INTO information VALUES (4, '80.31.050-001', 1, 'Крпс-089,0х109,0: information', '2017-10-23');
INSERT INTO information VALUES (5, '82.31.050-001', 1, 'Рчк-250х20: information', '2017-10-23');


--
-- TOC entry 4363 (class 0 OID 0)
-- Dependencies: 250
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: ebom; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 5, true);


--
-- TOC entry 4199 (class 0 OID 40130)
-- Dependencies: 251
-- Data for Name: part; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO part VALUES (1, '40.31.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (1, '50.01.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (1, '51.01.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (1, '52.01.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (1, '53.01.004-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (1, '60.01.050-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (1, '61.01.050-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (1, '70.01.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (1, '70.04.020-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (1, '72.01.009-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (2, '22.25.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (2, '40.32.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (2, '50.01.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (2, '51.01.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (2, '52.01.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (2, '53.01.004-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (2, '60.01.050-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (2, '61.01.050-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (2, '70.01.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (2, '70.04.020-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (2, '72.01.009-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (3, '22.16.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (3, '40.33.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (3, '50.01.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (3, '51.01.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (3, '52.01.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (3, '53.01.004-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (3, '60.01.050-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (3, '61.01.050-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (3, '70.01.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (3, '70.04.020-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (3, '72.01.009-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (4, '41.31.050-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (4, '42.01.050-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (5, '55.31.050-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (5, '42.02.022-001', 1, 1.0000, 'PART');


SET search_path = equipment, pg_catalog;

--
-- TOC entry 4200 (class 0 OID 40137)
-- Dependencies: 252
-- Data for Name: information; Type: TABLE DATA; Schema: equipment; Owner: postgres
--



--
-- TOC entry 4364 (class 0 OID 0)
-- Dependencies: 253
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: equipment; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, false);


SET search_path = goal, pg_catalog;

--
-- TOC entry 4202 (class 0 OID 40145)
-- Dependencies: 254
-- Data for Name: information; Type: TABLE DATA; Schema: goal; Owner: postgres
--



--
-- TOC entry 4365 (class 0 OID 0)
-- Dependencies: 255
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: goal; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, false);


SET search_path = inspection, pg_catalog;

--
-- TOC entry 4205 (class 0 OID 40159)
-- Dependencies: 257
-- Data for Name: equipment; Type: TABLE DATA; Schema: inspection; Owner: postgres
--



--
-- TOC entry 4207 (class 0 OID 40171)
-- Dependencies: 259
-- Data for Name: personnel; Type: TABLE DATA; Schema: inspection; Owner: postgres
--



--
-- TOC entry 4209 (class 0 OID 40183)
-- Dependencies: 261
-- Data for Name: segment; Type: TABLE DATA; Schema: inspection; Owner: postgres
--



SET search_path = inventory, pg_catalog;

--
-- TOC entry 4211 (class 0 OID 40197)
-- Dependencies: 263
-- Data for Name: assembly; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4212 (class 0 OID 40204)
-- Dependencies: 264
-- Data for Name: buyable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4213 (class 0 OID 40211)
-- Dependencies: 265
-- Data for Name: consumable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4210 (class 0 OID 40190)
-- Dependencies: 262
-- Data for Name: information; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4366 (class 0 OID 0)
-- Dependencies: 266
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, false);


--
-- TOC entry 4215 (class 0 OID 40220)
-- Dependencies: 267
-- Data for Name: part; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4216 (class 0 OID 40227)
-- Dependencies: 268
-- Data for Name: primal; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4217 (class 0 OID 40234)
-- Dependencies: 269
-- Data for Name: producible; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4218 (class 0 OID 40241)
-- Dependencies: 270
-- Data for Name: salable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4219 (class 0 OID 40248)
-- Dependencies: 271
-- Data for Name: storable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



SET search_path = maintenance, pg_catalog;

--
-- TOC entry 4220 (class 0 OID 40255)
-- Dependencies: 272
-- Data for Name: demand; Type: TABLE DATA; Schema: maintenance; Owner: postgres
--



--
-- TOC entry 4367 (class 0 OID 0)
-- Dependencies: 273
-- Name: demand_id_seq; Type: SEQUENCE SET; Schema: maintenance; Owner: postgres
--

SELECT pg_catalog.setval('demand_id_seq', 1, false);


--
-- TOC entry 4222 (class 0 OID 40260)
-- Dependencies: 274
-- Data for Name: request; Type: TABLE DATA; Schema: maintenance; Owner: postgres
--



--
-- TOC entry 4368 (class 0 OID 0)
-- Dependencies: 275
-- Name: request_id_seq; Type: SEQUENCE SET; Schema: maintenance; Owner: postgres
--

SELECT pg_catalog.setval('request_id_seq', 1, false);


--
-- TOC entry 4224 (class 0 OID 40265)
-- Dependencies: 276
-- Data for Name: response; Type: TABLE DATA; Schema: maintenance; Owner: postgres
--



--
-- TOC entry 4369 (class 0 OID 0)
-- Dependencies: 277
-- Name: response_id_seq; Type: SEQUENCE SET; Schema: maintenance; Owner: postgres
--

SELECT pg_catalog.setval('response_id_seq', 1, false);


SET search_path = material, pg_catalog;

--
-- TOC entry 4227 (class 0 OID 40278)
-- Dependencies: 279
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
-- TOC entry 4226 (class 0 OID 40270)
-- Dependencies: 278
-- Data for Name: information; Type: TABLE DATA; Schema: material; Owner: postgres
--



--
-- TOC entry 4228 (class 0 OID 40287)
-- Dependencies: 280
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
-- TOC entry 4229 (class 0 OID 40297)
-- Dependencies: 281
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
-- TOC entry 4231 (class 0 OID 40313)
-- Dependencies: 283
-- Data for Name: consumable; Type: TABLE DATA; Schema: mbom; Owner: postgres
--

INSERT INTO consumable VALUES (21, '40.31.050-001', 1, 2.0000, 'CONSUMABLE', 'pcs');
INSERT INTO consumable VALUES (21, '50.01.050-001', 1, 2.0000, 'CONSUMABLE', 'pcs');
INSERT INTO consumable VALUES (21, '51.01.050-001', 1, 2.0000, 'CONSUMABLE', 'pcs');
INSERT INTO consumable VALUES (21, '52.01.050-001', 1, 2.0000, 'CONSUMABLE', 'pcs');
INSERT INTO consumable VALUES (21, '53.01.004-001', 1, 1.0000, 'CONSUMABLE', 'pcs');
INSERT INTO consumable VALUES (21, '60.01.050-001', 1, 1.0000, 'CONSUMABLE', 'pcs');
INSERT INTO consumable VALUES (21, '61.01.050-001', 1, 1.0000, 'CONSUMABLE', 'pcs');
INSERT INTO consumable VALUES (21, '70.01.050-001', 1, 2.0000, 'CONSUMABLE', 'pcs');
INSERT INTO consumable VALUES (21, '70.04.020-001', 1, 1.0000, 'CONSUMABLE', 'pcs');
INSERT INTO consumable VALUES (21, '72.01.009-001', 1, 2.0000, 'CONSUMABLE', 'pcs');
INSERT INTO consumable VALUES (21, '80.31.050-001', 1, 1.0000, 'CONSUMABLE', 'pcs');
INSERT INTO consumable VALUES (21, '82.31.050-001', 1, 1.0000, 'CONSUMABLE', 'pcs');
INSERT INTO consumable VALUES (21, 'Гайка М12', 1, 1.0000, 'CONSUMABLE', 'pcs');


--
-- TOC entry 4232 (class 0 OID 40321)
-- Dependencies: 284
-- Data for Name: definition; Type: TABLE DATA; Schema: mbom; Owner: postgres
--

INSERT INTO definition VALUES (42, 2, 'Втлк-050,0х039,0: definition#2', '2017-10-23', 8);
INSERT INTO definition VALUES (8, 1, 'Втлк-050,0х039,0: definition#1', '2017-10-22', 8);
INSERT INTO definition VALUES (43, 2, 'ШП-068,0х052,5: definition#2', '2017-10-23', 35);
INSERT INTO definition VALUES (44, 2, 'Крпс-089,0х109,0: definition#2', '2017-10-23', 38);
INSERT INTO definition VALUES (1, 1, 'КТ33-50х40: definition', '2017-10-22', 1);
INSERT INTO definition VALUES (2, 1, 'КТ32-50х40: definition', '2017-10-22', 2);
INSERT INTO definition VALUES (3, 1, 'Птрб-057,0х126,0: definition', '2017-10-22', 3);
INSERT INTO definition VALUES (4, 1, 'Птрб-057,0х074,0: definition', '2017-10-22', 4);
INSERT INTO definition VALUES (5, 1, 'Птрб-057,0х054,0: definition', '2017-10-22', 5);
INSERT INTO definition VALUES (6, 1, 'Крпс-089,0х109,0: definition', '2017-10-22', 6);
INSERT INTO definition VALUES (7, 1, 'Ббшк-022,0х044,0: definition', '2017-10-22', 7);
INSERT INTO definition VALUES (9, 1, 'ШП-068,0х052,5: definition', '2017-10-22', 9);
INSERT INTO definition VALUES (10, 1, 'Пржн-050,6х042,0: definition', '2017-10-22', 10);
INSERT INTO definition VALUES (11, 1, 'Штк-013,3х075,0: definition', '2017-10-22', 11);
INSERT INTO definition VALUES (12, 1, 'Шйб-051,0х042,6: definition', '2017-10-22', 12);
INSERT INTO definition VALUES (13, 1, 'Ф4-051,5х041,7х11,0: definition', '2017-10-22', 13);
INSERT INTO definition VALUES (14, 1, 'Кршк-ПП-50: definition', '2017-10-22', 14);
INSERT INTO definition VALUES (15, 1, 'Зглш-ПП-50: definition', '2017-10-22', 15);
INSERT INTO definition VALUES (16, 1, 'Рчк-250х20: definition', '2017-10-22', 16);
INSERT INTO definition VALUES (17, 1, 'Штфт-4: definition', '2017-10-22', 17);
INSERT INTO definition VALUES (18, 1, 'Клц-20: definition', '2017-10-22', 18);
INSERT INTO definition VALUES (19, 1, 'Клц-009: definition', '2017-10-22', 19);
INSERT INTO definition VALUES (20, 1, 'Втлк-Р-50х18: definition', '2017-10-22', 20);
INSERT INTO definition VALUES (21, 1, '11с31п-50х40: definition', '2017-10-22', 21);
INSERT INTO definition VALUES (22, 1, '11с32п-50х40: definition', '2017-10-22', 22);
INSERT INTO definition VALUES (23, 1, '11с33п-50х40: definition', '2017-10-22', 23);
INSERT INTO definition VALUES (24, 1, 'Крпс-089,0х109,0: definition', '2017-10-22', 24);
INSERT INTO definition VALUES (25, 1, 'Рчк-250х20: definition', '2017-10-22', 25);
INSERT INTO definition VALUES (26, 1, 'Штфт-004,0х012,0: definition', '2017-10-22', 26);
INSERT INTO definition VALUES (27, 1, 'Птрб-057,0х126,0: definition', '2017-10-22', 27);
INSERT INTO definition VALUES (28, 1, 'Рчк-250х20: definition', '2017-10-22', 28);
INSERT INTO definition VALUES (29, 1, 'Птрб-057,0х074,0: definition', '2017-10-22', 29);
INSERT INTO definition VALUES (30, 1, 'Крпс-089,0х109,0: definition', '2017-10-22', 30);
INSERT INTO definition VALUES (31, 1, 'ШП-068,0х052,5: definition', '2017-10-22', 31);
INSERT INTO definition VALUES (32, 1, 'КТ32-50х40: definition', '2017-10-22', 32);
INSERT INTO definition VALUES (33, 1, 'Птрб-057,0х054,0: definition', '2017-10-22', 33);
INSERT INTO definition VALUES (34, 1, 'Пржн-050,6х042,0: definition', '2017-10-22', 34);
INSERT INTO definition VALUES (36, 1, 'ШП-068,0х052,5: definition', '2017-10-22', 36);
INSERT INTO definition VALUES (37, 1, 'Крпс-089,0х109,0: definition', '2017-10-22', 37);
INSERT INTO definition VALUES (39, 1, 'ШП-068,0х052,5: definition', '2017-10-22', 39);
INSERT INTO definition VALUES (40, 1, 'КТ33-50х40: definition', '2017-10-22', 40);
INSERT INTO definition VALUES (35, 1, 'ШП-068,0х052,5: definition#1', '2017-10-22', 35);
INSERT INTO definition VALUES (38, 1, 'Крпс-089,0х109,0: definition#1', '2017-10-22', 38);


--
-- TOC entry 4370 (class 0 OID 0)
-- Dependencies: 285
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: mbom; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 44, true);


--
-- TOC entry 4234 (class 0 OID 40330)
-- Dependencies: 286
-- Data for Name: information; Type: TABLE DATA; Schema: mbom; Owner: postgres
--

INSERT INTO information VALUES (1, '22.16.050-001', 1, 'КТ33-50х40: information', '2017-10-22');
INSERT INTO information VALUES (2, '22.25.050-001', 1, 'КТ32-50х40: information', '2017-10-22');
INSERT INTO information VALUES (3, '40.31.050-001', 1, 'Птрб-057,0х126,0: information', '2017-10-22');
INSERT INTO information VALUES (4, '40.32.050-001', 1, 'Птрб-057,0х074,0: information', '2017-10-22');
INSERT INTO information VALUES (5, '40.33.050-001', 1, 'Птрб-057,0х054,0: information', '2017-10-22');
INSERT INTO information VALUES (6, '41.31.050-001', 1, 'Крпс-089,0х109,0: information', '2017-10-22');
INSERT INTO information VALUES (7, '42.01.050-001', 1, 'Ббшк-022,0х044,0: information', '2017-10-22');
INSERT INTO information VALUES (8, '50.01.050-001', 1, 'Втлк-050,0х039,0: information', '2017-10-22');
INSERT INTO information VALUES (9, '60.01.050-001', 1, 'ШП-068,0х052,5: information', '2017-10-22');
INSERT INTO information VALUES (10, '51.01.050-001', 1, 'Пржн-050,6х042,0: information', '2017-10-22');
INSERT INTO information VALUES (11, '61.01.050-001', 1, 'Штк-013,3х075,0: information', '2017-10-22');
INSERT INTO information VALUES (12, '52.01.050-001', 1, 'Шйб-051,0х042,6: information', '2017-10-22');
INSERT INTO information VALUES (13, '70.01.050-001', 1, 'Ф4-051,5х041,7х11,0: information', '2017-10-22');
INSERT INTO information VALUES (14, '71.02.050-001', 1, 'Кршк-ПП-50: information', '2017-10-22');
INSERT INTO information VALUES (15, '71.03.050-001', 1, 'Зглш-ПП-50: information', '2017-10-22');
INSERT INTO information VALUES (16, '55.31.050-001', 1, 'Рчк-250х20: information', '2017-10-22');
INSERT INTO information VALUES (17, '53.01.004-001', 1, 'Штфт-4: information', '2017-10-22');
INSERT INTO information VALUES (18, '70.04.020-001', 1, 'Клц-20: information', '2017-10-22');
INSERT INTO information VALUES (19, '72.01.009-001', 1, 'Клц-009: information', '2017-10-22');
INSERT INTO information VALUES (20, '42.02.022-001', 1, 'Втлк-Р-50х18: information', '2017-10-22');
INSERT INTO information VALUES (21, '11.31.050-001', 1, '11с31п-50х40: information', '2017-10-22');
INSERT INTO information VALUES (22, '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-22');
INSERT INTO information VALUES (23, '11.33.050-001', 1, '11с33п-50х40: information', '2017-10-22');
INSERT INTO information VALUES (24, '80.31.050-001', 1, 'Крпс-089,0х109,0: information', '2017-10-22');
INSERT INTO information VALUES (25, '82.31.050-001', 1, 'Рчк-250х20: information', '2017-10-22');
INSERT INTO information VALUES (26, '53.01.004-001.010', 1, 'Штфт-004,0х012,0: information', '2017-10-22');
INSERT INTO information VALUES (27, '40.31.050-001.010', 1, 'Птрб-057,0х126,0: information', '2017-10-22');
INSERT INTO information VALUES (28, '82.31.050-001.010', 1, 'Рчк-250х20: information', '2017-10-22');
INSERT INTO information VALUES (29, '40.32.050-001.010', 1, 'Птрб-057,0х074,0: information', '2017-10-22');
INSERT INTO information VALUES (30, '80.31.050-001.010', 1, 'Крпс-089,0х109,0: information', '2017-10-22');
INSERT INTO information VALUES (31, '60.01.050-001.020', 1, 'ШП-068,0х052,5: information', '2017-10-22');
INSERT INTO information VALUES (32, '22.25.050-001.030', 1, 'КТ32-50х40: information', '2017-10-22');
INSERT INTO information VALUES (33, '40.33.050-001.010', 1, 'Птрб-057,0х054,0: information', '2017-10-22');
INSERT INTO information VALUES (34, '51.01.050-001.010', 1, 'Пржн-050,6х042,0: information', '2017-10-22');
INSERT INTO information VALUES (35, '60.01.050-001.010', 1, 'ШП-068,0х052,5: information', '2017-10-22');
INSERT INTO information VALUES (36, '60.01.050-001.030', 1, 'ШП-068,0х052,5: information', '2017-10-22');
INSERT INTO information VALUES (37, '41.31.050-001.010', 1, 'Крпс-089,0х109,0: information', '2017-10-22');
INSERT INTO information VALUES (38, '41.31.050-001.020', 1, 'Крпс-089,0х109,0: information', '2017-10-22');
INSERT INTO information VALUES (39, '60.01.050-001.011', 1, 'ШП-068,0х052,5: information', '2017-10-22');
INSERT INTO information VALUES (40, '22.16.050-001.030', 1, 'КТ33-50х40: information', '2017-10-22');


--
-- TOC entry 4371 (class 0 OID 0)
-- Dependencies: 287
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: mbom; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, false);


--
-- TOC entry 4230 (class 0 OID 40306)
-- Dependencies: 282
-- Data for Name: material; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 4236 (class 0 OID 40339)
-- Dependencies: 288
-- Data for Name: primal; Type: TABLE DATA; Schema: mbom; Owner: postgres
--

INSERT INTO primal VALUES (32, 'Квд-080х080-ст3ПС', 1, 3.4000, 'PRIMAL', 'кг');
INSERT INTO primal VALUES (7, 'Крг-022-ст20', 1, 51.0000, 'PRIMAL', 'мм');
INSERT INTO primal VALUES (20, 'Крг-022-ст20', 1, 18.0000, 'PRIMAL', 'мм');
INSERT INTO primal VALUES (11, 'Крг-016-ст20Х13', 1, 81.0000, 'PRIMAL', 'мм');
INSERT INTO primal VALUES (26, 'Крг-004,0-ст45', 1, 14.0000, 'PRIMAL', 'мм');
INSERT INTO primal VALUES (8, 'Лст-000,8-ст08Х17', 1, 0.0000, 'PRIMAL', 'кг');
INSERT INTO primal VALUES (12, 'Лст-003,0-ст3', 1, 0.0800, 'PRIMAL', 'кг');
INSERT INTO primal VALUES (39, 'Лст-004,4-ст08Х17', 1, 0.4000, 'PRIMAL', 'кг');
INSERT INTO primal VALUES (42, 'Лст-001,0-ст08Х17', 1, 0.0300, 'PRIMAL', 'кг');
INSERT INTO primal VALUES (34, 'Лст-001,2-ст65Г', 1, 0.0000, 'PRIMAL', 'кг');
INSERT INTO primal VALUES (43, 'Трб-068,0х04,0-ст20Х13', 1, 65.0000, 'PRIMAL', 'мм');
INSERT INTO primal VALUES (14, 'ПЕ 15803-020', 1, 0.0100, 'PRIMAL', 'кг');
INSERT INTO primal VALUES (15, 'ПЕ 15803-020', 1, 0.0100, 'PRIMAL', 'кг');
INSERT INTO primal VALUES (16, 'Плс-020х4-ст3', 1, 0.1500, 'PRIMAL', 'кг');
INSERT INTO primal VALUES (27, 'Трб-057,0х03,5-ст20-Ш', 1, 130.0000, 'PRIMAL', 'мм');
INSERT INTO primal VALUES (29, 'Трб-057,0х03,5-ст20-Ш', 1, 78.0000, 'PRIMAL', 'мм');
INSERT INTO primal VALUES (33, 'Трб-057,0х03,5-ст20-Ш', 1, 58.0000, 'PRIMAL', 'мм');
INSERT INTO primal VALUES (38, 'Трб-089,0х03,0-ст20-Ш', 1, 115.0000, 'PRIMAL', 'мм');
INSERT INTO primal VALUES (35, 'Трб-068,0х03,5-ст20Х13', 1, 65.0000, 'PRIMAL', 'мм');
INSERT INTO primal VALUES (13, 'Ф-4', 1, 15.6000, 'PRIMAL', 'г');
INSERT INTO primal VALUES (18, 'Ф-4', 1, 0.0000, 'PRIMAL', 'кг');
INSERT INTO primal VALUES (44, 'Трб-089,0х03,5-ст20-Ш', 1, 115.0000, 'PRIMAL', 'мм');


SET search_path = movement, pg_catalog;

--
-- TOC entry 4237 (class 0 OID 40347)
-- Dependencies: 289
-- Data for Name: equipment; Type: TABLE DATA; Schema: movement; Owner: postgres
--



--
-- TOC entry 4238 (class 0 OID 40353)
-- Dependencies: 290
-- Data for Name: personnel; Type: TABLE DATA; Schema: movement; Owner: postgres
--



--
-- TOC entry 4239 (class 0 OID 40359)
-- Dependencies: 291
-- Data for Name: segment; Type: TABLE DATA; Schema: movement; Owner: postgres
--



SET search_path = operation, pg_catalog;

--
-- TOC entry 4241 (class 0 OID 40377)
-- Dependencies: 293
-- Data for Name: consumable; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 4242 (class 0 OID 40388)
-- Dependencies: 294
-- Data for Name: definition; Type: TABLE DATA; Schema: operation; Owner: postgres
--

INSERT INTO definition VALUES (1, '81ce5c76-b827-11e7-9511-d4bed939923a', 'operation #1', '2017-10-23', 1, 1);
INSERT INTO definition VALUES (2, '868fe84c-b827-11e7-9512-d4bed939923a', 'operation #2', '2017-10-23', 1, 2);
INSERT INTO definition VALUES (3, '8a177408-b827-11e7-9513-d4bed939923a', 'operation #3', '2017-10-23', 1, 3);
INSERT INTO definition VALUES (4, '8dd62c1a-b827-11e7-9514-d4bed939923a', 'operation #4', '2017-10-23', 1, 4);


--
-- TOC entry 4372 (class 0 OID 0)
-- Dependencies: 295
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 4, true);


--
-- TOC entry 4244 (class 0 OID 40399)
-- Dependencies: 296
-- Data for Name: equipment; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 4245 (class 0 OID 40406)
-- Dependencies: 297
-- Data for Name: information; Type: TABLE DATA; Schema: operation; Owner: postgres
--

INSERT INTO information VALUES (1, 'operation #1', '2017-10-27');
INSERT INTO information VALUES (2, 'operation #2', '2017-10-27');
INSERT INTO information VALUES (3, 'operation #3', '2017-10-27');
INSERT INTO information VALUES (4, 'operation #4', '2017-10-27');


--
-- TOC entry 4373 (class 0 OID 0)
-- Dependencies: 298
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 4, true);


--
-- TOC entry 4240 (class 0 OID 40366)
-- Dependencies: 292
-- Data for Name: material; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 4247 (class 0 OID 40415)
-- Dependencies: 299
-- Data for Name: personnel; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 4248 (class 0 OID 40430)
-- Dependencies: 300
-- Data for Name: primal; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 4249 (class 0 OID 40441)
-- Dependencies: 301
-- Data for Name: producible; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 4250 (class 0 OID 40450)
-- Dependencies: 302
-- Data for Name: segment; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 4374 (class 0 OID 0)
-- Dependencies: 303
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 1, false);


--
-- TOC entry 4252 (class 0 OID 40459)
-- Dependencies: 304
-- Data for Name: tooling; Type: TABLE DATA; Schema: operation; Owner: postgres
--



SET search_path = performance, pg_catalog;

--
-- TOC entry 4253 (class 0 OID 40466)
-- Dependencies: 305
-- Data for Name: information; Type: TABLE DATA; Schema: performance; Owner: postgres
--



--
-- TOC entry 4375 (class 0 OID 0)
-- Dependencies: 306
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: performance; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, false);


SET search_path = personnel, pg_catalog;

--
-- TOC entry 4255 (class 0 OID 40474)
-- Dependencies: 307
-- Data for Name: information; Type: TABLE DATA; Schema: personnel; Owner: postgres
--



--
-- TOC entry 4376 (class 0 OID 0)
-- Dependencies: 308
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: personnel; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, false);


SET search_path = process, pg_catalog;

--
-- TOC entry 4257 (class 0 OID 40482)
-- Dependencies: 309
-- Data for Name: definition; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4377 (class 0 OID 0)
-- Dependencies: 310
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 1, false);


--
-- TOC entry 4204 (class 0 OID 40153)
-- Dependencies: 256
-- Data for Name: equipment; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4259 (class 0 OID 40490)
-- Dependencies: 311
-- Data for Name: information; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4378 (class 0 OID 0)
-- Dependencies: 312
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, false);


--
-- TOC entry 4206 (class 0 OID 40165)
-- Dependencies: 258
-- Data for Name: personnel; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4208 (class 0 OID 40177)
-- Dependencies: 260
-- Data for Name: segment; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4379 (class 0 OID 0)
-- Dependencies: 313
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 1, false);


--
-- TOC entry 4262 (class 0 OID 40500)
-- Dependencies: 314
-- Data for Name: specification; Type: TABLE DATA; Schema: process; Owner: postgres
--



SET search_path = product, pg_catalog;

--
-- TOC entry 4263 (class 0 OID 40505)
-- Dependencies: 315
-- Data for Name: definition; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4264 (class 0 OID 40511)
-- Dependencies: 316
-- Data for Name: dependency; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4265 (class 0 OID 40516)
-- Dependencies: 317
-- Data for Name: equipment; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4266 (class 0 OID 40522)
-- Dependencies: 318
-- Data for Name: information; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4380 (class 0 OID 0)
-- Dependencies: 319
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, false);


--
-- TOC entry 4268 (class 0 OID 40531)
-- Dependencies: 320
-- Data for Name: material; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4269 (class 0 OID 40537)
-- Dependencies: 321
-- Data for Name: personnel; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4270 (class 0 OID 40543)
-- Dependencies: 322
-- Data for Name: segment; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4381 (class 0 OID 0)
-- Dependencies: 323
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 1, false);


SET search_path = production, pg_catalog;

--
-- TOC entry 4272 (class 0 OID 40551)
-- Dependencies: 324
-- Data for Name: equipment; Type: TABLE DATA; Schema: production; Owner: postgres
--



--
-- TOC entry 4273 (class 0 OID 40557)
-- Dependencies: 325
-- Data for Name: personnel; Type: TABLE DATA; Schema: production; Owner: postgres
--



--
-- TOC entry 4274 (class 0 OID 40563)
-- Dependencies: 326
-- Data for Name: segment; Type: TABLE DATA; Schema: production; Owner: postgres
--



--
-- TOC entry 4275 (class 0 OID 40570)
-- Dependencies: 327
-- Data for Name: specification; Type: TABLE DATA; Schema: production; Owner: postgres
--



SET search_path = request, pg_catalog;

--
-- TOC entry 4276 (class 0 OID 40575)
-- Dependencies: 328
-- Data for Name: information; Type: TABLE DATA; Schema: request; Owner: postgres
--



--
-- TOC entry 4382 (class 0 OID 0)
-- Dependencies: 329
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: request; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, false);


SET search_path = response, pg_catalog;

--
-- TOC entry 4278 (class 0 OID 40583)
-- Dependencies: 330
-- Data for Name: information; Type: TABLE DATA; Schema: response; Owner: postgres
--



--
-- TOC entry 4383 (class 0 OID 0)
-- Dependencies: 331
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: response; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, false);


SET search_path = schedule, pg_catalog;

--
-- TOC entry 4280 (class 0 OID 40591)
-- Dependencies: 332
-- Data for Name: information; Type: TABLE DATA; Schema: schedule; Owner: postgres
--



--
-- TOC entry 4384 (class 0 OID 0)
-- Dependencies: 333
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: schedule; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, false);


SET search_path = tooling, pg_catalog;

--
-- TOC entry 4282 (class 0 OID 40614)
-- Dependencies: 337
-- Data for Name: information; Type: TABLE DATA; Schema: tooling; Owner: postgres
--



--
-- TOC entry 4385 (class 0 OID 0)
-- Dependencies: 338
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: tooling; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, false);


SET search_path = component, pg_catalog;

--
-- TOC entry 3880 (class 2606 OID 40691)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3882 (class 2606 OID 40693)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3878 (class 2606 OID 40695)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4386 (class 0 OID 0)
-- Dependencies: 3878
-- Name: CONSTRAINT information_pkey ON information; Type: COMMENT; Schema: component; Owner: postgres
--

COMMENT ON CONSTRAINT information_pkey ON information IS 'may be part_code + version_num + component_type';


--
-- TOC entry 3884 (class 2606 OID 40697)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_pkey PRIMARY KEY (part_code, version_num);


SET search_path = ebom, pg_catalog;

--
-- TOC entry 3888 (class 2606 OID 40699)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 3890 (class 2606 OID 40701)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 3886 (class 2606 OID 40703)
-- Name: component component_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY component
    ADD CONSTRAINT component_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 3892 (class 2606 OID 40705)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3894 (class 2606 OID 40707)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3896 (class 2606 OID 40709)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_pkey PRIMARY KEY (information_id, part_code);


SET search_path = equipment, pg_catalog;

--
-- TOC entry 3898 (class 2606 OID 40711)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


SET search_path = goal, pg_catalog;

--
-- TOC entry 3900 (class 2606 OID 40713)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: goal; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


SET search_path = inspection, pg_catalog;

--
-- TOC entry 3904 (class 2606 OID 40715)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3908 (class 2606 OID 40717)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3912 (class 2606 OID 40719)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


SET search_path = inventory, pg_catalog;

--
-- TOC entry 3916 (class 2606 OID 40721)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (id);


--
-- TOC entry 3918 (class 2606 OID 40723)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (id);


--
-- TOC entry 3920 (class 2606 OID 40725)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (id);


--
-- TOC entry 3914 (class 2606 OID 40727)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3922 (class 2606 OID 40729)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_pkey PRIMARY KEY (id);


--
-- TOC entry 3924 (class 2606 OID 40731)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (id);


--
-- TOC entry 3926 (class 2606 OID 40733)
-- Name: producible producible_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY producible
    ADD CONSTRAINT producible_pkey PRIMARY KEY (id);


--
-- TOC entry 3928 (class 2606 OID 40735)
-- Name: salable salable_gid_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable
    ADD CONSTRAINT salable_gid_key UNIQUE (gid);


--
-- TOC entry 3930 (class 2606 OID 40737)
-- Name: salable salable_good_code_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable
    ADD CONSTRAINT salable_good_code_key UNIQUE (good_code);


--
-- TOC entry 3932 (class 2606 OID 40739)
-- Name: salable salable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable
    ADD CONSTRAINT salable_pkey PRIMARY KEY (id);


--
-- TOC entry 3934 (class 2606 OID 40741)
-- Name: storable storable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY storable
    ADD CONSTRAINT storable_pkey PRIMARY KEY (id);


SET search_path = maintenance, pg_catalog;

--
-- TOC entry 3936 (class 2606 OID 40743)
-- Name: demand demand_pkey; Type: CONSTRAINT; Schema: maintenance; Owner: postgres
--

ALTER TABLE ONLY demand
    ADD CONSTRAINT demand_pkey PRIMARY KEY (id);


--
-- TOC entry 3938 (class 2606 OID 40745)
-- Name: request request_pkey; Type: CONSTRAINT; Schema: maintenance; Owner: postgres
--

ALTER TABLE ONLY request
    ADD CONSTRAINT request_pkey PRIMARY KEY (id);


--
-- TOC entry 3940 (class 2606 OID 40747)
-- Name: response response_pkey; Type: CONSTRAINT; Schema: maintenance; Owner: postgres
--

ALTER TABLE ONLY response
    ADD CONSTRAINT response_pkey PRIMARY KEY (id);


SET search_path = material, pg_catalog;

--
-- TOC entry 3944 (class 2606 OID 40749)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3942 (class 2606 OID 40751)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (part_code, version_num, material_type);


--
-- TOC entry 3946 (class 2606 OID 40753)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3948 (class 2606 OID 40755)
-- Name: producible producible_pkey; Type: CONSTRAINT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY producible
    ADD CONSTRAINT producible_pkey PRIMARY KEY (part_code, version_num);


SET search_path = mbom, pg_catalog;

--
-- TOC entry 3952 (class 2606 OID 40757)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3954 (class 2606 OID 40759)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3956 (class 2606 OID 40761)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3950 (class 2606 OID 40763)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY material
    ADD CONSTRAINT material_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3958 (class 2606 OID 40765)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (definition_id, part_code);


SET search_path = movement, pg_catalog;

--
-- TOC entry 3960 (class 2606 OID 40767)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3962 (class 2606 OID 40769)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3964 (class 2606 OID 40771)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


SET search_path = operation, pg_catalog;

--
-- TOC entry 3968 (class 2606 OID 40773)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3970 (class 2606 OID 40775)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3972 (class 2606 OID 40777)
-- Name: definition definition_version_num_information_id_key; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_version_num_information_id_key UNIQUE (version_num, information_id);


--
-- TOC entry 3974 (class 2606 OID 40779)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, equipment_code);


--
-- TOC entry 3976 (class 2606 OID 40781)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3966 (class 2606 OID 40783)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY material
    ADD CONSTRAINT material_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3978 (class 2606 OID 40785)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, personnel_code);


--
-- TOC entry 3980 (class 2606 OID 40787)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3982 (class 2606 OID 40789)
-- Name: producible producible_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY producible
    ADD CONSTRAINT producible_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3984 (class 2606 OID 40791)
-- Name: segment segment_definition_id_operation_code_key; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_definition_id_operation_code_key UNIQUE (definition_id, operation_code);


--
-- TOC entry 3986 (class 2606 OID 40793)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 3988 (class 2606 OID 40795)
-- Name: tooling tooling_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY tooling
    ADD CONSTRAINT tooling_pkey PRIMARY KEY (segment_id, tool_code);


SET search_path = performance, pg_catalog;

--
-- TOC entry 3990 (class 2606 OID 40797)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: performance; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


SET search_path = personnel, pg_catalog;

--
-- TOC entry 3992 (class 2606 OID 40799)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


SET search_path = process, pg_catalog;

--
-- TOC entry 3994 (class 2606 OID 40801)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3902 (class 2606 OID 40803)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3996 (class 2606 OID 40805)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3906 (class 2606 OID 40807)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3910 (class 2606 OID 40809)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 3998 (class 2606 OID 40811)
-- Name: specification specification_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_pkey PRIMARY KEY (parent_segment_id, child_segment_id);


SET search_path = product, pg_catalog;

--
-- TOC entry 4000 (class 2606 OID 40813)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 4002 (class 2606 OID 40815)
-- Name: dependency dependency_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_pkey PRIMARY KEY (parent_segment_id, child_segment_id);


--
-- TOC entry 4004 (class 2606 OID 40817)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 4006 (class 2606 OID 40819)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4008 (class 2606 OID 40821)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY material
    ADD CONSTRAINT material_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 4010 (class 2606 OID 40823)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 4012 (class 2606 OID 40825)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


SET search_path = production, pg_catalog;

--
-- TOC entry 4014 (class 2606 OID 40827)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 4016 (class 2606 OID 40829)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 4018 (class 2606 OID 40831)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 4020 (class 2606 OID 40833)
-- Name: specification specification_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_pkey PRIMARY KEY (parent_segment_id, child_segment_id);


SET search_path = request, pg_catalog;

--
-- TOC entry 4022 (class 2606 OID 40835)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: request; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


SET search_path = response, pg_catalog;

--
-- TOC entry 4024 (class 2606 OID 40837)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: response; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


SET search_path = schedule, pg_catalog;

--
-- TOC entry 4026 (class 2606 OID 40839)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: schedule; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


SET search_path = tooling, pg_catalog;

--
-- TOC entry 4028 (class 2606 OID 40841)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: tooling; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


SET search_path = ebom, pg_catalog;

--
-- TOC entry 4065 (class 2620 OID 40842)
-- Name: definition set_prev_doc_fsmt; Type: TRIGGER; Schema: ebom; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON definition FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


SET search_path = process, pg_catalog;

--
-- TOC entry 4066 (class 2620 OID 40844)
-- Name: specification child_segment_ref_fkey_trigger; Type: TRIGGER; Schema: process; Owner: postgres
--

CREATE CONSTRAINT TRIGGER child_segment_ref_fkey_trigger AFTER INSERT OR UPDATE ON specification DEFERRABLE INITIALLY IMMEDIATE FOR EACH ROW EXECUTE PROCEDURE child_segment_ref_trigger();


SET search_path = production, pg_catalog;

--
-- TOC entry 4067 (class 2620 OID 40846)
-- Name: specification child_segment_ref_fkey_trigger; Type: TRIGGER; Schema: production; Owner: postgres
--

CREATE CONSTRAINT TRIGGER child_segment_ref_fkey_trigger AFTER INSERT OR UPDATE ON specification DEFERRABLE INITIALLY IMMEDIATE FOR EACH ROW EXECUTE PROCEDURE child_segment_ref_trigger();


SET search_path = ebom, pg_catalog;

--
-- TOC entry 4029 (class 2606 OID 40847)
-- Name: assembly assembly_information_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_information_id_fkey FOREIGN KEY (information_id) REFERENCES definition(id);


--
-- TOC entry 4030 (class 2606 OID 40852)
-- Name: assembly assembly_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES component.assembly(part_code, version_num);


--
-- TOC entry 4031 (class 2606 OID 40857)
-- Name: buyable buyable_information_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_information_id_fkey FOREIGN KEY (information_id) REFERENCES definition(id);


--
-- TOC entry 4032 (class 2606 OID 40862)
-- Name: buyable buyable_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES component.buyable(part_code, version_num);


--
-- TOC entry 4033 (class 2606 OID 40867)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4034 (class 2606 OID 40872)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES component.assembly(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4035 (class 2606 OID 40877)
-- Name: part part_information_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_information_id_fkey FOREIGN KEY (information_id) REFERENCES definition(id);


--
-- TOC entry 4036 (class 2606 OID 40882)
-- Name: part part_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES component.part(part_code, version_num);


SET search_path = inspection, pg_catalog;

--
-- TOC entry 4037 (class 2606 OID 40887)
-- Name: equipment equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4039 (class 2606 OID 40892)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = mbom, pg_catalog;

--
-- TOC entry 4040 (class 2606 OID 40897)
-- Name: consumable consumable_definition_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id);


--
-- TOC entry 4041 (class 2606 OID 40902)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.consumable(part_code, version_num);


--
-- TOC entry 4042 (class 2606 OID 40907)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id);


--
-- TOC entry 4043 (class 2606 OID 40912)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4044 (class 2606 OID 40917)
-- Name: primal primal_definition_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id);


--
-- TOC entry 4045 (class 2606 OID 40922)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.primal(part_code, version_num);


SET search_path = movement, pg_catalog;

--
-- TOC entry 4046 (class 2606 OID 40927)
-- Name: equipment equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4047 (class 2606 OID 40932)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = operation, pg_catalog;

--
-- TOC entry 4048 (class 2606 OID 40937)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4049 (class 2606 OID 40942)
-- Name: consumable consumable_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id);


--
-- TOC entry 4050 (class 2606 OID 40947)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id);


--
-- TOC entry 4051 (class 2606 OID 40952)
-- Name: equipment equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4052 (class 2606 OID 40957)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4053 (class 2606 OID 40962)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4054 (class 2606 OID 40967)
-- Name: primal primal_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES movement.segment(id);


--
-- TOC entry 4055 (class 2606 OID 40972)
-- Name: producible producible_definition_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY producible
    ADD CONSTRAINT producible_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id);


--
-- TOC entry 4056 (class 2606 OID 40977)
-- Name: producible producible_part_code_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY producible
    ADD CONSTRAINT producible_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.producible(part_code, version_num);


--
-- TOC entry 4057 (class 2606 OID 40982)
-- Name: segment segment_definition_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4058 (class 2606 OID 40987)
-- Name: tooling tooling_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY tooling
    ADD CONSTRAINT tooling_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = process, pg_catalog;

--
-- TOC entry 4038 (class 2606 OID 40992)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4059 (class 2606 OID 40997)
-- Name: specification specification_parent_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_parent_segment_id_fkey FOREIGN KEY (parent_segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = product, pg_catalog;

--
-- TOC entry 4060 (class 2606 OID 41002)
-- Name: dependency dependency_parent_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_parent_segment_id_fkey FOREIGN KEY (parent_segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4061 (class 2606 OID 41007)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = production, pg_catalog;

--
-- TOC entry 4062 (class 2606 OID 41012)
-- Name: equipment equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4063 (class 2606 OID 41017)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4064 (class 2606 OID 41022)
-- Name: specification specification_parent_segment_id_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_parent_segment_id_fkey FOREIGN KEY (parent_segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2017-11-01 02:04:50 EET

--
-- PostgreSQL database dump complete
--

