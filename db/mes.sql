--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.7
-- Dumped by pg_dump version 9.6.7

-- Started on 2018-07-04 18:50:01 EEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 11 (class 2615 OID 374353)
-- Name: assignement; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA assignement;


ALTER SCHEMA assignement OWNER TO postgres;

--
-- TOC entry 28 (class 2615 OID 374354)
-- Name: binding; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA binding;


ALTER SCHEMA binding OWNER TO postgres;

--
-- TOC entry 22 (class 2615 OID 374355)
-- Name: common; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA common;


ALTER SCHEMA common OWNER TO postgres;

--
-- TOC entry 10 (class 2615 OID 374356)
-- Name: ebom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ebom;


ALTER SCHEMA ebom OWNER TO postgres;

--
-- TOC entry 3746 (class 0 OID 0)
-- Dependencies: 10
-- Name: SCHEMA ebom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA ebom IS 'engenering bill of materials';


--
-- TOC entry 15 (class 2615 OID 374357)
-- Name: equipment; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA equipment;


ALTER SCHEMA equipment OWNER TO postgres;

--
-- TOC entry 16 (class 2615 OID 374358)
-- Name: facility; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA facility;


ALTER SCHEMA facility OWNER TO postgres;

--
-- TOC entry 30 (class 2615 OID 374359)
-- Name: inventory; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA inventory;


ALTER SCHEMA inventory OWNER TO postgres;

--
-- TOC entry 3747 (class 0 OID 0)
-- Dependencies: 30
-- Name: SCHEMA inventory; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA inventory IS 'inventory items definition';


--
-- TOC entry 32 (class 2615 OID 374360)
-- Name: mbom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA mbom;


ALTER SCHEMA mbom OWNER TO postgres;

--
-- TOC entry 3748 (class 0 OID 0)
-- Dependencies: 32
-- Name: SCHEMA mbom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA mbom IS 'manufacturing bill of materials';


--
-- TOC entry 13 (class 2615 OID 374361)
-- Name: operation; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA operation;


ALTER SCHEMA operation OWNER TO postgres;

--
-- TOC entry 27 (class 2615 OID 374362)
-- Name: personnel; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA personnel;


ALTER SCHEMA personnel OWNER TO postgres;

--
-- TOC entry 17 (class 2615 OID 374363)
-- Name: pgunit; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA pgunit;


ALTER SCHEMA pgunit OWNER TO postgres;

--
-- TOC entry 26 (class 2615 OID 374364)
-- Name: process; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA process;


ALTER SCHEMA process OWNER TO postgres;

--
-- TOC entry 3749 (class 0 OID 0)
-- Dependencies: 26
-- Name: SCHEMA process; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA process IS 'production processes';


--
-- TOC entry 25 (class 2615 OID 374365)
-- Name: product; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA product;


ALTER SCHEMA product OWNER TO postgres;

--
-- TOC entry 3750 (class 0 OID 0)
-- Dependencies: 25
-- Name: SCHEMA product; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA product IS 'process segments';


--
-- TOC entry 29 (class 2615 OID 374366)
-- Name: report; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA report;


ALTER SCHEMA report OWNER TO postgres;

--
-- TOC entry 21 (class 2615 OID 374367)
-- Name: request; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA request;


ALTER SCHEMA request OWNER TO postgres;

--
-- TOC entry 31 (class 2615 OID 374368)
-- Name: response; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA response;


ALTER SCHEMA response OWNER TO postgres;

--
-- TOC entry 12 (class 2615 OID 374369)
-- Name: route; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA route;


ALTER SCHEMA route OWNER TO postgres;

--
-- TOC entry 3752 (class 0 OID 0)
-- Dependencies: 12
-- Name: SCHEMA route; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA route IS 'material routing';


--
-- TOC entry 20 (class 2615 OID 374370)
-- Name: schedule; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA schedule;


ALTER SCHEMA schedule OWNER TO postgres;

--
-- TOC entry 14 (class 2615 OID 374371)
-- Name: stride; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA stride;


ALTER SCHEMA stride OWNER TO postgres;

--
-- TOC entry 3753 (class 0 OID 0)
-- Dependencies: 14
-- Name: SCHEMA stride; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA stride IS 'operation segments';


--
-- TOC entry 8 (class 2615 OID 374372)
-- Name: tests; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tests;


ALTER SCHEMA tests OWNER TO postgres;

--
-- TOC entry 24 (class 2615 OID 374373)
-- Name: tooling; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tooling;


ALTER SCHEMA tooling OWNER TO postgres;

--
-- TOC entry 23 (class 2615 OID 374374)
-- Name: uom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA uom;


ALTER SCHEMA uom OWNER TO postgres;

--
-- TOC entry 1 (class 3079 OID 12393)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3754 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 4 (class 3079 OID 374375)
-- Name: pldbgapi; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pldbgapi WITH SCHEMA public;


--
-- TOC entry 3755 (class 0 OID 0)
-- Dependencies: 4
-- Name: EXTENSION pldbgapi; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pldbgapi IS 'server-side support for debugging PL/pgSQL functions';


--
-- TOC entry 3 (class 3079 OID 374412)
-- Name: plpgsql_check; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql_check WITH SCHEMA public;


--
-- TOC entry 3756 (class 0 OID 0)
-- Dependencies: 3
-- Name: EXTENSION plpgsql_check; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql_check IS 'extended check for plpgsql functions';


--
-- TOC entry 2 (class 3079 OID 374417)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- TOC entry 3757 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET search_path = common, pg_catalog;

--
-- TOC entry 990 (class 1247 OID 374429)
-- Name: component_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE component_kind AS ENUM (
    'ASSEMBLY',
    'PART',
    'BUYABLE'
);


ALTER TYPE component_kind OWNER TO postgres;

--
-- TOC entry 993 (class 1247 OID 374435)
-- Name: quantity; Type: DOMAIN; Schema: common; Owner: postgres
--

CREATE DOMAIN quantity AS numeric(20,4) DEFAULT 0
	CONSTRAINT quantity_is_positive CHECK ((VALUE >= (0)::numeric));


ALTER DOMAIN quantity OWNER TO postgres;

--
-- TOC entry 3758 (class 0 OID 0)
-- Dependencies: 993
-- Name: DOMAIN quantity; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON DOMAIN quantity IS 'quantity domain';


--
-- TOC entry 995 (class 1247 OID 374439)
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
-- TOC entry 998 (class 1247 OID 374441)
-- Name: material_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE material_kind AS ENUM (
    'CONSUMABLE',
    'PRODUCIBLE',
    'PRIMAL'
);


ALTER TYPE material_kind OWNER TO postgres;

--
-- TOC entry 1001 (class 1247 OID 374449)
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
-- TOC entry 1004 (class 1247 OID 374452)
-- Name: dependency_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE dependency_specification AS (
	ancestor uuid,
	descendant uuid,
	depth integer
);


ALTER TYPE dependency_specification OWNER TO postgres;

--
-- TOC entry 1007 (class 1247 OID 374454)
-- Name: document_fsmt; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE document_fsmt AS ENUM (
    'PROPOSED',
    'COMMITTED',
    'DECOMMITTED'
);


ALTER TYPE document_fsmt OWNER TO postgres;

--
-- TOC entry 1010 (class 1247 OID 374462)
-- Name: document_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE document_kind AS ENUM (
    'EBOM',
    'MBOM',
    'OPERATION',
    'PRODUCTION',
    'PRODUCT',
    'PROCESS',
    'REQUEST',
    'RESPONSE',
    'ROUTE',
    'STRIDE',
    'INVENTORY'
);


ALTER TYPE document_kind OWNER TO postgres;

--
-- TOC entry 1013 (class 1247 OID 374487)
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
-- TOC entry 1016 (class 1247 OID 374490)
-- Name: ebom_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE ebom_document AS (
	head ebom_head,
	body component_specification[]
);


ALTER TYPE ebom_document OWNER TO postgres;

--
-- TOC entry 1025 (class 1247 OID 374499)
-- Name: equipment_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE equipment_head AS (
	document_id bigint,
	gid uuid,
	equipment_code character varying,
	version_num integer,
	display_name character varying,
	document_date date,
	equipment_type character varying
);


ALTER TYPE equipment_head OWNER TO postgres;

--
-- TOC entry 1028 (class 1247 OID 374502)
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
-- TOC entry 1031 (class 1247 OID 374504)
-- Name: facility_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE facility_kind AS ENUM (
    'ENTERPRISE',
    'SITE',
    'AREA',
    'LINE',
    'ZONE'
);


ALTER TYPE facility_kind OWNER TO postgres;

--
-- TOC entry 1034 (class 1247 OID 374517)
-- Name: facility_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE facility_head AS (
	document_id bigint,
	gid uuid,
	facility_code character varying,
	version_num integer,
	display_name character varying,
	document_date date,
	parent_facility_code character varying,
	facility_type facility_kind
);


ALTER TYPE facility_head OWNER TO postgres;

--
-- TOC entry 1037 (class 1247 OID 374520)
-- Name: facility_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE facility_specification AS (
	facility_code character varying,
	version_num integer,
	facility_type facility_kind
);


ALTER TYPE facility_specification OWNER TO postgres;

--
-- TOC entry 1040 (class 1247 OID 374523)
-- Name: inventory_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE inventory_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	part_code character varying,
	version_num integer,
	document_date date,
	uom_code character varying,
	curr_fsmt document_fsmt,
	document_type document_kind
);


ALTER TYPE inventory_head OWNER TO postgres;

--
-- TOC entry 1043 (class 1247 OID 374525)
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
    'STORABLE',
    'PHANTOM'
);


ALTER TYPE inventory_kind OWNER TO postgres;

--
-- TOC entry 1046 (class 1247 OID 374545)
-- Name: unit_conversion_type; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE unit_conversion_type AS (
	uom_code_from character varying,
	uom_code_to character varying,
	factor numeric
);


ALTER TYPE unit_conversion_type OWNER TO postgres;

--
-- TOC entry 1049 (class 1247 OID 374548)
-- Name: inventory_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE inventory_document AS (
	head inventory_head,
	meas unit_conversion_type[],
	kind inventory_kind[]
);


ALTER TYPE inventory_document OWNER TO postgres;

--
-- TOC entry 1052 (class 1247 OID 374551)
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
-- TOC entry 1055 (class 1247 OID 374554)
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
-- TOC entry 1058 (class 1247 OID 374557)
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
-- TOC entry 1061 (class 1247 OID 374560)
-- Name: mbom_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE mbom_document AS (
	head mbom_head,
	body material_specification[]
);


ALTER TYPE mbom_document OWNER TO postgres;

--
-- TOC entry 1064 (class 1247 OID 374563)
-- Name: operation_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE operation_head AS (
	document_id bigint,
	gid uuid,
	operation_code character varying,
	version_num integer,
	display_name character varying,
	document_date date,
	operation_type character varying
);


ALTER TYPE operation_head OWNER TO postgres;

--
-- TOC entry 1067 (class 1247 OID 374566)
-- Name: personnel_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE personnel_head AS (
	document_id bigint,
	gid uuid,
	personnel_code character varying,
	version_num integer,
	display_name character varying,
	document_date date,
	personnel_type character varying
);


ALTER TYPE personnel_head OWNER TO postgres;

--
-- TOC entry 1070 (class 1247 OID 374569)
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
-- TOC entry 1508 (class 1247 OID 376306)
-- Name: phantom_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE phantom_specification AS (
	producible material_specification,
	process_num integer,
	segment_num integer
);


ALTER TYPE phantom_specification OWNER TO postgres;

--
-- TOC entry 1073 (class 1247 OID 374572)
-- Name: process_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE process_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	version_num integer,
	document_date date,
	curr_fsmt document_fsmt,
	document_type document_kind,
	producible_spec material_specification
);


ALTER TYPE process_head OWNER TO postgres;

--
-- TOC entry 1076 (class 1247 OID 374575)
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
-- TOC entry 1079 (class 1247 OID 374578)
-- Name: process_segment; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE process_segment AS (
	gid uuid,
	operation_code character varying,
	consumable_spec consumable_specification[],
	personnel_spec personnel_specification[],
	equipmet_spec equipment_specification[],
	tooling_spec tooling_specification[]
);


ALTER TYPE process_segment OWNER TO postgres;

--
-- TOC entry 1082 (class 1247 OID 374581)
-- Name: process_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE process_document AS (
	head process_head,
	body process_segment[],
	deps dependency_specification[]
);


ALTER TYPE process_document OWNER TO postgres;

--
-- TOC entry 3759 (class 0 OID 0)
-- Dependencies: 1082
-- Name: TYPE process_document; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON TYPE process_document IS 'operation';


--
-- TOC entry 1085 (class 1247 OID 374583)
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
-- TOC entry 1088 (class 1247 OID 374595)
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
-- TOC entry 1091 (class 1247 OID 374598)
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
-- TOC entry 1094 (class 1247 OID 374601)
-- Name: product_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE product_document AS (
	head product_head,
	body product_segment[],
	deps dependency_specification[]
);


ALTER TYPE product_document OWNER TO postgres;

--
-- TOC entry 1097 (class 1247 OID 374604)
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
	producible_spec material_specification
);


ALTER TYPE route_head OWNER TO postgres;

--
-- TOC entry 1100 (class 1247 OID 374607)
-- Name: route_segment; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE route_segment AS (
	gid uuid,
	facility_code character varying,
	ancestor uuid,
	descendant uuid
);


ALTER TYPE route_segment OWNER TO postgres;

--
-- TOC entry 1103 (class 1247 OID 374610)
-- Name: route_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE route_document AS (
	head route_head,
	body route_segment[],
	weight quantity
);


ALTER TYPE route_document OWNER TO postgres;

--
-- TOC entry 1109 (class 1247 OID 374616)
-- Name: stride_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE stride_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	version_num integer,
	document_date date,
	curr_fsmt document_fsmt,
	document_type document_kind,
	ancestor_spec phantom_specification
);


ALTER TYPE stride_head OWNER TO postgres;

--
-- TOC entry 1511 (class 1247 OID 376309)
-- Name: stride_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE stride_document AS (
	head stride_head,
	body process_segment,
	past phantom_specification,
	area character varying[]
);


ALTER TYPE stride_document OWNER TO postgres;

--
-- TOC entry 1019 (class 1247 OID 374493)
-- Name: stride_vertex; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE stride_vertex AS (
	part_code character varying,
	version_num integer,
	process_num integer,
	segment_num integer,
	facility_code character varying
);


ALTER TYPE stride_vertex OWNER TO postgres;

--
-- TOC entry 1022 (class 1247 OID 374496)
-- Name: stride_edge; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE stride_edge AS (
	descendants stride_vertex,
	ancestor stride_vertex,
	gid uuid
);


ALTER TYPE stride_edge OWNER TO postgres;

--
-- TOC entry 1112 (class 1247 OID 374622)
-- Name: tooling_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE tooling_head AS (
	document_id bigint,
	gid uuid,
	tooling_code character varying,
	version_num integer,
	display_name character varying,
	document_date date,
	tooling_type character varying
);


ALTER TYPE tooling_head OWNER TO postgres;

--
-- TOC entry 1115 (class 1247 OID 374624)
-- Name: uom_domain_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE uom_domain_kind AS ENUM (
    'LENGHT',
    'MASS',
    'QUANTITY',
    'VOLUME'
);


ALTER TYPE uom_domain_kind OWNER TO postgres;

--
-- TOC entry 1106 (class 1247 OID 374613)
-- Name: vertex_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE vertex_specification AS (
	part_code character varying,
	version_num integer,
	process_num integer,
	segment_num integer,
	operation_code character varying,
	quantity quantity,
	uom_code character varying,
	material_type material_kind
);


ALTER TYPE vertex_specification OWNER TO postgres;

--
-- TOC entry 421 (class 1255 OID 374633)
-- Name: array_append_distinct(anyarray, anyelement); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION array_append_distinct(anyarray, anyelement) RETURNS anyarray
    LANGUAGE sql
    AS $_$ 
  SELECT ARRAY(SELECT unnest($1) union SELECT $2) 
$_$;


ALTER FUNCTION common.array_append_distinct(anyarray, anyelement) OWNER TO postgres;

--
-- TOC entry 422 (class 1255 OID 374634)
-- Name: array_distinct(anyarray); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION array_distinct(anyarray) RETURNS anyarray
    LANGUAGE sql
    AS $_$
  SELECT ARRAY(SELECT DISTINCT unnest($1))
$_$;


ALTER FUNCTION common.array_distinct(anyarray) OWNER TO postgres;

--
-- TOC entry 423 (class 1255 OID 374635)
-- Name: array_erase(anyarray, anyelement); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION array_erase(anyarray, anyelement) RETURNS anyarray
    LANGUAGE sql
    AS $_$
  SELECT ARRAY(SELECT v FROM unnest($1) g(v) WHERE v <> $2)
$_$;


ALTER FUNCTION common.array_erase(anyarray, anyelement) OWNER TO postgres;

--
-- TOC entry 424 (class 1255 OID 374636)
-- Name: array_sort(anyarray); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION array_sort(anyarray) RETURNS anyarray
    LANGUAGE sql
    AS $_$
  SELECT ARRAY(SELECT unnest($1) ORDER BY 1)
$_$;


ALTER FUNCTION common.array_sort(anyarray) OWNER TO postgres;

--
-- TOC entry 425 (class 1255 OID 374637)
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
-- TOC entry 406 (class 1255 OID 374638)
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
-- TOC entry 426 (class 1255 OID 374639)
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
-- TOC entry 427 (class 1255 OID 374640)
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
-- TOC entry 428 (class 1255 OID 374641)
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
-- TOC entry 429 (class 1255 OID 374642)
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
-- TOC entry 430 (class 1255 OID 374643)
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
-- TOC entry 431 (class 1255 OID 374644)
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
-- TOC entry 432 (class 1255 OID 374645)
-- Name: get_document_abbrevation(document_kind); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION get_document_abbrevation(__doctype document_kind) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
DECLARE
  _abbrevation character varying;
  _abbrevation_default CONSTANT character varying DEFAULT 'UNDEFINED';
BEGIN
  SELECT
    abbrevation
  FROM 
    common.document_abbrevation
  WHERE 
    doctype = __doctype
  INTO 
    _abbrevation;
  IF (NOT FOUND) THEN
    _abbrevation := _abbrevation_default;
  END IF;
  RETURN _abbrevation;
END;
$$;


ALTER FUNCTION common.get_document_abbrevation(__doctype document_kind) OWNER TO postgres;

--
-- TOC entry 433 (class 1255 OID 374646)
-- Name: number_encode2(integer, boolean); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION number_encode2(__number integer, __upper_only boolean DEFAULT true) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
DECLARE
  _a_char CONSTANT character varying(1) DEFAULT 'A'; --'ZERO'-char
  _ascii_offset CONSTANT integer DEFAULT 65; -- ASCII offset
  _ascii_mid_offset1 integer DEFAULT 0; -- ASCII offset between 'Z' and 'a'
  _ascii_mid_offset2 integer DEFAULT 0; -- ASCII offset between 'Z' and 'a'
  _numeral_base integer;
  _first_char character varying(1);
  _second_char character varying(1);
  
BEGIN

  -- ватіранти імені для функції: 
  -- варіанти поведінки функції: 

  /*
    функція повертає буквенний код заданого числа з основою 26 (A-Z) або 52 (A-Z,a-z)
  */

  IF (__upper_only) THEN
    _numeral_base := 26;
  ELSE
    _numeral_base := 52;
  END IF;

  IF (__number < 0 OR __number >= power(_numeral_base, 2)) THEN
    RAISE EXCEPTION '__number is out of range : 0 ... %', (power(_numeral_base, 2) - 1);
  END IF;

  IF (_numeral_base = 52 AND ((__number / _numeral_base) > 25)) THEN
    _ascii_mid_offset1 := 6;
  ELSE
    _ascii_mid_offset1 := 0;
  END IF;

  IF (_numeral_base = 52 AND ((__number % _numeral_base) > 25)) THEN
    _ascii_mid_offset2 := 6;
  ELSE 
    _ascii_mid_offset2 := 0;
  END IF;

  IF (__number < _numeral_base) THEN
    _first_char := _a_char;
    _second_char := chr(_ascii_offset + _ascii_mid_offset2 + __number);
  ELSE
    _first_char :=  chr(_ascii_offset + _ascii_mid_offset1 + (__number / _numeral_base));
    _second_char := chr(_ascii_offset + _ascii_mid_offset2 + (__number % _numeral_base));
  END IF;

  --RAISE NOTICE 'return __number % ', __number;
  --RAISE NOTICE 'return __upper_only % ', __upper_only;
  --RAISE NOTICE 'return _a_char % ', _a_char;
  --RAISE NOTICE 'return _ascii_offset % ', _ascii_offset;
  --RAISE NOTICE 'return _ascii_mid_offset1 % ', _ascii_mid_offset1;
  --RAISE NOTICE 'return _ascii_mid_offset2 % ', _ascii_mid_offset2;
  --RAISE NOTICE 'return _numeral_base % ', _numeral_base;
  --RAISE NOTICE 'return _first_char % ', _first_char;
  --RAISE NOTICE 'return _second_char % ', _second_char;
  
  RETURN concat(_first_char, _second_char);

