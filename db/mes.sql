--
-- PostgreSQL database dump
--

-- Dumped from database version 11.11 (Debian 11.11-0+deb10u1)
-- Dumped by pg_dump version 11.11 (Debian 11.11-0+deb10u1)

-- Started on 2021-04-29 18:14:55 EEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 10 (class 2615 OID 17182)
-- Name: binding; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA binding;


ALTER SCHEMA binding OWNER TO postgres;

--
-- TOC entry 4203 (class 0 OID 0)
-- Dependencies: 10
-- Name: SCHEMA binding; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA binding IS 'document bindings';


--
-- TOC entry 7 (class 2615 OID 17183)
-- Name: common; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA common;


ALTER SCHEMA common OWNER TO postgres;

--
-- TOC entry 4204 (class 0 OID 0)
-- Dependencies: 7
-- Name: SCHEMA common; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA common IS 'common objects';


--
-- TOC entry 20 (class 2615 OID 17184)
-- Name: ebom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ebom;


ALTER SCHEMA ebom OWNER TO postgres;

--
-- TOC entry 4205 (class 0 OID 0)
-- Dependencies: 20
-- Name: SCHEMA ebom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA ebom IS 'engenering bill of materials';


--
-- TOC entry 24 (class 2615 OID 17185)
-- Name: equipment; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA equipment;


ALTER SCHEMA equipment OWNER TO postgres;

--
-- TOC entry 4206 (class 0 OID 0)
-- Dependencies: 24
-- Name: SCHEMA equipment; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA equipment IS 'equipmet classes definition';


--
-- TOC entry 27 (class 2615 OID 17186)
-- Name: facility; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA facility;


ALTER SCHEMA facility OWNER TO postgres;

--
-- TOC entry 4207 (class 0 OID 0)
-- Dependencies: 27
-- Name: SCHEMA facility; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA facility IS 'PERA model facility structure';


--
-- TOC entry 14 (class 2615 OID 17187)
-- Name: inventory; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA inventory;


ALTER SCHEMA inventory OWNER TO postgres;

--
-- TOC entry 4208 (class 0 OID 0)
-- Dependencies: 14
-- Name: SCHEMA inventory; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA inventory IS 'inventory classes definition';


--
-- TOC entry 18 (class 2615 OID 17188)
-- Name: mbom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA mbom;


ALTER SCHEMA mbom OWNER TO postgres;

--
-- TOC entry 4209 (class 0 OID 0)
-- Dependencies: 18
-- Name: SCHEMA mbom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA mbom IS 'manufacturing bill of materials';


--
-- TOC entry 12 (class 2615 OID 17189)
-- Name: operation; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA operation;


ALTER SCHEMA operation OWNER TO postgres;

--
-- TOC entry 16 (class 2615 OID 17190)
-- Name: personnel; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA personnel;


ALTER SCHEMA personnel OWNER TO postgres;

--
-- TOC entry 4210 (class 0 OID 0)
-- Dependencies: 16
-- Name: SCHEMA personnel; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA personnel IS 'personnel classes definitions';


--
-- TOC entry 31 (class 2615 OID 17191)
-- Name: pgunit; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA pgunit;


ALTER SCHEMA pgunit OWNER TO postgres;

--
-- TOC entry 4211 (class 0 OID 0)
-- Dependencies: 31
-- Name: SCHEMA pgunit; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA pgunit IS 'pgunit objects';


--
-- TOC entry 23 (class 2615 OID 17192)
-- Name: process; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA process;


ALTER SCHEMA process OWNER TO postgres;

--
-- TOC entry 4212 (class 0 OID 0)
-- Dependencies: 23
-- Name: SCHEMA process; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA process IS 'production processes definitions';


--
-- TOC entry 22 (class 2615 OID 17193)
-- Name: product; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA product;


ALTER SCHEMA product OWNER TO postgres;

--
-- TOC entry 4213 (class 0 OID 0)
-- Dependencies: 22
-- Name: SCHEMA product; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA product IS 'product segments definitions';


--
-- TOC entry 28 (class 2615 OID 28128)
-- Name: production; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA production;


ALTER SCHEMA production OWNER TO postgres;

--
-- TOC entry 4214 (class 0 OID 0)
-- Dependencies: 28
-- Name: SCHEMA production; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA production IS 'production completion report';


--
-- TOC entry 17 (class 2615 OID 17195)
-- Name: request; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA request;


ALTER SCHEMA request OWNER TO postgres;

--
-- TOC entry 4215 (class 0 OID 0)
-- Dependencies: 17
-- Name: SCHEMA request; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA request IS 'production request';


--
-- TOC entry 29 (class 2615 OID 17196)
-- Name: response; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA response;


ALTER SCHEMA response OWNER TO postgres;

--
-- TOC entry 4216 (class 0 OID 0)
-- Dependencies: 29
-- Name: SCHEMA response; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA response IS 'production response';


--
-- TOC entry 26 (class 2615 OID 17197)
-- Name: route; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA route;


ALTER SCHEMA route OWNER TO postgres;

--
-- TOC entry 4217 (class 0 OID 0)
-- Dependencies: 26
-- Name: SCHEMA route; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA route IS 'material routing';


--
-- TOC entry 25 (class 2615 OID 17198)
-- Name: schedule; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA schedule;


ALTER SCHEMA schedule OWNER TO postgres;

--
-- TOC entry 4218 (class 0 OID 0)
-- Dependencies: 25
-- Name: SCHEMA schedule; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA schedule IS 'production schedule';


--
-- TOC entry 11 (class 2615 OID 17200)
-- Name: tests; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tests;


ALTER SCHEMA tests OWNER TO postgres;

--
-- TOC entry 4219 (class 0 OID 0)
-- Dependencies: 11
-- Name: SCHEMA tests; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA tests IS 'pgunit tests';


--
-- TOC entry 13 (class 2615 OID 17201)
-- Name: tooling; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tooling;


ALTER SCHEMA tooling OWNER TO postgres;

--
-- TOC entry 4220 (class 0 OID 0)
-- Dependencies: 13
-- Name: SCHEMA tooling; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA tooling IS 'tooling classes definitions';


--
-- TOC entry 30 (class 2615 OID 17202)
-- Name: uom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA uom;


ALTER SCHEMA uom OWNER TO postgres;

--
-- TOC entry 4221 (class 0 OID 0)
-- Dependencies: 30
-- Name: SCHEMA uom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA uom IS 'units of measure classes definitions';


--
-- TOC entry 15 (class 2615 OID 28127)
-- Name: work; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA work;


ALTER SCHEMA work OWNER TO postgres;

--
-- TOC entry 4222 (class 0 OID 0)
-- Dependencies: 15
-- Name: SCHEMA work; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA work IS 'work progress reports';


--
-- TOC entry 4 (class 3079 OID 17203)
-- Name: pldbgapi; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pldbgapi WITH SCHEMA public;


--
-- TOC entry 4223 (class 0 OID 0)
-- Dependencies: 4
-- Name: EXTENSION pldbgapi; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pldbgapi IS 'server-side support for debugging PL/pgSQL functions';


--
-- TOC entry 3 (class 3079 OID 17240)
-- Name: plpgsql_check; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql_check WITH SCHEMA public;


--
-- TOC entry 4224 (class 0 OID 0)
-- Dependencies: 3
-- Name: EXTENSION plpgsql_check; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql_check IS 'extended check for plpgsql functions';


--
-- TOC entry 2 (class 3079 OID 17263)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- TOC entry 4225 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- TOC entry 996 (class 1247 OID 17275)
-- Name: component_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.component_kind AS ENUM (
    'ASSEMBLY',
    'PART',
    'BUYABLE'
);


ALTER TYPE common.component_kind OWNER TO postgres;

--
-- TOC entry 999 (class 1247 OID 17282)
-- Name: quantity; Type: DOMAIN; Schema: common; Owner: postgres
--

CREATE DOMAIN common.quantity AS numeric(20,4) DEFAULT 0
	CONSTRAINT quantity_is_positive CHECK ((VALUE >= (0)::numeric));


ALTER DOMAIN common.quantity OWNER TO postgres;

--
-- TOC entry 4226 (class 0 OID 0)
-- Dependencies: 999
-- Name: DOMAIN quantity; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON DOMAIN common.quantity IS 'quantity domain';


--
-- TOC entry 1003 (class 1247 OID 17286)
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
-- TOC entry 1006 (class 1247 OID 17288)
-- Name: material_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.material_kind AS ENUM (
    'CONSUMABLE',
    'PRODUCIBLE',
    'PRIMAL'
);


ALTER TYPE common.material_kind OWNER TO postgres;

--
-- TOC entry 1009 (class 1247 OID 17297)
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
-- TOC entry 1012 (class 1247 OID 17300)
-- Name: dependency_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.dependency_specification AS (
	ancestor uuid,
	descendant uuid,
	depth integer
);


ALTER TYPE common.dependency_specification OWNER TO postgres;

--
-- TOC entry 1015 (class 1247 OID 17302)
-- Name: document_fsmt; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.document_fsmt AS ENUM (
    'PROPOSED',
    'COMMITTED',
    'DECOMMITTED'
);


ALTER TYPE common.document_fsmt OWNER TO postgres;

--
-- TOC entry 1018 (class 1247 OID 17310)
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
    'STRIDE',
    'INVENTORY'
);


ALTER TYPE common.document_kind OWNER TO postgres;

--
-- TOC entry 1021 (class 1247 OID 17335)
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
-- TOC entry 1024 (class 1247 OID 17338)
-- Name: ebom_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.ebom_document AS (
	head common.ebom_head,
	body common.component_specification[]
);


ALTER TYPE common.ebom_document OWNER TO postgres;

--
-- TOC entry 1027 (class 1247 OID 17341)
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
-- TOC entry 1030 (class 1247 OID 17344)
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
-- TOC entry 1033 (class 1247 OID 17346)
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
-- TOC entry 1036 (class 1247 OID 17359)
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
-- TOC entry 1039 (class 1247 OID 17362)
-- Name: facility_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.facility_specification AS (
	facility_code character varying,
	version_num integer,
	facility_type common.facility_kind
);


ALTER TYPE common.facility_specification OWNER TO postgres;

--
-- TOC entry 1042 (class 1247 OID 17365)
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
-- TOC entry 1045 (class 1247 OID 17367)
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
-- TOC entry 1048 (class 1247 OID 17387)
-- Name: unit_conversion_type; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.unit_conversion_type AS (
	uom_code_from character varying,
	uom_code_to character varying,
	factor numeric
);


ALTER TYPE common.unit_conversion_type OWNER TO postgres;

--
-- TOC entry 1051 (class 1247 OID 17390)
-- Name: inventory_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.inventory_document AS (
	head common.inventory_head,
	meas common.unit_conversion_type[],
	kind common.inventory_kind[]
);


ALTER TYPE common.inventory_document OWNER TO postgres;

--
-- TOC entry 1054 (class 1247 OID 17393)
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
-- TOC entry 1057 (class 1247 OID 17396)
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
-- TOC entry 1060 (class 1247 OID 17399)
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
-- TOC entry 1063 (class 1247 OID 17402)
-- Name: mbom_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.mbom_document AS (
	head common.mbom_head,
	body common.material_specification[]
);


ALTER TYPE common.mbom_document OWNER TO postgres;

--
-- TOC entry 1066 (class 1247 OID 17405)
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
-- TOC entry 1069 (class 1247 OID 17408)
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
-- TOC entry 1072 (class 1247 OID 17411)
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
-- TOC entry 1075 (class 1247 OID 17414)
-- Name: phantom_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.phantom_specification AS (
	part_code character varying,
	version_num integer,
	quantity common.quantity,
	uom_code character varying,
	material_type common.material_kind,
	process_num integer,
	segment_num integer
);


ALTER TYPE common.phantom_specification OWNER TO postgres;

--
-- TOC entry 1078 (class 1247 OID 17417)
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
-- TOC entry 1081 (class 1247 OID 17420)
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
-- TOC entry 1084 (class 1247 OID 17423)
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
-- TOC entry 1087 (class 1247 OID 17426)
-- Name: process_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.process_document AS (
	head common.process_head,
	body common.process_segment[],
	deps common.dependency_specification[]
);


ALTER TYPE common.process_document OWNER TO postgres;

--
-- TOC entry 4227 (class 0 OID 0)
-- Dependencies: 1087
-- Name: TYPE process_document; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON TYPE common.process_document IS 'operation';


--
-- TOC entry 1090 (class 1247 OID 17428)
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
-- TOC entry 1093 (class 1247 OID 17441)
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
	producible_spec common.inventory_specification
);


ALTER TYPE common.product_head OWNER TO postgres;

--
-- TOC entry 1096 (class 1247 OID 17444)
-- Name: product_segment; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.product_segment AS (
	gid uuid,
	display_name character varying,
	producible_spec common.inventory_specification
);


ALTER TYPE common.product_segment OWNER TO postgres;

--
-- TOC entry 1099 (class 1247 OID 17447)
-- Name: product_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.product_document AS (
	head common.product_head,
	body common.product_segment[],
	deps common.dependency_specification[]
);


ALTER TYPE common.product_document OWNER TO postgres;

--
-- TOC entry 1102 (class 1247 OID 17450)
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
	producible_spec common.material_specification
);


ALTER TYPE common.route_head OWNER TO postgres;

