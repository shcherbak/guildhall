--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.8
-- Dumped by pg_dump version 9.6.8

-- Started on 2018-06-23 01:07:49 EEST

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
-- TOC entry 19 (class 2615 OID 99553)
-- Name: binding; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA binding;


ALTER SCHEMA binding OWNER TO postgres;

--
-- TOC entry 12 (class 2615 OID 99554)
-- Name: common; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA common;


ALTER SCHEMA common OWNER TO postgres;

--
-- TOC entry 16 (class 2615 OID 99555)
-- Name: ebom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ebom;


ALTER SCHEMA ebom OWNER TO postgres;

--
-- TOC entry 4480 (class 0 OID 0)
-- Dependencies: 16
-- Name: SCHEMA ebom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA ebom IS 'engenering bill of materials';


--
-- TOC entry 22 (class 2615 OID 99556)
-- Name: equipment; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA equipment;


ALTER SCHEMA equipment OWNER TO postgres;

--
-- TOC entry 29 (class 2615 OID 99557)
-- Name: facility; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA facility;


ALTER SCHEMA facility OWNER TO postgres;

--
-- TOC entry 26 (class 2615 OID 99558)
-- Name: inventory; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA inventory;


ALTER SCHEMA inventory OWNER TO postgres;

--
-- TOC entry 4481 (class 0 OID 0)
-- Dependencies: 26
-- Name: SCHEMA inventory; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA inventory IS 'inventory items definition';


--
-- TOC entry 11 (class 2615 OID 99559)
-- Name: mbom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA mbom;


ALTER SCHEMA mbom OWNER TO postgres;

--
-- TOC entry 4482 (class 0 OID 0)
-- Dependencies: 11
-- Name: SCHEMA mbom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA mbom IS 'manufacturing bill of materials';


--
-- TOC entry 10 (class 2615 OID 99560)
-- Name: operation; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA operation;


ALTER SCHEMA operation OWNER TO postgres;

--
-- TOC entry 8 (class 2615 OID 99561)
-- Name: personnel; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA personnel;


ALTER SCHEMA personnel OWNER TO postgres;

--
-- TOC entry 30 (class 2615 OID 99562)
-- Name: pgunit; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA pgunit;


ALTER SCHEMA pgunit OWNER TO postgres;

--
-- TOC entry 13 (class 2615 OID 99563)
-- Name: process; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA process;


ALTER SCHEMA process OWNER TO postgres;

--
-- TOC entry 4483 (class 0 OID 0)
-- Dependencies: 13
-- Name: SCHEMA process; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA process IS 'production processes';


--
-- TOC entry 7 (class 2615 OID 99564)
-- Name: product; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA product;


ALTER SCHEMA product OWNER TO postgres;

--
-- TOC entry 4484 (class 0 OID 0)
-- Dependencies: 7
-- Name: SCHEMA product; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA product IS 'process segments';


--
-- TOC entry 20 (class 2615 OID 99565)
-- Name: request; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA request;


ALTER SCHEMA request OWNER TO postgres;

--
-- TOC entry 25 (class 2615 OID 99566)
-- Name: response; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA response;


ALTER SCHEMA response OWNER TO postgres;

--
-- TOC entry 21 (class 2615 OID 99567)
-- Name: route; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA route;


ALTER SCHEMA route OWNER TO postgres;

--
-- TOC entry 4486 (class 0 OID 0)
-- Dependencies: 21
-- Name: SCHEMA route; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA route IS 'material routing';


--
-- TOC entry 15 (class 2615 OID 99568)
-- Name: schedule; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA schedule;


ALTER SCHEMA schedule OWNER TO postgres;

--
-- TOC entry 14 (class 2615 OID 99569)
-- Name: stride; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA stride;


ALTER SCHEMA stride OWNER TO postgres;

--
-- TOC entry 4487 (class 0 OID 0)
-- Dependencies: 14
-- Name: SCHEMA stride; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA stride IS 'operation segments';


--
-- TOC entry 23 (class 2615 OID 99570)
-- Name: tests; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tests;


ALTER SCHEMA tests OWNER TO postgres;

--
-- TOC entry 28 (class 2615 OID 99571)
-- Name: tooling; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tooling;


ALTER SCHEMA tooling OWNER TO postgres;

--
-- TOC entry 27 (class 2615 OID 99572)
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
-- TOC entry 4488 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 4 (class 3079 OID 99573)
-- Name: pldbgapi; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pldbgapi WITH SCHEMA public;


--
-- TOC entry 4489 (class 0 OID 0)
-- Dependencies: 4
-- Name: EXTENSION pldbgapi; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pldbgapi IS 'server-side support for debugging PL/pgSQL functions';


--
-- TOC entry 3 (class 3079 OID 99610)
-- Name: plpgsql_check; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql_check WITH SCHEMA public;


--
-- TOC entry 4490 (class 0 OID 0)
-- Dependencies: 3
-- Name: EXTENSION plpgsql_check; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql_check IS 'extended check for plpgsql functions';


--
-- TOC entry 2 (class 3079 OID 99615)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- TOC entry 4491 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- TOC entry 926 (class 1247 OID 99627)
-- Name: component_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.component_kind AS ENUM (
    'ASSEMBLY',
    'PART',
    'BUYABLE'
);


ALTER TYPE common.component_kind OWNER TO postgres;

--
-- TOC entry 929 (class 1247 OID 99633)
-- Name: quantity; Type: DOMAIN; Schema: common; Owner: postgres
--

CREATE DOMAIN common.quantity AS numeric(20,4) DEFAULT 0
	CONSTRAINT quantity_is_positive CHECK ((VALUE >= (0)::numeric));


ALTER DOMAIN common.quantity OWNER TO postgres;

--
-- TOC entry 4492 (class 0 OID 0)
-- Dependencies: 929
-- Name: DOMAIN quantity; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON DOMAIN common.quantity IS 'quantity domain';


--
-- TOC entry 931 (class 1247 OID 99637)
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
-- TOC entry 934 (class 1247 OID 99639)
-- Name: material_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.material_kind AS ENUM (
    'CONSUMABLE',
    'PRODUCIBLE',
    'PRIMAL'
);


ALTER TYPE common.material_kind OWNER TO postgres;

--
-- TOC entry 937 (class 1247 OID 99647)
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
-- TOC entry 940 (class 1247 OID 99650)
-- Name: dependency_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.dependency_specification AS (
	ancestor uuid,
	descendant uuid,
	depth integer
);


ALTER TYPE common.dependency_specification OWNER TO postgres;

--
-- TOC entry 943 (class 1247 OID 99652)
-- Name: document_fsmt; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.document_fsmt AS ENUM (
    'PROPOSED',
    'COMMITTED',
    'DECOMMITTED'
);


ALTER TYPE common.document_fsmt OWNER TO postgres;

--
-- TOC entry 946 (class 1247 OID 99660)
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
-- TOC entry 949 (class 1247 OID 99683)
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
-- TOC entry 952 (class 1247 OID 99686)
-- Name: ebom_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.ebom_document AS (
	head common.ebom_head,
	body common.component_specification[]
);


ALTER TYPE common.ebom_document OWNER TO postgres;

--
-- TOC entry 955 (class 1247 OID 99689)
-- Name: equipment_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.equipment_head AS (
	document_id bigint,
	gid uuid,
	equipment_code character varying,
	version_num integer,
	display_name character varying,
	document_date date,
	equipment_type character varying
);


ALTER TYPE common.equipment_head OWNER TO postgres;

--
-- TOC entry 958 (class 1247 OID 99692)
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
-- TOC entry 961 (class 1247 OID 99694)
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
-- TOC entry 964 (class 1247 OID 99707)
-- Name: facility_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.facility_head AS (
	document_id bigint,
	gid uuid,
	facility_code character varying,
	version_num integer,
	display_name character varying,
	document_date date,
	parent_facility_code character varying,
	facility_type common.facility_kind
);


ALTER TYPE common.facility_head OWNER TO postgres;

--
-- TOC entry 967 (class 1247 OID 99710)
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
-- TOC entry 970 (class 1247 OID 99712)
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
-- TOC entry 973 (class 1247 OID 99733)
-- Name: unit_conversion_type; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.unit_conversion_type AS (
	uom_code_from character varying,
	uom_code_to character varying,
	factor numeric
);


ALTER TYPE common.unit_conversion_type OWNER TO postgres;

--
-- TOC entry 976 (class 1247 OID 99736)
-- Name: inventory_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.inventory_document AS (
	head common.inventory_head,
	meas common.unit_conversion_type[],
	kind common.inventory_kind[]
);


ALTER TYPE common.inventory_document OWNER TO postgres;

--
-- TOC entry 979 (class 1247 OID 99739)
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
-- TOC entry 982 (class 1247 OID 99742)
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
-- TOC entry 985 (class 1247 OID 99745)
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
-- TOC entry 988 (class 1247 OID 99748)
-- Name: mbom_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.mbom_document AS (
	head common.mbom_head,
	body common.material_specification[]
);


ALTER TYPE common.mbom_document OWNER TO postgres;

--
-- TOC entry 991 (class 1247 OID 99751)
-- Name: operation_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.operation_head AS (
	document_id bigint,
	gid uuid,
	operation_code character varying,
	version_num integer,
	display_name character varying,
	document_date date,
	operation_type character varying
);


ALTER TYPE common.operation_head OWNER TO postgres;

--
-- TOC entry 994 (class 1247 OID 99754)
-- Name: personnel_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.personnel_head AS (
	document_id bigint,
	gid uuid,
	personnel_code character varying,
	version_num integer,
	display_name character varying,
	document_date date,
	personnel_type character varying
);


ALTER TYPE common.personnel_head OWNER TO postgres;

--
-- TOC entry 997 (class 1247 OID 99757)
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
-- TOC entry 1000 (class 1247 OID 99760)
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
-- TOC entry 1003 (class 1247 OID 99763)
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
-- TOC entry 1006 (class 1247 OID 99766)
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
-- TOC entry 1009 (class 1247 OID 99769)
-- Name: process_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.process_document AS (
	head common.process_head,
	body common.process_segment[],
	deps common.dependency_specification[]
);


ALTER TYPE common.process_document OWNER TO postgres;

--
-- TOC entry 4493 (class 0 OID 0)
-- Dependencies: 1009
-- Name: TYPE process_document; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON TYPE common.process_document IS 'operation';


--
-- TOC entry 1012 (class 1247 OID 99771)
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
-- TOC entry 1015 (class 1247 OID 99783)
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
-- TOC entry 1018 (class 1247 OID 99786)
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
-- TOC entry 1021 (class 1247 OID 99789)
-- Name: product_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.product_document AS (
	head common.product_head,
	body common.product_segment[],
	deps common.dependency_specification[]
);


ALTER TYPE common.product_document OWNER TO postgres;

--
-- TOC entry 1024 (class 1247 OID 99792)
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
-- TOC entry 1027 (class 1247 OID 99795)
-- Name: route_segment; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.route_segment AS (
	descendant_spec common.material_specification,
	ancestor_spec common.material_specification[],
	location_spec character varying[]
);


ALTER TYPE common.route_segment OWNER TO postgres;

--
-- TOC entry 1030 (class 1247 OID 99798)
-- Name: route_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.route_document AS (
	head common.route_head,
	body common.route_segment[]
);


ALTER TYPE common.route_document OWNER TO postgres;

--
-- TOC entry 1033 (class 1247 OID 99801)
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
-- TOC entry 1036 (class 1247 OID 99804)
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
-- TOC entry 1039 (class 1247 OID 99807)
-- Name: stride_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.stride_document AS (
	head common.stride_head,
	body common.process_segment
);


ALTER TYPE common.stride_document OWNER TO postgres;

--
-- TOC entry 1042 (class 1247 OID 99810)
-- Name: tooling_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.tooling_head AS (
	document_id bigint,
	gid uuid,
	tooling_code character varying,
	version_num integer,
	display_name character varying,
	document_date date,
	tooling_type character varying
);


ALTER TYPE common.tooling_head OWNER TO postgres;

--
-- TOC entry 1380 (class 1247 OID 101941)
-- Name: uom_domain_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.uom_domain_kind AS ENUM (
    'LENGHT',
    'MASS',
    'QUANTITY',
    'VOLUME'
);


ALTER TYPE common.uom_domain_kind OWNER TO postgres;

--
-- TOC entry 398 (class 1255 OID 99811)
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
-- TOC entry 399 (class 1255 OID 99812)
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
-- TOC entry 400 (class 1255 OID 99813)
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
-- TOC entry 401 (class 1255 OID 99814)
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
-- TOC entry 383 (class 1255 OID 99815)
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
-- TOC entry 402 (class 1255 OID 99816)
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
-- TOC entry 403 (class 1255 OID 99817)
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
-- TOC entry 404 (class 1255 OID 99818)
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
-- TOC entry 405 (class 1255 OID 99819)
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
-- TOC entry 406 (class 1255 OID 99820)
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
-- TOC entry 407 (class 1255 OID 99821)
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
-- TOC entry 408 (class 1255 OID 99822)
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
-- TOC entry 409 (class 1255 OID 99823)
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
-- TOC entry 410 (class 1255 OID 99824)
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
-- TOC entry 411 (class 1255 OID 99825)
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
-- TOC entry 412 (class 1255 OID 99826)
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
-- TOC entry 413 (class 1255 OID 99827)
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
-- TOC entry 414 (class 1255 OID 99828)
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
-- TOC entry 415 (class 1255 OID 99829)
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
-- TOC entry 416 (class 1255 OID 99830)
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
-- TOC entry 418 (class 1255 OID 99831)
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
-- TOC entry 419 (class 1255 OID 99832)
-- Name: destroy(bigint); Type: FUNCTION; Schema: equipment; Owner: postgres
--

CREATE FUNCTION equipment.destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM equipment.information WHERE id = __document_id;
END;
$$;


ALTER FUNCTION equipment.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 428 (class 1255 OID 99833)
-- Name: get_head(bigint); Type: FUNCTION; Schema: equipment; Owner: postgres
--

CREATE FUNCTION equipment.get_head(__document_id bigint) RETURNS common.equipment_head
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN 
    (information.id, 
    information.gid, 
    information.equipment_code, 
    information.version_num, 
    information.display_name, 
    information.published_date, 
    information.equipment_type)::common.equipment_head
  FROM 
    equipment.information
  WHERE 
    information.id = __document_id;
END;
$$;


ALTER FUNCTION equipment.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 533 (class 1255 OID 99834)
-- Name: init(common.equipment_head); Type: FUNCTION; Schema: equipment; Owner: postgres
--

CREATE FUNCTION equipment.init(__head common.equipment_head) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _information_id bigint;
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

  IF (__head.gid IS NULL) THEN
    __head.gid := public.uuid_generate_v1();
  END IF;

  INSERT INTO
    equipment.information (
      id, 
      gid, 
      equipment_code, 
      version_num, 
      display_name, 
      published_date, 
      equipment_type)
  VALUES (
    DEFAULT,
    __head.gid,
    __head.equipment_code,
    __head.version_num,
    __head.display_name,
    __head.document_date,
    __head.equipment_type)
  RETURNING id INTO _information_id;

  RETURN _information_id;

END;
$$;


ALTER FUNCTION equipment.init(__head common.equipment_head) OWNER TO postgres;

--
-- TOC entry 420 (class 1255 OID 99835)
-- Name: destroy(bigint); Type: FUNCTION; Schema: facility; Owner: postgres
--

CREATE FUNCTION facility.destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM facility.information WHERE id = __document_id;
END;
$$;


ALTER FUNCTION facility.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 421 (class 1255 OID 99836)
-- Name: get_head(bigint); Type: FUNCTION; Schema: facility; Owner: postgres
--