END;
$$;


ALTER FUNCTION common.number_encode2(__number integer, __upper_only boolean) OWNER TO postgres;

--
-- TOC entry 434 (class 1255 OID 374647)
-- Name: number_encode4(integer, boolean); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION number_encode4(__number integer, __upper_only boolean DEFAULT true) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
DECLARE
  _numeral_base integer;
  _v1 integer;
  _v2 integer;
  _v3 integer;
  _v4 integer;
  
BEGIN

  -- ватіранти імені для функції: 
  -- варіанти поведінки функції: 
  /*
    >>> 10 ** 2 * 26 ** 2 -1
    67599
    >>> 10 ** 2 * 52 ** 2 -1
    270399
  */


  /*
    функція повертає буквенний код заданого числа з основою 26 (A-Z) або 52 (A-Z,a-z)
  */

  IF (__upper_only) THEN
    _numeral_base := 26;
  ELSE
    _numeral_base := 52;
  END IF;

  IF (__number < 0 OR __number >= (power(_numeral_base, 2) * 100)) THEN
    RAISE EXCEPTION '__number is out of range : 0 ... %', ((power(_numeral_base, 2) * 100) - 1);
  END IF;

  _v1 := __number / 100;
  _v2 := __number % 100;
  _v3 := _v2 / 10;
  _v4 := _v2 % 10;
  
  RETURN concat(_v4, common.number_encode2(_v1, __upper_only), _v3);

END;
$$;


ALTER FUNCTION common.number_encode4(__number integer, __upper_only boolean) OWNER TO postgres;

--
-- TOC entry 435 (class 1255 OID 374648)
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
-- TOC entry 436 (class 1255 OID 374649)
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
-- TOC entry 437 (class 1255 OID 374650)
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
-- TOC entry 438 (class 1255 OID 374651)
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
-- TOC entry 439 (class 1255 OID 374652)
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
-- TOC entry 440 (class 1255 OID 374653)
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
-- TOC entry 441 (class 1255 OID 374654)
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
-- TOC entry 442 (class 1255 OID 374655)
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
-- TOC entry 443 (class 1255 OID 374656)
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
-- TOC entry 444 (class 1255 OID 374657)
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
-- TOC entry 445 (class 1255 OID 374658)
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
-- TOC entry 446 (class 1255 OID 374659)
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
-- TOC entry 447 (class 1255 OID 374660)
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

SET search_path = equipment, pg_catalog;

--
-- TOC entry 448 (class 1255 OID 374661)
-- Name: destroy(bigint); Type: FUNCTION; Schema: equipment; Owner: postgres
--

CREATE FUNCTION destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM equipment.information WHERE id = __document_id;
END;
$$;


ALTER FUNCTION equipment.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 449 (class 1255 OID 374662)
-- Name: get_head(bigint); Type: FUNCTION; Schema: equipment; Owner: postgres
--

CREATE FUNCTION get_head(__document_id bigint) RETURNS common.equipment_head
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
-- TOC entry 450 (class 1255 OID 374663)
-- Name: init(common.equipment_head); Type: FUNCTION; Schema: equipment; Owner: postgres
--

CREATE FUNCTION init(__head common.equipment_head) RETURNS bigint
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

SET search_path = facility, pg_catalog;

--
-- TOC entry 451 (class 1255 OID 374664)
-- Name: destroy(bigint); Type: FUNCTION; Schema: facility; Owner: postgres
--

CREATE FUNCTION destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM facility.information WHERE id = __document_id;
END;
$$;


ALTER FUNCTION facility.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 452 (class 1255 OID 374665)
-- Name: get_head(bigint); Type: FUNCTION; Schema: facility; Owner: postgres
--

CREATE FUNCTION get_head(__document_id bigint) RETURNS common.facility_head
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
-- TOC entry 453 (class 1255 OID 374666)
-- Name: get_head_batch(common.facility_kind); Type: FUNCTION; Schema: facility; Owner: postgres
--

CREATE FUNCTION get_head_batch(__facility_type common.facility_kind DEFAULT NULL::common.facility_kind) RETURNS common.facility_head[]
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
-- TOC entry 454 (class 1255 OID 374667)
-- Name: init(common.facility_head); Type: FUNCTION; Schema: facility; Owner: postgres
--

CREATE FUNCTION init(__head common.facility_head) RETURNS bigint
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
-- TOC entry 455 (class 1255 OID 374668)
-- Name: reinit(common.facility_head); Type: FUNCTION; Schema: facility; Owner: postgres
--

CREATE FUNCTION reinit(__head common.facility_head) RETURNS void
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

SET search_path = inventory, pg_catalog;

--
-- TOC entry 456 (class 1255 OID 374669)
-- Name: destroy(bigint); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM inventory.definition WHERE id = __document_id;
END;
$$;


ALTER FUNCTION inventory.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 457 (class 1255 OID 374670)
-- Name: get_base_uom(character varying, integer); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION get_base_uom(_part_code character varying, _version_num integer) RETURNS character varying
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
-- TOC entry 458 (class 1255 OID 374671)
-- Name: get_document(bigint); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION get_document(__document_id bigint) RETURNS common.inventory_document
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
-- TOC entry 459 (class 1255 OID 374672)
-- Name: get_head(bigint); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION get_head(__document_id bigint) RETURNS common.inventory_head
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
-- TOC entry 460 (class 1255 OID 374673)
-- Name: get_head_batch(); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION get_head_batch() RETURNS common.inventory_head[]
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
-- TOC entry 461 (class 1255 OID 374674)
-- Name: get_kind_spec(bigint); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION get_kind_spec(__document_id bigint) RETURNS common.inventory_kind[]
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
-- TOC entry 462 (class 1255 OID 374675)
-- Name: get_meas_spec(bigint); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION get_meas_spec(__document_id bigint) RETURNS common.unit_conversion_type[]
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
-- TOC entry 464 (class 1255 OID 374676)
-- Name: get_uom_conversion_factors(character varying, integer, character varying, character varying); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION get_uom_conversion_factors(_part_code character varying, _version_num integer, _uom_domain_from character varying, _uom_domain_to character varying) RETURNS common.unit_conversion_type[]
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
-- TOC entry 465 (class 1255 OID 374677)
-- Name: init(common.inventory_head, common.unit_conversion_type[], common.inventory_kind[]); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION init(__head common.inventory_head, __meas common.unit_conversion_type[], __kind common.inventory_kind[]) RETURNS bigint
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
-- TOC entry 466 (class 1255 OID 374678)
-- Name: reinit(bigint, common.unit_conversion_type[], common.inventory_kind[]); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION reinit(__document_id bigint, __meas common.unit_conversion_type[], __kind common.inventory_kind[]) RETURNS void
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
-- TOC entry 467 (class 1255 OID 374679)
-- Name: set_kind_spec(bigint, common.inventory_kind[]); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION set_kind_spec(__document_id bigint, __inventory_kinds common.inventory_kind[]) RETURNS void
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
-- TOC entry 468 (class 1255 OID 374680)
-- Name: set_meas_spec(bigint, common.unit_conversion_type[]); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION set_meas_spec(__document_id bigint, __uom_conversion_factors common.unit_conversion_type[]) RETURNS void
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

SET search_path = mbom, pg_catalog;

--
-- TOC entry 469 (class 1255 OID 374681)
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
-- TOC entry 470 (class 1255 OID 374682)
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
-- TOC entry 471 (class 1255 OID 374683)
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
-- TOC entry 472 (class 1255 OID 374684)
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
-- TOC entry 473 (class 1255 OID 374685)
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
-- TOC entry 463 (class 1255 OID 374686)
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
-- TOC entry 476 (class 1255 OID 374687)
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
-- TOC entry 477 (class 1255 OID 374688)
-- Name: destroy(bigint); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM operation.information WHERE id = __document_id;
END;
$$;


ALTER FUNCTION operation.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 478 (class 1255 OID 374689)
-- Name: get_head(bigint); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION get_head(__document_id bigint) RETURNS common.operation_head
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
-- TOC entry 479 (class 1255 OID 374690)
-- Name: init(common.operation_head); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION init(__head common.operation_head) RETURNS bigint
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

SET search_path = personnel, pg_catalog;

--
-- TOC entry 480 (class 1255 OID 374691)
-- Name: destroy(bigint); Type: FUNCTION; Schema: personnel; Owner: postgres
--

CREATE FUNCTION destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM personnel.information WHERE id = __document_id;
END;
$$;


ALTER FUNCTION personnel.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 481 (class 1255 OID 374692)
-- Name: get_head(bigint); Type: FUNCTION; Schema: personnel; Owner: postgres
--

CREATE FUNCTION get_head(__document_id bigint) RETURNS common.personnel_head
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
-- TOC entry 482 (class 1255 OID 374693)
-- Name: init(common.personnel_head); Type: FUNCTION; Schema: personnel; Owner: postgres
--

CREATE FUNCTION init(__head common.personnel_head) RETURNS bigint
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

SET search_path = pgunit, pg_catalog;

--
-- TOC entry 483 (class 1255 OID 374694)
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
-- TOC entry 484 (class 1255 OID 374695)
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
-- TOC entry 485 (class 1255 OID 374696)
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
-- TOC entry 486 (class 1255 OID 374697)
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
-- TOC entry 487 (class 1255 OID 374698)
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
-- TOC entry 488 (class 1255 OID 374699)
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
-- TOC entry 489 (class 1255 OID 374700)
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
-- TOC entry 474 (class 1255 OID 374701)
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
-- TOC entry 475 (class 1255 OID 374702)
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
-- TOC entry 490 (class 1255 OID 374703)
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
-- TOC entry 491 (class 1255 OID 374704)
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
-- TOC entry 492 (class 1255 OID 374705)
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
-- TOC entry 493 (class 1255 OID 374706)
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
-- TOC entry 494 (class 1255 OID 374707)
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
-- TOC entry 495 (class 1255 OID 374708)
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
-- TOC entry 496 (class 1255 OID 374709)
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
-- TOC entry 497 (class 1255 OID 374710)
-- Name: destroy(bigint); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM process.definition WHERE id = __document_id;
END;
$$;


ALTER FUNCTION process.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 498 (class 1255 OID 374711)
-- Name: get_body(bigint); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION get_body(__document_id bigint) RETURNS common.process_segment[]
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
-- TOC entry 499 (class 1255 OID 374712)
-- Name: get_consumable_spec(bigint); Type: FUNCTION; Schema: process; Owner: postgres
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
        process.material
      WHERE 
        material.segment_id = __segment_id
    );
END
$$;


ALTER FUNCTION process.get_consumable_spec(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 500 (class 1255 OID 374713)
-- Name: get_deps(bigint); Type: FUNCTION; Schema: process; Owner: postgres
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
-- TOC entry 501 (class 1255 OID 374714)
-- Name: get_equipment_spec(bigint); Type: FUNCTION; Schema: process; Owner: postgres
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
        process.equipment
      WHERE 
        equipment.segment_id = __segment_id
    );
END
$$;


ALTER FUNCTION process.get_equipment_spec(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 502 (class 1255 OID 374715)
-- Name: get_gid_by_id(bigint); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION get_gid_by_id(__document_id bigint) RETURNS uuid
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
-- TOC entry 503 (class 1255 OID 374716)
-- Name: get_head(bigint); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION get_head(__document_id bigint) RETURNS common.process_head
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
-- TOC entry 504 (class 1255 OID 374717)
-- Name: get_id_by_gid(uuid); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION get_id_by_gid(__document_gid uuid) RETURNS bigint
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
-- TOC entry 505 (class 1255 OID 374718)
-- Name: get_personnel_spec(bigint); Type: FUNCTION; Schema: process; Owner: postgres
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
        process.personnel
      WHERE 
        personnel.segment_id = __segment_id
    );
END
$$;


ALTER FUNCTION process.get_personnel_spec(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 506 (class 1255 OID 374719)
-- Name: get_segment(bigint); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION get_segment(__segment_id bigint) RETURNS common.process_segment
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
-- TOC entry 507 (class 1255 OID 374720)
-- Name: get_tooling_spec(bigint); Type: FUNCTION; Schema: process; Owner: postgres
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
        process.tooling
      WHERE 
        tooling.segment_id = __segment_id
    );
END
$$;