--
-- TOC entry 1105 (class 1247 OID 17453)
-- Name: route_segment; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.route_segment AS (
	gid uuid,
	order_num integer,
	operation_code character varying,
	facility_code character varying,
	phantom_spec common.phantom_specification,
	consumable_spec common.consumable_specification[],
	personnel_spec common.personnel_specification[],
	equipmet_spec common.equipment_specification[],
	tooling_spec common.tooling_specification[]
);


ALTER TYPE common.route_segment OWNER TO postgres;

--
-- TOC entry 1108 (class 1247 OID 17456)
-- Name: route_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.route_document AS (
	head common.route_head,
	body common.route_segment[],
	weight common.quantity
);


ALTER TYPE common.route_document OWNER TO postgres;

--
-- TOC entry 1111 (class 1247 OID 17471)
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
-- TOC entry 1114 (class 1247 OID 17473)
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
-- TOC entry 420 (class 1255 OID 17481)
-- Name: array_append_distinct(anyarray, anyelement); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.array_append_distinct(anyarray, anyelement) RETURNS anyarray
    LANGUAGE sql
    AS $_$ 
  SELECT ARRAY(SELECT unnest($1) union SELECT $2) 
$_$;


ALTER FUNCTION common.array_append_distinct(anyarray, anyelement) OWNER TO postgres;

--
-- TOC entry 421 (class 1255 OID 17482)
-- Name: array_distinct(anyarray); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.array_distinct(anyarray) RETURNS anyarray
    LANGUAGE sql
    AS $_$
  SELECT ARRAY(SELECT DISTINCT unnest($1))
$_$;


ALTER FUNCTION common.array_distinct(anyarray) OWNER TO postgres;

--
-- TOC entry 422 (class 1255 OID 17483)
-- Name: array_erase(anyarray, anyelement); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.array_erase(anyarray, anyelement) RETURNS anyarray
    LANGUAGE sql
    AS $_$
  SELECT ARRAY(SELECT v FROM unnest($1) g(v) WHERE v <> $2)
$_$;


ALTER FUNCTION common.array_erase(anyarray, anyelement) OWNER TO postgres;

--
-- TOC entry 423 (class 1255 OID 17484)
-- Name: array_sort(anyarray); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.array_sort(anyarray) RETURNS anyarray
    LANGUAGE sql
    AS $_$
  SELECT ARRAY(SELECT unnest($1) ORDER BY 1)
$_$;


ALTER FUNCTION common.array_sort(anyarray) OWNER TO postgres;

--
-- TOC entry 424 (class 1255 OID 17485)
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
-- TOC entry 425 (class 1255 OID 17486)
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
-- TOC entry 426 (class 1255 OID 17487)
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
-- TOC entry 427 (class 1255 OID 17488)
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
-- TOC entry 428 (class 1255 OID 17489)
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
-- TOC entry 429 (class 1255 OID 17490)
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
-- TOC entry 430 (class 1255 OID 17491)
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
-- TOC entry 431 (class 1255 OID 17492)
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
-- TOC entry 433 (class 1255 OID 17493)
-- Name: get_document_abbrevation(common.document_kind); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.get_document_abbrevation(__doctype common.document_kind) RETURNS character varying
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


ALTER FUNCTION common.get_document_abbrevation(__doctype common.document_kind) OWNER TO postgres;

--
-- TOC entry 434 (class 1255 OID 17494)
-- Name: number_encode2(integer, boolean); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.number_encode2(__number integer, __upper_only boolean DEFAULT true) RETURNS character varying
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
-- TOC entry 435 (class 1255 OID 17495)
-- Name: number_encode4(integer, boolean); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.number_encode4(__number integer, __upper_only boolean DEFAULT true) RETURNS character varying
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
-- TOC entry 436 (class 1255 OID 17496)
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
-- TOC entry 437 (class 1255 OID 17497)
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
-- TOC entry 438 (class 1255 OID 17498)
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
-- TOC entry 439 (class 1255 OID 17499)
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
-- TOC entry 440 (class 1255 OID 17500)
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
-- TOC entry 441 (class 1255 OID 17501)
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
-- TOC entry 442 (class 1255 OID 17502)
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
-- TOC entry 443 (class 1255 OID 17503)
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
-- TOC entry 444 (class 1255 OID 17504)
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
-- TOC entry 445 (class 1255 OID 17505)
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
-- TOC entry 446 (class 1255 OID 17506)
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
-- TOC entry 448 (class 1255 OID 17507)
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
-- TOC entry 449 (class 1255 OID 17508)
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
-- TOC entry 450 (class 1255 OID 17509)
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
-- TOC entry 451 (class 1255 OID 17510)
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
-- TOC entry 452 (class 1255 OID 17511)
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
-- TOC entry 453 (class 1255 OID 17512)
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
-- TOC entry 454 (class 1255 OID 17513)
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
-- TOC entry 455 (class 1255 OID 17514)
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
-- TOC entry 456 (class 1255 OID 17515)
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
-- TOC entry 457 (class 1255 OID 17516)
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
-- TOC entry 432 (class 1255 OID 17517)
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
-- TOC entry 458 (class 1255 OID 17518)
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
-- TOC entry 459 (class 1255 OID 17519)
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
-- TOC entry 460 (class 1255 OID 17520)
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
-- TOC entry 461 (class 1255 OID 17521)
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
-- TOC entry 462 (class 1255 OID 17522)
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
-- TOC entry 463 (class 1255 OID 17523)
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
-- TOC entry 464 (class 1255 OID 17524)
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
-- TOC entry 465 (class 1255 OID 17525)
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
-- TOC entry 466 (class 1255 OID 17526)
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
-- TOC entry 467 (class 1255 OID 17527)
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
-- TOC entry 468 (class 1255 OID 17528)
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
-- TOC entry 469 (class 1255 OID 17529)
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
-- TOC entry 470 (class 1255 OID 17530)
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
-- TOC entry 471 (class 1255 OID 17531)
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
-- TOC entry 472 (class 1255 OID 17532)
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
-- TOC entry 473 (class 1255 OID 17533)
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
-- TOC entry 474 (class 1255 OID 17534)
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
-- TOC entry 475 (class 1255 OID 17535)
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
-- TOC entry 476 (class 1255 OID 17536)
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
-- TOC entry 477 (class 1255 OID 17537)
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
-- TOC entry 478 (class 1255 OID 17538)
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
-- TOC entry 479 (class 1255 OID 17539)
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
-- TOC entry 480 (class 1255 OID 17540)
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
-- TOC entry 481 (class 1255 OID 17541)
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
-- TOC entry 482 (class 1255 OID 17542)
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
-- TOC entry 483 (class 1255 OID 17543)
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
-- TOC entry 484 (class 1255 OID 17544)
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
-- TOC entry 485 (class 1255 OID 17545)
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
-- TOC entry 486 (class 1255 OID 17546)
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
-- TOC entry 487 (class 1255 OID 17547)
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
-- TOC entry 488 (class 1255 OID 17548)
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
-- TOC entry 489 (class 1255 OID 17549)
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
-- TOC entry 490 (class 1255 OID 17550)
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
-- TOC entry 491 (class 1255 OID 17551)
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
-- TOC entry 492 (class 1255 OID 17552)
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
-- TOC entry 493 (class 1255 OID 17553)
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
-- TOC entry 495 (class 1255 OID 17554)
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
-- TOC entry 496 (class 1255 OID 17555)
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
-- TOC entry 497 (class 1255 OID 17556)
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
-- TOC entry 498 (class 1255 OID 17557)
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
-- TOC entry 499 (class 1255 OID 17558)
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
-- TOC entry 500 (class 1255 OID 17559)
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
-- TOC entry 501 (class 1255 OID 17560)
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
-- TOC entry 502 (class 1255 OID 17561)
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
-- TOC entry 503 (class 1255 OID 17562)
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
-- TOC entry 504 (class 1255 OID 17563)
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
-- TOC entry 505 (class 1255 OID 17564)
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
-- TOC entry 447 (class 1255 OID 17565)
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
-- TOC entry 494 (class 1255 OID 17566)
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
-- TOC entry 506 (class 1255 OID 17567)
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
-- TOC entry 507 (class 1255 OID 17568)
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
-- TOC entry 508 (class 1255 OID 17569)
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
-- TOC entry 509 (class 1255 OID 17570)
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
-- TOC entry 510 (class 1255 OID 17571)
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
-- TOC entry 511 (class 1255 OID 17572)
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
-- TOC entry 512 (class 1255 OID 17573)
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
-- TOC entry 513 (class 1255 OID 17574)
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
-- TOC entry 514 (class 1255 OID 17575)
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
-- TOC entry 515 (class 1255 OID 17576)
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
-- TOC entry 516 (class 1255 OID 17578)
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
        segment.gid = dependency.ancestor AND
        segment.definition_id = __document_id
    );
END
$$;


ALTER FUNCTION product.get_deps(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 517 (class 1255 OID 17580)
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
-- TOC entry 520 (class 1255 OID 17581)
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
      'PRODUCIBLE')::common.inventory_specification
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
-- TOC entry 518 (class 1255 OID 17582)
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
-- TOC entry 521 (class 1255 OID 17584)
-- Name: get_segment(bigint); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.get_segment(__segment_id bigint) RETURNS common.product_segment
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    (segment.gid,
    segment.display_name,
      (segment.part_code, 
      segment.version_num, 
      1.0::common.quantity, 
      'pcs', 
      'PRODUCIBLE')::common.inventory_specification)::common.product_segment
  FROM 
    product.segment
  WHERE 
    segment.id = __segment_id;
END
$$;


