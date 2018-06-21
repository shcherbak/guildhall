--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.8
-- Dumped by pg_dump version 9.6.8

-- Started on 2018-06-22 01:06:03 EEST

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
-- TOC entry 12 (class 2615 OID 97655)
-- Name: binding; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA binding;


ALTER SCHEMA binding OWNER TO postgres;

--
-- TOC entry 15 (class 2615 OID 97656)
-- Name: common; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA common;


ALTER SCHEMA common OWNER TO postgres;

--
-- TOC entry 30 (class 2615 OID 97657)
-- Name: ebom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ebom;


ALTER SCHEMA ebom OWNER TO postgres;

--
-- TOC entry 4523 (class 0 OID 0)
-- Dependencies: 30
-- Name: SCHEMA ebom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA ebom IS 'engenering bill of materials';


--
-- TOC entry 27 (class 2615 OID 97658)
-- Name: equipment; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA equipment;


ALTER SCHEMA equipment OWNER TO postgres;

--
-- TOC entry 20 (class 2615 OID 97659)
-- Name: facility; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA facility;


ALTER SCHEMA facility OWNER TO postgres;

--
-- TOC entry 10 (class 2615 OID 97660)
-- Name: inventory; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA inventory;


ALTER SCHEMA inventory OWNER TO postgres;

--
-- TOC entry 4524 (class 0 OID 0)
-- Dependencies: 10
-- Name: SCHEMA inventory; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA inventory IS 'inventory items definition';


--
-- TOC entry 16 (class 2615 OID 97661)
-- Name: mbom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA mbom;


ALTER SCHEMA mbom OWNER TO postgres;

--
-- TOC entry 4525 (class 0 OID 0)
-- Dependencies: 16
-- Name: SCHEMA mbom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA mbom IS 'manufacturing bill of materials';


--
-- TOC entry 9 (class 2615 OID 97662)
-- Name: operation; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA operation;


ALTER SCHEMA operation OWNER TO postgres;

--
-- TOC entry 25 (class 2615 OID 97663)
-- Name: personnel; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA personnel;


ALTER SCHEMA personnel OWNER TO postgres;

--
-- TOC entry 11 (class 2615 OID 97664)
-- Name: pgunit; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA pgunit;


ALTER SCHEMA pgunit OWNER TO postgres;

--
-- TOC entry 23 (class 2615 OID 97666)
-- Name: process; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA process;


ALTER SCHEMA process OWNER TO postgres;

--
-- TOC entry 4526 (class 0 OID 0)
-- Dependencies: 23
-- Name: SCHEMA process; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA process IS 'production processes';


--
-- TOC entry 29 (class 2615 OID 97665)
-- Name: product; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA product;


ALTER SCHEMA product OWNER TO postgres;

--
-- TOC entry 4527 (class 0 OID 0)
-- Dependencies: 29
-- Name: SCHEMA product; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA product IS 'process segments';


--
-- TOC entry 31 (class 2615 OID 97667)
-- Name: request; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA request;


ALTER SCHEMA request OWNER TO postgres;

--
-- TOC entry 8 (class 2615 OID 97668)
-- Name: response; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA response;


ALTER SCHEMA response OWNER TO postgres;

--
-- TOC entry 14 (class 2615 OID 97669)
-- Name: route; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA route;


ALTER SCHEMA route OWNER TO postgres;

--
-- TOC entry 4529 (class 0 OID 0)
-- Dependencies: 14
-- Name: SCHEMA route; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA route IS 'material routing';


--
-- TOC entry 18 (class 2615 OID 97670)
-- Name: schedule; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA schedule;


ALTER SCHEMA schedule OWNER TO postgres;

--
-- TOC entry 24 (class 2615 OID 97671)
-- Name: stride; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA stride;


ALTER SCHEMA stride OWNER TO postgres;

--
-- TOC entry 4530 (class 0 OID 0)
-- Dependencies: 24
-- Name: SCHEMA stride; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA stride IS 'operation segments';


--
-- TOC entry 28 (class 2615 OID 97672)
-- Name: tests; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tests;


ALTER SCHEMA tests OWNER TO postgres;

--
-- TOC entry 21 (class 2615 OID 97673)
-- Name: tooling; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tooling;


ALTER SCHEMA tooling OWNER TO postgres;

--
-- TOC entry 17 (class 2615 OID 97674)
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
-- TOC entry 4531 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 5 (class 3079 OID 97675)
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- TOC entry 4532 (class 0 OID 0)
-- Dependencies: 5
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- TOC entry 4 (class 3079 OID 97850)
-- Name: pldbgapi; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pldbgapi WITH SCHEMA public;


--
-- TOC entry 4533 (class 0 OID 0)
-- Dependencies: 4
-- Name: EXTENSION pldbgapi; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pldbgapi IS 'server-side support for debugging PL/pgSQL functions';


--
-- TOC entry 3 (class 3079 OID 97887)
-- Name: plpgsql_check; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql_check WITH SCHEMA public;


--
-- TOC entry 4534 (class 0 OID 0)
-- Dependencies: 3
-- Name: EXTENSION plpgsql_check; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql_check IS 'extended check for plpgsql functions';


--
-- TOC entry 2 (class 3079 OID 97892)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- TOC entry 4535 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- TOC entry 977 (class 1247 OID 97904)
-- Name: component_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.component_kind AS ENUM (
    'ASSEMBLY',
    'PART',
    'BUYABLE'
);


ALTER TYPE common.component_kind OWNER TO postgres;

--
-- TOC entry 980 (class 1247 OID 97911)
-- Name: quantity; Type: DOMAIN; Schema: common; Owner: postgres
--

CREATE DOMAIN common.quantity AS numeric(20,4) DEFAULT 0
	CONSTRAINT quantity_is_positive CHECK ((VALUE >= (0)::numeric));


ALTER DOMAIN common.quantity OWNER TO postgres;

--
-- TOC entry 4536 (class 0 OID 0)
-- Dependencies: 980
-- Name: DOMAIN quantity; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON DOMAIN common.quantity IS 'quantity domain';


--
-- TOC entry 982 (class 1247 OID 97915)
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
-- TOC entry 985 (class 1247 OID 97917)
-- Name: material_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.material_kind AS ENUM (
    'CONSUMABLE',
    'PRODUCIBLE',
    'PRIMAL'
);


ALTER TYPE common.material_kind OWNER TO postgres;

--
-- TOC entry 988 (class 1247 OID 97925)
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
-- TOC entry 991 (class 1247 OID 97928)
-- Name: dependency_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.dependency_specification AS (
	ancestor uuid,
	descendant uuid,
	depth integer
);


ALTER TYPE common.dependency_specification OWNER TO postgres;

--
-- TOC entry 994 (class 1247 OID 97931)
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
-- TOC entry 997 (class 1247 OID 97933)
-- Name: document_fsmt; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.document_fsmt AS ENUM (
    'PROPOSED',
    'COMMITTED',
    'DECOMMITTED'
);


ALTER TYPE common.document_fsmt OWNER TO postgres;

--
-- TOC entry 1000 (class 1247 OID 97940)
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
-- TOC entry 1003 (class 1247 OID 97963)
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
-- TOC entry 1006 (class 1247 OID 97966)
-- Name: ebom_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.ebom_document AS (
	head common.ebom_head,
	body common.component_specification[]
);


ALTER TYPE common.ebom_document OWNER TO postgres;

--
-- TOC entry 1009 (class 1247 OID 97969)
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
-- TOC entry 1351 (class 1247 OID 99249)
-- Name: facility_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.facility_kind AS ENUM (
    'ENTERPRISE',
    'SITE',
    'AREA',
    'LINE',
    'ZONE'
);


ALTER TYPE common.facility_kind OWNER TO postgres;

--
-- TOC entry 1012 (class 1247 OID 97972)
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
-- TOC entry 1015 (class 1247 OID 97974)
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
-- TOC entry 1018 (class 1247 OID 97995)
-- Name: unit_conversion_type; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.unit_conversion_type AS (
	uom_code_from character varying,
	uom_code_to character varying,
	factor numeric
);


ALTER TYPE common.unit_conversion_type OWNER TO postgres;

--
-- TOC entry 1021 (class 1247 OID 97998)
-- Name: inventory_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.inventory_document AS (
	head common.inventory_head,
	meas common.unit_conversion_type[],
	kind common.inventory_kind[]
);


ALTER TYPE common.inventory_document OWNER TO postgres;

--
-- TOC entry 1024 (class 1247 OID 98001)
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
-- TOC entry 1027 (class 1247 OID 98004)
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
-- TOC entry 1030 (class 1247 OID 98007)
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
-- TOC entry 1033 (class 1247 OID 98010)
-- Name: mbom_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.mbom_document AS (
	head common.mbom_head,
	body common.material_specification[]
);


ALTER TYPE common.mbom_document OWNER TO postgres;

--
-- TOC entry 1036 (class 1247 OID 98013)
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
-- TOC entry 1054 (class 1247 OID 98039)
-- Name: process_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.process_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	version_num integer,
	document_date date,
	curr_fsmt common.document_fsmt,
	document_type common.document_kind,
	producible_spec common.material_specification
);


ALTER TYPE common.process_head OWNER TO postgres;

--
-- TOC entry 1045 (class 1247 OID 98030)
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
-- TOC entry 1057 (class 1247 OID 98042)
-- Name: process_segment; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.process_segment AS (
	gid uuid,
	operation_code character varying,
	consumable_spec common.consumable_specification[],
	personnel_spec common.personnel_specification[],
	equipmet_spec common.equipment_specification[],
	tooling_spec common.tooling_specification[]
);


ALTER TYPE common.process_segment OWNER TO postgres;

--
-- TOC entry 1060 (class 1247 OID 98045)
-- Name: process_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.process_document AS (
	head common.process_head,
	body common.process_segment[],
	deps common.dependency_specification[]
);


ALTER TYPE common.process_document OWNER TO postgres;

--
-- TOC entry 4537 (class 0 OID 0)
-- Dependencies: 1060
-- Name: TYPE process_document; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON TYPE common.process_document IS 'operation';


--
-- TOC entry 1039 (class 1247 OID 98015)
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
-- TOC entry 1042 (class 1247 OID 98027)
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
-- TOC entry 1048 (class 1247 OID 98033)
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
-- TOC entry 1051 (class 1247 OID 98036)
-- Name: product_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.product_document AS (
	head common.product_head,
	body common.product_segment[],
	deps common.dependency_specification[]
);


ALTER TYPE common.product_document OWNER TO postgres;

--
-- TOC entry 1063 (class 1247 OID 98048)
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
-- TOC entry 1066 (class 1247 OID 98051)
-- Name: route_segment; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.route_segment AS (
	descendant_spec common.material_specification,
	ancestor_spec common.material_specification[],
	location_spec character varying[]
);


ALTER TYPE common.route_segment OWNER TO postgres;

--
-- TOC entry 1069 (class 1247 OID 98054)
-- Name: route_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.route_document AS (
	head common.route_head,
	body common.route_segment[]
);


ALTER TYPE common.route_document OWNER TO postgres;

--
-- TOC entry 1359 (class 1247 OID 99281)
-- Name: vertex_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.vertex_specification AS (
	part_code character varying,
	version_num integer,
	process_num integer,
	segment_num integer,
	quantity common.quantity,
	uom_code character varying,
	material_type common.material_kind
);


ALTER TYPE common.vertex_specification OWNER TO postgres;

--
-- TOC entry 1362 (class 1247 OID 99284)
-- Name: stride_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.stride_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	version_num integer,
	document_date date,
	curr_fsmt common.document_fsmt,
	document_type common.document_kind,
	ancestor_spec common.vertex_specification,
	descendant_spec common.vertex_specification
);


ALTER TYPE common.stride_head OWNER TO postgres;

--
-- TOC entry 1365 (class 1247 OID 99287)
-- Name: stride_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.stride_document AS (
	head common.stride_head,
	body common.process_segment
);


ALTER TYPE common.stride_document OWNER TO postgres;

--
-- TOC entry 463 (class 1255 OID 98055)
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
-- TOC entry 464 (class 1255 OID 98056)
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
-- TOC entry 465 (class 1255 OID 98057)
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
-- TOC entry 466 (class 1255 OID 98058)
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
-- TOC entry 467 (class 1255 OID 98059)
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
-- TOC entry 468 (class 1255 OID 98060)
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
-- TOC entry 449 (class 1255 OID 98061)
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
-- TOC entry 450 (class 1255 OID 98062)
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
-- TOC entry 469 (class 1255 OID 98063)
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
-- TOC entry 470 (class 1255 OID 98064)
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
-- TOC entry 471 (class 1255 OID 98065)
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
-- TOC entry 472 (class 1255 OID 98066)
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
-- TOC entry 473 (class 1255 OID 98067)
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
-- TOC entry 474 (class 1255 OID 98068)
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
-- TOC entry 475 (class 1255 OID 98069)
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
-- TOC entry 476 (class 1255 OID 98070)
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
-- TOC entry 477 (class 1255 OID 98071)
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
-- TOC entry 478 (class 1255 OID 98072)
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
-- TOC entry 479 (class 1255 OID 98073)
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
-- TOC entry 480 (class 1255 OID 98074)
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
-- TOC entry 481 (class 1255 OID 98075)
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
-- TOC entry 482 (class 1255 OID 98076)
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
-- TOC entry 484 (class 1255 OID 98077)
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
-- TOC entry 485 (class 1255 OID 98078)
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
-- TOC entry 486 (class 1255 OID 98079)
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
-- TOC entry 487 (class 1255 OID 98080)
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
-- TOC entry 488 (class 1255 OID 98081)
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
-- TOC entry 489 (class 1255 OID 98082)
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
-- TOC entry 490 (class 1255 OID 98083)
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
-- TOC entry 491 (class 1255 OID 98084)
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
-- TOC entry 492 (class 1255 OID 98085)
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
-- TOC entry 494 (class 1255 OID 98086)
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
-- TOC entry 495 (class 1255 OID 98087)
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
-- TOC entry 496 (class 1255 OID 98088)
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
-- TOC entry 497 (class 1255 OID 98089)
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
-- TOC entry 498 (class 1255 OID 98090)
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
-- TOC entry 499 (class 1255 OID 98091)
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
-- TOC entry 500 (class 1255 OID 98092)
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
-- TOC entry 501 (class 1255 OID 98093)
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
-- TOC entry 502 (class 1255 OID 98094)
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
-- TOC entry 503 (class 1255 OID 98095)
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
-- TOC entry 504 (class 1255 OID 98096)
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
-- TOC entry 505 (class 1255 OID 98097)
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
-- TOC entry 506 (class 1255 OID 98098)
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
-- TOC entry 483 (class 1255 OID 98099)
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
-- TOC entry 493 (class 1255 OID 98100)
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
-- TOC entry 507 (class 1255 OID 98101)
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
-- TOC entry 508 (class 1255 OID 98102)
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
-- TOC entry 509 (class 1255 OID 98103)
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
-- TOC entry 510 (class 1255 OID 98104)
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
-- TOC entry 511 (class 1255 OID 98105)
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
-- TOC entry 512 (class 1255 OID 98106)
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
-- TOC entry 513 (class 1255 OID 98107)
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
-- TOC entry 514 (class 1255 OID 98108)
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
-- TOC entry 515 (class 1255 OID 98109)
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
-- TOC entry 516 (class 1255 OID 98110)
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
-- TOC entry 534 (class 1255 OID 98128)
-- Name: destroy(bigint); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM process.definition WHERE id = __document_id;
END;
$$;