ALTER FUNCTION process.get_tooling_spec(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 508 (class 1255 OID 374721)
-- Name: init(common.process_head, common.process_segment[], common.dependency_specification[]); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION init(__head common.process_head, __body common.process_segment[], __deps common.dependency_specification[]) RETURNS bigint
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
-- TOC entry 509 (class 1255 OID 374722)
-- Name: reinit(bigint, common.process_segment[], common.dependency_specification[]); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION reinit(__document_id bigint, __body common.process_segment[], __deps common.dependency_specification[]) RETURNS void
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
-- TOC entry 510 (class 1255 OID 374723)
-- Name: set_consumable_spec(bigint, common.consumable_specification[]); Type: FUNCTION; Schema: process; Owner: postgres
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
-- TOC entry 511 (class 1255 OID 374724)
-- Name: set_equipment_spec(bigint, common.equipment_specification[]); Type: FUNCTION; Schema: process; Owner: postgres
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
-- TOC entry 512 (class 1255 OID 374725)
-- Name: set_personnel_spec(bigint, common.personnel_specification[]); Type: FUNCTION; Schema: process; Owner: postgres
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
-- TOC entry 513 (class 1255 OID 374726)
-- Name: set_tooling_spec(bigint, common.tooling_specification[]); Type: FUNCTION; Schema: process; Owner: postgres
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

SET search_path = product, pg_catalog;

--
-- TOC entry 514 (class 1255 OID 374727)
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
-- TOC entry 515 (class 1255 OID 374728)
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
-- TOC entry 516 (class 1255 OID 374729)
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
-- TOC entry 517 (class 1255 OID 374730)
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
-- TOC entry 518 (class 1255 OID 374731)
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
-- TOC entry 519 (class 1255 OID 374732)
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
-- TOC entry 520 (class 1255 OID 374733)
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
-- TOC entry 521 (class 1255 OID 374734)
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
-- TOC entry 522 (class 1255 OID 374735)
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
-- TOC entry 523 (class 1255 OID 374736)
-- Name: get_segment(bigint); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION get_segment(__segment_id bigint) RETURNS common.product_segment
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
-- TOC entry 524 (class 1255 OID 374737)
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
-- TOC entry 525 (class 1255 OID 374738)
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
-- TOC entry 526 (class 1255 OID 374739)
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
-- TOC entry 527 (class 1255 OID 374740)
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
-- TOC entry 528 (class 1255 OID 374741)
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
-- TOC entry 529 (class 1255 OID 374742)
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
-- TOC entry 530 (class 1255 OID 374743)
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
-- TOC entry 531 (class 1255 OID 374744)
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

SET search_path = request, pg_catalog;

--
-- TOC entry 532 (class 1255 OID 374745)
-- Name: disallow_editing_of_committed_document_body(); Type: FUNCTION; Schema: request; Owner: postgres
--

CREATE FUNCTION disallow_editing_of_committed_document_body() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  _document_fsmt common.document_fsmt;
BEGIN
  IF (TG_OP = 'INSERT' OR TG_OP = 'UPDATE') THEN

    SELECT 
      head.curr_fsmt
    FROM 
      request.head
    WHERE 
      head.id = NEW.head_id
    INTO
      _document_fsmt;

    IF (_document_fsmt = 'COMMITTED'::common.document_fsmt) THEN
      RAISE EXCEPTION 'not allowed to edit document %, %', NEW.head_id, _document_fsmt; 
    END IF;
    
    RETURN NEW;

  ELSIF (TG_OP = 'DELETE') THEN
    SELECT 
      head.curr_fsmt
    FROM 
      request.head
    WHERE 
      head.id = OLD.head_id
    INTO
      _document_fsmt;

    IF (_document_fsmt = 'COMMITTED'::common.document_fsmt) THEN
      RAISE EXCEPTION 'not allowed to edit document %, %', OLD.head_id, _document_fsmt; 
    END IF;
    
    RETURN OLD;
  END IF;
  RETURN NULL;
END;
$$;


ALTER FUNCTION request.disallow_editing_of_committed_document_body() OWNER TO postgres;

--
-- TOC entry 533 (class 1255 OID 374746)
-- Name: generate_display_name(date, character varying); Type: FUNCTION; Schema: request; Owner: postgres
--

CREATE FUNCTION generate_display_name(__document_date date, __facility_code character varying) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
DECLARE
  _week_number integer;
  _sequence_number integer;
  _document_kind_code character varying;
BEGIN

  _week_number := schedule.get_julianized_week(__document_date);
  _sequence_number := request.numerator_nextval(__facility_code, _week_number);
  _document_kind_code := common.get_document_abbrevation('REQUEST');

  RETURN concat(_document_kind_code,
    '-', __facility_code,
    '-', common.number_encode2(_week_number, true),
    common.number_encode4(_sequence_number, true));

END;
$$;


ALTER FUNCTION request.generate_display_name(__document_date date, __facility_code character varying) OWNER TO postgres;

--
-- TOC entry 534 (class 1255 OID 374747)
-- Name: numerator_nextval(character varying, integer); Type: FUNCTION; Schema: request; Owner: postgres
--

CREATE FUNCTION numerator_nextval(__facility_code character varying, __julianized_week integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
  _seqence_number integer;
BEGIN

  UPDATE
    request.numerator
  SET
    current_value = current_value + 1
  WHERE
    julianized_week = __julianized_week AND
    facility_code = __facility_code
  RETURNING current_value INTO _seqence_number;

  IF (NOT FOUND) THEN
    INSERT INTO
      request.numerator (
        facility_code,
        julianized_week,
        current_value)
    VALUES (
      __facility_code, 
      __julianized_week,
      1)
    RETURNING current_value INTO _seqence_number;
  END IF;
  
  RETURN _seqence_number;

END;
$$;


ALTER FUNCTION request.numerator_nextval(__facility_code character varying, __julianized_week integer) OWNER TO postgres;

SET search_path = response, pg_catalog;

--
-- TOC entry 535 (class 1255 OID 374748)
-- Name: disallow_editing_of_committed_document_body(); Type: FUNCTION; Schema: response; Owner: postgres
--

CREATE FUNCTION disallow_editing_of_committed_document_body() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  _document_fsmt common.document_fsmt;
BEGIN
  IF (TG_OP = 'INSERT' OR TG_OP = 'UPDATE') THEN

    SELECT 
      head.curr_fsmt
    FROM 
      response.head
    WHERE 
      head.id = NEW.head_id
    INTO
      _document_fsmt;

    IF (_document_fsmt = 'COMMITTED'::common.document_fsmt) THEN
      RAISE EXCEPTION 'not allowed to edit document %, %', NEW.head_id, _document_fsmt; 
    END IF;
    
    RETURN NEW;

  ELSIF (TG_OP = 'DELETE') THEN
    SELECT 
      head.curr_fsmt
    FROM 
      response.head
    WHERE 
      head.id = OLD.head_id
    INTO
      _document_fsmt;

    IF (_document_fsmt = 'COMMITTED'::common.document_fsmt) THEN
      RAISE EXCEPTION 'not allowed to edit document %, %', OLD.head_id, _document_fsmt; 
    END IF;
    
    RETURN OLD;
  END IF;
  RETURN NULL;
END;
$$;


ALTER FUNCTION response.disallow_editing_of_committed_document_body() OWNER TO postgres;

--
-- TOC entry 536 (class 1255 OID 374749)
-- Name: generate_display_name(date, character varying); Type: FUNCTION; Schema: response; Owner: postgres
--

CREATE FUNCTION generate_display_name(__document_date date, __facility_code character varying) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
DECLARE
  _week_number integer;
  _sequence_number integer;
  _document_kind_code character varying;
BEGIN

  _week_number := schedule.get_julianized_week(__document_date);
  _sequence_number := response.numerator_nextval(__facility_code, _week_number);
  _document_kind_code := common.get_document_abbrevation('RESPONSE');

  RETURN concat(_document_kind_code,
    '-', __facility_code,
    '-', common.number_encode2(_week_number, true),
    common.number_encode4(_sequence_number, true));

END;
$$;


ALTER FUNCTION response.generate_display_name(__document_date date, __facility_code character varying) OWNER TO postgres;

--
-- TOC entry 537 (class 1255 OID 374750)
-- Name: numerator_nextval(character varying, integer); Type: FUNCTION; Schema: response; Owner: postgres
--

CREATE FUNCTION numerator_nextval(__facility_code character varying, __julianized_week integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
  _seqence_number integer;
BEGIN

  UPDATE
    response.numerator
  SET
    current_value = current_value + 1
  WHERE
    julianized_week = __julianized_week AND
    facility_code = __facility_code
  RETURNING current_value INTO _seqence_number;

  IF (NOT FOUND) THEN
    INSERT INTO
      response.numerator (
        facility_code,
        julianized_week,
        current_value)
    VALUES (
      __facility_code, 
      __julianized_week,
      1)
    RETURNING current_value INTO _seqence_number;
  END IF;
  
  RETURN _seqence_number;

END;
$$;


ALTER FUNCTION response.numerator_nextval(__facility_code character varying, __julianized_week integer) OWNER TO postgres;

SET search_path = route, pg_catalog;

--
-- TOC entry 538 (class 1255 OID 374751)
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
-- TOC entry 539 (class 1255 OID 374752)
-- Name: get_body(bigint); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION get_body(__document_id bigint) RETURNS common.route_segment[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY(
      SELECT 
        (segment.gid, 
        segment.facility_code, 
        segment.ancestor, 
        segment.descendant)::common.route_segment
      FROM 
        route.segment
      WHERE 
        segment.definition_id = __document_id
    );
END
$$;


ALTER FUNCTION route.get_body(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 540 (class 1255 OID 374753)
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
-- TOC entry 541 (class 1255 OID 374754)
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
      (information.part_code, 
      information.version_num, 
      1.0::common.quantity, 
      'pcs', 
      'PRODUCIBLE')::common.material_specification
    )::common.route_head
  FROM
    route.information, 
    route.definition
  WHERE
    information.id = definition.information_id AND
    definition.id = __document_id;
END;
$$;


ALTER FUNCTION route.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 542 (class 1255 OID 374755)
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
-- TOC entry 543 (class 1255 OID 374756)
-- Name: init(common.route_head, common.route_segment[], common.quantity); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION init(__head common.route_head, __body common.route_segment[], __heft common.quantity) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _information_id bigint;
  _definition_id bigint;
  _max_version_num integer;
  _seg common.route_segment;
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
    information.part_code = (__head.producible_spec).part_code AND 
    information.version_num = (__head.producible_spec).version_num
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
      (__head.producible_spec).part_code,
      (__head.producible_spec).version_num)
    RETURNING id INTO _information_id;
  ELSE
    SELECT
      id
    FROM
      route.information
    WHERE
      information.part_code = (__head.producible_spec).part_code AND 
      information.version_num = (__head.producible_spec).version_num
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

  FOREACH _seg IN
    ARRAY __body
  LOOP
    --RAISE NOTICE '_seg.facility_code : %', _seg.facility_code;
    INSERT INTO
      route.segment (
        id,
        gid,
        definition_id,
        facility_code,
        ancestor,
        descendant)
    VALUES (
      DEFAULT,
      _seg.gid,
      _definition_id,
      _seg.facility_code,
      _seg.ancestor,
      _seg.descendant);
  END LOOP;

  INSERT INTO
    route.weight (
      definition_id,
      rate)
  VALUES (
    _definition_id,
    __heft);

  RETURN _definition_id;

END;
$$;


ALTER FUNCTION route.init(__head common.route_head, __body common.route_segment[], __heft common.quantity) OWNER TO postgres;

--
-- TOC entry 544 (class 1255 OID 374757)
-- Name: reinit(bigint, common.quantity); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION reinit(__document_id bigint, __heft common.quantity) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  DELETE FROM
    route.weight
  WHERE
    definition_id = __document_id;

  INSERT INTO
    route.weight (
      definition_id,
      rate)
  VALUES (
    __document_id,
    __heft);

END;
$$;


ALTER FUNCTION route.reinit(__document_id bigint, __heft common.quantity) OWNER TO postgres;

SET search_path = schedule, pg_catalog;

--
-- TOC entry 545 (class 1255 OID 374758)
-- Name: get_date_of_julianized_day(integer); Type: FUNCTION; Schema: schedule; Owner: postgres
--

CREATE FUNCTION get_date_of_julianized_day(__jylianized_day integer) RETURNS date
    LANGUAGE plpgsql
    AS $$
DECLARE
  _julianized_day_date date;
BEGIN

  SELECT 
    calendar.calendar_date
  FROM 
    schedule.calendar
  WHERE 
    calendar.julianized_day = __jylianized_day
  ORDER BY
    calendar.calendar_date ASC
  LIMIT 1
  INTO
    _julianized_day_date;

  IF (NOT FOUND) THEN
    RAISE EXCEPTION 'No schedule found for day number: %', __jylianized_day;
  END IF;

  RETURN _julianized_day_date;

END;
$$;


ALTER FUNCTION schedule.get_date_of_julianized_day(__jylianized_day integer) OWNER TO postgres;

--
-- TOC entry 546 (class 1255 OID 374759)
-- Name: get_julianized_day(date); Type: FUNCTION; Schema: schedule; Owner: postgres
--

CREATE FUNCTION get_julianized_day(__date date) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
  _julianized_day integer;
BEGIN

  SELECT
    calendar.julianized_day
  FROM 
    schedule.calendar
  WHERE 
    calendar.calendar_date = __date
  INTO
    _julianized_day;

  IF (NOT FOUND) THEN
    RAISE EXCEPTION 'No schedule found for date: %', __date;
  END IF;

  RETURN _julianized_day;

END;
$$;


ALTER FUNCTION schedule.get_julianized_day(__date date) OWNER TO postgres;

--
-- TOC entry 547 (class 1255 OID 374760)
-- Name: get_julianized_week(date); Type: FUNCTION; Schema: schedule; Owner: postgres
--

CREATE FUNCTION get_julianized_week(__date date) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
  _julianized_week integer;
BEGIN

  SELECT
    calendar.julianized_week
  FROM 
    schedule.calendar
  WHERE 
    calendar.calendar_date = __date
  INTO
    _julianized_week;

  IF (NOT FOUND) THEN
    RAISE EXCEPTION 'No schedule found for date: %', __date;
  END IF;

  RETURN _julianized_week;

END;
$$;


ALTER FUNCTION schedule.get_julianized_week(__date date) OWNER TO postgres;

SET search_path = stride, pg_catalog;

--
-- TOC entry 548 (class 1255 OID 374761)
-- Name: append_pathway(common.stride_vertex, uuid, common.stride_vertex); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION append_pathway(__find_node common.stride_vertex, __run_gid uuid, __append_node common.stride_vertex) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE 
  _find_node_id bigint;
  _append_node_id bigint;
  _record record;
  _nodes common.stride_vertex[];
BEGIN

  FOR _record IN 
    SELECT 
      pathway.id, 
      pathway.gid, 
      pathway.nodes
    FROM 
      stride.pathway
    WHERE 
      pathway.gid = __run_gid AND
      pathway.nodes[array_length(pathway.nodes,1)] = __find_node LIMIT 1
  LOOP
    RAISE NOTICE '_record.nodes: %', _record.nodes;
    _nodes := array_append(_record.nodes, __append_node);
    RAISE NOTICE '_record.nodes new: %', _nodes;
    UPDATE
      stride.pathway
    SET
      nodes = _nodes
    WHERE id = _record.id;
  END LOOP;

END;
$$;


ALTER FUNCTION stride.append_pathway(__find_node common.stride_vertex, __run_gid uuid, __append_node common.stride_vertex) OWNER TO postgres;

--
-- TOC entry 549 (class 1255 OID 374762)
-- Name: consider_pathway(character varying, integer); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION consider_pathway(__part_code character varying, __version_num integer) RETURNS uuid
    LANGUAGE plpgsql
    AS $$
DECLARE
  _consideration_gid uuid;
  _sprouts common.stride_vertex[];
  _sprout common.stride_vertex;
  _ancestors common.stride_edge[];
  _next_ancestors common.stride_edge[] := ARRAY[]::common.stride_edge[];
  _prev_ancestors record;
  _idx int;
  _cnt int := 1;
BEGIN

  _consideration_gid = public.uuid_generate_v4();

  _sprouts := stride.get_sprouts(__part_code, __version_num);

  FOREACH _sprout IN ARRAY _sprouts LOOP

    RAISE NOTICE 'SPROUT: %', _sprout;

    INSERT INTO
      stride.pathway
        (id, gid, nodes)
      VALUES
        (DEFAULT, _consideration_gid, ARRAY[ _sprout ]::common.stride_vertex[]);

    _ancestors := stride.get_edges_by_descendant(_sprout);
    RAISE NOTICE 'before while loop _ancestors: %', _ancestors;

    WHILE array_length(_ancestors, 1) > 0 LOOP
      RAISE NOTICE 'while loop #%', _cnt;

      _next_ancestors := ARRAY[]::common.stride_edge[];

      IF array_length(_ancestors, 1) > 1 THEN
        FOR _prev_ancestors IN 
          SELECT
            descendants,
            count(ancestor) AS qty
          FROM 
            (
              SELECT DISTINCT
                descendants,
                ancestor,
                gid
              FROM
                unnest(_ancestors)
            ) AS s
          GROUP BY
            s.descendants
          /*SELECT
            descendants,
            count(ancestor) AS qty
          FROM
            unnest(_ancestors)
          GROUP BY
            descendants*/
        LOOP
          IF _prev_ancestors.qty > 1 THEN
            RAISE NOTICE 'forking % for % times', _prev_ancestors.descendants, (_prev_ancestors.qty - 1);
            PERFORM stride.fork_pathway(_prev_ancestors.descendants, _consideration_gid, (_prev_ancestors.qty - 1)::integer);
          END IF;
        END LOOP;
      END IF;

      FOR _idx IN 1..array_length(_ancestors, 1) LOOP
        RAISE NOTICE '_descendants[%]: %', _idx, (_ancestors[_idx]).descendants;
        RAISE NOTICE '_ancestor[%]: %', _idx, (_ancestors[_idx]).ancestor;
        -- apend
        RAISE NOTICE 'appending: find % append %', (_ancestors[_idx]).descendants, (_ancestors[_idx]).ancestor;
        PERFORM stride.append_pathway((_ancestors[_idx]).descendants, _consideration_gid, (_ancestors[_idx]).ancestor);
        /*_next_ancestors := array_agg(a order by a)
          from (
              select distinct unnest(_next_ancestors || stride.get_edges_by_descendant((_ancestors[_idx]).ancestor)) as a
          ) s;*/
        _next_ancestors := array_cat(_next_ancestors, stride.get_edges_by_descendant((_ancestors[_idx]).ancestor));
        RAISE NOTICE '_next_ancestors: %', _next_ancestors;
      END LOOP;

      _ancestors := _next_ancestors;
      _cnt := _cnt +1;

    END LOOP;

  END LOOP;

  RETURN _consideration_gid;

END;
$$;


ALTER FUNCTION stride.consider_pathway(__part_code character varying, __version_num integer) OWNER TO postgres;

--
-- TOC entry 550 (class 1255 OID 374763)
-- Name: destroy(bigint); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM stride.definition WHERE id = __document_id;
END;
$$;


ALTER FUNCTION stride.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 551 (class 1255 OID 374764)
-- Name: fork_pathway(common.stride_vertex, uuid, integer); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION fork_pathway(__find_node common.stride_vertex, __run_gid uuid, __fork_qty integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE 
  _record record;
  _idx int;
BEGIN

  FOR _record IN 
    SELECT 
      pathway.id, 
      pathway.gid, 
      pathway.nodes
    FROM 
      stride.pathway
    WHERE 
      pathway.gid = __run_gid AND
      pathway.nodes[array_length(pathway.nodes,1)] = __find_node
  LOOP
    FOR _idx IN 1..__fork_qty LOOP
      INSERT INTO
        stride.pathway
          (id, gid, nodes)
        VALUES
          (DEFAULT, _record.gid, _record.nodes);
    END LOOP;
  END LOOP;

END;
$$;


ALTER FUNCTION stride.fork_pathway(__find_node common.stride_vertex, __run_gid uuid, __fork_qty integer) OWNER TO postgres;

--
-- TOC entry 552 (class 1255 OID 374765)
-- Name: get_body(bigint); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION get_body(__document_id bigint) RETURNS common.process_segment
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
      (definition.gid,
      definition.operation_code,
      stride.get_consumable_spec(__document_id := __document_id),
      stride.get_personnel_spec(__document_id := __document_id),
      stride.get_equipment_spec(__document_id := __document_id),
      stride.get_tooling_spec(__document_id := __document_id))::common.process_segment
    FROM 
      stride.definition
    WHERE 
      definition.id = __document_id;
END
$$;


ALTER FUNCTION stride.get_body(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 553 (class 1255 OID 374766)
-- Name: get_consumable_spec(bigint); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION get_consumable_spec(__document_id bigint) RETURNS common.consumable_specification[]
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
        stride.material, 
        stride.definition
      WHERE 
        definition.information_id = material.information_id AND
        definition.id = __document_id
    );
END
$$;


ALTER FUNCTION stride.get_consumable_spec(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 554 (class 1255 OID 374767)
-- Name: get_edges_by_descendant(common.stride_vertex); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION get_edges_by_descendant(__descendant common.stride_vertex) RETURNS common.stride_edge[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  /*RETURN
    ARRAY (
      SELECT 
        ((information.part_code, 
        information.version_num, 
        information.process_num, 
        information.segment_num)::common.stride_vertex, 
        (descendant.part_code, 
        descendant.version_num, 
        descendant.process_num, 
        descendant.segment_num)::common.stride_vertex, 
        definition.gid)::common.stride_edge
      FROM 
        stride.information, 
        stride.definition, 
        stride.descendant
      WHERE 
        information.id = definition.information_id AND
        definition.id = descendant.definition_id AND
        information.part_code = __child.part_code AND
        information.version_num = __child.version_num AND 
        information.process_num = __child.process_num AND 
        information.segment_num = __child.segment_num 
    );*/
  RETURN
    ARRAY (
      SELECT 
        ((descendant_information.part_code, 
        descendant_information.version_num, 
        descendant_information.process_num, 
        descendant_information.segment_num, 
        descendant_facility.facility_code)::common.stride_vertex,
        (ancestor_information.part_code, 
        ancestor_information.version_num, 
        ancestor_information.process_num, 
        ancestor_information.segment_num, 
        ancestor_facility.facility_code)::common.stride_vertex, 
        descendant_defintion.gid)::common.stride_edge
      FROM 
        stride.information ancestor_information, 
        stride.definition ancestor_definition, 
        stride.facility ancestor_facility, 
        stride.descendant, 
        stride.information descendant_information, 
        stride.definition descendant_defintion, 
        stride.facility descendant_facility
      WHERE 
        ancestor_information.id = ancestor_definition.information_id AND
        ancestor_definition.id = ancestor_facility.definition_id AND
        ancestor_definition.id = descendant.definition_id AND
        descendant_information.id = descendant_defintion.information_id AND
        descendant_information.part_code = descendant.part_code AND
        descendant_information.version_num = descendant.version_num AND
        descendant_information.process_num = descendant.process_num AND
        descendant_information.segment_num = descendant.segment_num AND
        descendant_defintion.id = descendant_facility.definition_id AND
        descendant_information.part_code = __descendant.part_code AND
        descendant_information.version_num = __descendant.version_num AND 
        descendant_information.process_num = __descendant.process_num AND 
        descendant_information.segment_num = __descendant.segment_num AND
        descendant_facility.facility_code = __descendant.facility_code
  );
    
END;
$$;


ALTER FUNCTION stride.get_edges_by_descendant(__descendant common.stride_vertex) OWNER TO postgres;

--
-- TOC entry 555 (class 1255 OID 374768)
-- Name: get_equipment_spec(bigint); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION get_equipment_spec(__document_id bigint) RETURNS common.equipment_specification[]
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
        stride.equipment, 
        stride.definition
      WHERE 
        definition.information_id = equipment.information_id AND
        definition.id = __document_id
    );
END
$$;


ALTER FUNCTION stride.get_equipment_spec(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 556 (class 1255 OID 374769)
-- Name: get_facility_spec(bigint); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION get_facility_spec(__document_id bigint) RETURNS common.facility_specification[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (facility.facility_code, 
        1, 
        'LINE'::common.facility_kind)::common.facility_specification
      FROM 
        stride.facility
      WHERE 
        facility.definition_id = __document_id
    );
END
$$;


ALTER FUNCTION stride.get_facility_spec(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 557 (class 1255 OID 374770)
-- Name: get_gid_by_id(bigint); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION get_gid_by_id(__document_id bigint) RETURNS uuid
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN gid
    FROM
      stride.definition
    WHERE
      id = __document_id;
END;
$$;


ALTER FUNCTION stride.get_gid_by_id(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 558 (class 1255 OID 374771)
-- Name: get_head(bigint); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION get_head(__document_id bigint) RETURNS common.stride_head
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
    'STRIDE'::common.document_kind,
      (information.part_code, 
      information.version_num, 
      information.process_num, 
      information.segment_num,
      information.operation_code,
      1.0,
      'pcs',
      'PRODUCIBLE')::common.vertex_specification
    )::common.stride_head
  FROM
    stride.information, 
    stride.definition, 
    stride.descendant
  WHERE
    information.id = definition.information_id AND
    definition.id = descendant.definition_id AND
    definition.id = __document_id;
END;
$$;


ALTER FUNCTION stride.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 559 (class 1255 OID 374772)
-- Name: get_id_by_gid(uuid); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION get_id_by_gid(__document_gid uuid) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN id
    FROM
      stride.definition
    WHERE
      gid = __document_gid;
END;
$$;


ALTER FUNCTION stride.get_id_by_gid(__document_gid uuid) OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 249 (class 1259 OID 374773)
-- Name: pathway; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE pathway (
    id bigint NOT NULL,
    gid uuid,
    nodes common.stride_vertex[]
);


ALTER TABLE pathway OWNER TO postgres;

--
-- TOC entry 560 (class 1255 OID 374779)
-- Name: get_pathway(character varying, integer); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION get_pathway(__part_code character varying, __version_num integer) RETURNS SETOF pathway
    LANGUAGE plpgsql
    AS $$
DECLARE
  _pathway stride.pathway%rowtype;
  _consideration_gid uuid;
BEGIN

  _consideration_gid := stride.consider_pathway(__part_code, __version_num);
  RAISE NOTICE '_consideration_gid: %', _consideration_gid; 

  FOR _pathway IN
    SELECT
      id,
      gid,
      nodes 
    FROM
      stride.pathway
    WHERE
      gid = _consideration_gid
  LOOP
    RETURN NEXT _pathway;
  END LOOP;

  RETURN;

END;
$$;


ALTER FUNCTION stride.get_pathway(__part_code character varying, __version_num integer) OWNER TO postgres;

--
-- TOC entry 561 (class 1255 OID 374780)
-- Name: get_personnel_spec(bigint); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION get_personnel_spec(__document_id bigint) RETURNS common.personnel_specification[]
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
        stride.personnel, 
        stride.definition
      WHERE 
        definition.information_id = personnel.information_id AND
        definition.id = __document_id
    );
END
$$;


ALTER FUNCTION stride.get_personnel_spec(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 562 (class 1255 OID 374781)
-- Name: get_sprouts(character varying, integer); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION get_sprouts(__part_code character varying, __version_num integer) RETURNS common.stride_vertex[]
    LANGUAGE plpgsql
    AS $$

BEGIN

  RETURN
    ARRAY (
      SELECT 
        (information.part_code, 
        information.version_num, 
        information.process_num, 
        information.segment_num,
        facility.facility_code)::common.stride_vertex
      FROM 
        stride.information, 
        stride.definition,
        stride.facility
      WHERE 
        information.id = definition.information_id AND
        definition.id = facility.definition_id AND
        information.part_code = __part_code AND 
        information.version_num = __version_num AND
      NOT EXISTS (
        SELECT 
          descendant.definition_id
        FROM 
          stride.descendant
        WHERE 
          descendant.definition_id = definition.id)
      );
END;
$$;


ALTER FUNCTION stride.get_sprouts(__part_code character varying, __version_num integer) OWNER TO postgres;

--
-- TOC entry 563 (class 1255 OID 374782)
-- Name: get_tooling_spec(bigint); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION get_tooling_spec(__document_id bigint) RETURNS common.tooling_specification[]
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
        stride.tooling, 
        stride.definition
      WHERE 
        definition.information_id = tooling.information_id AND
        definition.id = __document_id
    );
END
$$;


ALTER FUNCTION stride.get_tooling_spec(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 564 (class 1255 OID 374783)
-- Name: init(common.stride_head, common.process_segment, common.vertex_specification, common.facility_specification[]); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION init(__head common.stride_head, __body common.process_segment, __heir common.vertex_specification, __area common.facility_specification[]) RETURNS bigint
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
    stride.information, 
    stride.definition
  WHERE 
    information.id = definition.information_id AND
    information.part_code = (__head.ancestor_spec).part_code AND 
    information.version_num = (__head.ancestor_spec).version_num AND
    information.process_num = (__head.ancestor_spec).process_num AND
    information.segment_num = (__head.ancestor_spec).segment_num
  INTO
    _max_version_num;

  IF (_max_version_num IS NULL) THEN
    _max_version_num := 0;

    INSERT INTO
      stride.information (
        id,
        display_name,
        published_date,
        part_code,
        version_num,
        process_num,
        segment_num,
        operation_code)
    VALUES (
      DEFAULT,
      __head.display_name,
      __head.document_date,
      (__head.ancestor_spec).part_code,
      (__head.ancestor_spec).version_num,
      (__head.ancestor_spec).process_num,
      (__head.ancestor_spec).segment_num,
      (__head.ancestor_spec).operation_code)
    RETURNING id INTO _information_id;

    PERFORM stride.set_consumable_spec(_information_id, __body.consumable_spec);
    PERFORM stride.set_personnel_spec(_information_id, __body.personnel_spec);
    PERFORM stride.set_equipment_spec(_information_id, __body.equipmet_spec);
    PERFORM stride.set_tooling_spec(_information_id, __body.tooling_spec);

  ELSE
    SELECT
      id
    FROM
      stride.information
    WHERE
      information.part_code = (__head.ancestor_spec).part_code AND 
      information.version_num = (__head.ancestor_spec).version_num AND
      information.process_num = (__head.ancestor_spec).process_num AND
      information.segment_num = (__head.ancestor_spec).segment_num
    INTO
      _information_id;

  END IF;

  INSERT INTO
    stride.definition (
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

  INSERT INTO
    stride.descendant (
      definition_id,
      part_code,
      version_num,
      process_num,
      segment_num,
      operation_code)
  VALUES (
    _definition_id,
    __heir.part_code,
    __heir.version_num,
    __heir.process_num,
    __heir.segment_num,
    __heir.operation_code);

  PERFORM stride.set_facility_spec(_definition_id, __area);

  RETURN _definition_id;

END;
$$;


ALTER FUNCTION stride.init(__head common.stride_head, __body common.process_segment, __heir common.vertex_specification, __area common.facility_specification[]) OWNER TO postgres;

--
-- TOC entry 565 (class 1255 OID 374784)
-- Name: reinit(bigint, common.vertex_specification, common.facility_specification[]); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION reinit(__document_id bigint, __heir common.vertex_specification, __area common.facility_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  DELETE FROM
    stride.facility
  WHERE
    definition_id = __document_id;

  DELETE FROM
    stride.descendant
  WHERE
    definition_id = __document_id;

  INSERT INTO
    stride.descendant (
      definition_id,
      part_code,
      version_num,
      process_num,
      segment_num,
      operation_code)
  VALUES (
    __document_id,
    __heir.part_code,
    __heir.version_num,
    __heir.process_num,
    __heir.segment_num,
    __heir.operation_code);

  PERFORM stride.set_facility_spec(__document_id, __area);

END;
$$;


ALTER FUNCTION stride.reinit(__document_id bigint, __heir common.vertex_specification, __area common.facility_specification[]) OWNER TO postgres;

--
-- TOC entry 566 (class 1255 OID 374785)
-- Name: set_consumable_spec(bigint, common.consumable_specification[]); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION set_consumable_spec(__document_id bigint, __material common.consumable_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.consumable_specification;
  _information_id bigint;
BEGIN

  _information_id := information_id FROM stride.definition WHERE definition.id = __document_id;

  FOREACH _item IN
    ARRAY __material
  LOOP
    IF (_item.material_type = 'PRIMAL') THEN
      INSERT INTO
        stride.primal (
          information_id,
          part_code,
          version_num,
          quantity,
          uom_code,
          material_type,
          rationing_qty)
      VALUES (
        _information_id,
        _item.part_code,
        _item.version_num,
        _item.quantity,
        _item.uom_code,
        _item.material_type,
        _item.rationing_qty);

    ELSIF (_item.material_type = 'CONSUMABLE') THEN
      INSERT INTO
        stride.consumable (
          information_id,
          part_code,
          version_num,
          quantity,
          uom_code,
          material_type,
          rationing_qty)
      VALUES (
        _information_id,
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


ALTER FUNCTION stride.set_consumable_spec(__document_id bigint, __material common.consumable_specification[]) OWNER TO postgres;

--
-- TOC entry 567 (class 1255 OID 374786)
-- Name: set_equipment_spec(bigint, common.equipment_specification[]); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION set_equipment_spec(__document_id bigint, __equipment common.equipment_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.equipment_specification;
  _information_id bigint;
BEGIN

  _information_id := information_id FROM stride.definition WHERE definition.id = __document_id;

  FOREACH _item IN
    ARRAY __equipment
  LOOP
    INSERT INTO
      stride.equipment (
        information_id,
        equipment_code,
        version_num,
        quantity,
        uom_code)
    VALUES (
      _information_id,
      _item.equipment_code,
      _item.version_num,
      _item.quantity,
      _item.uom_code);
  END LOOP;

END;
$$;


ALTER FUNCTION stride.set_equipment_spec(__document_id bigint, __equipment common.equipment_specification[]) OWNER TO postgres;

--
-- TOC entry 568 (class 1255 OID 374787)
-- Name: set_facility_spec(bigint, common.facility_specification[]); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION set_facility_spec(__document_id bigint, __facility common.facility_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.facility_specification;
BEGIN

  FOREACH _item IN
    ARRAY __facility
  LOOP
    INSERT INTO
      stride.facility (
        definition_id,
        facility_code)
    VALUES (
      __document_id,
      _item.facility_code);
  END LOOP;

END;
$$;


ALTER FUNCTION stride.set_facility_spec(__document_id bigint, __facility common.facility_specification[]) OWNER TO postgres;

--
-- TOC entry 569 (class 1255 OID 374788)
-- Name: set_personnel_spec(bigint, common.personnel_specification[]); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION set_personnel_spec(__document_id bigint, __personnel common.personnel_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.personnel_specification;
  _information_id bigint;
BEGIN

  _information_id := information_id FROM stride.definition WHERE definition.id = __document_id;

  FOREACH _item IN
    ARRAY __personnel
  LOOP
    INSERT INTO
      stride.personnel (
        information_id,
        personnel_code,
        version_num,
        rationing_qty,
        batch_qty,
        workers_qty,
        setup_time,
        piece_time)
    VALUES (
      _information_id,
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


ALTER FUNCTION stride.set_personnel_spec(__document_id bigint, __personnel common.personnel_specification[]) OWNER TO postgres;

--
-- TOC entry 570 (class 1255 OID 374789)
-- Name: set_tooling_spec(bigint, common.tooling_specification[]); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION set_tooling_spec(__document_id bigint, __tooling common.tooling_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.tooling_specification;
  _information_id bigint;
BEGIN

  _information_id := information_id FROM stride.definition WHERE definition.id = __document_id;

  FOREACH _item IN
    ARRAY __tooling
  LOOP
    INSERT INTO
      stride.tooling (
        information_id,
        tooling_code,
        version_num,
        quantity,
        uom_code)
    VALUES (
      _information_id,
      _item.tooling_code,
      _item.version_num,
      _item.quantity,
      _item.uom_code);
  END LOOP;

END;
$$;


ALTER FUNCTION stride.set_tooling_spec(__document_id bigint, __tooling common.tooling_specification[]) OWNER TO postgres;

SET search_path = tests, pg_catalog;

--
-- TOC entry 571 (class 1255 OID 374790)
-- Name: __ebom__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __ebom__destroy() RETURNS void
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
-- TOC entry 572 (class 1255 OID 374791)
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
-- TOC entry 573 (class 1255 OID 374792)
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
-- TOC entry 574 (class 1255 OID 374793)
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
-- TOC entry 575 (class 1255 OID 374794)
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
-- TOC entry 576 (class 1255 OID 374795)
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
-- TOC entry 577 (class 1255 OID 374796)
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
-- TOC entry 578 (class 1255 OID 374797)
-- Name: __equipment__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __equipment__destroy() RETURNS void
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
-- TOC entry 579 (class 1255 OID 374798)
-- Name: __equipment__get_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __equipment__get_head() RETURNS void
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
-- TOC entry 580 (class 1255 OID 374799)
-- Name: __equipment__init(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __equipment__init() RETURNS void
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
-- TOC entry 582 (class 1255 OID 374800)
-- Name: __inventory__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __inventory__destroy() RETURNS void
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
-- TOC entry 583 (class 1255 OID 374801)
-- Name: __inventory__get_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __inventory__get_head() RETURNS void
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
-- TOC entry 584 (class 1255 OID 374802)
-- Name: __inventory__init(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __inventory__init() RETURNS void
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
-- TOC entry 585 (class 1255 OID 374803)
-- Name: __inventory__reinit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __inventory__reinit() RETURNS void
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
-- TOC entry 586 (class 1255 OID 374804)
-- Name: __mbom__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __mbom__destroy() RETURNS void
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
-- TOC entry 589 (class 1255 OID 374805)
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
-- TOC entry 590 (class 1255 OID 374806)
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
-- TOC entry 591 (class 1255 OID 374807)
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
-- TOC entry 592 (class 1255 OID 374808)
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
-- TOC entry 593 (class 1255 OID 374809)
-- Name: __mbom__init(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __mbom__init() RETURNS void
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
-- TOC entry 596 (class 1255 OID 374810)
-- Name: __mbom__reinit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __mbom__reinit() RETURNS void
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
-- TOC entry 597 (class 1255 OID 374811)
-- Name: __operation__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __operation__destroy() RETURNS void
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
-- TOC entry 598 (class 1255 OID 374812)
-- Name: __operation__get_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __operation__get_head() RETURNS void
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
-- TOC entry 599 (class 1255 OID 374813)
-- Name: __operation__init(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __operation__init() RETURNS void
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
-- TOC entry 600 (class 1255 OID 374814)
-- Name: __personnel__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __personnel__destroy() RETURNS void
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
-- TOC entry 602 (class 1255 OID 374815)
-- Name: __personnel__get_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __personnel__get_head() RETURNS void
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
-- TOC entry 603 (class 1255 OID 374816)
-- Name: __personnel__init(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __personnel__init() RETURNS void
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
-- TOC entry 604 (class 1255 OID 374817)
-- Name: __process__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __process__destroy() RETURNS void
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
-- TOC entry 605 (class 1255 OID 374818)
-- Name: __process__get_body(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __process__get_body() RETURNS void
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
-- TOC entry 606 (class 1255 OID 374820)
-- Name: __process__get_gid_by_id(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __process__get_gid_by_id() RETURNS void
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
-- TOC entry 607 (class 1255 OID 374821)
-- Name: __process__get_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __process__get_head() RETURNS void
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
-- TOC entry 601 (class 1255 OID 374822)
-- Name: __process__get_id_by_gid(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __process__get_id_by_gid() RETURNS void
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
-- TOC entry 608 (class 1255 OID 374823)
-- Name: __process__init(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __process__init() RETURNS void
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
-- TOC entry 609 (class 1255 OID 374824)
-- Name: __process__reinit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __process__reinit() RETURNS void
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
-- TOC entry 610 (class 1255 OID 374826)
-- Name: __tooling__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __tooling__destroy() RETURNS void
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
-- TOC entry 611 (class 1255 OID 374827)
-- Name: __tooling__get_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __tooling__get_head() RETURNS void
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
-- TOC entry 612 (class 1255 OID 374828)
-- Name: __tooling__init(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION __tooling__init() RETURNS void
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
-- TOC entry 613 (class 1255 OID 374829)
-- Name: _load_data(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION _load_data() RETURNS void
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
-- TOC entry 614 (class 1255 OID 374831)
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
-- TOC entry 581 (class 1255 OID 374832)
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

SET search_path = tooling, pg_catalog;

--
-- TOC entry 587 (class 1255 OID 374833)
-- Name: destroy(bigint); Type: FUNCTION; Schema: tooling; Owner: postgres
--

CREATE FUNCTION destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM tooling.information WHERE id = __document_id;
END;
$$;


ALTER FUNCTION tooling.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 588 (class 1255 OID 374834)
-- Name: get_head(bigint); Type: FUNCTION; Schema: tooling; Owner: postgres
--

CREATE FUNCTION get_head(__document_id bigint) RETURNS common.tooling_head
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
-- TOC entry 594 (class 1255 OID 374835)
-- Name: init(common.tooling_head); Type: FUNCTION; Schema: tooling; Owner: postgres
--

CREATE FUNCTION init(__head common.tooling_head) RETURNS bigint
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

SET search_path = uom, pg_catalog;

--
-- TOC entry 595 (class 1255 OID 374836)
-- Name: get_domain(character varying); Type: FUNCTION; Schema: uom; Owner: postgres
--

CREATE FUNCTION get_domain(_uom_code character varying) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN uom_domain FROM uom.information WHERE uom_code = _uom_code;

END;
$$;


ALTER FUNCTION uom.get_domain(_uom_code character varying) OWNER TO postgres;

--
-- TOC entry 615 (class 1255 OID 374837)
-- Name: get_factor(character varying, character varying); Type: FUNCTION; Schema: uom; Owner: postgres
--

CREATE FUNCTION get_factor(_uom_code_src character varying, _uom_code_dst character varying) RETURNS double precision
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

SET search_path = assignement, pg_catalog;

--
-- TOC entry 250 (class 1259 OID 374838)
-- Name: achievement; Type: TABLE; Schema: assignement; Owner: postgres
--

CREATE TABLE achievement (
    head_id bigint NOT NULL,
    stride_gid uuid NOT NULL,
    quantity common.quantity NOT NULL
);


ALTER TABLE achievement OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 374844)
-- Name: appointment; Type: TABLE; Schema: assignement; Owner: postgres
--

CREATE TABLE appointment (
    head_id bigint NOT NULL,
    stride_gid uuid NOT NULL,
    quantity common.quantity NOT NULL
);


ALTER TABLE appointment OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 374850)
-- Name: head; Type: TABLE; Schema: assignement; Owner: postgres
--

CREATE TABLE head (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    document_date date DEFAULT ('now'::text)::date NOT NULL,
    author character varying,
    due_date date NOT NULL,
    facility_code character varying,
    prev_fsmt common.document_fsmt,
    prev_fsmt_date timestamp with time zone,
    curr_fsmt common.document_fsmt DEFAULT 'PROPOSED'::common.document_fsmt NOT NULL,
    curr_fsmt_date timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT head_check1 CHECK ((document_date <= due_date))
);


ALTER TABLE head OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 374861)
-- Name: head_id_seq; Type: SEQUENCE; Schema: assignement; Owner: postgres
--

CREATE SEQUENCE head_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE head_id_seq OWNER TO postgres;

--
-- TOC entry 3760 (class 0 OID 0)
-- Dependencies: 253
-- Name: head_id_seq; Type: SEQUENCE OWNED BY; Schema: assignement; Owner: postgres
--

ALTER SEQUENCE head_id_seq OWNED BY head.id;


SET search_path = binding, pg_catalog;

--
-- TOC entry 254 (class 1259 OID 374863)
-- Name: ebom_to_mbom; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE ebom_to_mbom (
    ebom_id bigint NOT NULL,
    mbom_id bigint NOT NULL
);


ALTER TABLE ebom_to_mbom OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 374866)
-- Name: ebom_to_process; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE ebom_to_process (
    ebom_id bigint NOT NULL,
    process_id bigint NOT NULL
);


ALTER TABLE ebom_to_process OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 374869)
-- Name: ebom_to_product; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE ebom_to_product (
    ebom_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE ebom_to_product OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 374872)
-- Name: ebom_to_route; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE ebom_to_route (
    ebom_id bigint NOT NULL,
    route_id bigint NOT NULL
);


ALTER TABLE ebom_to_route OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 374875)
-- Name: mbom_to_operation; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE mbom_to_operation (
    mbom_id bigint NOT NULL,
    operation_id bigint NOT NULL
);


ALTER TABLE mbom_to_operation OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 374878)
-- Name: mbom_to_process; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE mbom_to_process (
    mbom_id bigint NOT NULL,
    process_id bigint NOT NULL
);


ALTER TABLE mbom_to_process OWNER TO postgres;

--
-- TOC entry 260 (class 1259 OID 374881)
-- Name: mbom_to_product; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE mbom_to_product (
    mbom_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE mbom_to_product OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 374884)
-- Name: operation_to_product; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE operation_to_product (
    operation_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE operation_to_product OWNER TO postgres;

--
-- TOC entry 262 (class 1259 OID 374887)
-- Name: route_to_mbom; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE route_to_mbom (
    route_id bigint NOT NULL,
    mbom_id bigint NOT NULL
);


ALTER TABLE route_to_mbom OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 374890)
-- Name: route_to_operation; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE route_to_operation (
    route_id bigint NOT NULL,
    operation_id bigint NOT NULL
);


ALTER TABLE route_to_operation OWNER TO postgres;

SET search_path = common, pg_catalog;

--
-- TOC entry 264 (class 1259 OID 374893)
-- Name: document_abbrevation; Type: TABLE; Schema: common; Owner: postgres
--

CREATE TABLE document_abbrevation (
    doctype document_kind NOT NULL,
    abbrevation character varying DEFAULT '[ABBREVATION]'::character varying NOT NULL
);


ALTER TABLE document_abbrevation OWNER TO postgres;

SET search_path = ebom, pg_catalog;

--
-- TOC entry 265 (class 1259 OID 374900)
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
-- TOC entry 266 (class 1259 OID 374907)
-- Name: assembly; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE assembly (
    CONSTRAINT assembly_component_type_check CHECK ((component_type = 'ASSEMBLY'::common.component_kind))
)
INHERITS (component);


ALTER TABLE assembly OWNER TO postgres;

--
-- TOC entry 267 (class 1259 OID 374915)
-- Name: buyable; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE buyable (
    CONSTRAINT buyable_component_type_check CHECK ((component_type = 'BUYABLE'::common.component_kind))
)
INHERITS (component);


ALTER TABLE buyable OWNER TO postgres;

--
-- TOC entry 268 (class 1259 OID 374923)
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
-- TOC entry 269 (class 1259 OID 374934)
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
-- TOC entry 3761 (class 0 OID 0)
-- Dependencies: 269
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: ebom; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 270 (class 1259 OID 374936)
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
-- TOC entry 271 (class 1259 OID 374944)
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
-- TOC entry 3762 (class 0 OID 0)
-- Dependencies: 271
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: ebom; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 272 (class 1259 OID 374946)
-- Name: part; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE part (
    CONSTRAINT part_component_type_check CHECK ((component_type = 'PART'::common.component_kind))
)
INHERITS (component);


ALTER TABLE part OWNER TO postgres;

SET search_path = equipment, pg_catalog;

--
-- TOC entry 273 (class 1259 OID 374954)
-- Name: information; Type: TABLE; Schema: equipment; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    equipment_code character varying NOT NULL,
    version_num integer NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    equipment_type character varying
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 274 (class 1259 OID 374962)
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
-- TOC entry 3763 (class 0 OID 0)
-- Dependencies: 274
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: equipment; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


SET search_path = facility, pg_catalog;

--
-- TOC entry 275 (class 1259 OID 374964)
-- Name: information; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    facility_code character varying NOT NULL,
    version_num integer DEFAULT 1 NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    parent_facility_code character varying,
    facility_type common.facility_kind NOT NULL
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 3764 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN information.facility_type; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON COLUMN information.facility_type IS 'PERA organization level';


--
-- TOC entry 276 (class 1259 OID 374973)
-- Name: area; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE area (
    CONSTRAINT area_facility_type_check CHECK ((facility_type = 'AREA'::common.facility_kind))
)
INHERITS (information);


ALTER TABLE area OWNER TO postgres;

--
-- TOC entry 3765 (class 0 OID 0)
-- Dependencies: 276
-- Name: TABLE area; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON TABLE area IS 'PERA model level-2';


--
-- TOC entry 277 (class 1259 OID 374983)
-- Name: enterprise; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE enterprise (
    CONSTRAINT enterprise_facility_type_check CHECK ((facility_type = 'ENTERPRISE'::common.facility_kind))
)
INHERITS (information);


ALTER TABLE enterprise OWNER TO postgres;

--
-- TOC entry 3766 (class 0 OID 0)
-- Dependencies: 277
-- Name: TABLE enterprise; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON TABLE enterprise IS 'PERA model level-4';


--
-- TOC entry 278 (class 1259 OID 374993)
-- Name: information_id_seq; Type: SEQUENCE; Schema: facility; Owner: postgres
--

CREATE SEQUENCE information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE information_id_seq OWNER TO postgres;

--
-- TOC entry 3767 (class 0 OID 0)
-- Dependencies: 278
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: facility; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 279 (class 1259 OID 374995)
-- Name: line; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE line (
    CONSTRAINT line_facility_type_check CHECK ((facility_type = 'LINE'::common.facility_kind))
)
INHERITS (information);


ALTER TABLE line OWNER TO postgres;

--
-- TOC entry 3768 (class 0 OID 0)
-- Dependencies: 279
-- Name: TABLE line; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON TABLE line IS 'PERA model level-1 (production line)';


--
-- TOC entry 280 (class 1259 OID 375005)
-- Name: site; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE site (
    CONSTRAINT site_facility_type_check CHECK ((facility_type = 'SITE'::common.facility_kind)),
    CONSTRAINT site_parent_facility_code_check CHECK ((parent_facility_code IS NOT NULL))
)
INHERITS (information);


ALTER TABLE site OWNER TO postgres;

--
-- TOC entry 3769 (class 0 OID 0)
-- Dependencies: 280
-- Name: TABLE site; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON TABLE site IS 'PERA model level-3';


--
-- TOC entry 281 (class 1259 OID 375016)
-- Name: zone; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE zone (
    CONSTRAINT zone_facility_type_check CHECK ((facility_type = 'ZONE'::common.facility_kind))
)
INHERITS (information);


ALTER TABLE zone OWNER TO postgres;

--
-- TOC entry 3770 (class 0 OID 0)
-- Dependencies: 281
-- Name: TABLE zone; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON TABLE zone IS 'PERA model level-1 (storge zone)';


SET search_path = inventory, pg_catalog;

--
-- TOC entry 282 (class 1259 OID 375026)
-- Name: conglomeration; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE conglomeration (
    part_code character varying NOT NULL,
    version_num integer DEFAULT 1 NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    inventory_type common.inventory_kind NOT NULL,
    uom_code character varying,
    definition_id bigint
);


ALTER TABLE conglomeration OWNER TO postgres;

--
-- TOC entry 3771 (class 0 OID 0)
-- Dependencies: 282
-- Name: TABLE conglomeration; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE conglomeration IS 'inventory list';


--
-- TOC entry 283 (class 1259 OID 375034)
-- Name: assembly; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE assembly (
    CONSTRAINT assembly_inventory_type_check CHECK ((inventory_type = 'ASSEMBLY'::common.inventory_kind))
)
INHERITS (conglomeration);


ALTER TABLE assembly OWNER TO postgres;

--
-- TOC entry 3772 (class 0 OID 0)
-- Dependencies: 283
-- Name: TABLE assembly; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE assembly IS 'ebom assembly component';


--
-- TOC entry 284 (class 1259 OID 375043)
-- Name: buyable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE buyable (
    CONSTRAINT buyable_inventory_type_check CHECK ((inventory_type = 'BUYABLE'::common.inventory_kind))
)
INHERITS (conglomeration);


ALTER TABLE buyable OWNER TO postgres;

--
-- TOC entry 3773 (class 0 OID 0)
-- Dependencies: 284
-- Name: TABLE buyable; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE buyable IS 'ebom buyable component';


--
-- TOC entry 285 (class 1259 OID 375052)
-- Name: consumable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE consumable (
    CONSTRAINT consumable_inventory_type_check CHECK ((inventory_type = 'CONSUMABLE'::common.inventory_kind))
)
INHERITS (conglomeration);


ALTER TABLE consumable OWNER TO postgres;

--
-- TOC entry 3774 (class 0 OID 0)
-- Dependencies: 285
-- Name: TABLE consumable; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE consumable IS 'mbom consumable component';


--
-- TOC entry 286 (class 1259 OID 375061)
-- Name: definition; Type: TABLE; Schema: inventory; Owner: postgres
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
    information_id bigint,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 287 (class 1259 OID 375073)
-- Name: definition_id_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE definition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE definition_id_seq OWNER TO postgres;

--
-- TOC entry 3775 (class 0 OID 0)
-- Dependencies: 287
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: inventory; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 288 (class 1259 OID 375075)
-- Name: information; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    part_code character varying NOT NULL,
    display_name character varying,
    published_date date DEFAULT now() NOT NULL
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 289 (class 1259 OID 375083)
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
-- TOC entry 3776 (class 0 OID 0)
-- Dependencies: 289
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: inventory; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 290 (class 1259 OID 375085)
-- Name: measurement; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE measurement (
    definition_id bigint NOT NULL,
    uom_code character varying NOT NULL,
    factor numeric
);


ALTER TABLE measurement OWNER TO postgres;

--
-- TOC entry 291 (class 1259 OID 375091)
-- Name: part; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE part (
    CONSTRAINT part_inventory_type_check CHECK ((inventory_type = 'PART'::common.inventory_kind))
)
INHERITS (conglomeration);


ALTER TABLE part OWNER TO postgres;

--
-- TOC entry 3777 (class 0 OID 0)
-- Dependencies: 291
-- Name: TABLE part; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE part IS 'ebom part component';


--
-- TOC entry 292 (class 1259 OID 375100)
-- Name: phantom; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE phantom (
    CONSTRAINT phantom_inventory_type_check CHECK ((inventory_type = 'PHANTOM'::common.inventory_kind))
)
INHERITS (conglomeration);


ALTER TABLE phantom OWNER TO postgres;

--
-- TOC entry 3778 (class 0 OID 0)
-- Dependencies: 292
-- Name: TABLE phantom; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE phantom IS 'mbom phantom component';


--
-- TOC entry 293 (class 1259 OID 375109)
-- Name: primal; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE primal (
    CONSTRAINT primal_inventory_type_check CHECK ((inventory_type = 'PRIMAL'::common.inventory_kind))
)
INHERITS (conglomeration);


ALTER TABLE primal OWNER TO postgres;

--
-- TOC entry 3779 (class 0 OID 0)
-- Dependencies: 293
-- Name: TABLE primal; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE primal IS 'mbom primal component';


--
-- TOC entry 294 (class 1259 OID 375118)
-- Name: producible; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE producible (
    CONSTRAINT producible_inventory_type_check CHECK ((inventory_type = 'PRODUCIBLE'::common.inventory_kind))
)
INHERITS (conglomeration);


ALTER TABLE producible OWNER TO postgres;

--
-- TOC entry 3780 (class 0 OID 0)
-- Dependencies: 294
-- Name: TABLE producible; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE producible IS 'mbom producible component';


--
-- TOC entry 295 (class 1259 OID 375127)
-- Name: salable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE salable (
    CONSTRAINT salable_inventory_type_check CHECK ((inventory_type = 'SALABLE'::common.inventory_kind))
)
INHERITS (conglomeration);


ALTER TABLE salable OWNER TO postgres;

--
-- TOC entry 3781 (class 0 OID 0)
-- Dependencies: 295
-- Name: TABLE salable; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE salable IS 'inventory salable component';


--
-- TOC entry 296 (class 1259 OID 375136)
-- Name: storable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE storable (
    CONSTRAINT storable_inventory_type_check CHECK ((inventory_type = 'STORABLE'::common.inventory_kind))
)
INHERITS (conglomeration);


ALTER TABLE storable OWNER TO postgres;

SET search_path = mbom, pg_catalog;

--
-- TOC entry 297 (class 1259 OID 375145)
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
-- TOC entry 298 (class 1259 OID 375152)
-- Name: consumable; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE consumable (
    CONSTRAINT consumable_component_type_check CHECK ((material_type = 'CONSUMABLE'::common.material_kind))
)
INHERITS (material);


ALTER TABLE consumable OWNER TO postgres;

--
-- TOC entry 299 (class 1259 OID 375160)
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
-- TOC entry 300 (class 1259 OID 375171)
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
-- TOC entry 3782 (class 0 OID 0)
-- Dependencies: 300
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: mbom; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 301 (class 1259 OID 375173)
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
-- TOC entry 302 (class 1259 OID 375181)
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
-- TOC entry 3783 (class 0 OID 0)
-- Dependencies: 302
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: mbom; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 303 (class 1259 OID 375183)
-- Name: primal; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE primal (
    CONSTRAINT primal_component_type_check CHECK ((material_type = 'PRIMAL'::common.material_kind))
)
INHERITS (material);


ALTER TABLE primal OWNER TO postgres;

SET search_path = operation, pg_catalog;

--
-- TOC entry 304 (class 1259 OID 375191)
-- Name: information; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    operation_code character varying NOT NULL,
    version_num integer NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    operation_type character varying
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 305 (class 1259 OID 375199)
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
-- TOC entry 3784 (class 0 OID 0)
-- Dependencies: 305
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


SET search_path = personnel, pg_catalog;

--
-- TOC entry 306 (class 1259 OID 375201)
-- Name: information; Type: TABLE; Schema: personnel; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    personnel_code character varying NOT NULL,
    version_num integer NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    personnel_type character varying
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 307 (class 1259 OID 375209)
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
-- TOC entry 3785 (class 0 OID 0)
-- Dependencies: 307
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: personnel; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


SET search_path = process, pg_catalog;

--
-- TOC entry 308 (class 1259 OID 375211)
-- Name: material; Type: TABLE; Schema: process; Owner: postgres
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
-- TOC entry 309 (class 1259 OID 375219)
-- Name: consumable; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE consumable (
)
INHERITS (material);


ALTER TABLE consumable OWNER TO postgres;

--
-- TOC entry 310 (class 1259 OID 375227)
-- Name: definition; Type: TABLE; Schema: process; Owner: postgres
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
-- TOC entry 311 (class 1259 OID 375238)
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
-- TOC entry 3786 (class 0 OID 0)
-- Dependencies: 311
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 312 (class 1259 OID 375240)
-- Name: dependency; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE dependency (
    ancestor uuid NOT NULL,
    descendant uuid NOT NULL,
    depth integer DEFAULT 1 NOT NULL
);


ALTER TABLE dependency OWNER TO postgres;

--
-- TOC entry 313 (class 1259 OID 375244)
-- Name: equipment; Type: TABLE; Schema: process; Owner: postgres
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
-- TOC entry 314 (class 1259 OID 375250)
-- Name: information; Type: TABLE; Schema: process; Owner: postgres
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
-- TOC entry 315 (class 1259 OID 375258)
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
-- TOC entry 3787 (class 0 OID 0)
-- Dependencies: 315
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 316 (class 1259 OID 375260)
-- Name: personnel; Type: TABLE; Schema: process; Owner: postgres
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
-- TOC entry 317 (class 1259 OID 375270)
-- Name: primal; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE primal (
)
INHERITS (material);


ALTER TABLE primal OWNER TO postgres;

--
-- TOC entry 318 (class 1259 OID 375278)
-- Name: segment; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE segment (
    id bigint NOT NULL,
    definition_id bigint NOT NULL,
    operation_code character varying NOT NULL,
    gid uuid NOT NULL
);


ALTER TABLE segment OWNER TO postgres;

--
-- TOC entry 319 (class 1259 OID 375284)
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
-- TOC entry 3788 (class 0 OID 0)
-- Dependencies: 319
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


--
-- TOC entry 320 (class 1259 OID 375286)
-- Name: tooling; Type: TABLE; Schema: process; Owner: postgres
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
-- TOC entry 321 (class 1259 OID 375292)
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
-- TOC entry 322 (class 1259 OID 375300)
-- Name: consumable; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE consumable (
    CONSTRAINT consumable_material_type_check CHECK ((material_type = 'CONSUMABLE'::common.material_kind))
)
INHERITS (material);


ALTER TABLE consumable OWNER TO postgres;

--
-- TOC entry 323 (class 1259 OID 375309)
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
-- TOC entry 324 (class 1259 OID 375320)
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
-- TOC entry 3789 (class 0 OID 0)
-- Dependencies: 324
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 325 (class 1259 OID 375322)
-- Name: dependency; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE dependency (
    ancestor bigint NOT NULL,
    descendant bigint NOT NULL,
    depth integer DEFAULT 1 NOT NULL
);


ALTER TABLE dependency OWNER TO postgres;

--
-- TOC entry 326 (class 1259 OID 375326)
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
-- TOC entry 327 (class 1259 OID 375332)
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
-- TOC entry 328 (class 1259 OID 375340)
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
-- TOC entry 3790 (class 0 OID 0)
-- Dependencies: 328
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 329 (class 1259 OID 375342)
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
-- TOC entry 330 (class 1259 OID 375352)
-- Name: primal; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE primal (
    CONSTRAINT primal_material_type_check CHECK ((material_type = 'PRIMAL'::common.material_kind))
)
INHERITS (material);


ALTER TABLE primal OWNER TO postgres;

--
-- TOC entry 331 (class 1259 OID 375361)
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
-- TOC entry 3791 (class 0 OID 0)
-- Dependencies: 331
-- Name: TABLE segment; Type: COMMENT; Schema: product; Owner: postgres
--

COMMENT ON TABLE segment IS 'segments to specify process';


--
-- TOC entry 332 (class 1259 OID 375368)
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
-- TOC entry 3792 (class 0 OID 0)
-- Dependencies: 332
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


--
-- TOC entry 333 (class 1259 OID 375370)
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

SET search_path = request, pg_catalog;

--
-- TOC entry 334 (class 1259 OID 375376)
-- Name: body; Type: TABLE; Schema: request; Owner: postgres
--

CREATE TABLE body (
    head_id bigint NOT NULL,
    stride_gid uuid NOT NULL,
    quantity common.quantity NOT NULL
);


ALTER TABLE body OWNER TO postgres;

--
-- TOC entry 335 (class 1259 OID 375382)
-- Name: head; Type: TABLE; Schema: request; Owner: postgres
--

CREATE TABLE head (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    document_date date DEFAULT ('now'::text)::date NOT NULL,
    author character varying,
    due_date date NOT NULL,
    facility_code character varying,
    prev_fsmt common.document_fsmt,
    prev_fsmt_date timestamp with time zone,
    curr_fsmt common.document_fsmt DEFAULT 'PROPOSED'::common.document_fsmt NOT NULL,
    curr_fsmt_date timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT head_check1 CHECK ((document_date <= due_date))
);


ALTER TABLE head OWNER TO postgres;

--
-- TOC entry 336 (class 1259 OID 375393)
-- Name: head_id_seq; Type: SEQUENCE; Schema: request; Owner: postgres
--

CREATE SEQUENCE head_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE head_id_seq OWNER TO postgres;

--
-- TOC entry 3793 (class 0 OID 0)
-- Dependencies: 336
-- Name: head_id_seq; Type: SEQUENCE OWNED BY; Schema: request; Owner: postgres
--

ALTER SEQUENCE head_id_seq OWNED BY head.id;


--
-- TOC entry 337 (class 1259 OID 375395)
-- Name: numerator; Type: TABLE; Schema: request; Owner: postgres
--

CREATE TABLE numerator (
    facility_code character varying NOT NULL,
    julianized_week integer NOT NULL,
    current_value integer DEFAULT 0 NOT NULL
);


ALTER TABLE numerator OWNER TO postgres;

SET search_path = response, pg_catalog;

--
-- TOC entry 338 (class 1259 OID 375402)
-- Name: body; Type: TABLE; Schema: response; Owner: postgres
--

CREATE TABLE body (
    head_id bigint NOT NULL,
    stride_gid uuid NOT NULL,
    quantity common.quantity NOT NULL
);


ALTER TABLE body OWNER TO postgres;

--
-- TOC entry 339 (class 1259 OID 375408)
-- Name: head; Type: TABLE; Schema: response; Owner: postgres
--

CREATE TABLE head (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    document_date date DEFAULT ('now'::text)::date NOT NULL,
    author character varying,
    facility_code character varying,
    prev_fsmt common.document_fsmt,
    prev_fsmt_date timestamp with time zone,
    curr_fsmt common.document_fsmt DEFAULT 'PROPOSED'::common.document_fsmt NOT NULL,
    curr_fsmt_date timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE head OWNER TO postgres;

--
-- TOC entry 340 (class 1259 OID 375418)
-- Name: head_id_seq; Type: SEQUENCE; Schema: response; Owner: postgres
--

CREATE SEQUENCE head_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE head_id_seq OWNER TO postgres;

--
-- TOC entry 3794 (class 0 OID 0)
-- Dependencies: 340
-- Name: head_id_seq; Type: SEQUENCE OWNED BY; Schema: response; Owner: postgres
--

ALTER SEQUENCE head_id_seq OWNED BY head.id;


--
-- TOC entry 341 (class 1259 OID 375420)
-- Name: numerator; Type: TABLE; Schema: response; Owner: postgres
--

CREATE TABLE numerator (
    facility_code character varying NOT NULL,
    julianized_week integer NOT NULL,
    current_value integer DEFAULT 0 NOT NULL
);


ALTER TABLE numerator OWNER TO postgres;

SET search_path = route, pg_catalog;

--
-- TOC entry 342 (class 1259 OID 375427)
-- Name: definition; Type: TABLE; Schema: route; Owner: postgres
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
-- TOC entry 343 (class 1259 OID 375438)
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
-- TOC entry 3795 (class 0 OID 0)
-- Dependencies: 343
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: route; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 344 (class 1259 OID 375440)
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
-- TOC entry 345 (class 1259 OID 375448)
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
-- TOC entry 3796 (class 0 OID 0)
-- Dependencies: 345
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: route; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 346 (class 1259 OID 375450)
-- Name: segment; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE segment (
    id bigint NOT NULL,
    gid uuid NOT NULL,
    definition_id bigint NOT NULL,
    facility_code character varying NOT NULL,
    ancestor uuid NOT NULL,
    descendant uuid,
    CONSTRAINT segment_check CHECK ((ancestor <> descendant))
);


ALTER TABLE segment OWNER TO postgres;

--
-- TOC entry 347 (class 1259 OID 375457)
-- Name: segment_id_seq; Type: SEQUENCE; Schema: route; Owner: postgres
--

CREATE SEQUENCE segment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE segment_id_seq OWNER TO postgres;

--
-- TOC entry 3797 (class 0 OID 0)
-- Dependencies: 347
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: route; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


--
-- TOC entry 348 (class 1259 OID 375459)
-- Name: weight; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE weight (
    definition_id bigint NOT NULL,
    rate common.quantity
);


ALTER TABLE weight OWNER TO postgres;

SET search_path = schedule, pg_catalog;

--
-- TOC entry 349 (class 1259 OID 375465)
-- Name: calendar; Type: TABLE; Schema: schedule; Owner: postgres
--

CREATE TABLE calendar (
    calendar_date date NOT NULL,
    day_number integer,
    week_number integer,
    julianized_day integer,
    julianized_week integer
);


ALTER TABLE calendar OWNER TO postgres;

SET search_path = stride, pg_catalog;

--
-- TOC entry 350 (class 1259 OID 375468)
-- Name: material; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE material (
    information_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    quantity common.quantity,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL,
    material_type common.material_kind,
    rationing_qty integer DEFAULT 1
);


ALTER TABLE material OWNER TO postgres;

--
-- TOC entry 351 (class 1259 OID 375476)
-- Name: consumable; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE consumable (
)
INHERITS (material);


ALTER TABLE consumable OWNER TO postgres;

--
-- TOC entry 352 (class 1259 OID 375484)
-- Name: definition; Type: TABLE; Schema: stride; Owner: postgres
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
    information_id bigint,
    operation_code character varying
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 353 (class 1259 OID 375495)
-- Name: definition_id_seq; Type: SEQUENCE; Schema: stride; Owner: postgres
--

CREATE SEQUENCE definition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE definition_id_seq OWNER TO postgres;

--
-- TOC entry 3798 (class 0 OID 0)
-- Dependencies: 353
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: stride; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 354 (class 1259 OID 375497)
-- Name: descendant; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE descendant (
    definition_id bigint NOT NULL,
    part_code character varying,
    version_num integer,
    process_num integer,
    segment_num integer,
    operation_code character varying
);


ALTER TABLE descendant OWNER TO postgres;

--
-- TOC entry 355 (class 1259 OID 375503)
-- Name: equipment; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE equipment (
    information_id bigint NOT NULL,
    equipment_code character varying NOT NULL,
    version_num integer,
    quantity common.quantity,
    uom_code character varying
);


ALTER TABLE equipment OWNER TO postgres;

--
-- TOC entry 356 (class 1259 OID 375509)
-- Name: facility; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE facility (
    definition_id bigint NOT NULL,
    facility_code character varying NOT NULL
);


ALTER TABLE facility OWNER TO postgres;

--
-- TOC entry 357 (class 1259 OID 375515)
-- Name: information; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    published_date date DEFAULT now() NOT NULL,
    part_code character varying,
    version_num integer,
    process_num integer,
    segment_num integer,
    operation_code character varying
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 358 (class 1259 OID 375523)
-- Name: information_id_seq; Type: SEQUENCE; Schema: stride; Owner: postgres
--

CREATE SEQUENCE information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE information_id_seq OWNER TO postgres;

--
-- TOC entry 3799 (class 0 OID 0)
-- Dependencies: 358
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: stride; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 359 (class 1259 OID 375525)
-- Name: pathway_id_seq; Type: SEQUENCE; Schema: stride; Owner: postgres
--

CREATE SEQUENCE pathway_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pathway_id_seq OWNER TO postgres;

--
-- TOC entry 3800 (class 0 OID 0)
-- Dependencies: 359
-- Name: pathway_id_seq; Type: SEQUENCE OWNED BY; Schema: stride; Owner: postgres
--

ALTER SEQUENCE pathway_id_seq OWNED BY pathway.id;


--
-- TOC entry 360 (class 1259 OID 375527)
-- Name: personnel; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE personnel (
    information_id bigint NOT NULL,
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
-- TOC entry 361 (class 1259 OID 375537)
-- Name: primal; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE primal (
)
INHERITS (material);


ALTER TABLE primal OWNER TO postgres;

--
-- TOC entry 362 (class 1259 OID 375545)
-- Name: tooling; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE tooling (
    information_id bigint NOT NULL,
    tooling_code character varying NOT NULL,
    version_num integer,
    quantity common.quantity,
    uom_code character varying
);


ALTER TABLE tooling OWNER TO postgres;

SET search_path = tests, pg_catalog;

--
-- TOC entry 363 (class 1259 OID 375551)
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
-- TOC entry 364 (class 1259 OID 375556)
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
-- TOC entry 365 (class 1259 OID 375561)
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
-- TOC entry 366 (class 1259 OID 375566)
-- Name: information; Type: TABLE; Schema: tooling; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    tooling_code character varying NOT NULL,
    version_num integer NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    tooling_type character varying
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 367 (class 1259 OID 375574)
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
-- TOC entry 3801 (class 0 OID 0)
-- Dependencies: 367
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: tooling; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


SET search_path = uom, pg_catalog;

--
-- TOC entry 368 (class 1259 OID 375576)
-- Name: assignment; Type: TABLE; Schema: uom; Owner: postgres
--

CREATE TABLE assignment (
    uom_role_id bigint NOT NULL,
    uom_role_code character varying(100),
    uom_role_name character varying(300)
);


ALTER TABLE assignment OWNER TO postgres;

--
-- TOC entry 3802 (class 0 OID 0)
-- Dependencies: 368
-- Name: TABLE assignment; Type: COMMENT; Schema: uom; Owner: postgres
--

COMMENT ON TABLE assignment IS 'uom role';


--
-- TOC entry 369 (class 1259 OID 375579)
-- Name: information; Type: TABLE; Schema: uom; Owner: postgres
--

CREATE TABLE information (
    uom_code character varying(4) NOT NULL,
    uom_domain character varying(10),
    base_uom_code character varying,
    factor numeric
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 370 (class 1259 OID 375585)
-- Name: uom_role_uom_role_id_seq; Type: SEQUENCE; Schema: uom; Owner: postgres
--

CREATE SEQUENCE uom_role_uom_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE uom_role_uom_role_id_seq OWNER TO postgres;

--
-- TOC entry 3803 (class 0 OID 0)
-- Dependencies: 370
-- Name: uom_role_uom_role_id_seq; Type: SEQUENCE OWNED BY; Schema: uom; Owner: postgres
--

ALTER SEQUENCE uom_role_uom_role_id_seq OWNED BY assignment.uom_role_id;


SET search_path = assignement, pg_catalog;

--
-- TOC entry 2962 (class 2604 OID 375587)
-- Name: head id; Type: DEFAULT; Schema: assignement; Owner: postgres
--

ALTER TABLE ONLY head ALTER COLUMN id SET DEFAULT nextval('head_id_seq'::regclass);


SET search_path = ebom, pg_catalog;

--
-- TOC entry 2966 (class 2604 OID 375588)
-- Name: assembly uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY assembly ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 2968 (class 2604 OID 375589)
-- Name: buyable uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY buyable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 2975 (class 2604 OID 375590)
-- Name: definition id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 2978 (class 2604 OID 375591)
-- Name: information id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 2979 (class 2604 OID 375592)
-- Name: part uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY part ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


SET search_path = equipment, pg_catalog;

--
-- TOC entry 2983 (class 2604 OID 375593)
-- Name: information id; Type: DEFAULT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


SET search_path = facility, pg_catalog;

--
-- TOC entry 2988 (class 2604 OID 375594)
-- Name: area id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY area ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 2989 (class 2604 OID 375595)
-- Name: area gid; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY area ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 2990 (class 2604 OID 375596)
-- Name: area version_num; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY area ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 2991 (class 2604 OID 375597)
-- Name: area published_date; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY area ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 2993 (class 2604 OID 375598)
-- Name: enterprise id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY enterprise ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 2994 (class 2604 OID 375599)
-- Name: enterprise gid; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY enterprise ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 2995 (class 2604 OID 375600)
-- Name: enterprise version_num; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY enterprise ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 2996 (class 2604 OID 375601)
-- Name: enterprise published_date; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY enterprise ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 2987 (class 2604 OID 375602)
-- Name: information id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 2998 (class 2604 OID 375603)
-- Name: line id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY line ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 2999 (class 2604 OID 375604)
-- Name: line gid; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY line ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3000 (class 2604 OID 375605)
-- Name: line version_num; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY line ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3001 (class 2604 OID 375606)
-- Name: line published_date; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY line ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3003 (class 2604 OID 375607)
-- Name: site id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY site ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3004 (class 2604 OID 375608)
-- Name: site gid; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY site ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3005 (class 2604 OID 375609)
-- Name: site version_num; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY site ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3006 (class 2604 OID 375610)
-- Name: site published_date; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY site ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3009 (class 2604 OID 375611)
-- Name: zone id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY zone ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3010 (class 2604 OID 375612)
-- Name: zone gid; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY zone ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3011 (class 2604 OID 375613)
-- Name: zone version_num; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY zone ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3012 (class 2604 OID 375614)
-- Name: zone published_date; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY zone ALTER COLUMN published_date SET DEFAULT now();


SET search_path = inventory, pg_catalog;

--
-- TOC entry 3016 (class 2604 OID 375615)
-- Name: assembly version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY assembly ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3017 (class 2604 OID 375616)
-- Name: assembly published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY assembly ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3019 (class 2604 OID 375617)
-- Name: buyable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY buyable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3020 (class 2604 OID 375618)
-- Name: buyable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY buyable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3022 (class 2604 OID 375619)
-- Name: consumable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3023 (class 2604 OID 375620)
-- Name: consumable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3031 (class 2604 OID 375621)
-- Name: definition id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3034 (class 2604 OID 375622)
-- Name: information id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3035 (class 2604 OID 375623)
-- Name: part version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY part ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3036 (class 2604 OID 375624)
-- Name: part published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY part ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3038 (class 2604 OID 375625)
-- Name: phantom version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY phantom ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3039 (class 2604 OID 375626)
-- Name: phantom published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY phantom ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3041 (class 2604 OID 375627)
-- Name: primal version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3042 (class 2604 OID 375628)
-- Name: primal published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3044 (class 2604 OID 375629)
-- Name: producible version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY producible ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3045 (class 2604 OID 375630)
-- Name: producible published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY producible ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3047 (class 2604 OID 375631)
-- Name: salable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3048 (class 2604 OID 375632)
-- Name: salable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3050 (class 2604 OID 375633)
-- Name: storable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY storable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3051 (class 2604 OID 375634)
-- Name: storable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY storable ALTER COLUMN published_date SET DEFAULT now();


SET search_path = mbom, pg_catalog;

--
-- TOC entry 3054 (class 2604 OID 375635)
-- Name: consumable uom_code; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3061 (class 2604 OID 375636)
-- Name: definition id; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3064 (class 2604 OID 375637)
-- Name: information id; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3065 (class 2604 OID 375638)
-- Name: primal uom_code; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


SET search_path = operation, pg_catalog;

--
-- TOC entry 3069 (class 2604 OID 375639)
-- Name: information id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


SET search_path = personnel, pg_catalog;

--
-- TOC entry 3072 (class 2604 OID 375640)
-- Name: information id; Type: DEFAULT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


SET search_path = process, pg_catalog;

--
-- TOC entry 3075 (class 2604 OID 375641)
-- Name: consumable uom_code; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3076 (class 2604 OID 375642)
-- Name: consumable rationing_qty; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3082 (class 2604 OID 375643)
-- Name: definition id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3086 (class 2604 OID 375644)
-- Name: information id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3091 (class 2604 OID 375645)
-- Name: primal uom_code; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3092 (class 2604 OID 375646)
-- Name: primal rationing_qty; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3093 (class 2604 OID 375647)
-- Name: segment id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


SET search_path = product, pg_catalog;

--
-- TOC entry 3096 (class 2604 OID 375648)
-- Name: consumable uom_code; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3097 (class 2604 OID 375649)
-- Name: consumable rationing_qty; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3104 (class 2604 OID 375650)
-- Name: definition id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3108 (class 2604 OID 375651)
-- Name: information id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3113 (class 2604 OID 375652)
-- Name: primal uom_code; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3114 (class 2604 OID 375653)
-- Name: primal rationing_qty; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3117 (class 2604 OID 375654)
-- Name: segment id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


SET search_path = request, pg_catalog;

--
-- TOC entry 3122 (class 2604 OID 375655)
-- Name: head id; Type: DEFAULT; Schema: request; Owner: postgres
--

ALTER TABLE ONLY head ALTER COLUMN id SET DEFAULT nextval('head_id_seq'::regclass);


SET search_path = response, pg_catalog;

--
-- TOC entry 3129 (class 2604 OID 375656)
-- Name: head id; Type: DEFAULT; Schema: response; Owner: postgres
--

ALTER TABLE ONLY head ALTER COLUMN id SET DEFAULT nextval('head_id_seq'::regclass);


SET search_path = route, pg_catalog;

--
-- TOC entry 3136 (class 2604 OID 375657)
-- Name: definition id; Type: DEFAULT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3139 (class 2604 OID 375658)
-- Name: information id; Type: DEFAULT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3140 (class 2604 OID 375659)
-- Name: segment id; Type: DEFAULT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


SET search_path = stride, pg_catalog;

--
-- TOC entry 3144 (class 2604 OID 375660)
-- Name: consumable uom_code; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3145 (class 2604 OID 375661)
-- Name: consumable rationing_qty; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3151 (class 2604 OID 375662)
-- Name: definition id; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3154 (class 2604 OID 375663)
-- Name: information id; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 2957 (class 2604 OID 375664)
-- Name: pathway id; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY pathway ALTER COLUMN id SET DEFAULT nextval('pathway_id_seq'::regclass);


--
-- TOC entry 3159 (class 2604 OID 375665)
-- Name: primal uom_code; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3160 (class 2604 OID 375666)
-- Name: primal rationing_qty; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN rationing_qty SET DEFAULT 1;


SET search_path = tooling, pg_catalog;

--
-- TOC entry 3163 (class 2604 OID 375667)
-- Name: information id; Type: DEFAULT; Schema: tooling; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


SET search_path = uom, pg_catalog;

--
-- TOC entry 3164 (class 2604 OID 375668)
-- Name: assignment uom_role_id; Type: DEFAULT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY assignment ALTER COLUMN uom_role_id SET DEFAULT nextval('uom_role_uom_role_id_seq'::regclass);


SET search_path = assignement, pg_catalog;

--
-- TOC entry 3623 (class 0 OID 374838)
-- Dependencies: 250
-- Data for Name: achievement; Type: TABLE DATA; Schema: assignement; Owner: postgres
--



--
-- TOC entry 3624 (class 0 OID 374844)
-- Dependencies: 251
-- Data for Name: appointment; Type: TABLE DATA; Schema: assignement; Owner: postgres
--



--
-- TOC entry 3625 (class 0 OID 374850)
-- Dependencies: 252
-- Data for Name: head; Type: TABLE DATA; Schema: assignement; Owner: postgres
--



--
-- TOC entry 3804 (class 0 OID 0)
-- Dependencies: 253
-- Name: head_id_seq; Type: SEQUENCE SET; Schema: assignement; Owner: postgres
--

SELECT pg_catalog.setval('head_id_seq', 1, false);


SET search_path = binding, pg_catalog;

--
-- TOC entry 3627 (class 0 OID 374863)
-- Dependencies: 254
-- Data for Name: ebom_to_mbom; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 3628 (class 0 OID 374866)
-- Dependencies: 255
-- Data for Name: ebom_to_process; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 3629 (class 0 OID 374869)
-- Dependencies: 256
-- Data for Name: ebom_to_product; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 3630 (class 0 OID 374872)
-- Dependencies: 257
-- Data for Name: ebom_to_route; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 3631 (class 0 OID 374875)
-- Dependencies: 258
-- Data for Name: mbom_to_operation; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 3632 (class 0 OID 374878)
-- Dependencies: 259
-- Data for Name: mbom_to_process; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 3633 (class 0 OID 374881)
-- Dependencies: 260
-- Data for Name: mbom_to_product; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 3634 (class 0 OID 374884)
-- Dependencies: 261
-- Data for Name: operation_to_product; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 3635 (class 0 OID 374887)
-- Dependencies: 262
-- Data for Name: route_to_mbom; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 3636 (class 0 OID 374890)
-- Dependencies: 263
-- Data for Name: route_to_operation; Type: TABLE DATA; Schema: binding; Owner: postgres
--



SET search_path = common, pg_catalog;

--
-- TOC entry 3637 (class 0 OID 374893)
-- Dependencies: 264
-- Data for Name: document_abbrevation; Type: TABLE DATA; Schema: common; Owner: postgres
--

INSERT INTO document_abbrevation VALUES ('REQUEST', 'REQ');
INSERT INTO document_abbrevation VALUES ('RESPONSE', 'RES');


SET search_path = ebom, pg_catalog;

--
-- TOC entry 3639 (class 0 OID 374907)
-- Dependencies: 266
-- Data for Name: assembly; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 3640 (class 0 OID 374915)
-- Dependencies: 267
-- Data for Name: buyable; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 3638 (class 0 OID 374900)
-- Dependencies: 265
-- Data for Name: component; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 3641 (class 0 OID 374923)
-- Dependencies: 268
-- Data for Name: definition; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 3805 (class 0 OID 0)
-- Dependencies: 269
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: ebom; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 18, true);


--
-- TOC entry 3643 (class 0 OID 374936)
-- Dependencies: 270
-- Data for Name: information; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 3806 (class 0 OID 0)
-- Dependencies: 271
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: ebom; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 18, true);


--
-- TOC entry 3645 (class 0 OID 374946)
-- Dependencies: 272
-- Data for Name: part; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



SET search_path = equipment, pg_catalog;

--
-- TOC entry 3646 (class 0 OID 374954)
-- Dependencies: 273
-- Data for Name: information; Type: TABLE DATA; Schema: equipment; Owner: postgres
--



--
-- TOC entry 3807 (class 0 OID 0)
-- Dependencies: 274
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: equipment; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 6, true);


SET search_path = facility, pg_catalog;

--
-- TOC entry 3649 (class 0 OID 374973)
-- Dependencies: 276
-- Data for Name: area; Type: TABLE DATA; Schema: facility; Owner: postgres
--



--
-- TOC entry 3650 (class 0 OID 374983)
-- Dependencies: 277
-- Data for Name: enterprise; Type: TABLE DATA; Schema: facility; Owner: postgres
--



--
-- TOC entry 3648 (class 0 OID 374964)
-- Dependencies: 275
-- Data for Name: information; Type: TABLE DATA; Schema: facility; Owner: postgres
--



--
-- TOC entry 3808 (class 0 OID 0)
-- Dependencies: 278
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: facility; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, false);


--
-- TOC entry 3652 (class 0 OID 374995)
-- Dependencies: 279
-- Data for Name: line; Type: TABLE DATA; Schema: facility; Owner: postgres
--



--
-- TOC entry 3653 (class 0 OID 375005)
-- Dependencies: 280
-- Data for Name: site; Type: TABLE DATA; Schema: facility; Owner: postgres
--



--
-- TOC entry 3654 (class 0 OID 375016)
-- Dependencies: 281
-- Data for Name: zone; Type: TABLE DATA; Schema: facility; Owner: postgres
--



SET search_path = inventory, pg_catalog;

--
-- TOC entry 3656 (class 0 OID 375034)
-- Dependencies: 283
-- Data for Name: assembly; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 3657 (class 0 OID 375043)
-- Dependencies: 284
-- Data for Name: buyable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 3655 (class 0 OID 375026)
-- Dependencies: 282
-- Data for Name: conglomeration; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 3658 (class 0 OID 375052)
-- Dependencies: 285
-- Data for Name: consumable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO consumable VALUES ('22.25.050-001', 1, '22-25-050', '2018-05-01', 'CONSUMABLE', 'pcs', 20);


--
-- TOC entry 3659 (class 0 OID 375061)
-- Dependencies: 286
-- Data for Name: definition; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO definition VALUES (20, '74a80cf8-7eca-11e8-b722-2c4d54562450', '22-25-050', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2018-07-03 17:07:44.045821+03', 21, 'pcs');


--
-- TOC entry 3809 (class 0 OID 0)
-- Dependencies: 287
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 20, true);


--
-- TOC entry 3661 (class 0 OID 375075)
-- Dependencies: 288
-- Data for Name: information; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO information VALUES (21, '74a80938-7eca-11e8-b722-2c4d54562450', '22.25.050-001', '22-25-050', '2018-05-01');


--
-- TOC entry 3810 (class 0 OID 0)
-- Dependencies: 289
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 21, true);


--
-- TOC entry 3663 (class 0 OID 375085)
-- Dependencies: 290
-- Data for Name: measurement; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO measurement VALUES (20, 'pcs', 1);


--
-- TOC entry 3664 (class 0 OID 375091)
-- Dependencies: 291
-- Data for Name: part; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO part VALUES ('22.25.050-001', 1, '22-25-050', '2018-05-01', 'PART', 'pcs', 20);


--
-- TOC entry 3665 (class 0 OID 375100)
-- Dependencies: 292
-- Data for Name: phantom; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 3666 (class 0 OID 375109)
-- Dependencies: 293
-- Data for Name: primal; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 3667 (class 0 OID 375118)
-- Dependencies: 294
-- Data for Name: producible; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO producible VALUES ('22.25.050-001', 1, '22-25-050', '2018-05-01', 'PRODUCIBLE', 'pcs', 20);


--
-- TOC entry 3668 (class 0 OID 375127)
-- Dependencies: 295
-- Data for Name: salable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 3669 (class 0 OID 375136)
-- Dependencies: 296
-- Data for Name: storable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO storable VALUES ('22.25.050-001', 1, '22-25-050', '2018-05-01', 'STORABLE', 'pcs', 20);


SET search_path = mbom, pg_catalog;

--
-- TOC entry 3671 (class 0 OID 375152)
-- Dependencies: 298
-- Data for Name: consumable; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 3672 (class 0 OID 375160)
-- Dependencies: 299
-- Data for Name: definition; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 3811 (class 0 OID 0)
-- Dependencies: 300
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: mbom; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 18, true);


--
-- TOC entry 3674 (class 0 OID 375173)
-- Dependencies: 301
-- Data for Name: information; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 3812 (class 0 OID 0)
-- Dependencies: 302
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: mbom; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 18, true);


--
-- TOC entry 3670 (class 0 OID 375145)
-- Dependencies: 297
-- Data for Name: material; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 3676 (class 0 OID 375183)
-- Dependencies: 303
-- Data for Name: primal; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



SET search_path = operation, pg_catalog;

--
-- TOC entry 3677 (class 0 OID 375191)
-- Dependencies: 304
-- Data for Name: information; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3813 (class 0 OID 0)
-- Dependencies: 305
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 9, true);


SET search_path = personnel, pg_catalog;

--
-- TOC entry 3679 (class 0 OID 375201)
-- Dependencies: 306
-- Data for Name: information; Type: TABLE DATA; Schema: personnel; Owner: postgres
--



--
-- TOC entry 3814 (class 0 OID 0)
-- Dependencies: 307
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: personnel; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 9, true);


SET search_path = process, pg_catalog;

--
-- TOC entry 3682 (class 0 OID 375219)
-- Dependencies: 309
-- Data for Name: consumable; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3683 (class 0 OID 375227)
-- Dependencies: 310
-- Data for Name: definition; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3815 (class 0 OID 0)
-- Dependencies: 311
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 18, true);


--
-- TOC entry 3685 (class 0 OID 375240)
-- Dependencies: 312
-- Data for Name: dependency; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3686 (class 0 OID 375244)
-- Dependencies: 313
-- Data for Name: equipment; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3687 (class 0 OID 375250)
-- Dependencies: 314
-- Data for Name: information; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3816 (class 0 OID 0)
-- Dependencies: 315
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 18, true);


--
-- TOC entry 3681 (class 0 OID 375211)
-- Dependencies: 308
-- Data for Name: material; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3689 (class 0 OID 375260)
-- Dependencies: 316
-- Data for Name: personnel; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3690 (class 0 OID 375270)
-- Dependencies: 317
-- Data for Name: primal; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3691 (class 0 OID 375278)
-- Dependencies: 318
-- Data for Name: segment; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3817 (class 0 OID 0)
-- Dependencies: 319
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 81, true);


--
-- TOC entry 3693 (class 0 OID 375286)
-- Dependencies: 320
-- Data for Name: tooling; Type: TABLE DATA; Schema: process; Owner: postgres
--



SET search_path = product, pg_catalog;

--
-- TOC entry 3695 (class 0 OID 375300)
-- Dependencies: 322
-- Data for Name: consumable; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 3696 (class 0 OID 375309)
-- Dependencies: 323
-- Data for Name: definition; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 3818 (class 0 OID 0)
-- Dependencies: 324
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 1, false);


--
-- TOC entry 3698 (class 0 OID 375322)
-- Dependencies: 325
-- Data for Name: dependency; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 3699 (class 0 OID 375326)
-- Dependencies: 326
-- Data for Name: equipment; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 3700 (class 0 OID 375332)
-- Dependencies: 327
-- Data for Name: information; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 3819 (class 0 OID 0)
-- Dependencies: 328
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, false);


--
-- TOC entry 3694 (class 0 OID 375292)
-- Dependencies: 321
-- Data for Name: material; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 3702 (class 0 OID 375342)
-- Dependencies: 329
-- Data for Name: personnel; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 3703 (class 0 OID 375352)
-- Dependencies: 330
-- Data for Name: primal; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 3704 (class 0 OID 375361)
-- Dependencies: 331
-- Data for Name: segment; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 3820 (class 0 OID 0)
-- Dependencies: 332
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 1, false);


--
-- TOC entry 3706 (class 0 OID 375370)
-- Dependencies: 333
-- Data for Name: tooling; Type: TABLE DATA; Schema: product; Owner: postgres
--



SET search_path = request, pg_catalog;

--
-- TOC entry 3707 (class 0 OID 375376)
-- Dependencies: 334
-- Data for Name: body; Type: TABLE DATA; Schema: request; Owner: postgres
--



--
-- TOC entry 3708 (class 0 OID 375382)
-- Dependencies: 335
-- Data for Name: head; Type: TABLE DATA; Schema: request; Owner: postgres
--



--
-- TOC entry 3821 (class 0 OID 0)
-- Dependencies: 336
-- Name: head_id_seq; Type: SEQUENCE SET; Schema: request; Owner: postgres
--

SELECT pg_catalog.setval('head_id_seq', 1, false);


--
-- TOC entry 3710 (class 0 OID 375395)
-- Dependencies: 337
-- Data for Name: numerator; Type: TABLE DATA; Schema: request; Owner: postgres
--



SET search_path = response, pg_catalog;

--
-- TOC entry 3711 (class 0 OID 375402)
-- Dependencies: 338
-- Data for Name: body; Type: TABLE DATA; Schema: response; Owner: postgres
--



--
-- TOC entry 3712 (class 0 OID 375408)
-- Dependencies: 339
-- Data for Name: head; Type: TABLE DATA; Schema: response; Owner: postgres
--



--
-- TOC entry 3822 (class 0 OID 0)
-- Dependencies: 340
-- Name: head_id_seq; Type: SEQUENCE SET; Schema: response; Owner: postgres
--

SELECT pg_catalog.setval('head_id_seq', 1, false);


--
-- TOC entry 3714 (class 0 OID 375420)
-- Dependencies: 341
-- Data for Name: numerator; Type: TABLE DATA; Schema: response; Owner: postgres
--



SET search_path = route, pg_catalog;

--
-- TOC entry 3715 (class 0 OID 375427)
-- Dependencies: 342
-- Data for Name: definition; Type: TABLE DATA; Schema: route; Owner: postgres
--



--
-- TOC entry 3823 (class 0 OID 0)
-- Dependencies: 343
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: route; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 1, false);


--
-- TOC entry 3717 (class 0 OID 375440)
-- Dependencies: 344
-- Data for Name: information; Type: TABLE DATA; Schema: route; Owner: postgres
--



--
-- TOC entry 3824 (class 0 OID 0)
-- Dependencies: 345
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: route; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, false);


--
-- TOC entry 3719 (class 0 OID 375450)
-- Dependencies: 346
-- Data for Name: segment; Type: TABLE DATA; Schema: route; Owner: postgres
--



--
-- TOC entry 3825 (class 0 OID 0)
-- Dependencies: 347
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: route; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 1, false);


--
-- TOC entry 3721 (class 0 OID 375459)
-- Dependencies: 348
-- Data for Name: weight; Type: TABLE DATA; Schema: route; Owner: postgres
--



SET search_path = schedule, pg_catalog;

--
-- TOC entry 3722 (class 0 OID 375465)
-- Dependencies: 349
-- Data for Name: calendar; Type: TABLE DATA; Schema: schedule; Owner: postgres
--



SET search_path = stride, pg_catalog;

--
-- TOC entry 3724 (class 0 OID 375476)
-- Dependencies: 351
-- Data for Name: consumable; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 3725 (class 0 OID 375484)
-- Dependencies: 352
-- Data for Name: definition; Type: TABLE DATA; Schema: stride; Owner: postgres
--

INSERT INTO definition VALUES (1, 'e9860bc4-7eca-11e8-afb8-2c4d54562450', '22.25.050-001', 1, '2018-01-01', NULL, NULL, 'PROPOSED', '2018-07-03 17:11:00.116154+03', 1, 'O1');
INSERT INTO definition VALUES (2, 'f3acc12e-7eca-11e8-afb8-2c4d54562450', '22.25.050-001', 1, '2018-01-01', NULL, NULL, 'PROPOSED', '2018-07-03 17:11:17.14767+03', 2, 'O2');
INSERT INTO definition VALUES (3, 'fa4d7302-7eca-11e8-afb8-2c4d54562450', '22.25.050-001', 1, '2018-01-01', NULL, NULL, 'PROPOSED', '2018-07-03 17:11:28.267181+03', 3, 'O3');
INSERT INTO definition VALUES (4, '043031ac-7ecb-11e8-afb8-2c4d54562450', '22.25.050-001', 1, '2018-01-01', NULL, NULL, 'PROPOSED', '2018-07-03 17:11:44.85244+03', 4, 'O4');


--
-- TOC entry 3826 (class 0 OID 0)
-- Dependencies: 353
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: stride; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 6, true);


--
-- TOC entry 3727 (class 0 OID 375497)
-- Dependencies: 354
-- Data for Name: descendant; Type: TABLE DATA; Schema: stride; Owner: postgres
--

INSERT INTO descendant VALUES (1, '22.25.050-001', 1, 1, 2, 'O2');
INSERT INTO descendant VALUES (2, '22.25.050-001', 1, 1, 3, 'O3');
INSERT INTO descendant VALUES (3, '22.25.050-001', 1, 1, 4, 'O4');


--
-- TOC entry 3728 (class 0 OID 375503)
-- Dependencies: 355
-- Data for Name: equipment; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 3729 (class 0 OID 375509)
-- Dependencies: 356
-- Data for Name: facility; Type: TABLE DATA; Schema: stride; Owner: postgres
--

INSERT INTO facility VALUES (1, 'A1-01');
INSERT INTO facility VALUES (3, 'A1-01');
INSERT INTO facility VALUES (2, 'A1-01');
INSERT INTO facility VALUES (4, 'A1-01');
INSERT INTO facility VALUES (3, 'B2-02');
INSERT INTO facility VALUES (3, 'C3-03');
INSERT INTO facility VALUES (4, 'C3-03');
INSERT INTO facility VALUES (2, 'B2-02');


--
-- TOC entry 3730 (class 0 OID 375515)
-- Dependencies: 357
-- Data for Name: information; Type: TABLE DATA; Schema: stride; Owner: postgres
--

INSERT INTO information VALUES (1, '964a7710-7eca-11e8-aed7-2c4d54562450', '22.25.050-001', '2018-01-01', '22.25.050-001', 1, 1, 1, 'O1');
INSERT INTO information VALUES (2, 'aac5daea-7eca-11e8-aed7-2c4d54562450', '22.25.050-001', '2018-01-01', '22.25.050-001', 1, 1, 2, 'O2');
INSERT INTO information VALUES (3, 'bb0bf24a-7eca-11e8-aed7-2c4d54562450', '22.25.050-001', '2018-01-01', '22.25.050-001', 1, 1, 3, 'O3');
INSERT INTO information VALUES (4, 'c554e81a-7eca-11e8-aed7-2c4d54562450', '22.25.050-001', '2018-01-01', '22.25.050-001', 1, 1, 4, 'O4');


--
-- TOC entry 3827 (class 0 OID 0)
-- Dependencies: 358
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: stride; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 8, true);


--
-- TOC entry 3723 (class 0 OID 375468)
-- Dependencies: 350
-- Data for Name: material; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 3622 (class 0 OID 374773)
-- Dependencies: 249
-- Data for Name: pathway; Type: TABLE DATA; Schema: stride; Owner: postgres
--

INSERT INTO pathway VALUES (140, '5e6ede67-d686-4e34-9574-ac884b779d0f', '{"(22.25.050-001,1,1,4,A1-01)","(22.25.050-001,1,1,3,A1-01)","(22.25.050-001,1,1,2,A1-01)","(22.25.050-001,1,1,1,A1-01)"}');
INSERT INTO pathway VALUES (143, '5e6ede67-d686-4e34-9574-ac884b779d0f', '{"(22.25.050-001,1,1,4,A1-01)","(22.25.050-001,1,1,3,A1-01)","(22.25.050-001,1,1,2,B2-02)","(22.25.050-001,1,1,1,A1-01)"}');
INSERT INTO pathway VALUES (141, '5e6ede67-d686-4e34-9574-ac884b779d0f', '{"(22.25.050-001,1,1,4,A1-01)","(22.25.050-001,1,1,3,B2-02)","(22.25.050-001,1,1,2,A1-01)","(22.25.050-001,1,1,1,A1-01)"}');
INSERT INTO pathway VALUES (144, '5e6ede67-d686-4e34-9574-ac884b779d0f', '{"(22.25.050-001,1,1,4,A1-01)","(22.25.050-001,1,1,3,B2-02)","(22.25.050-001,1,1,2,B2-02)","(22.25.050-001,1,1,1,A1-01)"}');
INSERT INTO pathway VALUES (142, '5e6ede67-d686-4e34-9574-ac884b779d0f', '{"(22.25.050-001,1,1,4,A1-01)","(22.25.050-001,1,1,3,C3-03)","(22.25.050-001,1,1,2,A1-01)","(22.25.050-001,1,1,1,A1-01)"}');
INSERT INTO pathway VALUES (145, '5e6ede67-d686-4e34-9574-ac884b779d0f', '{"(22.25.050-001,1,1,4,A1-01)","(22.25.050-001,1,1,3,C3-03)","(22.25.050-001,1,1,2,B2-02)","(22.25.050-001,1,1,1,A1-01)"}');
INSERT INTO pathway VALUES (146, '5e6ede67-d686-4e34-9574-ac884b779d0f', '{"(22.25.050-001,1,1,4,C3-03)","(22.25.050-001,1,1,3,A1-01)","(22.25.050-001,1,1,2,A1-01)","(22.25.050-001,1,1,1,A1-01)"}');
INSERT INTO pathway VALUES (149, '5e6ede67-d686-4e34-9574-ac884b779d0f', '{"(22.25.050-001,1,1,4,C3-03)","(22.25.050-001,1,1,3,A1-01)","(22.25.050-001,1,1,2,B2-02)","(22.25.050-001,1,1,1,A1-01)"}');
INSERT INTO pathway VALUES (147, '5e6ede67-d686-4e34-9574-ac884b779d0f', '{"(22.25.050-001,1,1,4,C3-03)","(22.25.050-001,1,1,3,B2-02)","(22.25.050-001,1,1,2,A1-01)","(22.25.050-001,1,1,1,A1-01)"}');
INSERT INTO pathway VALUES (150, '5e6ede67-d686-4e34-9574-ac884b779d0f', '{"(22.25.050-001,1,1,4,C3-03)","(22.25.050-001,1,1,3,B2-02)","(22.25.050-001,1,1,2,B2-02)","(22.25.050-001,1,1,1,A1-01)"}');
INSERT INTO pathway VALUES (148, '5e6ede67-d686-4e34-9574-ac884b779d0f', '{"(22.25.050-001,1,1,4,C3-03)","(22.25.050-001,1,1,3,C3-03)","(22.25.050-001,1,1,2,A1-01)","(22.25.050-001,1,1,1,A1-01)"}');
INSERT INTO pathway VALUES (151, '5e6ede67-d686-4e34-9574-ac884b779d0f', '{"(22.25.050-001,1,1,4,C3-03)","(22.25.050-001,1,1,3,C3-03)","(22.25.050-001,1,1,2,B2-02)","(22.25.050-001,1,1,1,A1-01)"}');


--
-- TOC entry 3828 (class 0 OID 0)
-- Dependencies: 359
-- Name: pathway_id_seq; Type: SEQUENCE SET; Schema: stride; Owner: postgres
--

SELECT pg_catalog.setval('pathway_id_seq', 151, true);


--
-- TOC entry 3733 (class 0 OID 375527)
-- Dependencies: 360
-- Data for Name: personnel; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 3734 (class 0 OID 375537)
-- Dependencies: 361
-- Data for Name: primal; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 3735 (class 0 OID 375545)
-- Dependencies: 362
-- Data for Name: tooling; Type: TABLE DATA; Schema: stride; Owner: postgres
--



SET search_path = tooling, pg_catalog;

--
-- TOC entry 3736 (class 0 OID 375566)
-- Dependencies: 366
-- Data for Name: information; Type: TABLE DATA; Schema: tooling; Owner: postgres
--



--
-- TOC entry 3829 (class 0 OID 0)
-- Dependencies: 367
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: tooling; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 9, true);


SET search_path = uom, pg_catalog;

--
-- TOC entry 3738 (class 0 OID 375576)
-- Dependencies: 368
-- Data for Name: assignment; Type: TABLE DATA; Schema: uom; Owner: postgres
--



--
-- TOC entry 3739 (class 0 OID 375579)
-- Dependencies: 369
-- Data for Name: information; Type: TABLE DATA; Schema: uom; Owner: postgres
--

INSERT INTO information VALUES ('kg', 'MASS', 'kg', 1);
INSERT INTO information VALUES ('m', 'LENGHT', 'm', 1);
INSERT INTO information VALUES ('pcs', 'QUANTITY', 'pcs', 1);
INSERT INTO information VALUES ('g', 'MASS', 'kg', 0.001);
INSERT INTO information VALUES ('t', 'MASS', 'kg', 1000);
INSERT INTO information VALUES ('mm', 'LENGHT', 'm', 0.001);
INSERT INTO information VALUES ('km', 'LENGHT', 'm', 1000);
INSERT INTO information VALUES ('cm', 'LENGHT', 'm', 0.01);
INSERT INTO information VALUES ('l', 'VOLUME', 'l', 1);
INSERT INTO information VALUES ('ml', 'VOLUME', 'l', 0.001);


--
-- TOC entry 3830 (class 0 OID 0)
-- Dependencies: 370
-- Name: uom_role_uom_role_id_seq; Type: SEQUENCE SET; Schema: uom; Owner: postgres
--

SELECT pg_catalog.setval('uom_role_uom_role_id_seq', 1, false);


SET search_path = assignement, pg_catalog;

--
-- TOC entry 3168 (class 2606 OID 375670)
-- Name: achievement achievement_pkey; Type: CONSTRAINT; Schema: assignement; Owner: postgres
--

ALTER TABLE ONLY achievement
    ADD CONSTRAINT achievement_pkey PRIMARY KEY (head_id, stride_gid);


--
-- TOC entry 3170 (class 2606 OID 375672)
-- Name: appointment appointment_pkey; Type: CONSTRAINT; Schema: assignement; Owner: postgres
--

ALTER TABLE ONLY appointment
    ADD CONSTRAINT appointment_pkey PRIMARY KEY (head_id, stride_gid);


--
-- TOC entry 3172 (class 2606 OID 375674)
-- Name: head head_gid_key; Type: CONSTRAINT; Schema: assignement; Owner: postgres
--

ALTER TABLE ONLY head
    ADD CONSTRAINT head_gid_key UNIQUE (gid);


--
-- TOC entry 3174 (class 2606 OID 375676)
-- Name: head head_pkey; Type: CONSTRAINT; Schema: assignement; Owner: postgres
--

ALTER TABLE ONLY head
    ADD CONSTRAINT head_pkey PRIMARY KEY (id);


SET search_path = binding, pg_catalog;

--
-- TOC entry 3176 (class 2606 OID 375678)
-- Name: ebom_to_mbom ebom_to_mbom_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY ebom_to_mbom
    ADD CONSTRAINT ebom_to_mbom_pkey PRIMARY KEY (ebom_id, mbom_id);


--
-- TOC entry 3178 (class 2606 OID 375680)
-- Name: ebom_to_process ebom_to_process_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY ebom_to_process
    ADD CONSTRAINT ebom_to_process_pkey PRIMARY KEY (ebom_id, process_id);


--
-- TOC entry 3180 (class 2606 OID 375682)
-- Name: ebom_to_product ebom_to_product_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY ebom_to_product
    ADD CONSTRAINT ebom_to_product_pkey PRIMARY KEY (ebom_id, product_id);


--
-- TOC entry 3182 (class 2606 OID 375684)
-- Name: ebom_to_route ebom_to_route_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY ebom_to_route
    ADD CONSTRAINT ebom_to_route_pkey PRIMARY KEY (ebom_id, route_id);


--
-- TOC entry 3184 (class 2606 OID 375686)
-- Name: mbom_to_operation mbom_to_operation_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY mbom_to_operation
    ADD CONSTRAINT mbom_to_operation_pkey PRIMARY KEY (mbom_id, operation_id);


--
-- TOC entry 3186 (class 2606 OID 375688)
-- Name: mbom_to_process mbom_to_process_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY mbom_to_process
    ADD CONSTRAINT mbom_to_process_pkey PRIMARY KEY (mbom_id, process_id);


--
-- TOC entry 3188 (class 2606 OID 375690)
-- Name: mbom_to_product mbom_to_product_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY mbom_to_product
    ADD CONSTRAINT mbom_to_product_pkey PRIMARY KEY (mbom_id, product_id);


--
-- TOC entry 3190 (class 2606 OID 375692)
-- Name: operation_to_product operation_to_product_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY operation_to_product
    ADD CONSTRAINT operation_to_product_pkey PRIMARY KEY (operation_id, product_id);


--
-- TOC entry 3192 (class 2606 OID 375694)
-- Name: route_to_mbom route_to_mbom_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY route_to_mbom
    ADD CONSTRAINT route_to_mbom_pkey PRIMARY KEY (route_id, mbom_id);


--
-- TOC entry 3194 (class 2606 OID 375696)
-- Name: route_to_operation route_to_operation_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY route_to_operation
    ADD CONSTRAINT route_to_operation_pkey PRIMARY KEY (route_id, operation_id);


SET search_path = common, pg_catalog;

--
-- TOC entry 3196 (class 2606 OID 375698)
-- Name: document_abbrevation document_abbrevation_pkey; Type: CONSTRAINT; Schema: common; Owner: postgres
--

ALTER TABLE ONLY document_abbrevation
    ADD CONSTRAINT document_abbrevation_pkey PRIMARY KEY (doctype);


SET search_path = ebom, pg_catalog;

--
-- TOC entry 3200 (class 2606 OID 375700)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3202 (class 2606 OID 375702)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3198 (class 2606 OID 375704)
-- Name: component component_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY component
    ADD CONSTRAINT component_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3204 (class 2606 OID 375706)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 3206 (class 2606 OID 375708)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 3208 (class 2606 OID 375710)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3210 (class 2606 OID 375712)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 3212 (class 2606 OID 375714)
-- Name: information information_part_code_version_num_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_part_code_version_num_key UNIQUE (part_code, version_num);


--
-- TOC entry 3214 (class 2606 OID 375716)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3216 (class 2606 OID 375718)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_pkey PRIMARY KEY (definition_id, part_code);


SET search_path = equipment, pg_catalog;

--
-- TOC entry 3218 (class 2606 OID 375720)
-- Name: information information_equipment_code_version_num_key; Type: CONSTRAINT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_equipment_code_version_num_key UNIQUE (equipment_code, version_num);


--
-- TOC entry 3220 (class 2606 OID 375722)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 3222 (class 2606 OID 375724)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


SET search_path = facility, pg_catalog;

--
-- TOC entry 3226 (class 2606 OID 375726)
-- Name: area area_facility_code_key; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY area
    ADD CONSTRAINT area_facility_code_key UNIQUE (facility_code);


--
-- TOC entry 3228 (class 2606 OID 375728)
-- Name: area area_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY area
    ADD CONSTRAINT area_pkey PRIMARY KEY (id);


--
-- TOC entry 3230 (class 2606 OID 375730)
-- Name: enterprise enterprise_facility_code_key; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY enterprise
    ADD CONSTRAINT enterprise_facility_code_key UNIQUE (facility_code);


--
-- TOC entry 3232 (class 2606 OID 375732)
-- Name: enterprise enterprise_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY enterprise
    ADD CONSTRAINT enterprise_pkey PRIMARY KEY (id);


--
-- TOC entry 3224 (class 2606 OID 375734)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3234 (class 2606 OID 375736)
-- Name: line line_facility_code_key; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY line
    ADD CONSTRAINT line_facility_code_key UNIQUE (facility_code);


--
-- TOC entry 3236 (class 2606 OID 375738)
-- Name: line line_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY line
    ADD CONSTRAINT line_pkey PRIMARY KEY (id);


--
-- TOC entry 3238 (class 2606 OID 375740)
-- Name: site site_facility_code_key; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY site
    ADD CONSTRAINT site_facility_code_key UNIQUE (facility_code);


--
-- TOC entry 3240 (class 2606 OID 375742)
-- Name: site site_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY site
    ADD CONSTRAINT site_pkey PRIMARY KEY (id);


--
-- TOC entry 3242 (class 2606 OID 375744)
-- Name: zone zone_facility_code_key; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY zone
    ADD CONSTRAINT zone_facility_code_key UNIQUE (facility_code);


--
-- TOC entry 3244 (class 2606 OID 375746)
-- Name: zone zone_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY zone
    ADD CONSTRAINT zone_pkey PRIMARY KEY (id);


SET search_path = inventory, pg_catalog;

--
-- TOC entry 3248 (class 2606 OID 375748)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3250 (class 2606 OID 375750)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3246 (class 2606 OID 375752)
-- Name: conglomeration conglomeration_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY conglomeration
    ADD CONSTRAINT conglomeration_pkey PRIMARY KEY (part_code, version_num, inventory_type);


--
-- TOC entry 3252 (class 2606 OID 375754)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3254 (class 2606 OID 375756)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 3256 (class 2606 OID 375758)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 3258 (class 2606 OID 375760)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3260 (class 2606 OID 375762)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 3262 (class 2606 OID 375764)
-- Name: information information_part_code; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_part_code UNIQUE (part_code);


--
-- TOC entry 3264 (class 2606 OID 375766)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3266 (class 2606 OID 375768)
-- Name: measurement measurement_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY measurement
    ADD CONSTRAINT measurement_pkey PRIMARY KEY (definition_id, uom_code);


--
-- TOC entry 3268 (class 2606 OID 375770)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3270 (class 2606 OID 375772)
-- Name: phantom phantom_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY phantom
    ADD CONSTRAINT phantom_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3272 (class 2606 OID 375774)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3274 (class 2606 OID 375776)
-- Name: producible producible_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY producible
    ADD CONSTRAINT producible_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3276 (class 2606 OID 375778)
-- Name: salable salable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable
    ADD CONSTRAINT salable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3278 (class 2606 OID 375780)
-- Name: storable storable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY storable
    ADD CONSTRAINT storable_pkey PRIMARY KEY (part_code, version_num);


SET search_path = mbom, pg_catalog;

--
-- TOC entry 3282 (class 2606 OID 375782)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3284 (class 2606 OID 375784)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 3286 (class 2606 OID 375786)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 3288 (class 2606 OID 375788)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3290 (class 2606 OID 375790)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3280 (class 2606 OID 375792)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY material
    ADD CONSTRAINT material_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3292 (class 2606 OID 375794)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (definition_id, part_code);


SET search_path = operation, pg_catalog;

--
-- TOC entry 3294 (class 2606 OID 375796)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 3296 (class 2606 OID 375798)
-- Name: information information_operation_code_version_num_key; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_operation_code_version_num_key UNIQUE (operation_code, version_num);


--
-- TOC entry 3298 (class 2606 OID 375800)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


SET search_path = personnel, pg_catalog;

--
-- TOC entry 3300 (class 2606 OID 375802)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 3302 (class 2606 OID 375804)
-- Name: information information_personnel_code_version_num_key; Type: CONSTRAINT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_personnel_code_version_num_key UNIQUE (personnel_code, version_num);


--
-- TOC entry 3304 (class 2606 OID 375806)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


SET search_path = process, pg_catalog;

--
-- TOC entry 3308 (class 2606 OID 375808)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3310 (class 2606 OID 375810)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3312 (class 2606 OID 375812)
-- Name: definition definition_version_num_information_id_key; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_version_num_information_id_key UNIQUE (version_num, information_id);


--
-- TOC entry 3314 (class 2606 OID 375814)
-- Name: dependency dependency_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_pkey PRIMARY KEY (ancestor, descendant);


--
-- TOC entry 3316 (class 2606 OID 375816)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, equipment_code);


--
-- TOC entry 3318 (class 2606 OID 375818)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3306 (class 2606 OID 375820)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY material
    ADD CONSTRAINT material_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3320 (class 2606 OID 375822)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, personnel_code);