CREATE FUNCTION facility.get_head(__document_id bigint) RETURNS common.facility_head
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN 
    (information.id, 
    information.gid, 
    information.facility_code, 
    information.version_num, 
    information.display_name, 
    information.published_date, 
    information.parent_facility_code, 
    information.facility_type)::common.facility_head
  FROM 
    facility.information
  WHERE 
    information.id = __document_id;
END;
$$;


ALTER FUNCTION facility.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 422 (class 1255 OID 99837)
-- Name: get_head_batch(common.facility_kind); Type: FUNCTION; Schema: facility; Owner: postgres
--

CREATE FUNCTION facility.get_head_batch(__facility_type common.facility_kind DEFAULT NULL::common.facility_kind) RETURNS common.facility_head[]
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  IF (__facility_type IS NULL) THEN
    RETURN
      ARRAY (
        SELECT
          (information.id, 
          information.gid, 
          information.facility_code, 
          information.version_num, 
          information.display_name, 
          information.published_date, 
          information.parent_facility_code, 
          information.facility_type)::common.facility_head
        FROM 
          facility.information
      );
  ELSE
    RETURN 
      ARRAY (
        SELECT
          (information.id, 
          information.gid, 
          information.facility_code, 
          information.version_num, 
          information.display_name, 
          information.published_date, 
          information.parent_facility_code, 
          information.facility_type)::common.facility_head
        FROM 
          facility.information
        WHERE 
          information.facility_type = __facility_type
      );
  END IF;
END;
$$;


ALTER FUNCTION facility.get_head_batch(__facility_type common.facility_kind) OWNER TO postgres;

--
-- TOC entry 423 (class 1255 OID 99838)
-- Name: init(common.facility_head); Type: FUNCTION; Schema: facility; Owner: postgres
--

CREATE FUNCTION facility.init(__head common.facility_head) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _information_id bigint;
BEGIN


  CASE __head.facility_type
    WHEN 'ENTERPRISE'::common.facility_kind THEN 
      INSERT INTO
        facility.enterprise (
          id, 
          gid, 
          facility_code, 
          version_num, 
          display_name, 
          published_date, 
          parent_facility_code, 
          facility_type)
      VALUES (
        DEFAULT,
        __head.gid,
        __head.facility_code,
        DEFAULT,
        __head.display_name,
        __head.document_date,
        __head.parent_facility_code,
        __head.facility_type)
      RETURNING id INTO _information_id;

    WHEN 'SITE'::common.facility_kind THEN
      INSERT INTO
        facility.site (
          id, 
          gid, 
          facility_code, 
          version_num, 
          display_name, 
          published_date, 
          parent_facility_code, 
          facility_type)
      VALUES (
        DEFAULT,
        __head.gid,
        __head.facility_code,
        DEFAULT,
        __head.display_name,
        __head.document_date,
        __head.parent_facility_code,
        __head.facility_type)
      RETURNING id INTO _information_id;

    WHEN 'AREA'::common.facility_kind THEN 
      INSERT INTO
        facility.area (
          id, 
          gid, 
          facility_code, 
          version_num, 
          display_name, 
          published_date, 
          parent_facility_code, 
          facility_type)
      VALUES (
        DEFAULT,
        __head.gid,
        __head.facility_code,
        DEFAULT,
        __head.display_name,
        __head.document_date,
        __head.parent_facility_code,
        __head.facility_type)
      RETURNING id INTO _information_id;

    WHEN 'LINE'::common.facility_kind THEN 
      INSERT INTO
        facility.line (
          id, 
          gid, 
          facility_code, 
          version_num, 
          display_name, 
          published_date, 
          parent_facility_code, 
          facility_type)
      VALUES (
        DEFAULT,
        __head.gid,
        __head.facility_code,
        DEFAULT,
        __head.display_name,
        __head.document_date,
        __head.parent_facility_code,
        __head.facility_type)
      RETURNING id INTO _information_id;

    WHEN 'ZONE'::common.facility_kind THEN 
      INSERT INTO
        facility.zone (
          id, 
          gid, 
          facility_code, 
          version_num, 
          display_name, 
          published_date, 
          parent_facility_code, 
          facility_type)
      VALUES (
        DEFAULT,
        __head.gid,
        __head.facility_code,
        DEFAULT,
        __head.display_name,
        __head.document_date,
        __head.parent_facility_code,
        __head.facility_type)
      RETURNING id INTO _information_id;

    ELSE
      RAISE EXCEPTION 'unsupported facility_type %', __head.facility_type;

    END CASE;

    RETURN _information_id;

END;
$$;


ALTER FUNCTION facility.init(__head common.facility_head) OWNER TO postgres;

--
-- TOC entry 424 (class 1255 OID 99839)
-- Name: reinit(common.facility_head); Type: FUNCTION; Schema: facility; Owner: postgres
--

CREATE FUNCTION facility.reinit(__head common.facility_head) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  --DELETE FROM facility.information WHERE id = __head.document_id;

  CASE __head.facility_type
    WHEN 'ENTERPRISE'::common.facility_kind THEN 
      UPDATE
        facility.enterprise
      SET 
        --facility_code = __head.facility_code, 
        --version_num = __head.version_num, 
        display_name = __head.display_name, 
        published_date = __head.document_date, 
        parent_facility_code = __head.parent_facility_code
      WHERE
        id = __head.document_id;

    WHEN 'SITE'::common.facility_kind THEN
      UPDATE
        facility.site
      SET 
        --facility_code = __head.facility_code, 
        --version_num = __head.version_num, 
        display_name = __head.display_name, 
        published_date = __head.document_date, 
        parent_facility_code = __head.parent_facility_code
      WHERE
        id = __head.document_id;

    WHEN 'AREA'::common.facility_kind THEN 
      UPDATE
        facility.area
      SET 
        --facility_code = __head.facility_code, 
        --version_num = __head.version_num, 
        display_name = __head.display_name, 
        published_date = __head.document_date, 
        parent_facility_code = __head.parent_facility_code
      WHERE
        id = __head.document_id;

    WHEN 'LINE'::common.facility_kind THEN 
      UPDATE
        facility.line
      SET 
        --facility_code = __head.facility_code, 
        --version_num = __head.version_num, 
        display_name = __head.display_name, 
        published_date = __head.document_date, 
        parent_facility_code = __head.parent_facility_code
      WHERE
        id = __head.document_id;

    WHEN 'ZONE'::common.facility_kind THEN 
      UPDATE
        facility.zone
      SET 
        --facility_code = __head.facility_code, 
        --version_num = __head.version_num, 
        display_name = __head.display_name, 
        published_date = __head.document_date, 
        parent_facility_code = __head.parent_facility_code
      WHERE
        id = __head.document_id;

    ELSE
      RAISE EXCEPTION 'unsupported facility_type %', __head.facility_type;

    END CASE;

END;
$$;


ALTER FUNCTION facility.reinit(__head common.facility_head) OWNER TO postgres;

--
-- TOC entry 425 (class 1255 OID 99840)
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
-- TOC entry 426 (class 1255 OID 99841)
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
-- TOC entry 427 (class 1255 OID 99842)
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
-- TOC entry 417 (class 1255 OID 99843)
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
-- TOC entry 429 (class 1255 OID 99844)
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
-- TOC entry 430 (class 1255 OID 99845)
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
-- TOC entry 431 (class 1255 OID 99846)
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
-- TOC entry 432 (class 1255 OID 99847)
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
-- TOC entry 433 (class 1255 OID 99848)
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
-- TOC entry 434 (class 1255 OID 99849)
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
-- TOC entry 435 (class 1255 OID 99850)
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
-- TOC entry 436 (class 1255 OID 99851)
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
-- TOC entry 437 (class 1255 OID 99852)
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
-- TOC entry 438 (class 1255 OID 99853)
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
-- TOC entry 439 (class 1255 OID 99854)
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
-- TOC entry 440 (class 1255 OID 99855)
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
-- TOC entry 441 (class 1255 OID 99856)
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
-- TOC entry 442 (class 1255 OID 99857)
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
-- TOC entry 443 (class 1255 OID 99858)
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
-- TOC entry 444 (class 1255 OID 99859)
-- Name: destroy(bigint); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION operation.destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM operation.information WHERE id = __document_id;
END;
$$;


ALTER FUNCTION operation.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 445 (class 1255 OID 99860)
-- Name: get_head(bigint); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION operation.get_head(__document_id bigint) RETURNS common.operation_head
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN 
    (information.id, 
    information.gid, 
    information.operation_code, 
    information.version_num, 
    information.display_name, 
    information.published_date, 
    information.operation_type)::common.operation_head
  FROM 
    operation.information
  WHERE 
    information.id = __document_id;
END;
$$;


ALTER FUNCTION operation.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 531 (class 1255 OID 99861)
-- Name: init(common.operation_head); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION operation.init(__head common.operation_head) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _information_id bigint;
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

  IF (__head.gid IS NULL) THEN
    __head.gid := public.uuid_generate_v1();
  END IF;

  INSERT INTO
    operation.information (
      id, 
      gid, 
      operation_code, 
      version_num, 
      display_name, 
      published_date, 
      operation_type)
  VALUES (
    DEFAULT,
    __head.gid,
    __head.operation_code,
    __head.version_num,
    __head.display_name,
    __head.document_date,
    __head.operation_type)
  RETURNING id INTO _information_id;

  RETURN _information_id;

END;
$$;


ALTER FUNCTION operation.init(__head common.operation_head) OWNER TO postgres;

--
-- TOC entry 446 (class 1255 OID 99862)
-- Name: destroy(bigint); Type: FUNCTION; Schema: personnel; Owner: postgres
--

CREATE FUNCTION personnel.destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM personnel.information WHERE id = __document_id;
END;
$$;


ALTER FUNCTION personnel.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 449 (class 1255 OID 99863)
-- Name: get_head(bigint); Type: FUNCTION; Schema: personnel; Owner: postgres
--

CREATE FUNCTION personnel.get_head(__document_id bigint) RETURNS common.personnel_head
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN 
    (information.id, 
    information.gid, 
    information.personnel_code, 
    information.version_num, 
    information.display_name, 
    information.published_date, 
    information.personnel_type)::common.personnel_head
  FROM 
    personnel.information
  WHERE 
    information.id = __document_id;
END;
$$;


ALTER FUNCTION personnel.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 534 (class 1255 OID 99864)
-- Name: init(common.personnel_head); Type: FUNCTION; Schema: personnel; Owner: postgres
--

CREATE FUNCTION personnel.init(__head common.personnel_head) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _information_id bigint;
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

  IF (__head.gid IS NULL) THEN
    __head.gid := public.uuid_generate_v1();
  END IF;

  INSERT INTO
    personnel.information (
      id, 
      gid, 
      personnel_code, 
      version_num, 
      display_name, 
      published_date, 
      personnel_type)
  VALUES (
    DEFAULT,
    __head.gid,
    __head.personnel_code,
    __head.version_num,
    __head.display_name,
    __head.document_date,
    __head.personnel_type)
  RETURNING id INTO _information_id;

  RETURN _information_id;

END;
$$;


ALTER FUNCTION personnel.init(__head common.personnel_head) OWNER TO postgres;