ALTER FUNCTION process.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 535 (class 1255 OID 98129)
-- Name: get_body(bigint); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.get_body(__document_id bigint) RETURNS common.process_segment[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY(
      SELECT 
        process.get_segment(segment.id)
      FROM 
        process.segment
      WHERE 
        segment.definition_id = __document_id
    );
END
$$;


ALTER FUNCTION process.get_body(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 536 (class 1255 OID 98130)
-- Name: get_consumable_spec(bigint); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.get_consumable_spec(__segment_id bigint) RETURNS common.consumable_specification[]
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
        process.material
      WHERE 
        material.segment_id = __segment_id
    );
END
$$;


ALTER FUNCTION process.get_consumable_spec(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 537 (class 1255 OID 98131)
-- Name: get_deps(bigint); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.get_deps(__document_id bigint) RETURNS common.dependency_specification[]
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
        process.dependency, 
        process.segment
      WHERE 
        segment.gid = dependency.ancestor AND
        segment.definition_id = __document_id
    );
END
$$;


ALTER FUNCTION process.get_deps(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 538 (class 1255 OID 98132)
-- Name: get_equipment_spec(bigint); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.get_equipment_spec(__segment_id bigint) RETURNS common.equipment_specification[]
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
        process.equipment
      WHERE 
        equipment.segment_id = __segment_id
    );
END
$$;


ALTER FUNCTION process.get_equipment_spec(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 539 (class 1255 OID 98133)
-- Name: get_gid_by_id(bigint); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.get_gid_by_id(__document_id bigint) RETURNS uuid
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN gid
    FROM
      process.definition
    WHERE
      id = __document_id;
END;
$$;


ALTER FUNCTION process.get_gid_by_id(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 540 (class 1255 OID 98134)
-- Name: get_head(bigint); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.get_head(__document_id bigint) RETURNS common.process_head
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
    )::common.process_head
  FROM
    process.information, 
    process.definition
  WHERE
    information.id = definition.information_id AND
    definition.id = __document_id;
END;
$$;


ALTER FUNCTION process.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 541 (class 1255 OID 98135)
-- Name: get_id_by_gid(uuid); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.get_id_by_gid(__document_gid uuid) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN id
    FROM
      process.definition
    WHERE
      gid = __document_gid;
END;
$$;


ALTER FUNCTION process.get_id_by_gid(__document_gid uuid) OWNER TO postgres;

--
-- TOC entry 542 (class 1255 OID 98136)
-- Name: get_personnel_spec(bigint); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.get_personnel_spec(__segment_id bigint) RETURNS common.personnel_specification[]
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
        process.personnel
      WHERE 
        personnel.segment_id = __segment_id
    );
END
$$;


ALTER FUNCTION process.get_personnel_spec(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 543 (class 1255 OID 98137)
-- Name: get_segment(bigint); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.get_segment(__segment_id bigint) RETURNS common.process_segment
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN

      --SELECT 
        (segment.gid,
        segment.operation_code,
        process.get_consumable_spec(__segment_id := __segment_id),
        process.get_personnel_spec(__segment_id := __segment_id),
        process.get_equipment_spec(__segment_id := __segment_id),
        process.get_tooling_spec(__segment_id := __segment_id))::common.process_segment
      FROM 
        process.segment
      WHERE 
        segment.id = __segment_id;
    --;
END
$$;


ALTER FUNCTION process.get_segment(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 544 (class 1255 OID 98138)
-- Name: get_tooling_spec(bigint); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.get_tooling_spec(__segment_id bigint) RETURNS common.tooling_specification[]
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
        process.tooling
      WHERE 
        tooling.segment_id = __segment_id
    );
END
$$;


ALTER FUNCTION process.get_tooling_spec(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 545 (class 1255 OID 98139)
-- Name: init(common.process_head, common.process_segment[], common.dependency_specification[]); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.init(__head common.process_head, __body common.process_segment[], __deps common.dependency_specification[]) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _information_id bigint;
  _definition_id bigint;
  _max_version_num integer;
  _segment_id bigint;
  _seg common.process_segment;
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
    process.information, 
    process.definition
  WHERE 
    information.id = definition.information_id AND
    information.part_code = (__head.producible_spec).part_code AND 
    information.version_num = (__head.producible_spec).version_num
  INTO
    _max_version_num;

  IF (_max_version_num IS NULL) THEN
    _max_version_num := 0;

    INSERT INTO
      process.information (
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
      process.information
    WHERE
      information.part_code = (__head.producible_spec).part_code AND 
      information.version_num = (__head.producible_spec).version_num
    INTO
      _information_id;

  END IF;

  INSERT INTO
    process.definition (
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
    --RAISE NOTICE '_seg.operation_code : %', _seg.operation_code;
    INSERT INTO
      process.segment (
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
    PERFORM process.set_consumable_spec(_segment_id, _seg.consumable_spec);
    PERFORM process.set_personnel_spec(_segment_id, _seg.personnel_spec);
    PERFORM process.set_equipment_spec(_segment_id, _seg.equipmet_spec);
    PERFORM process.set_tooling_spec(_segment_id, _seg.tooling_spec);
  END LOOP;

  FOREACH _dep IN
    ARRAY __deps
  LOOP
    INSERT INTO
      process.dependency (
        ancestor,
        descendant,
        depth)
    VALUES (
      _dep.ancestor,
      _dep.descendant,
      _dep.depth);
  END LOOP;

  RETURN _definition_id;

END;
$$;


ALTER FUNCTION process.init(__head common.process_head, __body common.process_segment[], __deps common.dependency_specification[]) OWNER TO postgres;

--
-- TOC entry 546 (class 1255 OID 98140)
-- Name: reinit(bigint, common.process_segment[], common.dependency_specification[]); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.reinit(__document_id bigint, __body common.process_segment[], __deps common.dependency_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _segment_id bigint;
  _seg common.process_segment;
  _dep common.dependency_specification;
BEGIN

  DELETE FROM
    process.segment
  WHERE
    definition_id = __document_id;

  FOREACH _seg IN
    ARRAY __body
  LOOP
    INSERT INTO
      process.segment (
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
    PERFORM process.set_consumable_spec(_segment_id, _seg.consumable_spec);
    PERFORM process.set_personnel_spec(_segment_id, _seg.personnel_spec);
    PERFORM process.set_equipment_spec(_segment_id, _seg.equipmet_spec);
    PERFORM process.set_tooling_spec(_segment_id, _seg.tooling_spec);
  END LOOP;

  FOREACH _dep IN
    ARRAY __deps
  LOOP
    INSERT INTO
      process.dependency (
        ancestor,
        descendant,
        depth)
    VALUES (
      _dep.ancestor,
      _dep.descendant,
      _dep.depth);
  END LOOP;

END;
$$;


ALTER FUNCTION process.reinit(__document_id bigint, __body common.process_segment[], __deps common.dependency_specification[]) OWNER TO postgres;

--
-- TOC entry 547 (class 1255 OID 98141)
-- Name: set_consumable_spec(bigint, common.consumable_specification[]); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.set_consumable_spec(__segment_id bigint, __material common.consumable_specification[]) RETURNS void
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
        process.primal (
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
        process.consumable (
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


ALTER FUNCTION process.set_consumable_spec(__segment_id bigint, __material common.consumable_specification[]) OWNER TO postgres;

--
-- TOC entry 548 (class 1255 OID 98142)
-- Name: set_equipment_spec(bigint, common.equipment_specification[]); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.set_equipment_spec(__segment_id bigint, __equipment common.equipment_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.equipment_specification;
BEGIN

  FOREACH _item IN
    ARRAY __equipment
  LOOP
    INSERT INTO
      process.equipment (
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


ALTER FUNCTION process.set_equipment_spec(__segment_id bigint, __equipment common.equipment_specification[]) OWNER TO postgres;

--
-- TOC entry 549 (class 1255 OID 98143)
-- Name: set_personnel_spec(bigint, common.personnel_specification[]); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.set_personnel_spec(__segment_id bigint, __personnel common.personnel_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.personnel_specification;
BEGIN

  FOREACH _item IN
    ARRAY __personnel
  LOOP
    INSERT INTO
      process.personnel (
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


ALTER FUNCTION process.set_personnel_spec(__segment_id bigint, __personnel common.personnel_specification[]) OWNER TO postgres;

--
-- TOC entry 550 (class 1255 OID 98144)
-- Name: set_tooling_spec(bigint, common.tooling_specification[]); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.set_tooling_spec(__segment_id bigint, __tooling common.tooling_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.tooling_specification;
BEGIN

  FOREACH _item IN
    ARRAY __tooling
  LOOP
    INSERT INTO
      process.tooling (
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


ALTER FUNCTION process.set_tooling_spec(__segment_id bigint, __tooling common.tooling_specification[]) OWNER TO postgres;

--
-- TOC entry 517 (class 1255 OID 98111)
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
-- TOC entry 518 (class 1255 OID 98112)
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
-- TOC entry 519 (class 1255 OID 98113)
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
-- TOC entry 520 (class 1255 OID 98114)
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
-- TOC entry 521 (class 1255 OID 98115)
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
-- TOC entry 522 (class 1255 OID 98116)
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
-- TOC entry 523 (class 1255 OID 98117)
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
-- TOC entry 524 (class 1255 OID 98118)
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
-- TOC entry 525 (class 1255 OID 98119)
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
-- TOC entry 526 (class 1255 OID 98120)
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
-- TOC entry 527 (class 1255 OID 98121)
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
-- TOC entry 528 (class 1255 OID 98122)
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
-- TOC entry 529 (class 1255 OID 98123)
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
-- TOC entry 530 (class 1255 OID 98124)
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
-- TOC entry 531 (class 1255 OID 98125)
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
-- TOC entry 532 (class 1255 OID 98126)
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
-- TOC entry 533 (class 1255 OID 98127)
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
-- TOC entry 551 (class 1255 OID 98145)
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
-- TOC entry 552 (class 1255 OID 98146)
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
-- TOC entry 553 (class 1255 OID 98147)
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
-- TOC entry 554 (class 1255 OID 98148)
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
-- TOC entry 555 (class 1255 OID 98149)
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
-- TOC entry 556 (class 1255 OID 98150)
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
-- TOC entry 557 (class 1255 OID 98151)
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
-- TOC entry 558 (class 1255 OID 98152)
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
-- TOC entry 559 (class 1255 OID 98153)
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
-- TOC entry 560 (class 1255 OID 98154)
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
-- TOC entry 561 (class 1255 OID 98155)
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
-- TOC entry 563 (class 1255 OID 98156)
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
-- TOC entry 564 (class 1255 OID 98157)
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
-- TOC entry 565 (class 1255 OID 98158)
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
-- TOC entry 566 (class 1255 OID 98159)
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
-- TOC entry 567 (class 1255 OID 98160)
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
-- TOC entry 562 (class 1255 OID 98161)
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
-- TOC entry 568 (class 1255 OID 98162)
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
-- TOC entry 569 (class 1255 OID 98163)
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
-- TOC entry 570 (class 1255 OID 98164)
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
-- TOC entry 571 (class 1255 OID 98165)
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
-- TOC entry 572 (class 1255 OID 98166)
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
-- TOC entry 573 (class 1255 OID 98167)
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
-- TOC entry 574 (class 1255 OID 98168)
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
-- TOC entry 575 (class 1255 OID 98169)
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
-- TOC entry 576 (class 1255 OID 98170)
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
-- TOC entry 577 (class 1255 OID 98171)
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
-- TOC entry 578 (class 1255 OID 98172)
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
-- TOC entry 579 (class 1255 OID 98173)
-- Name: __process__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__process__destroy() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.process_head;
BEGIN
  
  RAISE DEBUG '#trace Check __process__destroy()';

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
    process.information
      ( id, gid, part_code, version_num, display_name, published_date )
    VALUES
      ( 101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23' );

  INSERT INTO
    process.definition
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id )
    VALUES
      ( 201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 );

  PERFORM process.destroy(201); -- + add not allowed delete test
  
  _head := process.get_head(201);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

  _head := process.get_head(203);
  PERFORM pgunit.assert_not_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__process__destroy() OWNER TO postgres;

--
-- TOC entry 580 (class 1255 OID 98174)
-- Name: __process__get_body(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__process__get_body() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _body common.process_segment[];
  _test_body CONSTANT common.process_segment[] := ARRAY[
      (
        '70d09038-5dfe-11e8-b545-d4bed939923a', 'OP-0001-01',
        ARRAY[('Гайка-М12-001', 1, 1.0000, 'pcs', 'PRIMAL', 1)]::common.consumable_specification[],
        ARRAY[('PERSONNEL-01', 1, 1, 1, 1, '00:30:00', '00:10:00')]::common.personnel_specification[],
        ARRAY[('EQUIPMENT-001', 1, 1.0000, 'pcs')]::common.equipment_specification[],
        ARRAY[('TOOLING-001', 1, 1.0000, 'pcs')]::common.tooling_specification[]
      ),
      (
        'b978dcdc-5dfe-11e8-b547-d4bed939923a', 'OP-0001-02',
        ARRAY[('80.31.050-001', 1, 1.0000, 'pcs', 'CONSUMABLE', 1)]::common.consumable_specification[],
        ARRAY[('PERSONNEL-02', 1, 1, 1, 1, '00:40:00', '00:20:00')]::common.personnel_specification[],
        ARRAY[('EQUIPMENT-002', 1, 1.0000, 'pcs')]::common.equipment_specification[],
        ARRAY[('TOOLING-002', 1, 1.0000, 'pcs')]::common.tooling_specification[]
      ),
      (
        'da20e25e-5dfe-11e8-b548-d4bed939923a', 'OP-0001-03',
        ARRAY[('72.01.009-001', 1, 2.0000, 'pcs', 'CONSUMABLE', 1)]::common.consumable_specification[],
        ARRAY[('PERSONNEL-03', 1, 1, 1, 1, '00:50:00', '00:30:00')]::common.personnel_specification[],
        ARRAY[('EQUIPMENT-003', 1, 1.0000, 'pcs')]::common.equipment_specification[],
        ARRAY[('TOOLING-003', 1, 1.0000, 'pcs')]::common.tooling_specification[]
      )
    ]::common.process_segment[];
BEGIN
  
  RAISE DEBUG '#trace Check __process__get_body()';

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
    process.information
      ( id, gid, part_code, version_num, display_name, published_date )
    VALUES
      ( 101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23' );
  
  INSERT INTO
    process.definition
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id )
    VALUES
      ( 201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 );
      
  INSERT INTO
    process.segment
      ( id, gid, definition_id, operation_code )
    VALUES
      ( 301, '70d09038-5dfe-11e8-b545-d4bed939923a', 203, 'OP-0001-01' ),
      ( 302, 'b978dcdc-5dfe-11e8-b547-d4bed939923a', 203, 'OP-0001-02' ),
      ( 303, 'da20e25e-5dfe-11e8-b548-d4bed939923a', 203, 'OP-0001-03' );

  INSERT INTO
    process.primal 
      ( segment_id, part_code, version_num, quantity, uom_code, material_type ) 
    VALUES
      ( 301, 'Гайка-М12-001', 1, 1.0000, 'pcs', 'PRIMAL' );

  INSERT INTO
    process.consumable 
      ( segment_id, part_code, version_num, quantity, uom_code, material_type )
    VALUES
      ( 302, '80.31.050-001', 1, 1.0000, 'pcs', 'CONSUMABLE' ),
      ( 303, '72.01.009-001', 1, 2.0000, 'pcs', 'CONSUMABLE' );

  INSERT INTO
    process.equipment
      ( segment_id, equipment_code, version_num, quantity, uom_code )
    VALUES
      ( 301, 'EQUIPMENT-001', 1, 1.0000, 'pcs' ),
      ( 302, 'EQUIPMENT-002', 1, 1.0000, 'pcs' ),
      ( 303, 'EQUIPMENT-003', 1, 1.0000, 'pcs' );

  INSERT INTO
    process.tooling
      ( segment_id, tooling_code, version_num, quantity, uom_code )
    VALUES
      ( 301, 'TOOLING-001', 1, 1.0000, 'pcs' ),
      ( 302, 'TOOLING-002', 1, 1.0000, 'pcs' ),
      ( 303, 'TOOLING-003', 1, 1.0000, 'pcs' );

  INSERT INTO
    process.personnel
      ( segment_id, personnel_code, version_num, rationing_qty, batch_qty, workers_qty, setup_time, piece_time )
    VALUES
      ( 301, 'PERSONNEL-01', 1, 1, 1, 1, '00:30:00', '00:10:00' ),
      ( 302, 'PERSONNEL-02', 1, 1, 1, 1, '00:40:00', '00:20:00' ),
      ( 303, 'PERSONNEL-03', 1, 1, 1, 1, '00:50:00', '00:30:00' );

  INSERT INTO
    process.dependency
      ( ancestor, descendant, depth )
    VALUES
      ( 'b978dcdc-5dfe-11e8-b547-d4bed939923a', '70d09038-5dfe-11e8-b545-d4bed939923a', 1 ),
      ( 'da20e25e-5dfe-11e8-b548-d4bed939923a', 'b978dcdc-5dfe-11e8-b547-d4bed939923a', 2 );

  _body := process.get_body(203);
  PERFORM pgunit.assert_array_equals(_test_body, _body, 'Incorrect _body value');

END;
$$;


ALTER FUNCTION tests.__process__get_body() OWNER TO postgres;

--
-- TOC entry 581 (class 1255 OID 98176)
-- Name: __process__get_gid_by_id(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__process__get_gid_by_id() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_id CONSTANT bigint := 202;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a';
  _gid uuid;
BEGIN
  
  RAISE DEBUG '#trace Check __process__get_gid_by_id()';

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
    process.information
      ( id, gid, part_code, version_num, display_name, published_date )
    VALUES
      ( 101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23' );
  
  INSERT INTO
    process.definition
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id )
    VALUES
      ( 201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 );

  _gid := process.get_gid_by_id(_test_id);
  PERFORM pgunit.assert_equals(_test_gid, _gid, 'Incorrect _gid value');

END;
$$;


ALTER FUNCTION tests.__process__get_gid_by_id() OWNER TO postgres;

--
-- TOC entry 582 (class 1255 OID 98177)
-- Name: __process__get_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__process__get_head() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.process_head;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a';
  _test_display_name CONSTANT character varying := '11с32п-50х40: definition';
  _test_document_date CONSTANT date := '2017-10-21'::date;
  _test_curr_fsmt CONSTANT common.document_fsmt := 'PROPOSED'::common.document_fsmt;
  _test_document_type CONSTANT common.document_kind := 'PRODUCTION'::common.document_kind;
  _test_component_part_code CONSTANT character varying := '11.32.050-001';
  _test_component_version_num CONSTANT integer := 1;
BEGIN
  
  RAISE DEBUG '#trace Check __process__get_head()';

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
    process.information
      ( id, gid, part_code, version_num, display_name, published_date )
    VALUES
      ( 101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23' );
  
  INSERT INTO
    process.definition
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id )
    VALUES
      ( 201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 );

  _head := process.get_head(202);
  PERFORM pgunit.assert_equals(_test_gid, _head.gid, 'Incorrect gid value');
  PERFORM pgunit.assert_equals(_test_display_name, _head.display_name, 'Incorrect display_name value');
  PERFORM pgunit.assert_equals(_test_document_date, _head.document_date, 'Incorrect document_date value');
  PERFORM pgunit.assert_equals(_test_curr_fsmt, _head.curr_fsmt, 'Incorrect curr_fsmt value');
  PERFORM pgunit.assert_equals(_test_document_type, _head.document_type, 'Incorrect document_type value');
  PERFORM pgunit.assert_equals(_test_component_part_code, (_head.producible_spec).part_code, 'Incorrect component_part_code value');
  PERFORM pgunit.assert_equals(_test_component_version_num, (_head.producible_spec).version_num, 'Incorrect component_version_num value');

  _head := process.get_head(203);
  PERFORM pgunit.assert_not_equals(_test_gid, _head.gid, 'Incorrect gid value');
  
  _head := process.get_head(204);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__process__get_head() OWNER TO postgres;

--
-- TOC entry 583 (class 1255 OID 98178)
-- Name: __process__get_id_by_gid(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__process__get_id_by_gid() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_id CONSTANT bigint := 202;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a';
  _id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __process__get_id_by_gid()';

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
    process.information
      ( id, gid, part_code, version_num, display_name, published_date )
    VALUES
      ( 101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23' );
  
  INSERT INTO
    process.definition
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id )
    VALUES
      ( 201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 );

  _id := process.get_id_by_gid(_test_gid);
  PERFORM pgunit.assert_equals(_test_id, _id, 'Incorrect _id value');

END;
$$;


ALTER FUNCTION tests.__process__get_id_by_gid() OWNER TO postgres;

--
-- TOC entry 584 (class 1255 OID 98179)
-- Name: __process__init(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__process__init() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.process_head[] := ARRAY[
      (
        203,
        '9b2952fa-01d1-11e7-b440-d4bed939923a',
        '11с32п-50х40: definition',
        3,
        '2017-10-21',
        'PROPOSED',
        'PRODUCTION',
        ('11.32.050-001',1,1.0000,'pcs','PRODUCIBLE')
      )
    ]::common.process_head[];
  _test_body CONSTANT common.process_segment[] := ARRAY[
      (
        '70d09038-5dfe-11e8-b545-d4bed939923a', 'OP-0001-01',
        ARRAY[('Гайка-М12-001', 1, 1.0000, 'pcs', 'PRIMAL', 1)]::common.consumable_specification[],
        ARRAY[('PERSONNEL-01', 1, 1, 1, 1, '00:30:00', '00:10:00')]::common.personnel_specification[],
        ARRAY[('EQUIPMENT-001', 1, 1.0000, 'pcs')]::common.equipment_specification[],
        ARRAY[('TOOLING-001', 1, 1.0000, 'pcs')]::common.tooling_specification[]
      ),
      (
        'b978dcdc-5dfe-11e8-b547-d4bed939923a', 'OP-0001-02',
        ARRAY[('80.31.050-001', 1, 1.0000, 'pcs', 'CONSUMABLE', 1)]::common.consumable_specification[],
        ARRAY[('PERSONNEL-02', 1, 1, 1, 1, '00:40:00', '00:20:00')]::common.personnel_specification[],
        ARRAY[('EQUIPMENT-002', 1, 1.0000, 'pcs')]::common.equipment_specification[],
        ARRAY[('TOOLING-002', 1, 1.0000, 'pcs')]::common.tooling_specification[]
      ),
      (
        'da20e25e-5dfe-11e8-b548-d4bed939923a', 'OP-0001-03',
        ARRAY[('72.01.009-001', 1, 2.0000, 'pcs', 'CONSUMABLE', 1)]::common.consumable_specification[],
        ARRAY[('PERSONNEL-03', 1, 1, 1, 1, '00:50:00', '00:30:00')]::common.personnel_specification[],
        ARRAY[('EQUIPMENT-003', 1, 1.0000, 'pcs')]::common.equipment_specification[],
        ARRAY[('TOOLING-003', 1, 1.0000, 'pcs')]::common.tooling_specification[]
      )
    ]::common.process_segment[];
  _test_deps CONSTANT common.dependency_specification[] := ARRAY[
      ( 'b978dcdc-5dfe-11e8-b547-d4bed939923a', '70d09038-5dfe-11e8-b545-d4bed939923a', 1 ),
      ( 'da20e25e-5dfe-11e8-b548-d4bed939923a', 'b978dcdc-5dfe-11e8-b547-d4bed939923a', 2 )
    ]::common.dependency_specification[];
  _head common.process_head;
  _body common.process_segment[];
  _deps common.dependency_specification[];
  _document_id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __process__init()';

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

  
  _document_id := process.init(_test_head[1], _test_body, _test_deps);
  --RAISE NOTICE 'document_id %',  _document_id;
  --_head := process.get_head(_document_id);
  _body := process.get_body(_document_id);
  --RAISE NOTICE '_body %',  _body;
  _deps := process.get_deps(_document_id);
  --PERFORM pgunit.assert_equals(_test_head[1], _head, 'Incorrect _head value');
  PERFORM pgunit.assert_array_equals(_test_body, _body, 'Incorrect _body value');
  PERFORM pgunit.assert_array_equals(_test_deps, _deps, 'Incorrect _body value');


END;
$$;


ALTER FUNCTION tests.__process__init() OWNER TO postgres;

--
-- TOC entry 585 (class 1255 OID 98180)
-- Name: __process__reinit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__process__reinit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.process_head[] := ARRAY[
      (
        203,
        '9b2952fa-01d1-11e7-b440-d4bed939923a',
        '11с32п-50х40: definition',
        3,
        '2017-10-21',
        'PROPOSED',
        'PRODUCTION',
        ('11.32.050-001',1,1.0000,'pcs','PRODUCIBLE')
      )
    ]::common.process_head[];
  _test_body_init CONSTANT common.process_segment[] := ARRAY[
      (
        '70d09038-5dfe-11e8-b545-d4bed939923a', 'OP-0001-01',
        ARRAY[('Гайка-М12-001', 1, 1.0000, 'pcs', 'PRIMAL', 1)]::common.consumable_specification[],
        ARRAY[('PERSONNEL-01', 1, 1, 1, 1, '00:30:00', '00:10:00')]::common.personnel_specification[],
        ARRAY[('EQUIPMENT-001', 1, 1.0000, 'pcs')]::common.equipment_specification[],
        ARRAY[('TOOLING-001', 1, 1.0000, 'pcs')]::common.tooling_specification[]
      ),
      (
        'b978dcdc-5dfe-11e8-b547-d4bed939923a', 'OP-0001-02',
        ARRAY[('80.31.050-001', 1, 1.0000, 'pcs', 'CONSUMABLE', 1)]::common.consumable_specification[],
        ARRAY[('PERSONNEL-02', 1, 1, 1, 1, '00:40:00', '00:20:00')]::common.personnel_specification[],
        ARRAY[('EQUIPMENT-002', 1, 1.0000, 'pcs')]::common.equipment_specification[],
        ARRAY[('TOOLING-002', 1, 1.0000, 'pcs')]::common.tooling_specification[]
      ),
      (
        'da20e25e-5dfe-11e8-b548-d4bed939923a', 'OP-0001-03',
        ARRAY[('72.01.009-001', 1, 2.0000, 'pcs', 'CONSUMABLE', 1)]::common.consumable_specification[],
        ARRAY[('PERSONNEL-03', 1, 1, 1, 1, '00:50:00', '00:30:00')]::common.personnel_specification[],
        ARRAY[('EQUIPMENT-003', 1, 1.0000, 'pcs')]::common.equipment_specification[],
        ARRAY[('TOOLING-003', 1, 1.0000, 'pcs')]::common.tooling_specification[]
      )
    ]::common.process_segment[];
  _test_body_reinit CONSTANT common.process_segment[] := ARRAY[
      (
        '70d09038-5dfe-11e8-b545-d4bed939923a', 'OP-0001-01',
        ARRAY[('Гайка-М12-001', 1, 2.0000, 'pcs', 'PRIMAL', 1)]::common.consumable_specification[],
        ARRAY[('PERSONNEL-01', 1, 2, 1, 1, '00:30:00', '00:10:00')]::common.personnel_specification[],
        ARRAY[('EQUIPMENT-001', 1, 2.0000, 'pcs')]::common.equipment_specification[],
        ARRAY[('TOOLING-001', 1, 2.0000, 'pcs')]::common.tooling_specification[]
      ),
      (
        'b978dcdc-5dfe-11e8-b547-d4bed939923a', 'OP-0001-02',
        ARRAY[('80.31.050-001', 1, 3.0000, 'pcs', 'CONSUMABLE', 1)]::common.consumable_specification[],
        ARRAY[('PERSONNEL-02', 1, 3, 1, 1, '00:40:00', '00:20:00')]::common.personnel_specification[],
        ARRAY[('EQUIPMENT-002', 1, 3.0000, 'pcs')]::common.equipment_specification[],
        ARRAY[('TOOLING-002', 1, 3.0000, 'pcs')]::common.tooling_specification[]
      ),
      (
        'da20e25e-5dfe-11e8-b548-d4bed939923a', 'OP-0001-03',
        ARRAY[('72.01.009-001', 1, 4.0000, 'pcs', 'CONSUMABLE', 1)]::common.consumable_specification[],
        ARRAY[('PERSONNEL-03', 1, 4, 1, 1, '00:50:00', '00:30:00')]::common.personnel_specification[],
        ARRAY[('EQUIPMENT-003', 1, 4.0000, 'pcs')]::common.equipment_specification[],
        ARRAY[('TOOLING-003', 1, 4.0000, 'pcs')]::common.tooling_specification[]
      )
    ]::common.process_segment[];
  _test_deps_init CONSTANT common.dependency_specification[] := ARRAY[
      ( 'b978dcdc-5dfe-11e8-b547-d4bed939923a', '70d09038-5dfe-11e8-b545-d4bed939923a', 1 ),
      ( 'da20e25e-5dfe-11e8-b548-d4bed939923a', 'b978dcdc-5dfe-11e8-b547-d4bed939923a', 2 )
    ]::common.dependency_specification[];
  _test_deps_reinit CONSTANT common.dependency_specification[] := ARRAY[
      ( 'b978dcdc-5dfe-11e8-b547-d4bed939923a', '70d09038-5dfe-11e8-b545-d4bed939923a', 1 ),
      ( 'da20e25e-5dfe-11e8-b548-d4bed939923a', 'b978dcdc-5dfe-11e8-b547-d4bed939923a', 2 )
    ]::common.dependency_specification[];
  _head common.process_head;
  _body common.process_segment[];
  _deps common.dependency_specification[];
  _document_id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __process__reinit()';

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
  
  _document_id := process.init(_test_head[1], _test_body_init, _test_deps_init);
  PERFORM process.reinit(_document_id, _test_body_reinit, _test_deps_reinit);
  _head := process.get_head(_document_id);
  _body := process.get_body(_document_id);
  _deps := process.get_deps(_document_id);
  --PERFORM pgunit.assert_equals(_test_head[1], _head, 'Incorrect _head value');
  PERFORM pgunit.assert_array_equals(_test_body_reinit, _body, 'Incorrect _body value');
  PERFORM pgunit.assert_array_equals(_test_deps_reinit, _deps, 'Incorrect _deps value');


END;
$$;


ALTER FUNCTION tests.__process__reinit() OWNER TO postgres;

--
-- TOC entry 586 (class 1255 OID 98182)
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
-- TOC entry 587 (class 1255 OID 98184)
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
-- TOC entry 588 (class 1255 OID 98185)
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
-- TOC entry 589 (class 1255 OID 98186)
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
-- TOC entry 590 (class 1255 OID 98187)
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
-- TOC entry 239 (class 1259 OID 98188)
-- Name: ebom_to_mbom; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.ebom_to_mbom (
    ebom_id bigint NOT NULL,
    mbom_id bigint NOT NULL
);


ALTER TABLE binding.ebom_to_mbom OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 98194)
-- Name: ebom_to_process; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.ebom_to_process (
    ebom_id bigint NOT NULL,
    process_id bigint NOT NULL
);


ALTER TABLE binding.ebom_to_process OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 98191)
-- Name: ebom_to_product; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.ebom_to_product (
    ebom_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE binding.ebom_to_product OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 98197)
-- Name: ebom_to_route; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.ebom_to_route (
    ebom_id bigint NOT NULL,
    route_id bigint NOT NULL
);


ALTER TABLE binding.ebom_to_route OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 98200)
-- Name: mbom_to_operation; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.mbom_to_operation (
    mbom_id bigint NOT NULL,
    operation_id bigint NOT NULL
);


ALTER TABLE binding.mbom_to_operation OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 98206)
-- Name: mbom_to_process; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.mbom_to_process (
    mbom_id bigint NOT NULL,
    process_id bigint NOT NULL
);


ALTER TABLE binding.mbom_to_process OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 98203)
-- Name: mbom_to_product; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.mbom_to_product (
    mbom_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE binding.mbom_to_product OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 98209)
-- Name: operation_to_product; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.operation_to_product (
    operation_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE binding.operation_to_product OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 98212)
-- Name: route_to_mbom; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.route_to_mbom (
    route_id bigint NOT NULL,
    mbom_id bigint NOT NULL
);


ALTER TABLE binding.route_to_mbom OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 98215)
-- Name: route_to_operation; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.route_to_operation (
    route_id bigint NOT NULL,
    operation_id bigint NOT NULL
);


ALTER TABLE binding.route_to_operation OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 98218)
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
-- TOC entry 250 (class 1259 OID 98225)
-- Name: assembly; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE ebom.assembly (
    CONSTRAINT assembly_component_type_check CHECK ((component_type = 'ASSEMBLY'::common.component_kind))
)
INHERITS (ebom.component);


ALTER TABLE ebom.assembly OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 98233)
-- Name: buyable; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE ebom.buyable (
    CONSTRAINT buyable_component_type_check CHECK ((component_type = 'BUYABLE'::common.component_kind))
)
INHERITS (ebom.component);


ALTER TABLE ebom.buyable OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 98241)
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
-- TOC entry 253 (class 1259 OID 98252)
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
-- TOC entry 4538 (class 0 OID 0)
-- Dependencies: 253
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: ebom; Owner: postgres
--

ALTER SEQUENCE ebom.definition_id_seq OWNED BY ebom.definition.id;


--
-- TOC entry 254 (class 1259 OID 98254)
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
-- TOC entry 255 (class 1259 OID 98262)
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
-- TOC entry 4539 (class 0 OID 0)
-- Dependencies: 255
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: ebom; Owner: postgres
--

ALTER SEQUENCE ebom.information_id_seq OWNED BY ebom.information.id;


--
-- TOC entry 256 (class 1259 OID 98264)
-- Name: part; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE ebom.part (
    CONSTRAINT part_component_type_check CHECK ((component_type = 'PART'::common.component_kind))
)
INHERITS (ebom.component);


ALTER TABLE ebom.part OWNER TO postgres;

--
-- TOC entry 324 (class 1259 OID 99216)
-- Name: information; Type: TABLE; Schema: equipment; Owner: postgres
--

CREATE TABLE equipment.information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    equipment_code character varying NOT NULL,
    version_num integer NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL
);


ALTER TABLE equipment.information OWNER TO postgres;

--
-- TOC entry 323 (class 1259 OID 99214)
-- Name: information_id_seq; Type: SEQUENCE; Schema: equipment; Owner: postgres
--

CREATE SEQUENCE equipment.information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE equipment.information_id_seq OWNER TO postgres;

--
-- TOC entry 4540 (class 0 OID 0)
-- Dependencies: 323
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: equipment; Owner: postgres
--

ALTER SEQUENCE equipment.information_id_seq OWNED BY equipment.information.id;


--
-- TOC entry 328 (class 1259 OID 99261)
-- Name: information; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE facility.information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    facility_code character varying NOT NULL,
    version_num integer DEFAULT 1 NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    parent_facility_code character varying,
    facility_type common.facility_kind NOT NULL
);


ALTER TABLE facility.information OWNER TO postgres;

--
-- TOC entry 4541 (class 0 OID 0)
-- Dependencies: 328
-- Name: COLUMN information.facility_type; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON COLUMN facility.information.facility_type IS 'PERA organization level';


--
-- TOC entry 327 (class 1259 OID 99259)
-- Name: information_id_seq; Type: SEQUENCE; Schema: facility; Owner: postgres
--

CREATE SEQUENCE facility.information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE facility.information_id_seq OWNER TO postgres;

--
-- TOC entry 4542 (class 0 OID 0)
-- Dependencies: 327
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: facility; Owner: postgres
--

ALTER SEQUENCE facility.information_id_seq OWNED BY facility.information.id;


--
-- TOC entry 257 (class 1259 OID 98272)
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
-- TOC entry 4543 (class 0 OID 0)
-- Dependencies: 257
-- Name: TABLE conglomeration; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.conglomeration IS 'inventory list';


--
-- TOC entry 258 (class 1259 OID 98280)
-- Name: assembly; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.assembly (
    CONSTRAINT assembly_inventory_type_check CHECK ((inventory_type = 'ASSEMBLY'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.assembly OWNER TO postgres;

--
-- TOC entry 4544 (class 0 OID 0)
-- Dependencies: 258
-- Name: TABLE assembly; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.assembly IS 'ebom assembly component';


--
-- TOC entry 259 (class 1259 OID 98289)
-- Name: buyable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.buyable (
    CONSTRAINT buyable_inventory_type_check CHECK ((inventory_type = 'BUYABLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.buyable OWNER TO postgres;

--
-- TOC entry 4545 (class 0 OID 0)
-- Dependencies: 259
-- Name: TABLE buyable; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.buyable IS 'ebom buyable component';


--
-- TOC entry 260 (class 1259 OID 98298)
-- Name: consumable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.consumable (
    CONSTRAINT consumable_inventory_type_check CHECK ((inventory_type = 'CONSUMABLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.consumable OWNER TO postgres;

--
-- TOC entry 4546 (class 0 OID 0)
-- Dependencies: 260
-- Name: TABLE consumable; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.consumable IS 'mbom consumable component';


--
-- TOC entry 261 (class 1259 OID 98307)
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
-- TOC entry 262 (class 1259 OID 98319)
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
-- TOC entry 4547 (class 0 OID 0)
-- Dependencies: 262
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: inventory; Owner: postgres
--

ALTER SEQUENCE inventory.definition_id_seq OWNED BY inventory.definition.id;


--
-- TOC entry 263 (class 1259 OID 98321)
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
-- TOC entry 264 (class 1259 OID 98329)
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
-- TOC entry 4548 (class 0 OID 0)
-- Dependencies: 264
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: inventory; Owner: postgres
--

ALTER SEQUENCE inventory.information_id_seq OWNED BY inventory.information.id;


--
-- TOC entry 265 (class 1259 OID 98331)
-- Name: measurement; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.measurement (
    definition_id bigint NOT NULL,
    uom_code character varying NOT NULL,
    factor numeric
);


ALTER TABLE inventory.measurement OWNER TO postgres;

--
-- TOC entry 266 (class 1259 OID 98337)
-- Name: part; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.part (
    CONSTRAINT part_inventory_type_check CHECK ((inventory_type = 'PART'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.part OWNER TO postgres;

--
-- TOC entry 4549 (class 0 OID 0)
-- Dependencies: 266
-- Name: TABLE part; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.part IS 'ebom part component';


--
-- TOC entry 267 (class 1259 OID 98346)
-- Name: phantom; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.phantom (
    CONSTRAINT phantom_inventory_type_check CHECK ((inventory_type = 'PHANTOM'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.phantom OWNER TO postgres;

--
-- TOC entry 4550 (class 0 OID 0)
-- Dependencies: 267
-- Name: TABLE phantom; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.phantom IS 'mbom phantom component';


--
-- TOC entry 268 (class 1259 OID 98355)
-- Name: primal; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.primal (
    CONSTRAINT primal_inventory_type_check CHECK ((inventory_type = 'PRIMAL'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.primal OWNER TO postgres;

--
-- TOC entry 4551 (class 0 OID 0)
-- Dependencies: 268
-- Name: TABLE primal; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.primal IS 'mbom primal component';


--
-- TOC entry 269 (class 1259 OID 98364)
-- Name: producible; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.producible (
    CONSTRAINT producible_inventory_type_check CHECK ((inventory_type = 'PRODUCIBLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.producible OWNER TO postgres;

--
-- TOC entry 4552 (class 0 OID 0)
-- Dependencies: 269
-- Name: TABLE producible; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.producible IS 'mbom producible component';


--
-- TOC entry 270 (class 1259 OID 98373)
-- Name: salable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.salable (
    CONSTRAINT salable_inventory_type_check CHECK ((inventory_type = 'SALABLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.salable OWNER TO postgres;

--
-- TOC entry 4553 (class 0 OID 0)
-- Dependencies: 270
-- Name: TABLE salable; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.salable IS 'inventory salable component';


--
-- TOC entry 271 (class 1259 OID 98382)
-- Name: storable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.storable (
    CONSTRAINT storable_inventory_type_check CHECK ((inventory_type = 'STORABLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.storable OWNER TO postgres;

--
-- TOC entry 272 (class 1259 OID 98391)
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
-- TOC entry 273 (class 1259 OID 98398)
-- Name: consumable; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE mbom.consumable (
    CONSTRAINT consumable_component_type_check CHECK ((material_type = 'CONSUMABLE'::common.material_kind))
)
INHERITS (mbom.material);


ALTER TABLE mbom.consumable OWNER TO postgres;

--
-- TOC entry 274 (class 1259 OID 98406)
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
-- TOC entry 275 (class 1259 OID 98417)
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
-- TOC entry 4554 (class 0 OID 0)
-- Dependencies: 275
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: mbom; Owner: postgres
--

ALTER SEQUENCE mbom.definition_id_seq OWNED BY mbom.definition.id;


--
-- TOC entry 276 (class 1259 OID 98419)
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
-- TOC entry 277 (class 1259 OID 98427)
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
-- TOC entry 4555 (class 0 OID 0)
-- Dependencies: 277
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: mbom; Owner: postgres
--

ALTER SEQUENCE mbom.information_id_seq OWNED BY mbom.information.id;


--
-- TOC entry 278 (class 1259 OID 98429)
-- Name: primal; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE mbom.primal (
    CONSTRAINT primal_component_type_check CHECK ((material_type = 'PRIMAL'::common.material_kind))
)
INHERITS (mbom.material);


ALTER TABLE mbom.primal OWNER TO postgres;

--
-- TOC entry 326 (class 1259 OID 99233)
-- Name: information; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE operation.information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    operation_code character varying NOT NULL,
    version_num integer NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL
);


ALTER TABLE operation.information OWNER TO postgres;

--
-- TOC entry 325 (class 1259 OID 99231)
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
-- TOC entry 4556 (class 0 OID 0)
-- Dependencies: 325
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE operation.information_id_seq OWNED BY operation.information.id;


--
-- TOC entry 320 (class 1259 OID 99182)
-- Name: information; Type: TABLE; Schema: personnel; Owner: postgres
--

CREATE TABLE personnel.information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    personnel_code character varying NOT NULL,
    version_num integer NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL
);


ALTER TABLE personnel.information OWNER TO postgres;

--
-- TOC entry 319 (class 1259 OID 99180)
-- Name: information_id_seq; Type: SEQUENCE; Schema: personnel; Owner: postgres
--

CREATE SEQUENCE personnel.information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE personnel.information_id_seq OWNER TO postgres;

--
-- TOC entry 4557 (class 0 OID 0)
-- Dependencies: 319
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: personnel; Owner: postgres
--

ALTER SEQUENCE personnel.information_id_seq OWNED BY personnel.information.id;


--
-- TOC entry 292 (class 1259 OID 98521)
-- Name: material; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE process.material (
    segment_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    quantity common.quantity,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL,
    material_type common.material_kind,
    rationing_qty integer DEFAULT 1
);


ALTER TABLE process.material OWNER TO postgres;

--
-- TOC entry 293 (class 1259 OID 98529)
-- Name: consumable; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE process.consumable (
)
INHERITS (process.material);


ALTER TABLE process.consumable OWNER TO postgres;

--
-- TOC entry 294 (class 1259 OID 98537)
-- Name: definition; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE process.definition (
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


ALTER TABLE process.definition OWNER TO postgres;

--
-- TOC entry 295 (class 1259 OID 98548)
-- Name: definition_id_seq; Type: SEQUENCE; Schema: process; Owner: postgres
--

CREATE SEQUENCE process.definition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE process.definition_id_seq OWNER TO postgres;

--
-- TOC entry 4558 (class 0 OID 0)
-- Dependencies: 295
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE process.definition_id_seq OWNED BY process.definition.id;


--
-- TOC entry 296 (class 1259 OID 98550)
-- Name: dependency; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE process.dependency (
    ancestor uuid NOT NULL,
    descendant uuid NOT NULL,
    depth integer DEFAULT 1 NOT NULL
);


ALTER TABLE process.dependency OWNER TO postgres;

--
-- TOC entry 297 (class 1259 OID 98554)
-- Name: equipment; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE process.equipment (
    segment_id bigint NOT NULL,
    equipment_code character varying NOT NULL,
    version_num integer,
    quantity common.quantity,
    uom_code character varying
);


ALTER TABLE process.equipment OWNER TO postgres;

--
-- TOC entry 298 (class 1259 OID 98560)
-- Name: information; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE process.information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    published_date date DEFAULT now() NOT NULL,
    part_code character varying,
    version_num integer
);


ALTER TABLE process.information OWNER TO postgres;

--
-- TOC entry 299 (class 1259 OID 98568)
-- Name: information_id_seq; Type: SEQUENCE; Schema: process; Owner: postgres
--

CREATE SEQUENCE process.information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE process.information_id_seq OWNER TO postgres;

--
-- TOC entry 4559 (class 0 OID 0)
-- Dependencies: 299
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE process.information_id_seq OWNED BY process.information.id;


--
-- TOC entry 300 (class 1259 OID 98570)
-- Name: personnel; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE process.personnel (
    segment_id bigint NOT NULL,
    personnel_code character varying NOT NULL,
    version_num integer,
    rationing_qty integer DEFAULT 1 NOT NULL,
    batch_qty integer,
    workers_qty integer DEFAULT 1 NOT NULL,
    setup_time interval DEFAULT '00:01:00'::interval NOT NULL,
    piece_time interval DEFAULT '00:01:00'::interval NOT NULL
);


ALTER TABLE process.personnel OWNER TO postgres;

--
-- TOC entry 301 (class 1259 OID 98580)
-- Name: primal; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE process.primal (
)
INHERITS (process.material);


ALTER TABLE process.primal OWNER TO postgres;

--
-- TOC entry 302 (class 1259 OID 98588)
-- Name: segment; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE process.segment (
    id bigint NOT NULL,
    definition_id bigint NOT NULL,
    operation_code character varying NOT NULL,
    gid uuid NOT NULL
);


ALTER TABLE process.segment OWNER TO postgres;

--
-- TOC entry 303 (class 1259 OID 98594)
-- Name: segment_id_seq; Type: SEQUENCE; Schema: process; Owner: postgres
--

CREATE SEQUENCE process.segment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE process.segment_id_seq OWNER TO postgres;

--
-- TOC entry 4560 (class 0 OID 0)
-- Dependencies: 303
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE process.segment_id_seq OWNED BY process.segment.id;


--
-- TOC entry 304 (class 1259 OID 98596)
-- Name: tooling; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE process.tooling (
    segment_id bigint NOT NULL,
    tooling_code character varying NOT NULL,
    version_num integer,
    quantity common.quantity,
    uom_code character varying
);


ALTER TABLE process.tooling OWNER TO postgres;

--
-- TOC entry 279 (class 1259 OID 98437)
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
-- TOC entry 280 (class 1259 OID 98445)
-- Name: consumable; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.consumable (
    CONSTRAINT consumable_material_type_check CHECK ((material_type = 'CONSUMABLE'::common.material_kind))
)
INHERITS (product.material);


ALTER TABLE product.consumable OWNER TO postgres;

--
-- TOC entry 281 (class 1259 OID 98454)
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
-- TOC entry 282 (class 1259 OID 98465)
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
-- TOC entry 4561 (class 0 OID 0)
-- Dependencies: 282
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE product.definition_id_seq OWNED BY product.definition.id;


--
-- TOC entry 283 (class 1259 OID 98467)
-- Name: dependency; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.dependency (
    ancestor bigint NOT NULL,
    descendant bigint NOT NULL,
    depth integer DEFAULT 1 NOT NULL
);


ALTER TABLE product.dependency OWNER TO postgres;

--
-- TOC entry 284 (class 1259 OID 98471)
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
-- TOC entry 285 (class 1259 OID 98477)
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
-- TOC entry 286 (class 1259 OID 98485)
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
-- TOC entry 4562 (class 0 OID 0)
-- Dependencies: 286
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE product.information_id_seq OWNED BY product.information.id;


--
-- TOC entry 287 (class 1259 OID 98487)
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
-- TOC entry 288 (class 1259 OID 98497)
-- Name: primal; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.primal (
    CONSTRAINT primal_material_type_check CHECK ((material_type = 'PRIMAL'::common.material_kind))
)
INHERITS (product.material);


ALTER TABLE product.primal OWNER TO postgres;

--
-- TOC entry 289 (class 1259 OID 98506)
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
-- TOC entry 4563 (class 0 OID 0)
-- Dependencies: 289
-- Name: TABLE segment; Type: COMMENT; Schema: product; Owner: postgres
--

COMMENT ON TABLE product.segment IS 'segments to specify process';


--
-- TOC entry 290 (class 1259 OID 98513)
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
-- TOC entry 4564 (class 0 OID 0)
-- Dependencies: 290
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE product.segment_id_seq OWNED BY product.segment.id;


--
-- TOC entry 291 (class 1259 OID 98515)
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
-- TOC entry 305 (class 1259 OID 98602)
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
-- TOC entry 306 (class 1259 OID 98608)
-- Name: consumable; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE route.consumable (
    CONSTRAINT consumable_ancestor_material_type_check CHECK ((ancestor_material_type = 'CONSUMABLE'::common.material_kind)),
    CONSTRAINT consumable_check CHECK (((descendant_part_code)::text <> (ancestor_part_code)::text))
)
INHERITS (route.segment);


ALTER TABLE route.consumable OWNER TO postgres;

--
-- TOC entry 307 (class 1259 OID 98616)
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
-- TOC entry 308 (class 1259 OID 98627)
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
-- TOC entry 4565 (class 0 OID 0)
-- Dependencies: 308
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: route; Owner: postgres
--

ALTER SEQUENCE route.definition_id_seq OWNED BY route.definition.id;


--
-- TOC entry 309 (class 1259 OID 98629)
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
-- TOC entry 310 (class 1259 OID 98637)
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
-- TOC entry 4566 (class 0 OID 0)
-- Dependencies: 310
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: route; Owner: postgres
--

ALTER SEQUENCE route.information_id_seq OWNED BY route.information.id;


--
-- TOC entry 311 (class 1259 OID 98639)
-- Name: location; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE route.location (
    definition_id bigint NOT NULL,
    location_code character varying NOT NULL
);


ALTER TABLE route.location OWNER TO postgres;

--
-- TOC entry 312 (class 1259 OID 98645)
-- Name: primal; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE route.primal (
    CONSTRAINT primal_ancestor_material_type_check CHECK ((ancestor_material_type = 'PRIMAL'::common.material_kind)),
    CONSTRAINT primal_check CHECK (((descendant_part_code)::text <> (ancestor_part_code)::text))
)
INHERITS (route.segment);


ALTER TABLE route.primal OWNER TO postgres;

--
-- TOC entry 336 (class 1259 OID 99407)
-- Name: material; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.material (
    information_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    quantity common.quantity,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL,
    material_type common.material_kind,
    rationing_qty integer DEFAULT 1
);


ALTER TABLE stride.material OWNER TO postgres;

--
-- TOC entry 338 (class 1259 OID 99437)
-- Name: consumable; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.consumable (
)
INHERITS (stride.material);


ALTER TABLE stride.consumable OWNER TO postgres;

--
-- TOC entry 335 (class 1259 OID 99386)
-- Name: definition; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.definition (
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


ALTER TABLE stride.definition OWNER TO postgres;

--
-- TOC entry 334 (class 1259 OID 99384)
-- Name: definition_id_seq; Type: SEQUENCE; Schema: stride; Owner: postgres
--

CREATE SEQUENCE stride.definition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE stride.definition_id_seq OWNER TO postgres;

--
-- TOC entry 4567 (class 0 OID 0)
-- Dependencies: 334
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: stride; Owner: postgres
--

ALTER SEQUENCE stride.definition_id_seq OWNED BY stride.definition.id;


--
-- TOC entry 343 (class 1259 OID 99539)
-- Name: descendant; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.descendant (
    definition_id bigint NOT NULL,
    part_code character varying,
    version_num integer,
    process_num integer,
    segment_num integer
);


ALTER TABLE stride.descendant OWNER TO postgres;

--
-- TOC entry 339 (class 1259 OID 99457)
-- Name: equipment; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.equipment (
    information_id bigint NOT NULL,
    equipment_code character varying NOT NULL,
    version_num integer,
    quantity common.quantity,
    uom_code character varying
);


ALTER TABLE stride.equipment OWNER TO postgres;

--
-- TOC entry 333 (class 1259 OID 99368)
-- Name: information; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    published_date date DEFAULT now() NOT NULL,
    part_code character varying,
    version_num integer,
    process_num integer,
    segment_num integer
);


ALTER TABLE stride.information OWNER TO postgres;

--
-- TOC entry 332 (class 1259 OID 99366)
-- Name: information_id_seq; Type: SEQUENCE; Schema: stride; Owner: postgres
--

CREATE SEQUENCE stride.information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE stride.information_id_seq OWNER TO postgres;

--
-- TOC entry 4568 (class 0 OID 0)
-- Dependencies: 332
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: stride; Owner: postgres
--

ALTER SEQUENCE stride.information_id_seq OWNED BY stride.information.id;


--
-- TOC entry 342 (class 1259 OID 99500)
-- Name: location; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.location (
    definition_id bigint NOT NULL,
    location_code character varying NOT NULL
);


ALTER TABLE stride.location OWNER TO postgres;

--
-- TOC entry 340 (class 1259 OID 99470)
-- Name: personnel; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.personnel (
    information_id bigint NOT NULL,
    personnel_code character varying NOT NULL,
    version_num integer,
    rationing_qty integer DEFAULT 1 NOT NULL,
    batch_qty integer,
    workers_qty integer DEFAULT 1 NOT NULL,
    setup_time interval DEFAULT '00:01:00'::interval NOT NULL,
    piece_time interval DEFAULT '00:01:00'::interval NOT NULL
);


ALTER TABLE stride.personnel OWNER TO postgres;

--
-- TOC entry 337 (class 1259 OID 99417)
-- Name: primal; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.primal (
)
INHERITS (stride.material);


ALTER TABLE stride.primal OWNER TO postgres;

--
-- TOC entry 341 (class 1259 OID 99487)
-- Name: tooling; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.tooling (
    information_id bigint NOT NULL,
    tooling_code character varying NOT NULL,
    version_num integer,
    quantity common.quantity,
    uom_code character varying
);


ALTER TABLE stride.tooling OWNER TO postgres;

--
-- TOC entry 313 (class 1259 OID 98653)
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
-- TOC entry 314 (class 1259 OID 98658)
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
-- TOC entry 315 (class 1259 OID 98663)
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
-- TOC entry 322 (class 1259 OID 99199)
-- Name: information; Type: TABLE; Schema: tooling; Owner: postgres
--

CREATE TABLE tooling.information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    tooling_code character varying NOT NULL,
    version_num integer NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL
);


ALTER TABLE tooling.information OWNER TO postgres;

--
-- TOC entry 321 (class 1259 OID 99197)
-- Name: information_id_seq; Type: SEQUENCE; Schema: tooling; Owner: postgres
--

CREATE SEQUENCE tooling.information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tooling.information_id_seq OWNER TO postgres;

--
-- TOC entry 4569 (class 0 OID 0)
-- Dependencies: 321
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: tooling; Owner: postgres
--

ALTER SEQUENCE tooling.information_id_seq OWNED BY tooling.information.id;


--
-- TOC entry 316 (class 1259 OID 98668)
-- Name: assignment; Type: TABLE; Schema: uom; Owner: postgres
--

CREATE TABLE uom.assignment (
    uom_role_id bigint NOT NULL,
    uom_role_code character varying(100),
    uom_role_name character varying(300)
);


ALTER TABLE uom.assignment OWNER TO postgres;

--
-- TOC entry 4570 (class 0 OID 0)
-- Dependencies: 316
-- Name: TABLE assignment; Type: COMMENT; Schema: uom; Owner: postgres
--

COMMENT ON TABLE uom.assignment IS 'uom role';


--
-- TOC entry 317 (class 1259 OID 98671)
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
-- TOC entry 318 (class 1259 OID 98677)
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
-- TOC entry 4571 (class 0 OID 0)
-- Dependencies: 318
-- Name: uom_role_uom_role_id_seq; Type: SEQUENCE OWNED BY; Schema: uom; Owner: postgres
--

ALTER SEQUENCE uom.uom_role_uom_role_id_seq OWNED BY uom.assignment.uom_role_id;


--
-- TOC entry 3859 (class 2604 OID 98679)
-- Name: assembly uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.assembly ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3861 (class 2604 OID 98680)
-- Name: buyable uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.buyable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3868 (class 2604 OID 98681)
-- Name: definition id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition ALTER COLUMN id SET DEFAULT nextval('ebom.definition_id_seq'::regclass);


--
-- TOC entry 3871 (class 2604 OID 98682)
-- Name: information id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information ALTER COLUMN id SET DEFAULT nextval('ebom.information_id_seq'::regclass);


--
-- TOC entry 3872 (class 2604 OID 98683)
-- Name: part uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.part ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3992 (class 2604 OID 99219)
-- Name: information id; Type: DEFAULT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY equipment.information ALTER COLUMN id SET DEFAULT nextval('equipment.information_id_seq'::regclass);


--
-- TOC entry 3998 (class 2604 OID 99264)
-- Name: information id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.information ALTER COLUMN id SET DEFAULT nextval('facility.information_id_seq'::regclass);


--
-- TOC entry 3876 (class 2604 OID 98684)
-- Name: assembly version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.assembly ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3877 (class 2604 OID 98685)
-- Name: assembly published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.assembly ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3879 (class 2604 OID 98686)
-- Name: buyable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.buyable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3880 (class 2604 OID 98687)
-- Name: buyable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.buyable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3882 (class 2604 OID 98688)
-- Name: consumable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.consumable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3883 (class 2604 OID 98689)
-- Name: consumable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.consumable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3891 (class 2604 OID 98690)
-- Name: definition id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition ALTER COLUMN id SET DEFAULT nextval('inventory.definition_id_seq'::regclass);


--
-- TOC entry 3894 (class 2604 OID 98691)
-- Name: information id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.information ALTER COLUMN id SET DEFAULT nextval('inventory.information_id_seq'::regclass);


--
-- TOC entry 3895 (class 2604 OID 98692)
-- Name: part version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.part ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3896 (class 2604 OID 98693)
-- Name: part published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.part ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3898 (class 2604 OID 98694)
-- Name: phantom version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.phantom ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3899 (class 2604 OID 98695)
-- Name: phantom published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.phantom ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3901 (class 2604 OID 98696)
-- Name: primal version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.primal ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3902 (class 2604 OID 98697)
-- Name: primal published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.primal ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3904 (class 2604 OID 98698)
-- Name: producible version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.producible ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3905 (class 2604 OID 98699)
-- Name: producible published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.producible ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3907 (class 2604 OID 98700)
-- Name: salable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.salable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3908 (class 2604 OID 98701)
-- Name: salable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.salable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3910 (class 2604 OID 98702)
-- Name: storable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.storable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3911 (class 2604 OID 98703)
-- Name: storable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.storable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3914 (class 2604 OID 98704)
-- Name: consumable uom_code; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3921 (class 2604 OID 98705)
-- Name: definition id; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition ALTER COLUMN id SET DEFAULT nextval('mbom.definition_id_seq'::regclass);


--
-- TOC entry 3924 (class 2604 OID 98706)
-- Name: information id; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.information ALTER COLUMN id SET DEFAULT nextval('mbom.information_id_seq'::regclass);


--
-- TOC entry 3925 (class 2604 OID 98707)
-- Name: primal uom_code; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3995 (class 2604 OID 99236)
-- Name: information id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.information ALTER COLUMN id SET DEFAULT nextval('operation.information_id_seq'::regclass);


--
-- TOC entry 3986 (class 2604 OID 99185)
-- Name: information id; Type: DEFAULT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY personnel.information ALTER COLUMN id SET DEFAULT nextval('personnel.information_id_seq'::regclass);


--
-- TOC entry 3953 (class 2604 OID 98715)
-- Name: consumable uom_code; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3954 (class 2604 OID 98716)
-- Name: consumable rationing_qty; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.consumable ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3960 (class 2604 OID 98717)
-- Name: definition id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.definition ALTER COLUMN id SET DEFAULT nextval('process.definition_id_seq'::regclass);


--
-- TOC entry 3964 (class 2604 OID 98718)
-- Name: information id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.information ALTER COLUMN id SET DEFAULT nextval('process.information_id_seq'::regclass);


--
-- TOC entry 3969 (class 2604 OID 98719)
-- Name: primal uom_code; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3970 (class 2604 OID 98720)
-- Name: primal rationing_qty; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.primal ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3971 (class 2604 OID 98721)
-- Name: segment id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.segment ALTER COLUMN id SET DEFAULT nextval('process.segment_id_seq'::regclass);


--
-- TOC entry 3929 (class 2604 OID 98708)
-- Name: consumable uom_code; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3930 (class 2604 OID 98709)
-- Name: consumable rationing_qty; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.consumable ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3937 (class 2604 OID 98710)
-- Name: definition id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.definition ALTER COLUMN id SET DEFAULT nextval('product.definition_id_seq'::regclass);


--
-- TOC entry 3941 (class 2604 OID 98711)
-- Name: information id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.information ALTER COLUMN id SET DEFAULT nextval('product.information_id_seq'::regclass);


--
-- TOC entry 3946 (class 2604 OID 98712)
-- Name: primal uom_code; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3947 (class 2604 OID 98713)
-- Name: primal rationing_qty; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.primal ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3950 (class 2604 OID 98714)
-- Name: segment id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.segment ALTER COLUMN id SET DEFAULT nextval('product.segment_id_seq'::regclass);


--
-- TOC entry 3979 (class 2604 OID 98722)
-- Name: definition id; Type: DEFAULT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.definition ALTER COLUMN id SET DEFAULT nextval('route.definition_id_seq'::regclass);


--
-- TOC entry 3982 (class 2604 OID 98723)
-- Name: information id; Type: DEFAULT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.information ALTER COLUMN id SET DEFAULT nextval('route.information_id_seq'::regclass);


--
-- TOC entry 4015 (class 2604 OID 99440)
-- Name: consumable uom_code; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 4016 (class 2604 OID 99441)
-- Name: consumable rationing_qty; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.consumable ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 4005 (class 2604 OID 99389)
-- Name: definition id; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.definition ALTER COLUMN id SET DEFAULT nextval('stride.definition_id_seq'::regclass);


--
-- TOC entry 4002 (class 2604 OID 99371)
-- Name: information id; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.information ALTER COLUMN id SET DEFAULT nextval('stride.information_id_seq'::regclass);


--
-- TOC entry 4013 (class 2604 OID 99420)
-- Name: primal uom_code; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 4014 (class 2604 OID 99421)
-- Name: primal rationing_qty; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.primal ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3989 (class 2604 OID 99202)
-- Name: information id; Type: DEFAULT; Schema: tooling; Owner: postgres
--

ALTER TABLE ONLY tooling.information ALTER COLUMN id SET DEFAULT nextval('tooling.information_id_seq'::regclass);


--
-- TOC entry 3985 (class 2604 OID 98724)
-- Name: assignment uom_role_id; Type: DEFAULT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.assignment ALTER COLUMN uom_role_id SET DEFAULT nextval('uom.uom_role_uom_role_id_seq'::regclass);


--
-- TOC entry 4418 (class 0 OID 98188)
-- Dependencies: 239
-- Data for Name: ebom_to_mbom; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4420 (class 0 OID 98194)
-- Dependencies: 241
-- Data for Name: ebom_to_process; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4419 (class 0 OID 98191)
-- Dependencies: 240
-- Data for Name: ebom_to_product; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4421 (class 0 OID 98197)
-- Dependencies: 242
-- Data for Name: ebom_to_route; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4422 (class 0 OID 98200)
-- Dependencies: 243
-- Data for Name: mbom_to_operation; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4424 (class 0 OID 98206)
-- Dependencies: 245
-- Data for Name: mbom_to_process; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4423 (class 0 OID 98203)
-- Dependencies: 244
-- Data for Name: mbom_to_product; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4425 (class 0 OID 98209)
-- Dependencies: 246
-- Data for Name: operation_to_product; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4426 (class 0 OID 98212)
-- Dependencies: 247
-- Data for Name: route_to_mbom; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4427 (class 0 OID 98215)
-- Dependencies: 248
-- Data for Name: route_to_operation; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4429 (class 0 OID 98225)
-- Dependencies: 250
-- Data for Name: assembly; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 4430 (class 0 OID 98233)
-- Dependencies: 251
-- Data for Name: buyable; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 4428 (class 0 OID 98218)
-- Dependencies: 249
-- Data for Name: component; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 4431 (class 0 OID 98241)
-- Dependencies: 252
-- Data for Name: definition; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 4572 (class 0 OID 0)
-- Dependencies: 253
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: ebom; Owner: postgres
--

SELECT pg_catalog.setval('ebom.definition_id_seq', 8, true);


--
-- TOC entry 4433 (class 0 OID 98254)
-- Dependencies: 254
-- Data for Name: information; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 4573 (class 0 OID 0)
-- Dependencies: 255
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: ebom; Owner: postgres
--

SELECT pg_catalog.setval('ebom.information_id_seq', 8, true);


--
-- TOC entry 4435 (class 0 OID 98264)
-- Dependencies: 256
-- Data for Name: part; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 4500 (class 0 OID 99216)
-- Dependencies: 324
-- Data for Name: information; Type: TABLE DATA; Schema: equipment; Owner: postgres
--



--
-- TOC entry 4574 (class 0 OID 0)
-- Dependencies: 323
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: equipment; Owner: postgres
--

SELECT pg_catalog.setval('equipment.information_id_seq', 1, false);


--
-- TOC entry 4504 (class 0 OID 99261)
-- Dependencies: 328
-- Data for Name: information; Type: TABLE DATA; Schema: facility; Owner: postgres
--



--
-- TOC entry 4575 (class 0 OID 0)
-- Dependencies: 327
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: facility; Owner: postgres
--

SELECT pg_catalog.setval('facility.information_id_seq', 1, false);


--
-- TOC entry 4437 (class 0 OID 98280)
-- Dependencies: 258
-- Data for Name: assembly; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4438 (class 0 OID 98289)
-- Dependencies: 259
-- Data for Name: buyable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4436 (class 0 OID 98272)
-- Dependencies: 257
-- Data for Name: conglomeration; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4439 (class 0 OID 98298)
-- Dependencies: 260
-- Data for Name: consumable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4440 (class 0 OID 98307)
-- Dependencies: 261
-- Data for Name: definition; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4576 (class 0 OID 0)
-- Dependencies: 262
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.definition_id_seq', 8, true);


--
-- TOC entry 4442 (class 0 OID 98321)
-- Dependencies: 263
-- Data for Name: information; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4577 (class 0 OID 0)
-- Dependencies: 264
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.information_id_seq', 8, true);


--
-- TOC entry 4444 (class 0 OID 98331)
-- Dependencies: 265
-- Data for Name: measurement; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4445 (class 0 OID 98337)
-- Dependencies: 266
-- Data for Name: part; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4446 (class 0 OID 98346)
-- Dependencies: 267
-- Data for Name: phantom; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4447 (class 0 OID 98355)
-- Dependencies: 268
-- Data for Name: primal; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4448 (class 0 OID 98364)
-- Dependencies: 269
-- Data for Name: producible; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4449 (class 0 OID 98373)
-- Dependencies: 270
-- Data for Name: salable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4450 (class 0 OID 98382)
-- Dependencies: 271
-- Data for Name: storable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4452 (class 0 OID 98398)
-- Dependencies: 273
-- Data for Name: consumable; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 4453 (class 0 OID 98406)
-- Dependencies: 274
-- Data for Name: definition; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 4578 (class 0 OID 0)
-- Dependencies: 275
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: mbom; Owner: postgres
--

SELECT pg_catalog.setval('mbom.definition_id_seq', 8, true);


--
-- TOC entry 4455 (class 0 OID 98419)
-- Dependencies: 276
-- Data for Name: information; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 4579 (class 0 OID 0)
-- Dependencies: 277
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: mbom; Owner: postgres
--

SELECT pg_catalog.setval('mbom.information_id_seq', 8, true);


--
-- TOC entry 4451 (class 0 OID 98391)
-- Dependencies: 272
-- Data for Name: material; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 4457 (class 0 OID 98429)
-- Dependencies: 278
-- Data for Name: primal; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 4502 (class 0 OID 99233)
-- Dependencies: 326
-- Data for Name: information; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 4580 (class 0 OID 0)
-- Dependencies: 325
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('operation.information_id_seq', 1, false);


--
-- TOC entry 4496 (class 0 OID 99182)
-- Dependencies: 320
-- Data for Name: information; Type: TABLE DATA; Schema: personnel; Owner: postgres
--



--
-- TOC entry 4581 (class 0 OID 0)
-- Dependencies: 319
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: personnel; Owner: postgres
--

SELECT pg_catalog.setval('personnel.information_id_seq', 1, false);


--
-- TOC entry 4472 (class 0 OID 98529)
-- Dependencies: 293
-- Data for Name: consumable; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4473 (class 0 OID 98537)
-- Dependencies: 294
-- Data for Name: definition; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4582 (class 0 OID 0)
-- Dependencies: 295
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('process.definition_id_seq', 44, true);


--
-- TOC entry 4475 (class 0 OID 98550)
-- Dependencies: 296
-- Data for Name: dependency; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4476 (class 0 OID 98554)
-- Dependencies: 297
-- Data for Name: equipment; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4477 (class 0 OID 98560)
-- Dependencies: 298
-- Data for Name: information; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4583 (class 0 OID 0)
-- Dependencies: 299
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('process.information_id_seq', 40, true);


--
-- TOC entry 4471 (class 0 OID 98521)
-- Dependencies: 292
-- Data for Name: material; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4479 (class 0 OID 98570)
-- Dependencies: 300
-- Data for Name: personnel; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4480 (class 0 OID 98580)
-- Dependencies: 301
-- Data for Name: primal; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4481 (class 0 OID 98588)
-- Dependencies: 302
-- Data for Name: segment; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4584 (class 0 OID 0)
-- Dependencies: 303
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('process.segment_id_seq', 126, true);


--
-- TOC entry 4483 (class 0 OID 98596)
-- Dependencies: 304
-- Data for Name: tooling; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4459 (class 0 OID 98445)
-- Dependencies: 280
-- Data for Name: consumable; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4460 (class 0 OID 98454)
-- Dependencies: 281
-- Data for Name: definition; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4585 (class 0 OID 0)
-- Dependencies: 282
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('product.definition_id_seq', 1, false);


--
-- TOC entry 4462 (class 0 OID 98467)
-- Dependencies: 283
-- Data for Name: dependency; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4463 (class 0 OID 98471)
-- Dependencies: 284
-- Data for Name: equipment; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4464 (class 0 OID 98477)
-- Dependencies: 285
-- Data for Name: information; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4586 (class 0 OID 0)
-- Dependencies: 286
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('product.information_id_seq', 1, false);


--
-- TOC entry 4458 (class 0 OID 98437)
-- Dependencies: 279
-- Data for Name: material; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4466 (class 0 OID 98487)
-- Dependencies: 287
-- Data for Name: personnel; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4467 (class 0 OID 98497)
-- Dependencies: 288
-- Data for Name: primal; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4468 (class 0 OID 98506)
-- Dependencies: 289
-- Data for Name: segment; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4587 (class 0 OID 0)
-- Dependencies: 290
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('product.segment_id_seq', 1, false);


--
-- TOC entry 4470 (class 0 OID 98515)
-- Dependencies: 291
-- Data for Name: tooling; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4485 (class 0 OID 98608)
-- Dependencies: 306
-- Data for Name: consumable; Type: TABLE DATA; Schema: route; Owner: postgres
--



--
-- TOC entry 4486 (class 0 OID 98616)
-- Dependencies: 307
-- Data for Name: definition; Type: TABLE DATA; Schema: route; Owner: postgres
--



--
-- TOC entry 4588 (class 0 OID 0)
-- Dependencies: 308
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: route; Owner: postgres
--

SELECT pg_catalog.setval('route.definition_id_seq', 1, false);


--
-- TOC entry 4488 (class 0 OID 98629)
-- Dependencies: 309
-- Data for Name: information; Type: TABLE DATA; Schema: route; Owner: postgres
--



--
-- TOC entry 4589 (class 0 OID 0)
-- Dependencies: 310
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: route; Owner: postgres
--

SELECT pg_catalog.setval('route.information_id_seq', 1, false);


--
-- TOC entry 4490 (class 0 OID 98639)
-- Dependencies: 311
-- Data for Name: location; Type: TABLE DATA; Schema: route; Owner: postgres
--



--
-- TOC entry 4491 (class 0 OID 98645)
-- Dependencies: 312
-- Data for Name: primal; Type: TABLE DATA; Schema: route; Owner: postgres
--



--
-- TOC entry 4484 (class 0 OID 98602)
-- Dependencies: 305
-- Data for Name: segment; Type: TABLE DATA; Schema: route; Owner: postgres
--



--
-- TOC entry 4511 (class 0 OID 99437)
-- Dependencies: 338
-- Data for Name: consumable; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 4508 (class 0 OID 99386)
-- Dependencies: 335
-- Data for Name: definition; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 4590 (class 0 OID 0)
-- Dependencies: 334
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: stride; Owner: postgres
--

SELECT pg_catalog.setval('stride.definition_id_seq', 1, false);


--
-- TOC entry 4516 (class 0 OID 99539)
-- Dependencies: 343
-- Data for Name: descendant; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 4512 (class 0 OID 99457)
-- Dependencies: 339
-- Data for Name: equipment; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 4506 (class 0 OID 99368)
-- Dependencies: 333
-- Data for Name: information; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 4591 (class 0 OID 0)
-- Dependencies: 332
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: stride; Owner: postgres
--

SELECT pg_catalog.setval('stride.information_id_seq', 1, false);


--
-- TOC entry 4515 (class 0 OID 99500)
-- Dependencies: 342
-- Data for Name: location; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 4509 (class 0 OID 99407)
-- Dependencies: 336
-- Data for Name: material; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 4513 (class 0 OID 99470)
-- Dependencies: 340
-- Data for Name: personnel; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 4510 (class 0 OID 99417)
-- Dependencies: 337
-- Data for Name: primal; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 4514 (class 0 OID 99487)
-- Dependencies: 341
-- Data for Name: tooling; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 4498 (class 0 OID 99199)
-- Dependencies: 322
-- Data for Name: information; Type: TABLE DATA; Schema: tooling; Owner: postgres
--



--
-- TOC entry 4592 (class 0 OID 0)
-- Dependencies: 321
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: tooling; Owner: postgres
--

SELECT pg_catalog.setval('tooling.information_id_seq', 1, false);


--
-- TOC entry 4492 (class 0 OID 98668)
-- Dependencies: 316
-- Data for Name: assignment; Type: TABLE DATA; Schema: uom; Owner: postgres
--



--
-- TOC entry 4493 (class 0 OID 98671)
-- Dependencies: 317
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
-- TOC entry 4593 (class 0 OID 0)
-- Dependencies: 318
-- Name: uom_role_uom_role_id_seq; Type: SEQUENCE SET; Schema: uom; Owner: postgres
--

SELECT pg_catalog.setval('uom.uom_role_uom_role_id_seq', 1, false);


--
-- TOC entry 4022 (class 2606 OID 98726)
-- Name: ebom_to_mbom ebom_to_mbom_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.ebom_to_mbom
    ADD CONSTRAINT ebom_to_mbom_pkey PRIMARY KEY (ebom_id, mbom_id);


--
-- TOC entry 4026 (class 2606 OID 98730)
-- Name: ebom_to_process ebom_to_process_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.ebom_to_process
    ADD CONSTRAINT ebom_to_process_pkey PRIMARY KEY (ebom_id, process_id);


--
-- TOC entry 4024 (class 2606 OID 98728)
-- Name: ebom_to_product ebom_to_product_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.ebom_to_product
    ADD CONSTRAINT ebom_to_product_pkey PRIMARY KEY (ebom_id, product_id);


--
-- TOC entry 4028 (class 2606 OID 98732)
-- Name: ebom_to_route ebom_to_route_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.ebom_to_route
    ADD CONSTRAINT ebom_to_route_pkey PRIMARY KEY (ebom_id, route_id);


--
-- TOC entry 4030 (class 2606 OID 98734)
-- Name: mbom_to_operation mbom_to_operation_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.mbom_to_operation
    ADD CONSTRAINT mbom_to_operation_pkey PRIMARY KEY (mbom_id, operation_id);


--
-- TOC entry 4034 (class 2606 OID 98738)
-- Name: mbom_to_process mbom_to_process_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.mbom_to_process
    ADD CONSTRAINT mbom_to_process_pkey PRIMARY KEY (mbom_id, process_id);


--
-- TOC entry 4032 (class 2606 OID 98736)
-- Name: mbom_to_product mbom_to_product_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.mbom_to_product
    ADD CONSTRAINT mbom_to_product_pkey PRIMARY KEY (mbom_id, product_id);


--
-- TOC entry 4036 (class 2606 OID 98740)
-- Name: operation_to_product operation_to_product_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.operation_to_product
    ADD CONSTRAINT operation_to_product_pkey PRIMARY KEY (operation_id, product_id);


--
-- TOC entry 4038 (class 2606 OID 98742)
-- Name: route_to_mbom route_to_mbom_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.route_to_mbom
    ADD CONSTRAINT route_to_mbom_pkey PRIMARY KEY (route_id, mbom_id);


--
-- TOC entry 4040 (class 2606 OID 98744)
-- Name: route_to_operation route_to_operation_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.route_to_operation
    ADD CONSTRAINT route_to_operation_pkey PRIMARY KEY (route_id, operation_id);


--
-- TOC entry 4044 (class 2606 OID 98746)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4046 (class 2606 OID 98748)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4042 (class 2606 OID 98750)
-- Name: component component_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.component
    ADD CONSTRAINT component_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4048 (class 2606 OID 98752)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 4050 (class 2606 OID 98754)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 4052 (class 2606 OID 98756)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4054 (class 2606 OID 98758)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 4056 (class 2606 OID 98760)
-- Name: information information_part_code_version_num_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information
    ADD CONSTRAINT information_part_code_version_num_key UNIQUE (part_code, version_num);


--
-- TOC entry 4058 (class 2606 OID 98762)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4060 (class 2606 OID 98764)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.part
    ADD CONSTRAINT part_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4192 (class 2606 OID 99228)
-- Name: information information_equipment_code_version_num_key; Type: CONSTRAINT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY equipment.information
    ADD CONSTRAINT information_equipment_code_version_num_key UNIQUE (equipment_code, version_num);


--
-- TOC entry 4194 (class 2606 OID 99230)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY equipment.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 4196 (class 2606 OID 99226)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY equipment.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4204 (class 2606 OID 99272)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4064 (class 2606 OID 98766)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4066 (class 2606 OID 98768)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4062 (class 2606 OID 98770)
-- Name: conglomeration conglomeration_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.conglomeration
    ADD CONSTRAINT conglomeration_pkey PRIMARY KEY (part_code, version_num, inventory_type);


--
-- TOC entry 4068 (class 2606 OID 98772)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4070 (class 2606 OID 98774)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 4072 (class 2606 OID 98776)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 4074 (class 2606 OID 98778)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4076 (class 2606 OID 98780)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 4078 (class 2606 OID 98782)
-- Name: information information_part_code; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.information
    ADD CONSTRAINT information_part_code UNIQUE (part_code);


--
-- TOC entry 4080 (class 2606 OID 98784)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4082 (class 2606 OID 98786)
-- Name: measurement measurement_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.measurement
    ADD CONSTRAINT measurement_pkey PRIMARY KEY (definition_id, uom_code);


--
-- TOC entry 4084 (class 2606 OID 98788)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.part
    ADD CONSTRAINT part_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4086 (class 2606 OID 98790)
-- Name: phantom phantom_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.phantom
    ADD CONSTRAINT phantom_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4088 (class 2606 OID 98792)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4090 (class 2606 OID 98794)
-- Name: producible producible_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.producible
    ADD CONSTRAINT producible_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4092 (class 2606 OID 98796)
-- Name: salable salable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.salable
    ADD CONSTRAINT salable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4094 (class 2606 OID 98798)
-- Name: storable storable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.storable
    ADD CONSTRAINT storable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4098 (class 2606 OID 98800)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4100 (class 2606 OID 98802)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 4102 (class 2606 OID 98804)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 4104 (class 2606 OID 98806)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4106 (class 2606 OID 98808)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4096 (class 2606 OID 98810)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4108 (class 2606 OID 98812)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4198 (class 2606 OID 99247)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 4200 (class 2606 OID 99245)
-- Name: information information_operation_code_version_num_key; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.information
    ADD CONSTRAINT information_operation_code_version_num_key UNIQUE (operation_code, version_num);


--
-- TOC entry 4202 (class 2606 OID 99243)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4180 (class 2606 OID 99194)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY personnel.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 4182 (class 2606 OID 99196)
-- Name: information information_personnel_code_version_num_key; Type: CONSTRAINT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY personnel.information
    ADD CONSTRAINT information_personnel_code_version_num_key UNIQUE (personnel_code, version_num);


--
-- TOC entry 4184 (class 2606 OID 99192)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY personnel.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4134 (class 2606 OID 98836)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4136 (class 2606 OID 98838)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4138 (class 2606 OID 98840)
-- Name: definition definition_version_num_information_id_key; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.definition
    ADD CONSTRAINT definition_version_num_information_id_key UNIQUE (version_num, information_id);


--
-- TOC entry 4140 (class 2606 OID 98842)
-- Name: dependency dependency_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.dependency
    ADD CONSTRAINT dependency_pkey PRIMARY KEY (ancestor, descendant);


--
-- TOC entry 4142 (class 2606 OID 98844)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, equipment_code);


--
-- TOC entry 4144 (class 2606 OID 98846)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4132 (class 2606 OID 98848)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4146 (class 2606 OID 98850)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, personnel_code);


--
-- TOC entry 4148 (class 2606 OID 98852)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4150 (class 2606 OID 98854)
-- Name: segment segment_definition_id_operation_code_key; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.segment
    ADD CONSTRAINT segment_definition_id_operation_code_key UNIQUE (definition_id, operation_code);


--
-- TOC entry 4152 (class 2606 OID 98856)
-- Name: segment segment_gid_key; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.segment
    ADD CONSTRAINT segment_gid_key UNIQUE (gid);


--
-- TOC entry 4154 (class 2606 OID 98858)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 4156 (class 2606 OID 98860)
-- Name: tooling tooling_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.tooling
    ADD CONSTRAINT tooling_pkey PRIMARY KEY (segment_id, tooling_code);


--
-- TOC entry 4112 (class 2606 OID 98814)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4114 (class 2606 OID 98816)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4116 (class 2606 OID 98818)
-- Name: definition definition_version_num_information_id_key; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.definition
    ADD CONSTRAINT definition_version_num_information_id_key UNIQUE (version_num, information_id);


--
-- TOC entry 4118 (class 2606 OID 98820)
-- Name: dependency dependency_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.dependency
    ADD CONSTRAINT dependency_pkey PRIMARY KEY (ancestor, descendant);


--
-- TOC entry 4120 (class 2606 OID 98822)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, equipment_code);


--
-- TOC entry 4122 (class 2606 OID 98824)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4110 (class 2606 OID 98826)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4124 (class 2606 OID 98828)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, personnel_code);


--
-- TOC entry 4126 (class 2606 OID 98830)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4128 (class 2606 OID 98832)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 4130 (class 2606 OID 98834)
-- Name: tooling tooling_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.tooling
    ADD CONSTRAINT tooling_pkey PRIMARY KEY (segment_id, tooling_code);


--
-- TOC entry 4160 (class 2606 OID 98862)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (definition_id, descendant_part_code, descendant_version_num, ancestor_part_code, ancestor_version_num);


--
-- TOC entry 4162 (class 2606 OID 98864)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 4164 (class 2606 OID 98866)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 4166 (class 2606 OID 98868)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4168 (class 2606 OID 98870)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4170 (class 2606 OID 98872)
-- Name: location location_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.location
    ADD CONSTRAINT location_pkey PRIMARY KEY (definition_id, location_code);


--
-- TOC entry 4172 (class 2606 OID 98874)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (definition_id, descendant_part_code, descendant_version_num, ancestor_part_code, ancestor_version_num);


--
-- TOC entry 4158 (class 2606 OID 98876)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (definition_id, ancestor_part_code, ancestor_version_num, descendant_part_code, descendant_version_num);


--
-- TOC entry 4216 (class 2606 OID 99446)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 4208 (class 2606 OID 99399)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4210 (class 2606 OID 99401)
-- Name: definition definition_version_num_information_id_key; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.definition
    ADD CONSTRAINT definition_version_num_information_id_key UNIQUE (version_num, information_id);


--
-- TOC entry 4226 (class 2606 OID 99546)
-- Name: descendant descendant_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.descendant
    ADD CONSTRAINT descendant_pkey PRIMARY KEY (definition_id);


--
-- TOC entry 4218 (class 2606 OID 99464)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (information_id, equipment_code);


--
-- TOC entry 4206 (class 2606 OID 99378)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4224 (class 2606 OID 99507)
-- Name: location location_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.location
    ADD CONSTRAINT location_pkey PRIMARY KEY (definition_id, location_code);


--
-- TOC entry 4212 (class 2606 OID 99416)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 4220 (class 2606 OID 99481)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (information_id, personnel_code);


--
-- TOC entry 4214 (class 2606 OID 99426)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 4222 (class 2606 OID 99494)
-- Name: tooling tooling_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.tooling
    ADD CONSTRAINT tooling_pkey PRIMARY KEY (information_id, tooling_code);


--
-- TOC entry 4186 (class 2606 OID 99211)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: tooling; Owner: postgres
--

ALTER TABLE ONLY tooling.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 4188 (class 2606 OID 99209)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: tooling; Owner: postgres
--

ALTER TABLE ONLY tooling.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4190 (class 2606 OID 99213)
-- Name: information information_tooling_code_version_num_key; Type: CONSTRAINT; Schema: tooling; Owner: postgres
--

ALTER TABLE ONLY tooling.information
    ADD CONSTRAINT information_tooling_code_version_num_key UNIQUE (tooling_code, version_num);


--
-- TOC entry 4178 (class 2606 OID 98878)
-- Name: information uom_pkey; Type: CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.information
    ADD CONSTRAINT uom_pkey PRIMARY KEY (uom_code);


--
-- TOC entry 4174 (class 2606 OID 98880)
-- Name: assignment uom_role_pkey; Type: CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.assignment
    ADD CONSTRAINT uom_role_pkey PRIMARY KEY (uom_role_id);


--
-- TOC entry 4176 (class 2606 OID 98882)
-- Name: assignment uom_role_uom_role_code_key; Type: CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.assignment
    ADD CONSTRAINT uom_role_uom_role_code_key UNIQUE (uom_role_code);


--
-- TOC entry 4297 (class 2620 OID 98883)
-- Name: definition set_prev_doc_fsmt; Type: TRIGGER; Schema: ebom; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON ebom.definition FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 4227 (class 2606 OID 98884)
-- Name: assembly assembly_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.assembly
    ADD CONSTRAINT assembly_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES ebom.definition(id);


--
-- TOC entry 4228 (class 2606 OID 98889)
-- Name: assembly assembly_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.assembly
    ADD CONSTRAINT assembly_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.assembly(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4229 (class 2606 OID 98894)
-- Name: buyable buyable_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.buyable
    ADD CONSTRAINT buyable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES ebom.definition(id);


--
-- TOC entry 4230 (class 2606 OID 98899)
-- Name: buyable buyable_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.buyable
    ADD CONSTRAINT buyable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.buyable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4231 (class 2606 OID 98904)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES ebom.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4232 (class 2606 OID 98909)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.assembly(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4233 (class 2606 OID 98914)
-- Name: part part_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.part
    ADD CONSTRAINT part_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES ebom.definition(id);


--
-- TOC entry 4234 (class 2606 OID 98919)
-- Name: part part_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.part
    ADD CONSTRAINT part_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.part(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4235 (class 2606 OID 98924)
-- Name: assembly assembly_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.assembly
    ADD CONSTRAINT assembly_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4236 (class 2606 OID 98929)
-- Name: buyable buyable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.buyable
    ADD CONSTRAINT buyable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4237 (class 2606 OID 98934)
-- Name: consumable consumable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.consumable
    ADD CONSTRAINT consumable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4238 (class 2606 OID 98939)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES inventory.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4239 (class 2606 OID 98944)
-- Name: measurement measurement_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.measurement
    ADD CONSTRAINT measurement_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4240 (class 2606 OID 98949)
-- Name: part part_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.part
    ADD CONSTRAINT part_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4241 (class 2606 OID 98954)
-- Name: phantom phantom_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.phantom
    ADD CONSTRAINT phantom_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4242 (class 2606 OID 98959)
-- Name: primal primal_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.primal
    ADD CONSTRAINT primal_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4243 (class 2606 OID 98964)
-- Name: producible producible_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.producible
    ADD CONSTRAINT producible_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4244 (class 2606 OID 98969)
-- Name: salable salable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.salable
    ADD CONSTRAINT salable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4245 (class 2606 OID 98974)
-- Name: storable storable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.storable
    ADD CONSTRAINT storable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4246 (class 2606 OID 98979)
-- Name: consumable consumable_definition_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.consumable
    ADD CONSTRAINT consumable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES mbom.definition(id);


--
-- TOC entry 4247 (class 2606 OID 98984)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4248 (class 2606 OID 98989)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES mbom.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4249 (class 2606 OID 98994)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4250 (class 2606 OID 98999)
-- Name: primal primal_definition_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.primal
    ADD CONSTRAINT primal_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES mbom.definition(id);


--
-- TOC entry 4251 (class 2606 OID 99004)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4264 (class 2606 OID 99069)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4265 (class 2606 OID 99074)
-- Name: consumable consumable_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.consumable
    ADD CONSTRAINT consumable_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4266 (class 2606 OID 99079)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES process.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4267 (class 2606 OID 99084)
-- Name: dependency dependency_ancestor_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.dependency
    ADD CONSTRAINT dependency_ancestor_fkey FOREIGN KEY (ancestor) REFERENCES process.segment(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4268 (class 2606 OID 99089)
-- Name: dependency dependency_descendant_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.dependency
    ADD CONSTRAINT dependency_descendant_fkey FOREIGN KEY (descendant) REFERENCES process.segment(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4269 (class 2606 OID 99094)
-- Name: equipment equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4270 (class 2606 OID 99099)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4271 (class 2606 OID 99104)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4272 (class 2606 OID 99109)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4273 (class 2606 OID 99114)
-- Name: primal primal_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.primal
    ADD CONSTRAINT primal_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4274 (class 2606 OID 99119)
-- Name: segment segment_definition_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.segment
    ADD CONSTRAINT segment_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES process.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4275 (class 2606 OID 99124)
-- Name: tooling tooling_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.tooling
    ADD CONSTRAINT tooling_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4252 (class 2606 OID 99009)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4253 (class 2606 OID 99014)
-- Name: consumable consumable_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.consumable
    ADD CONSTRAINT consumable_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES product.segment(id);


--
-- TOC entry 4254 (class 2606 OID 99019)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES product.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4255 (class 2606 OID 99024)
-- Name: dependency dependency_ancestor_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.dependency
    ADD CONSTRAINT dependency_ancestor_fkey FOREIGN KEY (ancestor) REFERENCES product.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4256 (class 2606 OID 99029)
-- Name: dependency dependency_descendant_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.dependency
    ADD CONSTRAINT dependency_descendant_fkey FOREIGN KEY (descendant) REFERENCES product.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4257 (class 2606 OID 99034)
-- Name: equipment equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES product.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4258 (class 2606 OID 99039)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.salable(part_code, version_num);


--
-- TOC entry 4259 (class 2606 OID 99044)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES product.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4260 (class 2606 OID 99049)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4261 (class 2606 OID 99054)
-- Name: primal primal_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.primal
    ADD CONSTRAINT primal_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES product.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4262 (class 2606 OID 99059)
-- Name: segment segment_definition_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.segment
    ADD CONSTRAINT segment_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES product.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4263 (class 2606 OID 99064)
-- Name: tooling tooling_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.tooling
    ADD CONSTRAINT tooling_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES product.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4276 (class 2606 OID 99129)
-- Name: consumable consumable_ancestor_part_code_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.consumable
    ADD CONSTRAINT consumable_ancestor_part_code_fkey FOREIGN KEY (ancestor_part_code, ancestor_version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4277 (class 2606 OID 99134)
-- Name: consumable consumable_definition_id_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.consumable
    ADD CONSTRAINT consumable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES route.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4278 (class 2606 OID 99139)
-- Name: consumable consumable_descendant_part_code_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.consumable
    ADD CONSTRAINT consumable_descendant_part_code_fkey FOREIGN KEY (descendant_part_code, descendant_version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4279 (class 2606 OID 99144)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES route.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4280 (class 2606 OID 99149)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4281 (class 2606 OID 99154)
-- Name: location location_definition_id_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.location
    ADD CONSTRAINT location_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES route.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4282 (class 2606 OID 99159)
-- Name: primal primal_ancestor_part_code_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.primal
    ADD CONSTRAINT primal_ancestor_part_code_fkey FOREIGN KEY (ancestor_part_code, ancestor_version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4283 (class 2606 OID 99164)
-- Name: primal primal_definition_id_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.primal
    ADD CONSTRAINT primal_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES route.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4284 (class 2606 OID 99169)
-- Name: primal primal_descendant_part_code_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.primal
    ADD CONSTRAINT primal_descendant_part_code_fkey FOREIGN KEY (descendant_part_code, descendant_version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4290 (class 2606 OID 99514)
-- Name: consumable consumable_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.consumable
    ADD CONSTRAINT consumable_information_id_fkey FOREIGN KEY (information_id) REFERENCES stride.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4291 (class 2606 OID 99447)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4287 (class 2606 OID 99402)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES stride.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4296 (class 2606 OID 99547)
-- Name: descendant descendant_definition_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.descendant
    ADD CONSTRAINT descendant_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES stride.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4292 (class 2606 OID 99524)
-- Name: equipment equipment_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.equipment
    ADD CONSTRAINT equipment_information_id_fkey FOREIGN KEY (information_id) REFERENCES stride.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4286 (class 2606 OID 99379)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4295 (class 2606 OID 99508)
-- Name: location location_definition_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.location
    ADD CONSTRAINT location_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES stride.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4293 (class 2606 OID 99534)
-- Name: personnel personnel_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.personnel
    ADD CONSTRAINT personnel_information_id_fkey FOREIGN KEY (information_id) REFERENCES stride.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4288 (class 2606 OID 99519)
-- Name: primal primal_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.primal
    ADD CONSTRAINT primal_information_id_fkey FOREIGN KEY (information_id) REFERENCES stride.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4289 (class 2606 OID 99427)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4294 (class 2606 OID 99529)
-- Name: tooling tooling_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.tooling
    ADD CONSTRAINT tooling_information_id_fkey FOREIGN KEY (information_id) REFERENCES stride.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4285 (class 2606 OID 99174)
-- Name: information uom_base_uom_code_fkey; Type: FK CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.information
    ADD CONSTRAINT uom_base_uom_code_fkey FOREIGN KEY (base_uom_code) REFERENCES uom.information(uom_code);


-- Completed on 2018-06-22 01:06:07 EEST

--
-- PostgreSQL database dump complete
--