--
-- TOC entry 3322 (class 2606 OID 375824)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3324 (class 2606 OID 375826)
-- Name: segment segment_definition_id_operation_code_key; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_definition_id_operation_code_key UNIQUE (definition_id, operation_code);


--
-- TOC entry 3326 (class 2606 OID 375828)
-- Name: segment segment_gid_key; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_gid_key UNIQUE (gid);


--
-- TOC entry 3328 (class 2606 OID 375830)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 3330 (class 2606 OID 375832)
-- Name: tooling tooling_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY tooling
    ADD CONSTRAINT tooling_pkey PRIMARY KEY (segment_id, tooling_code);


SET search_path = product, pg_catalog;

--
-- TOC entry 3334 (class 2606 OID 375834)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3336 (class 2606 OID 375836)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3338 (class 2606 OID 375838)
-- Name: definition definition_version_num_information_id_key; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_version_num_information_id_key UNIQUE (version_num, information_id);


--
-- TOC entry 3340 (class 2606 OID 375840)
-- Name: dependency dependency_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_pkey PRIMARY KEY (ancestor, descendant);


--
-- TOC entry 3342 (class 2606 OID 375842)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, equipment_code);


--
-- TOC entry 3344 (class 2606 OID 375844)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3332 (class 2606 OID 375846)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY material
    ADD CONSTRAINT material_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3346 (class 2606 OID 375848)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, personnel_code);