ALTER FUNCTION product.get_segment(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 596 (class 1255 OID 28436)
-- Name: resubmit(bigint, common.product_segment[], common.dependency_specification[]); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.resubmit(__document_id bigint, __body common.product_segment[], __deps common.dependency_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  -- _segment_id bigint;
  _head common.product_head;
  _seg common.product_segment;
  _dep common.dependency_specification;
BEGIN

  _head := product.get_head(__document_id);

  DELETE FROM
    product.segment
  WHERE
    definition_id = __document_id;

  FOREACH _seg IN
    ARRAY __body
  LOOP
    INSERT INTO
      product.segment (
        id,
        gid,
        definition_id,
        part_code,
        version_num)
    VALUES (
      DEFAULT,
      _seg.gid,
      __document_id,
      (_seg.producible_spec).part_code,
      (_head.producible_spec).version_num);
    -- RETURNING id INTO _segment_id;
    -- PERFORM product.set_consumable_spec(_segment_id, _seg.consumable_spec);
    -- PERFORM product.set_personnel_spec(_segment_id, _seg.personnel_spec);
    -- PERFORM product.set_equipment_spec(_segment_id, _seg.equipmet_spec);
    -- PERFORM product.set_tooling_spec(_segment_id, _seg.tooling_spec);
  END LOOP;

  FOREACH _dep IN
    ARRAY __deps
  LOOP
    INSERT INTO
      product.dependency (
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


ALTER FUNCTION product.resubmit(__document_id bigint, __body common.product_segment[], __deps common.dependency_specification[]) OWNER TO postgres;

--
-- TOC entry 597 (class 1255 OID 28435)
-- Name: submit(common.product_head, common.product_segment[], common.dependency_specification[]); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.submit(__head common.product_head, __body common.product_segment[], __deps common.dependency_specification[]) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _information_id bigint;
  _definition_id bigint;
  _max_version_num integer;
  -- _segment_id bigint;
  _seg common.product_segment;
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
    product.information, 
    product.definition
  WHERE 
    information.id = definition.information_id AND
    information.part_code = (__head.producible_spec).part_code AND 
    information.version_num = (__head.producible_spec).version_num
  INTO
    _max_version_num;

  IF (_max_version_num IS NULL) THEN
    _max_version_num := 0;

    INSERT INTO
      product.information (
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
      product.information
    WHERE
      information.part_code = (__head.producible_spec).part_code AND 
      information.version_num = (__head.producible_spec).version_num
    INTO
      _information_id;

  END IF;

  INSERT INTO
    product.definition (
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
      product.segment (
        id,
        gid,
        definition_id,
        part_code,
        version_num)
    VALUES (
      DEFAULT,
      _seg.gid,
      _definition_id,
      (_seg.producible_spec).part_code,
      (__head.producible_spec).version_num);
    -- RETURNING id INTO _segment_id;
    -- PERFORM product.set_consumable_spec(_segment_id, _seg.consumable_spec);
    -- PERFORM product.set_personnel_spec(_segment_id, _seg.personnel_spec);
    -- PERFORM product.set_equipment_spec(_segment_id, _seg.equipmet_spec);
    -- PERFORM product.set_tooling_spec(_segment_id, _seg.tooling_spec);
  END LOOP;

  FOREACH _dep IN
    ARRAY __deps
  LOOP
    INSERT INTO
      product.dependency (
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


ALTER FUNCTION product.submit(__head common.product_head, __body common.product_segment[], __deps common.dependency_specification[]) OWNER TO postgres;

--
-- TOC entry 522 (class 1255 OID 17592)
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
-- TOC entry 523 (class 1255 OID 17593)
-- Name: disallow_editing_of_committed_document_body(); Type: FUNCTION; Schema: request; Owner: postgres
--

CREATE FUNCTION request.disallow_editing_of_committed_document_body() RETURNS trigger
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
-- TOC entry 524 (class 1255 OID 17594)
-- Name: generate_display_name(date, character varying); Type: FUNCTION; Schema: request; Owner: postgres
--

CREATE FUNCTION request.generate_display_name(__document_date date, __facility_code character varying) RETURNS character varying
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
-- TOC entry 525 (class 1255 OID 17595)
-- Name: numerator_nextval(character varying, integer); Type: FUNCTION; Schema: request; Owner: postgres
--

CREATE FUNCTION request.numerator_nextval(__facility_code character varying, __julianized_week integer) RETURNS integer
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

--
-- TOC entry 526 (class 1255 OID 17596)
-- Name: disallow_editing_of_committed_document_body(); Type: FUNCTION; Schema: response; Owner: postgres
--

CREATE FUNCTION response.disallow_editing_of_committed_document_body() RETURNS trigger
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
-- TOC entry 519 (class 1255 OID 17597)
-- Name: generate_display_name(date, character varying); Type: FUNCTION; Schema: response; Owner: postgres
--

CREATE FUNCTION response.generate_display_name(__document_date date, __facility_code character varying) RETURNS character varying
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
-- TOC entry 527 (class 1255 OID 17598)
-- Name: numerator_nextval(character varying, integer); Type: FUNCTION; Schema: response; Owner: postgres
--

CREATE FUNCTION response.numerator_nextval(__facility_code character varying, __julianized_week integer) RETURNS integer
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

--
-- TOC entry 528 (class 1255 OID 17599)
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
-- TOC entry 529 (class 1255 OID 17600)
-- Name: get_body(bigint); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION route.get_body(__document_id bigint) RETURNS common.route_segment[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY(
      SELECT 
        route.get_segment(segment.id)
      FROM 
        route.segment
      WHERE 
        segment.definition_id = __document_id
    );
END
$$;


ALTER FUNCTION route.get_body(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 530 (class 1255 OID 17601)
-- Name: get_consumable_spec(bigint); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION route.get_consumable_spec(__segment_id bigint) RETURNS common.consumable_specification[]
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
        route.material
      WHERE 
        material.segment_id = __segment_id
    );
END
$$;


ALTER FUNCTION route.get_consumable_spec(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 531 (class 1255 OID 17602)
-- Name: get_equipment_spec(bigint); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION route.get_equipment_spec(__segment_id bigint) RETURNS common.equipment_specification[]
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
        route.equipment
      WHERE 
        equipment.segment_id = __segment_id
    );
END
$$;


ALTER FUNCTION route.get_equipment_spec(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 532 (class 1255 OID 17603)
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
-- TOC entry 533 (class 1255 OID 17604)
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
-- TOC entry 534 (class 1255 OID 17605)
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
-- TOC entry 535 (class 1255 OID 17606)
-- Name: get_personnel_spec(bigint); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION route.get_personnel_spec(__segment_id bigint) RETURNS common.personnel_specification[]
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
        route.personnel
      WHERE 
        personnel.segment_id = __segment_id
    );
END
$$;


ALTER FUNCTION route.get_personnel_spec(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 536 (class 1255 OID 17607)
-- Name: get_segment(bigint); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION route.get_segment(__segment_id bigint) RETURNS common.route_segment
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    (
      segment.gid,
      segment.order_num,
      segment.operation_code,
      segment.facility_code,
      (
        segment.part_code,
        segment.version_num,
        1.0::common.quantity,
        'pcs',
        'PRODUCIBLE'::common.material_kind,
        segment.process_num,
        segment.segment_num
      )::common.phantom_specification,
      route.get_consumable_spec(__segment_id := __segment_id),
      route.get_personnel_spec(__segment_id := __segment_id),
      route.get_equipment_spec(__segment_id := __segment_id),
      route.get_tooling_spec(__segment_id := __segment_id)
    )::common.route_segment
  FROM 
    route.segment
  WHERE 
    segment.id = __segment_id;
END
$$;


ALTER FUNCTION route.get_segment(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 537 (class 1255 OID 17608)
-- Name: get_tooling_spec(bigint); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION route.get_tooling_spec(__segment_id bigint) RETURNS common.tooling_specification[]
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
        route.tooling
      WHERE 
        tooling.segment_id = __segment_id
    );
END
$$;


ALTER FUNCTION route.get_tooling_spec(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 538 (class 1255 OID 17609)
-- Name: get_weight(bigint); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION route.get_weight(__document_id bigint) RETURNS common.quantity
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN rate
    FROM
      route.weight
    WHERE
      definition_id = __document_id;
END;
$$;


ALTER FUNCTION route.get_weight(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 539 (class 1255 OID 17610)
-- Name: init(common.route_head, common.route_segment[], common.quantity); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION route.init(__head common.route_head, __body common.route_segment[], __heft common.quantity) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _information_id bigint;
  _segment_id bigint;
  _definition_id bigint;
  _max_version_num integer;
  _seg common.route_segment;
  _segment_order_num integer := 1;
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
    INSERT INTO
      route.segment (
        id,
        gid,
        definition_id,
        order_num,
        operation_code,
        part_code,
        version_num,
        process_num,
        segment_num,
        facility_code)
    VALUES (
      DEFAULT,
      _seg.gid,
      _definition_id,
      _segment_order_num,
      _seg.operation_code,
      (_seg.phantom_spec).part_code,
      (_seg.phantom_spec).version_num,
      (_seg.phantom_spec).process_num,
      (_seg.phantom_spec).segment_num,
      _seg.facility_code)
    RETURNING id INTO _segment_id;

    PERFORM route.set_consumable_spec(_segment_id, _seg.consumable_spec);
    PERFORM route.set_personnel_spec(_segment_id, _seg.personnel_spec);
    PERFORM route.set_equipment_spec(_segment_id, _seg.equipmet_spec);
    PERFORM route.set_tooling_spec(_segment_id, _seg.tooling_spec);

    _segment_order_num := _segment_order_num +1;

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
-- TOC entry 540 (class 1255 OID 17611)
-- Name: reinit(bigint, common.quantity); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION route.reinit(__document_id bigint, __heft common.quantity) RETURNS void
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

--
-- TOC entry 541 (class 1255 OID 17612)
-- Name: set_consumable_spec(bigint, common.consumable_specification[]); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION route.set_consumable_spec(__segment_id bigint, __material common.consumable_specification[]) RETURNS void
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
        route.primal (
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
        route.consumable (
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


ALTER FUNCTION route.set_consumable_spec(__segment_id bigint, __material common.consumable_specification[]) OWNER TO postgres;

--
-- TOC entry 542 (class 1255 OID 17613)
-- Name: set_equipment_spec(bigint, common.equipment_specification[]); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION route.set_equipment_spec(__segment_id bigint, __equipment common.equipment_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.equipment_specification;
BEGIN

  FOREACH _item IN
    ARRAY __equipment
  LOOP
    INSERT INTO
      route.equipment (
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


ALTER FUNCTION route.set_equipment_spec(__segment_id bigint, __equipment common.equipment_specification[]) OWNER TO postgres;

--
-- TOC entry 543 (class 1255 OID 17614)
-- Name: set_personnel_spec(bigint, common.personnel_specification[]); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION route.set_personnel_spec(__segment_id bigint, __personnel common.personnel_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.personnel_specification;
BEGIN

  FOREACH _item IN
    ARRAY __personnel
  LOOP
    INSERT INTO
      route.personnel (
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


ALTER FUNCTION route.set_personnel_spec(__segment_id bigint, __personnel common.personnel_specification[]) OWNER TO postgres;

--
-- TOC entry 544 (class 1255 OID 17615)
-- Name: set_tooling_spec(bigint, common.tooling_specification[]); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION route.set_tooling_spec(__segment_id bigint, __tooling common.tooling_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.tooling_specification;
BEGIN

  FOREACH _item IN
    ARRAY __tooling
  LOOP
    INSERT INTO
      route.tooling (
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


ALTER FUNCTION route.set_tooling_spec(__segment_id bigint, __tooling common.tooling_specification[]) OWNER TO postgres;

--
-- TOC entry 545 (class 1255 OID 17616)
-- Name: set_weight(bigint, common.quantity); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION route.set_weight(__document_id bigint, __heft common.quantity) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  UPDATE
    route.weight
  SET
    rate = __heft
  WHERE
    definition_id = __document_id;
END;
$$;


ALTER FUNCTION route.set_weight(__document_id bigint, __heft common.quantity) OWNER TO postgres;

--
-- TOC entry 546 (class 1255 OID 17617)
-- Name: get_date_of_julianized_day(integer); Type: FUNCTION; Schema: schedule; Owner: postgres
--

CREATE FUNCTION schedule.get_date_of_julianized_day(__jylianized_day integer) RETURNS date
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
-- TOC entry 547 (class 1255 OID 17618)
-- Name: get_julianized_day(date); Type: FUNCTION; Schema: schedule; Owner: postgres
--

CREATE FUNCTION schedule.get_julianized_day(__date date) RETURNS integer
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
-- TOC entry 548 (class 1255 OID 17619)
-- Name: get_julianized_week(date); Type: FUNCTION; Schema: schedule; Owner: postgres
--

CREATE FUNCTION schedule.get_julianized_week(__date date) RETURNS integer
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

--
-- TOC entry 549 (class 1255 OID 17651)
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
-- TOC entry 550 (class 1255 OID 17652)
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
-- TOC entry 551 (class 1255 OID 17653)
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
-- TOC entry 552 (class 1255 OID 17654)
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
-- TOC entry 553 (class 1255 OID 17655)
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
-- TOC entry 554 (class 1255 OID 17656)
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
-- TOC entry 555 (class 1255 OID 17657)
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
-- TOC entry 556 (class 1255 OID 17658)
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
-- TOC entry 557 (class 1255 OID 17659)
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
-- TOC entry 558 (class 1255 OID 17660)
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
-- TOC entry 559 (class 1255 OID 17661)
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
-- TOC entry 560 (class 1255 OID 17662)
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
-- TOC entry 561 (class 1255 OID 17663)
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
-- TOC entry 562 (class 1255 OID 17664)
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
-- TOC entry 563 (class 1255 OID 17665)
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
-- TOC entry 564 (class 1255 OID 17666)
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
-- TOC entry 565 (class 1255 OID 17667)
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
-- TOC entry 566 (class 1255 OID 17668)
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
-- TOC entry 567 (class 1255 OID 17669)
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
-- TOC entry 568 (class 1255 OID 17670)
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
-- TOC entry 569 (class 1255 OID 17671)
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
-- TOC entry 570 (class 1255 OID 17672)
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
-- TOC entry 572 (class 1255 OID 17673)
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
-- TOC entry 573 (class 1255 OID 17674)
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
-- TOC entry 574 (class 1255 OID 17675)
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
-- TOC entry 575 (class 1255 OID 17676)
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
-- TOC entry 576 (class 1255 OID 17677)
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
-- TOC entry 577 (class 1255 OID 17678)
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
-- TOC entry 578 (class 1255 OID 17679)
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
-- TOC entry 571 (class 1255 OID 17681)
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
-- TOC entry 579 (class 1255 OID 17682)
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
-- TOC entry 580 (class 1255 OID 17683)
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
-- TOC entry 581 (class 1255 OID 17684)
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
-- TOC entry 582 (class 1255 OID 17685)
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
-- TOC entry 594 (class 1255 OID 28731)
-- Name: __product__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__product__destroy() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.product_head;
BEGIN
  
  RAISE DEBUG '#trace Check __product__destroy()';

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
    product.information
      ( id, gid, part_code, version_num, display_name, published_date )
    VALUES
      ( 101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23' );

  INSERT INTO
    product.definition
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id )
    VALUES
      ( 201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 );

  PERFORM product.destroy(201); -- + add not allowed delete test
  
  _head := product.get_head(201);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

  _head := product.get_head(203);
  PERFORM pgunit.assert_not_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__product__destroy() OWNER TO postgres;

--
-- TOC entry 600 (class 1255 OID 28735)
-- Name: __product__get_body(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__product__get_body() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _body common.product_segment[];
  _test_body CONSTANT common.product_segment[] := ARRAY[
      (
        '70d09038-5dfe-11e8-b545-d4bed939923a', 'SEG-01',
        ('21.16.050-001.010', 1, 1.0::common.quantity, 'pcs', 'PRODUCIBLE')::common.inventory_specification
      ),
      (
        'b978dcdc-5dfe-11e8-b547-d4bed939923a', 'SEG-02',
        ('21.16.050-001.020', 1, 1.0::common.quantity, 'pcs', 'PRODUCIBLE')::common.inventory_specification
      ),
      (
        'da20e25e-5dfe-11e8-b548-d4bed939923a', 'SEG-03',
        ('21.16.050-001.030', 1, 1.0::common.quantity, 'pcs', 'PRODUCIBLE')::common.inventory_specification
      )
    ]::common.product_segment[];
BEGIN
  
  RAISE DEBUG '#trace Check __product__get_body()';

  INSERT INTO
    inventory.information
      ( id, gid, part_code, display_name, published_date )
    VALUES
      ( 101, 'a711da30-fa3a-11e7-8e63-d4bed939923a', '21.16.050-001',     'F21-50: information',          '2018-01-15' ),
      ( 102, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', '21.16.050-001.010', 'F21-50: information: SEG-010', '2018-01-15' ),
      ( 103, 'f08b5682-fa3a-11e7-86da-d4bed939923a', '21.16.050-001.020', 'F21-50: information: SEG-020', '2018-01-15' ),
      ( 104, '8236af18-eb1a-11e6-8a73-d4bed939923a', '21.16.050-001.030', 'F21-50: information: SEG-030', '2018-01-15' );

  INSERT INTO
    inventory.definition 
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id, uom_code )
    VALUES 
      ( 201, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '21.16.050-001',     1, '2018-01-10', NULL, NULL, 'COMMITTED', '2018-01-10', 101, 'pcs' ),
      ( 202, 'd83fb96a-fa3a-11e7-948a-d4bed939923a', '21.16.050-001.010', 1, '2018-01-15', NULL, NULL, 'COMMITTED', '2018-01-15', 102, 'pcs' ),
      ( 203, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', '21.16.050-001.010', 2, '2018-01-16', NULL, NULL, 'PROPOSED',  '2018-01-16', 102, 'pcs' ),
      ( 204, 'c792f74d-7e6e-4577-ad69-987f56af7af7', '11.33.050-001.020', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 103, 'pcs' ),
      ( 205, '9b2952fa-01d1-11e7-b440-d4bed939923a', '80.31.050-001.030', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 104, 'pcs' );

  INSERT INTO
    inventory.producible
      ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
    VALUES
      ( '21.16.050-001',     1, 'F21-50: information',          '2018-01-15', 'PRODUCIBLE', 'pcs', 201 ),
      ( '21.16.050-001.010', 1, 'F21-50: information: SEG-010', '2018-01-15', 'PRODUCIBLE', 'pcs', 202 ),
      ( '21.16.050-001.020', 1, 'F21-50: information: SEG-020', '2018-01-15', 'PRODUCIBLE', 'pcs', 204 ),
      ( '21.16.050-001.030', 1, 'F21-50: information: SEG-030', '2018-01-15', 'PRODUCIBLE', 'pcs', 205 );

  INSERT INTO
    product.information
      ( id, gid, part_code, version_num, display_name, published_date )
    VALUES
      ( 101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '21.16.050-001', 1, 'F21-50: information', '2017-10-23' );
  
  INSERT INTO
    product.definition
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id )
    VALUES
      ( 201, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'F21-50: DEF-1', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 202, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'F21-50: DEF-2', 2, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 203, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'F21-50: DEF-3', 3, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 );
      
  INSERT INTO
    product.segment
      ( id, gid, definition_id, display_name, part_code, version_num )
    VALUES
      ( 301, '70d09038-5dfe-11e8-b545-d4bed939923a', 203, 'SEG-01', '21.16.050-001.010', 1 ),
      ( 302, 'b978dcdc-5dfe-11e8-b547-d4bed939923a', 203, 'SEG-02', '21.16.050-001.020', 1 ),
      ( 303, 'da20e25e-5dfe-11e8-b548-d4bed939923a', 203, 'SEG-03', '21.16.050-001.030', 1 );

  INSERT INTO
    product.dependency
      ( ancestor, descendant, depth )
    VALUES
      ( 'b978dcdc-5dfe-11e8-b547-d4bed939923a', '70d09038-5dfe-11e8-b545-d4bed939923a', 1 ),
      ( 'da20e25e-5dfe-11e8-b548-d4bed939923a', 'b978dcdc-5dfe-11e8-b547-d4bed939923a', 2 );

  _body := product.get_body(203);
  PERFORM pgunit.assert_array_equals(_test_body, _body, 'Incorrect _body value');

END;
$$;


ALTER FUNCTION tests.__product__get_body() OWNER TO postgres;

--
-- TOC entry 599 (class 1255 OID 28734)
-- Name: __product__get_gid_by_id(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__product__get_gid_by_id() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_id CONSTANT bigint := 202;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a';
  _gid uuid;
BEGIN
  
  RAISE DEBUG '#trace Check __product__get_gid_by_id()';

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
    product.information
      ( id, gid, part_code, version_num, display_name, published_date )
    VALUES
      ( 101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23' );
  
  INSERT INTO
    product.definition
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id )
    VALUES
      ( 201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 );

  _gid := product.get_gid_by_id(_test_id);
  PERFORM pgunit.assert_equals(_test_gid, _gid, 'Incorrect _gid value');

END;
$$;


ALTER FUNCTION tests.__product__get_gid_by_id() OWNER TO postgres;

--
-- TOC entry 595 (class 1255 OID 28732)
-- Name: __product__get_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__product__get_head() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.product_head;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a';
  _test_display_name CONSTANT character varying := '11с32п-50х40: definition';
  _test_document_date CONSTANT date := '2017-10-21'::date;
  _test_curr_fsmt CONSTANT common.document_fsmt := 'PROPOSED'::common.document_fsmt;
  _test_document_type CONSTANT common.document_kind := 'PRODUCT'::common.document_kind;
  _test_component_part_code CONSTANT character varying := '11.32.050-001';
  _test_component_version_num CONSTANT integer := 1;
BEGIN
  
  RAISE DEBUG '#trace Check __product__get_head()';

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
    product.information
      ( id, gid, part_code, version_num, display_name, published_date )
    VALUES
      ( 101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23' );
  
  INSERT INTO
    product.definition
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id )
    VALUES
      ( 201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 );

  _head := product.get_head(202);
  PERFORM pgunit.assert_equals(_test_gid, _head.gid, 'Incorrect gid value');
  PERFORM pgunit.assert_equals(_test_display_name, _head.display_name, 'Incorrect display_name value');
  PERFORM pgunit.assert_equals(_test_document_date, _head.document_date, 'Incorrect document_date value');
  PERFORM pgunit.assert_equals(_test_curr_fsmt, _head.curr_fsmt, 'Incorrect curr_fsmt value');
  PERFORM pgunit.assert_equals(_test_document_type, _head.document_type, 'Incorrect document_type value');
  PERFORM pgunit.assert_equals(_test_component_part_code, (_head.producible_spec).part_code, 'Incorrect component_part_code value');
  PERFORM pgunit.assert_equals(_test_component_version_num, (_head.producible_spec).version_num, 'Incorrect component_version_num value');

  _head := product.get_head(203);
  PERFORM pgunit.assert_not_equals(_test_gid, _head.gid, 'Incorrect gid value');
  
  _head := product.get_head(204);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__product__get_head() OWNER TO postgres;

--
-- TOC entry 598 (class 1255 OID 28733)
-- Name: __product__get_id_by_gid(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__product__get_id_by_gid() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_id CONSTANT bigint := 202;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a';
  _id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __product__get_id_by_gid()';

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
    product.information
      ( id, gid, part_code, version_num, display_name, published_date )
    VALUES
      ( 101, '733dcfde-d041-11e7-91f5-54ab3aa56755', '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23' );
  
  INSERT INTO
    product.definition
      ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id )
    VALUES
      ( 201, '8236af18-eb1a-11e6-8a73-d4bed939923a', '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 202, '9b2952fa-01d1-11e7-b440-d4bed939923a', '11с32п-50х40: definition', 2, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 ),
      ( 203, 'f20d7196-01d1-11e7-b441-d4bed939923a', '11с32п-50х40: definition', 3, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21', 101 );

  _id := product.get_id_by_gid(_test_gid);
  PERFORM pgunit.assert_equals(_test_id, _id, 'Incorrect _id value');

END;
$$;


ALTER FUNCTION tests.__product__get_id_by_gid() OWNER TO postgres;

--
-- TOC entry 583 (class 1255 OID 17687)
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
-- TOC entry 585 (class 1255 OID 17688)
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
-- TOC entry 586 (class 1255 OID 17689)
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
-- TOC entry 587 (class 1255 OID 17690)
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
-- TOC entry 593 (class 1255 OID 17692)
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
  TRUNCATE TABLE binding.mbom_to_operation CASCADE;
  TRUNCATE TABLE binding.mbom_to_process CASCADE;
  TRUNCATE TABLE binding.mbom_to_product CASCADE;
  TRUNCATE TABLE binding.operation_to_product CASCADE;
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
  TRUNCATE TABLE product.definition CASCADE;
  TRUNCATE TABLE product.dependency CASCADE;
  TRUNCATE TABLE product.information CASCADE;
  TRUNCATE TABLE product.segment CASCADE;
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
  ALTER SEQUENCE tooling.information_id_seq RESTART WITH 1;
  -- ALTER SEQUENCE uom.uom_role_uom_role_id_seq RESTART WITH 1;
END;
$$;


ALTER FUNCTION tests._reset_data() OWNER TO postgres;

--
-- TOC entry 588 (class 1255 OID 17693)
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
-- TOC entry 589 (class 1255 OID 17694)
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
-- TOC entry 590 (class 1255 OID 17695)
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
-- TOC entry 591 (class 1255 OID 17696)
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
-- TOC entry 592 (class 1255 OID 17697)
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
-- TOC entry 584 (class 1255 OID 17698)
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
-- TOC entry 256 (class 1259 OID 17724)
-- Name: ebom_to_mbom; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.ebom_to_mbom (
    ebom_id bigint NOT NULL,
    mbom_id bigint NOT NULL
);


ALTER TABLE binding.ebom_to_mbom OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 17727)
-- Name: ebom_to_process; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.ebom_to_process (
    ebom_id bigint NOT NULL,
    process_id bigint NOT NULL
);


ALTER TABLE binding.ebom_to_process OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 17730)
-- Name: ebom_to_product; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.ebom_to_product (
    ebom_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE binding.ebom_to_product OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 17739)
-- Name: mbom_to_process; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.mbom_to_process (
    mbom_id bigint NOT NULL,
    process_id bigint NOT NULL
);


ALTER TABLE binding.mbom_to_process OWNER TO postgres;

--
-- TOC entry 260 (class 1259 OID 17742)
-- Name: mbom_to_product; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.mbom_to_product (
    mbom_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE binding.mbom_to_product OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 17754)
-- Name: document_abbrevation; Type: TABLE; Schema: common; Owner: postgres
--

CREATE TABLE common.document_abbrevation (
    doctype common.document_kind NOT NULL,
    abbrevation character varying DEFAULT '[ABBREVATION]'::character varying NOT NULL
);


ALTER TABLE common.document_abbrevation OWNER TO postgres;

--
-- TOC entry 262 (class 1259 OID 17761)
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
-- TOC entry 263 (class 1259 OID 17768)
-- Name: assembly; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE ebom.assembly (
    CONSTRAINT assembly_component_type_check CHECK ((component_type = 'ASSEMBLY'::common.component_kind))
)
INHERITS (ebom.component);


ALTER TABLE ebom.assembly OWNER TO postgres;

--
-- TOC entry 264 (class 1259 OID 17776)
-- Name: buyable; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE ebom.buyable (
    CONSTRAINT buyable_component_type_check CHECK ((component_type = 'BUYABLE'::common.component_kind))
)
INHERITS (ebom.component);


ALTER TABLE ebom.buyable OWNER TO postgres;

--
-- TOC entry 265 (class 1259 OID 17784)
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
-- TOC entry 266 (class 1259 OID 17795)
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
-- TOC entry 4228 (class 0 OID 0)
-- Dependencies: 266
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: ebom; Owner: postgres
--

ALTER SEQUENCE ebom.definition_id_seq OWNED BY ebom.definition.id;


--
-- TOC entry 267 (class 1259 OID 17797)
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
-- TOC entry 268 (class 1259 OID 17805)
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
-- TOC entry 4229 (class 0 OID 0)
-- Dependencies: 268
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: ebom; Owner: postgres
--

ALTER SEQUENCE ebom.information_id_seq OWNED BY ebom.information.id;


--
-- TOC entry 269 (class 1259 OID 17807)
-- Name: part; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE ebom.part (
    CONSTRAINT part_component_type_check CHECK ((component_type = 'PART'::common.component_kind))
)
INHERITS (ebom.component);


ALTER TABLE ebom.part OWNER TO postgres;

--
-- TOC entry 270 (class 1259 OID 17815)
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
-- TOC entry 271 (class 1259 OID 17823)
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
-- TOC entry 4230 (class 0 OID 0)
-- Dependencies: 271
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: equipment; Owner: postgres
--

ALTER SEQUENCE equipment.information_id_seq OWNED BY equipment.information.id;


--
-- TOC entry 272 (class 1259 OID 17825)
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
-- TOC entry 4231 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN information.facility_type; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON COLUMN facility.information.facility_type IS 'PERA organization level';


--
-- TOC entry 273 (class 1259 OID 17834)
-- Name: area; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE facility.area (
    CONSTRAINT area_facility_type_check CHECK ((facility_type = 'AREA'::common.facility_kind))
)
INHERITS (facility.information);


ALTER TABLE facility.area OWNER TO postgres;

--
-- TOC entry 4232 (class 0 OID 0)
-- Dependencies: 273
-- Name: TABLE area; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON TABLE facility.area IS 'PERA model level-2';


--
-- TOC entry 274 (class 1259 OID 17844)
-- Name: enterprise; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE facility.enterprise (
    CONSTRAINT enterprise_facility_type_check CHECK ((facility_type = 'ENTERPRISE'::common.facility_kind))
)
INHERITS (facility.information);


ALTER TABLE facility.enterprise OWNER TO postgres;

--
-- TOC entry 4233 (class 0 OID 0)
-- Dependencies: 274
-- Name: TABLE enterprise; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON TABLE facility.enterprise IS 'PERA model level-4';


--
-- TOC entry 275 (class 1259 OID 17854)
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
-- TOC entry 4234 (class 0 OID 0)
-- Dependencies: 275
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: facility; Owner: postgres
--

ALTER SEQUENCE facility.information_id_seq OWNED BY facility.information.id;


--
-- TOC entry 276 (class 1259 OID 17856)
-- Name: line; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE facility.line (
    CONSTRAINT line_facility_type_check CHECK ((facility_type = 'LINE'::common.facility_kind))
)
INHERITS (facility.information);


ALTER TABLE facility.line OWNER TO postgres;

--
-- TOC entry 4235 (class 0 OID 0)
-- Dependencies: 276
-- Name: TABLE line; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON TABLE facility.line IS 'PERA model level-1 (production line)';


--
-- TOC entry 277 (class 1259 OID 17866)
-- Name: site; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE facility.site (
    CONSTRAINT site_facility_type_check CHECK ((facility_type = 'SITE'::common.facility_kind)),
    CONSTRAINT site_parent_facility_code_check CHECK ((parent_facility_code IS NOT NULL))
)
INHERITS (facility.information);


ALTER TABLE facility.site OWNER TO postgres;

--
-- TOC entry 4236 (class 0 OID 0)
-- Dependencies: 277
-- Name: TABLE site; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON TABLE facility.site IS 'PERA model level-3';


--
-- TOC entry 278 (class 1259 OID 17877)
-- Name: zone; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE facility.zone (
    CONSTRAINT zone_facility_type_check CHECK ((facility_type = 'ZONE'::common.facility_kind))
)
INHERITS (facility.information);


ALTER TABLE facility.zone OWNER TO postgres;

--
-- TOC entry 4237 (class 0 OID 0)
-- Dependencies: 278
-- Name: TABLE zone; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON TABLE facility.zone IS 'PERA model level-1 (storge zone)';


--
-- TOC entry 279 (class 1259 OID 17887)
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
-- TOC entry 4238 (class 0 OID 0)
-- Dependencies: 279
-- Name: TABLE conglomeration; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.conglomeration IS 'inventory list';


--
-- TOC entry 280 (class 1259 OID 17895)
-- Name: assembly; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.assembly (
    CONSTRAINT assembly_inventory_type_check CHECK ((inventory_type = 'ASSEMBLY'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.assembly OWNER TO postgres;

--
-- TOC entry 4239 (class 0 OID 0)
-- Dependencies: 280
-- Name: TABLE assembly; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.assembly IS 'ebom assembly component';


--
-- TOC entry 281 (class 1259 OID 17904)
-- Name: buyable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.buyable (
    CONSTRAINT buyable_inventory_type_check CHECK ((inventory_type = 'BUYABLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.buyable OWNER TO postgres;

--
-- TOC entry 4240 (class 0 OID 0)
-- Dependencies: 281
-- Name: TABLE buyable; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.buyable IS 'ebom buyable component';


--
-- TOC entry 282 (class 1259 OID 17913)
-- Name: consumable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.consumable (
    CONSTRAINT consumable_inventory_type_check CHECK ((inventory_type = 'CONSUMABLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.consumable OWNER TO postgres;

--
-- TOC entry 4241 (class 0 OID 0)
-- Dependencies: 282
-- Name: TABLE consumable; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.consumable IS 'mbom consumable component';


--
-- TOC entry 283 (class 1259 OID 17922)
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
-- TOC entry 284 (class 1259 OID 17934)
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
-- TOC entry 4242 (class 0 OID 0)
-- Dependencies: 284
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: inventory; Owner: postgres
--

ALTER SEQUENCE inventory.definition_id_seq OWNED BY inventory.definition.id;


--
-- TOC entry 285 (class 1259 OID 17936)
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
-- TOC entry 286 (class 1259 OID 17944)
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
-- TOC entry 4243 (class 0 OID 0)
-- Dependencies: 286
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: inventory; Owner: postgres
--

ALTER SEQUENCE inventory.information_id_seq OWNED BY inventory.information.id;


--
-- TOC entry 287 (class 1259 OID 17946)
-- Name: measurement; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.measurement (
    definition_id bigint NOT NULL,
    uom_code character varying NOT NULL,
    factor numeric
);


ALTER TABLE inventory.measurement OWNER TO postgres;

--
-- TOC entry 288 (class 1259 OID 17952)
-- Name: part; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.part (
    CONSTRAINT part_inventory_type_check CHECK ((inventory_type = 'PART'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.part OWNER TO postgres;

--
-- TOC entry 4244 (class 0 OID 0)
-- Dependencies: 288
-- Name: TABLE part; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.part IS 'ebom part component';


--
-- TOC entry 289 (class 1259 OID 17961)
-- Name: phantom; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.phantom (
    CONSTRAINT phantom_inventory_type_check CHECK ((inventory_type = 'PHANTOM'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.phantom OWNER TO postgres;

--
-- TOC entry 4245 (class 0 OID 0)
-- Dependencies: 289
-- Name: TABLE phantom; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.phantom IS 'mbom phantom component';


--
-- TOC entry 290 (class 1259 OID 17970)
-- Name: primal; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.primal (
    CONSTRAINT primal_inventory_type_check CHECK ((inventory_type = 'PRIMAL'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.primal OWNER TO postgres;

--
-- TOC entry 4246 (class 0 OID 0)
-- Dependencies: 290
-- Name: TABLE primal; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.primal IS 'mbom primal component';


--
-- TOC entry 291 (class 1259 OID 17979)
-- Name: producible; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.producible (
    CONSTRAINT producible_inventory_type_check CHECK ((inventory_type = 'PRODUCIBLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.producible OWNER TO postgres;

--
-- TOC entry 4247 (class 0 OID 0)
-- Dependencies: 291
-- Name: TABLE producible; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.producible IS 'mbom producible component';


--
-- TOC entry 292 (class 1259 OID 17988)
-- Name: salable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.salable (
    CONSTRAINT salable_inventory_type_check CHECK ((inventory_type = 'SALABLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.salable OWNER TO postgres;

--
-- TOC entry 4248 (class 0 OID 0)
-- Dependencies: 292
-- Name: TABLE salable; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.salable IS 'inventory salable component';


--
-- TOC entry 293 (class 1259 OID 17997)
-- Name: storable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.storable (
    CONSTRAINT storable_inventory_type_check CHECK ((inventory_type = 'STORABLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.storable OWNER TO postgres;

--
-- TOC entry 294 (class 1259 OID 18006)
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
-- TOC entry 295 (class 1259 OID 18013)
-- Name: consumable; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE mbom.consumable (
    CONSTRAINT consumable_component_type_check CHECK ((material_type = 'CONSUMABLE'::common.material_kind))
)
INHERITS (mbom.material);


ALTER TABLE mbom.consumable OWNER TO postgres;

--
-- TOC entry 296 (class 1259 OID 18021)
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
-- TOC entry 297 (class 1259 OID 18032)
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
-- TOC entry 4249 (class 0 OID 0)
-- Dependencies: 297
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: mbom; Owner: postgres
--

ALTER SEQUENCE mbom.definition_id_seq OWNED BY mbom.definition.id;


--
-- TOC entry 298 (class 1259 OID 18034)
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
-- TOC entry 299 (class 1259 OID 18042)
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
-- TOC entry 4250 (class 0 OID 0)
-- Dependencies: 299
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: mbom; Owner: postgres
--

ALTER SEQUENCE mbom.information_id_seq OWNED BY mbom.information.id;


--
-- TOC entry 300 (class 1259 OID 18044)
-- Name: primal; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE mbom.primal (
    CONSTRAINT primal_component_type_check CHECK ((material_type = 'PRIMAL'::common.material_kind))
)
INHERITS (mbom.material);


ALTER TABLE mbom.primal OWNER TO postgres;

--
-- TOC entry 301 (class 1259 OID 18052)
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
-- TOC entry 302 (class 1259 OID 18060)
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
-- TOC entry 4251 (class 0 OID 0)
-- Dependencies: 302
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE operation.information_id_seq OWNED BY operation.information.id;


--
-- TOC entry 303 (class 1259 OID 18062)
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
-- TOC entry 304 (class 1259 OID 18070)
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
-- TOC entry 4252 (class 0 OID 0)
-- Dependencies: 304
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: personnel; Owner: postgres
--

ALTER SEQUENCE personnel.information_id_seq OWNED BY personnel.information.id;


--
-- TOC entry 305 (class 1259 OID 18072)
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
-- TOC entry 306 (class 1259 OID 18080)
-- Name: consumable; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE process.consumable (
)
INHERITS (process.material);


ALTER TABLE process.consumable OWNER TO postgres;

--
-- TOC entry 307 (class 1259 OID 18088)
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
-- TOC entry 308 (class 1259 OID 18099)
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
-- TOC entry 4253 (class 0 OID 0)
-- Dependencies: 308
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE process.definition_id_seq OWNED BY process.definition.id;


--
-- TOC entry 309 (class 1259 OID 18101)
-- Name: dependency; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE process.dependency (
    ancestor uuid NOT NULL,
    descendant uuid NOT NULL,
    depth integer DEFAULT 1 NOT NULL
);


ALTER TABLE process.dependency OWNER TO postgres;

--
-- TOC entry 310 (class 1259 OID 18105)
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
-- TOC entry 311 (class 1259 OID 18111)
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
-- TOC entry 312 (class 1259 OID 18119)
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
-- TOC entry 4254 (class 0 OID 0)
-- Dependencies: 312
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE process.information_id_seq OWNED BY process.information.id;


--
-- TOC entry 313 (class 1259 OID 18121)
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
-- TOC entry 314 (class 1259 OID 18131)
-- Name: primal; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE process.primal (
)
INHERITS (process.material);


ALTER TABLE process.primal OWNER TO postgres;

--
-- TOC entry 315 (class 1259 OID 18139)
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
-- TOC entry 316 (class 1259 OID 18145)
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
-- TOC entry 4255 (class 0 OID 0)
-- Dependencies: 316
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE process.segment_id_seq OWNED BY process.segment.id;


--
-- TOC entry 317 (class 1259 OID 18147)
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
-- TOC entry 318 (class 1259 OID 18170)
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
-- TOC entry 4256 (class 0 OID 0)
-- Dependencies: 318
-- Name: TABLE definition; Type: COMMENT; Schema: product; Owner: postgres
--

COMMENT ON TABLE product.definition IS 'definitions of elements of product structure list';


--
-- TOC entry 319 (class 1259 OID 18181)
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
-- TOC entry 4257 (class 0 OID 0)
-- Dependencies: 319
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE product.definition_id_seq OWNED BY product.definition.id;


--
-- TOC entry 320 (class 1259 OID 18183)
-- Name: dependency; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.dependency (
    ancestor uuid NOT NULL,
    descendant uuid NOT NULL,
    depth integer DEFAULT 1 NOT NULL
);


ALTER TABLE product.dependency OWNER TO postgres;

--
-- TOC entry 4258 (class 0 OID 0)
-- Dependencies: 320
-- Name: TABLE dependency; Type: COMMENT; Schema: product; Owner: postgres
--

COMMENT ON TABLE product.dependency IS 'dependencies of segments within definition';


--
-- TOC entry 321 (class 1259 OID 18193)
-- Name: information; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL
);


ALTER TABLE product.information OWNER TO postgres;

--
-- TOC entry 4259 (class 0 OID 0)
-- Dependencies: 321
-- Name: TABLE information; Type: COMMENT; Schema: product; Owner: postgres
--

COMMENT ON TABLE product.information IS 'elements of product structure list';


--
-- TOC entry 322 (class 1259 OID 18201)
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
-- TOC entry 4260 (class 0 OID 0)
-- Dependencies: 322
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE product.information_id_seq OWNED BY product.information.id;


--
-- TOC entry 323 (class 1259 OID 18222)
-- Name: segment; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.segment (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    definition_id bigint NOT NULL,
    display_name character varying,
    part_code character varying NOT NULL,
    version_num integer NOT NULL
);


ALTER TABLE product.segment OWNER TO postgres;

--
-- TOC entry 4261 (class 0 OID 0)
-- Dependencies: 323
-- Name: TABLE segment; Type: COMMENT; Schema: product; Owner: postgres
--

COMMENT ON TABLE product.segment IS 'segments of product structure within definition';


--
-- TOC entry 324 (class 1259 OID 18229)
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
-- TOC entry 4262 (class 0 OID 0)
-- Dependencies: 324
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE product.segment_id_seq OWNED BY product.segment.id;


--
-- TOC entry 325 (class 1259 OID 18237)
-- Name: body; Type: TABLE; Schema: request; Owner: postgres
--

CREATE TABLE request.body (
    head_id bigint NOT NULL,
    stride_gid uuid NOT NULL,
    quantity common.quantity NOT NULL
);


ALTER TABLE request.body OWNER TO postgres;

--
-- TOC entry 326 (class 1259 OID 18243)
-- Name: head; Type: TABLE; Schema: request; Owner: postgres
--

CREATE TABLE request.head (
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


ALTER TABLE request.head OWNER TO postgres;

--
-- TOC entry 327 (class 1259 OID 18254)
-- Name: head_id_seq; Type: SEQUENCE; Schema: request; Owner: postgres
--

CREATE SEQUENCE request.head_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE request.head_id_seq OWNER TO postgres;

--
-- TOC entry 4263 (class 0 OID 0)
-- Dependencies: 327
-- Name: head_id_seq; Type: SEQUENCE OWNED BY; Schema: request; Owner: postgres
--

ALTER SEQUENCE request.head_id_seq OWNED BY request.head.id;


--
-- TOC entry 328 (class 1259 OID 18256)
-- Name: numerator; Type: TABLE; Schema: request; Owner: postgres
--

CREATE TABLE request.numerator (
    facility_code character varying NOT NULL,
    julianized_week integer NOT NULL,
    current_value integer DEFAULT 0 NOT NULL
);


ALTER TABLE request.numerator OWNER TO postgres;

--
-- TOC entry 329 (class 1259 OID 18263)
-- Name: body; Type: TABLE; Schema: response; Owner: postgres
--

CREATE TABLE response.body (
    head_id bigint NOT NULL,
    stride_gid uuid NOT NULL,
    quantity common.quantity NOT NULL
);


ALTER TABLE response.body OWNER TO postgres;

--
-- TOC entry 330 (class 1259 OID 18269)
-- Name: head; Type: TABLE; Schema: response; Owner: postgres
--

CREATE TABLE response.head (
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


ALTER TABLE response.head OWNER TO postgres;

--
-- TOC entry 331 (class 1259 OID 18279)
-- Name: head_id_seq; Type: SEQUENCE; Schema: response; Owner: postgres
--

CREATE SEQUENCE response.head_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE response.head_id_seq OWNER TO postgres;

--
-- TOC entry 4264 (class 0 OID 0)
-- Dependencies: 331
-- Name: head_id_seq; Type: SEQUENCE OWNED BY; Schema: response; Owner: postgres
--

ALTER SEQUENCE response.head_id_seq OWNED BY response.head.id;


--
-- TOC entry 332 (class 1259 OID 18281)
-- Name: numerator; Type: TABLE; Schema: response; Owner: postgres
--

CREATE TABLE response.numerator (
    facility_code character varying NOT NULL,
    julianized_week integer NOT NULL,
    current_value integer DEFAULT 0 NOT NULL
);


ALTER TABLE response.numerator OWNER TO postgres;

--
-- TOC entry 333 (class 1259 OID 18288)
-- Name: material; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE route.material (
    segment_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    quantity common.quantity,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL,
    material_type common.material_kind,
    rationing_qty integer DEFAULT 1
);


ALTER TABLE route.material OWNER TO postgres;

--
-- TOC entry 334 (class 1259 OID 18296)
-- Name: consumable; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE route.consumable (
)
INHERITS (route.material);


ALTER TABLE route.consumable OWNER TO postgres;

--
-- TOC entry 335 (class 1259 OID 18304)
-- Name: definition; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE route.definition (
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


ALTER TABLE route.definition OWNER TO postgres;

--
-- TOC entry 336 (class 1259 OID 18315)
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
-- TOC entry 4265 (class 0 OID 0)
-- Dependencies: 336
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: route; Owner: postgres
--

ALTER SEQUENCE route.definition_id_seq OWNED BY route.definition.id;


--
-- TOC entry 337 (class 1259 OID 18317)
-- Name: equipment; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE route.equipment (
    segment_id bigint NOT NULL,
    equipment_code character varying NOT NULL,
    version_num integer,
    quantity common.quantity,
    uom_code character varying
);


ALTER TABLE route.equipment OWNER TO postgres;

--
-- TOC entry 338 (class 1259 OID 18323)
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
-- TOC entry 339 (class 1259 OID 18331)
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
-- TOC entry 4266 (class 0 OID 0)
-- Dependencies: 339
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: route; Owner: postgres
--

ALTER SEQUENCE route.information_id_seq OWNED BY route.information.id;


--
-- TOC entry 340 (class 1259 OID 18333)
-- Name: personnel; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE route.personnel (
    segment_id bigint NOT NULL,
    personnel_code character varying NOT NULL,
    version_num integer,
    rationing_qty integer DEFAULT 1 NOT NULL,
    batch_qty integer,
    workers_qty integer DEFAULT 1 NOT NULL,
    setup_time interval DEFAULT '00:01:00'::interval NOT NULL,
    piece_time interval DEFAULT '00:01:00'::interval NOT NULL
);


ALTER TABLE route.personnel OWNER TO postgres;

--
-- TOC entry 341 (class 1259 OID 18343)
-- Name: primal; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE route.primal (
)
INHERITS (route.material);


ALTER TABLE route.primal OWNER TO postgres;

--
-- TOC entry 342 (class 1259 OID 18351)
-- Name: segment; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE route.segment (
    id bigint NOT NULL,
    gid uuid NOT NULL,
    definition_id bigint NOT NULL,
    order_num integer,
    operation_code character varying,
    part_code character varying,
    version_num integer,
    process_num integer,
    segment_num integer,
    facility_code character varying NOT NULL
);


ALTER TABLE route.segment OWNER TO postgres;

--
-- TOC entry 343 (class 1259 OID 18357)
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
-- TOC entry 4267 (class 0 OID 0)
-- Dependencies: 343
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: route; Owner: postgres
--

ALTER SEQUENCE route.segment_id_seq OWNED BY route.segment.id;


--
-- TOC entry 344 (class 1259 OID 18359)
-- Name: tooling; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE route.tooling (
    segment_id bigint NOT NULL,
    tooling_code character varying NOT NULL,
    version_num integer,
    quantity common.quantity,
    uom_code character varying
);


ALTER TABLE route.tooling OWNER TO postgres;

--
-- TOC entry 345 (class 1259 OID 18365)
-- Name: weight; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE route.weight (
    definition_id bigint NOT NULL,
    rate common.quantity
);


ALTER TABLE route.weight OWNER TO postgres;

--
-- TOC entry 346 (class 1259 OID 18371)
-- Name: calendar; Type: TABLE; Schema: schedule; Owner: postgres
--

CREATE TABLE schedule.calendar (
    calendar_date date NOT NULL,
    day_number integer,
    week_number integer,
    julianized_day integer,
    julianized_week integer
);


ALTER TABLE schedule.calendar OWNER TO postgres;

--
-- TOC entry 347 (class 1259 OID 18457)
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
-- TOC entry 348 (class 1259 OID 18462)
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
-- TOC entry 349 (class 1259 OID 18467)
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
-- TOC entry 350 (class 1259 OID 18472)
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
-- TOC entry 351 (class 1259 OID 18480)
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
-- TOC entry 4268 (class 0 OID 0)
-- Dependencies: 351
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: tooling; Owner: postgres
--

ALTER SEQUENCE tooling.information_id_seq OWNED BY tooling.information.id;


--
-- TOC entry 352 (class 1259 OID 18482)
-- Name: assignment; Type: TABLE; Schema: uom; Owner: postgres
--

CREATE TABLE uom.assignment (
    uom_role_id bigint NOT NULL,
    uom_role_code character varying(100),
    uom_role_name character varying(300)
);


ALTER TABLE uom.assignment OWNER TO postgres;

--
-- TOC entry 4269 (class 0 OID 0)
-- Dependencies: 352
-- Name: TABLE assignment; Type: COMMENT; Schema: uom; Owner: postgres
--

COMMENT ON TABLE uom.assignment IS 'uom role';


--
-- TOC entry 353 (class 1259 OID 18485)
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
-- TOC entry 354 (class 1259 OID 18491)
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
-- TOC entry 4270 (class 0 OID 0)
-- Dependencies: 354
-- Name: uom_role_uom_role_id_seq; Type: SEQUENCE OWNED BY; Schema: uom; Owner: postgres
--

ALTER SEQUENCE uom.uom_role_uom_role_id_seq OWNED BY uom.assignment.uom_role_id;


--
-- TOC entry 3617 (class 2604 OID 18494)
-- Name: assembly uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.assembly ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3619 (class 2604 OID 18495)
-- Name: buyable uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.buyable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3626 (class 2604 OID 18496)
-- Name: definition id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition ALTER COLUMN id SET DEFAULT nextval('ebom.definition_id_seq'::regclass);


--
-- TOC entry 3629 (class 2604 OID 18497)
-- Name: information id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information ALTER COLUMN id SET DEFAULT nextval('ebom.information_id_seq'::regclass);


--
-- TOC entry 3630 (class 2604 OID 18498)
-- Name: part uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.part ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3634 (class 2604 OID 18499)
-- Name: information id; Type: DEFAULT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY equipment.information ALTER COLUMN id SET DEFAULT nextval('equipment.information_id_seq'::regclass);


--
-- TOC entry 3639 (class 2604 OID 18500)
-- Name: area id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area ALTER COLUMN id SET DEFAULT nextval('facility.information_id_seq'::regclass);


--
-- TOC entry 3640 (class 2604 OID 18501)
-- Name: area gid; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3641 (class 2604 OID 18502)
-- Name: area version_num; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3642 (class 2604 OID 18503)
-- Name: area published_date; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3644 (class 2604 OID 18504)
-- Name: enterprise id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.enterprise ALTER COLUMN id SET DEFAULT nextval('facility.information_id_seq'::regclass);


--
-- TOC entry 3645 (class 2604 OID 18505)
-- Name: enterprise gid; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.enterprise ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3646 (class 2604 OID 18506)
-- Name: enterprise version_num; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.enterprise ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3647 (class 2604 OID 18507)
-- Name: enterprise published_date; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.enterprise ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3638 (class 2604 OID 18508)
-- Name: information id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.information ALTER COLUMN id SET DEFAULT nextval('facility.information_id_seq'::regclass);


--
-- TOC entry 3649 (class 2604 OID 18509)
-- Name: line id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line ALTER COLUMN id SET DEFAULT nextval('facility.information_id_seq'::regclass);


--
-- TOC entry 3650 (class 2604 OID 18510)
-- Name: line gid; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3651 (class 2604 OID 18511)
-- Name: line version_num; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3652 (class 2604 OID 18512)
-- Name: line published_date; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3654 (class 2604 OID 18513)
-- Name: site id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site ALTER COLUMN id SET DEFAULT nextval('facility.information_id_seq'::regclass);


--
-- TOC entry 3655 (class 2604 OID 18514)
-- Name: site gid; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3656 (class 2604 OID 18515)
-- Name: site version_num; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3657 (class 2604 OID 18516)
-- Name: site published_date; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3660 (class 2604 OID 18517)
-- Name: zone id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone ALTER COLUMN id SET DEFAULT nextval('facility.information_id_seq'::regclass);


--
-- TOC entry 3661 (class 2604 OID 18518)
-- Name: zone gid; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3662 (class 2604 OID 18519)
-- Name: zone version_num; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3663 (class 2604 OID 18520)
-- Name: zone published_date; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3667 (class 2604 OID 18521)
-- Name: assembly version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.assembly ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3668 (class 2604 OID 18522)
-- Name: assembly published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.assembly ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3670 (class 2604 OID 18523)
-- Name: buyable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.buyable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3671 (class 2604 OID 18524)
-- Name: buyable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.buyable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3673 (class 2604 OID 18525)
-- Name: consumable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.consumable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3674 (class 2604 OID 18526)
-- Name: consumable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.consumable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3682 (class 2604 OID 18527)
-- Name: definition id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition ALTER COLUMN id SET DEFAULT nextval('inventory.definition_id_seq'::regclass);


--
-- TOC entry 3685 (class 2604 OID 18528)
-- Name: information id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.information ALTER COLUMN id SET DEFAULT nextval('inventory.information_id_seq'::regclass);


--
-- TOC entry 3686 (class 2604 OID 18529)
-- Name: part version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.part ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3687 (class 2604 OID 18530)
-- Name: part published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.part ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3689 (class 2604 OID 18531)
-- Name: phantom version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.phantom ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3690 (class 2604 OID 18532)
-- Name: phantom published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.phantom ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3692 (class 2604 OID 18533)
-- Name: primal version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.primal ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3693 (class 2604 OID 18534)
-- Name: primal published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.primal ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3695 (class 2604 OID 18535)
-- Name: producible version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.producible ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3696 (class 2604 OID 18536)
-- Name: producible published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.producible ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3698 (class 2604 OID 18537)
-- Name: salable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.salable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3699 (class 2604 OID 18538)
-- Name: salable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.salable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3701 (class 2604 OID 18539)
-- Name: storable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.storable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3702 (class 2604 OID 18540)
-- Name: storable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.storable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3705 (class 2604 OID 18541)
-- Name: consumable uom_code; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3712 (class 2604 OID 18542)
-- Name: definition id; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition ALTER COLUMN id SET DEFAULT nextval('mbom.definition_id_seq'::regclass);


--
-- TOC entry 3715 (class 2604 OID 18543)
-- Name: information id; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.information ALTER COLUMN id SET DEFAULT nextval('mbom.information_id_seq'::regclass);


--
-- TOC entry 3716 (class 2604 OID 18544)
-- Name: primal uom_code; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3720 (class 2604 OID 18545)
-- Name: information id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.information ALTER COLUMN id SET DEFAULT nextval('operation.information_id_seq'::regclass);


--
-- TOC entry 3723 (class 2604 OID 18546)
-- Name: information id; Type: DEFAULT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY personnel.information ALTER COLUMN id SET DEFAULT nextval('personnel.information_id_seq'::regclass);


--
-- TOC entry 3726 (class 2604 OID 18547)
-- Name: consumable uom_code; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3727 (class 2604 OID 18548)
-- Name: consumable rationing_qty; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.consumable ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3733 (class 2604 OID 18549)
-- Name: definition id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.definition ALTER COLUMN id SET DEFAULT nextval('process.definition_id_seq'::regclass);


--
-- TOC entry 3737 (class 2604 OID 18550)
-- Name: information id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.information ALTER COLUMN id SET DEFAULT nextval('process.information_id_seq'::regclass);


--
-- TOC entry 3742 (class 2604 OID 18551)
-- Name: primal uom_code; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3743 (class 2604 OID 18552)
-- Name: primal rationing_qty; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.primal ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3744 (class 2604 OID 18553)
-- Name: segment id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.segment ALTER COLUMN id SET DEFAULT nextval('process.segment_id_seq'::regclass);


--
-- TOC entry 3750 (class 2604 OID 18556)
-- Name: definition id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.definition ALTER COLUMN id SET DEFAULT nextval('product.definition_id_seq'::regclass);


--
-- TOC entry 3754 (class 2604 OID 18557)
-- Name: information id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.information ALTER COLUMN id SET DEFAULT nextval('product.information_id_seq'::regclass);


--
-- TOC entry 3756 (class 2604 OID 18560)
-- Name: segment id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.segment ALTER COLUMN id SET DEFAULT nextval('product.segment_id_seq'::regclass);


--
-- TOC entry 3761 (class 2604 OID 18561)
-- Name: head id; Type: DEFAULT; Schema: request; Owner: postgres
--

ALTER TABLE ONLY request.head ALTER COLUMN id SET DEFAULT nextval('request.head_id_seq'::regclass);


--
-- TOC entry 3768 (class 2604 OID 18562)
-- Name: head id; Type: DEFAULT; Schema: response; Owner: postgres
--

ALTER TABLE ONLY response.head ALTER COLUMN id SET DEFAULT nextval('response.head_id_seq'::regclass);


--
-- TOC entry 3772 (class 2604 OID 18563)
-- Name: consumable uom_code; Type: DEFAULT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3773 (class 2604 OID 18564)
-- Name: consumable rationing_qty; Type: DEFAULT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.consumable ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3779 (class 2604 OID 18565)
-- Name: definition id; Type: DEFAULT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.definition ALTER COLUMN id SET DEFAULT nextval('route.definition_id_seq'::regclass);


--
-- TOC entry 3782 (class 2604 OID 18566)
-- Name: information id; Type: DEFAULT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.information ALTER COLUMN id SET DEFAULT nextval('route.information_id_seq'::regclass);


--
-- TOC entry 3787 (class 2604 OID 18567)
-- Name: primal uom_code; Type: DEFAULT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3788 (class 2604 OID 18568)
-- Name: primal rationing_qty; Type: DEFAULT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.primal ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3789 (class 2604 OID 18569)
-- Name: segment id; Type: DEFAULT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.segment ALTER COLUMN id SET DEFAULT nextval('route.segment_id_seq'::regclass);


--
-- TOC entry 3792 (class 2604 OID 18577)
-- Name: information id; Type: DEFAULT; Schema: tooling; Owner: postgres
--

ALTER TABLE ONLY tooling.information ALTER COLUMN id SET DEFAULT nextval('tooling.information_id_seq'::regclass);


--
-- TOC entry 3793 (class 2604 OID 18578)
-- Name: assignment uom_role_id; Type: DEFAULT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.assignment ALTER COLUMN uom_role_id SET DEFAULT nextval('uom.uom_role_uom_role_id_seq'::regclass);


--
-- TOC entry 3795 (class 2606 OID 18588)
-- Name: ebom_to_mbom ebom_to_mbom_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.ebom_to_mbom
    ADD CONSTRAINT ebom_to_mbom_pkey PRIMARY KEY (ebom_id, mbom_id);


--
-- TOC entry 3797 (class 2606 OID 18590)
-- Name: ebom_to_process ebom_to_process_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.ebom_to_process
    ADD CONSTRAINT ebom_to_process_pkey PRIMARY KEY (ebom_id, process_id);


--
-- TOC entry 3799 (class 2606 OID 18592)
-- Name: ebom_to_product ebom_to_product_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.ebom_to_product
    ADD CONSTRAINT ebom_to_product_pkey PRIMARY KEY (ebom_id, product_id);


--
-- TOC entry 3801 (class 2606 OID 18598)
-- Name: mbom_to_process mbom_to_process_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.mbom_to_process
    ADD CONSTRAINT mbom_to_process_pkey PRIMARY KEY (mbom_id, process_id);


--
-- TOC entry 3803 (class 2606 OID 18600)
-- Name: mbom_to_product mbom_to_product_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.mbom_to_product
    ADD CONSTRAINT mbom_to_product_pkey PRIMARY KEY (mbom_id, product_id);


--
-- TOC entry 3805 (class 2606 OID 18608)
-- Name: document_abbrevation document_abbrevation_pkey; Type: CONSTRAINT; Schema: common; Owner: postgres
--

ALTER TABLE ONLY common.document_abbrevation
    ADD CONSTRAINT document_abbrevation_pkey PRIMARY KEY (doctype);


--
-- TOC entry 3809 (class 2606 OID 18610)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3811 (class 2606 OID 18612)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3807 (class 2606 OID 18614)
-- Name: component component_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.component
    ADD CONSTRAINT component_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3813 (class 2606 OID 18616)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 3815 (class 2606 OID 18618)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 3817 (class 2606 OID 18620)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3819 (class 2606 OID 18622)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 3821 (class 2606 OID 18624)
-- Name: information information_part_code_version_num_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information
    ADD CONSTRAINT information_part_code_version_num_key UNIQUE (part_code, version_num);


--
-- TOC entry 3823 (class 2606 OID 18626)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3825 (class 2606 OID 18628)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.part
    ADD CONSTRAINT part_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3827 (class 2606 OID 18630)
-- Name: information information_equipment_code_version_num_key; Type: CONSTRAINT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY equipment.information
    ADD CONSTRAINT information_equipment_code_version_num_key UNIQUE (equipment_code, version_num);


--
-- TOC entry 3829 (class 2606 OID 18632)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY equipment.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 3831 (class 2606 OID 18634)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY equipment.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3835 (class 2606 OID 18636)
-- Name: area area_facility_code_key; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area
    ADD CONSTRAINT area_facility_code_key UNIQUE (facility_code);


--
-- TOC entry 3837 (class 2606 OID 18638)
-- Name: area area_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area
    ADD CONSTRAINT area_pkey PRIMARY KEY (id);


--
-- TOC entry 3839 (class 2606 OID 18640)
-- Name: enterprise enterprise_facility_code_key; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.enterprise
    ADD CONSTRAINT enterprise_facility_code_key UNIQUE (facility_code);


--
-- TOC entry 3841 (class 2606 OID 18642)
-- Name: enterprise enterprise_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.enterprise
    ADD CONSTRAINT enterprise_pkey PRIMARY KEY (id);


--
-- TOC entry 3833 (class 2606 OID 18644)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3843 (class 2606 OID 18646)
-- Name: line line_facility_code_key; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line
    ADD CONSTRAINT line_facility_code_key UNIQUE (facility_code);


--
-- TOC entry 3845 (class 2606 OID 18648)
-- Name: line line_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line
    ADD CONSTRAINT line_pkey PRIMARY KEY (id);


--
-- TOC entry 3847 (class 2606 OID 18650)
-- Name: site site_facility_code_key; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site
    ADD CONSTRAINT site_facility_code_key UNIQUE (facility_code);


--
-- TOC entry 3849 (class 2606 OID 18652)
-- Name: site site_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site
    ADD CONSTRAINT site_pkey PRIMARY KEY (id);


--
-- TOC entry 3851 (class 2606 OID 18654)
-- Name: zone zone_facility_code_key; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone
    ADD CONSTRAINT zone_facility_code_key UNIQUE (facility_code);


--
-- TOC entry 3853 (class 2606 OID 18656)
-- Name: zone zone_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone
    ADD CONSTRAINT zone_pkey PRIMARY KEY (id);


--
-- TOC entry 3857 (class 2606 OID 18658)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3859 (class 2606 OID 18660)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3855 (class 2606 OID 18662)
-- Name: conglomeration conglomeration_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.conglomeration
    ADD CONSTRAINT conglomeration_pkey PRIMARY KEY (part_code, version_num, inventory_type);


--
-- TOC entry 3861 (class 2606 OID 18664)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3863 (class 2606 OID 18666)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 3865 (class 2606 OID 18668)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 3867 (class 2606 OID 18670)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3869 (class 2606 OID 18672)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 3871 (class 2606 OID 18674)
-- Name: information information_part_code; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.information
    ADD CONSTRAINT information_part_code UNIQUE (part_code);


--
-- TOC entry 3873 (class 2606 OID 18676)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3875 (class 2606 OID 18678)
-- Name: measurement measurement_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.measurement
    ADD CONSTRAINT measurement_pkey PRIMARY KEY (definition_id, uom_code);


--
-- TOC entry 3877 (class 2606 OID 18680)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.part
    ADD CONSTRAINT part_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3879 (class 2606 OID 18682)
-- Name: phantom phantom_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.phantom
    ADD CONSTRAINT phantom_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3881 (class 2606 OID 18684)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3883 (class 2606 OID 18686)
-- Name: producible producible_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.producible
    ADD CONSTRAINT producible_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3885 (class 2606 OID 18688)
-- Name: salable salable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.salable
    ADD CONSTRAINT salable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3887 (class 2606 OID 18690)
-- Name: storable storable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.storable
    ADD CONSTRAINT storable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3891 (class 2606 OID 18692)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3893 (class 2606 OID 18694)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 3895 (class 2606 OID 18696)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 3897 (class 2606 OID 18698)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3899 (class 2606 OID 18700)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3889 (class 2606 OID 18702)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3901 (class 2606 OID 18704)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3903 (class 2606 OID 18706)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 3905 (class 2606 OID 18708)
-- Name: information information_operation_code_version_num_key; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.information
    ADD CONSTRAINT information_operation_code_version_num_key UNIQUE (operation_code, version_num);


--
-- TOC entry 3907 (class 2606 OID 18710)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3909 (class 2606 OID 18712)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY personnel.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 3911 (class 2606 OID 18714)
-- Name: information information_personnel_code_version_num_key; Type: CONSTRAINT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY personnel.information
    ADD CONSTRAINT information_personnel_code_version_num_key UNIQUE (personnel_code, version_num);


--
-- TOC entry 3913 (class 2606 OID 18716)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY personnel.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3917 (class 2606 OID 18718)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3919 (class 2606 OID 18720)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3921 (class 2606 OID 18722)
-- Name: definition definition_version_num_information_id_key; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.definition
    ADD CONSTRAINT definition_version_num_information_id_key UNIQUE (version_num, information_id);


--
-- TOC entry 3923 (class 2606 OID 18724)
-- Name: dependency dependency_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.dependency
    ADD CONSTRAINT dependency_pkey PRIMARY KEY (ancestor, descendant);


--
-- TOC entry 3925 (class 2606 OID 18726)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, equipment_code);


--
-- TOC entry 3927 (class 2606 OID 18728)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3915 (class 2606 OID 18730)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3929 (class 2606 OID 18732)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, personnel_code);


--
-- TOC entry 3931 (class 2606 OID 18734)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3933 (class 2606 OID 18736)
-- Name: segment segment_definition_id_operation_code_key; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.segment
    ADD CONSTRAINT segment_definition_id_operation_code_key UNIQUE (definition_id, operation_code);


--
-- TOC entry 3935 (class 2606 OID 18738)
-- Name: segment segment_gid_key; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.segment
    ADD CONSTRAINT segment_gid_key UNIQUE (gid);


--
-- TOC entry 3937 (class 2606 OID 18740)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 3939 (class 2606 OID 18742)
-- Name: tooling tooling_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.tooling
    ADD CONSTRAINT tooling_pkey PRIMARY KEY (segment_id, tooling_code);


--
-- TOC entry 3941 (class 2606 OID 18746)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3943 (class 2606 OID 18748)
-- Name: definition definition_version_num_information_id_key; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.definition
    ADD CONSTRAINT definition_version_num_information_id_key UNIQUE (version_num, information_id);


--
-- TOC entry 3945 (class 2606 OID 18750)
-- Name: dependency dependency_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.dependency
    ADD CONSTRAINT dependency_pkey PRIMARY KEY (ancestor, descendant);


--
-- TOC entry 3947 (class 2606 OID 18754)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3949 (class 2606 OID 18762)
-- Name: segment segment_gid_key; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.segment
    ADD CONSTRAINT segment_gid_key UNIQUE (gid);


--
-- TOC entry 3951 (class 2606 OID 18764)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 3953 (class 2606 OID 18768)
-- Name: body body_pkey; Type: CONSTRAINT; Schema: request; Owner: postgres
--

ALTER TABLE ONLY request.body
    ADD CONSTRAINT body_pkey PRIMARY KEY (head_id, stride_gid);


--
-- TOC entry 3955 (class 2606 OID 18770)
-- Name: head head_gid_key; Type: CONSTRAINT; Schema: request; Owner: postgres
--

ALTER TABLE ONLY request.head
    ADD CONSTRAINT head_gid_key UNIQUE (gid);


--
-- TOC entry 3957 (class 2606 OID 18772)
-- Name: head head_pkey; Type: CONSTRAINT; Schema: request; Owner: postgres
--

ALTER TABLE ONLY request.head
    ADD CONSTRAINT head_pkey PRIMARY KEY (id);


--
-- TOC entry 3959 (class 2606 OID 18774)
-- Name: numerator numerator_pkey; Type: CONSTRAINT; Schema: request; Owner: postgres
--

ALTER TABLE ONLY request.numerator
    ADD CONSTRAINT numerator_pkey PRIMARY KEY (facility_code, julianized_week);


--
-- TOC entry 3961 (class 2606 OID 18776)
-- Name: body body_pkey; Type: CONSTRAINT; Schema: response; Owner: postgres
--

ALTER TABLE ONLY response.body
    ADD CONSTRAINT body_pkey PRIMARY KEY (head_id, stride_gid);


--
-- TOC entry 3963 (class 2606 OID 18778)
-- Name: head head_gid_key; Type: CONSTRAINT; Schema: response; Owner: postgres
--

ALTER TABLE ONLY response.head
    ADD CONSTRAINT head_gid_key UNIQUE (gid);


--
-- TOC entry 3965 (class 2606 OID 18780)
-- Name: head head_pkey; Type: CONSTRAINT; Schema: response; Owner: postgres
--

ALTER TABLE ONLY response.head
    ADD CONSTRAINT head_pkey PRIMARY KEY (id);


--
-- TOC entry 3967 (class 2606 OID 18782)
-- Name: numerator numerator_pkey; Type: CONSTRAINT; Schema: response; Owner: postgres
--

ALTER TABLE ONLY response.numerator
    ADD CONSTRAINT numerator_pkey PRIMARY KEY (facility_code, julianized_week);


--
-- TOC entry 3971 (class 2606 OID 18784)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3973 (class 2606 OID 18786)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3975 (class 2606 OID 18788)
-- Name: definition definition_version_num_information_id_key; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.definition
    ADD CONSTRAINT definition_version_num_information_id_key UNIQUE (version_num, information_id);


--
-- TOC entry 3991 (class 2606 OID 18790)
-- Name: weight descendant_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.weight
    ADD CONSTRAINT descendant_pkey PRIMARY KEY (definition_id);


--
-- TOC entry 3977 (class 2606 OID 18792)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, equipment_code);


--
-- TOC entry 3979 (class 2606 OID 18794)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3969 (class 2606 OID 18796)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3981 (class 2606 OID 18798)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, personnel_code);


--
-- TOC entry 3983 (class 2606 OID 18800)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3985 (class 2606 OID 18802)
-- Name: segment segment_gid_key; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.segment
    ADD CONSTRAINT segment_gid_key UNIQUE (gid);


--
-- TOC entry 3987 (class 2606 OID 18804)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 3989 (class 2606 OID 18806)
-- Name: tooling tooling_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.tooling
    ADD CONSTRAINT tooling_pkey PRIMARY KEY (segment_id, tooling_code);


--
-- TOC entry 3993 (class 2606 OID 18808)
-- Name: calendar calendar_pkey; Type: CONSTRAINT; Schema: schedule; Owner: postgres
--

ALTER TABLE ONLY schedule.calendar
    ADD CONSTRAINT calendar_pkey PRIMARY KEY (calendar_date);


--
-- TOC entry 3995 (class 2606 OID 18834)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: tooling; Owner: postgres
--

ALTER TABLE ONLY tooling.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 3997 (class 2606 OID 18836)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: tooling; Owner: postgres
--

ALTER TABLE ONLY tooling.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3999 (class 2606 OID 18838)
-- Name: information information_tooling_code_version_num_key; Type: CONSTRAINT; Schema: tooling; Owner: postgres
--

ALTER TABLE ONLY tooling.information
    ADD CONSTRAINT information_tooling_code_version_num_key UNIQUE (tooling_code, version_num);


--
-- TOC entry 4005 (class 2606 OID 18840)
-- Name: information uom_pkey; Type: CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.information
    ADD CONSTRAINT uom_pkey PRIMARY KEY (uom_code);


--
-- TOC entry 4001 (class 2606 OID 18842)
-- Name: assignment uom_role_pkey; Type: CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.assignment
    ADD CONSTRAINT uom_role_pkey PRIMARY KEY (uom_role_id);


--
-- TOC entry 4003 (class 2606 OID 18844)
-- Name: assignment uom_role_uom_role_code_key; Type: CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.assignment
    ADD CONSTRAINT uom_role_uom_role_code_key UNIQUE (uom_role_code);


--
-- TOC entry 4067 (class 2620 OID 18847)
-- Name: definition set_prev_doc_fsmt; Type: TRIGGER; Schema: ebom; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON ebom.definition FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 4068 (class 2620 OID 18848)
-- Name: body disallow_editing_of_committed_document_body; Type: TRIGGER; Schema: request; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_body BEFORE INSERT OR DELETE OR UPDATE ON request.body FOR EACH ROW EXECUTE PROCEDURE request.disallow_editing_of_committed_document_body();


--
-- TOC entry 4069 (class 2620 OID 18849)
-- Name: head disallow_editing_of_committed_document_head; Type: TRIGGER; Schema: request; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_head BEFORE DELETE OR UPDATE ON request.head FOR EACH ROW EXECUTE PROCEDURE common.disallow_editing_of_committed_document_head();


--
-- TOC entry 4070 (class 2620 OID 18850)
-- Name: head set_prev_doc_fsmt; Type: TRIGGER; Schema: request; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON request.head FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 4071 (class 2620 OID 18851)
-- Name: body disallow_editing_of_committed_document_body; Type: TRIGGER; Schema: response; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_body BEFORE INSERT OR DELETE OR UPDATE ON response.body FOR EACH ROW EXECUTE PROCEDURE response.disallow_editing_of_committed_document_body();


--
-- TOC entry 4072 (class 2620 OID 18852)
-- Name: head disallow_editing_of_committed_document_head; Type: TRIGGER; Schema: response; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_head BEFORE DELETE OR UPDATE ON response.head FOR EACH ROW EXECUTE PROCEDURE common.disallow_editing_of_committed_document_head();


--
-- TOC entry 4073 (class 2620 OID 18853)
-- Name: head set_prev_doc_fsmt; Type: TRIGGER; Schema: response; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON response.head FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 4006 (class 2606 OID 18864)
-- Name: assembly assembly_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.assembly
    ADD CONSTRAINT assembly_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES ebom.definition(id);


--
-- TOC entry 4007 (class 2606 OID 18869)
-- Name: assembly assembly_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.assembly
    ADD CONSTRAINT assembly_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.assembly(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4008 (class 2606 OID 18874)
-- Name: buyable buyable_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.buyable
    ADD CONSTRAINT buyable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES ebom.definition(id);


--
-- TOC entry 4009 (class 2606 OID 18879)
-- Name: buyable buyable_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.buyable
    ADD CONSTRAINT buyable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.buyable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4010 (class 2606 OID 18884)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES ebom.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4011 (class 2606 OID 18889)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.assembly(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4012 (class 2606 OID 18894)
-- Name: part part_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.part
    ADD CONSTRAINT part_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES ebom.definition(id);


--
-- TOC entry 4013 (class 2606 OID 18899)
-- Name: part part_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.part
    ADD CONSTRAINT part_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.part(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4014 (class 2606 OID 18904)
-- Name: area area_parent_facility_code_fkey; Type: FK CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area
    ADD CONSTRAINT area_parent_facility_code_fkey FOREIGN KEY (parent_facility_code) REFERENCES facility.site(facility_code) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4015 (class 2606 OID 18909)
-- Name: line line_parent_facility_code_fkey; Type: FK CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line
    ADD CONSTRAINT line_parent_facility_code_fkey FOREIGN KEY (parent_facility_code) REFERENCES facility.area(facility_code) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4016 (class 2606 OID 18914)
-- Name: site site_parent_facility_code_fkey; Type: FK CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site
    ADD CONSTRAINT site_parent_facility_code_fkey FOREIGN KEY (parent_facility_code) REFERENCES facility.enterprise(facility_code) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4017 (class 2606 OID 18919)
-- Name: zone zone_parent_facility_code_fkey; Type: FK CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone
    ADD CONSTRAINT zone_parent_facility_code_fkey FOREIGN KEY (parent_facility_code) REFERENCES facility.area(facility_code);


--
-- TOC entry 4018 (class 2606 OID 18924)
-- Name: assembly assembly_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.assembly
    ADD CONSTRAINT assembly_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4019 (class 2606 OID 18929)
-- Name: buyable buyable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.buyable
    ADD CONSTRAINT buyable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4020 (class 2606 OID 18934)
-- Name: consumable consumable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.consumable
    ADD CONSTRAINT consumable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4021 (class 2606 OID 18939)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES inventory.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4022 (class 2606 OID 18944)
-- Name: measurement measurement_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.measurement
    ADD CONSTRAINT measurement_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4023 (class 2606 OID 18949)
-- Name: part part_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.part
    ADD CONSTRAINT part_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4024 (class 2606 OID 18954)
-- Name: phantom phantom_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.phantom
    ADD CONSTRAINT phantom_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4025 (class 2606 OID 18959)
-- Name: primal primal_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.primal
    ADD CONSTRAINT primal_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4026 (class 2606 OID 18964)
-- Name: producible producible_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.producible
    ADD CONSTRAINT producible_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4027 (class 2606 OID 18969)
-- Name: salable salable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.salable
    ADD CONSTRAINT salable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4028 (class 2606 OID 18974)
-- Name: storable storable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.storable
    ADD CONSTRAINT storable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4029 (class 2606 OID 18979)
-- Name: consumable consumable_definition_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.consumable
    ADD CONSTRAINT consumable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES mbom.definition(id);


--
-- TOC entry 4030 (class 2606 OID 18984)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4031 (class 2606 OID 18989)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES mbom.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4032 (class 2606 OID 18994)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4033 (class 2606 OID 18999)
-- Name: primal primal_definition_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.primal
    ADD CONSTRAINT primal_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES mbom.definition(id);


--
-- TOC entry 4034 (class 2606 OID 19004)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4035 (class 2606 OID 19009)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4036 (class 2606 OID 19014)
-- Name: consumable consumable_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.consumable
    ADD CONSTRAINT consumable_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4037 (class 2606 OID 19019)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES process.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4038 (class 2606 OID 19024)
-- Name: dependency dependency_ancestor_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.dependency
    ADD CONSTRAINT dependency_ancestor_fkey FOREIGN KEY (ancestor) REFERENCES process.segment(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4039 (class 2606 OID 19029)
-- Name: dependency dependency_descendant_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.dependency
    ADD CONSTRAINT dependency_descendant_fkey FOREIGN KEY (descendant) REFERENCES process.segment(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4040 (class 2606 OID 19034)
-- Name: equipment equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4041 (class 2606 OID 19039)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4042 (class 2606 OID 19044)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4043 (class 2606 OID 19049)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4044 (class 2606 OID 19054)
-- Name: primal primal_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.primal
    ADD CONSTRAINT primal_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4045 (class 2606 OID 19059)
-- Name: segment segment_definition_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.segment
    ADD CONSTRAINT segment_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES process.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4046 (class 2606 OID 19064)
-- Name: tooling tooling_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.tooling
    ADD CONSTRAINT tooling_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4047 (class 2606 OID 19079)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES product.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4048 (class 2606 OID 19084)
-- Name: dependency dependency_ancestor_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.dependency
    ADD CONSTRAINT dependency_ancestor_fkey FOREIGN KEY (ancestor) REFERENCES product.segment(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4049 (class 2606 OID 19089)
-- Name: dependency dependency_descendant_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.dependency
    ADD CONSTRAINT dependency_descendant_fkey FOREIGN KEY (descendant) REFERENCES product.segment(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4050 (class 2606 OID 28421)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.producible(part_code, version_num);


--
-- TOC entry 4051 (class 2606 OID 19119)
-- Name: segment segment_definition_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.segment
    ADD CONSTRAINT segment_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES product.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4052 (class 2606 OID 28430)
-- Name: segment segment_part_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.segment
    ADD CONSTRAINT segment_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.producible(part_code, version_num);


--
-- TOC entry 4053 (class 2606 OID 19129)
-- Name: body body_head_id_fkey; Type: FK CONSTRAINT; Schema: request; Owner: postgres
--

ALTER TABLE ONLY request.body
    ADD CONSTRAINT body_head_id_fkey FOREIGN KEY (head_id) REFERENCES request.head(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4054 (class 2606 OID 19134)
-- Name: body body_head_id_fkey; Type: FK CONSTRAINT; Schema: response; Owner: postgres
--

ALTER TABLE ONLY response.body
    ADD CONSTRAINT body_head_id_fkey FOREIGN KEY (head_id) REFERENCES response.head(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4055 (class 2606 OID 19139)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4056 (class 2606 OID 19144)
-- Name: consumable consumable_segment_id_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.consumable
    ADD CONSTRAINT consumable_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES route.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4057 (class 2606 OID 19149)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES route.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4065 (class 2606 OID 19154)
-- Name: weight descendant_definition_id_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.weight
    ADD CONSTRAINT descendant_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES route.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4058 (class 2606 OID 19159)
-- Name: equipment equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES route.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4059 (class 2606 OID 19164)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4060 (class 2606 OID 19169)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES route.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4061 (class 2606 OID 19174)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4062 (class 2606 OID 19179)
-- Name: primal primal_segment_id_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.primal
    ADD CONSTRAINT primal_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES route.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4063 (class 2606 OID 19184)
-- Name: segment segment_definition_id_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.segment
    ADD CONSTRAINT segment_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES route.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4064 (class 2606 OID 19189)
-- Name: tooling tooling_segment_id_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY route.tooling
    ADD CONSTRAINT tooling_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES route.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4066 (class 2606 OID 19254)
-- Name: information uom_base_uom_code_fkey; Type: FK CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.information
    ADD CONSTRAINT uom_base_uom_code_fkey FOREIGN KEY (base_uom_code) REFERENCES uom.information(uom_code);


-- Completed on 2021-04-29 18:14:55 EEST

--
-- PostgreSQL database dump complete
--