--
-- TOC entry 447 (class 1255 OID 99865)
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
-- TOC entry 450 (class 1255 OID 99866)
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
-- TOC entry 451 (class 1255 OID 99867)
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
-- TOC entry 452 (class 1255 OID 99868)
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
-- TOC entry 453 (class 1255 OID 99869)
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
-- TOC entry 454 (class 1255 OID 99870)
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
-- TOC entry 455 (class 1255 OID 99871)
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
-- TOC entry 456 (class 1255 OID 99872)
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
-- TOC entry 457 (class 1255 OID 99873)
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
-- TOC entry 458 (class 1255 OID 99874)
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
-- TOC entry 459 (class 1255 OID 99875)
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
-- TOC entry 460 (class 1255 OID 99876)
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
-- TOC entry 461 (class 1255 OID 99877)
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
-- TOC entry 464 (class 1255 OID 99878)
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
-- TOC entry 465 (class 1255 OID 99879)
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
-- TOC entry 466 (class 1255 OID 99880)
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
-- TOC entry 467 (class 1255 OID 99881)
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
-- TOC entry 468 (class 1255 OID 99882)
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
-- TOC entry 469 (class 1255 OID 99883)
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
-- TOC entry 470 (class 1255 OID 99884)
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
-- TOC entry 471 (class 1255 OID 99885)
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
-- TOC entry 472 (class 1255 OID 99886)
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
-- TOC entry 473 (class 1255 OID 99887)
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
-- TOC entry 474 (class 1255 OID 99888)
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
-- TOC entry 475 (class 1255 OID 99889)
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
-- TOC entry 476 (class 1255 OID 99890)
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
-- TOC entry 462 (class 1255 OID 99891)
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
-- TOC entry 477 (class 1255 OID 99892)
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
-- TOC entry 478 (class 1255 OID 99893)
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
-- TOC entry 479 (class 1255 OID 99894)
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
-- TOC entry 480 (class 1255 OID 99895)
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
-- TOC entry 481 (class 1255 OID 99896)
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
-- TOC entry 482 (class 1255 OID 99897)
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
-- TOC entry 483 (class 1255 OID 99898)
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
-- TOC entry 484 (class 1255 OID 99899)
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
-- TOC entry 485 (class 1255 OID 99900)
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
-- TOC entry 486 (class 1255 OID 99901)
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
-- TOC entry 487 (class 1255 OID 99902)
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
-- TOC entry 448 (class 1255 OID 99903)
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
-- TOC entry 463 (class 1255 OID 99904)
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
-- TOC entry 488 (class 1255 OID 99905)
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
-- TOC entry 489 (class 1255 OID 99906)
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
-- TOC entry 490 (class 1255 OID 99907)
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
-- TOC entry 491 (class 1255 OID 99908)
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
-- TOC entry 492 (class 1255 OID 99909)
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
-- TOC entry 493 (class 1255 OID 99910)
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
-- TOC entry 494 (class 1255 OID 99911)
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
-- TOC entry 495 (class 1255 OID 99912)
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
-- TOC entry 496 (class 1255 OID 99913)
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
-- TOC entry 497 (class 1255 OID 99914)
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
-- TOC entry 498 (class 1255 OID 99915)
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
-- TOC entry 499 (class 1255 OID 99916)
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
-- TOC entry 500 (class 1255 OID 99917)
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
-- TOC entry 501 (class 1255 OID 99918)
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
-- TOC entry 502 (class 1255 OID 99919)
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
-- TOC entry 503 (class 1255 OID 99920)
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
-- TOC entry 504 (class 1255 OID 99921)
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
-- TOC entry 505 (class 1255 OID 99922)
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
-- TOC entry 506 (class 1255 OID 99923)
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
-- TOC entry 507 (class 1255 OID 99924)
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
-- TOC entry 508 (class 1255 OID 99925)
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
-- TOC entry 509 (class 1255 OID 99926)
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
-- TOC entry 510 (class 1255 OID 99927)
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
-- TOC entry 545 (class 1255 OID 101284)
-- Name: __equipment__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__equipment__destroy() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.equipment_head;
BEGIN
  
  RAISE DEBUG '#trace Check __equipment__destroy()';

  INSERT INTO
    equipment.information
      (id, gid, equipment_code, version_num, display_name, published_date, equipment_type)
    VALUES
      (101, 'a711da30-fa3a-11e7-8e63-d4bed939923a', 'EQUIPMENT-001', 1, 'EQUIPMENT-001', '2018-01-15', 'EQUIPMENT'),
      (102, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', 'EQUIPMENT-002', 1, 'EQUIPMENT-002', '2018-01-15', 'EQUIPMENT'),
      (103, 'f08b5682-fa3a-11e7-86da-d4bed939923a', 'EQUIPMENT-003', 1, 'EQUIPMENT-003', '2018-01-15', 'EQUIPMENT');

  PERFORM equipment.destroy(101); -- + add not allowed delete test
  
  _head := equipment.get_head(101);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

  _head := equipment.get_head(103);
  PERFORM pgunit.assert_not_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__equipment__destroy() OWNER TO postgres;

--
-- TOC entry 543 (class 1255 OID 101285)
-- Name: __equipment__get_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__equipment__get_head() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.equipment_head;
  _test_gid CONSTANT uuid := 'cf77e3ea-0b5c-4e62-be62-63704f4071b7';
  _test_equipment_code CONSTANT character varying := 'EQUIPMENT-003';
  _test_version_num CONSTANT integer := 2;
  _test_display_name CONSTANT character varying := 'EQUIPMENT-003';
  _test_document_date CONSTANT date := '2018-01-16'::date;
  _test_equipment_type CONSTANT character varying := 'EQUIPMENT';
BEGIN
  
  RAISE DEBUG '#trace Check __equipment__get_head()';

  INSERT INTO
    equipment.information
      (id, gid, equipment_code, version_num, display_name, published_date, equipment_type)
    VALUES
      (101, 'a711da30-fa3a-11e7-8e63-d4bed939923a', 'EQUIPMENT-001', 1, 'EQUIPMENT-001', '2018-01-15', 'EQUIPMENT'),
      (102, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', 'EQUIPMENT-002', 1, 'EQUIPMENT-002', '2018-01-15', 'EQUIPMENT'),
      (103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', 'EQUIPMENT-003', 2, 'EQUIPMENT-003', '2018-01-16', 'EQUIPMENT');

  _head := equipment.get_head(103);
  PERFORM pgunit.assert_equals(_test_gid, _head.gid, 'Incorrect gid value');
  PERFORM pgunit.assert_equals(_test_equipment_code, _head.equipment_code, 'Incorrect equipment_code value');
  PERFORM pgunit.assert_equals(_test_version_num, _head.version_num, 'Incorrect version_num value');
  PERFORM pgunit.assert_equals(_test_display_name, _head.display_name, 'Incorrect display_name value');
  PERFORM pgunit.assert_equals(_test_document_date, _head.document_date, 'Incorrect document_date value');
  PERFORM pgunit.assert_equals(_test_equipment_type, _head.equipment_type, 'Incorrect equipment_type value');

  _head := equipment.get_head(104);
  PERFORM pgunit.assert_not_equals(_test_gid, _head.gid, 'Incorrect gid value');
  
  _head := equipment.get_head(105);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__equipment__get_head() OWNER TO postgres;

--
-- TOC entry 544 (class 1255 OID 101286)
-- Name: __equipment__init(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__equipment__init() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.equipment_head[] := ARRAY[(103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', 'EQUIPMENT-002', 1, 'EQUIPMENT-002', '2018-01-16', 'EQUIPMENT')]::common.equipment_head[];
  _head common.equipment_head;
  _document_id bigint;
BEGIN

  RAISE DEBUG '#trace Check __equipment__init()';
  
  _document_id := equipment.init(_test_head[1]);
  _head := equipment.get_head(_document_id);

  RAISE DEBUG '%', _head;
  RAISE DEBUG '%', _test_head[1]::common.equipment_head;

  --PERFORM pgunit.assert_array_equals(_test_head[1]::common.equipment_head, _head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__equipment__init() OWNER TO postgres;

--
-- TOC entry 537 (class 1255 OID 99928)
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
-- TOC entry 536 (class 1255 OID 99929)
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
-- TOC entry 538 (class 1255 OID 99930)
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

  -- PERFORM pgunit.assert_array_equals(_test_head[1], _head, 'Incorrect _head value');
  PERFORM pgunit.assert_array_equals(_test_meas, _meas, 'Incorrect _meas value');
  PERFORM pgunit.assert_array_equals(_test_kind, _kind, 'Incorrect _kind value');


END;
$$;


ALTER FUNCTION tests.__inventory__init() OWNER TO postgres;

--
-- TOC entry 539 (class 1255 OID 99931)
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
-- TOC entry 512 (class 1255 OID 99932)
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
-- TOC entry 513 (class 1255 OID 99933)
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
-- TOC entry 514 (class 1255 OID 99934)
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
-- TOC entry 515 (class 1255 OID 99935)
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
-- TOC entry 511 (class 1255 OID 99936)
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
-- TOC entry 516 (class 1255 OID 99937)
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
-- TOC entry 517 (class 1255 OID 99938)
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
-- TOC entry 546 (class 1255 OID 101290)
-- Name: __operation__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__operation__destroy() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.operation_head;
BEGIN
  
  RAISE DEBUG '#trace Check __operation__destroy()';

  INSERT INTO
    operation.information
      (id, gid, operation_code, version_num, display_name, published_date, operation_type)
    VALUES
      (101, 'a711da30-fa3a-11e7-8e63-d4bed939923a', 'OPERATION-001', 1, 'OPERATION-001', '2018-01-15', 'OPERATION'),
      (102, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', 'OPERATION-002', 1, 'OPERATION-002', '2018-01-15', 'OPERATION'),
      (103, 'f08b5682-fa3a-11e7-86da-d4bed939923a', 'OPERATION-003', 1, 'OPERATION-003', '2018-01-15', 'OPERATION');

  PERFORM operation.destroy(101); -- + add not allowed delete test
  
  _head := operation.get_head(101);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

  _head := operation.get_head(103);
  PERFORM pgunit.assert_not_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__operation__destroy() OWNER TO postgres;

--
-- TOC entry 547 (class 1255 OID 101291)
-- Name: __operation__get_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__operation__get_head() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.operation_head;
  _test_gid CONSTANT uuid := 'cf77e3ea-0b5c-4e62-be62-63704f4071b7';
  _test_operation_code CONSTANT character varying := 'OPERATION-003';
  _test_version_num CONSTANT integer := 2;
  _test_display_name CONSTANT character varying := 'OPERATION-003';
  _test_document_date CONSTANT date := '2018-01-16'::date;
  _test_operation_type CONSTANT character varying := 'OPERATION';
BEGIN
  
  RAISE DEBUG '#trace Check __operation__get_head()';

  INSERT INTO
    operation.information
      (id, gid, operation_code, version_num, display_name, published_date, operation_type)
    VALUES
      (101, 'a711da30-fa3a-11e7-8e63-d4bed939923a', 'OPERATION-001', 1, 'OPERATION-001', '2018-01-15', 'OPERATION'),
      (102, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', 'OPERATION-002', 1, 'OPERATION-002', '2018-01-15', 'OPERATION'),
      (103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', 'OPERATION-003', 2, 'OPERATION-003', '2018-01-16', 'OPERATION');

  _head := operation.get_head(103);
  PERFORM pgunit.assert_equals(_test_gid, _head.gid, 'Incorrect gid value');
  PERFORM pgunit.assert_equals(_test_operation_code, _head.operation_code, 'Incorrect operation_code value');
  PERFORM pgunit.assert_equals(_test_version_num, _head.version_num, 'Incorrect version_num value');
  PERFORM pgunit.assert_equals(_test_display_name, _head.display_name, 'Incorrect display_name value');
  PERFORM pgunit.assert_equals(_test_document_date, _head.document_date, 'Incorrect document_date value');
  PERFORM pgunit.assert_equals(_test_operation_type, _head.operation_type, 'Incorrect operation_type value');

  _head := operation.get_head(104);
  PERFORM pgunit.assert_not_equals(_test_gid, _head.gid, 'Incorrect gid value');
  
  _head := operation.get_head(105);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__operation__get_head() OWNER TO postgres;

--
-- TOC entry 548 (class 1255 OID 101292)
-- Name: __operation__init(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__operation__init() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.operation_head[] := ARRAY[(103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', 'OPERATION-002', 1, 'OPERATION-002', '2018-01-16', 'OPERATION')]::common.operation_head[];
  _head common.operation_head;
  _document_id bigint;
BEGIN

  RAISE DEBUG '#trace Check __operation__init()';
  
  _document_id := operation.init(_test_head[1]);
  _head := operation.get_head(_document_id);

  RAISE DEBUG '%', _head;
  RAISE DEBUG '%', _test_head[1]::common.operation_head;

  --PERFORM pgunit.assert_array_equals(_test_head[1]::common.operation_head, _head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__operation__init() OWNER TO postgres;

--
-- TOC entry 549 (class 1255 OID 101287)
-- Name: __personnel__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__personnel__destroy() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.personnel_head;
BEGIN
  
  RAISE DEBUG '#trace Check __personnel__destroy()';

  INSERT INTO
    personnel.information
      (id, gid, personnel_code, version_num, display_name, published_date, personnel_type)
    VALUES
      (101, 'a711da30-fa3a-11e7-8e63-d4bed939923a', 'PERSONNEL-001', 1, 'PERSONNEL-001', '2018-01-15', 'PERSONNEL'),
      (102, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', 'PERSONNEL-002', 1, 'PERSONNEL-002', '2018-01-15', 'PERSONNEL'),
      (103, 'f08b5682-fa3a-11e7-86da-d4bed939923a', 'PERSONNEL-003', 1, 'PERSONNEL-003', '2018-01-15', 'PERSONNEL');

  PERFORM personnel.destroy(101); -- + add not allowed delete test
  
  _head := personnel.get_head(101);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

  _head := personnel.get_head(103);
  PERFORM pgunit.assert_not_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__personnel__destroy() OWNER TO postgres;

--
-- TOC entry 551 (class 1255 OID 101288)
-- Name: __personnel__get_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__personnel__get_head() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.personnel_head;
  _test_gid CONSTANT uuid := 'cf77e3ea-0b5c-4e62-be62-63704f4071b7';
  _test_personnel_code CONSTANT character varying := 'PERSONNEL-003';
  _test_version_num CONSTANT integer := 2;
  _test_display_name CONSTANT character varying := 'PERSONNEL-003';
  _test_document_date CONSTANT date := '2018-01-16'::date;
  _test_personnel_type CONSTANT character varying := 'PERSONNEL';
BEGIN
  
  RAISE DEBUG '#trace Check __personnel__get_head()';

  INSERT INTO
    personnel.information
      (id, gid, personnel_code, version_num, display_name, published_date, personnel_type)
    VALUES
      (101, 'a711da30-fa3a-11e7-8e63-d4bed939923a', 'PERSONNEL-001', 1, 'PERSONNEL-001', '2018-01-15', 'PERSONNEL'),
      (102, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', 'PERSONNEL-002', 1, 'PERSONNEL-002', '2018-01-15', 'PERSONNEL'),
      (103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', 'PERSONNEL-003', 2, 'PERSONNEL-003', '2018-01-16', 'PERSONNEL');

  _head := personnel.get_head(103);
  PERFORM pgunit.assert_equals(_test_gid, _head.gid, 'Incorrect gid value');
  PERFORM pgunit.assert_equals(_test_personnel_code, _head.personnel_code, 'Incorrect personnel_code value');
  PERFORM pgunit.assert_equals(_test_version_num, _head.version_num, 'Incorrect version_num value');
  PERFORM pgunit.assert_equals(_test_display_name, _head.display_name, 'Incorrect display_name value');
  PERFORM pgunit.assert_equals(_test_document_date, _head.document_date, 'Incorrect document_date value');
  PERFORM pgunit.assert_equals(_test_personnel_type, _head.personnel_type, 'Incorrect personnel_type value');

  _head := personnel.get_head(104);
  PERFORM pgunit.assert_not_equals(_test_gid, _head.gid, 'Incorrect gid value');
  
  _head := personnel.get_head(105);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__personnel__get_head() OWNER TO postgres;

--
-- TOC entry 550 (class 1255 OID 101289)
-- Name: __personnel__init(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__personnel__init() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.personnel_head[] := ARRAY[(103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', 'PERSONNEL-002', 1, 'PERSONNEL-002', '2018-01-16', 'PERSONNEL')]::common.personnel_head[];
  _head common.personnel_head;
  _document_id bigint;
BEGIN

  RAISE DEBUG '#trace Check __personnel__init()';
  
  _document_id := personnel.init(_test_head[1]);
  _head := personnel.get_head(_document_id);

  RAISE DEBUG '%', _head;
  RAISE DEBUG '%', _test_head[1]::common.personnel_head;

  --PERFORM pgunit.assert_array_equals(_test_head[1]::common.personnel_head, _head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__personnel__init() OWNER TO postgres;

--
-- TOC entry 518 (class 1255 OID 99939)
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
-- TOC entry 519 (class 1255 OID 99940)
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
-- TOC entry 520 (class 1255 OID 99942)
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
-- TOC entry 521 (class 1255 OID 99943)
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
-- TOC entry 522 (class 1255 OID 99944)
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
-- TOC entry 523 (class 1255 OID 99945)
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
-- TOC entry 524 (class 1255 OID 99946)
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
-- TOC entry 541 (class 1255 OID 101278)
-- Name: __tooling__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__tooling__destroy() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.tooling_head;
BEGIN
  
  RAISE DEBUG '#trace Check __tooling__destroy()';

  INSERT INTO
    tooling.information
      (id, gid, tooling_code, version_num, display_name, published_date, tooling_type)
    VALUES
      (101, 'a711da30-fa3a-11e7-8e63-d4bed939923a', 'TOOL-001', 1, 'TOOL-001', '2018-01-15', 'TOOLING'),
      (102, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', 'TOOL-002', 1, 'TOOL-002', '2018-01-15', 'TOOLING'),
      (103, 'f08b5682-fa3a-11e7-86da-d4bed939923a', 'TOOL-003', 1, 'TOOL-003', '2018-01-15', 'TOOLING');

  PERFORM tooling.destroy(101); -- + add not allowed delete test
  
  _head := tooling.get_head(101);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

  _head := tooling.get_head(103);
  PERFORM pgunit.assert_not_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__tooling__destroy() OWNER TO postgres;

--
-- TOC entry 542 (class 1255 OID 101279)
-- Name: __tooling__get_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__tooling__get_head() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.tooling_head;
  _test_gid CONSTANT uuid := 'cf77e3ea-0b5c-4e62-be62-63704f4071b7';
  _test_tooling_code CONSTANT character varying := 'TOOL-003';
  _test_version_num CONSTANT integer := 2;
  _test_display_name CONSTANT character varying := 'TOOL-003';
  _test_document_date CONSTANT date := '2018-01-16'::date;
  _test_tooling_type CONSTANT character varying := 'TOOLING';
BEGIN
  
  RAISE DEBUG '#trace Check __tooling__get_head()';

  INSERT INTO
    tooling.information
      (id, gid, tooling_code, version_num, display_name, published_date, tooling_type)
    VALUES
      (101, 'a711da30-fa3a-11e7-8e63-d4bed939923a', 'TOOL-001', 1, 'TOOL-001', '2018-01-15', 'TOOLING'),
      (102, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', 'TOOL-002', 1, 'TOOL-002', '2018-01-15', 'TOOLING'),
      (103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', 'TOOL-003', 2, 'TOOL-003', '2018-01-16', 'TOOLING');

  _head := tooling.get_head(103);
  PERFORM pgunit.assert_equals(_test_gid, _head.gid, 'Incorrect gid value');
  PERFORM pgunit.assert_equals(_test_tooling_code, _head.tooling_code, 'Incorrect tooling_code value');
  PERFORM pgunit.assert_equals(_test_version_num, _head.version_num, 'Incorrect version_num value');
  PERFORM pgunit.assert_equals(_test_display_name, _head.display_name, 'Incorrect display_name value');
  PERFORM pgunit.assert_equals(_test_document_date, _head.document_date, 'Incorrect document_date value');
  PERFORM pgunit.assert_equals(_test_tooling_type, _head.tooling_type, 'Incorrect tooling_type value');

  _head := tooling.get_head(104);
  PERFORM pgunit.assert_not_equals(_test_gid, _head.gid, 'Incorrect gid value');
  
  _head := tooling.get_head(105);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__tooling__get_head() OWNER TO postgres;

--
-- TOC entry 540 (class 1255 OID 101280)
-- Name: __tooling__init(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__tooling__init() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.tooling_head[] := ARRAY[(103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', 'TOOL-002', 1, 'TOOL-002', '2018-01-16', 'TOOLING')]::common.tooling_head[];
  _head common.tooling_head;
  _document_id bigint;
BEGIN

  RAISE DEBUG '#trace Check __tooling__init()';
  
  _document_id := tooling.init(_test_head[1]);
  _head := tooling.get_head(_document_id);

  RAISE DEBUG '%', _head;
  RAISE DEBUG '%', _test_head[1]::common.tooling_head;

  --PERFORM pgunit.assert_array_equals(_test_head[1]::common.tooling_head, _head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__tooling__init() OWNER TO postgres;

--
-- TOC entry 529 (class 1255 OID 99948)
-- Name: _load_data(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests._load_data() RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  PERFORM operation.init(
    (NULL, NULL, 'OPR-001', 1, 'Operation #001', '2018-01-01', 'OPERATION')::common.operation_head
  );
  PERFORM operation.init(
    (NULL, NULL, 'OPR-002', 1, 'Operation #002', '2018-01-01', 'OPERATION')::common.operation_head
  );
  PERFORM operation.init(
    (NULL, NULL, 'OPR-003', 1, 'Operation #003', '2018-01-01', 'OPERATION')::common.operation_head
  );
  PERFORM operation.init(
    (NULL, NULL, 'OPR-004', 1, 'Operation #004', '2018-01-01', 'OPERATION')::common.operation_head
  );
  PERFORM operation.init(
    (NULL, NULL, 'OPR-005', 1, 'Operation #005', '2018-01-01', 'OPERATION')::common.operation_head
  );


  PERFORM equipment.init(
    (NULL, NULL, 'EQP-001', 1, 'Equipment #001', '2018-01-01', 'EQUIPMENT')::common.equipment_head
  );
  PERFORM equipment.init(
    (NULL, NULL, 'EQP-002', 1, 'Equipment #002', '2018-01-01', 'EQUIPMENT')::common.equipment_head
  );
  PERFORM equipment.init(
    (NULL, NULL, 'EQP-003', 1, 'Equipment #003', '2018-01-01', 'EQUIPMENT')::common.equipment_head
  );
  PERFORM equipment.init(
    (NULL, NULL, 'EQP-004', 1, 'Equipment #004', '2018-01-01', 'EQUIPMENT')::common.equipment_head
  );
  PERFORM equipment.init(
    (NULL, NULL, 'EQP-005', 1, 'Equipment #005', '2018-01-01', 'EQUIPMENT')::common.equipment_head
  );


  PERFORM tooling.init(
    (NULL, NULL, 'TLN-001', 1, 'Tooling #001', '2018-01-01', 'TOOLING')::common.tooling_head
  );
  PERFORM tooling.init(
    (NULL, NULL, 'TLN-002', 1, 'Tooling #002', '2018-01-01', 'TOOLING')::common.tooling_head
  );
  PERFORM tooling.init(
    (NULL, NULL, 'TLN-003', 1, 'Tooling #003', '2018-01-01', 'TOOLING')::common.tooling_head
  );
  PERFORM tooling.init(
    (NULL, NULL, 'TLN-004', 1, 'Tooling #004', '2018-01-01', 'TOOLING')::common.tooling_head
  );
  PERFORM tooling.init(
    (NULL, NULL, 'TLN-005', 1, 'Tooling #005', '2018-01-01', 'TOOLING')::common.tooling_head
  );


  PERFORM personnel.init(
    (NULL, NULL, 'PER-001', 1, 'Personnel #001', '2018-01-01', 'PERSONNEL')::common.personnel_head
  );
  PERFORM personnel.init(
    (NULL, NULL, 'PER-002', 1, 'Personnel #002', '2018-01-01', 'PERSONNEL')::common.personnel_head
  );
  PERFORM personnel.init(
    (NULL, NULL, 'PER-003', 1, 'Personnel #003', '2018-01-01', 'PERSONNEL')::common.personnel_head
  );
  PERFORM personnel.init(
    (NULL, NULL, 'PER-004', 1, 'Personnel #004', '2018-01-01', 'PERSONNEL')::common.personnel_head
  );
  PERFORM personnel.init(
    (NULL, NULL, 'PER-005', 1, 'Personnel #005', '2018-01-01', 'PERSONNEL')::common.personnel_head
  );
  

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
-- TOC entry 535 (class 1255 OID 99950)
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
  TRUNCATE TABLE binding.ebom_to_process CASCADE;
  TRUNCATE TABLE binding.ebom_to_product CASCADE;
  TRUNCATE TABLE binding.ebom_to_route CASCADE;
  TRUNCATE TABLE binding.mbom_to_operation CASCADE;
  TRUNCATE TABLE binding.mbom_to_process CASCADE;
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
  TRUNCATE TABLE equipment.information CASCADE;
  TRUNCATE TABLE facility.area CASCADE;
  TRUNCATE TABLE facility.enterprise CASCADE;
  TRUNCATE TABLE facility.information CASCADE;
  TRUNCATE TABLE facility.line CASCADE;
  TRUNCATE TABLE facility.site CASCADE;
  TRUNCATE TABLE facility.zone CASCADE;
  TRUNCATE TABLE inventory.assembly CASCADE;
  TRUNCATE TABLE inventory.buyable CASCADE;
  TRUNCATE TABLE inventory.conglomeration CASCADE;
  TRUNCATE TABLE inventory.consumable CASCADE;
  TRUNCATE TABLE inventory.definition CASCADE;
  TRUNCATE TABLE inventory.information CASCADE;
  TRUNCATE TABLE inventory.measurement CASCADE;
  TRUNCATE TABLE inventory.part CASCADE;
  TRUNCATE TABLE inventory.phantom CASCADE;
  TRUNCATE TABLE inventory.primal CASCADE;
  TRUNCATE TABLE inventory.producible CASCADE;
  TRUNCATE TABLE inventory.salable CASCADE;
  TRUNCATE TABLE inventory.storable CASCADE;
  TRUNCATE TABLE mbom.consumable CASCADE;
  TRUNCATE TABLE mbom.definition CASCADE;
  TRUNCATE TABLE mbom.information CASCADE;
  TRUNCATE TABLE mbom.material CASCADE;
  TRUNCATE TABLE mbom.primal CASCADE;
  TRUNCATE TABLE operation.information CASCADE;
  TRUNCATE TABLE personnel.information CASCADE;
  TRUNCATE TABLE process.consumable CASCADE;
  TRUNCATE TABLE process.definition CASCADE;
  TRUNCATE TABLE process.dependency CASCADE;
  TRUNCATE TABLE process.equipment CASCADE;
  TRUNCATE TABLE process.information CASCADE;
  TRUNCATE TABLE process.material CASCADE;
  TRUNCATE TABLE process.personnel CASCADE;
  TRUNCATE TABLE process.primal CASCADE;
  TRUNCATE TABLE process.segment CASCADE;
  TRUNCATE TABLE process.tooling CASCADE;
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
  TRUNCATE TABLE route.definition CASCADE;
  TRUNCATE TABLE route.information CASCADE;
  TRUNCATE TABLE route.segment CASCADE;
  TRUNCATE TABLE stride.consumable CASCADE;
  TRUNCATE TABLE stride.definition CASCADE;
  TRUNCATE TABLE stride.descendant CASCADE;
  TRUNCATE TABLE stride.equipment CASCADE;
  TRUNCATE TABLE stride.information CASCADE;
  TRUNCATE TABLE stride.location CASCADE;
  TRUNCATE TABLE stride.material CASCADE;
  TRUNCATE TABLE stride.personnel CASCADE;
  TRUNCATE TABLE stride.primal CASCADE;
  TRUNCATE TABLE stride.tooling CASCADE;
  TRUNCATE TABLE tooling.information CASCADE;
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
  ALTER SEQUENCE equipment.information_id_seq RESTART WITH 1;
  ALTER SEQUENCE facility.information_id_seq RESTART WITH 1;
  ALTER SEQUENCE inventory.definition_id_seq RESTART WITH 1;
  ALTER SEQUENCE inventory.information_id_seq RESTART WITH 1;
  ALTER SEQUENCE mbom.definition_id_seq RESTART WITH 1;
  ALTER SEQUENCE mbom.information_id_seq RESTART WITH 1;
  ALTER SEQUENCE operation.information_id_seq RESTART WITH 1;
  ALTER SEQUENCE personnel.information_id_seq RESTART WITH 1;
  ALTER SEQUENCE process.definition_id_seq RESTART WITH 1;
  ALTER SEQUENCE process.information_id_seq RESTART WITH 1;
  ALTER SEQUENCE process.segment_id_seq RESTART WITH 1;
  ALTER SEQUENCE product.definition_id_seq RESTART WITH 1;
  ALTER SEQUENCE product.information_id_seq RESTART WITH 1;
  ALTER SEQUENCE product.segment_id_seq RESTART WITH 1;
  ALTER SEQUENCE route.definition_id_seq RESTART WITH 1;
  ALTER SEQUENCE route.information_id_seq RESTART WITH 1;
  ALTER SEQUENCE route.segment_id_seq RESTART WITH 1;
  ALTER SEQUENCE stride.definition_id_seq RESTART WITH 1;
  ALTER SEQUENCE stride.information_id_seq RESTART WITH 1;
  ALTER SEQUENCE tooling.information_id_seq RESTART WITH 1;
  -- ALTER SEQUENCE uom.uom_role_uom_role_id_seq RESTART WITH 1;
END;
$$;


ALTER FUNCTION tests._reset_data() OWNER TO postgres;

--
-- TOC entry 525 (class 1255 OID 99951)
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
-- TOC entry 526 (class 1255 OID 99952)
-- Name: destroy(bigint); Type: FUNCTION; Schema: tooling; Owner: postgres
--

CREATE FUNCTION tooling.destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM tooling.information WHERE id = __document_id;
END;
$$;


ALTER FUNCTION tooling.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 527 (class 1255 OID 99953)
-- Name: get_head(bigint); Type: FUNCTION; Schema: tooling; Owner: postgres
--

CREATE FUNCTION tooling.get_head(__document_id bigint) RETURNS common.tooling_head
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN 
    (information.id, 
    information.gid, 
    information.tooling_code, 
    information.version_num, 
    information.display_name, 
    information.published_date, 
    information.tooling_type)::common.tooling_head
  FROM 
    tooling.information
  WHERE 
    information.id = __document_id;
END;
$$;


ALTER FUNCTION tooling.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 532 (class 1255 OID 99954)
-- Name: init(common.tooling_head); Type: FUNCTION; Schema: tooling; Owner: postgres
--

CREATE FUNCTION tooling.init(__head common.tooling_head) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _information_id bigint;
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

  IF (__head.gid IS NULL) THEN
    __head.gid := public.uuid_generate_v1();
  END IF;

  INSERT INTO
    tooling.information (
      id, 
      gid, 
      tooling_code, 
      version_num, 
      display_name, 
      published_date, 
      tooling_type)
  VALUES (
    DEFAULT,
    __head.gid,
    __head.tooling_code,
    __head.version_num,
    __head.display_name,
    __head.document_date,
    __head.tooling_type)
  RETURNING id INTO _information_id;

  RETURN _information_id;

END;
$$;


ALTER FUNCTION tooling.init(__head common.tooling_head) OWNER TO postgres;

--
-- TOC entry 528 (class 1255 OID 99955)
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
-- TOC entry 530 (class 1255 OID 99956)
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
-- TOC entry 245 (class 1259 OID 99957)
-- Name: ebom_to_mbom; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.ebom_to_mbom (
    ebom_id bigint NOT NULL,
    mbom_id bigint NOT NULL
);


ALTER TABLE binding.ebom_to_mbom OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 99960)
-- Name: ebom_to_process; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.ebom_to_process (
    ebom_id bigint NOT NULL,
    process_id bigint NOT NULL
);


ALTER TABLE binding.ebom_to_process OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 99963)
-- Name: ebom_to_product; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.ebom_to_product (
    ebom_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE binding.ebom_to_product OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 99966)
-- Name: ebom_to_route; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.ebom_to_route (
    ebom_id bigint NOT NULL,
    route_id bigint NOT NULL
);


ALTER TABLE binding.ebom_to_route OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 99969)
-- Name: mbom_to_operation; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.mbom_to_operation (
    mbom_id bigint NOT NULL,
    operation_id bigint NOT NULL
);


ALTER TABLE binding.mbom_to_operation OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 99972)
-- Name: mbom_to_process; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.mbom_to_process (
    mbom_id bigint NOT NULL,
    process_id bigint NOT NULL
);


ALTER TABLE binding.mbom_to_process OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 99975)
-- Name: mbom_to_product; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.mbom_to_product (
    mbom_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE binding.mbom_to_product OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 99978)
-- Name: operation_to_product; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.operation_to_product (
    operation_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE binding.operation_to_product OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 99981)
-- Name: route_to_mbom; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.route_to_mbom (
    route_id bigint NOT NULL,
    mbom_id bigint NOT NULL
);


ALTER TABLE binding.route_to_mbom OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 99984)
-- Name: route_to_operation; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.route_to_operation (
    route_id bigint NOT NULL,
    operation_id bigint NOT NULL
);


ALTER TABLE binding.route_to_operation OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 99987)
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
-- TOC entry 256 (class 1259 OID 99994)
-- Name: assembly; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE ebom.assembly (
    CONSTRAINT assembly_component_type_check CHECK ((component_type = 'ASSEMBLY'::common.component_kind))
)
INHERITS (ebom.component);


ALTER TABLE ebom.assembly OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 100002)
-- Name: buyable; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE ebom.buyable (
    CONSTRAINT buyable_component_type_check CHECK ((component_type = 'BUYABLE'::common.component_kind))
)
INHERITS (ebom.component);


ALTER TABLE ebom.buyable OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 100010)
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
-- TOC entry 259 (class 1259 OID 100021)
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
-- TOC entry 4494 (class 0 OID 0)
-- Dependencies: 259
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: ebom; Owner: postgres
--

ALTER SEQUENCE ebom.definition_id_seq OWNED BY ebom.definition.id;


--
-- TOC entry 260 (class 1259 OID 100023)
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
-- TOC entry 261 (class 1259 OID 100031)
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
-- TOC entry 4495 (class 0 OID 0)
-- Dependencies: 261
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: ebom; Owner: postgres
--

ALTER SEQUENCE ebom.information_id_seq OWNED BY ebom.information.id;


--
-- TOC entry 262 (class 1259 OID 100033)
-- Name: part; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE ebom.part (
    CONSTRAINT part_component_type_check CHECK ((component_type = 'PART'::common.component_kind))
)
INHERITS (ebom.component);


ALTER TABLE ebom.part OWNER TO postgres;

--
-- TOC entry 349 (class 1259 OID 101925)
-- Name: information; Type: TABLE; Schema: equipment; Owner: postgres
--

CREATE TABLE equipment.information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    equipment_code character varying NOT NULL,
    version_num integer NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    equipment_type character varying
);


ALTER TABLE equipment.information OWNER TO postgres;

--
-- TOC entry 348 (class 1259 OID 101923)
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
-- TOC entry 4496 (class 0 OID 0)
-- Dependencies: 348
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: equipment; Owner: postgres
--

ALTER SEQUENCE equipment.information_id_seq OWNED BY equipment.information.id;


--
-- TOC entry 263 (class 1259 OID 100051)
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
-- TOC entry 4497 (class 0 OID 0)
-- Dependencies: 263
-- Name: COLUMN information.facility_type; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON COLUMN facility.information.facility_type IS 'PERA organization level';


--
-- TOC entry 264 (class 1259 OID 100060)
-- Name: area; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE facility.area (
    CONSTRAINT area_facility_type_check CHECK ((facility_type = 'AREA'::common.facility_kind))
)
INHERITS (facility.information);


ALTER TABLE facility.area OWNER TO postgres;

--
-- TOC entry 4498 (class 0 OID 0)
-- Dependencies: 264
-- Name: TABLE area; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON TABLE facility.area IS 'PERA model level-2';


--
-- TOC entry 265 (class 1259 OID 100070)
-- Name: enterprise; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE facility.enterprise (
    CONSTRAINT enterprise_facility_type_check CHECK ((facility_type = 'ENTERPRISE'::common.facility_kind))
)
INHERITS (facility.information);


ALTER TABLE facility.enterprise OWNER TO postgres;

--
-- TOC entry 4499 (class 0 OID 0)
-- Dependencies: 265
-- Name: TABLE enterprise; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON TABLE facility.enterprise IS 'PERA model level-4';


--
-- TOC entry 266 (class 1259 OID 100080)
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
-- TOC entry 4500 (class 0 OID 0)
-- Dependencies: 266
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: facility; Owner: postgres
--

ALTER SEQUENCE facility.information_id_seq OWNED BY facility.information.id;


--
-- TOC entry 267 (class 1259 OID 100082)
-- Name: line; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE facility.line (
    CONSTRAINT line_facility_type_check CHECK ((facility_type = 'LINE'::common.facility_kind))
)
INHERITS (facility.information);


ALTER TABLE facility.line OWNER TO postgres;

--
-- TOC entry 4501 (class 0 OID 0)
-- Dependencies: 267
-- Name: TABLE line; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON TABLE facility.line IS 'PERA model level-1 (production line)';


--
-- TOC entry 268 (class 1259 OID 100092)
-- Name: site; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE facility.site (
    CONSTRAINT site_facility_type_check CHECK ((facility_type = 'SITE'::common.facility_kind)),
    CONSTRAINT site_parent_facility_code_check CHECK ((parent_facility_code IS NOT NULL))
)
INHERITS (facility.information);


ALTER TABLE facility.site OWNER TO postgres;

--
-- TOC entry 4502 (class 0 OID 0)
-- Dependencies: 268
-- Name: TABLE site; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON TABLE facility.site IS 'PERA model level-3';


--
-- TOC entry 269 (class 1259 OID 100103)
-- Name: zone; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE facility.zone (
    CONSTRAINT zone_facility_type_check CHECK ((facility_type = 'ZONE'::common.facility_kind))
)
INHERITS (facility.information);


ALTER TABLE facility.zone OWNER TO postgres;

--
-- TOC entry 4503 (class 0 OID 0)
-- Dependencies: 269
-- Name: TABLE zone; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON TABLE facility.zone IS 'PERA model level-1 (storge zone)';


--
-- TOC entry 270 (class 1259 OID 100113)
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
-- TOC entry 4504 (class 0 OID 0)
-- Dependencies: 270
-- Name: TABLE conglomeration; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.conglomeration IS 'inventory list';


--
-- TOC entry 271 (class 1259 OID 100121)
-- Name: assembly; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.assembly (
    CONSTRAINT assembly_inventory_type_check CHECK ((inventory_type = 'ASSEMBLY'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.assembly OWNER TO postgres;

--
-- TOC entry 4505 (class 0 OID 0)
-- Dependencies: 271
-- Name: TABLE assembly; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.assembly IS 'ebom assembly component';


--
-- TOC entry 272 (class 1259 OID 100130)
-- Name: buyable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.buyable (
    CONSTRAINT buyable_inventory_type_check CHECK ((inventory_type = 'BUYABLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.buyable OWNER TO postgres;

--
-- TOC entry 4506 (class 0 OID 0)
-- Dependencies: 272
-- Name: TABLE buyable; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.buyable IS 'ebom buyable component';


--
-- TOC entry 273 (class 1259 OID 100139)
-- Name: consumable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.consumable (
    CONSTRAINT consumable_inventory_type_check CHECK ((inventory_type = 'CONSUMABLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.consumable OWNER TO postgres;

--
-- TOC entry 4507 (class 0 OID 0)
-- Dependencies: 273
-- Name: TABLE consumable; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.consumable IS 'mbom consumable component';


--
-- TOC entry 274 (class 1259 OID 100148)
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
-- TOC entry 275 (class 1259 OID 100160)
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
-- TOC entry 4508 (class 0 OID 0)
-- Dependencies: 275
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: inventory; Owner: postgres
--

ALTER SEQUENCE inventory.definition_id_seq OWNED BY inventory.definition.id;


--
-- TOC entry 276 (class 1259 OID 100162)
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
-- TOC entry 277 (class 1259 OID 100170)
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
-- TOC entry 4509 (class 0 OID 0)
-- Dependencies: 277
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: inventory; Owner: postgres
--

ALTER SEQUENCE inventory.information_id_seq OWNED BY inventory.information.id;


--
-- TOC entry 278 (class 1259 OID 100172)
-- Name: measurement; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.measurement (
    definition_id bigint NOT NULL,
    uom_code character varying NOT NULL,
    factor numeric
);


ALTER TABLE inventory.measurement OWNER TO postgres;

--
-- TOC entry 279 (class 1259 OID 100178)
-- Name: part; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.part (
    CONSTRAINT part_inventory_type_check CHECK ((inventory_type = 'PART'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.part OWNER TO postgres;

--
-- TOC entry 4510 (class 0 OID 0)
-- Dependencies: 279
-- Name: TABLE part; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.part IS 'ebom part component';


--
-- TOC entry 280 (class 1259 OID 100187)
-- Name: phantom; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.phantom (
    CONSTRAINT phantom_inventory_type_check CHECK ((inventory_type = 'PHANTOM'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.phantom OWNER TO postgres;

--
-- TOC entry 4511 (class 0 OID 0)
-- Dependencies: 280
-- Name: TABLE phantom; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.phantom IS 'mbom phantom component';


--
-- TOC entry 281 (class 1259 OID 100196)
-- Name: primal; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.primal (
    CONSTRAINT primal_inventory_type_check CHECK ((inventory_type = 'PRIMAL'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.primal OWNER TO postgres;

--
-- TOC entry 4512 (class 0 OID 0)
-- Dependencies: 281
-- Name: TABLE primal; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.primal IS 'mbom primal component';


--
-- TOC entry 282 (class 1259 OID 100205)
-- Name: producible; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.producible (
    CONSTRAINT producible_inventory_type_check CHECK ((inventory_type = 'PRODUCIBLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.producible OWNER TO postgres;

--
-- TOC entry 4513 (class 0 OID 0)
-- Dependencies: 282
-- Name: TABLE producible; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.producible IS 'mbom producible component';


--
-- TOC entry 283 (class 1259 OID 100214)
-- Name: salable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.salable (
    CONSTRAINT salable_inventory_type_check CHECK ((inventory_type = 'SALABLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.salable OWNER TO postgres;

--
-- TOC entry 4514 (class 0 OID 0)
-- Dependencies: 283
-- Name: TABLE salable; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.salable IS 'inventory salable component';


--
-- TOC entry 284 (class 1259 OID 100223)
-- Name: storable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.storable (
    CONSTRAINT storable_inventory_type_check CHECK ((inventory_type = 'STORABLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.storable OWNER TO postgres;

--
-- TOC entry 285 (class 1259 OID 100232)
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
-- TOC entry 286 (class 1259 OID 100239)
-- Name: consumable; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE mbom.consumable (
    CONSTRAINT consumable_component_type_check CHECK ((material_type = 'CONSUMABLE'::common.material_kind))
)
INHERITS (mbom.material);


ALTER TABLE mbom.consumable OWNER TO postgres;

--
-- TOC entry 287 (class 1259 OID 100247)
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
-- TOC entry 288 (class 1259 OID 100258)
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
-- TOC entry 4515 (class 0 OID 0)
-- Dependencies: 288
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: mbom; Owner: postgres
--

ALTER SEQUENCE mbom.definition_id_seq OWNED BY mbom.definition.id;


--
-- TOC entry 289 (class 1259 OID 100260)
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
-- TOC entry 290 (class 1259 OID 100268)
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
-- TOC entry 4516 (class 0 OID 0)
-- Dependencies: 290
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: mbom; Owner: postgres
--

ALTER SEQUENCE mbom.information_id_seq OWNED BY mbom.information.id;


--
-- TOC entry 291 (class 1259 OID 100270)
-- Name: primal; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE mbom.primal (
    CONSTRAINT primal_component_type_check CHECK ((material_type = 'PRIMAL'::common.material_kind))
)
INHERITS (mbom.material);


ALTER TABLE mbom.primal OWNER TO postgres;

--
-- TOC entry 292 (class 1259 OID 100278)
-- Name: information; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE operation.information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    operation_code character varying NOT NULL,
    version_num integer NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    operation_type character varying
);


ALTER TABLE operation.information OWNER TO postgres;

--
-- TOC entry 293 (class 1259 OID 100286)
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
-- TOC entry 4517 (class 0 OID 0)
-- Dependencies: 293
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE operation.information_id_seq OWNED BY operation.information.id;


--
-- TOC entry 294 (class 1259 OID 100288)
-- Name: information; Type: TABLE; Schema: personnel; Owner: postgres
--

CREATE TABLE personnel.information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    personnel_code character varying NOT NULL,
    version_num integer NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    personnel_type character varying
);


ALTER TABLE personnel.information OWNER TO postgres;

--
-- TOC entry 295 (class 1259 OID 100296)
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
-- TOC entry 4518 (class 0 OID 0)
-- Dependencies: 295
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: personnel; Owner: postgres
--

ALTER SEQUENCE personnel.information_id_seq OWNED BY personnel.information.id;


--
-- TOC entry 296 (class 1259 OID 100298)
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
-- TOC entry 297 (class 1259 OID 100306)
-- Name: consumable; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE process.consumable (
)
INHERITS (process.material);


ALTER TABLE process.consumable OWNER TO postgres;

--
-- TOC entry 298 (class 1259 OID 100314)
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
-- TOC entry 299 (class 1259 OID 100325)
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
-- TOC entry 4519 (class 0 OID 0)
-- Dependencies: 299
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE process.definition_id_seq OWNED BY process.definition.id;


--
-- TOC entry 300 (class 1259 OID 100327)
-- Name: dependency; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE process.dependency (
    ancestor uuid NOT NULL,
    descendant uuid NOT NULL,
    depth integer DEFAULT 1 NOT NULL
);


ALTER TABLE process.dependency OWNER TO postgres;

--
-- TOC entry 301 (class 1259 OID 100331)
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
-- TOC entry 302 (class 1259 OID 100337)
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
-- TOC entry 303 (class 1259 OID 100345)
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
-- TOC entry 4520 (class 0 OID 0)
-- Dependencies: 303
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE process.information_id_seq OWNED BY process.information.id;


--
-- TOC entry 304 (class 1259 OID 100347)
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
-- TOC entry 305 (class 1259 OID 100357)
-- Name: primal; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE process.primal (
)
INHERITS (process.material);


ALTER TABLE process.primal OWNER TO postgres;

--
-- TOC entry 306 (class 1259 OID 100365)
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
-- TOC entry 307 (class 1259 OID 100371)
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
-- TOC entry 4521 (class 0 OID 0)
-- Dependencies: 307
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE process.segment_id_seq OWNED BY process.segment.id;


--
-- TOC entry 308 (class 1259 OID 100373)
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
-- TOC entry 309 (class 1259 OID 100379)
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
-- TOC entry 310 (class 1259 OID 100387)
-- Name: consumable; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.consumable (
    CONSTRAINT consumable_material_type_check CHECK ((material_type = 'CONSUMABLE'::common.material_kind))
)
INHERITS (product.material);


ALTER TABLE product.consumable OWNER TO postgres;

--
-- TOC entry 311 (class 1259 OID 100396)
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
-- TOC entry 312 (class 1259 OID 100407)
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
-- TOC entry 4522 (class 0 OID 0)
-- Dependencies: 312
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE product.definition_id_seq OWNED BY product.definition.id;


--
-- TOC entry 313 (class 1259 OID 100409)
-- Name: dependency; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.dependency (
    ancestor bigint NOT NULL,
    descendant bigint NOT NULL,
    depth integer DEFAULT 1 NOT NULL
);


ALTER TABLE product.dependency OWNER TO postgres;

--
-- TOC entry 314 (class 1259 OID 100413)
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
-- TOC entry 315 (class 1259 OID 100419)
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
-- TOC entry 316 (class 1259 OID 100427)
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
-- TOC entry 4523 (class 0 OID 0)
-- Dependencies: 316
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE product.information_id_seq OWNED BY product.information.id;


--
-- TOC entry 317 (class 1259 OID 100429)
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
-- TOC entry 318 (class 1259 OID 100439)
-- Name: primal; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.primal (
    CONSTRAINT primal_material_type_check CHECK ((material_type = 'PRIMAL'::common.material_kind))
)
INHERITS (product.material);


ALTER TABLE product.primal OWNER TO postgres;

--
-- TOC entry 319 (class 1259 OID 100448)
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
-- TOC entry 4524 (class 0 OID 0)
-- Dependencies: 319
-- Name: TABLE segment; Type: COMMENT; Schema: product; Owner: postgres
--

COMMENT ON TABLE product.segment IS 'segments to specify process';


--
-- TOC entry 320 (class 1259 OID 100455)
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
-- TOC entry 4525 (class 0 OID 0)
-- Dependencies: 320
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE product.segment_id_seq OWNED BY product.segment.id;


--
-- TOC entry 321 (class 1259 OID 100457)
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
-- TOC entry 322 (class 1259 OID 100463)
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
-- TOC entry 323 (class 1259 OID 100474)
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
-- TOC entry 4526 (class 0 OID 0)
-- Dependencies: 323
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: route; Owner: postgres
--

ALTER SEQUENCE route.definition_id_seq OWNED BY route.definition.id;


--
-- TOC entry 324 (class 1259 OID 100476)
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
-- TOC entry 325 (class 1259 OID 100484)
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
-- TOC entry 4527 (class 0 OID 0)
-- Dependencies: 325
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: route; Owner: postgres
--

ALTER SEQUENCE route.information_id_seq OWNED BY route.information.id;


--
-- TOC entry 326 (class 1259 OID 100486)
-- Name: segment; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE route.segment (
    id bigint NOT NULL,
    definition_id bigint NOT NULL,
    location_code character varying NOT NULL,
    descendant_part_code character varying NOT NULL,
    descendant_version_num integer NOT NULL,
    descendant_process_num integer NOT NULL,
    descendant_segment_num integer NOT NULL,
    ancestor_part_code character varying NOT NULL,
    ancestor_version_num integer NOT NULL,
    ancestor_process_num integer NOT NULL,
    ancestor_segment_num integer NOT NULL
);


ALTER TABLE route.segment OWNER TO postgres;

--
-- TOC entry 327 (class 1259 OID 100492)
-- Name: segment_id_seq; Type: SEQUENCE; Schema: route; Owner: postgres
--

CREATE SEQUENCE route.segment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE route.segment_id_seq OWNER TO postgres;

--
-- TOC entry 4528 (class 0 OID 0)
-- Dependencies: 327
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: route; Owner: postgres
--

ALTER SEQUENCE route.segment_id_seq OWNED BY route.segment.id;


--
-- TOC entry 328 (class 1259 OID 100494)
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
-- TOC entry 329 (class 1259 OID 100502)
-- Name: consumable; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.consumable (
)
INHERITS (stride.material);


ALTER TABLE stride.consumable OWNER TO postgres;

--
-- TOC entry 330 (class 1259 OID 100510)
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
-- TOC entry 331 (class 1259 OID 100521)
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
-- TOC entry 4529 (class 0 OID 0)
-- Dependencies: 331
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: stride; Owner: postgres
--

ALTER SEQUENCE stride.definition_id_seq OWNED BY stride.definition.id;


--
-- TOC entry 332 (class 1259 OID 100523)
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
-- TOC entry 333 (class 1259 OID 100529)
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
-- TOC entry 334 (class 1259 OID 100535)
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
-- TOC entry 335 (class 1259 OID 100543)
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
-- TOC entry 4530 (class 0 OID 0)
-- Dependencies: 335
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: stride; Owner: postgres
--

ALTER SEQUENCE stride.information_id_seq OWNED BY stride.information.id;


--
-- TOC entry 336 (class 1259 OID 100545)
-- Name: location; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.location (
    definition_id bigint NOT NULL,
    location_code character varying NOT NULL
);


ALTER TABLE stride.location OWNER TO postgres;

--
-- TOC entry 337 (class 1259 OID 100551)
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
-- TOC entry 338 (class 1259 OID 100561)
-- Name: primal; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.primal (
)
INHERITS (stride.material);


ALTER TABLE stride.primal OWNER TO postgres;

--
-- TOC entry 339 (class 1259 OID 100569)
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
-- TOC entry 340 (class 1259 OID 100575)
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
-- TOC entry 341 (class 1259 OID 100580)
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
-- TOC entry 342 (class 1259 OID 100585)
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
-- TOC entry 343 (class 1259 OID 100599)
-- Name: information; Type: TABLE; Schema: tooling; Owner: postgres
--

CREATE TABLE tooling.information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    tooling_code character varying NOT NULL,
    version_num integer NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    tooling_type character varying
);


ALTER TABLE tooling.information OWNER TO postgres;

--
-- TOC entry 344 (class 1259 OID 100607)
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
-- TOC entry 4531 (class 0 OID 0)
-- Dependencies: 344
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: tooling; Owner: postgres
--

ALTER SEQUENCE tooling.information_id_seq OWNED BY tooling.information.id;


--
-- TOC entry 345 (class 1259 OID 100619)
-- Name: assignment; Type: TABLE; Schema: uom; Owner: postgres
--

CREATE TABLE uom.assignment (
    uom_role_id bigint NOT NULL,
    uom_role_code character varying(100),
    uom_role_name character varying(300)
);


ALTER TABLE uom.assignment OWNER TO postgres;

--
-- TOC entry 4532 (class 0 OID 0)
-- Dependencies: 345
-- Name: TABLE assignment; Type: COMMENT; Schema: uom; Owner: postgres
--

COMMENT ON TABLE uom.assignment IS 'uom role';


--
-- TOC entry 346 (class 1259 OID 100622)
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
-- TOC entry 347 (class 1259 OID 100628)
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
-- TOC entry 4533 (class 0 OID 0)
-- Dependencies: 347
-- Name: uom_role_uom_role_id_seq; Type: SEQUENCE OWNED BY; Schema: uom; Owner: postgres
--

ALTER SEQUENCE uom.uom_role_uom_role_id_seq OWNED BY uom.assignment.uom_role_id;


--
-- TOC entry 3777 (class 2604 OID 100630)
-- Name: assembly uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.assembly ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3779 (class 2604 OID 100631)
-- Name: buyable uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.buyable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3786 (class 2604 OID 100632)
-- Name: definition id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition ALTER COLUMN id SET DEFAULT nextval('ebom.definition_id_seq'::regclass);


--
-- TOC entry 3789 (class 2604 OID 100633)
-- Name: information id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information ALTER COLUMN id SET DEFAULT nextval('ebom.information_id_seq'::regclass);


--
-- TOC entry 3790 (class 2604 OID 100635)
-- Name: part uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.part ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3959 (class 2604 OID 101928)
-- Name: information id; Type: DEFAULT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY equipment.information ALTER COLUMN id SET DEFAULT nextval('equipment.information_id_seq'::regclass);


--
-- TOC entry 3796 (class 2604 OID 100637)
-- Name: area id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area ALTER COLUMN id SET DEFAULT nextval('facility.information_id_seq'::regclass);


--
-- TOC entry 3797 (class 2604 OID 100638)
-- Name: area gid; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3798 (class 2604 OID 100639)
-- Name: area version_num; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3799 (class 2604 OID 100640)
-- Name: area published_date; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3801 (class 2604 OID 100641)
-- Name: enterprise id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.enterprise ALTER COLUMN id SET DEFAULT nextval('facility.information_id_seq'::regclass);


--
-- TOC entry 3802 (class 2604 OID 100642)
-- Name: enterprise gid; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.enterprise ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3803 (class 2604 OID 100643)
-- Name: enterprise version_num; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.enterprise ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3804 (class 2604 OID 100644)
-- Name: enterprise published_date; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.enterprise ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3795 (class 2604 OID 100645)
-- Name: information id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.information ALTER COLUMN id SET DEFAULT nextval('facility.information_id_seq'::regclass);


--
-- TOC entry 3806 (class 2604 OID 100646)
-- Name: line id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line ALTER COLUMN id SET DEFAULT nextval('facility.information_id_seq'::regclass);


--
-- TOC entry 3807 (class 2604 OID 100647)
-- Name: line gid; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3808 (class 2604 OID 100648)
-- Name: line version_num; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3809 (class 2604 OID 100649)
-- Name: line published_date; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3811 (class 2604 OID 100650)
-- Name: site id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site ALTER COLUMN id SET DEFAULT nextval('facility.information_id_seq'::regclass);


--
-- TOC entry 3812 (class 2604 OID 100651)
-- Name: site gid; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3813 (class 2604 OID 100652)
-- Name: site version_num; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3814 (class 2604 OID 100653)
-- Name: site published_date; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3817 (class 2604 OID 100654)
-- Name: zone id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone ALTER COLUMN id SET DEFAULT nextval('facility.information_id_seq'::regclass);


--
-- TOC entry 3818 (class 2604 OID 100655)
-- Name: zone gid; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3819 (class 2604 OID 100656)
-- Name: zone version_num; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3820 (class 2604 OID 100657)
-- Name: zone published_date; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3824 (class 2604 OID 100658)
-- Name: assembly version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.assembly ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3825 (class 2604 OID 100659)
-- Name: assembly published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.assembly ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3827 (class 2604 OID 100660)
-- Name: buyable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.buyable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3828 (class 2604 OID 100661)
-- Name: buyable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.buyable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3830 (class 2604 OID 100662)
-- Name: consumable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.consumable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3831 (class 2604 OID 100663)
-- Name: consumable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.consumable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3839 (class 2604 OID 100664)
-- Name: definition id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition ALTER COLUMN id SET DEFAULT nextval('inventory.definition_id_seq'::regclass);


--
-- TOC entry 3842 (class 2604 OID 100665)
-- Name: information id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.information ALTER COLUMN id SET DEFAULT nextval('inventory.information_id_seq'::regclass);


--
-- TOC entry 3843 (class 2604 OID 100666)
-- Name: part version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.part ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3844 (class 2604 OID 100667)
-- Name: part published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.part ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3846 (class 2604 OID 100668)
-- Name: phantom version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.phantom ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3847 (class 2604 OID 100669)
-- Name: phantom published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.phantom ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3849 (class 2604 OID 100670)
-- Name: primal version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.primal ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3850 (class 2604 OID 100671)
-- Name: primal published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.primal ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3852 (class 2604 OID 100672)
-- Name: producible version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.producible ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3853 (class 2604 OID 100673)
-- Name: producible published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.producible ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3855 (class 2604 OID 100674)
-- Name: salable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.salable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3856 (class 2604 OID 100675)
-- Name: salable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.salable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3858 (class 2604 OID 100676)
-- Name: storable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.storable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3859 (class 2604 OID 100677)
-- Name: storable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.storable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3862 (class 2604 OID 100678)
-- Name: consumable uom_code; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3869 (class 2604 OID 100679)
-- Name: definition id; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition ALTER COLUMN id SET DEFAULT nextval('mbom.definition_id_seq'::regclass);


--
-- TOC entry 3872 (class 2604 OID 100680)
-- Name: information id; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.information ALTER COLUMN id SET DEFAULT nextval('mbom.information_id_seq'::regclass);


--
-- TOC entry 3873 (class 2604 OID 100681)
-- Name: primal uom_code; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3877 (class 2604 OID 100682)
-- Name: information id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.information ALTER COLUMN id SET DEFAULT nextval('operation.information_id_seq'::regclass);


--
-- TOC entry 3880 (class 2604 OID 100683)
-- Name: information id; Type: DEFAULT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY personnel.information ALTER COLUMN id SET DEFAULT nextval('personnel.information_id_seq'::regclass);


--
-- TOC entry 3883 (class 2604 OID 100684)
-- Name: consumable uom_code; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3884 (class 2604 OID 100685)
-- Name: consumable rationing_qty; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.consumable ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3890 (class 2604 OID 100686)
-- Name: definition id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.definition ALTER COLUMN id SET DEFAULT nextval('process.definition_id_seq'::regclass);


--
-- TOC entry 3894 (class 2604 OID 100687)
-- Name: information id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.information ALTER COLUMN id SET DEFAULT nextval('process.information_id_seq'::regclass);


--
-- TOC entry 3899 (class 2604 OID 100688)
-- Name: primal uom_code; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3900 (class 2604 OID 100689)
-- Name: primal rationing_qty; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.primal ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3901 (class 2604 OID 100690)
-- Name: segment id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.segment ALTER COLUMN id SET DEFAULT nextval('process.segment_id_seq'::regclass);


--
-- TOC entry 3904 (class 2604 OID 100691)
-- Name: consumable uom_code; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3905 (class 2604 OID 100692)
-- Name: consumable rationing_qty; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.consumable ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3912 (class 2604 OID 100693)
-- Name: definition id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.definition ALTER COLUMN id SET DEFAULT nextval('product.definition_id_seq'::regclass);


--
-- TOC entry 3916 (class 2604 OID 100694)
-- Name: information id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.information ALTER COLUMN id SET DEFAULT nextval('product.information_id_seq'::regclass);


--
-- TOC entry 3921 (class 2604 OID 100695)
-- Name: primal uom_code; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3922 (class 2604 OID 100696)
-- Name: primal rationing_qty; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.primal ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3925 (class 2604 OID 100697)
-- Name: segment id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.segment ALTER COLUMN id SET DEFAULT nextval('product.segment_id_seq'::regclass);


--
-- TOC entry 3931 (class 2604 OID 100698)
-- Name: definition id; Type: DEFAULT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.definition ALTER COLUMN id SET DEFAULT nextval('route.definition_id_seq'::regclass);


--
-- TOC entry 3934 (class 2604 OID 100699)
-- Name: information id; Type: DEFAULT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.information ALTER COLUMN id SET DEFAULT nextval('route.information_id_seq'::regclass);


--
-- TOC entry 3935 (class 2604 OID 100700)
-- Name: segment id; Type: DEFAULT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.segment ALTER COLUMN id SET DEFAULT nextval('route.segment_id_seq'::regclass);


--
-- TOC entry 3938 (class 2604 OID 100701)
-- Name: consumable uom_code; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3939 (class 2604 OID 100702)
-- Name: consumable rationing_qty; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.consumable ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3945 (class 2604 OID 100703)
-- Name: definition id; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.definition ALTER COLUMN id SET DEFAULT nextval('stride.definition_id_seq'::regclass);


--
-- TOC entry 3948 (class 2604 OID 100704)
-- Name: information id; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.information ALTER COLUMN id SET DEFAULT nextval('stride.information_id_seq'::regclass);


--
-- TOC entry 3953 (class 2604 OID 100705)
-- Name: primal uom_code; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3954 (class 2604 OID 100706)
-- Name: primal rationing_qty; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.primal ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3957 (class 2604 OID 100708)
-- Name: information id; Type: DEFAULT; Schema: tooling; Owner: postgres
--

ALTER TABLE ONLY tooling.information ALTER COLUMN id SET DEFAULT nextval('tooling.information_id_seq'::regclass);


--
-- TOC entry 3958 (class 2604 OID 100711)
-- Name: assignment uom_role_id; Type: DEFAULT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.assignment ALTER COLUMN uom_role_id SET DEFAULT nextval('uom.uom_role_uom_role_id_seq'::regclass);


--
-- TOC entry 4372 (class 0 OID 99957)
-- Dependencies: 245
-- Data for Name: ebom_to_mbom; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4373 (class 0 OID 99960)
-- Dependencies: 246
-- Data for Name: ebom_to_process; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4374 (class 0 OID 99963)
-- Dependencies: 247
-- Data for Name: ebom_to_product; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4375 (class 0 OID 99966)
-- Dependencies: 248
-- Data for Name: ebom_to_route; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4376 (class 0 OID 99969)
-- Dependencies: 249
-- Data for Name: mbom_to_operation; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4377 (class 0 OID 99972)
-- Dependencies: 250
-- Data for Name: mbom_to_process; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4378 (class 0 OID 99975)
-- Dependencies: 251
-- Data for Name: mbom_to_product; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4379 (class 0 OID 99978)
-- Dependencies: 252
-- Data for Name: operation_to_product; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4380 (class 0 OID 99981)
-- Dependencies: 253
-- Data for Name: route_to_mbom; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4381 (class 0 OID 99984)
-- Dependencies: 254
-- Data for Name: route_to_operation; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4383 (class 0 OID 99994)
-- Dependencies: 256
-- Data for Name: assembly; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 4384 (class 0 OID 100002)
-- Dependencies: 257
-- Data for Name: buyable; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 4382 (class 0 OID 99987)
-- Dependencies: 255
-- Data for Name: component; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 4385 (class 0 OID 100010)
-- Dependencies: 258
-- Data for Name: definition; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 4534 (class 0 OID 0)
-- Dependencies: 259
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: ebom; Owner: postgres
--

SELECT pg_catalog.setval('ebom.definition_id_seq', 12, true);


--
-- TOC entry 4387 (class 0 OID 100023)
-- Dependencies: 260
-- Data for Name: information; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 4535 (class 0 OID 0)
-- Dependencies: 261
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: ebom; Owner: postgres
--

SELECT pg_catalog.setval('ebom.information_id_seq', 12, true);


--
-- TOC entry 4389 (class 0 OID 100033)
-- Dependencies: 262
-- Data for Name: part; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 4473 (class 0 OID 101925)
-- Dependencies: 349
-- Data for Name: information; Type: TABLE DATA; Schema: equipment; Owner: postgres
--



--
-- TOC entry 4536 (class 0 OID 0)
-- Dependencies: 348
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: equipment; Owner: postgres
--

SELECT pg_catalog.setval('equipment.information_id_seq', 3, true);


--
-- TOC entry 4391 (class 0 OID 100060)
-- Dependencies: 264
-- Data for Name: area; Type: TABLE DATA; Schema: facility; Owner: postgres
--



--
-- TOC entry 4392 (class 0 OID 100070)
-- Dependencies: 265
-- Data for Name: enterprise; Type: TABLE DATA; Schema: facility; Owner: postgres
--



--
-- TOC entry 4390 (class 0 OID 100051)
-- Dependencies: 263
-- Data for Name: information; Type: TABLE DATA; Schema: facility; Owner: postgres
--



--
-- TOC entry 4537 (class 0 OID 0)
-- Dependencies: 266
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: facility; Owner: postgres
--

SELECT pg_catalog.setval('facility.information_id_seq', 1, false);


--
-- TOC entry 4394 (class 0 OID 100082)
-- Dependencies: 267
-- Data for Name: line; Type: TABLE DATA; Schema: facility; Owner: postgres
--



--
-- TOC entry 4395 (class 0 OID 100092)
-- Dependencies: 268
-- Data for Name: site; Type: TABLE DATA; Schema: facility; Owner: postgres
--



--
-- TOC entry 4396 (class 0 OID 100103)
-- Dependencies: 269
-- Data for Name: zone; Type: TABLE DATA; Schema: facility; Owner: postgres
--



--
-- TOC entry 4398 (class 0 OID 100121)
-- Dependencies: 271
-- Data for Name: assembly; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4399 (class 0 OID 100130)
-- Dependencies: 272
-- Data for Name: buyable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4397 (class 0 OID 100113)
-- Dependencies: 270
-- Data for Name: conglomeration; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4400 (class 0 OID 100139)
-- Dependencies: 273
-- Data for Name: consumable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4401 (class 0 OID 100148)
-- Dependencies: 274
-- Data for Name: definition; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4538 (class 0 OID 0)
-- Dependencies: 275
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.definition_id_seq', 12, true);


--
-- TOC entry 4403 (class 0 OID 100162)
-- Dependencies: 276
-- Data for Name: information; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4539 (class 0 OID 0)
-- Dependencies: 277
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.information_id_seq', 12, true);


--
-- TOC entry 4405 (class 0 OID 100172)
-- Dependencies: 278
-- Data for Name: measurement; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4406 (class 0 OID 100178)
-- Dependencies: 279
-- Data for Name: part; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4407 (class 0 OID 100187)
-- Dependencies: 280
-- Data for Name: phantom; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4408 (class 0 OID 100196)
-- Dependencies: 281
-- Data for Name: primal; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4409 (class 0 OID 100205)
-- Dependencies: 282
-- Data for Name: producible; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4410 (class 0 OID 100214)
-- Dependencies: 283
-- Data for Name: salable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4411 (class 0 OID 100223)
-- Dependencies: 284
-- Data for Name: storable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4413 (class 0 OID 100239)
-- Dependencies: 286
-- Data for Name: consumable; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 4414 (class 0 OID 100247)
-- Dependencies: 287
-- Data for Name: definition; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 4540 (class 0 OID 0)
-- Dependencies: 288
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: mbom; Owner: postgres
--

SELECT pg_catalog.setval('mbom.definition_id_seq', 12, true);


--
-- TOC entry 4416 (class 0 OID 100260)
-- Dependencies: 289
-- Data for Name: information; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 4541 (class 0 OID 0)
-- Dependencies: 290
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: mbom; Owner: postgres
--

SELECT pg_catalog.setval('mbom.information_id_seq', 12, true);


--
-- TOC entry 4412 (class 0 OID 100232)
-- Dependencies: 285
-- Data for Name: material; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 4418 (class 0 OID 100270)
-- Dependencies: 291
-- Data for Name: primal; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 4419 (class 0 OID 100278)
-- Dependencies: 292
-- Data for Name: information; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 4542 (class 0 OID 0)
-- Dependencies: 293
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('operation.information_id_seq', 6, true);


--
-- TOC entry 4421 (class 0 OID 100288)
-- Dependencies: 294
-- Data for Name: information; Type: TABLE DATA; Schema: personnel; Owner: postgres
--



--
-- TOC entry 4543 (class 0 OID 0)
-- Dependencies: 295
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: personnel; Owner: postgres
--

SELECT pg_catalog.setval('personnel.information_id_seq', 6, true);


--
-- TOC entry 4424 (class 0 OID 100306)
-- Dependencies: 297
-- Data for Name: consumable; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4425 (class 0 OID 100314)
-- Dependencies: 298
-- Data for Name: definition; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4544 (class 0 OID 0)
-- Dependencies: 299
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('process.definition_id_seq', 12, true);


--
-- TOC entry 4427 (class 0 OID 100327)
-- Dependencies: 300
-- Data for Name: dependency; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4428 (class 0 OID 100331)
-- Dependencies: 301
-- Data for Name: equipment; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4429 (class 0 OID 100337)
-- Dependencies: 302
-- Data for Name: information; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4545 (class 0 OID 0)
-- Dependencies: 303
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('process.information_id_seq', 12, true);


--
-- TOC entry 4423 (class 0 OID 100298)
-- Dependencies: 296
-- Data for Name: material; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4431 (class 0 OID 100347)
-- Dependencies: 304
-- Data for Name: personnel; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4432 (class 0 OID 100357)
-- Dependencies: 305
-- Data for Name: primal; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4433 (class 0 OID 100365)
-- Dependencies: 306
-- Data for Name: segment; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4546 (class 0 OID 0)
-- Dependencies: 307
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('process.segment_id_seq', 54, true);


--
-- TOC entry 4435 (class 0 OID 100373)
-- Dependencies: 308
-- Data for Name: tooling; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4437 (class 0 OID 100387)
-- Dependencies: 310
-- Data for Name: consumable; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4438 (class 0 OID 100396)
-- Dependencies: 311
-- Data for Name: definition; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4547 (class 0 OID 0)
-- Dependencies: 312
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('product.definition_id_seq', 1, false);


--
-- TOC entry 4440 (class 0 OID 100409)
-- Dependencies: 313
-- Data for Name: dependency; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4441 (class 0 OID 100413)
-- Dependencies: 314
-- Data for Name: equipment; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4442 (class 0 OID 100419)
-- Dependencies: 315
-- Data for Name: information; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4548 (class 0 OID 0)
-- Dependencies: 316
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('product.information_id_seq', 1, false);


--
-- TOC entry 4436 (class 0 OID 100379)
-- Dependencies: 309
-- Data for Name: material; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4444 (class 0 OID 100429)
-- Dependencies: 317
-- Data for Name: personnel; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4445 (class 0 OID 100439)
-- Dependencies: 318
-- Data for Name: primal; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4446 (class 0 OID 100448)
-- Dependencies: 319
-- Data for Name: segment; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4549 (class 0 OID 0)
-- Dependencies: 320
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('product.segment_id_seq', 1, false);


--
-- TOC entry 4448 (class 0 OID 100457)
-- Dependencies: 321
-- Data for Name: tooling; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4449 (class 0 OID 100463)
-- Dependencies: 322
-- Data for Name: definition; Type: TABLE DATA; Schema: route; Owner: postgres
--



--
-- TOC entry 4550 (class 0 OID 0)
-- Dependencies: 323
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: route; Owner: postgres
--

SELECT pg_catalog.setval('route.definition_id_seq', 1, false);


--
-- TOC entry 4451 (class 0 OID 100476)
-- Dependencies: 324
-- Data for Name: information; Type: TABLE DATA; Schema: route; Owner: postgres
--



--
-- TOC entry 4551 (class 0 OID 0)
-- Dependencies: 325
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: route; Owner: postgres
--

SELECT pg_catalog.setval('route.information_id_seq', 1, false);


--
-- TOC entry 4453 (class 0 OID 100486)
-- Dependencies: 326
-- Data for Name: segment; Type: TABLE DATA; Schema: route; Owner: postgres
--



--
-- TOC entry 4552 (class 0 OID 0)
-- Dependencies: 327
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: route; Owner: postgres
--

SELECT pg_catalog.setval('route.segment_id_seq', 1, false);


--
-- TOC entry 4456 (class 0 OID 100502)
-- Dependencies: 329
-- Data for Name: consumable; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 4457 (class 0 OID 100510)
-- Dependencies: 330
-- Data for Name: definition; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 4553 (class 0 OID 0)
-- Dependencies: 331
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: stride; Owner: postgres
--

SELECT pg_catalog.setval('stride.definition_id_seq', 1, false);


--
-- TOC entry 4459 (class 0 OID 100523)
-- Dependencies: 332
-- Data for Name: descendant; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 4460 (class 0 OID 100529)
-- Dependencies: 333
-- Data for Name: equipment; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 4461 (class 0 OID 100535)
-- Dependencies: 334
-- Data for Name: information; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 4554 (class 0 OID 0)
-- Dependencies: 335
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: stride; Owner: postgres
--

SELECT pg_catalog.setval('stride.information_id_seq', 1, false);


--
-- TOC entry 4463 (class 0 OID 100545)
-- Dependencies: 336
-- Data for Name: location; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 4455 (class 0 OID 100494)
-- Dependencies: 328
-- Data for Name: material; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 4464 (class 0 OID 100551)
-- Dependencies: 337
-- Data for Name: personnel; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 4465 (class 0 OID 100561)
-- Dependencies: 338
-- Data for Name: primal; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 4466 (class 0 OID 100569)
-- Dependencies: 339
-- Data for Name: tooling; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 4467 (class 0 OID 100599)
-- Dependencies: 343
-- Data for Name: information; Type: TABLE DATA; Schema: tooling; Owner: postgres
--



--
-- TOC entry 4555 (class 0 OID 0)
-- Dependencies: 344
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: tooling; Owner: postgres
--

SELECT pg_catalog.setval('tooling.information_id_seq', 6, true);


--
-- TOC entry 4469 (class 0 OID 100619)
-- Dependencies: 345
-- Data for Name: assignment; Type: TABLE DATA; Schema: uom; Owner: postgres
--



--
-- TOC entry 4470 (class 0 OID 100622)
-- Dependencies: 346
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
-- TOC entry 4556 (class 0 OID 0)
-- Dependencies: 347
-- Name: uom_role_uom_role_id_seq; Type: SEQUENCE SET; Schema: uom; Owner: postgres
--

SELECT pg_catalog.setval('uom.uom_role_uom_role_id_seq', 1, false);


--
-- TOC entry 3963 (class 2606 OID 100713)
-- Name: ebom_to_mbom ebom_to_mbom_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.ebom_to_mbom
    ADD CONSTRAINT ebom_to_mbom_pkey PRIMARY KEY (ebom_id, mbom_id);


--
-- TOC entry 3965 (class 2606 OID 100715)
-- Name: ebom_to_process ebom_to_process_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.ebom_to_process
    ADD CONSTRAINT ebom_to_process_pkey PRIMARY KEY (ebom_id, process_id);


--
-- TOC entry 3967 (class 2606 OID 100717)
-- Name: ebom_to_product ebom_to_product_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.ebom_to_product
    ADD CONSTRAINT ebom_to_product_pkey PRIMARY KEY (ebom_id, product_id);


--
-- TOC entry 3969 (class 2606 OID 100719)
-- Name: ebom_to_route ebom_to_route_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.ebom_to_route
    ADD CONSTRAINT ebom_to_route_pkey PRIMARY KEY (ebom_id, route_id);


--
-- TOC entry 3971 (class 2606 OID 100721)
-- Name: mbom_to_operation mbom_to_operation_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.mbom_to_operation
    ADD CONSTRAINT mbom_to_operation_pkey PRIMARY KEY (mbom_id, operation_id);


--
-- TOC entry 3973 (class 2606 OID 100723)
-- Name: mbom_to_process mbom_to_process_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.mbom_to_process
    ADD CONSTRAINT mbom_to_process_pkey PRIMARY KEY (mbom_id, process_id);


--
-- TOC entry 3975 (class 2606 OID 100725)
-- Name: mbom_to_product mbom_to_product_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.mbom_to_product
    ADD CONSTRAINT mbom_to_product_pkey PRIMARY KEY (mbom_id, product_id);


--
-- TOC entry 3977 (class 2606 OID 100727)
-- Name: operation_to_product operation_to_product_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.operation_to_product
    ADD CONSTRAINT operation_to_product_pkey PRIMARY KEY (operation_id, product_id);


--
-- TOC entry 3979 (class 2606 OID 100729)
-- Name: route_to_mbom route_to_mbom_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.route_to_mbom
    ADD CONSTRAINT route_to_mbom_pkey PRIMARY KEY (route_id, mbom_id);


--
-- TOC entry 3981 (class 2606 OID 100731)
-- Name: route_to_operation route_to_operation_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.route_to_operation
    ADD CONSTRAINT route_to_operation_pkey PRIMARY KEY (route_id, operation_id);


--
-- TOC entry 3985 (class 2606 OID 100733)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3987 (class 2606 OID 100735)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3983 (class 2606 OID 100737)
-- Name: component component_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.component
    ADD CONSTRAINT component_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3989 (class 2606 OID 100739)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 3991 (class 2606 OID 100741)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 3993 (class 2606 OID 100743)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3995 (class 2606 OID 100745)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 3997 (class 2606 OID 100747)
-- Name: information information_part_code_version_num_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information
    ADD CONSTRAINT information_part_code_version_num_key UNIQUE (part_code, version_num);


--
-- TOC entry 3999 (class 2606 OID 100749)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4001 (class 2606 OID 100751)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.part
    ADD CONSTRAINT part_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4179 (class 2606 OID 101937)
-- Name: information information_equipment_code_version_num_key; Type: CONSTRAINT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY equipment.information
    ADD CONSTRAINT information_equipment_code_version_num_key UNIQUE (equipment_code, version_num);


--
-- TOC entry 4181 (class 2606 OID 101939)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY equipment.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 4183 (class 2606 OID 101935)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY equipment.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4005 (class 2606 OID 100759)
-- Name: area area_facility_code_key; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area
    ADD CONSTRAINT area_facility_code_key UNIQUE (facility_code);


--
-- TOC entry 4007 (class 2606 OID 100761)
-- Name: area area_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area
    ADD CONSTRAINT area_pkey PRIMARY KEY (id);


--
-- TOC entry 4009 (class 2606 OID 100763)
-- Name: enterprise enterprise_facility_code_key; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.enterprise
    ADD CONSTRAINT enterprise_facility_code_key UNIQUE (facility_code);


--
-- TOC entry 4011 (class 2606 OID 100765)
-- Name: enterprise enterprise_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.enterprise
    ADD CONSTRAINT enterprise_pkey PRIMARY KEY (id);


--
-- TOC entry 4003 (class 2606 OID 100767)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4013 (class 2606 OID 100769)
-- Name: line line_facility_code_key; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line
    ADD CONSTRAINT line_facility_code_key UNIQUE (facility_code);


--
-- TOC entry 4015 (class 2606 OID 100771)
-- Name: line line_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line
    ADD CONSTRAINT line_pkey PRIMARY KEY (id);


--
-- TOC entry 4017 (class 2606 OID 100773)
-- Name: site site_facility_code_key; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site
    ADD CONSTRAINT site_facility_code_key UNIQUE (facility_code);


--
-- TOC entry 4019 (class 2606 OID 100775)
-- Name: site site_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site
    ADD CONSTRAINT site_pkey PRIMARY KEY (id);


--
-- TOC entry 4021 (class 2606 OID 100777)
-- Name: zone zone_facility_code_key; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone
    ADD CONSTRAINT zone_facility_code_key UNIQUE (facility_code);


--
-- TOC entry 4023 (class 2606 OID 100779)
-- Name: zone zone_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone
    ADD CONSTRAINT zone_pkey PRIMARY KEY (id);


--
-- TOC entry 4027 (class 2606 OID 100781)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4029 (class 2606 OID 100783)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4025 (class 2606 OID 100785)
-- Name: conglomeration conglomeration_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.conglomeration
    ADD CONSTRAINT conglomeration_pkey PRIMARY KEY (part_code, version_num, inventory_type);


--
-- TOC entry 4031 (class 2606 OID 100787)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4033 (class 2606 OID 100789)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 4035 (class 2606 OID 100791)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 4037 (class 2606 OID 100793)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4039 (class 2606 OID 100795)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 4041 (class 2606 OID 100797)
-- Name: information information_part_code; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.information
    ADD CONSTRAINT information_part_code UNIQUE (part_code);


--
-- TOC entry 4043 (class 2606 OID 100799)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4045 (class 2606 OID 100801)
-- Name: measurement measurement_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.measurement
    ADD CONSTRAINT measurement_pkey PRIMARY KEY (definition_id, uom_code);


--
-- TOC entry 4047 (class 2606 OID 100803)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.part
    ADD CONSTRAINT part_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4049 (class 2606 OID 100805)
-- Name: phantom phantom_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.phantom
    ADD CONSTRAINT phantom_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4051 (class 2606 OID 100807)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4053 (class 2606 OID 100809)
-- Name: producible producible_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.producible
    ADD CONSTRAINT producible_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4055 (class 2606 OID 100811)
-- Name: salable salable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.salable
    ADD CONSTRAINT salable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4057 (class 2606 OID 100813)
-- Name: storable storable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.storable
    ADD CONSTRAINT storable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4061 (class 2606 OID 100815)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4063 (class 2606 OID 100817)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 4065 (class 2606 OID 100819)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 4067 (class 2606 OID 100821)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4069 (class 2606 OID 100823)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4059 (class 2606 OID 100825)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4071 (class 2606 OID 100827)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4073 (class 2606 OID 100829)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 4075 (class 2606 OID 100831)
-- Name: information information_operation_code_version_num_key; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.information
    ADD CONSTRAINT information_operation_code_version_num_key UNIQUE (operation_code, version_num);


--
-- TOC entry 4077 (class 2606 OID 100833)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4079 (class 2606 OID 100835)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY personnel.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 4081 (class 2606 OID 100837)
-- Name: information information_personnel_code_version_num_key; Type: CONSTRAINT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY personnel.information
    ADD CONSTRAINT information_personnel_code_version_num_key UNIQUE (personnel_code, version_num);


--
-- TOC entry 4083 (class 2606 OID 100839)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY personnel.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4087 (class 2606 OID 100841)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4089 (class 2606 OID 100843)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4091 (class 2606 OID 100845)
-- Name: definition definition_version_num_information_id_key; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.definition
    ADD CONSTRAINT definition_version_num_information_id_key UNIQUE (version_num, information_id);


--
-- TOC entry 4093 (class 2606 OID 100847)
-- Name: dependency dependency_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.dependency
    ADD CONSTRAINT dependency_pkey PRIMARY KEY (ancestor, descendant);


--
-- TOC entry 4095 (class 2606 OID 100849)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, equipment_code);


--
-- TOC entry 4097 (class 2606 OID 100851)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4085 (class 2606 OID 100853)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4099 (class 2606 OID 100855)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, personnel_code);


--
-- TOC entry 4101 (class 2606 OID 100857)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4103 (class 2606 OID 100859)
-- Name: segment segment_definition_id_operation_code_key; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.segment
    ADD CONSTRAINT segment_definition_id_operation_code_key UNIQUE (definition_id, operation_code);


--
-- TOC entry 4105 (class 2606 OID 100861)
-- Name: segment segment_gid_key; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.segment
    ADD CONSTRAINT segment_gid_key UNIQUE (gid);


--
-- TOC entry 4107 (class 2606 OID 100863)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 4109 (class 2606 OID 100865)
-- Name: tooling tooling_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.tooling
    ADD CONSTRAINT tooling_pkey PRIMARY KEY (segment_id, tooling_code);


--
-- TOC entry 4113 (class 2606 OID 100867)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4115 (class 2606 OID 100869)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4117 (class 2606 OID 100871)
-- Name: definition definition_version_num_information_id_key; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.definition
    ADD CONSTRAINT definition_version_num_information_id_key UNIQUE (version_num, information_id);


--
-- TOC entry 4119 (class 2606 OID 100873)
-- Name: dependency dependency_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.dependency
    ADD CONSTRAINT dependency_pkey PRIMARY KEY (ancestor, descendant);


--
-- TOC entry 4121 (class 2606 OID 100875)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, equipment_code);


--
-- TOC entry 4123 (class 2606 OID 100877)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4111 (class 2606 OID 100879)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4125 (class 2606 OID 100881)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, personnel_code);


--
-- TOC entry 4127 (class 2606 OID 100883)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4129 (class 2606 OID 100885)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 4131 (class 2606 OID 100887)
-- Name: tooling tooling_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.tooling
    ADD CONSTRAINT tooling_pkey PRIMARY KEY (segment_id, tooling_code);


--
-- TOC entry 4133 (class 2606 OID 100889)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 4135 (class 2606 OID 100891)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 4137 (class 2606 OID 100893)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4139 (class 2606 OID 100895)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4141 (class 2606 OID 100897)
-- Name: segment segment_definition_key; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.segment
    ADD CONSTRAINT segment_definition_key UNIQUE (descendant_part_code, descendant_version_num, descendant_process_num, descendant_segment_num, ancestor_part_code, ancestor_version_num, ancestor_process_num, ancestor_segment_num);


--
-- TOC entry 4143 (class 2606 OID 100899)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 4147 (class 2606 OID 100901)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 4149 (class 2606 OID 100903)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4151 (class 2606 OID 100905)
-- Name: definition definition_version_num_information_id_key; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.definition
    ADD CONSTRAINT definition_version_num_information_id_key UNIQUE (version_num, information_id);


--
-- TOC entry 4153 (class 2606 OID 100907)
-- Name: descendant descendant_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.descendant
    ADD CONSTRAINT descendant_pkey PRIMARY KEY (definition_id);


--
-- TOC entry 4155 (class 2606 OID 100909)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (information_id, equipment_code);


--
-- TOC entry 4157 (class 2606 OID 100911)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4159 (class 2606 OID 100913)
-- Name: location location_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.location
    ADD CONSTRAINT location_pkey PRIMARY KEY (definition_id, location_code);


--
-- TOC entry 4145 (class 2606 OID 100915)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 4161 (class 2606 OID 100917)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (information_id, personnel_code);


--
-- TOC entry 4163 (class 2606 OID 100919)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 4165 (class 2606 OID 100921)
-- Name: tooling tooling_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.tooling
    ADD CONSTRAINT tooling_pkey PRIMARY KEY (information_id, tooling_code);


--
-- TOC entry 4167 (class 2606 OID 100925)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: tooling; Owner: postgres
--

ALTER TABLE ONLY tooling.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 4169 (class 2606 OID 100927)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: tooling; Owner: postgres
--

ALTER TABLE ONLY tooling.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4171 (class 2606 OID 100929)
-- Name: information information_tooling_code_version_num_key; Type: CONSTRAINT; Schema: tooling; Owner: postgres
--

ALTER TABLE ONLY tooling.information
    ADD CONSTRAINT information_tooling_code_version_num_key UNIQUE (tooling_code, version_num);


--
-- TOC entry 4177 (class 2606 OID 100935)
-- Name: information uom_pkey; Type: CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.information
    ADD CONSTRAINT uom_pkey PRIMARY KEY (uom_code);


--
-- TOC entry 4173 (class 2606 OID 100937)
-- Name: assignment uom_role_pkey; Type: CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.assignment
    ADD CONSTRAINT uom_role_pkey PRIMARY KEY (uom_role_id);


--
-- TOC entry 4175 (class 2606 OID 100939)
-- Name: assignment uom_role_uom_role_code_key; Type: CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.assignment
    ADD CONSTRAINT uom_role_uom_role_code_key UNIQUE (uom_role_code);


--
-- TOC entry 4251 (class 2620 OID 100940)
-- Name: definition set_prev_doc_fsmt; Type: TRIGGER; Schema: ebom; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON ebom.definition FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 4184 (class 2606 OID 100941)
-- Name: assembly assembly_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.assembly
    ADD CONSTRAINT assembly_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES ebom.definition(id);


--
-- TOC entry 4185 (class 2606 OID 100946)
-- Name: assembly assembly_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.assembly
    ADD CONSTRAINT assembly_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.assembly(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4186 (class 2606 OID 100951)
-- Name: buyable buyable_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.buyable
    ADD CONSTRAINT buyable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES ebom.definition(id);


--
-- TOC entry 4187 (class 2606 OID 100956)
-- Name: buyable buyable_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.buyable
    ADD CONSTRAINT buyable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.buyable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4188 (class 2606 OID 100961)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES ebom.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4189 (class 2606 OID 100966)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.assembly(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4190 (class 2606 OID 100971)
-- Name: part part_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.part
    ADD CONSTRAINT part_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES ebom.definition(id);


--
-- TOC entry 4191 (class 2606 OID 100976)
-- Name: part part_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.part
    ADD CONSTRAINT part_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.part(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4192 (class 2606 OID 100981)
-- Name: area area_parent_facility_code_fkey; Type: FK CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area
    ADD CONSTRAINT area_parent_facility_code_fkey FOREIGN KEY (parent_facility_code) REFERENCES facility.site(facility_code) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4193 (class 2606 OID 100986)
-- Name: line line_parent_facility_code_fkey; Type: FK CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line
    ADD CONSTRAINT line_parent_facility_code_fkey FOREIGN KEY (parent_facility_code) REFERENCES facility.area(facility_code) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4194 (class 2606 OID 100991)
-- Name: site site_parent_facility_code_fkey; Type: FK CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site
    ADD CONSTRAINT site_parent_facility_code_fkey FOREIGN KEY (parent_facility_code) REFERENCES facility.enterprise(facility_code) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4195 (class 2606 OID 100996)
-- Name: zone zone_parent_facility_code_fkey; Type: FK CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone
    ADD CONSTRAINT zone_parent_facility_code_fkey FOREIGN KEY (parent_facility_code) REFERENCES facility.area(facility_code);


--
-- TOC entry 4196 (class 2606 OID 101001)
-- Name: assembly assembly_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.assembly
    ADD CONSTRAINT assembly_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4197 (class 2606 OID 101006)
-- Name: buyable buyable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.buyable
    ADD CONSTRAINT buyable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4198 (class 2606 OID 101011)
-- Name: consumable consumable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.consumable
    ADD CONSTRAINT consumable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4199 (class 2606 OID 101016)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES inventory.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4200 (class 2606 OID 101021)
-- Name: measurement measurement_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.measurement
    ADD CONSTRAINT measurement_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4201 (class 2606 OID 101026)
-- Name: part part_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.part
    ADD CONSTRAINT part_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4202 (class 2606 OID 101031)
-- Name: phantom phantom_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.phantom
    ADD CONSTRAINT phantom_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4203 (class 2606 OID 101036)
-- Name: primal primal_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.primal
    ADD CONSTRAINT primal_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4204 (class 2606 OID 101041)
-- Name: producible producible_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.producible
    ADD CONSTRAINT producible_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4205 (class 2606 OID 101046)
-- Name: salable salable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.salable
    ADD CONSTRAINT salable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4206 (class 2606 OID 101051)
-- Name: storable storable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.storable
    ADD CONSTRAINT storable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4207 (class 2606 OID 101056)
-- Name: consumable consumable_definition_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.consumable
    ADD CONSTRAINT consumable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES mbom.definition(id);


--
-- TOC entry 4208 (class 2606 OID 101061)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4209 (class 2606 OID 101066)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES mbom.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4210 (class 2606 OID 101071)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4211 (class 2606 OID 101076)
-- Name: primal primal_definition_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.primal
    ADD CONSTRAINT primal_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES mbom.definition(id);


--
-- TOC entry 4212 (class 2606 OID 101081)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4213 (class 2606 OID 101086)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4214 (class 2606 OID 101091)
-- Name: consumable consumable_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.consumable
    ADD CONSTRAINT consumable_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4215 (class 2606 OID 101096)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES process.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4216 (class 2606 OID 101101)
-- Name: dependency dependency_ancestor_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.dependency
    ADD CONSTRAINT dependency_ancestor_fkey FOREIGN KEY (ancestor) REFERENCES process.segment(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4217 (class 2606 OID 101106)
-- Name: dependency dependency_descendant_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.dependency
    ADD CONSTRAINT dependency_descendant_fkey FOREIGN KEY (descendant) REFERENCES process.segment(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4218 (class 2606 OID 101111)
-- Name: equipment equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4219 (class 2606 OID 101116)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4220 (class 2606 OID 101121)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4221 (class 2606 OID 101126)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4222 (class 2606 OID 101131)
-- Name: primal primal_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.primal
    ADD CONSTRAINT primal_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4223 (class 2606 OID 101136)
-- Name: segment segment_definition_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.segment
    ADD CONSTRAINT segment_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES process.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4224 (class 2606 OID 101141)
-- Name: tooling tooling_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.tooling
    ADD CONSTRAINT tooling_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4225 (class 2606 OID 101146)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4226 (class 2606 OID 101151)
-- Name: consumable consumable_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.consumable
    ADD CONSTRAINT consumable_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES product.segment(id);


--
-- TOC entry 4227 (class 2606 OID 101156)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES product.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4228 (class 2606 OID 101161)
-- Name: dependency dependency_ancestor_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.dependency
    ADD CONSTRAINT dependency_ancestor_fkey FOREIGN KEY (ancestor) REFERENCES product.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4229 (class 2606 OID 101166)
-- Name: dependency dependency_descendant_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.dependency
    ADD CONSTRAINT dependency_descendant_fkey FOREIGN KEY (descendant) REFERENCES product.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4230 (class 2606 OID 101171)
-- Name: equipment equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES product.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4231 (class 2606 OID 101176)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.salable(part_code, version_num);


--
-- TOC entry 4232 (class 2606 OID 101181)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES product.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4233 (class 2606 OID 101186)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4234 (class 2606 OID 101191)
-- Name: primal primal_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.primal
    ADD CONSTRAINT primal_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES product.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4235 (class 2606 OID 101196)
-- Name: segment segment_definition_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.segment
    ADD CONSTRAINT segment_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES product.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4236 (class 2606 OID 101201)
-- Name: tooling tooling_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.tooling
    ADD CONSTRAINT tooling_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES product.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4237 (class 2606 OID 101206)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES route.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4238 (class 2606 OID 101211)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4239 (class 2606 OID 101216)
-- Name: consumable consumable_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.consumable
    ADD CONSTRAINT consumable_information_id_fkey FOREIGN KEY (information_id) REFERENCES stride.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4240 (class 2606 OID 101221)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4241 (class 2606 OID 101226)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES stride.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4242 (class 2606 OID 101231)
-- Name: descendant descendant_definition_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.descendant
    ADD CONSTRAINT descendant_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES stride.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4243 (class 2606 OID 101236)
-- Name: equipment equipment_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.equipment
    ADD CONSTRAINT equipment_information_id_fkey FOREIGN KEY (information_id) REFERENCES stride.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4244 (class 2606 OID 101241)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4245 (class 2606 OID 101246)
-- Name: location location_definition_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.location
    ADD CONSTRAINT location_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES stride.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4246 (class 2606 OID 101251)
-- Name: personnel personnel_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.personnel
    ADD CONSTRAINT personnel_information_id_fkey FOREIGN KEY (information_id) REFERENCES stride.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4247 (class 2606 OID 101256)
-- Name: primal primal_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.primal
    ADD CONSTRAINT primal_information_id_fkey FOREIGN KEY (information_id) REFERENCES stride.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4248 (class 2606 OID 101261)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4249 (class 2606 OID 101266)
-- Name: tooling tooling_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.tooling
    ADD CONSTRAINT tooling_information_id_fkey FOREIGN KEY (information_id) REFERENCES stride.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4250 (class 2606 OID 101271)
-- Name: information uom_base_uom_code_fkey; Type: FK CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.information
    ADD CONSTRAINT uom_base_uom_code_fkey FOREIGN KEY (base_uom_code) REFERENCES uom.information(uom_code);


-- Completed on 2018-06-23 01:07:49 EEST

--
-- PostgreSQL database dump complete
--