--
-- TOC entry 3348 (class 2606 OID 375850)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3350 (class 2606 OID 375852)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 3352 (class 2606 OID 375854)
-- Name: tooling tooling_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY tooling
    ADD CONSTRAINT tooling_pkey PRIMARY KEY (segment_id, tooling_code);


SET search_path = request, pg_catalog;

--
-- TOC entry 3354 (class 2606 OID 375856)
-- Name: body body_pkey; Type: CONSTRAINT; Schema: request; Owner: postgres
--

ALTER TABLE ONLY body
    ADD CONSTRAINT body_pkey PRIMARY KEY (head_id, stride_gid);


--
-- TOC entry 3356 (class 2606 OID 375858)
-- Name: head head_gid_key; Type: CONSTRAINT; Schema: request; Owner: postgres
--

ALTER TABLE ONLY head
    ADD CONSTRAINT head_gid_key UNIQUE (gid);


--
-- TOC entry 3358 (class 2606 OID 375860)
-- Name: head head_pkey; Type: CONSTRAINT; Schema: request; Owner: postgres
--

ALTER TABLE ONLY head
    ADD CONSTRAINT head_pkey PRIMARY KEY (id);


--
-- TOC entry 3360 (class 2606 OID 375862)
-- Name: numerator numerator_pkey; Type: CONSTRAINT; Schema: request; Owner: postgres
--

ALTER TABLE ONLY numerator
    ADD CONSTRAINT numerator_pkey PRIMARY KEY (facility_code, julianized_week);


SET search_path = response, pg_catalog;

--
-- TOC entry 3362 (class 2606 OID 375864)
-- Name: body body_pkey; Type: CONSTRAINT; Schema: response; Owner: postgres
--

ALTER TABLE ONLY body
    ADD CONSTRAINT body_pkey PRIMARY KEY (head_id, stride_gid);


--
-- TOC entry 3364 (class 2606 OID 375866)
-- Name: head head_gid_key; Type: CONSTRAINT; Schema: response; Owner: postgres
--

ALTER TABLE ONLY head
    ADD CONSTRAINT head_gid_key UNIQUE (gid);


--
-- TOC entry 3366 (class 2606 OID 375868)
-- Name: head head_pkey; Type: CONSTRAINT; Schema: response; Owner: postgres
--

ALTER TABLE ONLY head
    ADD CONSTRAINT head_pkey PRIMARY KEY (id);


--
-- TOC entry 3368 (class 2606 OID 375870)
-- Name: numerator numerator_pkey; Type: CONSTRAINT; Schema: response; Owner: postgres
--

ALTER TABLE ONLY numerator
    ADD CONSTRAINT numerator_pkey PRIMARY KEY (facility_code, julianized_week);


SET search_path = route, pg_catalog;

--
-- TOC entry 3370 (class 2606 OID 375872)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3372 (class 2606 OID 375874)
-- Name: definition definition_version_num_information_id_key; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_version_num_information_id_key UNIQUE (version_num, information_id);


--
-- TOC entry 3382 (class 2606 OID 375876)
-- Name: weight descendant_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY weight
    ADD CONSTRAINT descendant_pkey PRIMARY KEY (definition_id);


--
-- TOC entry 3374 (class 2606 OID 375878)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3376 (class 2606 OID 375880)
-- Name: segment segment_facility_code_ancestor_descendant_key; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_facility_code_ancestor_descendant_key UNIQUE (facility_code, ancestor, descendant);


--
-- TOC entry 3378 (class 2606 OID 375882)
-- Name: segment segment_gid_key; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_gid_key UNIQUE (gid);


--
-- TOC entry 3380 (class 2606 OID 375884)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


SET search_path = schedule, pg_catalog;

--
-- TOC entry 3384 (class 2606 OID 375886)
-- Name: calendar calendar_pkey; Type: CONSTRAINT; Schema: schedule; Owner: postgres
--

ALTER TABLE ONLY calendar
    ADD CONSTRAINT calendar_pkey PRIMARY KEY (calendar_date);


SET search_path = stride, pg_catalog;

--
-- TOC entry 3388 (class 2606 OID 375888)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 3390 (class 2606 OID 375890)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3392 (class 2606 OID 375892)
-- Name: definition definition_version_num_information_id_key; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_version_num_information_id_key UNIQUE (version_num, information_id);


--
-- TOC entry 3394 (class 2606 OID 375894)
-- Name: descendant descendant_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY descendant
    ADD CONSTRAINT descendant_pkey PRIMARY KEY (definition_id);


--
-- TOC entry 3396 (class 2606 OID 375896)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (information_id, equipment_code);


--
-- TOC entry 3398 (class 2606 OID 375898)
-- Name: facility facility_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY facility
    ADD CONSTRAINT facility_pkey PRIMARY KEY (definition_id, facility_code);


--
-- TOC entry 3400 (class 2606 OID 375900)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3386 (class 2606 OID 375902)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY material
    ADD CONSTRAINT material_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 3166 (class 2606 OID 375904)
-- Name: pathway pathway_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY pathway
    ADD CONSTRAINT pathway_pkey PRIMARY KEY (id);


--
-- TOC entry 3402 (class 2606 OID 375906)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (information_id, personnel_code);


--
-- TOC entry 3404 (class 2606 OID 375908)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 3406 (class 2606 OID 375910)
-- Name: tooling tooling_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY tooling
    ADD CONSTRAINT tooling_pkey PRIMARY KEY (information_id, tooling_code);


SET search_path = tooling, pg_catalog;

--
-- TOC entry 3408 (class 2606 OID 375912)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: tooling; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 3410 (class 2606 OID 375914)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: tooling; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3412 (class 2606 OID 375916)
-- Name: information information_tooling_code_version_num_key; Type: CONSTRAINT; Schema: tooling; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_tooling_code_version_num_key UNIQUE (tooling_code, version_num);


SET search_path = uom, pg_catalog;

--
-- TOC entry 3418 (class 2606 OID 375918)
-- Name: information uom_pkey; Type: CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT uom_pkey PRIMARY KEY (uom_code);


--
-- TOC entry 3414 (class 2606 OID 375920)
-- Name: assignment uom_role_pkey; Type: CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY assignment
    ADD CONSTRAINT uom_role_pkey PRIMARY KEY (uom_role_id);


--
-- TOC entry 3416 (class 2606 OID 375922)
-- Name: assignment uom_role_uom_role_code_key; Type: CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY assignment
    ADD CONSTRAINT uom_role_uom_role_code_key UNIQUE (uom_role_code);


SET search_path = assignement, pg_catalog;

--
-- TOC entry 3493 (class 2620 OID 375923)
-- Name: head disallow_editing_of_committed_document_head; Type: TRIGGER; Schema: assignement; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_head BEFORE DELETE OR UPDATE ON head FOR EACH ROW EXECUTE PROCEDURE common.disallow_editing_of_committed_document_head();


--
-- TOC entry 3494 (class 2620 OID 375924)
-- Name: head set_prev_doc_fsmt; Type: TRIGGER; Schema: assignement; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON head FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


SET search_path = ebom, pg_catalog;

--
-- TOC entry 3495 (class 2620 OID 375925)
-- Name: definition set_prev_doc_fsmt; Type: TRIGGER; Schema: ebom; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON definition FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


SET search_path = request, pg_catalog;

--
-- TOC entry 3496 (class 2620 OID 375926)
-- Name: body disallow_editing_of_committed_document_body; Type: TRIGGER; Schema: request; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_body BEFORE INSERT OR DELETE OR UPDATE ON body FOR EACH ROW EXECUTE PROCEDURE disallow_editing_of_committed_document_body();


--
-- TOC entry 3497 (class 2620 OID 375927)
-- Name: head disallow_editing_of_committed_document_head; Type: TRIGGER; Schema: request; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_head BEFORE DELETE OR UPDATE ON head FOR EACH ROW EXECUTE PROCEDURE common.disallow_editing_of_committed_document_head();


--
-- TOC entry 3498 (class 2620 OID 375928)
-- Name: head set_prev_doc_fsmt; Type: TRIGGER; Schema: request; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON head FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


SET search_path = response, pg_catalog;

--
-- TOC entry 3499 (class 2620 OID 375929)
-- Name: body disallow_editing_of_committed_document_body; Type: TRIGGER; Schema: response; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_body BEFORE INSERT OR DELETE OR UPDATE ON body FOR EACH ROW EXECUTE PROCEDURE disallow_editing_of_committed_document_body();


--
-- TOC entry 3500 (class 2620 OID 375930)
-- Name: head disallow_editing_of_committed_document_head; Type: TRIGGER; Schema: response; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_head BEFORE DELETE OR UPDATE ON head FOR EACH ROW EXECUTE PROCEDURE common.disallow_editing_of_committed_document_head();


--
-- TOC entry 3501 (class 2620 OID 375931)
-- Name: head set_prev_doc_fsmt; Type: TRIGGER; Schema: response; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON head FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


SET search_path = assignement, pg_catalog;

--
-- TOC entry 3419 (class 2606 OID 375932)
-- Name: achievement achievement_head_id_fkey; Type: FK CONSTRAINT; Schema: assignement; Owner: postgres
--

ALTER TABLE ONLY achievement
    ADD CONSTRAINT achievement_head_id_fkey FOREIGN KEY (head_id) REFERENCES head(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3420 (class 2606 OID 375937)
-- Name: appointment appointment_head_id_fkey; Type: FK CONSTRAINT; Schema: assignement; Owner: postgres
--

ALTER TABLE ONLY appointment
    ADD CONSTRAINT appointment_head_id_fkey FOREIGN KEY (head_id) REFERENCES head(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = ebom, pg_catalog;

--
-- TOC entry 3421 (class 2606 OID 375942)
-- Name: assembly assembly_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id);


--
-- TOC entry 3422 (class 2606 OID 375947)
-- Name: assembly assembly_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.assembly(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3423 (class 2606 OID 375952)
-- Name: buyable buyable_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id);


--
-- TOC entry 3424 (class 2606 OID 375957)
-- Name: buyable buyable_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.buyable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3425 (class 2606 OID 375962)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3426 (class 2606 OID 375967)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.assembly(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3427 (class 2606 OID 375972)
-- Name: part part_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id);


--
-- TOC entry 3428 (class 2606 OID 375977)
-- Name: part part_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.part(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = facility, pg_catalog;

--
-- TOC entry 3429 (class 2606 OID 375982)
-- Name: area area_parent_facility_code_fkey; Type: FK CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY area
    ADD CONSTRAINT area_parent_facility_code_fkey FOREIGN KEY (parent_facility_code) REFERENCES site(facility_code) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3430 (class 2606 OID 375987)
-- Name: line line_parent_facility_code_fkey; Type: FK CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY line
    ADD CONSTRAINT line_parent_facility_code_fkey FOREIGN KEY (parent_facility_code) REFERENCES area(facility_code) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3431 (class 2606 OID 375992)
-- Name: site site_parent_facility_code_fkey; Type: FK CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY site
    ADD CONSTRAINT site_parent_facility_code_fkey FOREIGN KEY (parent_facility_code) REFERENCES enterprise(facility_code) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3432 (class 2606 OID 375997)
-- Name: zone zone_parent_facility_code_fkey; Type: FK CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY zone
    ADD CONSTRAINT zone_parent_facility_code_fkey FOREIGN KEY (parent_facility_code) REFERENCES area(facility_code);


SET search_path = inventory, pg_catalog;

--
-- TOC entry 3433 (class 2606 OID 376002)
-- Name: assembly assembly_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3434 (class 2606 OID 376007)
-- Name: buyable buyable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3435 (class 2606 OID 376012)
-- Name: consumable consumable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3436 (class 2606 OID 376017)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3437 (class 2606 OID 376022)
-- Name: measurement measurement_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY measurement
    ADD CONSTRAINT measurement_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3438 (class 2606 OID 376027)
-- Name: part part_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3439 (class 2606 OID 376032)
-- Name: phantom phantom_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY phantom
    ADD CONSTRAINT phantom_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3440 (class 2606 OID 376037)
-- Name: primal primal_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3441 (class 2606 OID 376042)
-- Name: producible producible_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY producible
    ADD CONSTRAINT producible_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3442 (class 2606 OID 376047)
-- Name: salable salable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable
    ADD CONSTRAINT salable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3443 (class 2606 OID 376052)
-- Name: storable storable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY storable
    ADD CONSTRAINT storable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = mbom, pg_catalog;

--
-- TOC entry 3444 (class 2606 OID 376057)
-- Name: consumable consumable_definition_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id);


--
-- TOC entry 3445 (class 2606 OID 376062)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3446 (class 2606 OID 376067)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3447 (class 2606 OID 376072)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3448 (class 2606 OID 376077)
-- Name: primal primal_definition_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id);


--
-- TOC entry 3449 (class 2606 OID 376082)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = process, pg_catalog;

--
-- TOC entry 3450 (class 2606 OID 376087)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3451 (class 2606 OID 376092)
-- Name: consumable consumable_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3452 (class 2606 OID 376097)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3453 (class 2606 OID 376102)
-- Name: dependency dependency_ancestor_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_ancestor_fkey FOREIGN KEY (ancestor) REFERENCES segment(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3454 (class 2606 OID 376107)
-- Name: dependency dependency_descendant_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_descendant_fkey FOREIGN KEY (descendant) REFERENCES segment(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3455 (class 2606 OID 376112)
-- Name: equipment equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3456 (class 2606 OID 376117)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3457 (class 2606 OID 376122)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3458 (class 2606 OID 376127)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3459 (class 2606 OID 376132)
-- Name: primal primal_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3460 (class 2606 OID 376137)
-- Name: segment segment_definition_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3461 (class 2606 OID 376142)
-- Name: tooling tooling_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY tooling
    ADD CONSTRAINT tooling_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = product, pg_catalog;

--
-- TOC entry 3462 (class 2606 OID 376147)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3463 (class 2606 OID 376152)
-- Name: consumable consumable_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id);


--
-- TOC entry 3464 (class 2606 OID 376157)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3465 (class 2606 OID 376162)
-- Name: dependency dependency_ancestor_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_ancestor_fkey FOREIGN KEY (ancestor) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3466 (class 2606 OID 376167)
-- Name: dependency dependency_descendant_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_descendant_fkey FOREIGN KEY (descendant) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3467 (class 2606 OID 376172)
-- Name: equipment equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3468 (class 2606 OID 376177)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.salable(part_code, version_num);


--
-- TOC entry 3469 (class 2606 OID 376182)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3470 (class 2606 OID 376187)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3471 (class 2606 OID 376192)
-- Name: primal primal_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3472 (class 2606 OID 376197)
-- Name: segment segment_definition_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3473 (class 2606 OID 376202)
-- Name: tooling tooling_segment_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY tooling
    ADD CONSTRAINT tooling_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = request, pg_catalog;

--
-- TOC entry 3474 (class 2606 OID 376207)
-- Name: body body_head_id_fkey; Type: FK CONSTRAINT; Schema: request; Owner: postgres
--

ALTER TABLE ONLY body
    ADD CONSTRAINT body_head_id_fkey FOREIGN KEY (head_id) REFERENCES head(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = response, pg_catalog;

--
-- TOC entry 3475 (class 2606 OID 376212)
-- Name: body body_head_id_fkey; Type: FK CONSTRAINT; Schema: response; Owner: postgres
--

ALTER TABLE ONLY body
    ADD CONSTRAINT body_head_id_fkey FOREIGN KEY (head_id) REFERENCES head(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = route, pg_catalog;

--
-- TOC entry 3476 (class 2606 OID 376217)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3479 (class 2606 OID 376222)
-- Name: weight descendant_definition_id_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY weight
    ADD CONSTRAINT descendant_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3477 (class 2606 OID 376227)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3478 (class 2606 OID 376232)
-- Name: segment segment_definition_id_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = stride, pg_catalog;

--
-- TOC entry 3480 (class 2606 OID 376237)
-- Name: consumable consumable_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3481 (class 2606 OID 376242)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3482 (class 2606 OID 376247)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3483 (class 2606 OID 376252)
-- Name: descendant descendant_definition_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY descendant
    ADD CONSTRAINT descendant_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3484 (class 2606 OID 376257)
-- Name: descendant descendant_part_code_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY descendant
    ADD CONSTRAINT descendant_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3485 (class 2606 OID 376262)
-- Name: equipment equipment_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3486 (class 2606 OID 376267)
-- Name: facility facility_definition_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY facility
    ADD CONSTRAINT facility_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3487 (class 2606 OID 376272)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3488 (class 2606 OID 376277)
-- Name: personnel personnel_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3489 (class 2606 OID 376282)
-- Name: primal primal_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3490 (class 2606 OID 376287)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3491 (class 2606 OID 376292)
-- Name: tooling tooling_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY tooling
    ADD CONSTRAINT tooling_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = uom, pg_catalog;

--
-- TOC entry 3492 (class 2606 OID 376297)
-- Name: information uom_base_uom_code_fkey; Type: FK CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT uom_base_uom_code_fkey FOREIGN KEY (base_uom_code) REFERENCES information(uom_code);


-- Completed on 2018-07-04 18:50:01 EEST

--
-- PostgreSQL database dump complete
--

