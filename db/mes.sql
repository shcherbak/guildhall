--
-- PostgreSQL database dump
--

-- Dumped from database version 11.12 (Debian 11.12-0+deb10u1)
-- Dumped by pg_dump version 11.12 (Debian 11.12-0+deb10u1)

-- Started on 2021-05-20 00:22:20 EEST

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
-- TOC entry 11 (class 2615 OID 61984)
-- Name: balance; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA balance;


ALTER SCHEMA balance OWNER TO postgres;

--
-- TOC entry 4892 (class 0 OID 0)
-- Dependencies: 11
-- Name: SCHEMA balance; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA balance IS 'ALL: balance accounts';


--
-- TOC entry 17 (class 2615 OID 61985)
-- Name: binding; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA binding;


ALTER SCHEMA binding OWNER TO postgres;

--
-- TOC entry 4893 (class 0 OID 0)
-- Dependencies: 17
-- Name: SCHEMA binding; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA binding IS 'ALL: document bindings';


--
-- TOC entry 32 (class 2615 OID 61986)
-- Name: calendar; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA calendar;


ALTER SCHEMA calendar OWNER TO postgres;

--
-- TOC entry 4894 (class 0 OID 0)
-- Dependencies: 32
-- Name: SCHEMA calendar; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA calendar IS 'APS: work calendar';


--
-- TOC entry 16 (class 2615 OID 61987)
-- Name: claim; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA claim;


ALTER SCHEMA claim OWNER TO postgres;

--
-- TOC entry 4895 (class 0 OID 0)
-- Dependencies: 16
-- Name: SCHEMA claim; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA claim IS 'WMS: stock claim';


--
-- TOC entry 19 (class 2615 OID 61988)
-- Name: common; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA common;


ALTER SCHEMA common OWNER TO postgres;

--
-- TOC entry 4896 (class 0 OID 0)
-- Dependencies: 19
-- Name: SCHEMA common; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA common IS 'ALL: common objects';


--
-- TOC entry 18 (class 2615 OID 61990)
-- Name: ebom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ebom;


ALTER SCHEMA ebom OWNER TO postgres;

--
-- TOC entry 4897 (class 0 OID 0)
-- Dependencies: 18
-- Name: SCHEMA ebom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA ebom IS 'MES: engineering bill of materials';


--
-- TOC entry 14 (class 2615 OID 61991)
-- Name: equipment; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA equipment;


ALTER SCHEMA equipment OWNER TO postgres;

--
-- TOC entry 4898 (class 0 OID 0)
-- Dependencies: 14
-- Name: SCHEMA equipment; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA equipment IS 'MES:  equipmet classes definitions';


--
-- TOC entry 34 (class 2615 OID 61992)
-- Name: facility; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA facility;


ALTER SCHEMA facility OWNER TO postgres;

--
-- TOC entry 4899 (class 0 OID 0)
-- Dependencies: 34
-- Name: SCHEMA facility; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA facility IS 'MDM: PERA model facility structure';


--
-- TOC entry 13 (class 2615 OID 61993)
-- Name: inventory; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA inventory;


ALTER SCHEMA inventory OWNER TO postgres;

--
-- TOC entry 4900 (class 0 OID 0)
-- Dependencies: 13
-- Name: SCHEMA inventory; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA inventory IS 'MDM: inventory classes definitions';


--
-- TOC entry 36 (class 2615 OID 61994)
-- Name: issue; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA issue;


ALTER SCHEMA issue OWNER TO postgres;

--
-- TOC entry 4901 (class 0 OID 0)
-- Dependencies: 36
-- Name: SCHEMA issue; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA issue IS 'WMS: warehouse issues';


--
-- TOC entry 8 (class 2615 OID 61995)
-- Name: mbom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA mbom;


ALTER SCHEMA mbom OWNER TO postgres;

--
-- TOC entry 4902 (class 0 OID 0)
-- Dependencies: 8
-- Name: SCHEMA mbom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA mbom IS 'MES: manufacturing bill of materials';


--
-- TOC entry 27 (class 2615 OID 61996)
-- Name: operation; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA operation;


ALTER SCHEMA operation OWNER TO postgres;

--
-- TOC entry 4903 (class 0 OID 0)
-- Dependencies: 27
-- Name: SCHEMA operation; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA operation IS 'MES: operation classes definitions';


--
-- TOC entry 21 (class 2615 OID 61997)
-- Name: personnel; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA personnel;


ALTER SCHEMA personnel OWNER TO postgres;

--
-- TOC entry 4904 (class 0 OID 0)
-- Dependencies: 21
-- Name: SCHEMA personnel; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA personnel IS 'MES: personnel classes definitions';


--
-- TOC entry 26 (class 2615 OID 61998)
-- Name: pgunit; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA pgunit;


ALTER SCHEMA pgunit OWNER TO postgres;

--
-- TOC entry 4905 (class 0 OID 0)
-- Dependencies: 26
-- Name: SCHEMA pgunit; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA pgunit IS 'pgunit objects';


--
-- TOC entry 15 (class 2615 OID 61999)
-- Name: process; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA process;


ALTER SCHEMA process OWNER TO postgres;

--
-- TOC entry 4906 (class 0 OID 0)
-- Dependencies: 15
-- Name: SCHEMA process; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA process IS 'MES: production processes definitions';


--
-- TOC entry 9 (class 2615 OID 62000)
-- Name: product; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA product;


ALTER SCHEMA product OWNER TO postgres;

--
-- TOC entry 4907 (class 0 OID 0)
-- Dependencies: 9
-- Name: SCHEMA product; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA product IS 'MES: product segments definitions';


--
-- TOC entry 12 (class 2615 OID 62001)
-- Name: receipt; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA receipt;


ALTER SCHEMA receipt OWNER TO postgres;

--
-- TOC entry 4908 (class 0 OID 0)
-- Dependencies: 12
-- Name: SCHEMA receipt; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA receipt IS 'WMS: warehouse receipts';


--
-- TOC entry 22 (class 2615 OID 62002)
-- Name: request; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA request;


ALTER SCHEMA request OWNER TO postgres;

--
-- TOC entry 4909 (class 0 OID 0)
-- Dependencies: 22
-- Name: SCHEMA request; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA request IS 'MES: process segment request';


--
-- TOC entry 20 (class 2615 OID 62003)
-- Name: requirement; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA requirement;


ALTER SCHEMA requirement OWNER TO postgres;

--
-- TOC entry 4910 (class 0 OID 0)
-- Dependencies: 20
-- Name: SCHEMA requirement; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA requirement IS 'MES: production request requirements';


--
-- TOC entry 33 (class 2615 OID 62004)
-- Name: response; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA response;


ALTER SCHEMA response OWNER TO postgres;

--
-- TOC entry 4911 (class 0 OID 0)
-- Dependencies: 33
-- Name: SCHEMA response; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA response IS 'MES: process segment response';


--
-- TOC entry 30 (class 2615 OID 62005)
-- Name: schedule; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA schedule;


ALTER SCHEMA schedule OWNER TO postgres;

--
-- TOC entry 4912 (class 0 OID 0)
-- Dependencies: 30
-- Name: SCHEMA schedule; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA schedule IS 'MES: production schedule';


--
-- TOC entry 23 (class 2615 OID 62006)
-- Name: stockcard; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA stockcard;


ALTER SCHEMA stockcard OWNER TO postgres;

--
-- TOC entry 4913 (class 0 OID 0)
-- Dependencies: 23
-- Name: SCHEMA stockcard; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA stockcard IS 'WMS: warehouse stockcard';


--
-- TOC entry 28 (class 2615 OID 62007)
-- Name: stocktake; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA stocktake;


ALTER SCHEMA stocktake OWNER TO postgres;

--
-- TOC entry 4914 (class 0 OID 0)
-- Dependencies: 28
-- Name: SCHEMA stocktake; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA stocktake IS 'WMS: warehouse stocktake';


--
-- TOC entry 37 (class 2615 OID 62008)
-- Name: tests; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tests;


ALTER SCHEMA tests OWNER TO postgres;

--
-- TOC entry 4915 (class 0 OID 0)
-- Dependencies: 37
-- Name: SCHEMA tests; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA tests IS 'pgunit tests';


--
-- TOC entry 31 (class 2615 OID 62009)
-- Name: tooling; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tooling;


ALTER SCHEMA tooling OWNER TO postgres;

--
-- TOC entry 4916 (class 0 OID 0)
-- Dependencies: 31
-- Name: SCHEMA tooling; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA tooling IS 'MES: tooling classes definitions';


--
-- TOC entry 35 (class 2615 OID 62010)
-- Name: uom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA uom;


ALTER SCHEMA uom OWNER TO postgres;

--
-- TOC entry 4917 (class 0 OID 0)
-- Dependencies: 35
-- Name: SCHEMA uom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA uom IS 'MDM: units of measure classes definitions';


--
-- TOC entry 29 (class 2615 OID 62011)
-- Name: work; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA work;


ALTER SCHEMA work OWNER TO postgres;

--
-- TOC entry 4918 (class 0 OID 0)
-- Dependencies: 29
-- Name: SCHEMA work; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA work IS 'MES: production work progress report';


--
-- TOC entry 4 (class 3079 OID 62012)
-- Name: pldbgapi; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pldbgapi WITH SCHEMA public;


--
-- TOC entry 4919 (class 0 OID 0)
-- Dependencies: 4
-- Name: EXTENSION pldbgapi; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pldbgapi IS 'server-side support for debugging PL/pgSQL functions';


--
-- TOC entry 3 (class 3079 OID 62049)
-- Name: plpgsql_check; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql_check WITH SCHEMA public;


--
-- TOC entry 4920 (class 0 OID 0)
-- Dependencies: 3
-- Name: EXTENSION plpgsql_check; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql_check IS 'extended check for plpgsql functions';


--
-- TOC entry 2 (class 3079 OID 62072)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- TOC entry 4921 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- TOC entry 1275 (class 1247 OID 62084)
-- Name: approval_fsmt; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.approval_fsmt AS ENUM (
    'PROPOSED',
    'APPROVED',
    'CANCELED',
    'ACCEPTED',
    'REJECTED',
    'COMMITTED',
    'REVERTED',
    'PASSED',
    'FAILED'
);


ALTER TYPE common.approval_fsmt OWNER TO postgres;

--
-- TOC entry 1278 (class 1247 OID 62104)
-- Name: day_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.day_kind AS ENUM (
    'WORKDAY',
    'HOLIDAY'
);


ALTER TYPE common.day_kind OWNER TO postgres;

--
-- TOC entry 1281 (class 1247 OID 62111)
-- Name: calendar_body; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.calendar_body AS (
	facility_code character varying,
	workday_duration interval,
	workday_type common.day_kind
);


ALTER TYPE common.calendar_body OWNER TO postgres;

--
-- TOC entry 1284 (class 1247 OID 62114)
-- Name: calendar_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.calendar_head AS (
	calendar_date date,
	julianized_day integer,
	julianized_week integer
);


ALTER TYPE common.calendar_head OWNER TO postgres;

--
-- TOC entry 1287 (class 1247 OID 62116)
-- Name: document_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.document_kind AS ENUM (
    'CLAIM',
    'CUTOFF',
    'EBOM',
    'INVENTORY',
    'ISSUE',
    'MBOM',
    'PROCESS',
    'PRODUCT',
    'RECEIPT',
    'REQUEST',
    'RESPONSE',
    'STOCKTAKE',
    'WORK'
);


ALTER TYPE common.document_kind OWNER TO postgres;

--
-- TOC entry 1290 (class 1247 OID 62145)
-- Name: claim_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.claim_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	document_date date,
	facility_code character varying,
	curr_fsmt common.approval_fsmt,
	doctype common.document_kind,
	addressee character varying,
	due_date date
);


ALTER TYPE common.claim_head OWNER TO postgres;

--
-- TOC entry 1296 (class 1247 OID 62147)
-- Name: quantity; Type: DOMAIN; Schema: common; Owner: postgres
--

CREATE DOMAIN common.quantity AS numeric(20,4) DEFAULT 0
	CONSTRAINT quantity_is_positive CHECK ((VALUE >= (0)::numeric));


ALTER DOMAIN common.quantity OWNER TO postgres;

--
-- TOC entry 4922 (class 0 OID 0)
-- Dependencies: 1296
-- Name: DOMAIN quantity; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON DOMAIN common.quantity IS 'quantity domain';


--
-- TOC entry 1300 (class 1247 OID 62151)
-- Name: document_body; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.document_body AS (
	part_code character varying,
	quantity common.quantity,
	uom_code character varying
);


ALTER TYPE common.document_body OWNER TO postgres;

--
-- TOC entry 1303 (class 1247 OID 62154)
-- Name: claim_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.claim_document AS (
	head common.claim_head,
	body common.document_body[]
);


ALTER TYPE common.claim_document OWNER TO postgres;

--
-- TOC entry 1306 (class 1247 OID 62156)
-- Name: component_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.component_kind AS ENUM (
    'ASSEMBLY',
    'PART',
    'BUYABLE'
);


ALTER TYPE common.component_kind OWNER TO postgres;

--
-- TOC entry 4923 (class 0 OID 0)
-- Dependencies: 1306
-- Name: TYPE component_kind; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON TYPE common.component_kind IS 'engineering bill of materials components kinds';


--
-- TOC entry 1309 (class 1247 OID 62165)
-- Name: component_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.component_specification AS (
	part_code character varying,
	version_num integer,
	display_name character varying,
	quantity common.quantity,
	uom_code character varying,
	component_type common.component_kind
);


ALTER TYPE common.component_specification OWNER TO postgres;

--
-- TOC entry 4924 (class 0 OID 0)
-- Dependencies: 1309
-- Name: TYPE component_specification; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON TYPE common.component_specification IS 'engineering bill of materials components';


--
-- TOC entry 1312 (class 1247 OID 62167)
-- Name: material_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.material_kind AS ENUM (
    'CONSUMABLE',
    'PRODUCIBLE',
    'PRIMAL'
);


ALTER TYPE common.material_kind OWNER TO postgres;

--
-- TOC entry 1315 (class 1247 OID 62175)
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
-- TOC entry 1318 (class 1247 OID 62178)
-- Name: dependency_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.dependency_specification AS (
	ancestor uuid,
	descendant uuid
);


ALTER TYPE common.dependency_specification OWNER TO postgres;

--
-- TOC entry 1321 (class 1247 OID 62180)
-- Name: document_fsmt; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.document_fsmt AS ENUM (
    'PROPOSED',
    'COMMITTED',
    'REVERTED'
);


ALTER TYPE common.document_fsmt OWNER TO postgres;

--
-- TOC entry 1324 (class 1247 OID 62189)
-- Name: document_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.document_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	document_date date,
	facility_code character varying,
	curr_fsmt common.document_fsmt,
	doctype common.document_kind
);


ALTER TYPE common.document_head OWNER TO postgres;

--
-- TOC entry 1327 (class 1247 OID 62192)
-- Name: ebom_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.ebom_head AS (
	document_id bigint,
	gid uuid,
	document_date date,
	curr_fsmt common.document_fsmt,
	document_type common.document_kind,
	component_spec common.component_specification
);


ALTER TYPE common.ebom_head OWNER TO postgres;

--
-- TOC entry 4925 (class 0 OID 0)
-- Dependencies: 1327
-- Name: TYPE ebom_head; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON TYPE common.ebom_head IS 'engineering bill of materials information';


--
-- TOC entry 1330 (class 1247 OID 62195)
-- Name: ebom_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.ebom_document AS (
	head common.ebom_head,
	body common.component_specification[]
);


ALTER TYPE common.ebom_document OWNER TO postgres;

--
-- TOC entry 4926 (class 0 OID 0)
-- Dependencies: 1330
-- Name: TYPE ebom_document; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON TYPE common.ebom_document IS 'engineering bill of materials document';


--
-- TOC entry 1333 (class 1247 OID 62198)
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
-- TOC entry 1336 (class 1247 OID 62201)
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
-- TOC entry 1339 (class 1247 OID 62203)
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
-- TOC entry 1342 (class 1247 OID 62215)
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
-- TOC entry 1345 (class 1247 OID 62218)
-- Name: facility_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.facility_specification AS (
	facility_code character varying,
	version_num integer,
	facility_type common.facility_kind
);


ALTER TYPE common.facility_specification OWNER TO postgres;

--
-- TOC entry 1351 (class 1247 OID 62224)
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
-- TOC entry 1354 (class 1247 OID 62226)
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
-- TOC entry 1357 (class 1247 OID 62247)
-- Name: unit_conversion_type; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.unit_conversion_type AS (
	uom_code_from character varying,
	uom_code_to character varying,
	factor numeric
);


ALTER TYPE common.unit_conversion_type OWNER TO postgres;

--
-- TOC entry 1293 (class 1247 OID 62250)
-- Name: inventory_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.inventory_document AS (
	head common.inventory_head,
	meas common.unit_conversion_type[],
	kind common.inventory_kind[]
);


ALTER TYPE common.inventory_document OWNER TO postgres;

--
-- TOC entry 1360 (class 1247 OID 62253)
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
-- TOC entry 1375 (class 1247 OID 62268)
-- Name: issue_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.issue_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	document_date date,
	facility_code character varying,
	curr_fsmt common.document_fsmt,
	doctype common.document_kind,
	addressee character varying,
	due_date date
);


ALTER TYPE common.issue_head OWNER TO postgres;

--
-- TOC entry 1363 (class 1247 OID 62256)
-- Name: material_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.material_specification AS (
	part_code character varying,
	version_num integer,
	display_name character varying,
	quantity common.quantity,
	uom_code character varying,
	material_type common.material_kind
);


ALTER TYPE common.material_specification OWNER TO postgres;

--
-- TOC entry 1366 (class 1247 OID 62259)
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
-- TOC entry 1369 (class 1247 OID 62262)
-- Name: mbom_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.mbom_document AS (
	head common.mbom_head,
	body common.material_specification[]
);


ALTER TYPE common.mbom_document OWNER TO postgres;

--
-- TOC entry 1372 (class 1247 OID 62265)
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
-- TOC entry 1378 (class 1247 OID 62271)
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
-- TOC entry 1381 (class 1247 OID 62274)
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
-- TOC entry 1384 (class 1247 OID 62276)
-- Name: policy_mode; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.policy_mode AS ENUM (
    'DISABLED',
    'PERMISSIVE',
    'ENFORCING'
);


ALTER TYPE common.policy_mode OWNER TO postgres;

--
-- TOC entry 1387 (class 1247 OID 62285)
-- Name: process_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.process_head AS (
	document_id bigint,
	gid uuid,
	document_date date,
	curr_fsmt common.document_fsmt,
	document_type common.document_kind,
	producible_spec common.material_specification
);


ALTER TYPE common.process_head OWNER TO postgres;

--
-- TOC entry 1390 (class 1247 OID 62288)
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
-- TOC entry 1393 (class 1247 OID 62291)
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
-- TOC entry 1396 (class 1247 OID 62294)
-- Name: process_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.process_document AS (
	head common.process_head,
	body common.process_segment[],
	deps common.dependency_specification[]
);


ALTER TYPE common.process_document OWNER TO postgres;

--
-- TOC entry 4927 (class 0 OID 0)
-- Dependencies: 1396
-- Name: TYPE process_document; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON TYPE common.process_document IS 'operation';


--
-- TOC entry 1399 (class 1247 OID 62297)
-- Name: product_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.product_head AS (
	document_id bigint,
	gid uuid,
	document_date date,
	curr_fsmt common.document_fsmt,
	document_type common.document_kind,
	producible_spec common.material_specification
);


ALTER TYPE common.product_head OWNER TO postgres;

--
-- TOC entry 1402 (class 1247 OID 62300)
-- Name: product_segment; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.product_segment AS (
	gid uuid,
	producible_spec common.material_specification
);


ALTER TYPE common.product_segment OWNER TO postgres;

--
-- TOC entry 1405 (class 1247 OID 62303)
-- Name: product_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.product_document AS (
	head common.product_head,
	body common.product_segment[],
	deps common.dependency_specification[]
);


ALTER TYPE common.product_document OWNER TO postgres;

--
-- TOC entry 1408 (class 1247 OID 62305)
-- Name: quantity_signed; Type: DOMAIN; Schema: common; Owner: postgres
--

CREATE DOMAIN common.quantity_signed AS numeric(20,4) DEFAULT 0;


ALTER DOMAIN common.quantity_signed OWNER TO postgres;

--
-- TOC entry 4928 (class 0 OID 0)
-- Dependencies: 1408
-- Name: DOMAIN quantity_signed; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON DOMAIN common.quantity_signed IS 'quantity signed domain';


--
-- TOC entry 1348 (class 1247 OID 62221)
-- Name: receipt_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.receipt_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	document_date date,
	facility_code character varying,
	curr_fsmt common.document_fsmt,
	doctype common.document_kind,
	addresser character varying
);


ALTER TYPE common.receipt_head OWNER TO postgres;

--
-- TOC entry 1411 (class 1247 OID 62308)
-- Name: response_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.response_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	document_date date,
	facility_code character varying,
	curr_fsmt common.document_fsmt,
	doctype common.document_kind
);


ALTER TYPE common.response_head OWNER TO postgres;

--
-- TOC entry 1414 (class 1247 OID 62311)
-- Name: response_segment; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.response_segment AS (
	gid uuid,
	quantity common.quantity
);


ALTER TYPE common.response_segment OWNER TO postgres;

--
-- TOC entry 1417 (class 1247 OID 62314)
-- Name: response_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.response_document AS (
	head common.response_head,
	body common.response_segment[]
);


ALTER TYPE common.response_document OWNER TO postgres;

--
-- TOC entry 4929 (class 0 OID 0)
-- Dependencies: 1417
-- Name: TYPE response_document; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON TYPE common.response_document IS 'response';


--
-- TOC entry 1420 (class 1247 OID 62317)
-- Name: stocktake_body; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.stocktake_body AS (
	part_code character varying,
	quantity common.quantity,
	uom_code character varying,
	quantity_diff common.quantity_signed
);


ALTER TYPE common.stocktake_body OWNER TO postgres;

--
-- TOC entry 1423 (class 1247 OID 62320)
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
-- TOC entry 1426 (class 1247 OID 62322)
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
-- TOC entry 1429 (class 1247 OID 62333)
-- Name: uom_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.uom_head AS (
	uom_code character varying,
	uom_domain common.uom_domain_kind,
	base_uom_code character varying,
	factor numeric
);


ALTER TYPE common.uom_head OWNER TO postgres;

--
-- TOC entry 1432 (class 1247 OID 62336)
-- Name: work_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.work_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	document_date date,
	facility_code character varying,
	curr_fsmt common.document_fsmt,
	doctype common.document_kind
);


ALTER TYPE common.work_head OWNER TO postgres;

--
-- TOC entry 1435 (class 1247 OID 62339)
-- Name: work_segment; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.work_segment AS (
	gid uuid,
	quantity common.quantity
);


ALTER TYPE common.work_segment OWNER TO postgres;

--
-- TOC entry 1438 (class 1247 OID 62342)
-- Name: work_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.work_document AS (
	head common.work_head,
	body common.work_segment[]
);


ALTER TYPE common.work_document OWNER TO postgres;

--
-- TOC entry 4930 (class 0 OID 0)
-- Dependencies: 1438
-- Name: TYPE work_document; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON TYPE common.work_document IS 'work';


--
-- TOC entry 471 (class 1255 OID 62343)
-- Name: gain_process_done_qty(character varying, common.response_segment[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_process_done_qty(__facility_code character varying, __body common.response_segment[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.response_segment;
BEGIN

  -- improve: add cast qty against uom and good

  FOREACH _item IN
    ARRAY __body
  LOOP
    UPDATE
      balance.process
    SET
      done_qty = done_qty + _item.quantity
    WHERE
      facility_code = __facility_code AND
      process_gid = _item.gid;

    IF NOT FOUND THEN
      INSERT INTO
        balance.process (
          facility_code,
          process_gid,
          done_qty)
      VALUES (
        __facility_code,
        _item.gid,
        _item.quantity);
    END IF;

    RAISE NOTICE 'balance of % gained on %', _item.gid, _item.quantity;
  END LOOP;

END;
$$;


ALTER FUNCTION balance.gain_process_done_qty(__facility_code character varying, __body common.response_segment[]) OWNER TO postgres;

--
-- TOC entry 472 (class 1255 OID 62344)
-- Name: gain_process_done_qty(character varying, common.work_segment[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_process_done_qty(__facility_code character varying, __body common.work_segment[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.work_segment;
BEGIN

  -- improve: add cast qty against uom and good

  FOREACH _item IN
    ARRAY __body
  LOOP
    UPDATE
      balance.process
    SET
      done_qty = done_qty + _item.quantity
    WHERE
      facility_code = __facility_code AND
      process_gid = _item.gid;

    IF NOT FOUND THEN
      INSERT INTO
        balance.process (
          facility_code,
          process_gid,
          done_qty)
      VALUES (
        __facility_code,
        _item.gid,
        _item.quantity);
    END IF;

    RAISE NOTICE 'balance of % gained on %', _item.gid, _item.quantity;
  END LOOP;

END;
$$;


ALTER FUNCTION balance.gain_process_done_qty(__facility_code character varying, __body common.work_segment[]) OWNER TO postgres;

--
-- TOC entry 473 (class 1255 OID 62345)
-- Name: gain_process_done_qty(character varying, common.work_segment); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_process_done_qty(__facility_code character varying, __work common.work_segment) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  -- improve: add cast qty against uom and good
  UPDATE
    balance.process
  SET
    done_qty = done_qty + __work.quantity
  WHERE
    facility_code = __facility_code AND
    process_gid = __work.gid;

  IF NOT FOUND THEN
    INSERT INTO
      balance.process (
        facility_code,
        process_gid,
        done_qty)
    VALUES (
      __facility_code,
      __work.gid,
      __work.quantity);
  END IF;

  RAISE NOTICE 'balance of % gained on %', __work.gid, __work.quantity;

END;
$$;


ALTER FUNCTION balance.gain_process_done_qty(__facility_code character varying, __work common.work_segment) OWNER TO postgres;

--
-- TOC entry 474 (class 1255 OID 62346)
-- Name: gain_process_todo_qty(character varying, common.work_segment[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_process_todo_qty(__facility_code character varying, __body common.work_segment[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.work_segment;
BEGIN

  -- improve: add cast qty against uom and good

  FOREACH _item IN
    ARRAY __body
  LOOP
    UPDATE
      balance.process
    SET
      todo_qty = todo_qty + _item.quantity
    WHERE
      facility_code = __facility_code AND
      process_gid = _item.gid;

    IF NOT FOUND THEN
      INSERT INTO
        balance.process (
          facility_code,
          process_gid,
          todo_qty)
      VALUES (
        __facility_code,
        _item.gid,
        _item.quantity);
    END IF;

    RAISE NOTICE 'balance of % gained on %', _item.gid, _item.quantity;
  END LOOP;

END;
$$;


ALTER FUNCTION balance.gain_process_todo_qty(__facility_code character varying, __body common.work_segment[]) OWNER TO postgres;

--
-- TOC entry 475 (class 1255 OID 62347)
-- Name: gain_process_todo_qty(character varying, common.work_segment); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_process_todo_qty(__facility_code character varying, __work common.work_segment) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  UPDATE
    balance.process
  SET
    todo_qty = todo_qty + __work.quantity
  WHERE
    facility_code = __facility_code AND
    process_gid = __work.gid;

  IF NOT FOUND THEN
    INSERT INTO
      balance.process (
        facility_code,
        process_gid,
        todo_qty)
    VALUES (
      __facility_code,
      __work.gid,
      __work.quantity);
  END IF;

  RAISE NOTICE 'balance of % gained on %', __work.gid, __work.quantity;

END;
$$;


ALTER FUNCTION balance.gain_process_todo_qty(__facility_code character varying, __work common.work_segment) OWNER TO postgres;

--
-- TOC entry 476 (class 1255 OID 62348)
-- Name: gain_segment_done_qty(character varying, common.work_segment[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_segment_done_qty(__facility_code character varying, __body common.work_segment[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.work_segment;
BEGIN

  -- improve: add cast qty against uom and good

  FOREACH _item IN
    ARRAY __body
  LOOP
    UPDATE
      balance.segment
    SET
      done_qty = done_qty + _item.quantity
    WHERE
      facility_code = __facility_code AND
      segment_gid = _item.gid;

    IF NOT FOUND THEN
      INSERT INTO
        balance.segment (
          facility_code,
          segment_gid,
          done_qty)
      VALUES (
        __facility_code,
        _item.gid,
        _item.quantity);
    END IF;

    RAISE NOTICE 'balance of % gained on %', _item.gid, _item.quantity;
  END LOOP;

END;
$$;


ALTER FUNCTION balance.gain_segment_done_qty(__facility_code character varying, __body common.work_segment[]) OWNER TO postgres;

--
-- TOC entry 477 (class 1255 OID 62349)
-- Name: gain_segment_done_qty(character varying, common.work_segment); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_segment_done_qty(__facility_code character varying, __work common.work_segment) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  UPDATE
    balance.segment
  SET
    done_qty = done_qty + __work.quantity
  WHERE
    facility_code = __facility_code AND
    segment_gid = __work.gid;

  IF NOT FOUND THEN
    INSERT INTO
      balance.segment (
        facility_code,
        segment_gid,
        done_qty)
    VALUES (
      __facility_code,
      __work.gid,
      __work.quantity);
  END IF;

  RAISE NOTICE 'balance of % gained on %', __work.gid, __work.quantity;

END;
$$;


ALTER FUNCTION balance.gain_segment_done_qty(__facility_code character varying, __work common.work_segment) OWNER TO postgres;

--
-- TOC entry 478 (class 1255 OID 62350)
-- Name: gain_segment_todo_qty(character varying, common.work_segment[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_segment_todo_qty(__facility_code character varying, __body common.work_segment[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.work_segment;
BEGIN

  -- improve: add cast qty against uom and good

  FOREACH _item IN
    ARRAY __body
  LOOP
    UPDATE
      balance.segment
    SET
      todo_qty = todo_qty + _item.quantity
    WHERE
      facility_code = __facility_code AND
      segment_gid = _item.gid;

    IF NOT FOUND THEN
      INSERT INTO
        balance.segment (
          facility_code,
          segment_gid,
          todo_qty)
      VALUES (
        __facility_code,
        _item.gid,
        _item.quantity);
    END IF;

    RAISE NOTICE 'balance of % gained on %', _item.gid, _item.quantity;
  END LOOP;

END;
$$;


ALTER FUNCTION balance.gain_segment_todo_qty(__facility_code character varying, __body common.work_segment[]) OWNER TO postgres;

--
-- TOC entry 479 (class 1255 OID 62351)
-- Name: gain_segment_todo_qty(character varying, common.work_segment); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_segment_todo_qty(__facility_code character varying, __work common.work_segment) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  -- improve: add cast qty against uom and good

  UPDATE
    balance.segment
  SET
    todo_qty = todo_qty + __work.quantity
  WHERE
    facility_code = __facility_code AND
    segment_gid = __work.gid;

  IF NOT FOUND THEN
    INSERT INTO
      balance.segment (
        facility_code,
        segment_gid,
        todo_qty)
    VALUES (
      __facility_code,
      __work.gid,
      __work.quantity);
  END IF;

  RAISE NOTICE 'balance of % gained on %', __work.gid, __work.quantity;

END;
$$;


ALTER FUNCTION balance.gain_segment_todo_qty(__facility_code character varying, __work common.work_segment) OWNER TO postgres;

--
-- TOC entry 854 (class 1255 OID 64479)
-- Name: gain_stock_claimed_qty(character varying, common.document_body[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_stock_claimed_qty(__facility_code character varying, __inventory common.document_body[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.document_body;
BEGIN

  -- improve: add cast qty against uom and good

  FOREACH _item IN
    ARRAY __inventory
  LOOP
    UPDATE
      balance.stock
    SET
      claimed_qty = claimed_qty + _item.quantity
    WHERE
      facility_code = __facility_code AND
      part_code = _item.part_code;

    IF NOT FOUND THEN
      INSERT INTO
        balance.stock (
          facility_code,
          part_code,
          uom_code,
          claimed_qty)
      VALUES (
        __facility_code,
        _item.part_code,
        _item.uom_code,
        _item.quantity);
    END IF;

    RAISE NOTICE 'balance of % gained on % of %', _item.part_code, _item.quantity, _item.uom_code;
  END LOOP;

END;
$$;


ALTER FUNCTION balance.gain_stock_claimed_qty(__facility_code character varying, __inventory common.document_body[]) OWNER TO postgres;

--
-- TOC entry 855 (class 1255 OID 64480)
-- Name: gain_stock_claimed_qty(character varying, common.document_body); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_stock_claimed_qty(__facility_code character varying, __inventory common.document_body) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  -- improve: add cast qty against uom and good

  UPDATE
    balance.stock
  SET
    claimed_qty = claimed_qty + __inventory.quantity
  WHERE
    facility_code = __facility_code AND
    part_code = __inventory.part_code;

  IF NOT FOUND THEN
    INSERT INTO
      balance.stock (
        facility_code,
        part_code,
        uom_code,
        claimed_qty)
    VALUES (
      __facility_code,
      __inventory.part_code,
      __inventory.uom_code,
      __inventory.quantity);
  END IF;

  RAISE NOTICE 'balance of % gained on % of %', __inventory.part_code, __inventory.quantity, __inventory.uom_code;

END;
$$;


ALTER FUNCTION balance.gain_stock_claimed_qty(__facility_code character varying, __inventory common.document_body) OWNER TO postgres;

--
-- TOC entry 858 (class 1255 OID 64483)
-- Name: gain_stock_demanded_qty(character varying, common.document_body[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_stock_demanded_qty(__facility_code character varying, __inventory common.document_body[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.document_body;
BEGIN

  -- improve: add cast qty against uom and good

  FOREACH _item IN
    ARRAY __inventory
  LOOP
    UPDATE
      balance.stock
    SET
      demanded_qty = demanded_qty + _item.quantity
    WHERE
      facility_code = __facility_code AND
      part_code = _item.part_code;

    IF NOT FOUND THEN
      INSERT INTO
        balance.stock (
          facility_code,
          part_code,
          uom_code,
          demanded_qty)
      VALUES (
        __facility_code,
        _item.part_code,
        _item.uom_code,
        _item.quantity);
    END IF;

    RAISE NOTICE 'balance of % gained on % of %', _item.part_code, _item.quantity, _item.uom_code;
  END LOOP;

END;
$$;


ALTER FUNCTION balance.gain_stock_demanded_qty(__facility_code character varying, __inventory common.document_body[]) OWNER TO postgres;

--
-- TOC entry 859 (class 1255 OID 64484)
-- Name: gain_stock_demanded_qty(character varying, common.document_body); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_stock_demanded_qty(__facility_code character varying, __inventory common.document_body) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  -- improve: add cast qty against uom and good

  UPDATE
    balance.stock
  SET
    demanded_qty = demanded_qty + __inventory.quantity
  WHERE
    facility_code = __facility_code AND
    part_code = __inventory.part_code;

  IF NOT FOUND THEN
    INSERT INTO
      balance.stock (
        facility_code,
        part_code,
        uom_code,
        demanded_qty)
    VALUES (
      __facility_code,
      __inventory.part_code,
      __inventory.uom_code,
      __inventory.quantity);
  END IF;

  RAISE NOTICE 'balance of % gained on % of %', __inventory.part_code, __inventory.quantity, __inventory.uom_code;

END;
$$;


ALTER FUNCTION balance.gain_stock_demanded_qty(__facility_code character varying, __inventory common.document_body) OWNER TO postgres;

--
-- TOC entry 871 (class 1255 OID 64495)
-- Name: gain_stock_on_delivery_qty(character varying, common.document_body[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_stock_on_delivery_qty(__facility_code character varying, __inventory common.document_body[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.document_body;
BEGIN

  -- improve: add cast qty against uom and good

  FOREACH _item IN
    ARRAY __inventory
  LOOP
    UPDATE
      balance.stock
    SET
      on_delivery_qty = on_delivery_qty + _item.quantity
    WHERE
      facility_code = __facility_code AND
      part_code = _item.part_code;

    IF NOT FOUND THEN
      INSERT INTO
        balance.stock (
          facility_code,
          part_code,
          uom_code,
          on_delivery_qty)
      VALUES (
        __facility_code,
        _item.part_code,
        _item.uom_code,
        _item.quantity);
    END IF;

    RAISE NOTICE 'balance of % gained on % of %', _item.part_code, _item.quantity, _item.uom_code;
  END LOOP;

END;
$$;


ALTER FUNCTION balance.gain_stock_on_delivery_qty(__facility_code character varying, __inventory common.document_body[]) OWNER TO postgres;

--
-- TOC entry 872 (class 1255 OID 64496)
-- Name: gain_stock_on_delivery_qty(character varying, common.document_body); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_stock_on_delivery_qty(__facility_code character varying, __inventory common.document_body) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  -- improve: add cast qty against uom and good

  UPDATE
    balance.stock
  SET
    on_delivery_qty = on_delivery_qty + __inventory.quantity
  WHERE
    facility_code = __facility_code AND
    part_code = __inventory.part_code;

  IF NOT FOUND THEN
    INSERT INTO
      balance.stock (
        facility_code,
        part_code,
        uom_code,
        on_delivery_qty)
    VALUES (
      __facility_code,
      __inventory.part_code,
      __inventory.uom_code,
      __inventory.quantity);
  END IF;

  RAISE NOTICE 'balance of % gained on % of %', __inventory.part_code, __inventory.quantity, __inventory.uom_code;

END;
$$;


ALTER FUNCTION balance.gain_stock_on_delivery_qty(__facility_code character varying, __inventory common.document_body) OWNER TO postgres;

--
-- TOC entry 867 (class 1255 OID 64491)
-- Name: gain_stock_on_despatch_qty(character varying, common.document_body[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_stock_on_despatch_qty(__facility_code character varying, __inventory common.document_body[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.document_body;
BEGIN

  -- improve: add cast qty against uom and good

  FOREACH _item IN
    ARRAY __inventory
  LOOP
    UPDATE
      balance.stock
    SET
      on_despatch_qty = on_despatch_qty + _item.quantity
    WHERE
      facility_code = __facility_code AND
      part_code = _item.part_code;

    IF NOT FOUND THEN
      INSERT INTO
        balance.stock (
          facility_code,
          part_code,
          uom_code,
          on_despatch_qty)
      VALUES (
        __facility_code,
        _item.part_code,
        _item.uom_code,
        _item.quantity);
    END IF;

    RAISE NOTICE 'balance of % gained on % of %', _item.part_code, _item.quantity, _item.uom_code;
  END LOOP;

END;
$$;


ALTER FUNCTION balance.gain_stock_on_despatch_qty(__facility_code character varying, __inventory common.document_body[]) OWNER TO postgres;

--
-- TOC entry 868 (class 1255 OID 64492)
-- Name: gain_stock_on_despatch_qty(character varying, common.document_body); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_stock_on_despatch_qty(__facility_code character varying, __inventory common.document_body) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  -- improve: add cast qty against uom and good

  UPDATE
    balance.stock
  SET
    on_despatch_qty = on_despatch_qty + __inventory.quantity
  WHERE
    facility_code = __facility_code AND
    part_code = __inventory.part_code;

  IF NOT FOUND THEN
    INSERT INTO
      balance.stock (
        facility_code,
        part_code,
        uom_code,
        on_despatch_qty)
    VALUES (
      __facility_code,
      __inventory.part_code,
      __inventory.uom_code,
      __inventory.quantity);
  END IF;

  RAISE NOTICE 'balance of % gained on % of %', __inventory.part_code, __inventory.quantity, __inventory.uom_code;

END;
$$;


ALTER FUNCTION balance.gain_stock_on_despatch_qty(__facility_code character varying, __inventory common.document_body) OWNER TO postgres;

--
-- TOC entry 480 (class 1255 OID 62354)
-- Name: gain_stock_on_hand_qty(character varying, common.document_body[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_stock_on_hand_qty(__facility_code character varying, __inventory common.document_body[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.document_body;
BEGIN

  -- improve: add cast qty against uom and good

  FOREACH _item IN
    ARRAY __inventory
  LOOP
    UPDATE
      balance.stock
    SET
      on_hand_qty = on_hand_qty + _item.quantity
    WHERE
      facility_code = __facility_code AND
      part_code = _item.part_code;

    IF NOT FOUND THEN
      INSERT INTO
        balance.stock (
          facility_code,
          part_code,
          uom_code,
          on_hand_qty)
      VALUES (
        __facility_code,
        _item.part_code,
        _item.uom_code,
        _item.quantity);
    END IF;

    RAISE NOTICE 'balance of % gained on % of %', _item.part_code, _item.quantity, _item.uom_code;
  END LOOP;

END;
$$;


ALTER FUNCTION balance.gain_stock_on_hand_qty(__facility_code character varying, __inventory common.document_body[]) OWNER TO postgres;

--
-- TOC entry 481 (class 1255 OID 62355)
-- Name: gain_stock_on_hand_qty(character varying, common.document_body); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_stock_on_hand_qty(__facility_code character varying, __inventory common.document_body) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  -- improve: add cast qty against uom and good

  UPDATE
    balance.stock
  SET
    on_hand_qty = on_hand_qty + __inventory.quantity
  WHERE
    facility_code = __facility_code AND
    part_code = __inventory.part_code;

  IF NOT FOUND THEN
    INSERT INTO
      balance.stock (
        facility_code,
        part_code,
        uom_code,
        on_hand_qty)
    VALUES (
      __facility_code,
      __inventory.part_code,
      __inventory.uom_code,
      __inventory.quantity);
  END IF;

  RAISE NOTICE 'balance of % gained on % of %', __inventory.part_code, __inventory.quantity, __inventory.uom_code;

END;
$$;


ALTER FUNCTION balance.gain_stock_on_hand_qty(__facility_code character varying, __inventory common.document_body) OWNER TO postgres;

--
-- TOC entry 863 (class 1255 OID 64487)
-- Name: gain_stock_promissed_qty(character varying, common.document_body[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_stock_promissed_qty(__facility_code character varying, __inventory common.document_body[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.document_body;
BEGIN

  -- improve: add cast qty against uom and good

  FOREACH _item IN
    ARRAY __inventory
  LOOP
    UPDATE
      balance.stock
    SET
      promissed_qty = promissed_qty + _item.quantity
    WHERE
      facility_code = __facility_code AND
      part_code = _item.part_code;

    IF NOT FOUND THEN
      INSERT INTO
        balance.stock (
          facility_code,
          part_code,
          uom_code,
          promissed_qty)
      VALUES (
        __facility_code,
        _item.part_code,
        _item.uom_code,
        _item.quantity);
    END IF;

    RAISE NOTICE 'balance of % gained on % of %', _item.part_code, _item.quantity, _item.uom_code;
  END LOOP;

END;
$$;


ALTER FUNCTION balance.gain_stock_promissed_qty(__facility_code character varying, __inventory common.document_body[]) OWNER TO postgres;

--
-- TOC entry 864 (class 1255 OID 64488)
-- Name: gain_stock_promissed_qty(character varying, common.document_body); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_stock_promissed_qty(__facility_code character varying, __inventory common.document_body) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  -- improve: add cast qty against uom and good

  UPDATE
    balance.stock
  SET
    promissed_qty = promissed_qty + __inventory.quantity
  WHERE
    facility_code = __facility_code AND
    part_code = __inventory.part_code;

  IF NOT FOUND THEN
    INSERT INTO
      balance.stock (
        facility_code,
        part_code,
        uom_code,
        promissed_qty)
    VALUES (
      __facility_code,
      __inventory.part_code,
      __inventory.uom_code,
      __inventory.quantity);
  END IF;

  RAISE NOTICE 'balance of % gained on % of %', __inventory.part_code, __inventory.quantity, __inventory.uom_code;

END;
$$;


ALTER FUNCTION balance.gain_stock_promissed_qty(__facility_code character varying, __inventory common.document_body) OWNER TO postgres;

--
-- TOC entry 482 (class 1255 OID 62358)
-- Name: gain_stock_reserved_qty(character varying, common.document_body[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_stock_reserved_qty(__facility_code character varying, __inventory common.document_body[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.document_body;
BEGIN

  -- improve: add cast qty against uom and good

  FOREACH _item IN
    ARRAY __inventory
  LOOP
    UPDATE
      balance.stock
    SET
      reserved_qty = reserved_qty + _item.quantity
    WHERE
      facility_code = __facility_code AND
      part_code = _item.part_code;

    IF NOT FOUND THEN
      INSERT INTO
        balance.stock (
          facility_code,
          part_code,
          uom_code,
          reserved_qty)
      VALUES (
        __facility_code,
        _item.part_code,
        _item.uom_code,
        _item.quantity);
    END IF;

    RAISE NOTICE 'balance of % gained on % of %', _item.part_code, _item.quantity, _item.uom_code;
  END LOOP;

END;
$$;


ALTER FUNCTION balance.gain_stock_reserved_qty(__facility_code character varying, __inventory common.document_body[]) OWNER TO postgres;

--
-- TOC entry 483 (class 1255 OID 62359)
-- Name: gain_stock_reserved_qty(character varying, common.document_body); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_stock_reserved_qty(__facility_code character varying, __inventory common.document_body) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  -- improve: add cast qty against uom and good

  UPDATE
    balance.stock
  SET
    reserved_qty = reserved_qty + __inventory.quantity
  WHERE
    facility_code = __facility_code AND
    part_code = __inventory.part_code;

  IF NOT FOUND THEN
    INSERT INTO
      balance.stock (
        facility_code,
        part_code,
        uom_code,
        reserved_qty)
    VALUES (
      __facility_code,
      __inventory.part_code,
      __inventory.uom_code,
      __inventory.quantity);
  END IF;

  RAISE NOTICE 'balance of % gained on % of %', __inventory.part_code, __inventory.quantity, __inventory.uom_code;

END;
$$;


ALTER FUNCTION balance.gain_stock_reserved_qty(__facility_code character varying, __inventory common.document_body) OWNER TO postgres;

--
-- TOC entry 484 (class 1255 OID 62360)
-- Name: get_stock_on_hand_qty(character varying); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.get_stock_on_hand_qty(__facility_code character varying) RETURNS common.document_body[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY(
      SELECT 
        (stock.part_code, 
        stock.on_hand_qty, 
        stock.uom_code)::common.document_body
      FROM 
        balance.stock
      WHERE 
        stock.facility_code = __facility_code
    );
END
$$;


ALTER FUNCTION balance.get_stock_on_hand_qty(__facility_code character varying) OWNER TO postgres;

--
-- TOC entry 485 (class 1255 OID 62361)
-- Name: get_stock_on_hand_qty(character varying, character varying[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.get_stock_on_hand_qty(__facility_code character varying, __part_codes character varying[]) RETURNS common.document_body[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY(
      SELECT 
        (stock.part_code, 
        stock.on_hand_qty, 
        stock.uom_code)::common.document_body
      FROM 
        balance.stock
      WHERE 
        stock.facility_code = __facility_code AND
        stock.part_code = ANY(__part_codes)
    );
END
$$;


ALTER FUNCTION balance.get_stock_on_hand_qty(__facility_code character varying, __part_codes character varying[]) OWNER TO postgres;

--
-- TOC entry 486 (class 1255 OID 62362)
-- Name: get_stock_on_hand_qty(character varying, character varying); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.get_stock_on_hand_qty(__facility_code character varying, __part_code character varying) RETURNS common.document_body
    LANGUAGE plpgsql
    AS $$
DECLARE
  --_item common.document_body;
BEGIN

  --_item := 

-- improve: get good uom if item not in balance
RETURN 
  (stock.part_code, 
  stock.on_hand_qty, 
  stock.uom_code)::common.document_body
FROM 
  balance.stock
WHERE 
  stock.facility_code = __facility_code AND 
  stock.part_code = __part_code;

END;
$$;


ALTER FUNCTION balance.get_stock_on_hand_qty(__facility_code character varying, __part_code character varying) OWNER TO postgres;

--
-- TOC entry 487 (class 1255 OID 62363)
-- Name: loss_process_done_qty(character varying, common.response_segment[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_process_done_qty(__facility_code character varying, __body common.response_segment[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.response_segment;
BEGIN

  -- improve: add cast qty alossst uom and good

  FOREACH _item IN
    ARRAY __body
  LOOP
    UPDATE
      balance.process
    SET
      done_qty = done_qty + _item.quantity
    WHERE
      facility_code = __facility_code AND
      process_gid = _item.gid;

    IF NOT FOUND THEN
      INSERT INTO
        balance.process (
          facility_code,
          process_gid,
          done_qty)
      VALUES (
        __facility_code,
        _item.gid,
        _item.quantity);
    END IF;

    RAISE NOTICE 'balance of % lossed on %', _item.gid, _item.quantity;
  END LOOP;

END;
$$;


ALTER FUNCTION balance.loss_process_done_qty(__facility_code character varying, __body common.response_segment[]) OWNER TO postgres;

--
-- TOC entry 488 (class 1255 OID 62364)
-- Name: loss_process_done_qty(character varying, common.work_segment[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_process_done_qty(__facility_code character varying, __body common.work_segment[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.work_segment;
BEGIN

  -- improve: add cast qty alossst uom and good

  FOREACH _item IN
    ARRAY __body
  LOOP
    UPDATE
      balance.process
    SET
      done_qty = done_qty + _item.quantity
    WHERE
      facility_code = __facility_code AND
      process_gid = _item.gid;

    IF NOT FOUND THEN
      INSERT INTO
        balance.process (
          facility_code,
          process_gid,
          done_qty)
      VALUES (
        __facility_code,
        _item.gid,
        _item.quantity);
    END IF;

    RAISE NOTICE 'balance of % lossed on %', _item.gid, _item.quantity;
  END LOOP;

END;
$$;


ALTER FUNCTION balance.loss_process_done_qty(__facility_code character varying, __body common.work_segment[]) OWNER TO postgres;

--
-- TOC entry 489 (class 1255 OID 62365)
-- Name: loss_process_done_qty(character varying, common.work_segment); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_process_done_qty(__facility_code character varying, __work common.work_segment) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  UPDATE
    balance.process
  SET
    done_qty = done_qty + __work.quantity
  WHERE
    facility_code = __facility_code AND
    process_gid = __work.gid;

  IF NOT FOUND THEN
    INSERT INTO
      balance.process (
        facility_code,
        process_gid,
        done_qty)
    VALUES (
      __facility_code,
      __work.gid,
      __work.quantity);
  END IF;

  RAISE NOTICE 'balance of % lossed on %', __work.gid, __work.quantity;

END;
$$;


ALTER FUNCTION balance.loss_process_done_qty(__facility_code character varying, __work common.work_segment) OWNER TO postgres;

--
-- TOC entry 490 (class 1255 OID 62366)
-- Name: loss_process_todo_qty(character varying, common.work_segment[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_process_todo_qty(__facility_code character varying, __body common.work_segment[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.work_segment;
BEGIN

  -- improve: add cast qty alossst uom and good

  FOREACH _item IN
    ARRAY __body
  LOOP
    UPDATE
      balance.process
    SET
      todo_qty = todo_qty + _item.quantity
    WHERE
      facility_code = __facility_code AND
      process_gid = _item.gid;

    IF NOT FOUND THEN
      INSERT INTO
        balance.process (
          facility_code,
          process_gid,
          todo_qty)
      VALUES (
        __facility_code,
        _item.gid,
        _item.quantity);
    END IF;

    RAISE NOTICE 'balance of % lossed on %', _item.gid, _item.quantity;
  END LOOP;

END;
$$;


ALTER FUNCTION balance.loss_process_todo_qty(__facility_code character varying, __body common.work_segment[]) OWNER TO postgres;

--
-- TOC entry 491 (class 1255 OID 62367)
-- Name: loss_process_todo_qty(character varying, common.work_segment); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_process_todo_qty(__facility_code character varying, __work common.work_segment) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  UPDATE
    balance.process
  SET
    todo_qty = todo_qty + __work.quantity
  WHERE
    facility_code = __facility_code AND
    process_gid = __work.gid;

  IF NOT FOUND THEN
    INSERT INTO
      balance.process (
        facility_code,
        process_gid,
        todo_qty)
    VALUES (
      __facility_code,
      __work.gid,
      __work.quantity);
  END IF;

  RAISE NOTICE 'balance of % lossed on %', __work.gid, __work.quantity;

END;
$$;


ALTER FUNCTION balance.loss_process_todo_qty(__facility_code character varying, __work common.work_segment) OWNER TO postgres;

--
-- TOC entry 492 (class 1255 OID 62368)
-- Name: loss_segment_done_qty(character varying, common.work_segment[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_segment_done_qty(__facility_code character varying, __body common.work_segment[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.work_segment;
BEGIN

  -- improve: add cast qty alossst uom and good

  FOREACH _item IN
    ARRAY __body
  LOOP
    UPDATE
      balance.segment
    SET
      done_qty = done_qty - _item.quantity
    WHERE
      facility_code = __facility_code AND
      segment_gid = _item.gid;

    RAISE NOTICE 'balance of % lossed on %', _item.gid, _item.quantity;
  END LOOP;

END;
$$;


ALTER FUNCTION balance.loss_segment_done_qty(__facility_code character varying, __body common.work_segment[]) OWNER TO postgres;

--
-- TOC entry 493 (class 1255 OID 62369)
-- Name: loss_segment_done_qty(character varying, common.work_segment); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_segment_done_qty(__facility_code character varying, __work common.work_segment) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  UPDATE
    balance.segment
  SET
    done_qty = done_qty + __work.quantity
  WHERE
    facility_code = __facility_code AND
    segment_gid = __work.gid;

  IF NOT FOUND THEN
    INSERT INTO
      balance.segment (
        facility_code,
        segment_gid,
        done_qty)
    VALUES (
      __facility_code,
      __work.gid,
      __work.quantity);
  END IF;

  RAISE NOTICE 'balance of % lossed on %', __work.gid, __work.quantity;

END;
$$;


ALTER FUNCTION balance.loss_segment_done_qty(__facility_code character varying, __work common.work_segment) OWNER TO postgres;

--
-- TOC entry 494 (class 1255 OID 62370)
-- Name: loss_segment_todo_qty(character varying, common.work_segment[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_segment_todo_qty(__facility_code character varying, __body common.work_segment[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.work_segment;
BEGIN

  -- improve: add cast qty alossst uom and good

  FOREACH _item IN
    ARRAY __body
  LOOP
    UPDATE
      balance.segment
    SET
      todo_qty = todo_qty - _item.quantity
    WHERE
      facility_code = __facility_code AND
      segment_gid = _item.gid;

    RAISE NOTICE 'balance of % lossed on %', _item.gid, _item.quantity;
  END LOOP;

END;
$$;


ALTER FUNCTION balance.loss_segment_todo_qty(__facility_code character varying, __body common.work_segment[]) OWNER TO postgres;

--
-- TOC entry 495 (class 1255 OID 62371)
-- Name: loss_segment_todo_qty(character varying, common.work_segment); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_segment_todo_qty(__facility_code character varying, __work common.work_segment) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  -- improve: add cast qty alossst uom and good

  UPDATE
    balance.segment
  SET
    todo_qty = todo_qty + __work.quantity
  WHERE
    facility_code = __facility_code AND
    segment_gid = __work.gid;

  IF NOT FOUND THEN
    INSERT INTO
      balance.segment (
        facility_code,
        segment_gid,
        todo_qty)
    VALUES (
      __facility_code,
      __work.gid,
      __work.quantity);
  END IF;

  RAISE NOTICE 'balance of % lossed on %', __work.gid, __work.quantity;

END;
$$;


ALTER FUNCTION balance.loss_segment_todo_qty(__facility_code character varying, __work common.work_segment) OWNER TO postgres;

--
-- TOC entry 856 (class 1255 OID 64481)
-- Name: loss_stock_claimed_qty(character varying, common.document_body[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_stock_claimed_qty(__facility_code character varying, __inventory common.document_body[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.document_body;
BEGIN

  -- improve: add cast qty against uom and good

  FOREACH _item IN
    ARRAY __inventory
  LOOP
    UPDATE
      balance.stock
    SET
      claimed_qty = claimed_qty - _item.quantity
    WHERE
      facility_code = __facility_code AND
      part_code = _item.part_code;

    RAISE NOTICE 'balance of % lossed on % of %', _item.part_code, _item.quantity, _item.uom_code;
  END LOOP;

END;
$$;


ALTER FUNCTION balance.loss_stock_claimed_qty(__facility_code character varying, __inventory common.document_body[]) OWNER TO postgres;

--
-- TOC entry 857 (class 1255 OID 64482)
-- Name: loss_stock_claimed_qty(character varying, common.document_body); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_stock_claimed_qty(__facility_code character varying, __inventory common.document_body) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  -- improve: add cast qty against uom and good

  UPDATE
    balance.stock
  SET
    claimed_qty = claimed_qty - __inventory.quantity
  WHERE
    facility_code = __facility_code AND
    part_code = __inventory.part_code;

  RAISE NOTICE 'balance of % lossed on % of %', __inventory.part_code, __inventory.quantity, __inventory.uom_code;

END;
$$;


ALTER FUNCTION balance.loss_stock_claimed_qty(__facility_code character varying, __inventory common.document_body) OWNER TO postgres;

--
-- TOC entry 860 (class 1255 OID 64485)
-- Name: loss_stock_demanded_qty(character varying, common.document_body[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_stock_demanded_qty(__facility_code character varying, __inventory common.document_body[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.document_body;
BEGIN

  -- improve: add cast qty against uom and good

  FOREACH _item IN
    ARRAY __inventory
  LOOP
    UPDATE
      balance.stock
    SET
      demanded_qty = demanded_qty - _item.quantity
    WHERE
      facility_code = __facility_code AND
      part_code = _item.part_code;

    RAISE NOTICE 'balance of % lossed on % of %', _item.part_code, _item.quantity, _item.uom_code;
  END LOOP;

END;
$$;


ALTER FUNCTION balance.loss_stock_demanded_qty(__facility_code character varying, __inventory common.document_body[]) OWNER TO postgres;

--
-- TOC entry 861 (class 1255 OID 64486)
-- Name: loss_stock_demanded_qty(character varying, common.document_body); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_stock_demanded_qty(__facility_code character varying, __inventory common.document_body) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  -- improve: add cast qty against uom and good

  UPDATE
    balance.stock
  SET
    demanded_qty = demanded_qty - __inventory.quantity
  WHERE
    facility_code = __facility_code AND
    part_code = __inventory.part_code;

  RAISE NOTICE 'balance of % lossed on % of %', __inventory.part_code, __inventory.quantity, __inventory.uom_code;

END;
$$;


ALTER FUNCTION balance.loss_stock_demanded_qty(__facility_code character varying, __inventory common.document_body) OWNER TO postgres;

--
-- TOC entry 862 (class 1255 OID 64497)
-- Name: loss_stock_on_delivery_qty(character varying, common.document_body[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_stock_on_delivery_qty(__facility_code character varying, __inventory common.document_body[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.document_body;
BEGIN

  -- improve: add cast qty against uom and good

  FOREACH _item IN
    ARRAY __inventory
  LOOP
    UPDATE
      balance.stock
    SET
      on_delivery_qty = on_delivery_qty - _item.quantity
    WHERE
      facility_code = __facility_code AND
      part_code = _item.part_code;

    RAISE NOTICE 'balance of % lossed on % of %', _item.part_code, _item.quantity, _item.uom_code;
  END LOOP;

END;
$$;


ALTER FUNCTION balance.loss_stock_on_delivery_qty(__facility_code character varying, __inventory common.document_body[]) OWNER TO postgres;

--
-- TOC entry 726 (class 1255 OID 64498)
-- Name: loss_stock_on_delivery_qty(character varying, common.document_body); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_stock_on_delivery_qty(__facility_code character varying, __inventory common.document_body) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  -- improve: add cast qty against uom and good

  UPDATE
    balance.stock
  SET
    on_delivery_qty = on_delivery_qty - __inventory.quantity
  WHERE
    facility_code = __facility_code AND
    part_code = __inventory.part_code;

  RAISE NOTICE 'balance of % lossed on % of %', __inventory.part_code, __inventory.quantity, __inventory.uom_code;

END;
$$;


ALTER FUNCTION balance.loss_stock_on_delivery_qty(__facility_code character varying, __inventory common.document_body) OWNER TO postgres;

--
-- TOC entry 869 (class 1255 OID 64493)
-- Name: loss_stock_on_despatch_qty(character varying, common.document_body[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_stock_on_despatch_qty(__facility_code character varying, __inventory common.document_body[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.document_body;
BEGIN

  -- improve: add cast qty against uom and good

  FOREACH _item IN
    ARRAY __inventory
  LOOP
    UPDATE
      balance.stock
    SET
      on_despatch_qty = on_despatch_qty - _item.quantity
    WHERE
      facility_code = __facility_code AND
      part_code = _item.part_code;

    RAISE NOTICE 'balance of % lossed on % of %', _item.part_code, _item.quantity, _item.uom_code;
  END LOOP;

END;
$$;


ALTER FUNCTION balance.loss_stock_on_despatch_qty(__facility_code character varying, __inventory common.document_body[]) OWNER TO postgres;

--
-- TOC entry 870 (class 1255 OID 64494)
-- Name: loss_stock_on_despatch_qty(character varying, common.document_body); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_stock_on_despatch_qty(__facility_code character varying, __inventory common.document_body) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  -- improve: add cast qty against uom and good

  UPDATE
    balance.stock
  SET
    on_despatch_qty = on_despatch_qty - __inventory.quantity
  WHERE
    facility_code = __facility_code AND
    part_code = __inventory.part_code;

  RAISE NOTICE 'balance of % lossed on % of %', __inventory.part_code, __inventory.quantity, __inventory.uom_code;

END;
$$;


ALTER FUNCTION balance.loss_stock_on_despatch_qty(__facility_code character varying, __inventory common.document_body) OWNER TO postgres;

--
-- TOC entry 496 (class 1255 OID 62374)
-- Name: loss_stock_on_hand_qty(character varying, common.document_body[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_stock_on_hand_qty(__facility_code character varying, __inventory common.document_body[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.document_body;
BEGIN

  -- improve: add cast qty against uom and good

  FOREACH _item IN
    ARRAY __inventory
  LOOP
    UPDATE
      balance.stock
    SET
      on_hand_qty = on_hand_qty - _item.quantity
    WHERE
      facility_code = __facility_code AND
      part_code = _item.part_code;

    RAISE NOTICE 'balance of % lossed on % of %', _item.part_code, _item.quantity, _item.uom_code;
  END LOOP;

END;
$$;


ALTER FUNCTION balance.loss_stock_on_hand_qty(__facility_code character varying, __inventory common.document_body[]) OWNER TO postgres;

--
-- TOC entry 497 (class 1255 OID 62375)
-- Name: loss_stock_on_hand_qty(character varying, common.document_body); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_stock_on_hand_qty(__facility_code character varying, __inventory common.document_body) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  -- improve: add cast qty against uom and good

  UPDATE
    balance.stock
  SET
    on_hand_qty = on_hand_qty - __inventory.quantity
  WHERE
    facility_code = __facility_code AND
    part_code = __inventory.part_code;

  RAISE NOTICE 'balance of % lossed on % of %', __inventory.part_code, __inventory.quantity, __inventory.uom_code;

END;
$$;


ALTER FUNCTION balance.loss_stock_on_hand_qty(__facility_code character varying, __inventory common.document_body) OWNER TO postgres;

--
-- TOC entry 865 (class 1255 OID 64489)
-- Name: loss_stock_promissed_qty(character varying, common.document_body[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_stock_promissed_qty(__facility_code character varying, __inventory common.document_body[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.document_body;
BEGIN

  -- improve: add cast qty against uom and good

  FOREACH _item IN
    ARRAY __inventory
  LOOP
    UPDATE
      balance.stock
    SET
      promissed_qty = promissed_qty - _item.quantity
    WHERE
      facility_code = __facility_code AND
      part_code = _item.part_code;

    RAISE NOTICE 'balance of % lossed on % of %', _item.part_code, _item.quantity, _item.uom_code;
  END LOOP;

END;
$$;


ALTER FUNCTION balance.loss_stock_promissed_qty(__facility_code character varying, __inventory common.document_body[]) OWNER TO postgres;

--
-- TOC entry 866 (class 1255 OID 64490)
-- Name: loss_stock_promissed_qty(character varying, common.document_body); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_stock_promissed_qty(__facility_code character varying, __inventory common.document_body) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  -- improve: add cast qty against uom and good

  UPDATE
    balance.stock
  SET
    promissed_qty = promissed_qty - __inventory.quantity
  WHERE
    facility_code = __facility_code AND
    part_code = __inventory.part_code;

  RAISE NOTICE 'balance of % lossed on % of %', __inventory.part_code, __inventory.quantity, __inventory.uom_code;

END;
$$;


ALTER FUNCTION balance.loss_stock_promissed_qty(__facility_code character varying, __inventory common.document_body) OWNER TO postgres;

--
-- TOC entry 498 (class 1255 OID 62378)
-- Name: loss_stock_reserved_qty(character varying, common.document_body[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_stock_reserved_qty(__facility_code character varying, __inventory common.document_body[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.document_body;
BEGIN

  -- improve: add cast qty against uom and good

  FOREACH _item IN
    ARRAY __inventory
  LOOP
    UPDATE
      balance.stock
    SET
      reserved_qty = reserved_qty - _item.quantity
    WHERE
      facility_code = __facility_code AND
      part_code = _item.part_code;

    RAISE NOTICE 'balance of % lossed on % of %', _item.part_code, _item.quantity, _item.uom_code;
  END LOOP;

END;
$$;


ALTER FUNCTION balance.loss_stock_reserved_qty(__facility_code character varying, __inventory common.document_body[]) OWNER TO postgres;

--
-- TOC entry 499 (class 1255 OID 62379)
-- Name: loss_stock_reserved_qty(character varying, common.document_body); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_stock_reserved_qty(__facility_code character varying, __inventory common.document_body) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  -- improve: add cast qty against uom and good

  UPDATE
    balance.stock
  SET
    reserved_qty = reserved_qty - __inventory.quantity
  WHERE
    facility_code = __facility_code AND
    part_code = __inventory.part_code;

  RAISE NOTICE 'balance of % lossed on % of %', __inventory.part_code, __inventory.quantity, __inventory.uom_code;

END;
$$;


ALTER FUNCTION balance.loss_stock_reserved_qty(__facility_code character varying, __inventory common.document_body) OWNER TO postgres;

--
-- TOC entry 501 (class 1255 OID 62401)
-- Name: date_julian(integer); Type: FUNCTION; Schema: calendar; Owner: postgres
--

CREATE FUNCTION calendar.date_julian(__julian integer) RETURNS date
    LANGUAGE plpgsql
    AS $$
DECLARE
  _day integer;
  _month integer;
  _year integer;
BEGIN

  /*
  Here is a very fast and compact algorithm that computes the
  Julian date from a Gregorian date and vice versa. These
  algorithms appeared as Algorithm 199 (ACM, 1980) and were
  first written in ALGOL by Robert Tantzen.
  */

  __julian := 4*(__julian - 1721119) - 1;
  _year := __julian / 146097;
  __julian := __julian - (146097 * _year);
  _day := (__julian / 4) * 4;
  __julian := (_day + 3) / 1461;
  _month := (((_day + 4) / 4) - 3) / 153;
  _day := 5 * (((_day + 3 - 1461 * __julian) + 4) / 4) - 3;
  _month :=  _day / 153;
  _day := _day - 153 * _month;
  _day := (_day + 5) / 5;
  _year := 100 * _year + __julian;

  IF (_month < 10) THEN
    _month := _month + 3;
  ELSE
    _month := _month - 9;
    _year := _year + 1;
  END IF;

  RETURN to_date((_year || '-' || _month || '-' || _day), 'YYYY-MM-DD');

END;
$$;


ALTER FUNCTION calendar.date_julian(__julian integer) OWNER TO postgres;

--
-- TOC entry 502 (class 1255 OID 62402)
-- Name: destroy(date); Type: FUNCTION; Schema: calendar; Owner: postgres
--

CREATE FUNCTION calendar.destroy(__date date) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  DELETE FROM calendar.information WHERE calendar_date = __date;
END;
$$;


ALTER FUNCTION calendar.destroy(__date date) OWNER TO postgres;

--
-- TOC entry 503 (class 1255 OID 62403)
-- Name: get_body(date); Type: FUNCTION; Schema: calendar; Owner: postgres
--

CREATE FUNCTION calendar.get_body(__date date) RETURNS common.calendar_body[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY(
      SELECT 
          (facility_code, 
          workday_duration, 
          workday_type)::common.calendar_body
        FROM 
          calendar.definition
        WHERE 
          calendar_date = __date
    );
END
$$;


ALTER FUNCTION calendar.get_body(__date date) OWNER TO postgres;

--
-- TOC entry 504 (class 1255 OID 62404)
-- Name: get_default_day_duration(character varying); Type: FUNCTION; Schema: calendar; Owner: postgres
--

CREATE FUNCTION calendar.get_default_day_duration(__facility_code character varying) RETURNS interval
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN 
    workday.dayly_duration
  FROM 
    calendar.workday
  WHERE 
    workday.facility_code = __facility_code;
END;
$$;


ALTER FUNCTION calendar.get_default_day_duration(__facility_code character varying) OWNER TO postgres;

--
-- TOC entry 505 (class 1255 OID 62405)
-- Name: get_default_day_kind(character varying, integer); Type: FUNCTION; Schema: calendar; Owner: postgres
--

CREATE FUNCTION calendar.get_default_day_kind(__facility_code character varying, __dow integer) RETURNS common.day_kind
    LANGUAGE plpgsql
    AS $$
DECLARE
  _record record;
  _day_kind common.day_kind;
BEGIN
  SELECT 
    workweek.monday, 
    workweek.tuesday, 
    workweek.wednesday, 
    workweek.thursday, 
    workweek.friday, 
    workweek.saturday, 
    workweek.sunday
  INTO
    _record
  FROM 
    calendar.workweek
  WHERE 
    workweek.facility_code = __facility_code;


  CASE __dow
    WHEN 0 THEN 
      _day_kind := _record.sunday;
    WHEN 1 THEN
      _day_kind := _record.monday;
    WHEN 2 THEN
      _day_kind := _record.tuesday;
    WHEN 3 THEN
      _day_kind := _record.wednesday;
    WHEN 4 THEN
      _day_kind := _record.thursday;
    WHEN 5 THEN
      _day_kind := _record.saturday;
    WHEN 6 THEN 
      _day_kind := _record.sunday;
    ELSE
      RAISE EXCEPTION 'unsupported __dow %', __dow;
  END CASE;

  RETURN _day_kind;
END;
$$;


ALTER FUNCTION calendar.get_default_day_kind(__facility_code character varying, __dow integer) OWNER TO postgres;

--
-- TOC entry 506 (class 1255 OID 62406)
-- Name: get_head(date); Type: FUNCTION; Schema: calendar; Owner: postgres
--

CREATE FUNCTION calendar.get_head(__date date) RETURNS common.calendar_head
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN 
    (calendar_date, 
    julianized_day, 
    julianized_week)::common.calendar_head
  FROM 
    calendar.information
  WHERE 
    calendar_date = __date;
END;
$$;


ALTER FUNCTION calendar.get_head(__date date) OWNER TO postgres;

--
-- TOC entry 507 (class 1255 OID 62407)
-- Name: julianize_date(date); Type: FUNCTION; Schema: calendar; Owner: postgres
--

CREATE FUNCTION calendar.julianize_date(__date date) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
  _greg_day integer;
  _greg_month integer;
  _greg_year integer;
  _century integer;
  _yearincentury integer;
BEGIN

  /*
  Here is a very fast and compact algorithm that computes the
  Julian date from a Gregorian date and vice versa. These
  algorithms appeared as Algorithm 199 (ACM, 1980) and were
  first written in ALGOL by Robert Tantzen.
  */

  _greg_day := extract(day FROM __date::timestamp);
  _greg_month := extract(month FROM __date::timestamp);
  _greg_year := extract(year FROM __date::timestamp);

  IF (_greg_month > 2) THEN
    _greg_month := _greg_month - 3;
  ELSE
    _greg_month := _greg_month + 9;
    _greg_year := _greg_year - 1;
  END IF;

  _century := _greg_year/100;
  _yearincentury := _greg_year - 100 * _century;

  RETURN (
    (146097 * _century)/4
    + (1461 * _yearincentury)/4
    + (153 * _greg_month + 2)/5 + _greg_day + 1721119
  );

END;
$$;


ALTER FUNCTION calendar.julianize_date(__date date) OWNER TO postgres;

--
-- TOC entry 508 (class 1255 OID 62408)
-- Name: julianize_week(date); Type: FUNCTION; Schema: calendar; Owner: postgres
--

CREATE FUNCTION calendar.julianize_week(__date date) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
  _julian integer;
  -- 0001-12-31 BC -> 1721425
  -- no 0 week -> + 1
BEGIN

  /*
  Here is a very fast and compact algorithm that computes the
  Julian date from a Gregorian date and vice versa. These algo-
  rithms appeared as Algorithm 199 (ACM, 1980) and were first
  written in ALGOL by Robert Tantzen. Here are SQL translations of
  the code:
  */

  _julian := (calendar.julianize_date(__date := __date) - 1721425) / 7 + 1;

  RETURN _julian;

END;
$$;


ALTER FUNCTION calendar.julianize_week(__date date) OWNER TO postgres;

--
-- TOC entry 509 (class 1255 OID 62409)
-- Name: resubmit(date, common.calendar_body[]); Type: FUNCTION; Schema: calendar; Owner: postgres
--

CREATE FUNCTION calendar.resubmit(__date date, __body common.calendar_body[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.calendar_body;
  _dow integer;
BEGIN

  DELETE FROM
    calendar.definition
  WHERE 
    calendar_date = __date;

  _dow := extract(dow FROM __date);

  FOREACH _item IN
    ARRAY __body
  LOOP
    IF (_item.workday_duration IS NULL) THEN
      _item.workday_duration := calendar.get_default_day_duration(__facility_code := _item.facility_code);
    END IF;
    IF (_item.workday_type IS NULL) THEN
      _item.workday_type := calendar.get_default_day_kind(__facility_code := _item.facility_code, __dow := _dow);
    END IF;
    INSERT INTO 
      calendar.definition (
        calendar_date,
        facility_code,
        workday_duration,
        workday_type)
    VALUES (
      __date,
      _item.facility_code,
      _item.workday_duration,
      _item.workday_type);
  END LOOP;

END;
$$;


ALTER FUNCTION calendar.resubmit(__date date, __body common.calendar_body[]) OWNER TO postgres;

--
-- TOC entry 510 (class 1255 OID 62410)
-- Name: set_benchmark(date); Type: FUNCTION; Schema: calendar; Owner: postgres
--

CREATE FUNCTION calendar.set_benchmark(__date date) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _benchmark_count integer;
BEGIN

  SELECT
    count(start_date)
  FROM
    calendar.benchmark
  INTO
    _benchmark_count;

  IF (_benchmark_count > 0) THEN
    RAISE EXCEPTION 'unable to set benchmark %', __date;
  END IF;

  INSERT INTO
    calendar.benchmark (
      start_date,
      julianized_day,
      julianized_week)
  VALUES (
    __date,
    calendar.julianize_date(__date := __date),
    calendar.julianize_week(__date := __date)
  );

END;
$$;


ALTER FUNCTION calendar.set_benchmark(__date date) OWNER TO postgres;

--
-- TOC entry 511 (class 1255 OID 62411)
-- Name: set_checkpoint(date); Type: FUNCTION; Schema: calendar; Owner: postgres
--

CREATE FUNCTION calendar.set_checkpoint(__date date) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  INSERT INTO
    calendar.checkpoint (
      start_date)
  VALUES (
    __date
  );

END;
$$;


ALTER FUNCTION calendar.set_checkpoint(__date date) OWNER TO postgres;

--
-- TOC entry 513 (class 1255 OID 62412)
-- Name: submit(common.calendar_head, common.calendar_body[]); Type: FUNCTION; Schema: calendar; Owner: postgres
--

CREATE FUNCTION calendar.submit(__head common.calendar_head, __body common.calendar_body[]) RETURNS date
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.calendar_body;
  _calendar_date date;
  _dow integer;
  _benchmark_day integer;
  _benchmark_week integer;
BEGIN

  IF (__head.calendar_date IS NULL) THEN
    RAISE EXCEPTION 'field calendar_date is not defined';
  END IF;

  _benchmark_day := julianized_day FROM calendar.benchmark LIMIT 1;
  _benchmark_week := julianized_week FROM calendar.benchmark LIMIT 1;

  __head.julianized_day := calendar.julianize_date(__date := __head.calendar_date) - _benchmark_day;
  __head.julianized_week := calendar.julianize_week(__date := __head.calendar_date) - _benchmark_week;
  
  INSERT INTO
    calendar.information (
      calendar_date, 
      julianized_day, 
      julianized_week)
  VALUES (
    __head.calendar_date,
    __head.julianized_day, 
    __head.julianized_week) 
  RETURNING calendar_date INTO _calendar_date;

  _dow := extract(dow FROM _calendar_date);

  FOREACH _item IN
    ARRAY __body
  LOOP
    IF (_item.workday_duration IS NULL) THEN
      _item.workday_duration := calendar.get_default_day_duration(__facility_code := _item.facility_code);
    END IF;
    IF (_item.workday_type IS NULL) THEN
      _item.workday_type := calendar.get_default_day_kind(__facility_code := _item.facility_code, __dow := _dow);
    END IF;
    INSERT INTO
      calendar.definition (
        calendar_date, 
        facility_code, 
        workday_duration, 
        workday_type)
    VALUES (
      _calendar_date, 
      _item.facility_code, 
      _item.workday_duration, 
      _item.workday_type);
  END LOOP;

  RETURN _calendar_date;

END;
$$;


ALTER FUNCTION calendar.submit(__head common.calendar_head, __body common.calendar_body[]) OWNER TO postgres;

--
-- TOC entry 873 (class 1255 OID 64521)
-- Name: accept(bigint, boolean); Type: FUNCTION; Schema: claim; Owner: postgres
--

CREATE FUNCTION claim.accept(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.claim_head;
  _body common.document_body[];
  _is_locked boolean;
BEGIN

  _head := claim.get_head(__document_id);

  IF (_head.curr_fsmt = 'ACCEPTED'::common.approval_fsmt) THEN
    RAISE EXCEPTION 'claim % already accepted. exiting', _head.gid;
  END IF;

  _body := claim.get_body(__document_id);
  _is_locked := stocktake.is_document_locked(_head, _body);
  IF (_is_locked = true) THEN
    RAISE EXCEPTION 'claim % is locked by stocktake. exiting', _head.gid;
  END IF;

  PERFORM balance.loss_stock_claimed_qty(
    __facility_code := _head.facility_code,
    __inventory     := _body);

  PERFORM balance.loss_stock_demanded_qty(
    __facility_code := _head.addressee,
    __inventory     := _body);

  PERFORM balance.gain_stock_reserved_qty(
    __facility_code := _head.facility_code,
    __inventory     := _body);

  PERFORM balance.gain_stock_promissed_qty(
    __facility_code := _head.addressee,
    __inventory     := _body);

  UPDATE
    claim.head
  SET
    curr_fsmt = 'ACCEPTED'::common.approval_fsmt
  WHERE
    id = __document_id;

  IF (__apprise) THEN
  --
  END IF;

END;
$$;


ALTER FUNCTION claim.accept(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 874 (class 1255 OID 64515)
-- Name: approve(bigint, boolean); Type: FUNCTION; Schema: claim; Owner: postgres
--

CREATE FUNCTION claim.approve(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.claim_head;
  _body common.document_body[];
  _is_locked boolean;
BEGIN

  _head := claim.get_head(__document_id);

  IF (_head.curr_fsmt = 'APPROVED'::common.approval_fsmt) THEN
    RAISE EXCEPTION 'claim % already approved. exiting', _head.gid;
  END IF;

  _body := claim.get_body(__document_id);
  _is_locked := stocktake.is_document_locked(_head, _body);
  IF (_is_locked = true) THEN
    RAISE EXCEPTION 'claim % is locked by stocktake. exiting', _head.gid;
  END IF;

  PERFORM balance.gain_stock_claimed_qty(
    __facility_code := _head.facility_code,
    __inventory     := _body);

  PERFORM balance.gain_stock_demanded_qty(
    __facility_code := _head.addressee,
    __inventory     := _body);

  UPDATE
    claim.head
  SET
    curr_fsmt = 'APPROVED'::common.approval_fsmt
  WHERE
    id = __document_id;

  IF (__apprise) THEN
  --
  END IF;

END;
$$;


ALTER FUNCTION claim.approve(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 727 (class 1255 OID 64517)
-- Name: cancel(bigint, boolean); Type: FUNCTION; Schema: claim; Owner: postgres
--

CREATE FUNCTION claim.cancel(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.claim_head;
  _body common.document_body[];
  _is_locked boolean;
BEGIN

  _head := claim.get_head(__document_id);

  IF (_head.curr_fsmt = 'CANCELED'::common.approval_fsmt) THEN
    RAISE EXCEPTION 'claim % already canceled. exiting', _head.gid;
  END IF;

  _body := claim.get_body(__document_id);
  _is_locked := stocktake.is_document_locked(_head, _body);
  IF (_is_locked = true) THEN
    RAISE EXCEPTION 'claim % is locked by stocktake. exiting', _head.gid;
  END IF;

  PERFORM balance.loss_stock_claimed_qty(
    __facility_code := _head.facility_code,
    __inventory     := _body);

  PERFORM balance.loss_stock_demanded_qty(
    __facility_code := _head.addressee,
    __inventory     := _body);

  UPDATE
    claim.head
  SET
    curr_fsmt = 'CANCELED'::common.approval_fsmt
  WHERE
    id = __document_id;

  IF (__apprise) THEN
  --
  END IF;

END;
$$;


ALTER FUNCTION claim.cancel(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 514 (class 1255 OID 62413)
-- Name: destroy(bigint); Type: FUNCTION; Schema: claim; Owner: postgres
--

CREATE FUNCTION claim.destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  DELETE FROM claim.head WHERE id = __document_id;
END;
$$;


ALTER FUNCTION claim.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 833 (class 1255 OID 62414)
-- Name: disallow_editing_of_committed_document_body(); Type: FUNCTION; Schema: claim; Owner: postgres
--

CREATE FUNCTION claim.disallow_editing_of_committed_document_body() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  _approval_fsmt common.approval_fsmt;
BEGIN
  IF (TG_OP = 'INSERT' OR TG_OP = 'UPDATE') THEN

    SELECT 
      head.curr_fsmt
    FROM 
      claim.head
    WHERE 
      head.id = NEW.head_id
    INTO
      _approval_fsmt;

    IF (_approval_fsmt = 'COMMITTED'::common.approval_fsmt) THEN
      RAISE EXCEPTION 'not allowed to edit document %, %', NEW.head_id, _approval_fsmt;
    END IF;
    
    RETURN NEW;

  ELSIF (TG_OP = 'DELETE') THEN
    SELECT 
      head.curr_fsmt
    FROM 
      claim.head
    WHERE 
      head.id = OLD.head_id
    INTO
      _approval_fsmt;

    IF (_approval_fsmt = 'COMMITTED'::common.approval_fsmt) THEN
      RAISE EXCEPTION 'not allowed to edit document %, %', OLD.head_id, _approval_fsmt; 
    END IF;
    
    RETURN OLD;
  END IF;
  RETURN NULL;
END;
$$;


ALTER FUNCTION claim.disallow_editing_of_committed_document_body() OWNER TO postgres;

--
-- TOC entry 519 (class 1255 OID 62415)
-- Name: do_commit(bigint, boolean); Type: FUNCTION; Schema: claim; Owner: postgres
--

CREATE FUNCTION claim.do_commit(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.claim_head;
  _body common.document_body[];
  _is_locked boolean;
BEGIN

  _head := claim.get_head(__document_id);

  IF (_head.curr_fsmt = 'COMMITTED'::common.approval_fsmt) THEN
    RAISE EXCEPTION 'claim % already committed. exiting', _head.gid;
  END IF;

  _body := claim.get_body(__document_id);
  _is_locked := stocktake.is_document_locked(_head, _body);
  IF (_is_locked = true) THEN
    RAISE EXCEPTION 'claim % is locked by stocktake. exiting', _head.gid;
  END IF;

  PERFORM balance.loss_stock_reserved_qty(
    __facility_code := _head.facility_code,
    __inventory     := _body);

  PERFORM balance.loss_stock_promissed_qty(
    __facility_code := _head.addressee,
    __inventory     := _body);

  PERFORM balance.gain_stock_on_despatch_qty(
    __facility_code := _head.facility_code,
    __inventory     := _body);

  PERFORM balance.gain_stock_on_delivery_qty(
    __facility_code := _head.addressee,
    __inventory     := _body);

  UPDATE
    claim.head
  SET
    curr_fsmt = 'COMMITTED'::common.approval_fsmt
  WHERE
    id = __document_id;

  IF (__apprise) THEN
  --
  END IF;

END;
$$;


ALTER FUNCTION claim.do_commit(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 515 (class 1255 OID 62416)
-- Name: generate_display_name(date, character varying); Type: FUNCTION; Schema: claim; Owner: postgres
--

CREATE FUNCTION claim.generate_display_name(__document_date date, __facility_code character varying) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
DECLARE
  _week_number integer;
  _sequence_number integer;
  _document_kind_code character varying;
BEGIN

  _week_number := schedule.get_julianized_week(__document_date);
  _sequence_number := claim.numerator_nextval(__facility_code, _week_number);
  _document_kind_code := common.get_document_abbrevation('CLAIM');

  RETURN concat(_document_kind_code,
    '-', __facility_code,
    '-', common.number_encode2(_week_number, true),
    common.number_encode4(_sequence_number, true));

END;
$$;


ALTER FUNCTION claim.generate_display_name(__document_date date, __facility_code character varying) OWNER TO postgres;

--
-- TOC entry 516 (class 1255 OID 62417)
-- Name: get_body(bigint); Type: FUNCTION; Schema: claim; Owner: postgres
--

CREATE FUNCTION claim.get_body(__document_id bigint) RETURNS common.document_body[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY(
      SELECT 
          (part_code, 
          quantity, 
          uom_code)::common.document_body
        FROM 
          claim.body
        WHERE 
          head_id = __document_id
    );
END
$$;


ALTER FUNCTION claim.get_body(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 517 (class 1255 OID 62418)
-- Name: get_gid_by_id(bigint); Type: FUNCTION; Schema: claim; Owner: postgres
--

CREATE FUNCTION claim.get_gid_by_id(__document_id bigint) RETURNS uuid
    LANGUAGE plpgsql
    AS $$
DECLARE
  --_id bigint;
BEGIN
  RETURN gid
    FROM 
      claim.head
    WHERE 
      id = __document_id;
END;
$$;


ALTER FUNCTION claim.get_gid_by_id(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 844 (class 1255 OID 64476)
-- Name: get_head(bigint); Type: FUNCTION; Schema: claim; Owner: postgres
--

CREATE FUNCTION claim.get_head(__document_id bigint) RETURNS common.claim_head
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN 
    (id, 
    gid, 
    display_name,
    document_date,
    ship_from,
    curr_fsmt,
    'CLAIM'::common.document_kind,
    ship_to,
    due_date)::common.claim_head
  FROM 
    claim.head
  WHERE 
    id = __document_id;
END;
$$;


ALTER FUNCTION claim.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 708 (class 1255 OID 64477)
-- Name: get_head_batch(bigint[]); Type: FUNCTION; Schema: claim; Owner: postgres
--

CREATE FUNCTION claim.get_head_batch(__document_ids bigint[]) RETURNS common.claim_head[]
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (id, 
        gid, 
        display_name,
        document_date,
        ship_from,
        curr_fsmt,
        'CLAIM'::common.document_kind,
        ship_to,
        due_date)::common.claim_head
      FROM 
        claim.head
      WHERE 
        id = ANY(__document_ids)
    );
END;
$$;


ALTER FUNCTION claim.get_head_batch(__document_ids bigint[]) OWNER TO postgres;

--
-- TOC entry 818 (class 1255 OID 64478)
-- Name: get_head_batch_proposed(character varying, date, date); Type: FUNCTION; Schema: claim; Owner: postgres
--

CREATE FUNCTION claim.get_head_batch_proposed(__facility_code character varying, __date_start date, __date_end date) RETURNS common.claim_head[]
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (id, 
        gid, 
        display_name,
        document_date,
        ship_from,
        curr_fsmt,
        'CLAIM'::common.document_kind,
        ship_to,
        due_date)::common.claim_head
      FROM 
        claim.head
      WHERE 
        ship_from = __facility_code AND
        curr_fsmt = 'PROPOSED' AND
        document_date BETWEEN __date_start AND __date_end
    );
END;
$$;


ALTER FUNCTION claim.get_head_batch_proposed(__facility_code character varying, __date_start date, __date_end date) OWNER TO postgres;

--
-- TOC entry 518 (class 1255 OID 62422)
-- Name: get_id_by_gid(uuid); Type: FUNCTION; Schema: claim; Owner: postgres
--

CREATE FUNCTION claim.get_id_by_gid(__document_gid uuid) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  --_id bigint;
BEGIN
  RETURN id
    FROM 
      claim.head
    WHERE 
      gid = __document_gid;
END;
$$;


ALTER FUNCTION claim.get_id_by_gid(__document_gid uuid) OWNER TO postgres;

--
-- TOC entry 520 (class 1255 OID 62423)
-- Name: numerator_nextval(character varying, integer); Type: FUNCTION; Schema: claim; Owner: postgres
--

CREATE FUNCTION claim.numerator_nextval(__facility_code character varying, __julianized_week integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
  _seqence_number integer;
BEGIN

  UPDATE
    claim.numerator
  SET
    current_value = current_value + 1
  WHERE
    julianized_week = __julianized_week AND
    facility_code = __facility_code
  RETURNING current_value INTO _seqence_number;

  IF (NOT FOUND) THEN
    INSERT INTO
      claim.numerator (
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


ALTER FUNCTION claim.numerator_nextval(__facility_code character varying, __julianized_week integer) OWNER TO postgres;

--
-- TOC entry 875 (class 1255 OID 64519)
-- Name: reject(bigint, boolean); Type: FUNCTION; Schema: claim; Owner: postgres
--

CREATE FUNCTION claim.reject(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.claim_head;
  _body common.document_body[];
  _is_locked boolean;
BEGIN

  _head := claim.get_head(__document_id);

  IF (_head.curr_fsmt = 'REJECTED'::common.approval_fsmt) THEN
    RAISE EXCEPTION 'claim % already rejected. exiting', _head.gid;
  END IF;

  _body := claim.get_body(__document_id);

  _is_locked := stocktake.is_document_locked(_head, _body);
  IF (_is_locked = true) THEN
    RAISE EXCEPTION 'claim % is locked by stocktake. exiting', _head.gid;
  END IF;

  PERFORM balance.gain_stock_claimed_qty(
    __facility_code := _head.facility_code,
    __inventory     := _body);

  PERFORM balance.gain_stock_demanded_qty(
    __facility_code := _head.addressee,
    __inventory     := _body);

  PERFORM balance.loss_stock_reserved_qty(
    __facility_code := _head.facility_code,
    __inventory     := _body);

  PERFORM balance.loss_stock_promissed_qty(
    __facility_code := _head.addressee,
    __inventory     := _body);

  UPDATE
    claim.head
  SET
    curr_fsmt = 'REJECTED'::common.approval_fsmt
  WHERE
    id = __document_id;

  IF (__apprise) THEN
  --
  END IF;

END;
$$;


ALTER FUNCTION claim.reject(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 877 (class 1255 OID 64522)
-- Name: resolve(bigint, boolean); Type: FUNCTION; Schema: claim; Owner: postgres
--

CREATE FUNCTION claim.resolve(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.claim_head;
  _body common.document_body[];
  _is_locked boolean;
BEGIN

  _head := claim.get_head(__document_id);

  IF (_head.curr_fsmt <> 'FAILED'::common.approval_fsmt AND _head.curr_fsmt <> 'PASSED'::common.approval_fsmt) THEN
    RAISE EXCEPTION 'claim % not committed. exiting', _head.gid;
  END IF;

  _body := claim.get_body(__document_id);
  _is_locked := stocktake.is_document_locked(_head, _body);
  IF (_is_locked = true) THEN
    RAISE EXCEPTION 'claim % is locked by stocktake. exiting', _head.gid;
  END IF;

  PERFORM balance.loss_stock_on_despatch_qty(
    __facility_code := _head.facility_code,
    __inventory     := _body);

  PERFORM balance.loss_stock_on_delivery_qty(
    __facility_code := _head.addressee,
    __inventory     := _body);

  IF (_head.curr_fsmt = 'REVERTED'::common.approval_fsmt) THEN
    UPDATE
      claim.head
    SET
      curr_fsmt = 'FAILED'::common.approval_fsmt
    WHERE
      id = __document_id;
  ELSE
    UPDATE
      claim.head
    SET
      curr_fsmt = 'PASSED'::common.approval_fsmt
    WHERE
      id = __document_id;
  END IF;

  IF (__apprise) THEN
  --
  END IF;

END;
$$;


ALTER FUNCTION claim.resolve(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 521 (class 1255 OID 62424)
-- Name: resubmit(bigint, common.document_body[]); Type: FUNCTION; Schema: claim; Owner: postgres
--

CREATE FUNCTION claim.resubmit(__document_id bigint, __body common.document_body[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.document_body;
BEGIN

  DELETE FROM
    claim.body
  WHERE 
    head_id = __document_id;

  FOREACH _item IN
    ARRAY __body
  LOOP
    INSERT INTO 
      claim.body (
        head_id,
        part_code,
        quantity,
        uom_code)
    VALUES (
      __document_id, 
      _item.part_code, 
      _item.quantity, 
      _item.uom_code);
  END LOOP;

END;
$$;


ALTER FUNCTION claim.resubmit(__document_id bigint, __body common.document_body[]) OWNER TO postgres;

--
-- TOC entry 876 (class 1255 OID 62425)
-- Name: revert(bigint, boolean); Type: FUNCTION; Schema: claim; Owner: postgres
--

CREATE FUNCTION claim.revert(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.claim_head;
  _body common.document_body[];
  _is_locked boolean;
BEGIN

  _head := claim.get_head(__document_id);

  IF (_head.curr_fsmt <> 'COMMITTED'::common.approval_fsmt) THEN
    RAISE EXCEPTION 'claim % not committed. exiting', _head.gid;
  END IF;

  _body := claim.get_body(__document_id);
  _is_locked := stocktake.is_document_locked(_head, _body);
  IF (_is_locked = true) THEN
    RAISE EXCEPTION 'claim % is locked by stocktake. exiting', _head.gid;
  END IF;

  PERFORM balance.gain_stock_reserved_qty(
    __facility_code := _head.facility_code,
    __inventory     := _body);

  PERFORM balance.gain_stock_promissed_qty(
    __facility_code := _head.addressee,
    __inventory     := _body);

  PERFORM balance.loss_stock_on_despatch_qty(
    __facility_code := _head.facility_code,
    __inventory     := _body);

  PERFORM balance.loss_stock_on_delivery_qty(
    __facility_code := _head.addressee,
    __inventory     := _body);

  UPDATE
    claim.head
  SET
    curr_fsmt = 'REVERTED'::common.approval_fsmt
  WHERE
    id = __document_id;

  IF (__apprise) THEN
  --
  END IF;

END;
$$;


ALTER FUNCTION claim.revert(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 522 (class 1255 OID 62426)
-- Name: submit(common.issue_head, common.document_body[]); Type: FUNCTION; Schema: claim; Owner: postgres
--

CREATE FUNCTION claim.submit(__head common.issue_head, __body common.document_body[]) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.document_body;
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
    __head.display_name := claim.generate_display_name(
        __document_date := __head.document_date,
        __facility_code := __head.facility_code);
  END IF;

  INSERT INTO
    claim.head (
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
      claim.body (
        head_id, 
        part_code, 
        quantity, 
        uom_code)
    VALUES (
      _document_id, 
      _item.part_code, 
      _item.quantity, 
      _item.uom_code);
  END LOOP;

  RETURN _document_id;

END;
$$;


ALTER FUNCTION claim.submit(__head common.issue_head, __body common.document_body[]) OWNER TO postgres;

--
-- TOC entry 523 (class 1255 OID 62427)
-- Name: array_append_distinct(anyarray, anyelement); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.array_append_distinct(anyarray, anyelement) RETURNS anyarray
    LANGUAGE sql
    AS $_$ 
  SELECT ARRAY(SELECT unnest($1) union SELECT $2) 
$_$;


ALTER FUNCTION common.array_append_distinct(anyarray, anyelement) OWNER TO postgres;

--
-- TOC entry 524 (class 1255 OID 62428)
-- Name: array_distinct(anyarray); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.array_distinct(anyarray) RETURNS anyarray
    LANGUAGE sql
    AS $_$
  SELECT ARRAY(SELECT DISTINCT unnest($1))
$_$;


ALTER FUNCTION common.array_distinct(anyarray) OWNER TO postgres;

--
-- TOC entry 525 (class 1255 OID 62429)
-- Name: array_erase(anyarray, anyelement); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.array_erase(anyarray, anyelement) RETURNS anyarray
    LANGUAGE sql
    AS $_$
  SELECT ARRAY(SELECT v FROM unnest($1) g(v) WHERE v <> $2)
$_$;


ALTER FUNCTION common.array_erase(anyarray, anyelement) OWNER TO postgres;

--
-- TOC entry 526 (class 1255 OID 62430)
-- Name: array_sort(anyarray); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.array_sort(anyarray) RETURNS anyarray
    LANGUAGE sql
    AS $_$
  SELECT ARRAY(SELECT unnest($1) ORDER BY 1)
$_$;


ALTER FUNCTION common.array_sort(anyarray) OWNER TO postgres;

--
-- TOC entry 527 (class 1255 OID 62431)
-- Name: assemly_to_consumable(common.component_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.assemly_to_consumable(__component common.component_specification) RETURNS common.material_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __component.part_code,
    __component.version_num,
    __component.display_name,
    __component.quantity,
    __component.uom_code,
    'CONSUMABLE'::common.material_kind
  )::common.material_specification;

END;
$$;


ALTER FUNCTION common.assemly_to_consumable(__component common.component_specification) OWNER TO postgres;

--
-- TOC entry 528 (class 1255 OID 62432)
-- Name: assemly_to_producible(common.component_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.assemly_to_producible(__component common.component_specification) RETURNS common.material_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __component.part_code,
    __component.version_num,
    __component.display_name,
    __component.quantity,
    __component.uom_code,
    'PRODUCIBLE'::common.material_kind
  )::common.material_specification;

END;
$$;


ALTER FUNCTION common.assemly_to_producible(__component common.component_specification) OWNER TO postgres;

--
-- TOC entry 529 (class 1255 OID 62433)
-- Name: buyable_to_consumable(common.component_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.buyable_to_consumable(__component common.component_specification) RETURNS common.material_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __component.part_code,
    __component.version_num,
    __component.display_name,
    __component.quantity,
    __component.uom_code,
    'CONSUMABLE'::common.material_kind
  )::common.material_specification;

END;
$$;


ALTER FUNCTION common.buyable_to_consumable(__component common.component_specification) OWNER TO postgres;

--
-- TOC entry 530 (class 1255 OID 62434)
-- Name: buyable_to_primal(common.component_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.buyable_to_primal(__component common.component_specification) RETURNS common.material_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __component.part_code,
    __component.version_num,
    __component.display_name,
    __component.quantity,
    __component.uom_code,
    'PRIMAL'::common.material_kind
  )::common.material_specification;

END;
$$;


ALTER FUNCTION common.buyable_to_primal(__component common.component_specification) OWNER TO postgres;

--
-- TOC entry 531 (class 1255 OID 62435)
-- Name: consumable_to_assembly(common.material_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.consumable_to_assembly(__material common.material_specification) RETURNS common.component_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __material.part_code,
    __material.version_num,
    __material.display_name,
    __material.quantity,
    __material.uom_code,
    'ASSEMBLY'::common.component_kind
  )::common.component_specification;

END;
$$;


ALTER FUNCTION common.consumable_to_assembly(__material common.material_specification) OWNER TO postgres;

--
-- TOC entry 532 (class 1255 OID 62436)
-- Name: consumable_to_buyable(common.material_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.consumable_to_buyable(__material common.material_specification) RETURNS common.component_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __material.part_code,
    __material.version_num,
    __material.display_name,
    __material.quantity,
    __material.uom_code,
    'BUYABLE'::common.component_kind
  )::common.component_specification;

END;
$$;


ALTER FUNCTION common.consumable_to_buyable(__material common.material_specification) OWNER TO postgres;

--
-- TOC entry 500 (class 1255 OID 62437)
-- Name: consumable_to_part(common.material_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.consumable_to_part(__material common.material_specification) RETURNS common.component_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __material.part_code,
    __material.version_num,
    __material.display_name,
    __material.quantity,
    __material.uom_code,
    'PART'::common.component_kind
  )::common.component_specification;

END;
$$;


ALTER FUNCTION common.consumable_to_part(__material common.material_specification) OWNER TO postgres;

--
-- TOC entry 879 (class 1255 OID 64523)
-- Name: convert_approval_to_document_fsmt(common.approval_fsmt); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.convert_approval_to_document_fsmt(__approval_fsmt common.approval_fsmt) RETURNS common.document_fsmt
    LANGUAGE plpgsql
    AS $$
DECLARE
  _document_fsmt common.document_fsmt;  
BEGIN

  CASE __approval_fsmt
    WHEN 'PROPOSED'::common.approval_fsmt THEN 
      _document_fsmt := 'PROPOSED'::common.document_fsmt;

    WHEN 'APPROVED'::common.approval_fsmt THEN
      _document_fsmt := 'COMMITTED'::common.document_fsmt;

    WHEN 'ACCEPTED'::common.approval_fsmt THEN
      _document_fsmt := 'COMMITTED'::common.document_fsmt;

    WHEN 'COMMITTED'::common.approval_fsmt THEN
      _document_fsmt := 'COMMITTED'::common.document_fsmt;

    WHEN 'PASSED'::common.approval_fsmt THEN
      _document_fsmt := 'COMMITTED'::common.document_fsmt;

    WHEN 'CANCELED'::common.approval_fsmt THEN
      _document_fsmt := 'REVERTED'::common.document_fsmt;

    WHEN 'REJECTED'::common.approval_fsmt THEN 
      _document_fsmt := 'REVERTED'::common.document_fsmt;

    WHEN 'REVERTED'::common.approval_fsmt THEN 
      _document_fsmt := 'REVERTED'::common.document_fsmt;

    WHEN 'FAILED'::common.approval_fsmt THEN 
      _document_fsmt := 'COMMITTED'::common.document_fsmt;

    ELSE
      RAISE EXCEPTION 'unsupported approval_fsmt %', __approval_fsmt;

  END CASE;

  RETURN _document_fsmt;

END;
$$;


ALTER FUNCTION common.convert_approval_to_document_fsmt(__approval_fsmt common.approval_fsmt) OWNER TO postgres;

--
-- TOC entry 878 (class 1255 OID 64524)
-- Name: convert_claim_to_document_head(common.claim_head); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.convert_claim_to_document_head(__claim_head common.claim_head) RETURNS common.document_head
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __claim_head.document_id,
    __claim_head.gid,
    __claim_head.display_name,
    __claim_head.document_date,
    __claim_head.facility_code,
    __claim_head.curr_fsmt::common.document_fsmt,
    __claim_head.doctype
  )::common.document_head;

END;
$$;


ALTER FUNCTION common.convert_claim_to_document_head(__claim_head common.claim_head) OWNER TO postgres;

--
-- TOC entry 534 (class 1255 OID 62438)
-- Name: convert_component_to_inventory_kind(common.component_kind); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.convert_component_to_inventory_kind(__component_kind common.component_kind) RETURNS common.inventory_kind
    LANGUAGE plpgsql
    AS $$
DECLARE
  _inventory_kind common.inventory_kind;  
BEGIN

  CASE __component_kind
    WHEN 'BUYABLE'::common.component_kind THEN 
      _inventory_kind := 'BUYABLE'::common.inventory_kind;

    WHEN 'PART'::common.component_kind THEN
      _inventory_kind := 'PART'::common.inventory_kind;

    WHEN 'ASSEMBLY'::common.component_kind THEN
      _inventory_kind := 'ASSEMBLY'::common.inventory_kind;

    ELSE
      RAISE EXCEPTION 'unsupported component kind %', __component_kind;

  END CASE;

  RETURN _inventory_kind;

END;
$$;


ALTER FUNCTION common.convert_component_to_inventory_kind(__component_kind common.component_kind) OWNER TO postgres;

--
-- TOC entry 535 (class 1255 OID 62439)
-- Name: convert_inbound_to_document_head(common.receipt_head); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.convert_inbound_to_document_head(__receipt_head common.receipt_head) RETURNS common.document_head
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __receipt_head.document_id,
    __receipt_head.gid,
    __receipt_head.display_name,
    __receipt_head.document_date,
    __receipt_head.facility_code,
    __receipt_head.curr_fsmt,
    __receipt_head.doctype
  )::common.document_head;

END;
$$;


ALTER FUNCTION common.convert_inbound_to_document_head(__receipt_head common.receipt_head) OWNER TO postgres;

--
-- TOC entry 536 (class 1255 OID 62440)
-- Name: convert_material_to_inventory_kind(common.material_kind); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.convert_material_to_inventory_kind(__material_kind common.material_kind) RETURNS common.inventory_kind
    LANGUAGE plpgsql
    AS $$
DECLARE
  _inventory_kind common.inventory_kind;  
BEGIN

  CASE __material_kind
    WHEN 'PRODUCIBLE'::common.material_kind THEN 
      _inventory_kind := 'PRODUCIBLE'::common.inventory_kind;

    WHEN 'CONSUMABLE'::common.material_kind THEN
      _inventory_kind := 'CONSUMABLE'::common.inventory_kind;

    WHEN 'PRIMAL'::common.material_kind THEN
      _inventory_kind := 'PRIMAL'::common.inventory_kind;

    ELSE
      RAISE EXCEPTION 'unsupported material kind %', __material_kind;

  END CASE;

  RETURN _inventory_kind;

END;
$$;


ALTER FUNCTION common.convert_material_to_inventory_kind(__material_kind common.material_kind) OWNER TO postgres;

--
-- TOC entry 537 (class 1255 OID 62441)
-- Name: convert_outbound_to_document_head(common.issue_head); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.convert_outbound_to_document_head(__issue_head common.issue_head) RETURNS common.document_head
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __issue_head.document_id,
    __issue_head.gid,
    __issue_head.display_name,
    __issue_head.document_date,
    __issue_head.facility_code,
    __issue_head.curr_fsmt,
    __issue_head.doctype
  )::common.document_head;

END;
$$;


ALTER FUNCTION common.convert_outbound_to_document_head(__issue_head common.issue_head) OWNER TO postgres;

--
-- TOC entry 538 (class 1255 OID 62442)
-- Name: convert_stocktake_to_document_body(common.stocktake_body); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.convert_stocktake_to_document_body(__stocktake_body common.stocktake_body) RETURNS common.document_body
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __stocktake_body.part_code,
    __stocktake_body.quantity,
    __stocktake_body.uom_code
  )::common.document_body;

END;
$$;


ALTER FUNCTION common.convert_stocktake_to_document_body(__stocktake_body common.stocktake_body) OWNER TO postgres;

--
-- TOC entry 539 (class 1255 OID 62443)
-- Name: disallow_editing_of_committed_document_head(); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.disallow_editing_of_committed_document_head() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
  BEGIN
    IF (TG_OP = 'UPDATE') THEN

      IF (OLD.curr_fsmt = 'COMMITTED'::common.document_fsmt AND NEW.curr_fsmt <> 'REVERTED'::common.document_fsmt) THEN
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
-- TOC entry 540 (class 1255 OID 62444)
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
-- TOC entry 541 (class 1255 OID 62447)
-- Name: get_stocktake_mode(common.document_kind); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.get_stocktake_mode(__document_kind common.document_kind) RETURNS common.policy_mode
    LANGUAGE plpgsql
    AS $$
DECLARE
  _stocktake_mode common.policy_mode;
BEGIN

  SELECT
    stocktake_mode_applied
  FROM 
    common.stocktake_policy
  WHERE 
    document_kind_name = __document_kind
  INTO
    _stocktake_mode;
  IF NOT FOUND THEN
    _stocktake_mode := 'DISABLED'::common.policy_mode;
  END IF;

  RETURN _stocktake_mode;

END;
$$;


ALTER FUNCTION common.get_stocktake_mode(__document_kind common.document_kind) OWNER TO postgres;

--
-- TOC entry 542 (class 1255 OID 62448)
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
-- TOC entry 543 (class 1255 OID 62449)
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
-- TOC entry 512 (class 1255 OID 62450)
-- Name: part_to_consumable(common.component_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.part_to_consumable(__component common.component_specification) RETURNS common.material_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __component.part_code,
    __component.version_num,
    __component.display_name,
    __component.quantity,
    __component.uom_code,
    'CONSUMABLE'::common.material_kind
  )::common.material_specification;

END;
$$;


ALTER FUNCTION common.part_to_consumable(__component common.component_specification) OWNER TO postgres;

--
-- TOC entry 544 (class 1255 OID 62451)
-- Name: part_to_producible(common.component_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.part_to_producible(__component common.component_specification) RETURNS common.material_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __component.part_code,
    __component.version_num,
    __component.display_name,
    __component.quantity,
    __component.uom_code,
    'PRODUCIBLE'::common.material_kind
  )::common.material_specification;

END;
$$;


ALTER FUNCTION common.part_to_producible(__component common.component_specification) OWNER TO postgres;

--
-- TOC entry 545 (class 1255 OID 62452)
-- Name: primal_to_buyable(common.material_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.primal_to_buyable(__material common.material_specification) RETURNS common.component_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __material.part_code,
    __material.version_num,
    __material.display_name,
    __material.quantity,
    __material.uom_code,
    'BUYABLE'::common.component_kind
  )::common.component_specification;

END;
$$;


ALTER FUNCTION common.primal_to_buyable(__material common.material_specification) OWNER TO postgres;

--
-- TOC entry 546 (class 1255 OID 62453)
-- Name: producible_to_assembly(common.material_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.producible_to_assembly(__material common.material_specification) RETURNS common.component_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __material.part_code,
    __material.version_num,
    __material.display_name,
    __material.quantity,
    __material.uom_code,
    'ASSEMBLY'::common.component_kind
  )::common.component_specification;

END;
$$;


ALTER FUNCTION common.producible_to_assembly(__material common.material_specification) OWNER TO postgres;

--
-- TOC entry 547 (class 1255 OID 62454)
-- Name: producible_to_part(common.material_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.producible_to_part(__material common.material_specification) RETURNS common.component_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __material.part_code,
    __material.version_num,
    __material.display_name,
    __material.quantity,
    __material.uom_code,
    'PART'::common.component_kind
  )::common.component_specification;

END;
$$;


ALTER FUNCTION common.producible_to_part(__material common.material_specification) OWNER TO postgres;

--
-- TOC entry 548 (class 1255 OID 62455)
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
-- TOC entry 549 (class 1255 OID 62475)
-- Name: destroy(bigint); Type: FUNCTION; Schema: ebom; Owner: postgres
--

CREATE FUNCTION ebom.destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _referenced_definitions bigint;
  _information_id bigint;
BEGIN
  
  SELECT
    definition.information_id
  FROM 
    ebom.definition
  WHERE 
    definition.id = __document_id
  INTO
    _information_id;

  DELETE FROM ebom.definition WHERE id = __document_id;

  SELECT 
    count(definition.information_id)
  FROM 
    ebom.definition
  WHERE
    definition.information_id = _information_id
  INTO
    _referenced_definitions;

  IF (_referenced_definitions = 0) THEN
    DELETE FROM ebom.information WHERE id = _information_id;
  END IF;

END;
$$;


ALTER FUNCTION ebom.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 4931 (class 0 OID 0)
-- Dependencies: 549
-- Name: FUNCTION destroy(__document_id bigint); Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON FUNCTION ebom.destroy(__document_id bigint) IS 'delete engineering bill of materials';


--
-- TOC entry 550 (class 1255 OID 62476)
-- Name: do_commit(bigint, boolean); Type: FUNCTION; Schema: ebom; Owner: postgres
--

CREATE FUNCTION ebom.do_commit(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.ebom_head;
  _body common.component_specification[];
  _item common.component_specification;
  _inventory_defined bigint;
BEGIN

  _head := ebom.get_head(__document_id);
  _body := ebom.get_body(__document_id);

  IF (_head.curr_fsmt = 'COMMITTED'::common.document_fsmt) THEN
    RAISE NOTICE 'ebom % already committed. exiting', _head.gid;
    RETURN;
  END IF;


  /* create inventory from head record */
  SELECT 
    definition.id
  FROM 
    inventory.information, 
    inventory.definition
  WHERE 
    information.id = definition.information_id AND
    information.part_code = (_head.component_spec).part_code AND 
    definition.version_num = (_head.component_spec).version_num
  INTO
    _inventory_defined;

  IF (_inventory_defined IS NULL) THEN
    PERFORM inventory.submit(
      (
        NULL,
        NULL,
        (_head.component_spec).display_name,
        (_head.component_spec).part_code,
        (_head.component_spec).version_num,
        now()::date,
        (_head.component_spec).uom_code,
        'PROPOSED',
        'INVENTORY'
      )::common.inventory_head,
      ARRAY[((_head.component_spec).uom_code, (_head.component_spec).uom_code, 1)]::common.unit_conversion_type[],
      ARRAY[((_head.component_spec).component_type::common.inventory_kind), ('STORABLE'), ('PRODUCIBLE')]::common.inventory_kind[]
    );
  ELSE
    PERFORM inventory.set_kind_spec(
      _inventory_defined,
      ARRAY[((_head.component_spec).component_type::common.inventory_kind), ('STORABLE'), ('PRODUCIBLE')]::common.inventory_kind[]
    );
  END IF;


  /* create inventory from body records */
  IF (__apprise IS true) THEN

    FOREACH _item IN
        ARRAY _body
      LOOP

      SELECT 
        definition.id
      FROM 
        inventory.information, 
        inventory.definition
      WHERE 
        information.id = definition.information_id AND
        information.part_code = _item.part_code AND 
        definition.version_num = _item.version_num
      INTO
        _inventory_defined;

      IF (_inventory_defined IS NULL) THEN
        IF (_item.component_type = 'BUYABLE'::common.component_kind) THEN
          PERFORM inventory.submit(
            (
              NULL,
              NULL,
              _item.display_name,
              _item.part_code,
              _item.version_num,
              now()::date,
              _item.uom_code,
              'PROPOSED',
              'INVENTORY'
            )::common.inventory_head,
            ARRAY[(_item.uom_code, _item.uom_code, 1)]::common.unit_conversion_type[],
            ARRAY[(_item.component_type::common.inventory_kind), ('STORABLE'), ('CONSUMABLE')]::common.inventory_kind[]
          );
        ELSE
          PERFORM inventory.submit(
            (
              NULL,
              NULL,
              _item.display_name,
              _item.part_code,
              _item.version_num,
              now()::date,
              _item.uom_code,
              'PROPOSED',
              'INVENTORY'
            )::common.inventory_head,
            ARRAY[(_item.uom_code, _item.uom_code, 1)]::common.unit_conversion_type[],
            ARRAY[(_item.component_type::common.inventory_kind), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
          );
        END IF;
      ELSE
        IF (_item.component_type = 'BUYABLE'::common.component_kind) THEN
          PERFORM inventory.set_kind_spec(
            _inventory_defined,
            ARRAY[(_item.component_type::common.inventory_kind), ('STORABLE'), ('CONSUMABLE')]::common.inventory_kind[]
          );
        ELSE
          PERFORM inventory.set_kind_spec(
              _inventory_defined,
              ARRAY[(_item.component_type::common.inventory_kind), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
            );
          END IF;
      END IF;

    END LOOP;

  END IF;

    /* set up valid ebom structure body records */
  FOREACH _item IN
      ARRAY _body
    LOOP

    CASE _item.component_type
      WHEN 'ASSEMBLY'::common.component_kind THEN 
        INSERT INTO
          ebom.assembly (
            definition_id,
            part_code,
            version_num,
            quantity,
            uom_code,
            component_type
            )
        VALUES (
          __document_id,
          _item.part_code,
          _item.version_num,
          _item.quantity,
          _item.uom_code,
          _item.component_type);

      WHEN 'BUYABLE'::common.component_kind THEN
        INSERT INTO
          ebom.buyable (
            definition_id,
            part_code,
            version_num,
            quantity,
            uom_code,
            component_type
            )
        VALUES (
          __document_id,
          _item.part_code,
          _item.version_num,
          _item.quantity,
          _item.uom_code,
          _item.component_type);

      WHEN 'PART'::common.component_kind THEN 
        INSERT INTO
          ebom.part (
            definition_id,
            part_code,
            version_num,
            quantity,
            uom_code,
            component_type
            )
        VALUES (
          __document_id,
          _item.part_code,
          _item.version_num,
          _item.quantity,
          _item.uom_code,
          _item.component_type);
        
      ELSE
        RAISE EXCEPTION 'unsupported component_kind %', _item.component_type;
      END CASE;

  END LOOP;

  DELETE from ebom.blueprint WHERE definition_id = __document_id;

  UPDATE
    ebom.definition
  SET
    curr_fsmt = 'COMMITTED'::common.document_fsmt
  WHERE
    id = __document_id;


END;
$$;


ALTER FUNCTION ebom.do_commit(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 4932 (class 0 OID 0)
-- Dependencies: 550
-- Name: FUNCTION do_commit(__document_id bigint, __apprise boolean); Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON FUNCTION ebom.do_commit(__document_id bigint, __apprise boolean) IS 'commit engineering bill of materials and create inventory items';


--
-- TOC entry 551 (class 1255 OID 62477)
-- Name: get_body(bigint); Type: FUNCTION; Schema: ebom; Owner: postgres
--

CREATE FUNCTION ebom.get_body(__document_id bigint) RETURNS common.component_specification[]
    LANGUAGE plpgsql
    AS $$
DECLARE
  _curr_fsmt common.document_fsmt;
BEGIN

  SELECT 
    definition.curr_fsmt
  FROM 
    ebom.definition
  WHERE 
    definition.id = __document_id
  INTO
    _curr_fsmt;

  IF (_curr_fsmt = 'PROPOSED'::common.document_fsmt) THEN
    RETURN
      ARRAY(
        SELECT
          (
            blueprint.part_code, 
            blueprint.version_num, 
            blueprint.display_name, 
            blueprint.quantity, 
            blueprint.uom_code, 
            blueprint.component_type
          )::common.component_specification
        FROM
          ebom.blueprint
        WHERE
          blueprint.definition_id = __document_id
      );
  ELSE
    RETURN
      ARRAY(
        SELECT 
          (
            component.part_code, 
            component.version_num, 
            conglomeration.display_name, 
            component.quantity, 
            component.uom_code, 
            component.component_type
            )::common.component_specification
        FROM 
          ebom.component, 
          inventory.conglomeration
        WHERE 
          component.part_code = conglomeration.part_code AND
          component.version_num = conglomeration.version_num AND
          component.component_type::common.inventory_kind = conglomeration.inventory_type AND
          component.definition_id = __document_id
      );
  END IF;

END
$$;


ALTER FUNCTION ebom.get_body(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 4933 (class 0 OID 0)
-- Dependencies: 551
-- Name: FUNCTION get_body(__document_id bigint); Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON FUNCTION ebom.get_body(__document_id bigint) IS 'get records of engineering bill of materials';


--
-- TOC entry 552 (class 1255 OID 62478)
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
-- TOC entry 4934 (class 0 OID 0)
-- Dependencies: 552
-- Name: FUNCTION get_gid_by_id(__document_id bigint); Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON FUNCTION ebom.get_gid_by_id(__document_id bigint) IS 'get uuid if engineering bill of materials by id';


--
-- TOC entry 553 (class 1255 OID 62479)
-- Name: get_head(bigint); Type: FUNCTION; Schema: ebom; Owner: postgres
--

CREATE FUNCTION ebom.get_head(__document_id bigint) RETURNS common.ebom_head
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN
    (
      definition.id, 
      definition.gid, 
      definition.published_date, 
      definition.curr_fsmt,
      'EBOM'::common.document_kind,
      (
        information.part_code, 
        definition.version_num, 
        information.display_name, 
        definition.quantity, 
        definition.uom_code, 
        definition.component_type
      )::common.component_specification
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
-- TOC entry 4935 (class 0 OID 0)
-- Dependencies: 553
-- Name: FUNCTION get_head(__document_id bigint); Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON FUNCTION ebom.get_head(__document_id bigint) IS 'get heading information of engineering bill of materials';


--
-- TOC entry 554 (class 1255 OID 62480)
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
-- TOC entry 4936 (class 0 OID 0)
-- Dependencies: 554
-- Name: FUNCTION get_id_by_gid(__document_gid uuid); Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON FUNCTION ebom.get_id_by_gid(__document_gid uuid) IS 'get id of engineering bill of materials by uuid';


--
-- TOC entry 555 (class 1255 OID 62481)
-- Name: resubmit(bigint, common.component_specification[]); Type: FUNCTION; Schema: ebom; Owner: postgres
--

CREATE FUNCTION ebom.resubmit(__document_id bigint, __body common.component_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.component_specification;
BEGIN

  DELETE FROM
    ebom.blueprint
  WHERE
    definition_id = __document_id;


  IF array_length(__body, 1) > 0 THEN
    FOREACH _item IN
      ARRAY __body
    LOOP
      INSERT INTO
        ebom.blueprint (
          definition_id,
          part_code,
          version_num,
          display_name,
          quantity,
          uom_code,
          component_type)
      VALUES (
        __document_id,
        _item.part_code,
        _item.version_num,
        _item.display_name,
        _item.quantity,
        _item.uom_code,
        _item.component_type);
    END LOOP;
  END IF;
  

END;
$$;


ALTER FUNCTION ebom.resubmit(__document_id bigint, __body common.component_specification[]) OWNER TO postgres;

--
-- TOC entry 4937 (class 0 OID 0)
-- Dependencies: 555
-- Name: FUNCTION resubmit(__document_id bigint, __body common.component_specification[]); Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON FUNCTION ebom.resubmit(__document_id bigint, __body common.component_specification[]) IS 'recreate engineering bill of materials';


--
-- TOC entry 556 (class 1255 OID 62482)
-- Name: revert(bigint, boolean); Type: FUNCTION; Schema: ebom; Owner: postgres
--

CREATE FUNCTION ebom.revert(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.ebom_head;
  _body common.component_specification[];
  _item common.component_specification;
BEGIN

  _head := ebom.get_head(__document_id);
  _body := ebom.get_body(__document_id);

  IF (_head.curr_fsmt <> 'COMMITTED'::common.document_fsmt) THEN
    RAISE NOTICE 'EBOM % not committed. exiting', _head.gid;
    RETURN;
  END IF;

  UPDATE
    ebom.definition
  SET
    curr_fsmt = 'REVERTED'::common.document_fsmt
  WHERE
    id = __document_id;

  IF array_length(_body, 1) > 0 THEN
    FOREACH _item IN
      ARRAY _body
    LOOP
      INSERT INTO
        ebom.blueprint (
          definition_id,
          part_code,
          version_num,
          display_name,
          quantity,
          uom_code,
          component_type)
      VALUES (
        __document_id,
        _item.part_code,
        _item.version_num,
        _item.display_name,
        _item.quantity,
        _item.uom_code,
        _item.component_type);
    END LOOP;
  END IF;

  DELETE FROM ebom.component WHERE definition_id = __document_id;

  IF (__apprise IS true) THEN
   -- delete unreferenced inventory items
  END IF;

END;
$$;


ALTER FUNCTION ebom.revert(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 4938 (class 0 OID 0)
-- Dependencies: 556
-- Name: FUNCTION revert(__document_id bigint, __apprise boolean); Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON FUNCTION ebom.revert(__document_id bigint, __apprise boolean) IS 'revert engineering bill of materials';


--
-- TOC entry 558 (class 1255 OID 62483)
-- Name: submit(common.ebom_head, common.component_specification[]); Type: FUNCTION; Schema: ebom; Owner: postgres
--

CREATE FUNCTION ebom.submit(__head common.ebom_head, __body common.component_specification[]) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.component_specification;
  _spec common.component_specification;
  _definition_id bigint;
  _information_id bigint;
BEGIN

  _spec := __head.component_spec;

  IF (_spec.component_type = 'ASSEMBLY'::common.component_kind AND array_length(__body, 1) = 0) THEN
    RAISE 'ASSEMBLY body is empty, %, %', __head, __body;
  END IF;

  IF (_spec.component_type = 'PART'::common.component_kind AND array_length(__body, 1) > 0) THEN
    RAISE 'PART body is not empty, %, %', __head, __body;
  END IF;

  IF (__head.gid IS NULL) THEN
    __head.gid := uuid_generate_v1();
  END IF;

  IF (__head.document_date IS NULL) THEN
    __head.document_date := now()::date;
  END IF;

  IF (_spec.version_num IS NULL) THEN
    _spec.version_num := 1::integer;
  END IF;

  IF (_spec.display_name IS NULL) THEN
    _spec.display_name := (_spec.part_code || ' v' || _spec.version_num || ' UNNAMED ' || _spec.component_type)::character varying;
  END IF;

  IF (_spec.quantity IS NULL) THEN
    _spec.quantity := 1::common.quantity;
  END IF;

  IF (_spec.uom_code IS NULL) THEN
    _spec.uom_code := 'pcs'::character varying;
  END IF;

  __head.component_spec := _spec;


  SELECT 
    information.id
  FROM 
    ebom.information
  WHERE 
    information.part_code = (__head.component_spec).part_code
  INTO
   _information_id;

  IF (_information_id IS NULL) THEN
    INSERT INTO
      ebom.information (
        id,
        gid,
        part_code,
        display_name
      )
    VALUES (
      DEFAULT,
      DEFAULT,
      (__head.component_spec).part_code,
      (__head.component_spec).display_name
    )
    RETURNING id INTO _information_id;
  END IF;

  INSERT INTO
    ebom.definition (
      id,
      gid,
      version_num,
      quantity,
      uom_code,
      component_type,
      published_date,
      information_id
    )
  VALUES (
    DEFAULT,
    __head.gid,
    (__head.component_spec).version_num,
    (__head.component_spec).quantity,
    (__head.component_spec).uom_code,
    (__head.component_spec).component_type,
    __head.document_date,
    _information_id
  )
  RETURNING id INTO _definition_id;


  IF array_length(__body, 1) > 0 THEN
    FOREACH _item IN
      ARRAY __body
    LOOP
      INSERT INTO
        ebom.blueprint (
          definition_id,
          part_code,
          version_num,
          display_name,
          quantity,
          uom_code,
          component_type
        )
      VALUES (
        _definition_id,
        _item.part_code,
        _item.version_num,
        _item.display_name,
        _item.quantity,
        _item.uom_code,
        _item.component_type
      );
    END LOOP;
  END IF;

  RETURN _definition_id;

END;
$$;


ALTER FUNCTION ebom.submit(__head common.ebom_head, __body common.component_specification[]) OWNER TO postgres;

--
-- TOC entry 4939 (class 0 OID 0)
-- Dependencies: 558
-- Name: FUNCTION submit(__head common.ebom_head, __body common.component_specification[]); Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON FUNCTION ebom.submit(__head common.ebom_head, __body common.component_specification[]) IS 'create engineering bill of materials';


--
-- TOC entry 559 (class 1255 OID 62484)
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
-- TOC entry 560 (class 1255 OID 62485)
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
-- TOC entry 561 (class 1255 OID 62486)
-- Name: submit(common.equipment_head); Type: FUNCTION; Schema: equipment; Owner: postgres
--

CREATE FUNCTION equipment.submit(__head common.equipment_head) RETURNS bigint
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


ALTER FUNCTION equipment.submit(__head common.equipment_head) OWNER TO postgres;

--
-- TOC entry 562 (class 1255 OID 62487)
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
-- TOC entry 563 (class 1255 OID 62488)
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
-- TOC entry 564 (class 1255 OID 62489)
-- Name: resubmit(common.facility_head); Type: FUNCTION; Schema: facility; Owner: postgres
--

CREATE FUNCTION facility.resubmit(__head common.facility_head) RETURNS void
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


ALTER FUNCTION facility.resubmit(__head common.facility_head) OWNER TO postgres;

--
-- TOC entry 565 (class 1255 OID 62490)
-- Name: submit(common.facility_head); Type: FUNCTION; Schema: facility; Owner: postgres
--

CREATE FUNCTION facility.submit(__head common.facility_head) RETURNS bigint
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


ALTER FUNCTION facility.submit(__head common.facility_head) OWNER TO postgres;

--
-- TOC entry 566 (class 1255 OID 62491)
-- Name: convert_quantity(character varying, integer, common.quantity, character varying, character varying); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION inventory.convert_quantity(_part_code character varying, _version_num integer, _quantity common.quantity, _uom_code_from character varying, _uom_code_to character varying) RETURNS double precision
    LANGUAGE plpgsql
    AS $$

DECLARE
  __uom_domain_to character varying;
  __uom_domain_from character varying;
  __unit_conversion_factors common.unit_conversion_type[];
  __m common.unit_conversion_type;
  __exponentiation integer DEFAULT 1;

BEGIN

  /*
  case
    when __array @> ARRAY[30] then
      raise notice 'msg %', 0;
    when __array @> ARRAY[20] then
      raise notice 'msg %', 1;
    when __array @> ARRAY[10] then
      raise notice 'msg %', 0;
  end case;

  raise NOTICE 'array dump %', __unit_conversion_factors;
  raise NOTICE 'array unnest %', unnest(array[__unit_conversion_factors[1]]);


  case when __unit_conversion_factors @> ARRAY[(_uom_code_from,_uom_code_to,null)::mdm.unit_conversion_type] THEN
  RAISE NOTICE 'ok %', __unit_conversion_factors;
  else RAISE NOTICE 'not ok %', __unit_conversion_factors;
  end case
  
  */

  -- визначити домен одиниці виміру, до якої приводимо
  __uom_domain_to := uom.get_domain(_uom_code := _uom_code_to);
  -- визначити домен одиниці виміру, з якої приводимо
  __uom_domain_from := uom.get_domain(_uom_code := _uom_code_from);

  --RAISE NOTICE 'conversion from % to %', __uom_domain_to, __uom_domain_from;

  -- якщо той самий домен, то використовуємо коефіцієнт Сі
  IF (__uom_domain_from = __uom_domain_to) THEN
    --RAISE NOTICE 'formula = % * %', _quantity, mdm.get_factor(_uom_code_from, _uom_code_to);
    RETURN _quantity * uom.get_factor(_uom_code_from, _uom_code_to);
  END IF;

    __unit_conversion_factors := inventory.get_uom_conversion_factors(
      _part_code := _part_code,
      _version_num := _version_num,
      _uom_domain_from := __uom_domain_from,
      _uom_domain_to := __uom_domain_to);

    -- логіка перетворення з основного домену в додатковий
    IF (array_ndims(__unit_conversion_factors) >= 1) THEN

      FOREACH __m IN
        ARRAY __unit_conversion_factors
      LOOP 
        IF (__m.uom_code_from = _uom_code_from AND __m.uom_code_to = _uom_code_to) THEN
          RAISE NOTICE 'full forward match % to % = %',_uom_code_from, _uom_code_to, __m.factor;
          RETURN _quantity * (__m.factor ^ __exponentiation);
        END IF;
      END LOOP;

      FOREACH __m IN
        ARRAY __unit_conversion_factors
      LOOP 
        IF ( __m.uom_code_from = _uom_code_from) THEN
          RAISE NOTICE 'partial forward _from_ match % to % = %',_uom_code_from, __m.uom_code_to, __m.factor;
          RETURN _quantity *  
            (__m.factor ^ __exponentiation) *
            uom.get_factor(_uom_code_to, __m.uom_code_to);
        END IF;
      END LOOP;

      FOREACH __m IN
        ARRAY __unit_conversion_factors
      LOOP 
        IF ( __m.uom_code_to = _uom_code_to) THEN
          RAISE NOTICE 'partial forward _to_ match % to % = %',__m.uom_code_from, _uom_code_to, __m.factor;
          RETURN _quantity * 
            (__m.factor ^ __exponentiation) * 
            uom.get_factor(_uom_code_from, __m.uom_code_from);
        END IF;
      END LOOP;

      RAISE NOTICE 'finally forward match % to % = %', 
        __unit_conversion_factors[1].uom_code_from, 
        __unit_conversion_factors[1].uom_code_to, 
        __unit_conversion_factors[1].factor;
      RETURN _quantity * 
        uom.get_factor(_uom_code_from, __unit_conversion_factors[1].uom_code_from) * 
        (__unit_conversion_factors[1].factor ^ __exponentiation) *
        uom.get_factor(__unit_conversion_factors[1].uom_code_to, _uom_code_to);

    -- логіка перетворення з додаткового в основний домен
    ELSE
      __unit_conversion_factors := inventory.get_uom_conversion_factors(
        _part_code := _part_code,
        _version_num := _version_num,
        _uom_domain_from := __uom_domain_to,
        _uom_domain_to := __uom_domain_from);

      IF (array_ndims(__unit_conversion_factors) >= 1) THEN
        __exponentiation := -1;

        FOREACH __m IN
          ARRAY __unit_conversion_factors
        LOOP 
          IF (__m.uom_code_from = _uom_code_to AND __m.uom_code_to = _uom_code_from) THEN
            RAISE NOTICE 'full reverse match % to % = %',_uom_code_from, _uom_code_to, __m.factor;
            RETURN _quantity * (__m.factor ^ __exponentiation);
          END IF;
        END LOOP;

        FOREACH __m IN
          ARRAY __unit_conversion_factors
        LOOP 
          IF ( __m.uom_code_from = _uom_code_to) THEN
            RAISE NOTICE 'partial reverse _from_ match % to % = %',_uom_code_from, __m.uom_code_to, __m.factor;
            RETURN _quantity *  
              (__m.factor ^ __exponentiation) *
              uom.get_factor(_uom_code_from ,  __m.uom_code_to);
          END IF;
        END LOOP;

        FOREACH __m IN
          ARRAY __unit_conversion_factors
        LOOP 
          IF ( __m.uom_code_to = _uom_code_from) THEN
            RAISE NOTICE 'partial reverse _to_ match % to % = %',__m.uom_code_to, _uom_code_from, __m.factor;
            RETURN _quantity * 
              (__m.factor ^ __exponentiation) * 
              uom.get_factor(_uom_code_to, __m.uom_code_from);
          END IF;
        END LOOP;

        RAISE NOTICE 'finally reverse match % to % = %',
          __unit_conversion_factors[1].uom_code_from,
          __unit_conversion_factors[1].uom_code_to,
          __unit_conversion_factors[1].factor;
        RETURN _quantity * 
          uom.get_factor(_uom_code_from ,  __unit_conversion_factors[1].uom_code_to) *
          (__unit_conversion_factors[1].factor ^ __exponentiation) *
          uom.get_factor(__unit_conversion_factors[1].uom_code_from, _uom_code_to);

      ELSE
        --RETURN 987654321;
        RAISE EXCEPTION 'no conversion factor found for measure domains % and % for % version %',
          __uom_domain_from,
          __uom_domain_to, 
          _part_code,
          _version_num;
          
      END IF;

    END IF;

END;

$$;


ALTER FUNCTION inventory.convert_quantity(_part_code character varying, _version_num integer, _quantity common.quantity, _uom_code_from character varying, _uom_code_to character varying) OWNER TO postgres;

--
-- TOC entry 567 (class 1255 OID 62492)
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
-- TOC entry 568 (class 1255 OID 62493)
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
-- TOC entry 533 (class 1255 OID 62494)
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
-- TOC entry 557 (class 1255 OID 62495)
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
-- TOC entry 569 (class 1255 OID 62496)
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
-- TOC entry 570 (class 1255 OID 62497)
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
-- TOC entry 571 (class 1255 OID 62498)
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
        uom_from.uom_domain = _uom_domain_from AND 
        uom_to.uom_domain = _uom_domain_to
      );

END
$$;


ALTER FUNCTION inventory.get_uom_conversion_factors(_part_code character varying, _version_num integer, _uom_domain_from character varying, _uom_domain_to character varying) OWNER TO postgres;

--
-- TOC entry 572 (class 1255 OID 62499)
-- Name: resubmit(bigint, common.unit_conversion_type[], common.inventory_kind[]); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION inventory.resubmit(__document_id bigint, __meas common.unit_conversion_type[], __kind common.inventory_kind[]) RETURNS void
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


ALTER FUNCTION inventory.resubmit(__document_id bigint, __meas common.unit_conversion_type[], __kind common.inventory_kind[]) OWNER TO postgres;

--
-- TOC entry 573 (class 1255 OID 62500)
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
            __document_id)
          ON CONFLICT DO NOTHING;

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
            __document_id)
          ON CONFLICT DO NOTHING;

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
            __document_id)
          ON CONFLICT DO NOTHING;
          
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
            __document_id)
          ON CONFLICT DO NOTHING;

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
            __document_id)
          ON CONFLICT DO NOTHING;

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
            __document_id)
          ON CONFLICT DO NOTHING;

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
            __document_id)
          ON CONFLICT DO NOTHING;

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
            __document_id)
          ON CONFLICT DO NOTHING;

        ELSE
          RAISE EXCEPTION 'unsupported inventory_kind %', _inventory_kind;
    END CASE;

  END LOOP;
END
$$;


ALTER FUNCTION inventory.set_kind_spec(__document_id bigint, __inventory_kinds common.inventory_kind[]) OWNER TO postgres;

--
-- TOC entry 574 (class 1255 OID 62501)
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
-- TOC entry 575 (class 1255 OID 62502)
-- Name: submit(common.inventory_head, common.unit_conversion_type[], common.inventory_kind[]); Type: FUNCTION; Schema: inventory; Owner: postgres
--

CREATE FUNCTION inventory.submit(__head common.inventory_head, __meas common.unit_conversion_type[], __kind common.inventory_kind[]) RETURNS bigint
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


ALTER FUNCTION inventory.submit(__head common.inventory_head, __meas common.unit_conversion_type[], __kind common.inventory_kind[]) OWNER TO postgres;

--
-- TOC entry 576 (class 1255 OID 62503)
-- Name: destroy(bigint); Type: FUNCTION; Schema: issue; Owner: postgres
--

CREATE FUNCTION issue.destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  DELETE FROM issue.head WHERE id = __document_id;
END;
$$;


ALTER FUNCTION issue.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 577 (class 1255 OID 62504)
-- Name: disallow_editing_of_committed_document_body(); Type: FUNCTION; Schema: issue; Owner: postgres
--

CREATE FUNCTION issue.disallow_editing_of_committed_document_body() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  _document_fsmt common.document_fsmt;
BEGIN
  IF (TG_OP = 'INSERT' OR TG_OP = 'UPDATE') THEN

    SELECT 
      head.curr_fsmt
    FROM 
      issue.head
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
      issue.head
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


ALTER FUNCTION issue.disallow_editing_of_committed_document_body() OWNER TO postgres;

--
-- TOC entry 578 (class 1255 OID 62505)
-- Name: do_commit(bigint, boolean); Type: FUNCTION; Schema: issue; Owner: postgres
--

CREATE FUNCTION issue.do_commit(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.issue_head;
  _body common.document_body[];
  --_bind bigint;
BEGIN

  _head := issue.get_head(__document_id);
  _body := issue.get_body(__document_id);
  --_bind := binding.get_despatch_binded_to_issue(__document_id);

  IF (_head.curr_fsmt = 'COMMITTED'::common.document_fsmt) THEN
    RAISE NOTICE 'ISSUE % already committed, exiting', _head.gid;
    RETURN;
  END IF;

  /*IF (_bind IS NOT NULL) THEN
    RAISE EXCEPTION 'ISSUE % has binded DESPATCH id %, exiting', _head.gid, _bind;
  END IF;*/

  UPDATE
    issue.head
  SET
    curr_fsmt = 'COMMITTED'::common.document_fsmt
  WHERE
    id = __document_id;

  PERFORM balance.loss_stock_on_hand_qty(
      __facility_code := _head.facility_code,
      __inventory := _body);

  PERFORM stockcard.assign_issue(
      __document_head := _head,
      __document_body := _body);

  IF (__apprise) THEN
  --
  END IF;

END;
$$;


ALTER FUNCTION issue.do_commit(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 579 (class 1255 OID 62506)
-- Name: generate_display_name(date, character varying); Type: FUNCTION; Schema: issue; Owner: postgres
--

CREATE FUNCTION issue.generate_display_name(__document_date date, __facility_code character varying) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
DECLARE
  _week_number integer;
  _sequence_number integer;
  _document_kind_code character varying;
BEGIN

  _week_number := schedule.get_julianized_week(__document_date);
  _sequence_number := issue.numerator_nextval(__facility_code, _week_number);
  _document_kind_code := common.get_document_abbrevation('ISSUE');

  RETURN concat(_document_kind_code,
    '-', __facility_code,
    '-', common.number_encode2(_week_number, true),
    common.number_encode4(_sequence_number, true));

END;
$$;


ALTER FUNCTION issue.generate_display_name(__document_date date, __facility_code character varying) OWNER TO postgres;

--
-- TOC entry 580 (class 1255 OID 62507)
-- Name: get_body(bigint); Type: FUNCTION; Schema: issue; Owner: postgres
--

CREATE FUNCTION issue.get_body(__document_id bigint) RETURNS common.document_body[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY(
      SELECT 
          (part_code, 
          quantity, 
          uom_code)::common.document_body
        FROM 
          issue.body
        WHERE 
          head_id = __document_id
    );
END
$$;


ALTER FUNCTION issue.get_body(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 581 (class 1255 OID 62508)
-- Name: get_gid_by_id(bigint); Type: FUNCTION; Schema: issue; Owner: postgres
--

CREATE FUNCTION issue.get_gid_by_id(__document_id bigint) RETURNS uuid
    LANGUAGE plpgsql
    AS $$
DECLARE
  --_id bigint;
BEGIN
  RETURN gid
    FROM 
      issue.head
    WHERE 
      id = __document_id;
END;
$$;


ALTER FUNCTION issue.get_gid_by_id(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 582 (class 1255 OID 62509)
-- Name: get_head(bigint); Type: FUNCTION; Schema: issue; Owner: postgres
--

CREATE FUNCTION issue.get_head(__document_id bigint) RETURNS common.issue_head
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN 
    (id, 
    gid, 
    display_name,
    document_date,
    ship_from,
    curr_fsmt,
    'ISSUE'::common.document_kind,
    ship_to,
    due_date)::common.issue_head
  FROM 
    issue.head
  WHERE 
    id = __document_id;
END;
$$;


ALTER FUNCTION issue.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 583 (class 1255 OID 62510)
-- Name: get_head_batch(bigint[]); Type: FUNCTION; Schema: issue; Owner: postgres
--

CREATE FUNCTION issue.get_head_batch(__document_ids bigint[]) RETURNS common.issue_head[]
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (id, 
        gid, 
        display_name,
        document_date,
        ship_from,
        curr_fsmt,
        'ISSUE'::common.document_kind,
        ship_to,
        due_date)::common.issue_head
      FROM 
        issue.head
      WHERE 
        id = ANY(__document_ids)
    );
END;
$$;


ALTER FUNCTION issue.get_head_batch(__document_ids bigint[]) OWNER TO postgres;

--
-- TOC entry 584 (class 1255 OID 62511)
-- Name: get_head_batch_proposed(character varying, date, date); Type: FUNCTION; Schema: issue; Owner: postgres
--

CREATE FUNCTION issue.get_head_batch_proposed(__facility_code character varying, __date_start date, __date_end date) RETURNS common.issue_head[]
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (id, 
        gid, 
        display_name,
        document_date,
        ship_from,
        curr_fsmt,
        'ISSUE'::common.document_kind,
        ship_to,
        due_date)::common.issue_head
      FROM 
        issue.head
      WHERE 
        ship_from = __facility_code AND
        curr_fsmt = 'PROPOSED' AND
        document_date BETWEEN __date_start AND __date_end
    );
END;
$$;


ALTER FUNCTION issue.get_head_batch_proposed(__facility_code character varying, __date_start date, __date_end date) OWNER TO postgres;

--
-- TOC entry 585 (class 1255 OID 62512)
-- Name: get_id_by_gid(uuid); Type: FUNCTION; Schema: issue; Owner: postgres
--

CREATE FUNCTION issue.get_id_by_gid(__document_gid uuid) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  --_id bigint;
BEGIN
  RETURN id
    FROM 
      issue.head
    WHERE 
      gid = __document_gid;
END;
$$;


ALTER FUNCTION issue.get_id_by_gid(__document_gid uuid) OWNER TO postgres;

--
-- TOC entry 586 (class 1255 OID 62513)
-- Name: numerator_nextval(character varying, integer); Type: FUNCTION; Schema: issue; Owner: postgres
--

CREATE FUNCTION issue.numerator_nextval(__facility_code character varying, __julianized_week integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
  _seqence_number integer;
BEGIN

  UPDATE
    issue.numerator
  SET
    current_value = current_value + 1
  WHERE
    julianized_week = __julianized_week AND
    facility_code = __facility_code
  RETURNING current_value INTO _seqence_number;

  IF (NOT FOUND) THEN
    INSERT INTO
      issue.numerator (
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


ALTER FUNCTION issue.numerator_nextval(__facility_code character varying, __julianized_week integer) OWNER TO postgres;

--
-- TOC entry 587 (class 1255 OID 62514)
-- Name: resubmit(bigint, common.document_body[]); Type: FUNCTION; Schema: issue; Owner: postgres
--

CREATE FUNCTION issue.resubmit(__document_id bigint, __body common.document_body[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.document_body;
BEGIN

  DELETE FROM
    issue.body
  WHERE 
    head_id = __document_id;

  FOREACH _item IN
    ARRAY __body
  LOOP
    INSERT INTO 
      issue.body (
        head_id,
        part_code,
        quantity,
        uom_code)
    VALUES (
      __document_id, 
      _item.part_code, 
      _item.quantity, 
      _item.uom_code);
  END LOOP;

END;
$$;


ALTER FUNCTION issue.resubmit(__document_id bigint, __body common.document_body[]) OWNER TO postgres;

--
-- TOC entry 588 (class 1255 OID 62515)
-- Name: revert(bigint, boolean); Type: FUNCTION; Schema: issue; Owner: postgres
--

CREATE FUNCTION issue.revert(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.issue_head;
  _body common.document_body[];
  --_bind bigint;
BEGIN

  _head := issue.get_head(__document_id);
  _body := issue.get_body(__document_id);
  --_bind := binding.get_despatch_binded_to_issue(__document_id);

  IF (_head.curr_fsmt <> 'COMMITTED'::common.document_fsmt) THEN
    RAISE NOTICE 'ISSUE % not committed. exiting', _head.gid;
    RETURN;
  END IF;

  /*IF (_bind IS NOT NULL) THEN
    RAISE EXCEPTION 'ISSUE % has binded DESPATCH id %, exiting', _head.gid, _bind;
  END IF;*/

  UPDATE
    issue.head
  SET
    curr_fsmt = 'REVERTED'::common.document_fsmt
  WHERE
    id = __document_id;

  PERFORM balance.gain_stock_on_hand_qty(
      __facility_code := _head.facility_code,
      __inventory := _body);

  PERFORM stockcard.deassign_issue(
      __document_id := __document_id);

  IF (__apprise) THEN
  --
  END IF;

END;
$$;


ALTER FUNCTION issue.revert(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 590 (class 1255 OID 62516)
-- Name: submit(common.issue_head, common.document_body[]); Type: FUNCTION; Schema: issue; Owner: postgres
--

CREATE FUNCTION issue.submit(__head common.issue_head, __body common.document_body[]) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.document_body;
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
    __head.display_name := issue.generate_display_name(
        __document_date := __head.document_date,
        __facility_code := __head.facility_code);
  END IF;

  INSERT INTO
    issue.head (
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
      issue.body (
        head_id, 
        part_code, 
        quantity, 
        uom_code)
    VALUES (
      _document_id, 
      _item.part_code, 
      _item.quantity, 
      _item.uom_code);
  END LOOP;

  RETURN _document_id;

END;
$$;


ALTER FUNCTION issue.submit(__head common.issue_head, __body common.document_body[]) OWNER TO postgres;

--
-- TOC entry 591 (class 1255 OID 62517)
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
-- TOC entry 592 (class 1255 OID 62518)
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
        material.display_name,
        material.quantity,
        material.uom_code,
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
-- TOC entry 593 (class 1255 OID 62519)
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
-- TOC entry 594 (class 1255 OID 62520)
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
    (information.part_code, information.version_num, information.display_name, 1, 'pcs', 'PRODUCIBLE')::common.material_specification
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
-- TOC entry 595 (class 1255 OID 62521)
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
-- TOC entry 596 (class 1255 OID 62522)
-- Name: resubmit(bigint, common.material_specification[]); Type: FUNCTION; Schema: mbom; Owner: postgres
--

CREATE FUNCTION mbom.resubmit(__document_id bigint, __body common.material_specification[]) RETURNS void
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


ALTER FUNCTION mbom.resubmit(__document_id bigint, __body common.material_specification[]) OWNER TO postgres;

--
-- TOC entry 597 (class 1255 OID 62523)
-- Name: submit(common.mbom_head, common.material_specification[]); Type: FUNCTION; Schema: mbom; Owner: postgres
--

CREATE FUNCTION mbom.submit(__head common.mbom_head, __body common.material_specification[]) RETURNS bigint
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


ALTER FUNCTION mbom.submit(__head common.mbom_head, __body common.material_specification[]) OWNER TO postgres;

--
-- TOC entry 598 (class 1255 OID 62524)
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
-- TOC entry 599 (class 1255 OID 62525)
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
-- TOC entry 600 (class 1255 OID 62526)
-- Name: submit(common.operation_head); Type: FUNCTION; Schema: operation; Owner: postgres
--

CREATE FUNCTION operation.submit(__head common.operation_head) RETURNS bigint
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


ALTER FUNCTION operation.submit(__head common.operation_head) OWNER TO postgres;

--
-- TOC entry 601 (class 1255 OID 62527)
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
-- TOC entry 602 (class 1255 OID 62528)
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
-- TOC entry 603 (class 1255 OID 62529)
-- Name: submit(common.personnel_head); Type: FUNCTION; Schema: personnel; Owner: postgres
--

CREATE FUNCTION personnel.submit(__head common.personnel_head) RETURNS bigint
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


ALTER FUNCTION personnel.submit(__head common.personnel_head) OWNER TO postgres;

--
-- TOC entry 604 (class 1255 OID 62530)
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
-- TOC entry 605 (class 1255 OID 62531)
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
-- TOC entry 606 (class 1255 OID 62532)
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
-- TOC entry 607 (class 1255 OID 62533)
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
-- TOC entry 608 (class 1255 OID 62534)
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
-- TOC entry 609 (class 1255 OID 62535)
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
-- TOC entry 610 (class 1255 OID 62536)
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
-- TOC entry 611 (class 1255 OID 62537)
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
-- TOC entry 612 (class 1255 OID 62538)
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
-- TOC entry 613 (class 1255 OID 62539)
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
-- TOC entry 614 (class 1255 OID 62540)
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
-- TOC entry 615 (class 1255 OID 62541)
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
-- TOC entry 618 (class 1255 OID 62542)
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
-- TOC entry 619 (class 1255 OID 62543)
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
-- TOC entry 620 (class 1255 OID 62544)
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
-- TOC entry 621 (class 1255 OID 62545)
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
-- TOC entry 622 (class 1255 OID 62546)
-- Name: destroy(bigint); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _referenced_definitions bigint;
  _information_id bigint;
BEGIN

  SELECT
    definition.information_id
  FROM 
    process.definition
  WHERE 
    definition.id = __document_id
  INTO
    _information_id;
  
  DELETE FROM process.definition WHERE id = __document_id;

  SELECT 
    count(definition.information_id)
  FROM 
    process.definition
  WHERE
    definition.information_id = _information_id
  INTO
    _referenced_definitions;

  IF (_referenced_definitions = 0) THEN
    DELETE FROM process.information WHERE id = _information_id;
  END IF;

END;
$$;


ALTER FUNCTION process.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 623 (class 1255 OID 62547)
-- Name: do_commit(bigint, boolean); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.do_commit(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.process_head;
  --_body common.process_segment[];
  --_seg  common.process_segment;
  --_deps common.dependency_specification[];
  --_dep  common.dependency_specification;
  --_inventory_defined integer;
BEGIN

  _head := process.get_head(__document_id);
  --_body := process.get_body(__document_id);
  --_deps := process.get_deps(__document_id);

  IF (_head.curr_fsmt = 'COMMITTED'::common.document_fsmt) THEN
    RAISE NOTICE 'process % already committed. exiting', _head.gid;
    RETURN;
  END IF;

  UPDATE
    process.definition
  SET
    curr_fsmt = 'COMMITTED'::common.document_fsmt
  WHERE
    id = __document_id;

  IF (__apprise IS true) THEN
  --
  END IF;


END;
$$;


ALTER FUNCTION process.do_commit(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 624 (class 1255 OID 62548)
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
-- TOC entry 625 (class 1255 OID 62549)
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
-- TOC entry 626 (class 1255 OID 62550)
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
        dependency.descendant)::common.dependency_specification
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
-- TOC entry 589 (class 1255 OID 62551)
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
-- TOC entry 616 (class 1255 OID 62552)
-- Name: get_facility_spec(bigint); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.get_facility_spec(__segment_id bigint) RETURNS common.facility_specification[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (facility.facility_code, 
        facility.version_num, 
        facility.facility_type)::common.facility_specification
      FROM 
        process.facility
      WHERE 
        facility.segment_id = __segment_id
    );
END
$$;


ALTER FUNCTION process.get_facility_spec(__segment_id bigint) OWNER TO postgres;

--
-- TOC entry 617 (class 1255 OID 62553)
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
-- TOC entry 627 (class 1255 OID 62554)
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
    definition.published_date,
    definition.curr_fsmt,
    'PROCESS'::common.document_kind,
      (information.part_code, 
      information.version_num, 
      information.display_name, 
      information.quantity, 
      information.uom_code, 
      information.material_type)::common.material_specification
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
-- TOC entry 628 (class 1255 OID 62555)
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
-- TOC entry 629 (class 1255 OID 62556)
-- Name: get_id_by_segment_gid(uuid); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.get_id_by_segment_gid(__segment_gid uuid) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN definition_id
    FROM
      process.segment
    WHERE
      gid = __segment_gid;
END;
$$;


ALTER FUNCTION process.get_id_by_segment_gid(__segment_gid uuid) OWNER TO postgres;

--
-- TOC entry 630 (class 1255 OID 62557)
-- Name: get_materials_consumed(bigint, common.quantity); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.get_materials_consumed(__document_id bigint, __quantity common.quantity DEFAULT 1.0) RETURNS common.document_body[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (
          material.part_code, 
          -- material.version_num, 
          material.quantity / material.rationing_qty * __quantity, 
          material.uom_code --, 
          -- material.material_type 
        )::common.document_body
      FROM 
        process.definition, 
        process.segment, 
        process.material
      WHERE 
        definition.id = segment.definition_id AND
        segment.id = material.segment_id AND
        definition.id = __document_id
    );
END
$$;


ALTER FUNCTION process.get_materials_consumed(__document_id bigint, __quantity common.quantity) OWNER TO postgres;

--
-- TOC entry 631 (class 1255 OID 62558)
-- Name: get_materials_consumed(uuid, common.quantity); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.get_materials_consumed(__document_gid uuid, __quantity common.quantity DEFAULT 1.0) RETURNS common.document_body[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (
          material.part_code, 
          -- material.version_num, 
          material.quantity / material.rationing_qty * __quantity, 
          material.uom_code --, 
          -- material.material_type 
        )::common.document_body
      FROM 
        process.definition, 
        process.segment, 
        process.material
      WHERE 
        definition.id = segment.definition_id AND
        segment.id = material.segment_id AND
        definition.gid = __document_gid
    );
END
$$;


ALTER FUNCTION process.get_materials_consumed(__document_gid uuid, __quantity common.quantity) OWNER TO postgres;

--
-- TOC entry 632 (class 1255 OID 62559)
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
-- TOC entry 633 (class 1255 OID 62560)
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
-- TOC entry 634 (class 1255 OID 62561)
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
-- TOC entry 635 (class 1255 OID 62562)
-- Name: is_root(uuid); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.is_root(__segment_gid uuid) RETURNS boolean
    LANGUAGE plpgsql
    AS $$
DECLARE
  _has_ancestors integer;
BEGIN

  SELECT 
    count(dependency.ancestor)
  FROM 
    process.dependency
  WHERE 
    dependency.descendant = __segment_gid
  INTO 
    _has_ancestors;

  IF (_has_ancestors > 0) THEN
    RETURN false;
  ELSE
    RETURN true;
  END IF;

END

$$;


ALTER FUNCTION process.is_root(__segment_gid uuid) OWNER TO postgres;

--
-- TOC entry 636 (class 1255 OID 62563)
-- Name: resubmit(bigint, common.process_segment[], common.dependency_specification[]); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.resubmit(__document_id bigint, __body common.process_segment[], __deps common.dependency_specification[]) RETURNS void
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
        descendant)
    VALUES (
      _dep.ancestor,
      _dep.descendant);
  END LOOP;

END;
$$;


ALTER FUNCTION process.resubmit(__document_id bigint, __body common.process_segment[], __deps common.dependency_specification[]) OWNER TO postgres;

--
-- TOC entry 637 (class 1255 OID 62564)
-- Name: revert(bigint, boolean); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.revert(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.process_head;
  --_body common.process_segment[];
  --_seg  common.process_segment;
  --_deps common.dependency_specification[];
  --_dep  common.dependency_specification;
BEGIN

  _head := process.get_head(__document_id);
  --_body := process.get_body(__document_id);
  --_deps := process.get_deps(__document_id);

  IF (_head.curr_fsmt <> 'COMMITTED'::common.document_fsmt) THEN
    RAISE NOTICE 'PROCESS % not committed. exiting', _head.gid;
    RETURN;
  END IF;

  UPDATE
    process.definition
  SET
    curr_fsmt = 'REVERTED'::common.document_fsmt
  WHERE
    id = __document_id;

  IF (__apprise IS true) THEN
  -- delete unreferenced inventory items
  END IF;

END;
$$;


ALTER FUNCTION process.revert(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 4940 (class 0 OID 0)
-- Dependencies: 637
-- Name: FUNCTION revert(__document_id bigint, __apprise boolean); Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON FUNCTION process.revert(__document_id bigint, __apprise boolean) IS 'revert process definition';


--
-- TOC entry 638 (class 1255 OID 62565)
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
-- TOC entry 639 (class 1255 OID 62566)
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
-- TOC entry 640 (class 1255 OID 62567)
-- Name: set_facility_spec(bigint, common.facility_specification[]); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.set_facility_spec(__segment_id bigint, __facility common.facility_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.facility_specification;
BEGIN

  FOREACH _item IN
    ARRAY __facility
  LOOP
    INSERT INTO
      process.facility (
        segment_id,
        facility_code,
        version_num,
        facility_type)
    VALUES (
      __segment_id,
      _item.facility_code,
      _item.version_num,
      _item.facility_type);
  END LOOP;

END;
$$;


ALTER FUNCTION process.set_facility_spec(__segment_id bigint, __facility common.facility_specification[]) OWNER TO postgres;

--
-- TOC entry 641 (class 1255 OID 62568)
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
-- TOC entry 642 (class 1255 OID 62569)
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
-- TOC entry 643 (class 1255 OID 62570)
-- Name: submit(common.process_head, common.process_segment[], common.dependency_specification[]); Type: FUNCTION; Schema: process; Owner: postgres
--

CREATE FUNCTION process.submit(__head common.process_head, __body common.process_segment[], __deps common.dependency_specification[]) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _spec common.material_specification;
  _information_id bigint;
  _definition_id bigint;
  _segment_id bigint;
  _seg common.process_segment;
  _dep common.dependency_specification;
BEGIN

  _spec := __head.producible_spec;

  IF (__head.gid IS NULL) THEN
    __head.gid := uuid_generate_v1();
  END IF;

  IF (__head.document_date IS NULL) THEN
    __head.document_date := now()::date;
  END IF;

  IF (_spec.version_num IS NULL) THEN
    _spec.version_num := 1::integer;
  END IF;

  IF (_spec.display_name IS NULL) THEN
    _spec.display_name := (_spec.part_code || ' v' || _spec.version_num || ' UNNAMED ' || _spec.material_type)::character varying;
  END IF;

  IF (_spec.quantity IS NULL) THEN
    _spec.quantity := 1::common.quantity;
  END IF;

  IF (_spec.uom_code IS NULL) THEN
    _spec.uom_code := 'pcs'::character varying;
  END IF;

  __head.producible_spec := _spec;

  SELECT 
    information.id
  FROM 
    process.information
  WHERE 
    information.part_code =  (__head.producible_spec).part_code AND 
    information.version_num = (__head.producible_spec).version_num
   INTO
    _information_id;

  IF (_information_id IS NULL) THEN
    INSERT INTO
      process.information (
        id,
        gid,
        display_name,
        part_code,
        version_num,
        quantity,
        uom_code,
        material_type
      )
    VALUES (
      DEFAULT,
      DEFAULT,
      (__head.producible_spec).display_name,
      (__head.producible_spec).part_code,
      (__head.producible_spec).version_num,
      (__head.producible_spec).quantity,
      (__head.producible_spec).uom_code,
      (__head.producible_spec).material_type
    )
    RETURNING id INTO _information_id;
  END IF;

  INSERT INTO
    process.definition (
      id,
      gid,
      published_date,
      information_id)
  VALUES (
    DEFAULT,
    DEFAULT,
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
        descendant)
    VALUES (
      _dep.ancestor,
      _dep.descendant);
  END LOOP;

  RETURN _definition_id;

END;
$$;


ALTER FUNCTION process.submit(__head common.process_head, __body common.process_segment[], __deps common.dependency_specification[]) OWNER TO postgres;

--
-- TOC entry 644 (class 1255 OID 62571)
-- Name: destroy(bigint); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _referenced_definitions bigint;
  _information_id bigint;
BEGIN

  SELECT
    definition.information_id
  FROM 
    product.definition
  WHERE 
    definition.id = __document_id
  INTO
    _information_id;

  DELETE FROM product.definition WHERE id = __document_id;

  SELECT 
    count(definition.information_id)
  FROM 
    product.definition
  WHERE
    definition.information_id = _information_id
  INTO
    _referenced_definitions;

  IF (_referenced_definitions = 0) THEN
    DELETE FROM product.information WHERE id = _information_id;
  END IF;

END;
$$;


ALTER FUNCTION product.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 646 (class 1255 OID 62572)
-- Name: do_commit(bigint, boolean); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.do_commit(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.product_head;
  _body common.product_segment[];
  _seg  common.product_segment;
  _deps common.dependency_specification[];
  _dep  common.dependency_specification;
  _inventory_defined bigint;
  _ancestor uuid;
BEGIN

  _head := product.get_head(__document_id);
  _body := product.get_body(__document_id);
  _deps := product.get_deps(__document_id);

  IF (_head.curr_fsmt = 'COMMITTED'::common.document_fsmt) THEN
    RAISE NOTICE 'product % already committed. exiting', _head.gid;
    RETURN;
  END IF;


  /* create inventory from head record */
  SELECT 
    definition.id
  FROM 
    inventory.information, 
    inventory.definition
  WHERE 
    information.id = definition.information_id AND
    information.part_code = (_head.producible_spec).part_code AND 
    definition.version_num = (_head.producible_spec).version_num
  INTO
    _inventory_defined;


  IF (_inventory_defined IS NULL) THEN
    PERFORM inventory.submit(
      (
        NULL,
        NULL,
        (_head.producible_spec).display_name,
        (_head.producible_spec).part_code,
        (_head.producible_spec).version_num,
        now()::date,
        (_head.producible_spec).uom_code,
        'PROPOSED',
        'INVENTORY'
      )::common.inventory_head,
      ARRAY[((_head.producible_spec).uom_code, (_head.producible_spec).uom_code, 1)]::common.unit_conversion_type[],
      ARRAY[((_head.producible_spec).material_type::common.inventory_kind), ('STORABLE'), ('PRODUCIBLE')]::common.inventory_kind[]
    );
  ELSE
    PERFORM inventory.set_kind_spec(
      _inventory_defined,
      ARRAY[((_head.producible_spec).material_type::common.inventory_kind), ('STORABLE'), ('PRODUCIBLE')]::common.inventory_kind[]
    );
  END IF;


  /* create inventory from body records */
  IF (__apprise IS true) THEN

    FOREACH _seg IN
        ARRAY _body
      LOOP

      SELECT 
        tree.ancestor
      FROM 
        product.tree
      WHERE 
        tree.descendant = _seg.gid
      INTO
        _ancestor;

      SELECT 
        definition.id
      FROM 
        inventory.information, 
        inventory.definition
      WHERE 
        information.id = definition.information_id AND
        information.part_code = (_seg.producible_spec).part_code AND 
        definition.version_num = (_seg.producible_spec).version_num
      INTO
        _inventory_defined;

      IF (_inventory_defined IS NULL) THEN
        IF (_ancestor IS NULL) THEN
          PERFORM inventory.submit(
            (
              NULL,
              NULL,
              (_seg.producible_spec).display_name,
              (_seg.producible_spec).part_code,
              (_seg.producible_spec).version_num,
              now()::date,
              (_seg.producible_spec).uom_code,
              'PROPOSED',
              'INVENTORY'
            )::common.inventory_head,
            ARRAY[((_seg.producible_spec).uom_code, (_seg.producible_spec).uom_code, 1)]::common.unit_conversion_type[],
            ARRAY[((_seg.producible_spec).material_type::common.inventory_kind), ('STORABLE'), ('PRODUCIBLE')]::common.inventory_kind[]
          );
        ELSE
          PERFORM inventory.submit(
            (
              NULL,
              NULL,
              (_seg.producible_spec).display_name,
              (_seg.producible_spec).part_code,
              (_seg.producible_spec).version_num,
              now()::date,
              (_seg.producible_spec).uom_code,
              'PROPOSED',
              'INVENTORY'
            )::common.inventory_head,
            ARRAY[((_seg.producible_spec).uom_code, (_seg.producible_spec).uom_code, 1)]::common.unit_conversion_type[],
            ARRAY[((_seg.producible_spec).material_type::common.inventory_kind), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
          );
        END IF;
      ELSE
        IF (_ancestor IS NULL) THEN
          PERFORM inventory.set_kind_spec(
            _inventory_defined,
            ARRAY[((_seg.producible_spec).material_type::common.inventory_kind), ('STORABLE'), ('PRODUCIBLE')]::common.inventory_kind[]
          );
        ELSE
          PERFORM inventory.set_kind_spec(
            _inventory_defined,
            ARRAY[((_seg.producible_spec).material_type::common.inventory_kind), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
          );
        END IF;
      END IF;

    END LOOP;

  END IF;

    /* set up valid product structure body records */
  FOREACH _seg IN
      ARRAY _body
    LOOP

    INSERT INTO
      product.segment (
        id,
        gid,
        definition_id,
        part_code,
        version_num,
        display_name,
        quantity,
        uom_code,
        material_type)
    VALUES (
      DEFAULT,
      _seg.gid,
      __document_id,
      (_seg.producible_spec).part_code,
      (_seg.producible_spec).version_num,
      (_seg.producible_spec).display_name,
      (_seg.producible_spec).quantity,
      (_seg.producible_spec).uom_code,
      (_seg.producible_spec).material_type);
    
  END LOOP;

  FOREACH _dep IN
      ARRAY _deps
    LOOP

    INSERT INTO
      product.dependency (
        ancestor,
        descendant)
    VALUES (
      _dep.ancestor,
      _dep.descendant);
    
  END LOOP;

  DELETE from product.blueprint WHERE definition_id = __document_id;

  UPDATE
    product.definition
  SET
    curr_fsmt = 'COMMITTED'::common.document_fsmt
  WHERE
    id = __document_id;


END;
$$;


ALTER FUNCTION product.do_commit(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 647 (class 1255 OID 62573)
-- Name: get_body(bigint); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.get_body(__document_id bigint) RETURNS common.product_segment[]
    LANGUAGE plpgsql
    AS $$
DECLARE
  _curr_fsmt common.document_fsmt;
BEGIN

  SELECT 
    definition.curr_fsmt
  FROM 
    product.definition
  WHERE 
    definition.id = __document_id
  INTO
    _curr_fsmt;

  IF (_curr_fsmt = 'PROPOSED'::common.document_fsmt) THEN
    RETURN
      ARRAY(
        SELECT
          (
            blueprint.gid,
            (
              blueprint.part_code, 
              blueprint.version_num, 
              blueprint.display_name, 
              blueprint.quantity, 
              blueprint.uom_code, 
              blueprint.material_type
            )::common.material_specification
          )::common.product_segment
        FROM
          product.blueprint
        WHERE
          blueprint.definition_id = __document_id
      );
  ELSE
    RETURN
      ARRAY(
        SELECT
          (
            segment.gid,
            (
              segment.part_code, 
              segment.version_num, 
              segment.display_name, 
              segment.quantity, 
              segment.uom_code, 
              segment.material_type
            )::common.material_specification
          )::common.product_segment
        FROM
          product.segment
        WHERE
          segment.definition_id = __document_id
      );
  END IF;

END
$$;


ALTER FUNCTION product.get_body(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 648 (class 1255 OID 62574)
-- Name: get_deps(bigint); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.get_deps(__document_id bigint) RETURNS common.dependency_specification[]
    LANGUAGE plpgsql
    AS $$
DECLARE
  _curr_fsmt common.document_fsmt;
BEGIN

  SELECT 
    definition.curr_fsmt
  FROM 
    product.definition
  WHERE 
    definition.id = __document_id
  INTO
    _curr_fsmt;

  IF (_curr_fsmt = 'PROPOSED'::common.document_fsmt) THEN
    RETURN
      ARRAY(
        SELECT 
          (tree.ancestor, 
          tree.descendant)::common.dependency_specification
        FROM 
          product.tree, 
          product.blueprint
        WHERE 
          blueprint.gid = tree.ancestor AND
          blueprint.definition_id = __document_id
      );
  ELSE
    RETURN
      ARRAY(
        SELECT 
          (dependency.ancestor, 
          dependency.descendant)::common.dependency_specification
        FROM 
          product.dependency, 
          product.segment
        WHERE 
          segment.gid = dependency.ancestor AND
          segment.definition_id = __document_id
      );
  END IF;
END
$$;


ALTER FUNCTION product.get_deps(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 649 (class 1255 OID 62575)
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
-- TOC entry 650 (class 1255 OID 62576)
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
    definition.published_date,
    definition.curr_fsmt,
    'PRODUCT'::common.document_kind,
      (information.part_code, 
      information.version_num, 
      information.display_name,
      information.quantity, 
      information.uom_code, 
      information.material_type)::common.material_specification
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
-- TOC entry 651 (class 1255 OID 62577)
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
-- TOC entry 652 (class 1255 OID 62578)
-- Name: resubmit(bigint, common.product_segment[], common.dependency_specification[]); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.resubmit(__document_id bigint, __body common.product_segment[], __deps common.dependency_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  --_head common.product_head;
  _seg common.product_segment;
  _dep common.dependency_specification;
BEGIN

  --_head := product.get_head(__document_id);

  DELETE FROM
    product.blueprint
  WHERE
    definition_id = __document_id;

  FOREACH _seg IN
    ARRAY __body
  LOOP
    INSERT INTO
      product.blueprint (
        id,
        gid,
        definition_id,
        part_code,
        version_num,
        display_name,
        quantity,
        uom_code,
        material_type)
    VALUES (
      DEFAULT,
      _seg.gid,
      __document_id,
      (_seg.producible_spec).part_code,
      (_seg.producible_spec).version_num,
      (_seg.producible_spec).display_name,
      (_seg.producible_spec).quantity,
      (_seg.producible_spec).uom_code,
      (_seg.producible_spec).material_type);
  END LOOP;

  FOREACH _dep IN
    ARRAY __deps
  LOOP
    INSERT INTO
      product.tree (
        ancestor,
        descendant)
    VALUES (
      _dep.ancestor,
      _dep.descendant);
  END LOOP;

END;
$$;


ALTER FUNCTION product.resubmit(__document_id bigint, __body common.product_segment[], __deps common.dependency_specification[]) OWNER TO postgres;

--
-- TOC entry 655 (class 1255 OID 62579)
-- Name: revert(bigint, boolean); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.revert(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.product_head;
  _body common.product_segment[];
  _seg  common.product_segment;
  _deps common.dependency_specification[];
  _dep  common.dependency_specification;
BEGIN

  _head := product.get_head(__document_id);
  _body := product.get_body(__document_id);
  _deps := product.get_deps(__document_id);

  IF (_head.curr_fsmt <> 'COMMITTED'::common.document_fsmt) THEN
    RAISE NOTICE 'PRODUCT % not committed. exiting', _head.gid;
    RETURN;
  END IF;

  UPDATE
    product.definition
  SET
    curr_fsmt = 'REVERTED'::common.document_fsmt
  WHERE
    id = __document_id;

  IF array_length(_body, 1) > 0 THEN
    FOREACH _seg IN
      ARRAY _body
    LOOP
      INSERT INTO
        product.blueprint (
          id,
          gid,
          definition_id,
          part_code,
          version_num,
          display_name,
          quantity,
          uom_code,
          material_type)
      VALUES (
        DEFAULT,
        _seg.gid,
        __document_id,
        (_seg.producible_spec).part_code,
        (_seg.producible_spec).version_num,
        (_seg.producible_spec).display_name,
        (_seg.producible_spec).quantity,
        (_seg.producible_spec).uom_code,
        (_seg.producible_spec).material_type);
    END LOOP;
  END IF;

  FOREACH _dep IN
    ARRAY _deps
  LOOP
    INSERT INTO
      product.tree (
        ancestor,
        descendant)
    VALUES (
      _dep.ancestor,
      _dep.descendant);
  END LOOP;

  DELETE FROM product.segment WHERE definition_id = __document_id;

  IF (__apprise IS true) THEN
   -- delete unreferenced inventory items
  END IF;

END;
$$;


ALTER FUNCTION product.revert(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 4941 (class 0 OID 0)
-- Dependencies: 655
-- Name: FUNCTION revert(__document_id bigint, __apprise boolean); Type: COMMENT; Schema: product; Owner: postgres
--

COMMENT ON FUNCTION product.revert(__document_id bigint, __apprise boolean) IS 'revert product definition';


--
-- TOC entry 656 (class 1255 OID 62580)
-- Name: submit(common.product_head, common.product_segment[], common.dependency_specification[]); Type: FUNCTION; Schema: product; Owner: postgres
--

CREATE FUNCTION product.submit(__head common.product_head, __body common.product_segment[], __deps common.dependency_specification[]) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _spec common.material_specification;
  _information_id bigint;
  _definition_id bigint;
  _seg common.product_segment;
  _dep common.dependency_specification;
BEGIN

  _spec := __head.producible_spec;

  IF (__head.gid IS NULL) THEN
    __head.gid := uuid_generate_v1();
  END IF;

  IF (__head.document_date IS NULL) THEN
    __head.document_date := now()::date;
  END IF;

  IF (_spec.version_num IS NULL) THEN
    _spec.version_num := 1::integer;
  END IF;

  IF (_spec.display_name IS NULL) THEN
    _spec.display_name := (_spec.part_code || ' v' || _spec.version_num || ' UNNAMED ' || _spec.material_type)::character varying;
  END IF;

  IF (_spec.quantity IS NULL) THEN
    _spec.quantity := 1::common.quantity;
  END IF;

  IF (_spec.uom_code IS NULL) THEN
    _spec.uom_code := 'pcs'::character varying;
  END IF;

  __head.producible_spec := _spec;

  SELECT 
    information.id
  FROM 
    product.information
  WHERE 
    information.part_code =  (__head.producible_spec).part_code AND 
    information.version_num = (__head.producible_spec).version_num
   INTO
    _information_id;

  IF (_information_id IS NULL) THEN
    INSERT INTO
      product.information (
        id,
        gid,
        display_name,
        part_code,
        version_num,
        quantity,
        uom_code,
        material_type
      )
    VALUES (
      DEFAULT,
      DEFAULT,
      (__head.producible_spec).display_name,
      (__head.producible_spec).part_code,
      (__head.producible_spec).version_num,
      (__head.producible_spec).quantity,
      (__head.producible_spec).uom_code,
      (__head.producible_spec).material_type
    )
    RETURNING id INTO _information_id;
  END IF;

  INSERT INTO
    product.definition (
      id,
      gid,
      published_date,
      information_id)
  VALUES (
    DEFAULT,
    DEFAULT,
    __head.document_date,
    _information_id)
  RETURNING id INTO _definition_id;

  FOREACH _seg IN
    ARRAY __body
  LOOP
    INSERT INTO
      product.blueprint (
        id,
        gid,
        definition_id,
        part_code,
        version_num,
        display_name,
        quantity,
        uom_code,
        material_type)
    VALUES (
      DEFAULT,
      _seg.gid,
      _definition_id,
      (_seg.producible_spec).part_code,
      (_seg.producible_spec).version_num,
      (_seg.producible_spec).display_name,
      (_seg.producible_spec).quantity,
      (_seg.producible_spec).uom_code,
      (_seg.producible_spec).material_type);
  END LOOP;

  FOREACH _dep IN
    ARRAY __deps
  LOOP
    INSERT INTO
      product.tree (
        ancestor,
        descendant)
    VALUES (
      _dep.ancestor,
      _dep.descendant);
  END LOOP;

  RETURN _definition_id;

END;
$$;


ALTER FUNCTION product.submit(__head common.product_head, __body common.product_segment[], __deps common.dependency_specification[]) OWNER TO postgres;

--
-- TOC entry 657 (class 1255 OID 62581)
-- Name: destroy(bigint); Type: FUNCTION; Schema: receipt; Owner: postgres
--

CREATE FUNCTION receipt.destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  DELETE FROM receipt.head WHERE id = __document_id;
END;
$$;


ALTER FUNCTION receipt.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 658 (class 1255 OID 62582)
-- Name: disallow_editing_of_committed_document_body(); Type: FUNCTION; Schema: receipt; Owner: postgres
--

CREATE FUNCTION receipt.disallow_editing_of_committed_document_body() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  _document_fsmt common.document_fsmt;
BEGIN
  IF (TG_OP = 'INSERT' OR TG_OP = 'UPDATE') THEN

    SELECT 
      head.curr_fsmt
    FROM 
      receipt.head
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
      receipt.head
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


ALTER FUNCTION receipt.disallow_editing_of_committed_document_body() OWNER TO postgres;

--
-- TOC entry 659 (class 1255 OID 62583)
-- Name: do_commit(bigint, boolean); Type: FUNCTION; Schema: receipt; Owner: postgres
--

CREATE FUNCTION receipt.do_commit(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.receipt_head;
  _body common.document_body[];
  --_bind bigint;
BEGIN

  _head := receipt.get_head(__document_id);
  _body := receipt.get_body(__document_id);
  --_bind := binding.get_delivery_binded_to_receipt(__document_id);

  IF (_head.curr_fsmt = 'COMMITTED'::common.document_fsmt) THEN
    RAISE NOTICE 'RECEIPT % already committed. exiting', _head.gid;
    RETURN;
  END IF;

  /*IF (_bind IS NOT NULL) THEN
    RAISE EXCEPTION 'RECEIPT % has binded DELIVERY id %, exiting', _head.gid, _bind;
  END IF;*/

  UPDATE
    receipt.head
  SET
    curr_fsmt = 'COMMITTED'::common.document_fsmt
  WHERE
    id = __document_id;

  PERFORM balance.gain_stock_on_hand_qty(
      __facility_code := _head.facility_code,
      __inventory := _body);

  PERFORM stockcard.assign_receipt(
      __document_head := _head,
      __document_body := _body);

  IF (__apprise) THEN
  --
  END IF;

END;
$$;


ALTER FUNCTION receipt.do_commit(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 660 (class 1255 OID 62584)
-- Name: generate_display_name(date, character varying); Type: FUNCTION; Schema: receipt; Owner: postgres
--

CREATE FUNCTION receipt.generate_display_name(__document_date date, __facility_code character varying) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
DECLARE
  _week_number integer;
  _sequence_number integer;
  _document_kind_code character varying;
BEGIN

  _week_number := schedule.get_julianized_week(__document_date);
  _sequence_number := receipt.numerator_nextval(__facility_code, _week_number);
  _document_kind_code := common.get_document_abbrevation('RECEIPT');

  RETURN concat(_document_kind_code,
    '-', __facility_code,
    '-', common.number_encode2(_week_number, true),
    common.number_encode4(_sequence_number, true));

END;
$$;


ALTER FUNCTION receipt.generate_display_name(__document_date date, __facility_code character varying) OWNER TO postgres;

--
-- TOC entry 661 (class 1255 OID 62585)
-- Name: get_body(bigint); Type: FUNCTION; Schema: receipt; Owner: postgres
--

CREATE FUNCTION receipt.get_body(__document_id bigint) RETURNS common.document_body[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY(
      SELECT 
          (part_code, 
          quantity, 
          uom_code)::common.document_body
        FROM 
          receipt.body
        WHERE 
          head_id = __document_id
    );
END
$$;


ALTER FUNCTION receipt.get_body(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 662 (class 1255 OID 62586)
-- Name: get_gid_by_id(bigint); Type: FUNCTION; Schema: receipt; Owner: postgres
--

CREATE FUNCTION receipt.get_gid_by_id(__document_id bigint) RETURNS uuid
    LANGUAGE plpgsql
    AS $$
DECLARE
  --_id bigint;
BEGIN
  RETURN gid
    FROM 
      receipt.head
    WHERE 
      id = __document_id;
END;
$$;


ALTER FUNCTION receipt.get_gid_by_id(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 663 (class 1255 OID 62587)
-- Name: get_head(bigint); Type: FUNCTION; Schema: receipt; Owner: postgres
--

CREATE FUNCTION receipt.get_head(__document_id bigint) RETURNS common.receipt_head
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN 
    (id, 
    gid, 
    display_name,
    document_date,
    ship_to,
    curr_fsmt,
    'RECEIPT'::common.document_kind,
    ship_from)::common.receipt_head
  FROM 
    receipt.head
  WHERE 
    id = __document_id;
END;
$$;


ALTER FUNCTION receipt.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 645 (class 1255 OID 62588)
-- Name: get_head_batch(bigint[]); Type: FUNCTION; Schema: receipt; Owner: postgres
--

CREATE FUNCTION receipt.get_head_batch(__document_ids bigint[]) RETURNS common.receipt_head[]
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (id, 
        gid, 
        display_name,
        document_date,
        ship_to,
        curr_fsmt,
        'RECEIPT'::common.document_kind,
        ship_from)::common.receipt_head
      FROM 
        receipt.head
      WHERE 
        id = ANY(__document_ids)
    );
END;
$$;


ALTER FUNCTION receipt.get_head_batch(__document_ids bigint[]) OWNER TO postgres;

--
-- TOC entry 653 (class 1255 OID 62589)
-- Name: get_head_batch_proposed(character varying, date, date); Type: FUNCTION; Schema: receipt; Owner: postgres
--

CREATE FUNCTION receipt.get_head_batch_proposed(__facility_code character varying, __date_start date, __date_end date) RETURNS common.receipt_head[]
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (id, 
        gid, 
        display_name,
        document_date,
        ship_to,
        curr_fsmt,
        'RECEIPT'::common.document_kind,
        ship_from)::common.receipt_head
      FROM 
        receipt.head
      WHERE 
        ship_from = __facility_code AND
        curr_fsmt = 'PROPOSED' AND
        document_date BETWEEN __date_start AND __date_end
    );
END;
$$;


ALTER FUNCTION receipt.get_head_batch_proposed(__facility_code character varying, __date_start date, __date_end date) OWNER TO postgres;

--
-- TOC entry 654 (class 1255 OID 62590)
-- Name: get_id_by_gid(uuid); Type: FUNCTION; Schema: receipt; Owner: postgres
--

CREATE FUNCTION receipt.get_id_by_gid(__document_gid uuid) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  --_id bigint;
BEGIN
  RETURN id
    FROM 
      receipt.head
    WHERE 
      gid = __document_gid;
END;
$$;


ALTER FUNCTION receipt.get_id_by_gid(__document_gid uuid) OWNER TO postgres;

--
-- TOC entry 665 (class 1255 OID 62591)
-- Name: numerator_nextval(character varying, integer); Type: FUNCTION; Schema: receipt; Owner: postgres
--

CREATE FUNCTION receipt.numerator_nextval(__facility_code character varying, __julianized_week integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
  _seqence_number integer;
BEGIN

  UPDATE
    receipt.numerator
  SET
    current_value = current_value + 1
  WHERE
    julianized_week = __julianized_week AND
    facility_code = __facility_code
  RETURNING current_value INTO _seqence_number;

  IF (NOT FOUND) THEN
    INSERT INTO
      receipt.numerator (
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


ALTER FUNCTION receipt.numerator_nextval(__facility_code character varying, __julianized_week integer) OWNER TO postgres;

--
-- TOC entry 666 (class 1255 OID 62592)
-- Name: resubmit(bigint, common.document_body[]); Type: FUNCTION; Schema: receipt; Owner: postgres
--

CREATE FUNCTION receipt.resubmit(__document_id bigint, __body common.document_body[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.document_body;
BEGIN

  DELETE FROM
    receipt.body
  WHERE 
    head_id = __document_id;

  FOREACH _item IN
    ARRAY __body
  LOOP
    INSERT INTO 
      receipt.body (
        head_id,
        part_code,
        quantity,
        uom_code)
    VALUES (
      __document_id, 
      _item.part_code, 
      _item.quantity, 
      _item.uom_code);
  END LOOP;

END;
$$;


ALTER FUNCTION receipt.resubmit(__document_id bigint, __body common.document_body[]) OWNER TO postgres;

--
-- TOC entry 667 (class 1255 OID 62593)
-- Name: revert(bigint, boolean); Type: FUNCTION; Schema: receipt; Owner: postgres
--

CREATE FUNCTION receipt.revert(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.receipt_head;
  _body common.document_body[];
  --_bind bigint;
BEGIN

  _head := receipt.get_head(__document_id);
  _body := receipt.get_body(__document_id);
  --_bind := binding.get_delivery_binded_to_receipt(__document_id);

  IF (_head.curr_fsmt <> 'COMMITTED'::common.document_fsmt) THEN
    RAISE NOTICE 'RECEIPT % not committed. exiting', _head.gid;
    RETURN;
  END IF;

  /*IF (_bind IS NOT NULL) THEN
    RAISE EXCEPTION 'RECEIPT % has binded DELIVERY id %, exiting', _head.gid, _bind;
  END IF;*/

  UPDATE
    receipt.head
  SET
    curr_fsmt = 'REVERTED'::common.document_fsmt
  WHERE
    id = __document_id;

  PERFORM balance.loss_stock_on_hand_qty(
      __facility_code := _head.facility_code,
      __inventory := _body);

  PERFORM stockcard.deassign_receipt(
      __document_id := __document_id);

  IF (__apprise) THEN
  --
  END IF;

END;
$$;


ALTER FUNCTION receipt.revert(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 668 (class 1255 OID 62594)
-- Name: submit(common.receipt_head, common.document_body[]); Type: FUNCTION; Schema: receipt; Owner: postgres
--

CREATE FUNCTION receipt.submit(__head common.receipt_head, __body common.document_body[]) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.document_body;
  _document_id bigint;
BEGIN

  IF (__head.facility_code IS NULL) THEN
    RAISE EXCEPTION 'field facility_code is not defined';
  END IF;

  IF (__head.document_date IS NULL) THEN
    __head.document_date := now()::date;
  END IF;

  IF (__head.display_name IS NULL) THEN
    __head.display_name := receipt.generate_display_name(
        __document_date := __head.document_date,
        __facility_code := __head.facility_code);
  END IF;

  INSERT INTO
    receipt.head (
      id, 
      display_name,
      document_date, 
      ship_from, 
      ship_to)
  VALUES (
    DEFAULT, 
    __head.display_name,
    __head.document_date, 
    __head.addresser, 
    __head.facility_code) 
  RETURNING id INTO _document_id;

  FOREACH _item IN
    ARRAY __body
  LOOP
    INSERT INTO
      receipt.body (
        head_id, 
        part_code, 
        quantity, 
        uom_code)
    VALUES (
      _document_id, 
      _item.part_code, 
      _item.quantity, 
      _item.uom_code);
  END LOOP;

  RETURN _document_id;

END;
$$;


ALTER FUNCTION receipt.submit(__head common.receipt_head, __body common.document_body[]) OWNER TO postgres;

--
-- TOC entry 669 (class 1255 OID 62595)
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
-- TOC entry 670 (class 1255 OID 62596)
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
-- TOC entry 671 (class 1255 OID 62597)
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
-- TOC entry 672 (class 1255 OID 62598)
-- Name: destroy(bigint); Type: FUNCTION; Schema: response; Owner: postgres
--

CREATE FUNCTION response.destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  
  DELETE FROM response.head WHERE id = __document_id;

END;
$$;


ALTER FUNCTION response.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 4942 (class 0 OID 0)
-- Dependencies: 672
-- Name: FUNCTION destroy(__document_id bigint); Type: COMMENT; Schema: response; Owner: postgres
--

COMMENT ON FUNCTION response.destroy(__document_id bigint) IS 'delete response report';


--
-- TOC entry 673 (class 1255 OID 62599)
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
-- TOC entry 674 (class 1255 OID 62600)
-- Name: do_commit(bigint, boolean); Type: FUNCTION; Schema: response; Owner: postgres
--

CREATE FUNCTION response.do_commit(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head               common.response_head;
  _body               common.response_segment[];
  _seg                common.response_segment;
  _materials_consumed common.document_body[];
  _process_id         bigint;
  _process_head       common.process_head;
BEGIN

  _head := response.get_head(__document_id);
  _body := response.get_body(__document_id);

  IF (_head.curr_fsmt = 'COMMITTED'::common.document_fsmt) THEN
    RAISE NOTICE 'response % already committed. exiting', _head.gid;
    RETURN;
  END IF;

  PERFORM balance.loss_process_done_qty(
      __facility_code := _head.facility_code,
      __body          := _body
    );

  FOREACH _seg IN
      ARRAY _body
    LOOP

    _process_id := process.get_id_by_gid(_seg.gid);
    _process_head := process.get_head(_process_id);
    PERFORM balance.gain_stock_on_hand_qty(
      _head.facility_code,
      ARRAY[(
        (_process_head.producible_spec).part_code,
        (_process_head.producible_spec).quantity * _seg.quantity,
        (_process_head.producible_spec).uom_code
      )]::common.document_body[]
    );
    
    _materials_consumed := process.get_materials_consumed(_seg.gid, _seg.quantity);
    PERFORM balance.loss_stock_on_hand_qty(_head.facility_code, _materials_consumed);
        
  END LOOP;

  UPDATE
    response.head
  SET
    curr_fsmt = 'COMMITTED'::common.document_fsmt
  WHERE
    id = __document_id;

  IF (__apprise IS true) THEN
  --
  END IF;

END;
$$;


ALTER FUNCTION response.do_commit(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 675 (class 1255 OID 62601)
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
-- TOC entry 676 (class 1255 OID 62602)
-- Name: get_body(bigint); Type: FUNCTION; Schema: response; Owner: postgres
--

CREATE FUNCTION response.get_body(__document_id bigint) RETURNS common.response_segment[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY(
      SELECT 
          (segment_gid, 
          quantity)::common.response_segment
        FROM 
          response.body
        WHERE 
          head_id = __document_id
    );
END
$$;


ALTER FUNCTION response.get_body(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 677 (class 1255 OID 62603)
-- Name: get_gid_by_id(bigint); Type: FUNCTION; Schema: response; Owner: postgres
--

CREATE FUNCTION response.get_gid_by_id(__document_id bigint) RETURNS uuid
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN gid
    FROM
      response.head
    WHERE
      id = __document_id;
END;
$$;


ALTER FUNCTION response.get_gid_by_id(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 4943 (class 0 OID 0)
-- Dependencies: 677
-- Name: FUNCTION get_gid_by_id(__document_id bigint); Type: COMMENT; Schema: response; Owner: postgres
--

COMMENT ON FUNCTION response.get_gid_by_id(__document_id bigint) IS 'get uuid of response report by id';


--
-- TOC entry 678 (class 1255 OID 62604)
-- Name: get_head(bigint); Type: FUNCTION; Schema: response; Owner: postgres
--

CREATE FUNCTION response.get_head(__document_id bigint) RETURNS common.response_head
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN 
    (id, 
    gid, 
    display_name,
    document_date,
    facility_code,
    curr_fsmt,
    'RESPONSE'::common.document_kind)::common.response_head
  FROM 
    response.head
  WHERE 
    id = __document_id;
END;
$$;


ALTER FUNCTION response.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 679 (class 1255 OID 62605)
-- Name: get_id_by_gid(uuid); Type: FUNCTION; Schema: response; Owner: postgres
--

CREATE FUNCTION response.get_id_by_gid(__document_gid uuid) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN id
    FROM
      response.head
    WHERE
      gid = __document_gid;
END;
$$;


ALTER FUNCTION response.get_id_by_gid(__document_gid uuid) OWNER TO postgres;

--
-- TOC entry 4944 (class 0 OID 0)
-- Dependencies: 679
-- Name: FUNCTION get_id_by_gid(__document_gid uuid); Type: COMMENT; Schema: response; Owner: postgres
--

COMMENT ON FUNCTION response.get_id_by_gid(__document_gid uuid) IS 'get id of response report by uuid';


--
-- TOC entry 680 (class 1255 OID 62606)
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
-- TOC entry 681 (class 1255 OID 62607)
-- Name: resubmit(bigint, common.response_segment[]); Type: FUNCTION; Schema: response; Owner: postgres
--

CREATE FUNCTION response.resubmit(__document_id bigint, __body common.response_segment[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.response_segment;
BEGIN

  DELETE FROM
    response.body
  WHERE 
    head_id = __document_id;

  FOREACH _item IN
    ARRAY __body
  LOOP
    INSERT INTO
      response.body (
        head_id, 
        segment_gid, 
        quantity)
    VALUES (
      __document_id, 
      _item.gid, 
      _item.quantity);
  END LOOP;

END;
$$;


ALTER FUNCTION response.resubmit(__document_id bigint, __body common.response_segment[]) OWNER TO postgres;

--
-- TOC entry 682 (class 1255 OID 62608)
-- Name: revert(bigint, boolean); Type: FUNCTION; Schema: response; Owner: postgres
--

CREATE FUNCTION response.revert(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head               common.response_head;
  _body               common.response_segment[];
  _seg                common.response_segment;
  _materials_consumed common.document_body[];
  _process_id         bigint;
  _process_head       common.process_head;
BEGIN

  _head := response.get_head(__document_id);
  _body := response.get_body(__document_id);

  IF (_head.curr_fsmt <> 'COMMITTED'::common.document_fsmt) THEN
    RAISE NOTICE 'RESPONSE % not committed. exiting', _head.gid;
    RETURN;
  END IF;

  UPDATE
    response.head
  SET
    curr_fsmt = 'REVERTED'::common.document_fsmt
  WHERE
    id = __document_id;

  FOREACH _seg IN
      ARRAY _body
    LOOP

    _process_id := process.get_id_by_gid(_seg.gid);
    _process_head := process.get_head(_process_id);
    PERFORM balance.loss_stock_on_hand_qty(
      _head.facility_code,
      ARRAY[(
        (_process_head.producible_spec).part_code,
        (_process_head.producible_spec).quantity * _seg.quantity,
        (_process_head.producible_spec).uom_code
      )]::common.document_body[]
    );
    
    _materials_consumed := process.get_materials_consumed(_seg.gid, _seg.quantity);
    PERFORM balance.gain_stock_on_hand_qty(_head.facility_code, _materials_consumed);

  END LOOP;

  -- TODO: deassign stockcard
  PERFORM balance.gain_process_done_qty(
      __facility_code := _head.facility_code,
      __body          := _body
    );

  IF (__apprise IS true) THEN
  --
  END IF;

END;
$$;


ALTER FUNCTION response.revert(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 684 (class 1255 OID 62609)
-- Name: submit(common.response_head, common.response_segment[]); Type: FUNCTION; Schema: response; Owner: postgres
--

CREATE FUNCTION response.submit(__head common.response_head, __body common.response_segment[]) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.response_segment;
  _document_id bigint;
BEGIN

  IF (__head.facility_code IS NULL) THEN
    RAISE EXCEPTION 'field facility_code is not defined';
  END IF;

  IF (__head.document_date IS NULL) THEN
    __head.document_date := now()::date;
  END IF;

  /*IF (__head.display_name IS NULL) THEN
    __head.display_name := response.generate_display_name(
        __document_date := __head.document_date,
        __facility_code := __head.facility_code);
  END IF;*/

  INSERT INTO
    response.head (
      id, 
      display_name,
      document_date,
      facility_code)
  VALUES (
    DEFAULT, 
    __head.display_name,
    __head.document_date,
    __head.facility_code) 
  RETURNING id INTO _document_id;

  FOREACH _item IN
    ARRAY __body
  LOOP
    INSERT INTO
      response.body (
        head_id, 
        segment_gid, 
        quantity)
    VALUES (
      _document_id, 
      _item.gid, 
      _item.quantity);
  END LOOP;

  RETURN _document_id;

END;
$$;


ALTER FUNCTION response.submit(__head common.response_head, __body common.response_segment[]) OWNER TO postgres;

--
-- TOC entry 685 (class 1255 OID 62610)
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
-- TOC entry 686 (class 1255 OID 62611)
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
-- TOC entry 687 (class 1255 OID 62612)
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
-- TOC entry 688 (class 1255 OID 62613)
-- Name: assign_issue(bigint); Type: FUNCTION; Schema: stockcard; Owner: postgres
--

CREATE FUNCTION stockcard.assign_issue(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.issue_head;
  _body common.document_body[];
BEGIN

  _head := issue.get_head(__document_id);
  _body := issue.get_body(__document_id);

  PERFORM stockcard.assign_issue(_head, _body)

  RETURN;

END;
$$;


ALTER FUNCTION stockcard.assign_issue(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 689 (class 1255 OID 62614)
-- Name: assign_issue(common.issue_head, common.document_body[]); Type: FUNCTION; Schema: stockcard; Owner: postgres
--

CREATE FUNCTION stockcard.assign_issue(__document_head common.issue_head, __document_body common.document_body[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.document_body;
BEGIN

  FOREACH _item IN
    ARRAY __document_body
  LOOP
    INSERT INTO
      stockcard.head (
        document_gid, 
        document_kind, 
        document_name, 
        document_date, 
        facility_code, 
        counterparty_code,
        part_code,
        issued_uom, 
        issued_qty)
    VALUES (
      __document_head.gid,
      'ISSUE'::common.document_kind,
      __document_head.display_name,
      __document_head.document_date,
      __document_head.facility_code,
      __document_head.addressee,
      _item.part_code,
      _item.uom_code,
      _item.quantity
      );
  END LOOP;

END;
$$;


ALTER FUNCTION stockcard.assign_issue(__document_head common.issue_head, __document_body common.document_body[]) OWNER TO postgres;

--
-- TOC entry 690 (class 1255 OID 62615)
-- Name: assign_receipt(bigint); Type: FUNCTION; Schema: stockcard; Owner: postgres
--

CREATE FUNCTION stockcard.assign_receipt(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.receipt_head;
  _body common.document_body[];
BEGIN

  _head := receipt.get_head(__document_id);
  _body := receipt.get_body(__document_id);

  PERFORM stockcard.assign_receipt(_head, _body);

  RETURN;

END;
$$;


ALTER FUNCTION stockcard.assign_receipt(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 691 (class 1255 OID 62616)
-- Name: assign_receipt(common.receipt_head, common.document_body[]); Type: FUNCTION; Schema: stockcard; Owner: postgres
--

CREATE FUNCTION stockcard.assign_receipt(__document_head common.receipt_head, __document_body common.document_body[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.document_body;
BEGIN

  FOREACH _item IN
    ARRAY __document_body
  LOOP
    INSERT INTO
      stockcard.head (
        document_gid, 
        document_kind, 
        document_name, 
        document_date, 
        facility_code, 
        counterparty_code,
        part_code,
        receipt_uom, 
        receipt_qty)
    VALUES (
      __document_head.gid,
      'RECEIPT'::common.document_kind,
      __document_head.display_name,
      __document_head.document_date,
      __document_head.facility_code,
      __document_head.addresser,
      _item.part_code,
      _item.uom_code,
      _item.quantity
      );
  END LOOP;

END;
$$;


ALTER FUNCTION stockcard.assign_receipt(__document_head common.receipt_head, __document_body common.document_body[]) OWNER TO postgres;

--
-- TOC entry 692 (class 1255 OID 62617)
-- Name: assign_stocktake(bigint); Type: FUNCTION; Schema: stockcard; Owner: postgres
--

CREATE FUNCTION stockcard.assign_stocktake(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.document_head;
  _body common.document_body[];
BEGIN

  _head := stocktake.get_head(__document_id);
  _body := stocktake.get_body(__document_id);

  PERFORM stockcard.assign_stocktake(_head, _body);

  RETURN;

END;
$$;


ALTER FUNCTION stockcard.assign_stocktake(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 693 (class 1255 OID 62618)
-- Name: assign_stocktake(common.document_head, common.document_body[]); Type: FUNCTION; Schema: stockcard; Owner: postgres
--

CREATE FUNCTION stockcard.assign_stocktake(__document_head common.document_head, __document_body common.document_body[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.document_body;
  _stocktake_agent CONSTANT character varying := 'AGENT';
BEGIN

  FOREACH _item IN
    ARRAY __document_body
  LOOP
    INSERT INTO
      stockcard.head (
        document_gid, 
        document_kind, 
        document_name, 
        document_date, 
        facility_code, 
        counterparty_code,
        part_code,
        stocktake_uom, 
        stocktake_qty)
    VALUES (
      __document_head.gid,
      'STOCKTAKE'::common.document_kind,
      __document_head.display_name,
      __document_head.document_date,
      __document_head.facility_code,
      _stocktake_agent,
      _item.part_code,
      _item.uom_code,
      _item.quantity
      );
  END LOOP;

END;
$$;


ALTER FUNCTION stockcard.assign_stocktake(__document_head common.document_head, __document_body common.document_body[]) OWNER TO postgres;

--
-- TOC entry 694 (class 1255 OID 62619)
-- Name: deassign_issue(bigint); Type: FUNCTION; Schema: stockcard; Owner: postgres
--

CREATE FUNCTION stockcard.deassign_issue(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _document_gid uuid;
BEGIN

  _document_gid := issue.get_gid_by_id(__document_id);

  DELETE FROM
    stockcard.head
  WHERE
    document_gid = _document_gid;

  RETURN;

END;
$$;


ALTER FUNCTION stockcard.deassign_issue(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 695 (class 1255 OID 62620)
-- Name: deassign_receipt(bigint); Type: FUNCTION; Schema: stockcard; Owner: postgres
--

CREATE FUNCTION stockcard.deassign_receipt(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _document_gid uuid;
BEGIN

  _document_gid := receipt.get_gid_by_id(__document_id);

  DELETE FROM
    stockcard.head
  WHERE
    document_gid = _document_gid;

  RETURN;

END;
$$;


ALTER FUNCTION stockcard.deassign_receipt(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 664 (class 1255 OID 62621)
-- Name: deassign_stocktake(bigint); Type: FUNCTION; Schema: stockcard; Owner: postgres
--

CREATE FUNCTION stockcard.deassign_stocktake(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _document_gid uuid;
BEGIN

  _document_gid := stocktake.get_gid_by_id(__document_id);

  DELETE FROM
    stockcard.head
  WHERE
    document_gid = _document_gid;

  RETURN;

END;
$$;


ALTER FUNCTION stockcard.deassign_stocktake(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 683 (class 1255 OID 62622)
-- Name: get_stocktake_recent_date(character varying, character varying[]); Type: FUNCTION; Schema: stockcard; Owner: postgres
--

CREATE FUNCTION stockcard.get_stocktake_recent_date(__facility_code character varying, __part_codes character varying[]) RETURNS date
    LANGUAGE plpgsql
    AS $$
DECLARE
  _recent_stocktake_date date;
BEGIN

  SELECT 
    max(head.document_date) as recent_stocktake_date
  FROM 
    stockcard.head
  WHERE 
    head.document_kind = 'STOCKTAKE' AND 
    head.part_code = ANY(__part_codes) AND
    head.facility_code = __facility_code
  INTO _recent_stocktake_date;
  IF NOT FOUND THEN
    _recent_stocktake_date := schedule.get_date_of_julianized_day(1);
  END IF;

  RETURN _recent_stocktake_date;

END;
$$;


ALTER FUNCTION stockcard.get_stocktake_recent_date(__facility_code character varying, __part_codes character varying[]) OWNER TO postgres;

--
-- TOC entry 696 (class 1255 OID 62623)
-- Name: get_stocktake_recent_date(character varying, character varying); Type: FUNCTION; Schema: stockcard; Owner: postgres
--

CREATE FUNCTION stockcard.get_stocktake_recent_date(__facility_code character varying, __part_code character varying) RETURNS date
    LANGUAGE plpgsql
    AS $$
DECLARE
  _recent_stocktake_date date;
BEGIN

  SELECT 
    max(head.document_date) as recent_stocktake_date
  FROM 
    stockcard.head
  WHERE 
    head.document_kind = 'STOCKTAKE' AND 
    head.part_code = __part_code AND
    head.facility_code = __facility_code
  INTO _recent_stocktake_date;
  IF NOT FOUND THEN
    _recent_stocktake_date := schedule.get_date_of_julianized_day(1);
  END IF;

  RETURN _recent_stocktake_date;

END;
$$;


ALTER FUNCTION stockcard.get_stocktake_recent_date(__facility_code character varying, __part_code character varying) OWNER TO postgres;

--
-- TOC entry 697 (class 1255 OID 62624)
-- Name: check_commit(common.document_head); Type: FUNCTION; Schema: stocktake; Owner: postgres
--

CREATE FUNCTION stocktake.check_commit(__head common.document_head) RETURNS boolean
    LANGUAGE plpgsql
    AS $$
BEGIN

  PERFORM 
    head.gid, 
    head.display_name
  FROM 
    receipt.head
  WHERE 
    head.ship_to = __head.facility_code AND 
    head.curr_fsmt = 'PROPOSED' AND 
    head.document_date <= __head.document_date
  UNION
  SELECT 
    head.gid, 
    head.display_name
  FROM 
    issue.head
  WHERE 
    head.ship_from = __head.facility_code AND 
    head.curr_fsmt = 'PROPOSED' AND 
    head.document_date <= __head.document_date;

  IF FOUND THEN
    RETURN false;
  ELSE
    RETURN true;
  END IF;

END;
$$;


ALTER FUNCTION stocktake.check_commit(__head common.document_head) OWNER TO postgres;

--
-- TOC entry 698 (class 1255 OID 62625)
-- Name: destroy(bigint); Type: FUNCTION; Schema: stocktake; Owner: postgres
--

CREATE FUNCTION stocktake.destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  DELETE FROM stocktake.head WHERE id = __document_id;
END;
$$;


ALTER FUNCTION stocktake.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 699 (class 1255 OID 62626)
-- Name: disallow_editing_of_committed_document_body(); Type: FUNCTION; Schema: stocktake; Owner: postgres
--

CREATE FUNCTION stocktake.disallow_editing_of_committed_document_body() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  _document_fsmt common.document_fsmt;
BEGIN
  IF (TG_OP = 'INSERT' OR TG_OP = 'UPDATE') THEN

    SELECT 
      head.curr_fsmt
    FROM 
      stocktake.head
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
      stocktake.head
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


ALTER FUNCTION stocktake.disallow_editing_of_committed_document_body() OWNER TO postgres;

--
-- TOC entry 700 (class 1255 OID 62627)
-- Name: do_commit(bigint, boolean); Type: FUNCTION; Schema: stocktake; Owner: postgres
--

CREATE FUNCTION stocktake.do_commit(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.document_head;
  _body common.document_body[];
  _stocktake_item common.document_body;
  _balance_item common.document_body;
  _diff_qty common.quantity_signed;
  _array_to_gain common.document_body[] DEFAULT '{}'::common.document_body[];
  _array_to_loss common.document_body[] DEFAULT '{}'::common.document_body[];
BEGIN

  _head := stocktake.get_head(__document_id);
  _body := stocktake.get_body(__document_id);

  IF (_head.curr_fsmt = 'COMMITTED'::common.document_fsmt) THEN
    RAISE NOTICE 'stocktake % already committed. exiting', _head.gid;
    RETURN;
  END IF;

  IF (NOT stocktake.check_commit(_head)) THEN
    RAISE NOTICE 'OK';
    --EXIT;
  ELSE 
    RAISE NOTICE 'NOT OK';
    --EXIT;
  END IF;

  FOREACH _stocktake_item IN
    ARRAY _body
  LOOP
    _balance_item := balance.get_stock_on_hand_qty(_head.facility_code, _stocktake_item.part_code);
    IF (_balance_item IS NULL) THEN
      _diff_qty := _stocktake_item.quantity;
    ELSE
      _diff_qty := _stocktake_item.quantity - _balance_item.quantity;
    END IF;

    IF (_diff_qty < 0) THEN
      _array_to_loss := array_append(_array_to_loss, (_stocktake_item.part_code, abs(_diff_qty), _stocktake_item.uom_code)::common.document_body);
      --PERFORM balance.loss_stock_on_hand_qty();
    ELSIF (_diff_qty > 0) THEN
      _array_to_gain := array_append(_array_to_gain, (_stocktake_item.part_code, _diff_qty, _stocktake_item.uom_code)::common.document_body);
      --PERFORM balance.gain_stock_on_hand_qty();
    ELSE
      --do nothing
    END IF;

    UPDATE
      stocktake.body
    SET
      diff_qty = _diff_qty
    WHERE
      head_id = __document_id AND
      part_code = _stocktake_item.part_code;

    RAISE NOTICE 'blnc % %', _stocktake_item.part_code, _diff_qty;
  END LOOP;

  UPDATE
    stocktake.head
  SET
    curr_fsmt = 'COMMITTED'::common.document_fsmt
  WHERE
    id = __document_id;

  PERFORM balance.gain_stock_on_hand_qty(
    __facility_code := _head.facility_code,
    __inventory := _array_to_gain);
  PERFORM balance.loss_stock_on_hand_qty(
    __facility_code := _head.facility_code,
    __inventory := _array_to_loss);
  PERFORM stockcard.assign_stocktake(
    __document_head := _head,
    __document_body := _body);

  IF (__apprise) THEN
  --
  END IF;

END;
$$;


ALTER FUNCTION stocktake.do_commit(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 701 (class 1255 OID 62628)
-- Name: generate_display_name(date, character varying); Type: FUNCTION; Schema: stocktake; Owner: postgres
--

CREATE FUNCTION stocktake.generate_display_name(__document_date date, __facility_code character varying) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
DECLARE
  _week_number integer;
  _sequence_number integer;
  _document_kind_code character varying;
BEGIN

  _week_number := schedule.get_julianized_week(__document_date);
  _sequence_number := stocktake.numerator_nextval(__facility_code, _week_number);
  _document_kind_code := common.get_document_abbrevation('STOCKTAKE');

  RETURN concat(_document_kind_code,
    '-', __facility_code,
    '-', common.number_encode2(_week_number, true),
    common.number_encode4(_sequence_number, true));

END;
$$;


ALTER FUNCTION stocktake.generate_display_name(__document_date date, __facility_code character varying) OWNER TO postgres;

--
-- TOC entry 702 (class 1255 OID 62629)
-- Name: get_body(bigint); Type: FUNCTION; Schema: stocktake; Owner: postgres
--

CREATE FUNCTION stocktake.get_body(__document_id bigint) RETURNS common.document_body[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY(
      SELECT 
          (part_code, 
          quantity, 
          uom_code)::common.document_body
        FROM 
          stocktake.body
        WHERE 
          head_id = __document_id
    );
END
$$;


ALTER FUNCTION stocktake.get_body(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 703 (class 1255 OID 62630)
-- Name: get_gid_by_id(bigint); Type: FUNCTION; Schema: stocktake; Owner: postgres
--

CREATE FUNCTION stocktake.get_gid_by_id(__document_id bigint) RETURNS uuid
    LANGUAGE plpgsql
    AS $$
DECLARE
  --_id bigint;
BEGIN
  RETURN gid
    FROM 
      stocktake.head
    WHERE 
      id = __document_id;
END;
$$;


ALTER FUNCTION stocktake.get_gid_by_id(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 704 (class 1255 OID 62631)
-- Name: get_head(bigint); Type: FUNCTION; Schema: stocktake; Owner: postgres
--

CREATE FUNCTION stocktake.get_head(__document_id bigint) RETURNS common.document_head
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN 
    (id, 
    gid, 
    display_name,
    document_date,
    facility_code,
    curr_fsmt,
    'STOCKTAKE'::common.document_kind)::common.document_head
  FROM 
    stocktake.head
  WHERE 
    id = __document_id;
END;
$$;


ALTER FUNCTION stocktake.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 705 (class 1255 OID 62632)
-- Name: get_head_batch(bigint[]); Type: FUNCTION; Schema: stocktake; Owner: postgres
--

CREATE FUNCTION stocktake.get_head_batch(__document_ids bigint[]) RETURNS common.document_head[]
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (id, 
        gid, 
        display_name,
        document_date,
        facility_code,
        curr_fsmt,
        'STOCKTAKE'::common.document_kind)::common.document_head
      FROM 
        stocktake.head
      WHERE 
        id = ANY(__document_ids)
    );
END;
$$;


ALTER FUNCTION stocktake.get_head_batch(__document_ids bigint[]) OWNER TO postgres;

--
-- TOC entry 706 (class 1255 OID 62633)
-- Name: get_head_batch_proposed(character varying, date, date); Type: FUNCTION; Schema: stocktake; Owner: postgres
--

CREATE FUNCTION stocktake.get_head_batch_proposed(__facility_code character varying, __date_start date, __date_end date) RETURNS common.document_head[]
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (id, 
        gid, 
        display_name,
        document_date,
        facility_code,
        curr_fsmt,
        'STOCKTAKE'::common.document_kind)::common.document_head
      FROM 
        stocktake.head
      WHERE 
        facility_code = __facility_code AND
        curr_fsmt = 'PROPOSED' AND
        document_date BETWEEN __date_start AND __date_end
    );
END;
$$;


ALTER FUNCTION stocktake.get_head_batch_proposed(__facility_code character varying, __date_start date, __date_end date) OWNER TO postgres;

--
-- TOC entry 707 (class 1255 OID 62634)
-- Name: get_id_by_gid(uuid); Type: FUNCTION; Schema: stocktake; Owner: postgres
--

CREATE FUNCTION stocktake.get_id_by_gid(__document_gid uuid) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  --_id bigint;
BEGIN
  RETURN id
    FROM 
      stocktake.head
    WHERE 
      gid = __document_gid;
END;
$$;


ALTER FUNCTION stocktake.get_id_by_gid(__document_gid uuid) OWNER TO postgres;

--
-- TOC entry 709 (class 1255 OID 62635)
-- Name: is_document_locked(common.document_head, common.document_body[]); Type: FUNCTION; Schema: stocktake; Owner: postgres
--

CREATE FUNCTION stocktake.is_document_locked(__head common.document_head, __body common.document_body[]) RETURNS boolean
    LANGUAGE plpgsql
    AS $$
DECLARE
  _recent_stocktake_date date;
  _stocktake_mode common.policy_mode;
  _is_locked boolean;
  _part_codes character varying[];
BEGIN
  _stocktake_mode := common.get_stocktake_mode(__head.doctype);
  _part_codes := ARRAY(SELECT part_code from unnest(__body))::character varying[];
  _recent_stocktake_date := stockcard.get_stocktake_recent_date(__head.facility_code, _part_codes);

  IF (__head.document_date > _recent_stocktake_date) THEN
    _is_locked := false;
  ELSE
    IF (_stocktake_mode = 'ENFORCING') THEN
      _is_locked := true;
    ELSE
      _is_locked := false; --!
    END IF;
  END IF;

  RETURN _is_locked;
END;
$$;


ALTER FUNCTION stocktake.is_document_locked(__head common.document_head, __body common.document_body[]) OWNER TO postgres;

--
-- TOC entry 710 (class 1255 OID 62636)
-- Name: numerator_nextval(character varying, integer); Type: FUNCTION; Schema: stocktake; Owner: postgres
--

CREATE FUNCTION stocktake.numerator_nextval(__facility_code character varying, __julianized_week integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
  _seqence_number integer;
BEGIN

  UPDATE
    stocktake.numerator
  SET
    current_value = current_value + 1
  WHERE
    julianized_week = __julianized_week AND
    facility_code = __facility_code
  RETURNING current_value INTO _seqence_number;

  IF (NOT FOUND) THEN
    INSERT INTO
      stocktake.numerator (
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


ALTER FUNCTION stocktake.numerator_nextval(__facility_code character varying, __julianized_week integer) OWNER TO postgres;

--
-- TOC entry 711 (class 1255 OID 62637)
-- Name: resubmit(bigint, common.document_body[]); Type: FUNCTION; Schema: stocktake; Owner: postgres
--

CREATE FUNCTION stocktake.resubmit(__document_id bigint, __body common.document_body[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.document_body;
BEGIN

  DELETE FROM
    stocktake.body
  WHERE 
    head_id = __document_id;

  FOREACH _item IN
    ARRAY __body
  LOOP
    INSERT INTO 
      stocktake.body (
        head_id,
        part_code,
        quantity,
        uom_code)
    VALUES (
      __document_id, 
      _item.part_code, 
      _item.quantity, 
      _item.uom_code);
  END LOOP;

END;
$$;


ALTER FUNCTION stocktake.resubmit(__document_id bigint, __body common.document_body[]) OWNER TO postgres;

--
-- TOC entry 712 (class 1255 OID 62638)
-- Name: revert(bigint, boolean); Type: FUNCTION; Schema: stocktake; Owner: postgres
--

CREATE FUNCTION stocktake.revert(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.document_head;
  -- _body common.document_body[];
  _stocktake_item record;
  _array_to_gain common.document_body[] DEFAULT '{}'::common.document_body[];
  _array_to_loss common.document_body[] DEFAULT '{}'::common.document_body[];
BEGIN

  _head := stocktake.get_head(__document_id);
  -- _body := stocktake.get_body(__document_id);

  IF (_head.curr_fsmt <> 'COMMITTED'::common.document_fsmt) THEN
    RAISE NOTICE 'stocktake % not committed. exiting', _head.gid;
    RETURN;
  END IF;

  FOR _stocktake_item IN
  SELECT 
    body.part_code, 
    body.uom_code, 
    body.diff_qty
  FROM 
    stocktake.body
  WHERE 
    body.head_id = 95
  LOOP
    IF (_stocktake_item.diff_qty > 0) THEN
      _array_to_loss := array_append(_array_to_loss, (_stocktake_item.part_code, _stocktake_item.diff_qty, _stocktake_item.uom_code)::common.document_body);
      --PERFORM balance.loss_stock_on_hand_qty();
    ELSIF (_stocktake_item.diff_qty < 0) THEN
      _array_to_gain := array_append(_array_to_gain, (_stocktake_item.part_code, abs(_stocktake_item.diff_qty), _stocktake_item.uom_code)::common.document_body);
      --PERFORM balance.gain_stock_on_hand_qty();
    ELSE
      --do nothing
    END IF;
  END LOOP;

  UPDATE
    stocktake.head
  SET
    curr_fsmt = 'REVERTED'::common.document_fsmt
  WHERE
    id = __document_id;

  PERFORM balance.gain_stock_on_hand_qty(
    __facility_code := _head.facility_code,
    __inventory := _array_to_gain);
  PERFORM balance.loss_stock_on_hand_qty(
    __facility_code := _head.facility_code,
    __inventory := _array_to_loss);
  PERFORM stockcard.deassign_stocktake(
    __document_id := _head.document_id);

  IF (__apprise) THEN
  --
  END IF;

END;
$$;


ALTER FUNCTION stocktake.revert(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 713 (class 1255 OID 62639)
-- Name: submit(common.document_head); Type: FUNCTION; Schema: stocktake; Owner: postgres
--

CREATE FUNCTION stocktake.submit(__head common.document_head) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _body common.document_body[];
  _document_id bigint;
BEGIN

  _body := balance.get_stock_on_hand_qty(__facility_code := __head.facility_code);

  _document_id := stocktake.submit(
      __head := __head,
      __body := _body);

  RETURN _document_id;

END;
$$;


ALTER FUNCTION stocktake.submit(__head common.document_head) OWNER TO postgres;

--
-- TOC entry 714 (class 1255 OID 62640)
-- Name: submit(common.document_head, common.document_body[]); Type: FUNCTION; Schema: stocktake; Owner: postgres
--

CREATE FUNCTION stocktake.submit(__head common.document_head, __body common.document_body[]) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.document_body;
  _document_id bigint;
BEGIN

  IF (__head.facility_code IS NULL) THEN
    RAISE EXCEPTION 'field facility_code is not defined';
  END IF;

  IF (__head.document_date IS NULL) THEN
    __head.document_date := now()::date;
  END IF;

  IF (__head.display_name IS NULL) THEN
    __head.display_name := stocktake.generate_display_name(
        __document_date := __head.document_date,
        __facility_code := __head.facility_code);
  END IF;

  INSERT INTO
    stocktake.head (
      id, 
      display_name,
      document_date, 
      facility_code)
  VALUES (
    DEFAULT, 
    __head.display_name,
    __head.document_date,  
    __head.facility_code) 
  RETURNING id INTO _document_id;

  FOREACH _item IN
    ARRAY __body
  LOOP
    INSERT INTO
      stocktake.body (
        head_id, 
        part_code, 
        quantity, 
        uom_code)
    VALUES (
      _document_id,
      _item.part_code,
      _item.quantity,
      _item.uom_code);
  END LOOP;

  RETURN _document_id;

END;
$$;


ALTER FUNCTION stocktake.submit(__head common.document_head, __body common.document_body[]) OWNER TO postgres;

--
-- TOC entry 715 (class 1255 OID 62641)
-- Name: submit(common.document_head, character varying[]); Type: FUNCTION; Schema: stocktake; Owner: postgres
--

CREATE FUNCTION stocktake.submit(__head common.document_head, __part_codes character varying[]) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _body common.document_body[];
  _document_id bigint;
BEGIN

  _body := balance.get_stock_on_hand_qty(
      __facility_code := __head.facility_code,
      __part_codes := __part_codes);

  _document_id := stocktake.submit(
      __head := __head,
      __body := _body);

  RETURN _document_id;

END;
$$;


ALTER FUNCTION stocktake.submit(__head common.document_head, __part_codes character varying[]) OWNER TO postgres;

--
-- TOC entry 716 (class 1255 OID 62642)
-- Name: __balance__gain_stock_en_route_qty(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__balance__gain_stock_en_route_qty() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_document_body CONSTANT common.document_body[] := ARRAY[('good1', 100, 'm'), ('good2', 200, 'm')]::common.document_body[];
  _test_good1_en_route_qty CONSTANT common.quantity := 100;
  _test_good2_en_route_qty CONSTANT common.quantity := 200;
  _test_facility_code CONSTANT character varying := 'A1';
  _good1_en_route_qty common.quantity;
  _good2_en_route_qty common.quantity;
BEGIN
  
  RAISE DEBUG '#trace Check __balance__gain_stock_en_route_qty()';

  INSERT INTO balance.stock VALUES ('B1', 'good1', 'm', 0, 0, 0, 0, 0);
  INSERT INTO balance.stock VALUES ('A1', 'good1', 'm', 0, 0, 0, 0, 0);
  INSERT INTO balance.stock VALUES ('A1', 'good2', 'm', 0, 0, 0, 0, 0);
  
  PERFORM balance.gain_stock_en_route_qty(_test_facility_code, _test_document_body);
  SELECT en_route_qty FROM balance.stock WHERE facility_code = _test_facility_code AND part_code = 'good1' INTO _good1_en_route_qty;
  SELECT en_route_qty FROM balance.stock WHERE facility_code = _test_facility_code AND part_code = 'good2' INTO _good2_en_route_qty;

  PERFORM pgunit.assert_equals(_test_good1_en_route_qty, _good1_en_route_qty, 'Incorrect _good1_en_route_qty value');
  PERFORM pgunit.assert_equals(_test_good2_en_route_qty, _good2_en_route_qty, 'Incorrect _good1_en_route_qty value');

END;
$$;


ALTER FUNCTION tests.__balance__gain_stock_en_route_qty() OWNER TO postgres;

--
-- TOC entry 717 (class 1255 OID 62643)
-- Name: __balance__gain_stock_on_hand_qty(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__balance__gain_stock_on_hand_qty() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_document_body CONSTANT common.document_body[] := ARRAY[('good1', 100, 'm'), ('good2', 200, 'm')]::common.document_body[];
  _test_good1_on_hand_qty CONSTANT common.quantity := 100;
  _test_good2_on_hand_qty CONSTANT common.quantity := 200;
  _test_facility_code CONSTANT character varying := 'A1';
  _good1_on_hand_qty common.quantity;
  _good2_on_hand_qty common.quantity;
BEGIN
  
  RAISE DEBUG '#trace Check __balance__gain_stock_on_hand_qty()';

  INSERT INTO balance.stock VALUES ('B1', 'good1', 'm', 0, 0, 0, 0, 0);
  INSERT INTO balance.stock VALUES ('A1', 'good1', 'm', 0, 0, 0, 0, 0);
  INSERT INTO balance.stock VALUES ('A1', 'good2', 'm', 0, 0, 0, 0, 0);
  
  PERFORM balance.gain_stock_on_hand_qty(_test_facility_code, _test_document_body);
  SELECT on_hand_qty FROM balance.stock WHERE facility_code = _test_facility_code AND part_code = 'good1' INTO _good1_on_hand_qty;
  SELECT on_hand_qty FROM balance.stock WHERE facility_code = _test_facility_code AND part_code = 'good2' INTO _good2_on_hand_qty;

  PERFORM pgunit.assert_equals(_test_good1_on_hand_qty, _good1_on_hand_qty, 'Incorrect _good1_on_hand_qty value');
  PERFORM pgunit.assert_equals(_test_good2_on_hand_qty, _good2_on_hand_qty, 'Incorrect _good1_on_hand_qty value');

END;
$$;


ALTER FUNCTION tests.__balance__gain_stock_on_hand_qty() OWNER TO postgres;

--
-- TOC entry 718 (class 1255 OID 62644)
-- Name: __balance__gain_stock_on_order_qty(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__balance__gain_stock_on_order_qty() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_document_body CONSTANT common.document_body[] := ARRAY[('good1', 100, 'm'), ('good2', 200, 'm')]::common.document_body[];
  _test_good1_on_order_qty CONSTANT common.quantity := 100;
  _test_good2_on_order_qty CONSTANT common.quantity := 200;
  _test_facility_code CONSTANT character varying := 'A1';
  _good1_on_order_qty common.quantity;
  _good2_on_order_qty common.quantity;
BEGIN
  
  RAISE DEBUG '#trace Check __balance__gain_stock_on_order_qty()';

  INSERT INTO balance.stock VALUES ('B1', 'good1', 'm', 0, 0, 0, 0, 0);
  INSERT INTO balance.stock VALUES ('A1', 'good1', 'm', 0, 0, 0, 0, 0);
  INSERT INTO balance.stock VALUES ('A1', 'good2', 'm', 0, 0, 0, 0, 0);
  
  PERFORM balance.gain_stock_on_order_qty(_test_facility_code, _test_document_body);
  SELECT on_order_qty FROM balance.stock WHERE facility_code = _test_facility_code AND part_code = 'good1' INTO _good1_on_order_qty;
  SELECT on_order_qty FROM balance.stock WHERE facility_code = _test_facility_code AND part_code = 'good2' INTO _good2_on_order_qty;

  PERFORM pgunit.assert_equals(_test_good1_on_order_qty, _good1_on_order_qty, 'Incorrect _good1_on_order_qty value');
  PERFORM pgunit.assert_equals(_test_good2_on_order_qty, _good2_on_order_qty, 'Incorrect _good1_on_order_qty value');

END;
$$;


ALTER FUNCTION tests.__balance__gain_stock_on_order_qty() OWNER TO postgres;

--
-- TOC entry 719 (class 1255 OID 62645)
-- Name: __balance__gain_stock_reserved_qty(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__balance__gain_stock_reserved_qty() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_document_body CONSTANT common.document_body[] := ARRAY[('good1', 100, 'm'), ('good2', 200, 'm')]::common.document_body[];
  _test_good1_reserved_qty CONSTANT common.quantity := 100;
  _test_good2_reserved_qty CONSTANT common.quantity := 200;
  _test_facility_code CONSTANT character varying := 'A1';
  _good1_reserved_qty common.quantity;
  _good2_reserved_qty common.quantity;
BEGIN
  
  RAISE DEBUG '#trace Check __balance__gain_stock_reserved_qty()';

  INSERT INTO balance.stock VALUES ('B1', 'good1', 'm', 0, 0, 0, 0, 0);
  INSERT INTO balance.stock VALUES ('A1', 'good1', 'm', 0, 0, 0, 0, 0);
  INSERT INTO balance.stock VALUES ('A1', 'good2', 'm', 0, 0, 0, 0, 0);
  
  PERFORM balance.gain_stock_reserved_qty(_test_facility_code, _test_document_body);
  SELECT reserved_qty FROM balance.stock WHERE facility_code = _test_facility_code AND part_code = 'good1' INTO _good1_reserved_qty;
  SELECT reserved_qty FROM balance.stock WHERE facility_code = _test_facility_code AND part_code = 'good2' INTO _good2_reserved_qty;

  PERFORM pgunit.assert_equals(_test_good1_reserved_qty, _good1_reserved_qty, 'Incorrect _good1_reserved_qty value');
  PERFORM pgunit.assert_equals(_test_good2_reserved_qty, _good2_reserved_qty, 'Incorrect _good1_reserved_qty value');

END;
$$;


ALTER FUNCTION tests.__balance__gain_stock_reserved_qty() OWNER TO postgres;

--
-- TOC entry 720 (class 1255 OID 62646)
-- Name: __balance__get_stock_on_hand_qty(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__balance__get_stock_on_hand_qty() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_document_body_0 CONSTANT common.document_body[] := ARRAY[('good1', 100, 'm')]::common.document_body[];
  _test_document_body_1 CONSTANT common.document_body[] := ARRAY[('good1', 100, 'm'), ('good2', 200, 'm')]::common.document_body[];
  _test_part_codes CONSTANT character varying[] := ARRAY['good1', 'good2']::character varying[];
  _test_facility_code CONSTANT character varying := 'A1';
  _balance_1 common.document_body[];
  _balance_0 common.document_body;
BEGIN
  
  RAISE DEBUG '#trace Check __balance__get_stock_on_hand_qty()';

  INSERT INTO balance.stock VALUES ('B1', 'good1', 'm', 0, 0, 0, 0, 0);
  INSERT INTO balance.stock VALUES ('A1', 'good1', 'm', 100, 0, 0, 0, 0);
  INSERT INTO balance.stock VALUES ('A1', 'good2', 'm', 200, 0, 0, 0, 0);
  
  _balance_0 := balance.get_stock_on_hand_qty(_test_facility_code, 'good1');
  PERFORM pgunit.assert_equals(_test_document_body_0[1], _balance_0, 'Incorrect _balance_0 value');
  
  _balance_1 := balance.get_stock_on_hand_qty(_test_facility_code);
  PERFORM pgunit.assert_equals(_test_document_body_1, _balance_1, 'Incorrect _balance_1 value');
  
  _balance_1 := balance.get_stock_on_hand_qty(_test_facility_code, _test_part_codes);
  PERFORM pgunit.assert_equals(_test_document_body_1, _balance_1, 'Incorrect _balance_1 value');

END;
$$;


ALTER FUNCTION tests.__balance__get_stock_on_hand_qty() OWNER TO postgres;

--
-- TOC entry 721 (class 1255 OID 62647)
-- Name: __balance__loss_stock_en_route_qty(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__balance__loss_stock_en_route_qty() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_document_body CONSTANT common.document_body[] := ARRAY[('good1', 100, 'm'), ('good2', 200, 'm')]::common.document_body[];
  _test_good1_en_route_qty CONSTANT common.quantity := 900;
  _test_good2_en_route_qty CONSTANT common.quantity := 800;
  _test_facility_code CONSTANT character varying := 'A1';
  _good1_en_route_qty common.quantity;
  _good2_en_route_qty common.quantity;
BEGIN
  
  RAISE DEBUG '#trace Check __balance__loss_stock_en_route_qty()';

  INSERT INTO balance.stock VALUES ('B1', 'good1', 'm', 1000, 1000, 1000, 1000, 1000);
  INSERT INTO balance.stock VALUES ('A1', 'good1', 'm', 1000, 1000, 1000, 1000, 1000);
  INSERT INTO balance.stock VALUES ('A1', 'good2', 'm', 1000, 1000, 1000, 1000, 1000);
  
  PERFORM balance.loss_stock_en_route_qty(_test_facility_code, _test_document_body);
  SELECT en_route_qty FROM balance.stock WHERE facility_code = _test_facility_code AND part_code = 'good1' INTO _good1_en_route_qty;
  SELECT en_route_qty FROM balance.stock WHERE facility_code = _test_facility_code AND part_code = 'good2' INTO _good2_en_route_qty;

  PERFORM pgunit.assert_equals(_test_good1_en_route_qty, _good1_en_route_qty, 'Incorrect _good1_en_route_qty value');
  PERFORM pgunit.assert_equals(_test_good2_en_route_qty, _good2_en_route_qty, 'Incorrect _good1_en_route_qty value');

END;
$$;


ALTER FUNCTION tests.__balance__loss_stock_en_route_qty() OWNER TO postgres;

--
-- TOC entry 722 (class 1255 OID 62648)
-- Name: __balance__loss_stock_on_hand_qty(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__balance__loss_stock_on_hand_qty() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_document_body CONSTANT common.document_body[] := ARRAY[('good1', 100, 'm'), ('good2', 200, 'm')]::common.document_body[];
  _test_good1_on_hand_qty CONSTANT common.quantity := 900;
  _test_good2_on_hand_qty CONSTANT common.quantity := 800;
  _test_facility_code CONSTANT character varying := 'A1';
  _good1_on_hand_qty common.quantity;
  _good2_on_hand_qty common.quantity;
BEGIN
  
  RAISE DEBUG '#trace Check __balance__loss_stock_on_hand_qty()';

  INSERT INTO balance.stock VALUES ('B1', 'good1', 'm', 1000, 1000, 1000, 1000, 1000);
  INSERT INTO balance.stock VALUES ('A1', 'good1', 'm', 1000, 1000, 1000, 1000, 1000);
  INSERT INTO balance.stock VALUES ('A1', 'good2', 'm', 1000, 1000, 1000, 1000, 1000);
  
  PERFORM balance.loss_stock_on_hand_qty(_test_facility_code, _test_document_body);
  SELECT on_hand_qty FROM balance.stock WHERE facility_code = _test_facility_code AND part_code = 'good1' INTO _good1_on_hand_qty;
  SELECT on_hand_qty FROM balance.stock WHERE facility_code = _test_facility_code AND part_code = 'good2' INTO _good2_on_hand_qty;

  PERFORM pgunit.assert_equals(_test_good1_on_hand_qty, _good1_on_hand_qty, 'Incorrect _good1_on_hand_qty value');
  PERFORM pgunit.assert_equals(_test_good2_on_hand_qty, _good2_on_hand_qty, 'Incorrect _good1_on_hand_qty value');

END;
$$;


ALTER FUNCTION tests.__balance__loss_stock_on_hand_qty() OWNER TO postgres;

--
-- TOC entry 723 (class 1255 OID 62649)
-- Name: __balance__loss_stock_on_order_qty(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__balance__loss_stock_on_order_qty() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_document_body CONSTANT common.document_body[] := ARRAY[('good1', 100, 'm'), ('good2', 200, 'm')]::common.document_body[];
  _test_good1_on_order_qty CONSTANT common.quantity := 900;
  _test_good2_on_order_qty CONSTANT common.quantity := 800;
  _test_facility_code CONSTANT character varying := 'A1';
  _good1_on_order_qty common.quantity;
  _good2_on_order_qty common.quantity;
BEGIN
  
  RAISE DEBUG '#trace Check __balance__loss_stock_on_order_qty()';

  INSERT INTO balance.stock VALUES ('B1', 'good1', 'm', 1000, 1000, 1000, 1000, 1000);
  INSERT INTO balance.stock VALUES ('A1', 'good1', 'm', 1000, 1000, 1000, 1000, 1000);
  INSERT INTO balance.stock VALUES ('A1', 'good2', 'm', 1000, 1000, 1000, 1000, 1000);
  
  PERFORM balance.loss_stock_on_order_qty(_test_facility_code, _test_document_body);
  SELECT on_order_qty FROM balance.stock WHERE facility_code = _test_facility_code AND part_code = 'good1' INTO _good1_on_order_qty;
  SELECT on_order_qty FROM balance.stock WHERE facility_code = _test_facility_code AND part_code = 'good2' INTO _good2_on_order_qty;

  PERFORM pgunit.assert_equals(_test_good1_on_order_qty, _good1_on_order_qty, 'Incorrect _good1_on_order_qty value');
  PERFORM pgunit.assert_equals(_test_good2_on_order_qty, _good2_on_order_qty, 'Incorrect _good1_on_order_qty value');

END;
$$;


ALTER FUNCTION tests.__balance__loss_stock_on_order_qty() OWNER TO postgres;

--
-- TOC entry 724 (class 1255 OID 62650)
-- Name: __balance__loss_stock_reserved_qty(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__balance__loss_stock_reserved_qty() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_document_body CONSTANT common.document_body[] := ARRAY[('good1', 100, 'm'), ('good2', 200, 'm')]::common.document_body[];
  _test_good1_reserved_qty CONSTANT common.quantity := 900;
  _test_good2_reserved_qty CONSTANT common.quantity := 800;
  _test_facility_code CONSTANT character varying := 'A1';
  _good1_reserved_qty common.quantity;
  _good2_reserved_qty common.quantity;
BEGIN
  
  RAISE DEBUG '#trace Check __balance__loss_stock_reserved_qty()';

  INSERT INTO balance.stock VALUES ('B1', 'good1', 'm', 1000, 1000, 1000, 1000, 1000);
  INSERT INTO balance.stock VALUES ('A1', 'good1', 'm', 1000, 1000, 1000, 1000, 1000);
  INSERT INTO balance.stock VALUES ('A1', 'good2', 'm', 1000, 1000, 1000, 1000, 1000);
  
  PERFORM balance.loss_stock_reserved_qty(_test_facility_code, _test_document_body);
  SELECT reserved_qty FROM balance.stock WHERE facility_code = _test_facility_code AND part_code = 'good1' INTO _good1_reserved_qty;
  SELECT reserved_qty FROM balance.stock WHERE facility_code = _test_facility_code AND part_code = 'good2' INTO _good2_reserved_qty;

  PERFORM pgunit.assert_equals(_test_good1_reserved_qty, _good1_reserved_qty, 'Incorrect _good1_reserved_qty value');
  PERFORM pgunit.assert_equals(_test_good2_reserved_qty, _good2_reserved_qty, 'Incorrect _good1_reserved_qty value');

END;
$$;


ALTER FUNCTION tests.__balance__loss_stock_reserved_qty() OWNER TO postgres;

--
-- TOC entry 728 (class 1255 OID 62668)
-- Name: __claim__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__claim__destroy() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.issue_head;
BEGIN
  
  RAISE DEBUG '#trace Check __claim__destroy()';

  INSERT INTO claim.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CLAIM-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CLAIM-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CLAIM-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  PERFORM claim.destroy(101); -- + add not allowed delete test
  
  _head := claim.get_head(101);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

  _head := claim.get_head(103);
  PERFORM pgunit.assert_not_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__claim__destroy() OWNER TO postgres;

--
-- TOC entry 729 (class 1255 OID 62669)
-- Name: __claim__do_commit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__claim__do_commit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _goal_id bigint;
  _reserve_id bigint;
  _picklist_id bigint;

BEGIN
  
  RAISE DEBUG '#trace Check __claim__do_commit()';

  INSERT INTO schedule.calendar VALUES ('2017-01-01', 1, 1, 1, 1);

  INSERT INTO balance.stock VALUES ('A1', 'good1', 'm', 100, 50, 0, 0, 0);
  INSERT INTO balance.stock VALUES ('A1', 'good2', 'm', 100, 50, 0, 0, 0);

  INSERT INTO claim.head VALUES (101, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CLAIM-01', '2017-03-01', NULL, '2017-03-02', 'B1', 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  INSERT INTO claim.body VALUES (101, 'good1', 1.0, 'm');
  INSERT INTO claim.body VALUES (101, 'good2', 2.0, 'm');

  PERFORM claim.do_commit(101, true);
  _goal_id := binding.get_goal_binded_to_claim(101);
  _reserve_id := binding.get_reserve_binded_to_goal(_goal_id);
  _picklist_id := binding.get_picklist_binded_to_goal(_goal_id);

  PERFORM pgunit.assert_not_null(_goal_id, 'Incorrect _goal_id value');
  PERFORM pgunit.assert_not_null(_reserve_id, 'Incorrect _reserve_id value');
  PERFORM pgunit.assert_not_null(_picklist_id, 'Incorrect _picklist_id value');

END;
$$;


ALTER FUNCTION tests.__claim__do_commit() OWNER TO postgres;

--
-- TOC entry 730 (class 1255 OID 62670)
-- Name: __claim__generate_display_name(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__claim__generate_display_name() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _display_name character varying;
BEGIN
  
  RAISE DEBUG '#trace Check __claim__generate_display_name()';
  
  INSERT INTO schedule.calendar VALUES ('2017-01-01', 1, 1, 1, 1);
  
  _display_name := claim.generate_display_name('2017-01-01', 'A1');
  PERFORM pgunit.assert_equals('GDD-A1-AB1AA0', _display_name, 'Incorrect _abbrevation value');

END;
$$;


ALTER FUNCTION tests.__claim__generate_display_name() OWNER TO postgres;

--
-- TOC entry 731 (class 1255 OID 62671)
-- Name: __claim__get_body(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__claim__get_body() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _body common.document_body[];
  _test_body CONSTANT common.document_body[] := ARRAY[('good2', 2.0, 'm'), ('good3', 3.0, 'm')]::common.document_body[];
BEGIN
  
  RAISE DEBUG '#trace Check __claim__get_body()';

  INSERT INTO claim.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CLAIM-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CLAIM-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CLAIM-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  INSERT INTO claim.body VALUES (101, 'good1', 1.0, 'm');
  INSERT INTO claim.body VALUES (103, 'good2', 2.0, 'm');
  INSERT INTO claim.body VALUES (103, 'good3', 3.0, 'm');

  _body := claim.get_body(103);
  PERFORM pgunit.assert_array_equals(_test_body, _body, 'Incorrect _body value');

END;
$$;


ALTER FUNCTION tests.__claim__get_body() OWNER TO postgres;

--
-- TOC entry 732 (class 1255 OID 62672)
-- Name: __claim__get_gid_by_id(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__claim__get_gid_by_id() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_id CONSTANT bigint := 102;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a'::uuid;
  _gid uuid;
BEGIN
  
  RAISE DEBUG '#trace Check __claim__get_gid_by_id()';

  INSERT INTO claim.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CLAIM-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CLAIM-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CLAIM-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  _gid := claim.get_gid_by_id(_test_id);
  PERFORM pgunit.assert_equals(_test_gid, _gid, 'Incorrect _gid value');

END;
$$;


ALTER FUNCTION tests.__claim__get_gid_by_id() OWNER TO postgres;

--
-- TOC entry 733 (class 1255 OID 62673)
-- Name: __claim__get_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__claim__get_head() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.issue_head;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a'::uuid;
  _test_display_name CONSTANT character varying := 'CLAIM-02';
  _test_document_date CONSTANT date := '2017-02-01'::date;
  _test_ship_to CONSTANT character varying := 'A1';
  _test_ship_from CONSTANT character varying := 'B1';
  _test_curr_fsmt CONSTANT common.document_fsmt := 'COMMITTED'::common.document_fsmt;
  _test_doctype CONSTANT common.document_kind := 'CLAIM'::common.document_kind;
  _test_due_date CONSTANT date := '2017-02-02'::date;
BEGIN
  
  RAISE DEBUG '#trace Check __claim__get_head()';

  INSERT INTO claim.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CLAIM-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CLAIM-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CLAIM-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  _head := claim.get_head(102);
  PERFORM pgunit.assert_equals(_test_gid, _head.gid, 'Incorrect gid value');
  PERFORM pgunit.assert_equals(_test_display_name, _head.display_name, 'Incorrect display_name value');
  PERFORM pgunit.assert_equals(_test_document_date, _head.document_date, 'Incorrect document_date value');
  PERFORM pgunit.assert_equals(_test_ship_to, _head.addressee, 'Incorrect ship_to value');
  PERFORM pgunit.assert_equals(_test_ship_from, _head.facility_code, 'Incorrect ship_from value');
  PERFORM pgunit.assert_equals(_test_curr_fsmt, _head.curr_fsmt, 'Incorrect curr_fsmt value');
  PERFORM pgunit.assert_equals(_test_doctype, _head.doctype, 'Incorrect doctype value');
  PERFORM pgunit.assert_equals(_test_due_date, _head.due_date, 'Incorrect due_date value');

  _head := claim.get_head(103);
  PERFORM pgunit.assert_not_equals(_test_gid, _head.gid, 'Incorrect gid value');
  
  _head := claim.get_head(104);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__claim__get_head() OWNER TO postgres;

--
-- TOC entry 734 (class 1255 OID 62674)
-- Name: __claim__get_head_batch(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__claim__get_head_batch() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _heads common.issue_head[];
  _head common.issue_head;
  _array_lengh integer;
  _test_array_lengh CONSTANT integer := 2;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a'::uuid;
  _test_display_name CONSTANT character varying := 'CLAIM-02';
  _test_document_date CONSTANT date := '2017-02-01'::date;
  _test_ship_to CONSTANT character varying := 'A1';
  _test_ship_from CONSTANT character varying := 'B1';
  _test_curr_fsmt CONSTANT common.document_fsmt := 'COMMITTED'::common.document_fsmt;
  _test_doctype CONSTANT common.document_kind := 'CLAIM'::common.document_kind;
  _test_due_date CONSTANT date := '2017-02-02'::date;
BEGIN
  
  RAISE DEBUG '#trace Check __claim__get_head_batch()';

  INSERT INTO claim.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CLAIM-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CLAIM-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CLAIM-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  _heads := claim.get_head_batch(ARRAY[102,103]::bigint[]);
  _array_lengh := array_length(_heads, 1);
  _head := _heads[1];
  PERFORM pgunit.assert_equals(_test_array_lengh, _array_lengh, 'Incorrect _array_lengh value');
  PERFORM pgunit.assert_equals(_test_gid, _head.gid, 'Incorrect gid value');
  PERFORM pgunit.assert_equals(_test_display_name, _head.display_name, 'Incorrect display_name value');
  PERFORM pgunit.assert_equals(_test_document_date, _head.document_date, 'Incorrect document_date value');
  PERFORM pgunit.assert_equals(_test_ship_to, _head.addressee, 'Incorrect ship_to value');
  PERFORM pgunit.assert_equals(_test_ship_from, _head.facility_code, 'Incorrect ship_from value');
  PERFORM pgunit.assert_equals(_test_curr_fsmt, _head.curr_fsmt, 'Incorrect curr_fsmt value');
  PERFORM pgunit.assert_equals(_test_doctype, _head.doctype, 'Incorrect doctype value');
  PERFORM pgunit.assert_equals(_test_due_date, _head.due_date, 'Incorrect due_date value');

END;
$$;


ALTER FUNCTION tests.__claim__get_head_batch() OWNER TO postgres;

--
-- TOC entry 735 (class 1255 OID 62675)
-- Name: __claim__get_head_batch_proposed(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__claim__get_head_batch_proposed() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _heads common.issue_head[];
  _head common.issue_head;
  _array_lengh integer;
  _test_array_lengh CONSTANT integer := 1;
  _test_start_date CONSTANT date := '2017-03-01'::date;
  _test_end_date CONSTANT date := '2017-03-01'::date;
  _test_gid CONSTANT uuid := 'f20d7196-01d1-11e7-b441-d4bed939923a'::uuid;
  _test_display_name CONSTANT character varying := 'CLAIM-03';
  _test_document_date CONSTANT date := '2017-03-01'::date;
  _test_ship_to CONSTANT character varying := 'A1';
  _test_ship_from CONSTANT character varying := 'B1';
  _test_curr_fsmt CONSTANT common.document_fsmt := 'PROPOSED'::common.document_fsmt;
  _test_doctype CONSTANT common.document_kind := 'CLAIM'::common.document_kind;
  _test_due_date CONSTANT date := '2017-03-02'::date;
BEGIN
  
  RAISE DEBUG '#trace Check __claim__get_head_batch_proposed()';

  INSERT INTO claim.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CLAIM-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CLAIM-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CLAIM-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  _heads := claim.get_head_batch_proposed(_test_ship_from, _test_start_date, _test_end_date);

  _array_lengh := array_length(_heads, 1);
  _head := _heads[1];
  PERFORM pgunit.assert_equals(_test_array_lengh, _array_lengh, 'Incorrect _array_lengh value');
  PERFORM pgunit.assert_equals(_test_gid, _head.gid, 'Incorrect gid value');
  PERFORM pgunit.assert_equals(_test_display_name, _head.display_name, 'Incorrect display_name value');
  PERFORM pgunit.assert_equals(_test_document_date, _head.document_date, 'Incorrect document_date value');
  PERFORM pgunit.assert_equals(_test_ship_to, _head.addressee, 'Incorrect ship_to value');
  PERFORM pgunit.assert_equals(_test_ship_from, _head.facility_code, 'Incorrect ship_from value');
  PERFORM pgunit.assert_equals(_test_curr_fsmt, _head.curr_fsmt, 'Incorrect curr_fsmt value');
  PERFORM pgunit.assert_equals(_test_doctype, _head.doctype, 'Incorrect doctype value');
  PERFORM pgunit.assert_equals(_test_due_date, _head.due_date, 'Incorrect due_date value');

END;
$$;


ALTER FUNCTION tests.__claim__get_head_batch_proposed() OWNER TO postgres;

--
-- TOC entry 736 (class 1255 OID 62676)
-- Name: __claim__get_id_by_gid(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__claim__get_id_by_gid() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_id CONSTANT bigint := 102;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a'::uuid;
  _id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __claim__get_id_by_gid()';

  INSERT INTO claim.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CLAIM-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CLAIM-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CLAIM-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  _id := claim.get_id_by_gid(_test_gid);
  PERFORM pgunit.assert_equals(_test_id, _id, 'Incorrect _id value');

END;
$$;


ALTER FUNCTION tests.__claim__get_id_by_gid() OWNER TO postgres;

--
-- TOC entry 737 (class 1255 OID 62677)
-- Name: __claim__numerator_nextval(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__claim__numerator_nextval() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _numerator integer;
  _test_numerator_a1 CONSTANT integer := 11;
  _test_numerator_g1 CONSTANT integer := 1;
  _test_week_a1 CONSTANT integer := 2;
  _test_week_g1 CONSTANT integer := 10;
  _test_facility_code_a1 CONSTANT character varying := 'A1';
  _test_facility_code_g1 character varying := 'G1';
BEGIN
  
  RAISE DEBUG '#trace Check __claim__numerator_nextval()';

  INSERT INTO claim.numerator VALUES ('A1', 1, 100);
  INSERT INTO claim.numerator VALUES ('A1', 2, 10);
  INSERT INTO claim.numerator VALUES ('B1', 1, 200);

  _numerator := claim.numerator_nextval(_test_facility_code_a1, _test_week_a1);
  PERFORM pgunit.assert_equals(_test_numerator_a1, _numerator, 'Incorrect _numerator value');

  _numerator := claim.numerator_nextval(_test_facility_code_g1, _test_week_g1);
  PERFORM pgunit.assert_equals(_test_numerator_g1, _numerator, 'Incorrect _numerator value');

END;
$$;


ALTER FUNCTION tests.__claim__numerator_nextval() OWNER TO postgres;

--
-- TOC entry 738 (class 1255 OID 62678)
-- Name: __claim__resubmit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__claim__resubmit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.issue_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','CLAIM-01','2017-01-01','A1','PROPOSED','CLAIM','B1','2017-02-01')]::common.issue_head[];
  _test_body_submit CONSTANT common.document_body[] := ARRAY[('good1',10,'m'), ('good2',20,'m')]::common.document_body[];
  _test_body_resubmit CONSTANT common.document_body[] := ARRAY[('good3',10,'m'), ('good4',20,'m')]::common.document_body[];
  _head common.issue_head;
  _body common.document_body[];
  _document_id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __claim__resubmit()';
  
  _document_id := claim.submit(_test_head[1], _test_body_submit);
  PERFORM claim.resubmit(_document_id, _test_body_resubmit);
  _head := claim.get_head(_document_id);
  _body := claim.get_body(_document_id);
  --PERFORM pgunit.assert_equals(_test_head[1], _head, 'Incorrect _head value');
  PERFORM pgunit.assert_array_equals(_test_body_resubmit, _body, 'Incorrect _body value');


END;
$$;


ALTER FUNCTION tests.__claim__resubmit() OWNER TO postgres;

--
-- TOC entry 739 (class 1255 OID 62679)
-- Name: __claim__submit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__claim__submit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.issue_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','CLAIM-01','2017-01-01','A1','PROPOSED','CLAIM','B1','2017-02-01')]::common.issue_head[];
  _test_body CONSTANT common.document_body[] := ARRAY[('good1',10,'m'), ('good2',20,'m')]::common.document_body[];
  _head common.issue_head;
  _body common.document_body[];
  _document_id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __claim__submit()';
  
  _document_id := claim.submit(_test_head[1], _test_body);
  _head := claim.get_head(_document_id);
  _body := claim.get_body(_document_id);
  --PERFORM pgunit.assert_equals(_test_head[1], _head, 'Incorrect _head value');
  PERFORM pgunit.assert_array_equals(_test_body, _body, 'Incorrect _body value');


END;
$$;


ALTER FUNCTION tests.__claim__submit() OWNER TO postgres;

--
-- TOC entry 740 (class 1255 OID 62680)
-- Name: __common__convert_inbound_to_document_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__common__convert_inbound_to_document_head() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_goal_head CONSTANT common.goal_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','GOAL-01','2017-01-01','A1','PROPOSED','GOAL')]::common.goal_head[];
  _test_document_head CONSTANT common.document_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','CUTOFF-01','2017-01-01','A1','PROPOSED','CUTOFF')]::common.document_head[];
  _test_receipt_head CONSTANT common.receipt_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','RECEIPT-01','2017-01-01','A1','PROPOSED','RECEIPT','B1')]::common.receipt_head[];
  _test_converted_head CONSTANT common.document_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','RECEIPT-01','2017-01-01','A1','PROPOSED','RECEIPT')]::common.document_head[];
  _test_issue_head CONSTANT common.issue_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','ISSUE-01','2017-01-01','A1','PROPOSED','ISSUE','B1','2017-02-01')]::common.issue_head[];
  _document_head common.document_head;

BEGIN
  
  RAISE DEBUG '#trace Check __common__convert_inbound_to_document_head()';
  
  _document_head := common.convert_inbound_to_document_head(_test_receipt_head[1]);
  RAISE NOTICE 'NOTICE %', _document_head;

  PERFORM pgunit.assert_equals(_test_converted_head[1], _document_head, 'Incorrect _document_head value');

END;
$$;


ALTER FUNCTION tests.__common__convert_inbound_to_document_head() OWNER TO postgres;

--
-- TOC entry 741 (class 1255 OID 62681)
-- Name: __common__convert_outbound_to_document_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__common__convert_outbound_to_document_head() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_issue_head CONSTANT common.issue_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','ISSUE-01','2017-01-01','A1','PROPOSED','ISSUE','B1','2017-02-01')]::common.issue_head[];
  _test_converted_head CONSTANT common.document_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','ISSUE-01','2017-01-01','A1','PROPOSED','ISSUE')]::common.document_head[];
  _document_head common.document_head;

BEGIN
  
  RAISE DEBUG '#trace Check __common__convert_outbound_to_document_head()';
  
  _document_head := common.convert_outbound_to_document_head(_test_issue_head[1]);

  PERFORM pgunit.assert_equals(_test_converted_head[1], _document_head, 'Incorrect _document_head value');

END;
$$;


ALTER FUNCTION tests.__common__convert_outbound_to_document_head() OWNER TO postgres;

--
-- TOC entry 742 (class 1255 OID 62682)
-- Name: __common__convert_stocktake_to_document_body(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__common__convert_stocktake_to_document_body() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _body common.document_body;
  _test_body CONSTANT common.document_body[] := ARRAY[('good2', 2.0, 'm')]::common.document_body[];
  _test_stocktake_body CONSTANT common.stocktake_body[] := ARRAY[('good2', 2.0, 'm', 0.0)]::common.stocktake_body[];
BEGIN
  
  RAISE DEBUG '#trace Check __common__convert_stocktake_to_document_body()';

  _body := common.convert_stocktake_to_document_body(_test_stocktake_body[1]);
  PERFORM pgunit.assert_equals(_test_body[1], _body, 'Incorrect _body value');

END;
$$;


ALTER FUNCTION tests.__common__convert_stocktake_to_document_body() OWNER TO postgres;

--
-- TOC entry 743 (class 1255 OID 62683)
-- Name: __common__get_document_abbrevation(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__common__get_document_abbrevation() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _abbrevation character varying;
BEGIN
  
  RAISE DEBUG '#trace Check __common__get_document_abbrevation()';
  
  _abbrevation := common.get_document_abbrevation('ISSUE');
  PERFORM pgunit.assert_equals('GIN', _abbrevation, 'Incorrect _abbrevation value');

END;
$$;


ALTER FUNCTION tests.__common__get_document_abbrevation() OWNER TO postgres;

--
-- TOC entry 744 (class 1255 OID 62686)
-- Name: __common__get_stocktake_mode(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__common__get_stocktake_mode() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _cutoff_policy common.policy_mode;
  _test_cutoff_policy CONSTANT common.policy_mode := 'ENFORCING'::common.policy_mode;
BEGIN
  
  RAISE DEBUG '#trace Check __common__get_stocktake_mode()';

  TRUNCATE TABLE common.stocktake_policy;

  INSERT INTO common.stocktake_policy VALUES ('ISSUE', 'ENFORCING');

  _cutoff_policy := common.get_stocktake_mode('ISSUE');

  PERFORM pgunit.assert_equals(_test_cutoff_policy, _cutoff_policy, 'Incorrect _cutoff_policy value');

END;
$$;


ALTER FUNCTION tests.__common__get_stocktake_mode() OWNER TO postgres;

--
-- TOC entry 745 (class 1255 OID 62696)
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
      (101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'REVERTED', '2018-01-10', 101, 'pcs'),
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
-- TOC entry 746 (class 1255 OID 62697)
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
      ( 101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'REVERTED', '2018-01-10', 101, 'pcs' ),
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
-- TOC entry 747 (class 1255 OID 62698)
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
-- TOC entry 748 (class 1255 OID 62699)
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
-- TOC entry 749 (class 1255 OID 62700)
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
-- TOC entry 750 (class 1255 OID 62701)
-- Name: __ebom__resubmit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__ebom__resubmit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.ebom_head[] := ARRAY[(203,'9b2952fa-01d1-11e7-b440-d4bed939923a','11с32п-50х40: definition',3,'2017-10-21','PROPOSED','EBOM',('11.32.050-001',1,1.0000,'pcs','ASSEMBLY'))]::common.ebom_head[];
  _test_body_submit CONSTANT common.component_specification[] := ARRAY[('80.31.050-001',1,1.0000,'pcs','ASSEMBLY'), ('72.01.009-001',1,2.0000,'pcs','PART')]::common.component_specification[];
  _test_body_resubmit CONSTANT common.component_specification[] := ARRAY[('80.31.050-001',1,2.0000,'pcs','ASSEMBLY'), ('72.01.009-001',1,4.0000,'pcs','PART')]::common.component_specification[];
  _head common.ebom_head;
  _body common.component_specification[];
  _document_id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __ebom__resubmit()';

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
      ( 101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'REVERTED', '2018-01-10', 101, 'pcs' ),
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
  
  _document_id := ebom.submit(_test_head[1], _test_body_submit);
  PERFORM ebom.resubmit(_document_id, _test_body_resubmit);
  _head := ebom.get_head(_document_id);
  _body := ebom.get_body(_document_id);
  --PERFORM pgunit.assert_equals(_test_head[1], _head, 'Incorrect _head value');
  PERFORM pgunit.assert_array_equals(_test_body_resubmit, _body, 'Incorrect _body value');


END;
$$;


ALTER FUNCTION tests.__ebom__resubmit() OWNER TO postgres;

--
-- TOC entry 751 (class 1255 OID 62702)
-- Name: __ebom__submit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__ebom__submit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.ebom_head[] := ARRAY[(203,'9b2952fa-01d1-11e7-b440-d4bed939923a','11с32п-50х40: definition',3,'2017-10-21','PROPOSED','EBOM',('11.32.050-001',1,1.0000,'pcs','ASSEMBLY'))]::common.ebom_head[];
  _test_body CONSTANT common.component_specification[] := ARRAY[('80.31.050-001',1,1.0000,'pcs','ASSEMBLY'), ('72.01.009-001',1,2.0000,'pcs','PART')]::common.component_specification[];
  _head common.ebom_head;
  _body common.component_specification[];
  _document_id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __ebom__submit()';

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
      ( 101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'REVERTED', '2018-01-10', 101, 'pcs' ),
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
  
  _document_id := ebom.submit(_test_head[1], _test_body);
  _head := ebom.get_head(_document_id);
  _body := ebom.get_body(_document_id);
  --PERFORM pgunit.assert_equals(_test_head[1], _head, 'Incorrect _head value');
  PERFORM pgunit.assert_array_equals(_test_body, _body, 'Incorrect _body value');


END;
$$;


ALTER FUNCTION tests.__ebom__submit() OWNER TO postgres;

--
-- TOC entry 752 (class 1255 OID 62703)
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
-- TOC entry 753 (class 1255 OID 62704)
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
-- TOC entry 754 (class 1255 OID 62705)
-- Name: __equipment__submit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__equipment__submit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.equipment_head[] := ARRAY[(103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', 'EQUIPMENT-002', 1, 'EQUIPMENT-002', '2018-01-16', 'EQUIPMENT')]::common.equipment_head[];
  _head common.equipment_head;
  _document_id bigint;
BEGIN

  RAISE DEBUG '#trace Check __equipment__submit()';
  
  _document_id := equipment.submit(_test_head[1]);
  _head := equipment.get_head(_document_id);

  RAISE DEBUG '%', _head;
  RAISE DEBUG '%', _test_head[1]::common.equipment_head;

  --PERFORM pgunit.assert_array_equals(_test_head[1]::common.equipment_head, _head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__equipment__submit() OWNER TO postgres;

--
-- TOC entry 755 (class 1255 OID 62706)
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
      (101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', 'fl-16-50', 1, '2018-01-10', NULL, NULL, 'REVERTED', '2018-01-10', 101, 'pcs'),
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
-- TOC entry 757 (class 1255 OID 62707)
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
      (101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', 'fl-16-50', 1, '2018-01-10', NULL, NULL, 'REVERTED', '2018-01-10', 101, 'pcs'),
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
-- TOC entry 758 (class 1255 OID 62708)
-- Name: __inventory__resubmit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__inventory__resubmit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.inventory_head[] := ARRAY[(103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', 'fl-25-50', '20.25.50-001', 2, '2018-01-16', 'pcs', 'PROPOSED', 'INVENTORY')]::common.inventory_head[];
  _test_meas_submit CONSTANT common.unit_conversion_type[] := ARRAY[('pcs', 'pcs', 1), ('pcs', 'g', 1000)]::common.unit_conversion_type[];
  _test_meas_resubmit CONSTANT common.unit_conversion_type[] := ARRAY[('pcs', 'pcs', 1), ('pcs', 'kg', 10)]::common.unit_conversion_type[];
  _test_kind_submit CONSTANT common.inventory_kind[] := ARRAY[('ASSEMBLY'), ('STORABLE')]::common.inventory_kind[];
  _test_kind_resubmit CONSTANT common.inventory_kind[] := ARRAY[('PART'), ('CONSUMABLE')]::common.inventory_kind[];
  _head common.inventory_head;
  _meas common.unit_conversion_type[];
  _kind common.inventory_kind[];
  _document_id bigint;
BEGIN

  RAISE DEBUG '#trace Check __inventory__resubmit()';
  
  _document_id := inventory.submit(_test_head[1], _test_meas_submit, _test_kind_submit);
  PERFORM inventory.resubmit(_document_id, _test_meas_resubmit, _test_kind_resubmit);
  _head := inventory.get_head(_document_id);
  _meas := inventory.get_meas_spec(_document_id);
  _kind := inventory.get_kind_spec(_document_id);

  PERFORM pgunit.assert_array_equals(_meas, _test_meas_resubmit, 'Incorrect _meas_resubmit value');
  PERFORM pgunit.assert_array_equals(_kind, _test_kind_resubmit, 'Incorrect _kind_resubmit value');

END;
$$;


ALTER FUNCTION tests.__inventory__resubmit() OWNER TO postgres;

--
-- TOC entry 759 (class 1255 OID 62709)
-- Name: __inventory__submit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__inventory__submit() RETURNS void
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

  RAISE DEBUG '#trace Check __inventory__submit()';
  
  _document_id := inventory.submit(_test_head[1], _test_meas, _test_kind);
  _head := inventory.get_head(_document_id);
  _meas := inventory.get_meas_spec(_document_id);
  _kind := inventory.get_kind_spec(_document_id);

  -- PERFORM pgunit.assert_array_equals(_test_head[1], _head, 'Incorrect _head value');
  PERFORM pgunit.assert_array_equals(_test_meas, _meas, 'Incorrect _meas value');
  PERFORM pgunit.assert_array_equals(_test_kind, _kind, 'Incorrect _kind value');


END;
$$;


ALTER FUNCTION tests.__inventory__submit() OWNER TO postgres;

--
-- TOC entry 760 (class 1255 OID 62710)
-- Name: __issue__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__issue__destroy() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.issue_head;
BEGIN
  
  RAISE DEBUG '#trace Check __issue__destroy()';

  INSERT INTO issue.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'ISSUE-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'ISSUE-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'ISSUE-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  PERFORM issue.destroy(101); -- + add not allowed delete test
  
  _head := issue.get_head(101);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

  _head := issue.get_head(103);
  PERFORM pgunit.assert_not_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__issue__destroy() OWNER TO postgres;

--
-- TOC entry 761 (class 1255 OID 62711)
-- Name: __issue__do_commit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__issue__do_commit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _goal_id bigint;
  _despatch_id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __issue__do_comit()';

  INSERT INTO balance.stock VALUES ('A1', 'good1', 'm', 100, 50, 0, 0, 0);
  INSERT INTO balance.stock VALUES ('A1', 'good2', 'm', 100, 50, 0, 0, 0);

  INSERT INTO issue.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'ISSUE-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  
  INSERT INTO issue.body VALUES (101, 'good1', 50.0, 'm');
  INSERT INTO issue.body VALUES (101, 'good2', 50.0, 'm');

  PERFORM issue.do_commit(101, true);
  _goal_id := binding.get_goal_binded_to_issue(101);
  _despatch_id := binding.get_despatch_binded_to_goal(_goal_id);

  PERFORM pgunit.assert_not_null(_goal_id, 'Incorrect _goal_id value');
  PERFORM pgunit.assert_not_null(_despatch_id, 'Incorrect _despatch_id value');

END;
$$;


ALTER FUNCTION tests.__issue__do_commit() OWNER TO postgres;

--
-- TOC entry 762 (class 1255 OID 62712)
-- Name: __issue__generate_display_name(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__issue__generate_display_name() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _display_name character varying;
BEGIN
  
  RAISE DEBUG '#trace Check __issue__generate_display_name()';
  
  INSERT INTO schedule.calendar VALUES ('2017-01-01', 1, 1, 1, 1);
  
  _display_name := issue.generate_display_name('2017-01-01', 'A1');
  PERFORM pgunit.assert_equals('GIN-A1-AB1AA0', _display_name, 'Incorrect _abbrevation value');

END;
$$;


ALTER FUNCTION tests.__issue__generate_display_name() OWNER TO postgres;

--
-- TOC entry 764 (class 1255 OID 62713)
-- Name: __issue__get_body(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__issue__get_body() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _body common.document_body[];
  _test_body CONSTANT common.document_body[] := ARRAY[('good2', 2.0, 'm'), ('good3', 3.0, 'm')]::common.document_body[];
BEGIN
  
  RAISE DEBUG '#trace Check __issue__get_body()';

  INSERT INTO issue.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'ISSUE-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'ISSUE-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'ISSUE-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  INSERT INTO issue.body VALUES (101, 'good1', 1.0, 'm');
  INSERT INTO issue.body VALUES (103, 'good2', 2.0, 'm');
  INSERT INTO issue.body VALUES (103, 'good3', 3.0, 'm');

  _body := issue.get_body(103);
  PERFORM pgunit.assert_array_equals(_test_body, _body, 'Incorrect _body value');

END;
$$;


ALTER FUNCTION tests.__issue__get_body() OWNER TO postgres;

--
-- TOC entry 765 (class 1255 OID 62714)
-- Name: __issue__get_gid_by_id(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__issue__get_gid_by_id() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_id CONSTANT bigint := 102;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a'::uuid;
  _gid uuid;
BEGIN
  
  RAISE DEBUG '#trace Check __issue__get_gid_by_id()';

  INSERT INTO issue.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'ISSUE-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'ISSUE-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'ISSUE-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  _gid := issue.get_gid_by_id(_test_id);
  PERFORM pgunit.assert_equals(_test_gid, _gid, 'Incorrect _gid value');

END;
$$;


ALTER FUNCTION tests.__issue__get_gid_by_id() OWNER TO postgres;

--
-- TOC entry 766 (class 1255 OID 62715)
-- Name: __issue__get_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__issue__get_head() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.issue_head;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a'::uuid;
  _test_display_name CONSTANT character varying := 'ISSUE-02';
  _test_document_date CONSTANT date := '2017-02-01'::date;
  _test_ship_to CONSTANT character varying := 'A1';
  _test_ship_from CONSTANT character varying := 'B1';
  _test_curr_fsmt CONSTANT common.document_fsmt := 'COMMITTED'::common.document_fsmt;
  _test_doctype CONSTANT common.document_kind := 'ISSUE'::common.document_kind;
  _test_due_date CONSTANT date := '2017-02-02'::date;
BEGIN
  
  RAISE DEBUG '#trace Check __issue__get_head()';

  INSERT INTO issue.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'ISSUE-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'ISSUE-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'ISSUE-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  _head := issue.get_head(102);
  PERFORM pgunit.assert_equals(_test_gid, _head.gid, 'Incorrect gid value');
  PERFORM pgunit.assert_equals(_test_display_name, _head.display_name, 'Incorrect display_name value');
  PERFORM pgunit.assert_equals(_test_document_date, _head.document_date, 'Incorrect document_date value');
  PERFORM pgunit.assert_equals(_test_ship_to, _head.addressee, 'Incorrect ship_to value');
  PERFORM pgunit.assert_equals(_test_ship_from, _head.facility_code, 'Incorrect ship_from value');
  PERFORM pgunit.assert_equals(_test_curr_fsmt, _head.curr_fsmt, 'Incorrect curr_fsmt value');
  PERFORM pgunit.assert_equals(_test_doctype, _head.doctype, 'Incorrect doctype value');
  PERFORM pgunit.assert_equals(_test_due_date, _head.due_date, 'Incorrect due_date value');

  _head := issue.get_head(103);
  PERFORM pgunit.assert_not_equals(_test_gid, _head.gid, 'Incorrect gid value');
  
  _head := issue.get_head(104);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__issue__get_head() OWNER TO postgres;

--
-- TOC entry 767 (class 1255 OID 62716)
-- Name: __issue__get_head_batch(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__issue__get_head_batch() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _heads common.issue_head[];
  _head common.issue_head;
  _array_lengh integer;
  _test_array_lengh CONSTANT integer := 2;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a'::uuid;
  _test_display_name CONSTANT character varying := 'ISSUE-02';
  _test_document_date CONSTANT date := '2017-02-01'::date;
  _test_ship_to CONSTANT character varying := 'A1';
  _test_ship_from CONSTANT character varying := 'B1';
  _test_curr_fsmt CONSTANT common.document_fsmt := 'COMMITTED'::common.document_fsmt;
  _test_doctype CONSTANT common.document_kind := 'ISSUE'::common.document_kind;
  _test_due_date CONSTANT date := '2017-02-02'::date;
BEGIN
  
  RAISE DEBUG '#trace Check __issue__get_head_batch()';

  INSERT INTO issue.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'ISSUE-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'ISSUE-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'ISSUE-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  _heads := issue.get_head_batch(ARRAY[102,103]::bigint[]);
  _array_lengh := array_length(_heads, 1);
  _head := _heads[1];
  PERFORM pgunit.assert_equals(_test_array_lengh, _array_lengh, 'Incorrect _array_lengh value');
  PERFORM pgunit.assert_equals(_test_gid, _head.gid, 'Incorrect gid value');
  PERFORM pgunit.assert_equals(_test_display_name, _head.display_name, 'Incorrect display_name value');
  PERFORM pgunit.assert_equals(_test_document_date, _head.document_date, 'Incorrect document_date value');
  PERFORM pgunit.assert_equals(_test_ship_to, _head.addressee, 'Incorrect ship_to value');
  PERFORM pgunit.assert_equals(_test_ship_from, _head.facility_code, 'Incorrect ship_from value');
  PERFORM pgunit.assert_equals(_test_curr_fsmt, _head.curr_fsmt, 'Incorrect curr_fsmt value');
  PERFORM pgunit.assert_equals(_test_doctype, _head.doctype, 'Incorrect doctype value');
  PERFORM pgunit.assert_equals(_test_due_date, _head.due_date, 'Incorrect due_date value');

END;
$$;


ALTER FUNCTION tests.__issue__get_head_batch() OWNER TO postgres;

--
-- TOC entry 768 (class 1255 OID 62717)
-- Name: __issue__get_head_batch_proposed(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__issue__get_head_batch_proposed() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _heads common.issue_head[];
  _head common.issue_head;
  _array_lengh integer;
  _test_array_lengh CONSTANT integer := 1;
  _test_start_date CONSTANT date := '2017-03-01'::date;
  _test_end_date CONSTANT date := '2017-03-01'::date;
  _test_gid CONSTANT uuid := 'f20d7196-01d1-11e7-b441-d4bed939923a'::uuid;
  _test_display_name CONSTANT character varying := 'ISSUE-03';
  _test_document_date CONSTANT date := '2017-03-01'::date;
  _test_ship_to CONSTANT character varying := 'A1';
  _test_ship_from CONSTANT character varying := 'B1';
  _test_curr_fsmt CONSTANT common.document_fsmt := 'PROPOSED'::common.document_fsmt;
  _test_doctype CONSTANT common.document_kind := 'ISSUE'::common.document_kind;
  _test_due_date CONSTANT date := '2017-03-02'::date;
BEGIN
  
  RAISE DEBUG '#trace Check __issue__get_head_batch_proposed()';

  INSERT INTO issue.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'ISSUE-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'ISSUE-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'ISSUE-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  _heads := issue.get_head_batch_proposed(_test_ship_from, _test_start_date, _test_end_date);

  _array_lengh := array_length(_heads, 1);
  _head := _heads[1];
  PERFORM pgunit.assert_equals(_test_array_lengh, _array_lengh, 'Incorrect _array_lengh value');
  PERFORM pgunit.assert_equals(_test_gid, _head.gid, 'Incorrect gid value');
  PERFORM pgunit.assert_equals(_test_display_name, _head.display_name, 'Incorrect display_name value');
  PERFORM pgunit.assert_equals(_test_document_date, _head.document_date, 'Incorrect document_date value');
  PERFORM pgunit.assert_equals(_test_ship_to, _head.addressee, 'Incorrect ship_to value');
  PERFORM pgunit.assert_equals(_test_ship_from, _head.facility_code, 'Incorrect ship_from value');
  PERFORM pgunit.assert_equals(_test_curr_fsmt, _head.curr_fsmt, 'Incorrect curr_fsmt value');
  PERFORM pgunit.assert_equals(_test_doctype, _head.doctype, 'Incorrect doctype value');
  PERFORM pgunit.assert_equals(_test_due_date, _head.due_date, 'Incorrect due_date value');

END;
$$;


ALTER FUNCTION tests.__issue__get_head_batch_proposed() OWNER TO postgres;

--
-- TOC entry 769 (class 1255 OID 62718)
-- Name: __issue__get_id_by_gid(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__issue__get_id_by_gid() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_id CONSTANT bigint := 102;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a'::uuid;
  _id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __issue__get_id_by_gid()';

  INSERT INTO issue.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'ISSUE-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'ISSUE-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'ISSUE-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  _id := issue.get_id_by_gid(_test_gid);
  PERFORM pgunit.assert_equals(_test_id, _id, 'Incorrect _id value');

END;
$$;


ALTER FUNCTION tests.__issue__get_id_by_gid() OWNER TO postgres;

--
-- TOC entry 770 (class 1255 OID 62719)
-- Name: __issue__numerator_nextval(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__issue__numerator_nextval() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _numerator integer;
  _test_numerator_a1 CONSTANT integer := 11;
  _test_numerator_g1 CONSTANT integer := 1;
  _test_week_a1 CONSTANT integer := 2;
  _test_week_g1 CONSTANT integer := 10;
  _test_facility_code_a1 CONSTANT character varying := 'A1';
  _test_facility_code_g1 character varying := 'G1';
BEGIN
  
  RAISE DEBUG '#trace Check __issue__numerator_nextval()';

  INSERT INTO issue.numerator VALUES ('A1', 1, 100);
  INSERT INTO issue.numerator VALUES ('A1', 2, 10);
  INSERT INTO issue.numerator VALUES ('B1', 1, 200);

  _numerator := issue.numerator_nextval(_test_facility_code_a1, _test_week_a1);
  PERFORM pgunit.assert_equals(_test_numerator_a1, _numerator, 'Incorrect _numerator value');

  _numerator := issue.numerator_nextval(_test_facility_code_g1, _test_week_g1);
  PERFORM pgunit.assert_equals(_test_numerator_g1, _numerator, 'Incorrect _numerator value');

END;
$$;


ALTER FUNCTION tests.__issue__numerator_nextval() OWNER TO postgres;

--
-- TOC entry 763 (class 1255 OID 62720)
-- Name: __issue__resubmit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__issue__resubmit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.issue_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','ISSUE-01','2017-01-01','A1','PROPOSED','ISSUE','B1','2017-02-01')]::common.issue_head[];
  _test_body_submit CONSTANT common.document_body[] := ARRAY[('good1',10,'m'), ('good2',20,'m')]::common.document_body[];
  _test_body_resubmit CONSTANT common.document_body[] := ARRAY[('good3',10,'m'), ('good4',20,'m')]::common.document_body[];
  _head common.issue_head;
  _body common.document_body[];
  _document_id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __issue__resubmit()';
  
  _document_id := issue.submit(_test_head[1], _test_body_submit);
  PERFORM issue.resubmit(_document_id, _test_body_resubmit);
  _head := issue.get_head(_document_id);
  _body := issue.get_body(_document_id);
  --PERFORM pgunit.assert_equals(_test_head[1], _head, 'Incorrect _head value');
  PERFORM pgunit.assert_array_equals(_test_body_resubmit, _body, 'Incorrect _body value');


END;
$$;


ALTER FUNCTION tests.__issue__resubmit() OWNER TO postgres;

--
-- TOC entry 725 (class 1255 OID 62721)
-- Name: __issue__submit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__issue__submit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.issue_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','ISSUE-01','2017-01-01','A1','PROPOSED','ISSUE','B1','2017-02-01')]::common.issue_head[];
  _test_body CONSTANT common.document_body[] := ARRAY[('good1',10,'m'), ('good2',20,'m')]::common.document_body[];
  _head common.issue_head;
  _body common.document_body[];
  _document_id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __issue__submit()';
  
  _document_id := issue.submit(_test_head[1], _test_body);
  _head := issue.get_head(_document_id);
  _body := issue.get_body(_document_id);
  --PERFORM pgunit.assert_equals(_test_head[1], _head, 'Incorrect _head value');
  PERFORM pgunit.assert_array_equals(_test_body, _body, 'Incorrect _body value');


END;
$$;


ALTER FUNCTION tests.__issue__submit() OWNER TO postgres;

--
-- TOC entry 771 (class 1255 OID 62722)
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
      ( 101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'REVERTED', '2018-01-10', 101, 'pcs' ),
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
-- TOC entry 772 (class 1255 OID 62723)
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
      ( 101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'REVERTED', '2018-01-10', 101, 'pcs' ),
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
-- TOC entry 773 (class 1255 OID 62724)
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
-- TOC entry 774 (class 1255 OID 62725)
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
-- TOC entry 775 (class 1255 OID 62726)
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
-- TOC entry 776 (class 1255 OID 62727)
-- Name: __mbom__resubmit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__mbom__resubmit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.mbom_head[] := ARRAY[(203,'9b2952fa-01d1-11e7-b440-d4bed939923a','11с32п-50х40: definition',3,'2017-10-21','PROPOSED','EBOM',('11.32.050-001',1,1.0000,'pcs','PRODUCIBLE'))]::common.mbom_head[];
  _test_body_submit CONSTANT common.material_specification[] := ARRAY[('80.31.050-001',1,1.0000,'pcs','CONSUMABLE'), ('72.01.009-001',1,2.0000,'pcs','CONSUMABLE')]::common.material_specification[];
  _test_body_resubmit CONSTANT common.material_specification[] := ARRAY[('80.31.050-001',1,2.0000,'pcs','CONSUMABLE'), ('72.01.009-001',1,4.0000,'pcs','CONSUMABLE')]::common.material_specification[];
  _head common.mbom_head;
  _body common.material_specification[];
  _document_id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __mbom__resubmit()';

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
      ( 101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'REVERTED', '2018-01-10', 101, 'pcs' ),
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
  
  _document_id := mbom.submit(_test_head[1], _test_body_submit);
  PERFORM mbom.resubmit(_document_id, _test_body_resubmit);
  _head := mbom.get_head(_document_id);
  _body := mbom.get_body(_document_id);
  --PERFORM pgunit.assert_equals(_test_head[1], _head, 'Incorrect _head value');
  PERFORM pgunit.assert_array_equals(_test_body_resubmit, _body, 'Incorrect _body value');


END;
$$;


ALTER FUNCTION tests.__mbom__resubmit() OWNER TO postgres;

--
-- TOC entry 777 (class 1255 OID 62728)
-- Name: __mbom__submit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__mbom__submit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.mbom_head[] := ARRAY[(203,'9b2952fa-01d1-11e7-b440-d4bed939923a','11с32п-50х40: definition',3,'2017-10-21','PROPOSED','EBOM',('11.32.050-001',1,1.0000,'pcs','PRODUCIBLE'))]::common.mbom_head[];
  _test_body CONSTANT common.material_specification[] := ARRAY[('80.31.050-001',1,1.0000,'pcs','CONSUMABLE'), ('72.01.009-001',1,2.0000,'pcs','CONSUMABLE')]::common.material_specification[];
  _head common.mbom_head;
  _body common.material_specification[];
  _document_id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __mbom__submit()';

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
      ( 101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'REVERTED', '2018-01-10', 101, 'pcs' ),
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
  
  _document_id := mbom.submit(_test_head[1], _test_body);
  _head := mbom.get_head(_document_id);
  _body := mbom.get_body(_document_id);
  --PERFORM pgunit.assert_equals(_test_head[1], _head, 'Incorrect _head value');
  PERFORM pgunit.assert_array_equals(_test_body, _body, 'Incorrect _body value');


END;
$$;


ALTER FUNCTION tests.__mbom__submit() OWNER TO postgres;

--
-- TOC entry 778 (class 1255 OID 62729)
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
-- TOC entry 779 (class 1255 OID 62730)
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
-- TOC entry 780 (class 1255 OID 62731)
-- Name: __operation__submit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__operation__submit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.operation_head[] := ARRAY[(103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', 'OPERATION-002', 1, 'OPERATION-002', '2018-01-16', 'OPERATION')]::common.operation_head[];
  _head common.operation_head;
  _document_id bigint;
BEGIN

  RAISE DEBUG '#trace Check __operation__submit()';
  
  _document_id := operation.submit(_test_head[1]);
  _head := operation.get_head(_document_id);

  RAISE DEBUG '%', _head;
  RAISE DEBUG '%', _test_head[1]::common.operation_head;

  --PERFORM pgunit.assert_array_equals(_test_head[1]::common.operation_head, _head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__operation__submit() OWNER TO postgres;

--
-- TOC entry 781 (class 1255 OID 62732)
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
-- TOC entry 784 (class 1255 OID 62733)
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
-- TOC entry 785 (class 1255 OID 62734)
-- Name: __personnel__submit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__personnel__submit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.personnel_head[] := ARRAY[(103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', 'PERSONNEL-002', 1, 'PERSONNEL-002', '2018-01-16', 'PERSONNEL')]::common.personnel_head[];
  _head common.personnel_head;
  _document_id bigint;
BEGIN

  RAISE DEBUG '#trace Check __personnel__submit()';
  
  _document_id := personnel.submit(_test_head[1]);
  _head := personnel.get_head(_document_id);

  RAISE DEBUG '%', _head;
  RAISE DEBUG '%', _test_head[1]::common.personnel_head;

  --PERFORM pgunit.assert_array_equals(_test_head[1]::common.personnel_head, _head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__personnel__submit() OWNER TO postgres;

--
-- TOC entry 786 (class 1255 OID 62735)
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
      ( 101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'REVERTED', '2018-01-10', 101, 'pcs' ),
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
-- TOC entry 787 (class 1255 OID 62736)
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
      ( 101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'REVERTED', '2018-01-10', 101, 'pcs' ),
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
-- TOC entry 788 (class 1255 OID 62738)
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
      ( 101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'REVERTED', '2018-01-10', 101, 'pcs' ),
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
-- TOC entry 789 (class 1255 OID 62739)
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
      ( 101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'REVERTED', '2018-01-10', 101, 'pcs' ),
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
-- TOC entry 782 (class 1255 OID 62740)
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
      ( 101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'REVERTED', '2018-01-10', 101, 'pcs' ),
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
-- TOC entry 783 (class 1255 OID 62741)
-- Name: __process__resubmit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__process__resubmit() RETURNS void
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
  _test_body_submit CONSTANT common.process_segment[] := ARRAY[
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
  _test_body_resubmit CONSTANT common.process_segment[] := ARRAY[
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
  _test_deps_submit CONSTANT common.dependency_specification[] := ARRAY[
      ( 'b978dcdc-5dfe-11e8-b547-d4bed939923a', '70d09038-5dfe-11e8-b545-d4bed939923a', 1 ),
      ( 'da20e25e-5dfe-11e8-b548-d4bed939923a', 'b978dcdc-5dfe-11e8-b547-d4bed939923a', 2 )
    ]::common.dependency_specification[];
  _test_deps_resubmit CONSTANT common.dependency_specification[] := ARRAY[
      ( 'b978dcdc-5dfe-11e8-b547-d4bed939923a', '70d09038-5dfe-11e8-b545-d4bed939923a', 1 ),
      ( 'da20e25e-5dfe-11e8-b548-d4bed939923a', 'b978dcdc-5dfe-11e8-b547-d4bed939923a', 2 )
    ]::common.dependency_specification[];
  _head common.process_head;
  _body common.process_segment[];
  _deps common.dependency_specification[];
  _document_id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __process__resubmit()';

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
      ( 101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'REVERTED', '2018-01-10', 101, 'pcs' ),
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
  
  _document_id := process.submit(_test_head[1], _test_body_submit, _test_deps_submit);
  PERFORM process.resubmit(_document_id, _test_body_resubmit, _test_deps_resubmit);
  _head := process.get_head(_document_id);
  _body := process.get_body(_document_id);
  _deps := process.get_deps(_document_id);
  --PERFORM pgunit.assert_equals(_test_head[1], _head, 'Incorrect _head value');
  PERFORM pgunit.assert_array_equals(_test_body_resubmit, _body, 'Incorrect _body value');
  PERFORM pgunit.assert_array_equals(_test_deps_resubmit, _deps, 'Incorrect _deps value');


END;
$$;


ALTER FUNCTION tests.__process__resubmit() OWNER TO postgres;

--
-- TOC entry 790 (class 1255 OID 62743)
-- Name: __process__submit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__process__submit() RETURNS void
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
  
  RAISE DEBUG '#trace Check __process__submit()';

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
      ( 101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'REVERTED', '2018-01-10', 101, 'pcs' ),
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

  
  _document_id := process.submit(_test_head[1], _test_body, _test_deps);
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


ALTER FUNCTION tests.__process__submit() OWNER TO postgres;

--
-- TOC entry 791 (class 1255 OID 62744)
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
      ( 101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'REVERTED', '2018-01-10', 101, 'pcs' ),
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
-- TOC entry 792 (class 1255 OID 62745)
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
-- TOC entry 793 (class 1255 OID 62746)
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
      ( 101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'REVERTED', '2018-01-10', 101, 'pcs' ),
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
-- TOC entry 794 (class 1255 OID 62747)
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
      ( 101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'REVERTED', '2018-01-10', 101, 'pcs' ),
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
-- TOC entry 795 (class 1255 OID 62748)
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
      ( 101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'REVERTED', '2018-01-10', 101, 'pcs' ),
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
-- TOC entry 796 (class 1255 OID 62749)
-- Name: __receipt__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__receipt__destroy() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.issue_head;
BEGIN
  
  RAISE DEBUG '#trace Check __receipt__destroy()';

  INSERT INTO receipt.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'RECEIPT-01', '2017-01-01', NULL, 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'RECEIPT-02', '2017-02-01', NULL, 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'RECEIPT-03', '2017-03-01', NULL, 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  PERFORM receipt.destroy(101); -- + add not allowed delete test
  
  _head := receipt.get_head(101);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

  _head := receipt.get_head(103);
  PERFORM pgunit.assert_not_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__receipt__destroy() OWNER TO postgres;

--
-- TOC entry 797 (class 1255 OID 62750)
-- Name: __receipt__generate_display_name(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__receipt__generate_display_name() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _display_name character varying;
BEGIN
  
  RAISE DEBUG '#trace Check __receipt__generate_display_name()';
  
  INSERT INTO schedule.calendar VALUES ('2017-01-01', 1, 1, 1, 1);
  
  _display_name := receipt.generate_display_name('2017-01-01', 'A1');
  PERFORM pgunit.assert_equals('GRN-A1-AB1AA0', _display_name, 'Incorrect _abbrevation value');

END;
$$;


ALTER FUNCTION tests.__receipt__generate_display_name() OWNER TO postgres;

--
-- TOC entry 798 (class 1255 OID 62751)
-- Name: __receipt__get_body(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__receipt__get_body() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _body common.document_body[];
  _test_body CONSTANT common.document_body[] := ARRAY[('good2', 2.0, 'm'), ('good3', 3.0, 'm')]::common.document_body[];
BEGIN
  
  RAISE DEBUG '#trace Check __receipt__get_body()';

  INSERT INTO receipt.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'RECEIPT-01', '2017-01-01', NULL, 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'RECEIPT-02', '2017-02-01', NULL, 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'RECEIPT-03', '2017-03-01', NULL, 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  
  INSERT INTO receipt.body VALUES (101, 'good1', 1.0, 'm');
  INSERT INTO receipt.body VALUES (103, 'good2', 2.0, 'm');
  INSERT INTO receipt.body VALUES (103, 'good3', 3.0, 'm');

  _body := receipt.get_body(103);
  PERFORM pgunit.assert_array_equals(_test_body, _body, 'Incorrect _body value');

END;
$$;


ALTER FUNCTION tests.__receipt__get_body() OWNER TO postgres;

--
-- TOC entry 799 (class 1255 OID 62752)
-- Name: __receipt__get_gid_by_id(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__receipt__get_gid_by_id() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_id CONSTANT bigint := 102;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a'::uuid;
  _gid uuid;
BEGIN
  
  RAISE DEBUG '#trace Check __receipt__get_gid_by_id()';

  INSERT INTO receipt.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'RECEIPT-01', '2017-01-01', NULL, 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'RECEIPT-02', '2017-02-01', NULL, 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'RECEIPT-03', '2017-03-01', NULL, 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  
  _gid := receipt.get_gid_by_id(_test_id);
  PERFORM pgunit.assert_equals(_test_gid, _gid, 'Incorrect _gid value');

END;
$$;


ALTER FUNCTION tests.__receipt__get_gid_by_id() OWNER TO postgres;

--
-- TOC entry 800 (class 1255 OID 62753)
-- Name: __receipt__get_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__receipt__get_head() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.receipt_head;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a'::uuid;
  _test_display_name CONSTANT character varying := 'RECEIPT-02';
  _test_document_date CONSTANT date := '2017-02-01'::date;
  _test_ship_to CONSTANT character varying := 'A1';
  _test_ship_from CONSTANT character varying := 'B1';
  _test_curr_fsmt CONSTANT common.document_fsmt := 'COMMITTED'::common.document_fsmt;
  _test_doctype CONSTANT common.document_kind := 'RECEIPT'::common.document_kind;
BEGIN
  
  RAISE DEBUG '#trace Check __receipt__get_head()';

  INSERT INTO receipt.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'RECEIPT-01', '2017-01-01', NULL, 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'RECEIPT-02', '2017-02-01', NULL, 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'RECEIPT-03', '2017-03-01', NULL, 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  
  _head := receipt.get_head(102);
  PERFORM pgunit.assert_equals(_test_gid, _head.gid, 'Incorrect gid value');
  PERFORM pgunit.assert_equals(_test_display_name, _head.display_name, 'Incorrect display_name value');
  PERFORM pgunit.assert_equals(_test_document_date, _head.document_date, 'Incorrect document_date value');
  PERFORM pgunit.assert_equals(_test_ship_to, _head.facility_code, 'Incorrect ship_to value');
  PERFORM pgunit.assert_equals(_test_ship_from, _head.addresser, 'Incorrect ship_from value');
  PERFORM pgunit.assert_equals(_test_curr_fsmt, _head.curr_fsmt, 'Incorrect curr_fsmt value');
  PERFORM pgunit.assert_equals(_test_doctype, _head.doctype, 'Incorrect doctype value');

  _head := receipt.get_head(103);
  PERFORM pgunit.assert_not_equals(_test_gid, _head.gid, 'Incorrect gid value');
  
  _head := receipt.get_head(104);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__receipt__get_head() OWNER TO postgres;

--
-- TOC entry 801 (class 1255 OID 62754)
-- Name: __receipt__get_head_batch(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__receipt__get_head_batch() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _heads common.receipt_head[];
  _head common.receipt_head;
  _array_lengh integer;
  _test_array_lengh CONSTANT integer := 2;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a'::uuid;
  _test_display_name CONSTANT character varying := 'RECEIPT-02';
  _test_document_date CONSTANT date := '2017-02-01'::date;
  _test_ship_to CONSTANT character varying := 'A1';
  _test_ship_from CONSTANT character varying := 'B1';
  _test_curr_fsmt CONSTANT common.document_fsmt := 'COMMITTED'::common.document_fsmt;
  _test_doctype CONSTANT common.document_kind := 'RECEIPT'::common.document_kind;
BEGIN
  
  RAISE DEBUG '#trace Check __receipt__get_head_batch()';

  INSERT INTO receipt.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'RECEIPT-01', '2017-01-01', NULL, 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'RECEIPT-02', '2017-02-01', NULL, 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'RECEIPT-03', '2017-03-01', NULL, 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  
  _heads := receipt.get_head_batch(ARRAY[102,103]::bigint[]);
  _array_lengh := array_length(_heads, 1);
  _head := _heads[1];
  PERFORM pgunit.assert_equals(_test_array_lengh, _array_lengh, 'Incorrect _array_lengh value');
  PERFORM pgunit.assert_equals(_test_gid, _head.gid, 'Incorrect gid value');
  PERFORM pgunit.assert_equals(_test_display_name, _head.display_name, 'Incorrect display_name value');
  PERFORM pgunit.assert_equals(_test_document_date, _head.document_date, 'Incorrect document_date value');
  PERFORM pgunit.assert_equals(_test_ship_to, _head.facility_code, 'Incorrect ship_to value');
  PERFORM pgunit.assert_equals(_test_ship_from, _head.addresser, 'Incorrect ship_from value');
  PERFORM pgunit.assert_equals(_test_curr_fsmt, _head.curr_fsmt, 'Incorrect curr_fsmt value');
  PERFORM pgunit.assert_equals(_test_doctype, _head.doctype, 'Incorrect doctype value');

END;
$$;


ALTER FUNCTION tests.__receipt__get_head_batch() OWNER TO postgres;

--
-- TOC entry 756 (class 1255 OID 62755)
-- Name: __receipt__get_head_batch_proposed(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__receipt__get_head_batch_proposed() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _heads common.receipt_head[];
  _head common.receipt_head;
  _array_lengh integer;
  _test_array_lengh CONSTANT integer := 1;
  _test_start_date CONSTANT date := '2017-03-01'::date;
  _test_end_date CONSTANT date := '2017-03-01'::date;
  _test_gid CONSTANT uuid := 'f20d7196-01d1-11e7-b441-d4bed939923a'::uuid;
  _test_display_name CONSTANT character varying := 'RECEIPT-03';
  _test_document_date CONSTANT date := '2017-03-01'::date;
  _test_ship_to CONSTANT character varying := 'A1';
  _test_ship_from CONSTANT character varying := 'B1';
  _test_curr_fsmt CONSTANT common.document_fsmt := 'PROPOSED'::common.document_fsmt;
  _test_doctype CONSTANT common.document_kind := 'RECEIPT'::common.document_kind;
BEGIN
  
  RAISE DEBUG '#trace Check __receipt__get_head_batch_proposed()';

  INSERT INTO receipt.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'RECEIPT-01', '2017-01-01', NULL, 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'RECEIPT-02', '2017-02-01', NULL, 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'RECEIPT-03', '2017-03-01', NULL, 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  
  _heads := receipt.get_head_batch_proposed(_test_ship_from, _test_start_date, _test_end_date);

  _array_lengh := array_length(_heads, 1);
  _head := _heads[1];
  PERFORM pgunit.assert_equals(_test_array_lengh, _array_lengh, 'Incorrect _array_lengh value');
  PERFORM pgunit.assert_equals(_test_gid, _head.gid, 'Incorrect gid value');
  PERFORM pgunit.assert_equals(_test_display_name, _head.display_name, 'Incorrect display_name value');
  PERFORM pgunit.assert_equals(_test_document_date, _head.document_date, 'Incorrect document_date value');
  PERFORM pgunit.assert_equals(_test_ship_to, _head.facility_code, 'Incorrect ship_to value');
  PERFORM pgunit.assert_equals(_test_ship_from, _head.addresser, 'Incorrect ship_from value');
  PERFORM pgunit.assert_equals(_test_curr_fsmt, _head.curr_fsmt, 'Incorrect curr_fsmt value');
  PERFORM pgunit.assert_equals(_test_doctype, _head.doctype, 'Incorrect doctype value');

END;
$$;


ALTER FUNCTION tests.__receipt__get_head_batch_proposed() OWNER TO postgres;

--
-- TOC entry 802 (class 1255 OID 62756)
-- Name: __receipt__get_id_by_gid(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__receipt__get_id_by_gid() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_id CONSTANT bigint := 102;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a'::uuid;
  _id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __receipt__get_id_by_gid()';

  INSERT INTO receipt.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'RECEIPT-01', '2017-01-01', NULL, 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'RECEIPT-02', '2017-02-01', NULL, 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'RECEIPT-03', '2017-03-01', NULL, 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  
  _id := receipt.get_id_by_gid(_test_gid);
  PERFORM pgunit.assert_equals(_test_id, _id, 'Incorrect _id value');

END;
$$;


ALTER FUNCTION tests.__receipt__get_id_by_gid() OWNER TO postgres;

--
-- TOC entry 803 (class 1255 OID 62757)
-- Name: __receipt__numerator_nextval(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__receipt__numerator_nextval() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _numerator integer;
  _test_numerator_a1 CONSTANT integer := 11;
  _test_numerator_g1 CONSTANT integer := 1;
  _test_week_a1 CONSTANT integer := 2;
  _test_week_g1 CONSTANT integer := 10;
  _test_facility_code_a1 CONSTANT character varying := 'A1';
  _test_facility_code_g1 character varying := 'G1';
BEGIN
  
  RAISE DEBUG '#trace Check __receipt__numerator_nextval()';

  INSERT INTO receipt.numerator VALUES ('A1', 1, 100);
  INSERT INTO receipt.numerator VALUES ('A1', 2, 10);
  INSERT INTO receipt.numerator VALUES ('B1', 1, 200);

  _numerator := receipt.numerator_nextval(_test_facility_code_a1, _test_week_a1);
  PERFORM pgunit.assert_equals(_test_numerator_a1, _numerator, 'Incorrect _numerator value');

  _numerator := receipt.numerator_nextval(_test_facility_code_g1, _test_week_g1);
  PERFORM pgunit.assert_equals(_test_numerator_g1, _numerator, 'Incorrect _numerator value');

END;
$$;


ALTER FUNCTION tests.__receipt__numerator_nextval() OWNER TO postgres;

--
-- TOC entry 804 (class 1255 OID 62758)
-- Name: __receipt__resubmit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__receipt__resubmit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.receipt_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','RECEIPT-01','2017-01-01','A1','PROPOSED','CUTOFF','B1')]::common.receipt_head[];
  _test_body_submit CONSTANT common.document_body[] := ARRAY[('good1',10,'m'), ('good2',20,'m')]::common.document_body[];
  _test_body_resubmit CONSTANT common.document_body[] := ARRAY[('good3',10,'m'), ('good4',20,'m')]::common.document_body[];
  _head common.issue_head;
  _body common.document_body[];
  _document_id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __receipt__resubmit()';
  
  _document_id := receipt.submit(_test_head[1], _test_body_submit);
  PERFORM receipt.resubmit(_document_id, _test_body_resubmit);
  _head := receipt.get_head(_document_id);
  _body := receipt.get_body(_document_id);
  --PERFORM pgunit.assert_equals(_test_head[1], _head, 'Incorrect _head value');
  PERFORM pgunit.assert_array_equals(_test_body_resubmit, _body, 'Incorrect _body value');


END;
$$;


ALTER FUNCTION tests.__receipt__resubmit() OWNER TO postgres;

--
-- TOC entry 805 (class 1255 OID 62759)
-- Name: __receipt__submit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__receipt__submit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.receipt_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','RECEIPT-01','2017-01-01','A1','PROPOSED','CUTOFF','B1')]::common.receipt_head[];
  _test_body CONSTANT common.document_body[] := ARRAY[('good1',10,'m'), ('good2',20,'m')]::common.document_body[];
  _head common.issue_head;
  _body common.document_body[];
  _document_id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __receipt__submit()';
  
  _document_id := receipt.submit(_test_head[1], _test_body);
  _head := receipt.get_head(_document_id);
  _body := receipt.get_body(_document_id);
  --PERFORM pgunit.assert_equals(_test_head[1], _head, 'Incorrect _head value');
  PERFORM pgunit.assert_array_equals(_test_body, _body, 'Incorrect _body value');


END;
$$;


ALTER FUNCTION tests.__receipt__submit() OWNER TO postgres;

--
-- TOC entry 806 (class 1255 OID 62760)
-- Name: __schedule__get_date_of_julianized_day(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__schedule__get_date_of_julianized_day() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _date_of_julianized_day date;
  _test_date_of_julianized_day CONSTANT date := '2017-01-01'::date;
BEGIN
  
  RAISE DEBUG '#trace Check __schedule__get_date_of_julianized_day()';

  TRUNCATE TABLE schedule.calendar;

  INSERT INTO schedule.calendar VALUES ('2017-01-01', 4, 3, 2, 1);

  _date_of_julianized_day := schedule.get_date_of_julianized_day(2);

  PERFORM pgunit.assert_equals(_test_date_of_julianized_day, _date_of_julianized_day, 'Incorrect _date_of_julianized_day value');

END;
$$;


ALTER FUNCTION tests.__schedule__get_date_of_julianized_day() OWNER TO postgres;

--
-- TOC entry 807 (class 1255 OID 62761)
-- Name: __schedule__get_julianized_day(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__schedule__get_julianized_day() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _julianized_day integer;
  _test_julianized_day CONSTANT integer := 2;
BEGIN
  
  RAISE DEBUG '#trace Check __schedule__get_julianized_day()';

  TRUNCATE TABLE schedule.calendar;

  INSERT INTO schedule.calendar VALUES ('2017-01-01', 4, 3, 2, 1);

  _julianized_day := schedule.get_julianized_day('2017-01-01');

  PERFORM pgunit.assert_equals(_test_julianized_day, _julianized_day, 'Incorrect _julianized_day value');

END;
$$;


ALTER FUNCTION tests.__schedule__get_julianized_day() OWNER TO postgres;

--
-- TOC entry 808 (class 1255 OID 62762)
-- Name: __schedule__get_julianized_week(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__schedule__get_julianized_week() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _julianized_week integer;
  _test_julianized_week CONSTANT integer := 1;
BEGIN
  
  RAISE DEBUG '#trace Check __schedule__get_julianized_week()';

  TRUNCATE TABLE schedule.calendar;

  INSERT INTO schedule.calendar VALUES ('2017-01-01', 4, 3, 2, 1);

  _julianized_week := schedule.get_julianized_week('2017-01-01');

  PERFORM pgunit.assert_equals(_test_julianized_week, _julianized_week, 'Incorrect _julianized_week value');

END;
$$;


ALTER FUNCTION tests.__schedule__get_julianized_week() OWNER TO postgres;

--
-- TOC entry 809 (class 1255 OID 62763)
-- Name: __stockcard__assign_issue(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__stockcard__assign_issue() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _issued_qty_1 common.quantity;
  _issued_qty_2 common.quantity;
  _test_issued_qty_1 CONSTANT common.quantity := 2.0::common.quantity;
  _test_issued_qty_2 CONSTANT common.quantity := 3.0::common.quantity;
BEGIN
  
  RAISE DEBUG '#trace Check __stockcard__assign_issue()';

  INSERT INTO issue.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'ISSUE-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'ISSUE-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'ISSUE-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  INSERT INTO issue.body VALUES (101, 'good1', 1.0, 'm');
  INSERT INTO issue.body VALUES (103, 'good2', 2.0, 'm');
  INSERT INTO issue.body VALUES (103, 'good3', 3.0, 'm');

  PERFORM stockcard.assign_issue(issue.get_head(103), issue.get_body(103));

  SELECT issued_qty FROM stockcard.head WHERE document_gid = 'f20d7196-01d1-11e7-b441-d4bed939923a' AND part_code = 'good2' INTO _issued_qty_1;
  SELECT issued_qty FROM stockcard.head WHERE document_gid = 'f20d7196-01d1-11e7-b441-d4bed939923a' AND part_code = 'good3' INTO _issued_qty_2;

  PERFORM pgunit.assert_equals(_test_issued_qty_1, _issued_qty_1, 'Incorrect _issued_qty_1 value');
  PERFORM pgunit.assert_equals(_test_issued_qty_2, _issued_qty_2, 'Incorrect _issued_qty_2 value');

  TRUNCATE TABLE stockcard.head;

  PERFORM stockcard.assign_issue(103);

  SELECT issued_qty FROM stockcard.head WHERE document_gid = 'f20d7196-01d1-11e7-b441-d4bed939923a' AND part_code = 'good2' INTO _issued_qty_1;
  SELECT issued_qty FROM stockcard.head WHERE document_gid = 'f20d7196-01d1-11e7-b441-d4bed939923a' AND part_code = 'good3' INTO _issued_qty_2;

  PERFORM pgunit.assert_equals(_test_issued_qty_1, _issued_qty_1, 'Incorrect _issued_qty_1 value');
  PERFORM pgunit.assert_equals(_test_issued_qty_2, _issued_qty_2, 'Incorrect _issued_qty_2 value');

END;
$$;


ALTER FUNCTION tests.__stockcard__assign_issue() OWNER TO postgres;

--
-- TOC entry 810 (class 1255 OID 62764)
-- Name: __stockcard__assign_receipt(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__stockcard__assign_receipt() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _receipt_qty_1 common.quantity;
  _receipt_qty_2 common.quantity;
  _test_receipt_qty_1 CONSTANT common.quantity := 2.0::common.quantity;
  _test_receipt_qty_2 CONSTANT common.quantity := 3.0::common.quantity;
BEGIN
  
  RAISE DEBUG '#trace Check __stockcard__assign_receipt()';

  INSERT INTO receipt.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'RECEIPT-01', '2017-01-01', NULL, 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'RECEIPT-02', '2017-02-01', NULL, 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'RECEIPT-03', '2017-03-01', NULL, 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  
  INSERT INTO receipt.body VALUES (101, 'good1', 1.0, 'm');
  INSERT INTO receipt.body VALUES (103, 'good2', 2.0, 'm');
  INSERT INTO receipt.body VALUES (103, 'good3', 3.0, 'm');

  PERFORM stockcard.assign_receipt(receipt.get_head(103), receipt.get_body(103));

  SELECT receipt_qty FROM stockcard.head WHERE document_gid = 'f20d7196-01d1-11e7-b441-d4bed939923a' AND part_code = 'good2' INTO _receipt_qty_1;
  SELECT receipt_qty FROM stockcard.head WHERE document_gid = 'f20d7196-01d1-11e7-b441-d4bed939923a' AND part_code = 'good3' INTO _receipt_qty_2;

  PERFORM pgunit.assert_equals(_test_receipt_qty_1, _receipt_qty_1, 'Incorrect _receipt_qty_1 value');
  PERFORM pgunit.assert_equals(_test_receipt_qty_2, _receipt_qty_2, 'Incorrect _receipt_qty_2 value');

  TRUNCATE TABLE stockcard.head;

  PERFORM stockcard.assign_receipt(103);

  SELECT receipt_qty FROM stockcard.head WHERE document_gid = 'f20d7196-01d1-11e7-b441-d4bed939923a' AND part_code = 'good2' INTO _receipt_qty_1;
  SELECT receipt_qty FROM stockcard.head WHERE document_gid = 'f20d7196-01d1-11e7-b441-d4bed939923a' AND part_code = 'good3' INTO _receipt_qty_2;

  PERFORM pgunit.assert_equals(_test_receipt_qty_1, _receipt_qty_1, 'Incorrect _receipt_qty_1 value');
  PERFORM pgunit.assert_equals(_test_receipt_qty_2, _receipt_qty_2, 'Incorrect _receipt_qty_2 value');

END;
$$;


ALTER FUNCTION tests.__stockcard__assign_receipt() OWNER TO postgres;

--
-- TOC entry 811 (class 1255 OID 62765)
-- Name: __stockcard__assign_stocktake(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__stockcard__assign_stocktake() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _stocktake_qty_1 common.quantity;
  _stocktake_qty_2 common.quantity;
  _test_stocktake_qty_1 CONSTANT common.quantity := 2.0::common.quantity;
  _test_stocktake_qty_2 CONSTANT common.quantity := 3.0::common.quantity;
BEGIN
  
  RAISE DEBUG '#trace Check __stockcard__assign_stocktake()';

  INSERT INTO stocktake.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'STOCKTAKE-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'STOCKTAKE-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'STOCKTAKE-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  
  INSERT INTO stocktake.body VALUES (101, 'good1', 1.0, 'm');
  INSERT INTO stocktake.body VALUES (103, 'good2', 2.0, 'm');
  INSERT INTO stocktake.body VALUES (103, 'good3', 3.0, 'm');

  PERFORM stockcard.assign_stocktake(stocktake.get_head(103), stocktake.get_body(103));

  SELECT stocktake_qty FROM stockcard.head WHERE document_gid = 'f20d7196-01d1-11e7-b441-d4bed939923a' AND part_code = 'good2' INTO _stocktake_qty_1;
  SELECT stocktake_qty FROM stockcard.head WHERE document_gid = 'f20d7196-01d1-11e7-b441-d4bed939923a' AND part_code = 'good3' INTO _stocktake_qty_2;

  PERFORM pgunit.assert_equals(_test_stocktake_qty_1, _stocktake_qty_1, 'Incorrect _stocktake_qty_1 value');
  PERFORM pgunit.assert_equals(_test_stocktake_qty_2, _stocktake_qty_2, 'Incorrect _stocktake_qty_2 value');

  TRUNCATE TABLE stockcard.head;

  PERFORM stockcard.assign_stocktake(103);

  SELECT stocktake_qty FROM stockcard.head WHERE document_gid = 'f20d7196-01d1-11e7-b441-d4bed939923a' AND part_code = 'good2' INTO _stocktake_qty_1;
  SELECT stocktake_qty FROM stockcard.head WHERE document_gid = 'f20d7196-01d1-11e7-b441-d4bed939923a' AND part_code = 'good3' INTO _stocktake_qty_2;

  PERFORM pgunit.assert_equals(_test_stocktake_qty_1, _stocktake_qty_1, 'Incorrect _stocktake_qty_1 value');
  PERFORM pgunit.assert_equals(_test_stocktake_qty_2, _stocktake_qty_2, 'Incorrect _stocktake_qty_2 value');



END;
$$;


ALTER FUNCTION tests.__stockcard__assign_stocktake() OWNER TO postgres;

--
-- TOC entry 812 (class 1255 OID 62766)
-- Name: __stockcard__deassign_issue(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__stockcard__deassign_issue() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _records_cnt_1 integer;
  _records_cnt_2 integer;
  _test_records_cnt_1 CONSTANT integer := 0;
  _test_records_cnt_2 CONSTANT integer := 1;
BEGIN
  
  RAISE DEBUG '#trace Check __stockcard__deassign_issue()';

  INSERT INTO issue.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'ISSUE-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'ISSUE-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'ISSUE-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  INSERT INTO issue.body VALUES (101, 'good1', 1.0, 'm');
  INSERT INTO issue.body VALUES (103, 'good2', 2.0, 'm');
  INSERT INTO issue.body VALUES (103, 'good3', 3.0, 'm');

  INSERT INTO stockcard.head (document_gid, document_kind, document_name, document_date, facility_code, counterparty_code, part_code, cutoff_date, cutoff_uom, cutoff_qty, receipt_uom, receipt_qty, issued_uom, issued_qty, adjusted_uom, adjusted_qty, rebounded_uom, rebounded_qty, stocktake_uom, stocktake_qty, log_datetime) VALUES ('8236af18-eb1a-11e6-8a73-d4bed939923a', 'ISSUE', 'ISSUE-01', '2017-02-01', 'A1', 'B1', 'good1', NULL, NULL, 0.0000, NULL, 0.0000, NULL, 1.0000, 'm', 0.0000, NULL, 0.0000, NULL, 0.0000, '2017-03-12 01:59:35.278566+02');
  INSERT INTO stockcard.head (document_gid, document_kind, document_name, document_date, facility_code, counterparty_code, part_code, cutoff_date, cutoff_uom, cutoff_qty, receipt_uom, receipt_qty, issued_uom, issued_qty, adjusted_uom, adjusted_qty, rebounded_uom, rebounded_qty, stocktake_uom, stocktake_qty, log_datetime) VALUES ('8236af18-eb1a-11e6-8a73-d4bed939923a', 'ISSUE', 'ISSUE-01', '2017-02-01', 'A1', 'B1', 'good2', NULL, NULL, 0.0000, NULL, 0.0000, NULL, 2.0000, 'm', 0.0000, NULL, 0.0000, NULL, 0.0000, '2017-03-12 02:00:22.679027+02');
  INSERT INTO stockcard.head (document_gid, document_kind, document_name, document_date, facility_code, counterparty_code, part_code, cutoff_date, cutoff_uom, cutoff_qty, receipt_uom, receipt_qty, issued_uom, issued_qty, adjusted_uom, adjusted_qty, rebounded_uom, rebounded_qty, stocktake_uom, stocktake_qty, log_datetime) VALUES ('f20d7196-01d1-11e7-b441-d4bed939923a', 'ISSUE', 'ISSUE-03', '2017-02-02', 'A1', 'B1', 'good1', NULL, NULL, 0.0000, NULL, 0.0000, NULL, 3.0000, 'm', 0.0000, NULL, 0.0000, NULL, 0.0000, '2017-03-12 02:01:27.955482+02'); 

  PERFORM stockcard.deassign_issue(101);

  SELECT COUNT(*) FROM stockcard.head WHERE document_gid = '8236af18-eb1a-11e6-8a73-d4bed939923a' INTO _records_cnt_1;
  SELECT COUNT(*) FROM stockcard.head WHERE document_gid = 'f20d7196-01d1-11e7-b441-d4bed939923a' INTO _records_cnt_2;

  PERFORM pgunit.assert_equals(_test_records_cnt_1, _records_cnt_1, 'Incorrect _records_cnt_1 value');
  PERFORM pgunit.assert_equals(_test_records_cnt_2, _records_cnt_2, 'Incorrect _records_cnt_2 value');

END;
$$;


ALTER FUNCTION tests.__stockcard__deassign_issue() OWNER TO postgres;

--
-- TOC entry 813 (class 1255 OID 62767)
-- Name: __stockcard__deassign_receipt(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__stockcard__deassign_receipt() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _records_cnt_1 integer;
  _records_cnt_2 integer;
  _test_records_cnt_1 CONSTANT integer := 0;
  _test_records_cnt_2 CONSTANT integer := 1;
BEGIN
  
  RAISE DEBUG '#trace Check __stockcard__deassign_receipt()';

  INSERT INTO receipt.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'RECEIPT-01', '2017-01-01', NULL, 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'RECEIPT-02', '2017-02-01', NULL, 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'RECEIPT-03', '2017-03-01', NULL, 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  
  INSERT INTO receipt.body VALUES (101, 'good1', 1.0, 'm');
  INSERT INTO receipt.body VALUES (103, 'good2', 2.0, 'm');
  INSERT INTO receipt.body VALUES (103, 'good3', 3.0, 'm');

  INSERT INTO stockcard.head (document_gid, document_kind, document_name, document_date, facility_code, counterparty_code, part_code, cutoff_date, cutoff_uom, cutoff_qty, receipt_uom, receipt_qty, issued_uom, issued_qty, adjusted_uom, adjusted_qty, rebounded_uom, rebounded_qty, stocktake_uom, stocktake_qty, log_datetime) VALUES ('8236af18-eb1a-11e6-8a73-d4bed939923a', 'RECEIPT', 'RECEIPT-01', '2017-02-01', 'A1', 'B1', 'good1', NULL, NULL, 0.0000, NULL, 0.0000, NULL, 1.0000, 'm', 0.0000, NULL, 0.0000, NULL, 0.0000, '2017-03-12 01:59:35.278566+02');
  INSERT INTO stockcard.head (document_gid, document_kind, document_name, document_date, facility_code, counterparty_code, part_code, cutoff_date, cutoff_uom, cutoff_qty, receipt_uom, receipt_qty, issued_uom, issued_qty, adjusted_uom, adjusted_qty, rebounded_uom, rebounded_qty, stocktake_uom, stocktake_qty, log_datetime) VALUES ('8236af18-eb1a-11e6-8a73-d4bed939923a', 'RECEIPT', 'RECEIPT-01', '2017-02-01', 'A1', 'B1', 'good2', NULL, NULL, 0.0000, NULL, 0.0000, NULL, 2.0000, 'm', 0.0000, NULL, 0.0000, NULL, 0.0000, '2017-03-12 02:00:22.679027+02');
  INSERT INTO stockcard.head (document_gid, document_kind, document_name, document_date, facility_code, counterparty_code, part_code, cutoff_date, cutoff_uom, cutoff_qty, receipt_uom, receipt_qty, issued_uom, issued_qty, adjusted_uom, adjusted_qty, rebounded_uom, rebounded_qty, stocktake_uom, stocktake_qty, log_datetime) VALUES ('f20d7196-01d1-11e7-b441-d4bed939923a', 'RECEIPT', 'RECEIPT-03', '2017-02-02', 'A1', 'B1', 'good1', NULL, NULL, 0.0000, NULL, 0.0000, NULL, 3.0000, 'm', 0.0000, NULL, 0.0000, NULL, 0.0000, '2017-03-12 02:01:27.955482+02'); 
  
  PERFORM stockcard.deassign_receipt(101);

  SELECT COUNT(*) FROM stockcard.head WHERE document_gid = '8236af18-eb1a-11e6-8a73-d4bed939923a' INTO _records_cnt_1;
  SELECT COUNT(*) FROM stockcard.head WHERE document_gid = 'f20d7196-01d1-11e7-b441-d4bed939923a' INTO _records_cnt_2;

  PERFORM pgunit.assert_equals(_test_records_cnt_1, _records_cnt_1, 'Incorrect _records_cnt_1 value');
  PERFORM pgunit.assert_equals(_test_records_cnt_2, _records_cnt_2, 'Incorrect _records_cnt_2 value');

END;
$$;


ALTER FUNCTION tests.__stockcard__deassign_receipt() OWNER TO postgres;

--
-- TOC entry 814 (class 1255 OID 62768)
-- Name: __stockcard__deassign_stocktake(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__stockcard__deassign_stocktake() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _records_cnt_1 integer;
  _records_cnt_2 integer;
  _test_records_cnt_1 CONSTANT integer := 0;
  _test_records_cnt_2 CONSTANT integer := 1;
BEGIN
  
  RAISE DEBUG '#trace Check __stockcard__deassign_stocktake()';

  INSERT INTO stocktake.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'STOCKTAKE-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'STOCKTAKE-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'STOCKTAKE-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  
  INSERT INTO stocktake.body VALUES (101, 'good1', 1.0, 'm');
  INSERT INTO stocktake.body VALUES (103, 'good2', 2.0, 'm');
  INSERT INTO stocktake.body VALUES (103, 'good3', 3.0, 'm');

  INSERT INTO stockcard.head (document_gid, document_kind, document_name, document_date, facility_code, counterparty_code, part_code, cutoff_date, cutoff_uom, cutoff_qty, receipt_uom, receipt_qty, issued_uom, issued_qty, adjusted_uom, adjusted_qty, rebounded_uom, rebounded_qty, stocktake_uom, stocktake_qty, log_datetime) VALUES ('8236af18-eb1a-11e6-8a73-d4bed939923a', 'STOCKTAKE', 'STOCKTAKE-01', '2017-02-01', 'A1', 'B1', 'good1', NULL, NULL, 0.0000, NULL, 0.0000, NULL, 1.0000, 'm', 0.0000, NULL, 0.0000, NULL, 0.0000, '2017-03-12 01:59:35.278566+02');
  INSERT INTO stockcard.head (document_gid, document_kind, document_name, document_date, facility_code, counterparty_code, part_code, cutoff_date, cutoff_uom, cutoff_qty, receipt_uom, receipt_qty, issued_uom, issued_qty, adjusted_uom, adjusted_qty, rebounded_uom, rebounded_qty, stocktake_uom, stocktake_qty, log_datetime) VALUES ('8236af18-eb1a-11e6-8a73-d4bed939923a', 'STOCKTAKE', 'STOCKTAKE-01', '2017-02-01', 'A1', 'B1', 'good2', NULL, NULL, 0.0000, NULL, 0.0000, NULL, 2.0000, 'm', 0.0000, NULL, 0.0000, NULL, 0.0000, '2017-03-12 02:00:22.679027+02');
  INSERT INTO stockcard.head (document_gid, document_kind, document_name, document_date, facility_code, counterparty_code, part_code, cutoff_date, cutoff_uom, cutoff_qty, receipt_uom, receipt_qty, issued_uom, issued_qty, adjusted_uom, adjusted_qty, rebounded_uom, rebounded_qty, stocktake_uom, stocktake_qty, log_datetime) VALUES ('f20d7196-01d1-11e7-b441-d4bed939923a', 'STOCKTAKE', 'STOCKTAKE-03', '2017-02-02', 'A1', 'B1', 'good1', NULL, NULL, 0.0000, NULL, 0.0000, NULL, 3.0000, 'm', 0.0000, NULL, 0.0000, NULL, 0.0000, '2017-03-12 02:01:27.955482+02'); 
  
  
  PERFORM stockcard.deassign_stocktake(101);

  SELECT COUNT(*) FROM stockcard.head WHERE document_gid = '8236af18-eb1a-11e6-8a73-d4bed939923a' INTO _records_cnt_1;
  SELECT COUNT(*) FROM stockcard.head WHERE document_gid = 'f20d7196-01d1-11e7-b441-d4bed939923a' INTO _records_cnt_2;

  PERFORM pgunit.assert_equals(_test_records_cnt_1, _records_cnt_1, 'Incorrect _records_cnt_1 value');
  PERFORM pgunit.assert_equals(_test_records_cnt_2, _records_cnt_2, 'Incorrect _records_cnt_2 value');

END;
$$;


ALTER FUNCTION tests.__stockcard__deassign_stocktake() OWNER TO postgres;

--
-- TOC entry 815 (class 1255 OID 62769)
-- Name: __stocktake__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__stocktake__destroy() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.document_head;
BEGIN
  
  RAISE DEBUG '#trace Check __stocktake__destroy()';

  INSERT INTO stocktake.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'STOCKTAKE-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'STOCKTAKE-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'STOCKTAKE-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  
  PERFORM stocktake.destroy(101); -- + add not allowed delete test
  
  _head := stocktake.get_head(101);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

  _head := stocktake.get_head(103);
  PERFORM pgunit.assert_not_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__stocktake__destroy() OWNER TO postgres;

--
-- TOC entry 816 (class 1255 OID 62770)
-- Name: __stocktake__generate_display_name(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__stocktake__generate_display_name() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _display_name character varying;
BEGIN
  
  RAISE DEBUG '#trace Check __stocktake__generate_display_name()';
  
  INSERT INTO schedule.calendar VALUES ('2017-01-01', 1, 1, 1, 1);
  
  _display_name := stocktake.generate_display_name('2017-01-01', 'A1');
  PERFORM pgunit.assert_equals('GST-A1-AB1AA0', _display_name, 'Incorrect _abbrevation value');

END;
$$;


ALTER FUNCTION tests.__stocktake__generate_display_name() OWNER TO postgres;

--
-- TOC entry 817 (class 1255 OID 62771)
-- Name: __stocktake__get_body(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__stocktake__get_body() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _body common.document_body[];
  _test_body CONSTANT common.document_body[] := ARRAY[('good2', 2.0, 'm'), ('good3', 3.0, 'm')]::common.document_body[];
BEGIN
  
  RAISE DEBUG '#trace Check __stocktake__get_body()';

  INSERT INTO stocktake.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'STOCKTAKE-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'STOCKTAKE-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'STOCKTAKE-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  
  INSERT INTO stocktake.body VALUES (101, 'good1', 1.0, 'm', 0);
  INSERT INTO stocktake.body VALUES (103, 'good2', 2.0, 'm', 0);
  INSERT INTO stocktake.body VALUES (103, 'good3', 3.0, 'm', 0);

  _body := stocktake.get_body(103);
  PERFORM pgunit.assert_array_equals(_test_body, _body, 'Incorrect _body value');

END;
$$;


ALTER FUNCTION tests.__stocktake__get_body() OWNER TO postgres;

--
-- TOC entry 819 (class 1255 OID 62772)
-- Name: __stocktake__get_gid_by_id(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__stocktake__get_gid_by_id() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_id CONSTANT bigint := 102;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a'::uuid;
  _gid uuid;
BEGIN
  
  RAISE DEBUG '#trace Check __stocktake__get_gid_by_id()';

  INSERT INTO stocktake.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'STOCKTAKE-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'STOCKTAKE-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'STOCKTAKE-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  
  _gid := stocktake.get_gid_by_id(_test_id);
  PERFORM pgunit.assert_equals(_test_gid, _gid, 'Incorrect _gid value');

END;
$$;


ALTER FUNCTION tests.__stocktake__get_gid_by_id() OWNER TO postgres;

--
-- TOC entry 820 (class 1255 OID 62773)
-- Name: __stocktake__get_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__stocktake__get_head() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.document_head;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a'::uuid;
  _test_display_name CONSTANT character varying := 'STOCKTAKE-02';
  _test_document_date CONSTANT date := '2017-02-01'::date;
  _test_facility_code CONSTANT character varying := 'A1';
  _test_curr_fsmt CONSTANT common.document_fsmt := 'COMMITTED'::common.document_fsmt;
  _test_doctype CONSTANT common.document_kind := 'STOCKTAKE'::common.document_kind;
BEGIN
  
  RAISE DEBUG '#trace Check __stocktake__get_head()';

  INSERT INTO stocktake.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'STOCKTAKE-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'STOCKTAKE-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'STOCKTAKE-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  
  _head := stocktake.get_head(102);
  PERFORM pgunit.assert_equals(_test_gid, _head.gid, 'Incorrect gid value');
  PERFORM pgunit.assert_equals(_test_display_name, _head.display_name, 'Incorrect display_name value');
  PERFORM pgunit.assert_equals(_test_document_date, _head.document_date, 'Incorrect document_date value');
  PERFORM pgunit.assert_equals(_test_facility_code, _head.facility_code, 'Incorrect facility_code value');
  PERFORM pgunit.assert_equals(_test_curr_fsmt, _head.curr_fsmt, 'Incorrect curr_fsmt value');
  PERFORM pgunit.assert_equals(_test_doctype, _head.doctype, 'Incorrect doctype value');

  _head := stocktake.get_head(103);
  PERFORM pgunit.assert_not_equals(_test_gid, _head.gid, 'Incorrect gid value');
  
  _head := stocktake.get_head(104);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__stocktake__get_head() OWNER TO postgres;

--
-- TOC entry 821 (class 1255 OID 62774)
-- Name: __stocktake__get_head_batch(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__stocktake__get_head_batch() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _heads common.document_head[];
  _head common.document_head;
  _array_lengh integer;
  _test_array_lengh CONSTANT integer := 2;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a'::uuid;
  _test_display_name CONSTANT character varying := 'STOCKTAKE-02';
  _test_document_date CONSTANT date := '2017-02-01'::date;
  _test_facility_code CONSTANT character varying := 'A1';
  _test_curr_fsmt CONSTANT common.document_fsmt := 'COMMITTED'::common.document_fsmt;
  _test_doctype CONSTANT common.document_kind := 'STOCKTAKE'::common.document_kind;
  _test_due_date CONSTANT date := '2017-02-02'::date;
BEGIN
  
  RAISE DEBUG '#trace Check __stocktake__get_head_batch()';

  INSERT INTO stocktake.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'STOCKTAKE-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'STOCKTAKE-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'STOCKTAKE-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  
  _heads := stocktake.get_head_batch(ARRAY[102,103]::bigint[]);
  _array_lengh := array_length(_heads, 1);
  _head := _heads[1];
  PERFORM pgunit.assert_equals(_test_array_lengh, _array_lengh, 'Incorrect _array_lengh value');
  PERFORM pgunit.assert_equals(_test_gid, _head.gid, 'Incorrect gid value');
  PERFORM pgunit.assert_equals(_test_display_name, _head.display_name, 'Incorrect display_name value');
  PERFORM pgunit.assert_equals(_test_document_date, _head.document_date, 'Incorrect document_date value');
  PERFORM pgunit.assert_equals(_test_facility_code, _head.facility_code, 'Incorrect facility_code value');
  PERFORM pgunit.assert_equals(_test_curr_fsmt, _head.curr_fsmt, 'Incorrect curr_fsmt value');
  PERFORM pgunit.assert_equals(_test_doctype, _head.doctype, 'Incorrect doctype value');

END;
$$;


ALTER FUNCTION tests.__stocktake__get_head_batch() OWNER TO postgres;

--
-- TOC entry 822 (class 1255 OID 62775)
-- Name: __stocktake__get_head_batch_proposed(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__stocktake__get_head_batch_proposed() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _heads common.document_head[];
  _head common.document_head;
  _array_lengh integer;
  _test_array_lengh CONSTANT integer := 1;
  _test_start_date CONSTANT date := '2017-03-01'::date;
  _test_end_date CONSTANT date := '2017-03-01'::date;
  _test_gid CONSTANT uuid := 'f20d7196-01d1-11e7-b441-d4bed939923a'::uuid;
  _test_display_name CONSTANT character varying := 'STOCKTAKE-03';
  _test_document_date CONSTANT date := '2017-03-01'::date;
  _test_facility_code CONSTANT character varying := 'A1';
  _test_curr_fsmt CONSTANT common.document_fsmt := 'PROPOSED'::common.document_fsmt;
  _test_doctype CONSTANT common.document_kind := 'STOCKTAKE'::common.document_kind;
BEGIN
  
  RAISE DEBUG '#trace Check __stocktake__get_head_batch_proposed()';

  INSERT INTO stocktake.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'STOCKTAKE-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'STOCKTAKE-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'STOCKTAKE-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  
  _heads := stocktake.get_head_batch_proposed(_test_facility_code, _test_start_date, _test_end_date);

  _array_lengh := array_length(_heads, 1);
  _head := _heads[1];
  PERFORM pgunit.assert_equals(_test_array_lengh, _array_lengh, 'Incorrect _array_lengh value');
  PERFORM pgunit.assert_equals(_test_gid, _head.gid, 'Incorrect gid value');
  PERFORM pgunit.assert_equals(_test_display_name, _head.display_name, 'Incorrect display_name value');
  PERFORM pgunit.assert_equals(_test_document_date, _head.document_date, 'Incorrect document_date value');
  PERFORM pgunit.assert_equals(_test_facility_code, _head.facility_code, 'Incorrect facility_code value');
  PERFORM pgunit.assert_equals(_test_curr_fsmt, _head.curr_fsmt, 'Incorrect curr_fsmt value');
  PERFORM pgunit.assert_equals(_test_doctype, _head.doctype, 'Incorrect doctype value');

END;
$$;


ALTER FUNCTION tests.__stocktake__get_head_batch_proposed() OWNER TO postgres;

--
-- TOC entry 823 (class 1255 OID 62776)
-- Name: __stocktake__get_id_by_gid(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__stocktake__get_id_by_gid() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_id CONSTANT bigint := 102;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a'::uuid;
  _id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __stocktake__get_id_by_gid()';

  INSERT INTO stocktake.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'STOCKTAKE-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'REVERTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'STOCKTAKE-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'STOCKTAKE-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  
  _id := stocktake.get_id_by_gid(_test_gid);
  PERFORM pgunit.assert_equals(_test_id, _id, 'Incorrect _id value');

END;
$$;


ALTER FUNCTION tests.__stocktake__get_id_by_gid() OWNER TO postgres;

--
-- TOC entry 824 (class 1255 OID 62777)
-- Name: __stocktake__numerator_nextval(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__stocktake__numerator_nextval() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _numerator integer;
  _test_numerator_a1 CONSTANT integer := 11;
  _test_numerator_g1 CONSTANT integer := 1;
  _test_week_a1 CONSTANT integer := 2;
  _test_week_g1 CONSTANT integer := 10;
  _test_facility_code_a1 CONSTANT character varying := 'A1';
  _test_facility_code_g1 character varying := 'G1';
BEGIN
  
  RAISE DEBUG '#trace Check __stocktake__numerator_nextval()';

  INSERT INTO stocktake.numerator VALUES ('A1', 1, 100);
  INSERT INTO stocktake.numerator VALUES ('A1', 2, 10);
  INSERT INTO stocktake.numerator VALUES ('B1', 1, 200);

  _numerator := stocktake.numerator_nextval(_test_facility_code_a1, _test_week_a1);
  PERFORM pgunit.assert_equals(_test_numerator_a1, _numerator, 'Incorrect _numerator value');

  _numerator := stocktake.numerator_nextval(_test_facility_code_g1, _test_week_g1);
  PERFORM pgunit.assert_equals(_test_numerator_g1, _numerator, 'Incorrect _numerator value');

END;
$$;


ALTER FUNCTION tests.__stocktake__numerator_nextval() OWNER TO postgres;

--
-- TOC entry 825 (class 1255 OID 62778)
-- Name: __stocktake__resubmit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__stocktake__resubmit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.document_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','STOCKTAKE-01','2017-01-01','A1','PROPOSED','STOCKTAKE')]::common.document_head[];
  _test_body_submit CONSTANT common.document_body[] := ARRAY[('good1',10,'m'), ('good2',20,'m')]::common.document_body[];
  _test_body_resubmit CONSTANT common.document_body[] := ARRAY[('good3',10,'m'), ('good4',20,'m')]::common.document_body[];
  _head common.document_head;
  _body common.document_body[];
  _document_id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __stocktake__resubmit()';
  
  _document_id := stocktake.submit(_test_head[1], _test_body_submit);
  PERFORM stocktake.resubmit(_document_id, _test_body_resubmit);
  _head := stocktake.get_head(_document_id);
  _body := stocktake.get_body(_document_id);
  --PERFORM pgunit.assert_equals(_test_head[1], _head, 'Incorrect _head value');
  PERFORM pgunit.assert_array_equals(_test_body_resubmit, _body, 'Incorrect _body value');


END;
$$;


ALTER FUNCTION tests.__stocktake__resubmit() OWNER TO postgres;

--
-- TOC entry 826 (class 1255 OID 62779)
-- Name: __stocktake__submit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__stocktake__submit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.document_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','STOCKTAKE-01','2017-01-01','A1','PROPOSED','STOCKTAKE')]::common.document_head[];
  _test_body CONSTANT common.document_body[] := ARRAY[('good1',10,'m'), ('good2',20,'m')]::common.document_body[];
  _head common.document_head;
  _body common.document_body[];
  _document_id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __stocktake__submit()';
  
  _document_id := stocktake.submit(_test_head[1], _test_body);
  _head := stocktake.get_head(_document_id);
  _body := stocktake.get_body(_document_id);
  --PERFORM pgunit.assert_equals(_test_head[1], _head, 'Incorrect _head value');
  PERFORM pgunit.assert_array_equals(_test_body, _body, 'Incorrect _body value');


END;
$$;


ALTER FUNCTION tests.__stocktake__submit() OWNER TO postgres;

--
-- TOC entry 827 (class 1255 OID 62780)
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
-- TOC entry 828 (class 1255 OID 62781)
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
-- TOC entry 829 (class 1255 OID 62782)
-- Name: __tooling__submit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__tooling__submit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.tooling_head[] := ARRAY[(103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', 'TOOL-002', 1, 'TOOL-002', '2018-01-16', 'TOOLING')]::common.tooling_head[];
  _head common.tooling_head;
  _document_id bigint;
BEGIN

  RAISE DEBUG '#trace Check __tooling__submit()';
  
  _document_id := tooling.submit(_test_head[1]);
  _head := tooling.get_head(_document_id);

  RAISE DEBUG '%', _head;
  RAISE DEBUG '%', _test_head[1]::common.tooling_head;

  --PERFORM pgunit.assert_array_equals(_test_head[1]::common.tooling_head, _head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__tooling__submit() OWNER TO postgres;

--
-- TOC entry 830 (class 1255 OID 62783)
-- Name: _load_data(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests._load_data() RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

/*

  INSERT INTO uom.information VALUES ('kg', 'MASS', 'kg', 1);
  INSERT INTO uom.information VALUES ('m', 'LENGHT', 'm', 1);
  INSERT INTO uom.information VALUES ('pcs', 'QUANTITY', 'pcs', 1);
  INSERT INTO uom.information VALUES ('g', 'MASS', 'kg', 0.0010);
  INSERT INTO uom.information VALUES ('t', 'MASS', 'kg', 1000);
  INSERT INTO uom.information VALUES ('mm', 'LENGHT', 'm', 0.0010);
  INSERT INTO uom.information VALUES ('km', 'LENGHT', 'm', 1000);
  INSERT INTO uom.information VALUES ('cm', 'LENGHT', 'm', 0.0100);
  INSERT INTO uom.information VALUES ('l', 'VOLUME', 'l', 1);
  INSERT INTO uom.information VALUES ('ml', 'VOLUME', 'l', 0.0010);

  INSERT INTO facility.area VALUES (3, '00f11b88-fc89-11e7-b381-d4bed939923a', 'A01', 1, 'A01', '2018-01-18', 'S01', 'AREA');
  INSERT INTO facility.area VALUES (11, '2f3546bc-fca3-11e7-9533-d4bed939923a', 'A04', 1, 'A04', '2018-01-18', 'S01', 'AREA');
  INSERT INTO facility.line VALUES (4, '1e749946-fc89-11e7-b4dd-d4bed939923a', 'L01', 1, 'L01', '2018-01-18', 'A01', 'LINE');
  INSERT INTO facility.line VALUES (6, 'f0f0aacc-fca2-11e7-952e-d4bed939923a', 'L02', 1, 'L02', '2018-01-18', 'A01', 'LINE');
  INSERT INTO facility.line VALUES (7, 'fcead30c-fca2-11e7-952f-d4bed939923a', 'L03', 1, 'L03', '2018-01-18', 'A01', 'LINE');
  INSERT INTO facility.line VALUES (9, '087b7910-fca3-11e7-9531-d4bed939923a', 'L04', 1, 'L04', '2018-01-18', 'A01', 'LINE');
  INSERT INTO facility.site VALUES (2, 'e975ae6a-fc88-11e7-a8d5-d4bed939923a', 'S01', 1, 'S01', '2018-01-18', 'E01', 'SITE');
  INSERT INTO facility.site VALUES (12, '38c2ed2e-fca3-11e7-9534-d4bed939923a', 'S04', 1, 'S04', '2018-01-18', 'E01', 'SITE');

  INSERT INTO inventory.definition VALUES (1, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', 'fl-16-50', 1, '2018-01-15', NULL, NULL, 'PROPOSED', '2018-01-15 23:26:44.534271+02', 1, 'pcs');
  INSERT INTO inventory.definition VALUES (2, 'd83fb96a-fa3a-11e7-948a-d4bed939923a', 'fl-25-50', 1, '2018-01-15', NULL, NULL, 'PROPOSED', '2018-01-15 23:27:10.118984+02', 2, 'pcs');
  INSERT INTO inventory.definition VALUES (3, '9d521068-fa3b-11e7-ac45-d4bed939923a', 'pipe-076x3', 1, '2018-01-15', NULL, NULL, 'PROPOSED', '2018-01-15 23:32:40.748622+02', 4, 'kg');
  INSERT INTO inventory.information VALUES (1, 'a711da30-fa3a-11e7-8e63-d4bed939923a', '22.16.050-001', 'fl-16-50', '2018-01-15');
  INSERT INTO inventory.information VALUES (2, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', '22.25.050-001', 'fl-25-50', '2018-01-15');
  INSERT INTO inventory.information VALUES (3, 'f08b5682-fa3a-11e7-86da-d4bed939923a', '22.40.050-001', 'fl-40-50', '2018-01-15');
  INSERT INTO inventory.information VALUES (4, '7edbcfd4-fa3b-11e7-b771-d4bed939923a', 'pipe-076x3', 'pipe-076x3', '2018-01-15');
  INSERT INTO inventory.measurement VALUES (1, 'pcs', 1);
  INSERT INTO inventory.measurement VALUES (2, 'pcs', 1);
  INSERT INTO inventory.measurement VALUES (3, 'm', 25);
  INSERT INTO inventory.variety VALUES (1, 'PART');
  INSERT INTO inventory.variety VALUES (1, 'PRODUCIBLE');
  INSERT INTO inventory.variety VALUES (1, 'SALABLE');
  INSERT INTO inventory.variety VALUES (1, 'STORABLE');
  INSERT INTO inventory.variety VALUES (2, 'PART');
  INSERT INTO inventory.variety VALUES (2, 'PRODUCIBLE');
  INSERT INTO inventory.variety VALUES (2, 'SALABLE');
  INSERT INTO inventory.variety VALUES (2, 'STORABLE');
  INSERT INTO inventory.variety VALUES (3, 'STORABLE');
  INSERT INTO inventory.variety VALUES (3, 'BUYABLE');
  INSERT INTO inventory.variety VALUES (3, 'CONSUMABLE');
  INSERT INTO inventory.variety VALUES (3, 'PRIMAL');
*/

PERFORM facility.submit(
  (
    NULL,
    'a711da30-fa3a-11e7-8e63-d4bed939923a',
    'ENTERPRISE-01',
    '1',
    'ENTERPRISE #1',
    '2021-05-01',
    NULL,
    'ENTERPRISE'
  )::common.facility_head);

PERFORM facility.submit(
  (
    NULL,
    'b39a3ff4-fa3a-11e7-8e64-d4bed939923a',
    'SITE-01',
    '1',
    'SITE #1',
    '2021-05-01',
    'ENTERPRISE-01',
    'SITE'
  )::common.facility_head);

PERFORM facility.submit(
  (
    NULL,
    'f08b5682-fa3a-11e7-86da-d4bed939923a',
    'SITE-02',
    '1',
    'SITE #2',
    '2021-05-01',
    'ENTERPRISE-01',
    'SITE'
  )::common.facility_head);


PERFORM facility.submit(
  (
    NULL,
    '8236af18-eb1a-11e6-8a73-d4bed939923a',
    'AREA-01',
    '1',
    'AREA #1',
    '2021-05-01',
    'SITE-01',
    'AREA'
  )::common.facility_head);

PERFORM facility.submit(
  (
    NULL,
    'f20d7196-01d1-11e7-b441-d4bed939923a',
    'AREA-02',
    '1',
    'AREA #2',
    '2021-05-01',
    'SITE-02',
    'AREA'
  )::common.facility_head);

  PERFORM operation.submit(
    (NULL, NULL, 'OPR-001', 1, 'Operation #001', '2018-01-01', 'OPERATION')::common.operation_head
  );
  PERFORM operation.submit(
    (NULL, NULL, 'OPR-002', 1, 'Operation #002', '2018-01-01', 'OPERATION')::common.operation_head
  );
  PERFORM operation.submit(
    (NULL, NULL, 'OPR-003', 1, 'Operation #003', '2018-01-01', 'OPERATION')::common.operation_head
  );
  PERFORM operation.submit(
    (NULL, NULL, 'OPR-004', 1, 'Operation #004', '2018-01-01', 'OPERATION')::common.operation_head
  );
  PERFORM operation.submit(
    (NULL, NULL, 'OPR-005', 1, 'Operation #005', '2018-01-01', 'OPERATION')::common.operation_head
  );


  PERFORM equipment.submit(
    (NULL, NULL, 'EQP-001', 1, 'Equipment #001', '2018-01-01', 'EQUIPMENT')::common.equipment_head
  );
  PERFORM equipment.submit(
    (NULL, NULL, 'EQP-002', 1, 'Equipment #002', '2018-01-01', 'EQUIPMENT')::common.equipment_head
  );
  PERFORM equipment.submit(
    (NULL, NULL, 'EQP-003', 1, 'Equipment #003', '2018-01-01', 'EQUIPMENT')::common.equipment_head
  );
  PERFORM equipment.submit(
    (NULL, NULL, 'EQP-004', 1, 'Equipment #004', '2018-01-01', 'EQUIPMENT')::common.equipment_head
  );
  PERFORM equipment.submit(
    (NULL, NULL, 'EQP-005', 1, 'Equipment #005', '2018-01-01', 'EQUIPMENT')::common.equipment_head
  );


  PERFORM tooling.submit(
    (NULL, NULL, 'TLN-001', 1, 'Tooling #001', '2018-01-01', 'TOOLING')::common.tooling_head
  );
  PERFORM tooling.submit(
    (NULL, NULL, 'TLN-002', 1, 'Tooling #002', '2018-01-01', 'TOOLING')::common.tooling_head
  );
  PERFORM tooling.submit(
    (NULL, NULL, 'TLN-003', 1, 'Tooling #003', '2018-01-01', 'TOOLING')::common.tooling_head
  );
  PERFORM tooling.submit(
    (NULL, NULL, 'TLN-004', 1, 'Tooling #004', '2018-01-01', 'TOOLING')::common.tooling_head
  );
  PERFORM tooling.submit(
    (NULL, NULL, 'TLN-005', 1, 'Tooling #005', '2018-01-01', 'TOOLING')::common.tooling_head
  );


  PERFORM personnel.submit(
    (NULL, NULL, 'PER-001', 1, 'Personnel #001', '2018-01-01', 'PERSONNEL')::common.personnel_head
  );
  PERFORM personnel.submit(
    (NULL, NULL, 'PER-002', 1, 'Personnel #002', '2018-01-01', 'PERSONNEL')::common.personnel_head
  );
  PERFORM personnel.submit(
    (NULL, NULL, 'PER-003', 1, 'Personnel #003', '2018-01-01', 'PERSONNEL')::common.personnel_head
  );
  PERFORM personnel.submit(
    (NULL, NULL, 'PER-004', 1, 'Personnel #004', '2018-01-01', 'PERSONNEL')::common.personnel_head
  );
  PERFORM personnel.submit(
    (NULL, NULL, 'PER-005', 1, 'Personnel #005', '2018-01-01', 'PERSONNEL')::common.personnel_head
  );
  

  PERFORM inventory.submit(
    (NULL, NULL, '80-31-050', '80.31.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, '82-31-050', '82.31.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  --
  PERFORM inventory.submit(
    (NULL, NULL, '22-25-050', '22.25.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, '40-32-050', '40.32.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, '50-01-050', '50.01.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, '51-01-050', '51.01.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, '52-01-050', '52.01.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, '53-01-004', '53.01.004-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, '60-01-050', '60.01.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, '61-01-050', '61.01.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, '70-01-050', '70.01.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, '70-04-020', '70.04.020-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, '41-31-050', '41.31.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, '42-01-050', '42.01.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, '42-02-022', '42.02.022-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, '55-31-050', '55.31.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, '71-01-020', '71.01.020-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('PART'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );

  --
  PERFORM inventory.submit(
    (NULL, NULL, '11-32-050', '11.32.050-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );


  --
  PERFORM inventory.submit(
    (NULL, NULL, '72-01-009', '72.01.009-001', 1, '2018-05-01', 'pcs', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('pcs', 'pcs', 1)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  --
  PERFORM inventory.submit(
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

  PERFORM inventory.submit(
    (NULL, NULL, 'Крг-ст20-022', 'Крг-022-ст20', 1, '2018-05-01', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('m', 'm', 1), ('m', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, 'Крг-ст20Х13-016', 'Крг-016-ст20Х13', 1, '2018-05-01', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('m', 'm', 1), ('m', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, 'Крг-ст45-004,0', 'Крг-004,0-ст45', 1, '2018-05-01', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('m', 'm', 1), ('m', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, 'Лст-ст3-003,0', 'Лст-003,0-ст3', 1, '2018-05-01', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('kg', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, 'Лст-ст65Г-001,2', 'Лст-001,2-ст65Г', 1, '2018-05-01', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('kg', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, 'Лст-ст20Х17-001,0', 'Лст-001,0-ст20Х17', 1, '2018-05-01', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('kg', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, 'Плс-ст3-020х4', 'Плс-020х4-ст3', 1, '2018-05-01', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('kg', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, 'Трб-ст20-057,0х03,5-Ш', 'Трб-057,0х03,5-ст20-Ш', 1, '2018-05-01', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('m', 'm', 1), ('m', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, 'Трб-ст20-089,0х03,5-Ш', 'Трб-089,0х03,5-ст20-Ш', 1, '2018-05-01', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('m', 'm', 1), ('m', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, 'Трб-ст20-089,0х03,0-Ш', 'Трб-089,0х03,0-ст20-Ш', 1, '2018-05-01', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('m', 'm', 1), ('m', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, 'Трб-ст20Х13-068,0х04,0', 'Трб-068,0х04,0-ст20Х13', 1, '2018-05-01', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('m', 'm', 1), ('m', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, 'Квд-ст3ПС-080х080', 'Квд-080х080-ст3ПС', 1, '2018-05-01', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('kg', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, 'ПЕ-15803-020', 'ПЕ-15803-020', 1, '2018-05-01', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('kg', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, 'Ф-4', 'Ф-4', 1, '2018-05-01', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('kg', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, 'Лст-ст20Х17-000,8', 'Лст-000,8-ст20Х17', 1, '2018-05-01', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('kg', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, 'Лст-ст20Х17-004,4', 'Лст-004,4-ст20Х17', 1, '2018-05-01', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('kg', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.submit(
    (NULL, NULL, 'Трб-ст20Х13-068,0х03,5', 'Трб-068,0х03,5-ст20Х13', 1, '2018-05-01', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head,
    ARRAY[('m', 'm', 1), ('m', 'kg', 2)]::common.unit_conversion_type[],
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );



  PERFORM ebom.submit(
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

  PERFORM ebom.submit(
    (NULL, NULL, '80-31-50: definition', 3, '2018-05-21','PROPOSED', 'EBOM', ('80.31.050-001', 1, 1.0000, 'pcs', 'ASSEMBLY'))::common.ebom_head,
    ARRAY[
      ('41.31.050-001', 1, 1.0000, 'pcs', 'PART'),
      ('42.01.050-001', 1, 1.0000, 'pcs', 'PART')
    ]::common.component_specification[]
  );

  PERFORM ebom.submit(
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


  PERFORM mbom.submit(
    (NULL, NULL, '22.25.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('22.25.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Квд-080х080-ст3ПС', 1, 3.4, 'kg', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.submit(
    (NULL, NULL, '42.01.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('42.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Крг-022-ст20', 1, 50, 'mm', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.submit(
    (NULL, NULL, '42.02.022-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('42.02.022-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Крг-022-ст20', 1, 18, 'mm', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.submit(
    (NULL, NULL, '61.01.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('61.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Крг-016-ст20Х13', 1, 81, 'mm', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.submit(
    (NULL, NULL, '53.01.004-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('53.01.004-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Крг-004,0-ст45', 1, 14, 'mm', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.submit(
    (NULL, NULL, '50.01.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('50.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Лст-000,8-ст20Х17', 1, 0, 'kg', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.submit(
    (NULL, NULL, '50.01.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('50.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Лст-000,8-ст20Х17', 1, 0.02, 'kg', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.submit(
    (NULL, NULL, '50.01.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('50.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Лст-001,0-ст20Х17', 1, 0.03, 'kg', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.submit(
    (NULL, NULL, '60.01.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('60.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Лст-004,4-ст20Х17', 1, 0.4, 'kg', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.submit(
    (NULL, NULL, '52.01.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('52.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Лст-003,0-ст3', 1, 0, 'kg', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.submit(
    (NULL, NULL, '52.01.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('52.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Лст-003,0-ст3', 1, 0.08, 'kg', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.submit(
    (NULL, NULL, '51.01.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('51.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Лст-001,2-ст65Г', 1, 0, 'kg', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.submit(
    (NULL, NULL, '51.01.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('51.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Лст-001,2-ст65Г', 1, 0.03, 'kg', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.submit(
    (NULL, NULL, '71.01.020-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('71.01.020-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('ПЕ-15803-020', 1, 0.01, 'kg', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.submit(
    (NULL, NULL, '55.31.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('55.31.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Плс-020х4-ст3', 1, 0.15, 'kg', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.submit(
    (NULL, NULL, '40.32.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('40.32.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Трб-057,0х03,5-ст20-Ш', 1, 78, 'mm', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.submit(
    (NULL, NULL, '41.31.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('41.31.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Трб-089,0х03,0-ст20-Ш', 1, 115, 'mm', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.submit(
    (NULL, NULL, '41.31.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('41.31.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Трб-089,0х03,5-ст20-Ш', 1, 115, 'mm', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.submit(
    (NULL, NULL, '60.01.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('60.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Трб-068,0х03,5-ст20Х13', 1, 65, 'mm', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.submit(
    (NULL, NULL, '60.01.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('60.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Трб-068,0х04,0-ст20Х13', 1, 65, 'mm', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.submit(
    (NULL, NULL, '70.01.050-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('70.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Ф-4', 1, 15.6, 'g', 'PRIMAL')]::common.material_specification[]
  );
  PERFORM mbom.submit(
    (NULL, NULL, '70.04.020-001: definition', 1, '2018-05-21', 'PROPOSED','MBOM', ('70.04.020-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[('Ф-4', 1, 0.5, 'g', 'PRIMAL')]::common.material_specification[]
  );

  PERFORM mbom.submit(
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

  PERFORM mbom.submit(
    (NULL, NULL, '80-31-50: definition', 3, '2018-05-21','PROPOSED', 'MBOM', ('80.31.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE'))::common.mbom_head,
    ARRAY[
      ('41.31.050-001', 1, 1.0000, 'pcs', 'CONSUMABLE'),
      ('42.01.050-001', 1, 1.0000, 'pcs', 'CONSUMABLE')
    ]::common.material_specification[]
  );

  PERFORM mbom.submit(
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
-- TOC entry 831 (class 1255 OID 62785)
-- Name: _load_ebom(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests._load_ebom() RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  PERFORM ebom.submit(
    (NULL, NULL, '2018-05-21','PROPOSED', 'EBOM', ('80.02.100-002', 1, NULL, 1.0000, 'pcs', 'ASSEMBLY'))::common.ebom_head,
    ARRAY[
      ('20.10.100-001', 1, NULL, 1.0000, 'pcs', 'PART'),
      ('23.02.125-001', 1, NULL, 1.0000, 'pcs', 'PART'),
      ('41.01.100-002', 1, NULL, 1.0000, 'pcs', 'PART')
    ]::common.component_specification[]
  );


  PERFORM ebom.submit(
    (NULL, NULL, '2018-05-21','PROPOSED', 'EBOM', ('80.41.125-001', 1, NULL, 1.0000, 'pcs', 'ASSEMBLY'))::common.ebom_head,
    ARRAY[
      ('41.41.125-001', 1, NULL, 1.0000, 'pcs', 'PART'),
      ('42.01.125-001', 1, NULL, 1.0000, 'pcs', 'PART')
    ]::common.component_specification[]
  );

  PERFORM ebom.submit(
    (NULL, NULL, '2018-05-21','PROPOSED', 'EBOM', ('82.31.125-002', 1, NULL, 1.0000, 'pcs', 'ASSEMBLY'))::common.ebom_head,
    ARRAY[
      ('42.02.125-001', 1, NULL, 1.0000, 'pcs', 'PART'),
      ('55.31.125-001', 1, NULL, 1.0000, 'pcs', 'PART'),
      ('71.01.030-001', 1, NULL, 1.0000, 'pcs', 'PART')
    ]::common.component_specification[]
  );

  PERFORM ebom.submit(
    (NULL, NULL, '2018-05-21','PROPOSED', 'EBOM', ('11.41.100-002', 1, NULL, 1.0000, 'pcs', 'ASSEMBLY'))::common.ebom_head,
    ARRAY[
      ('61.01.125-001', 1, NULL, 1.0000,  'pcs', 'PART'),
      ('70.02.125-001', 1, NULL, 2.0000,  'pcs', 'PART'),
      ('70.03.125-001', 1, NULL, 2.0000,  'pcs', 'PART'),
      ('70.04.125-101', 1, NULL, 1.0000,  'pcs', 'PART'),
      ('71.03.150-001', 1, NULL, 2.0000,  'pcs', 'PART'),
      ('72.01.021-001', 1, NULL, 2.0000,  'pcs', 'PART'),
      ('80.02.100-002', 1, NULL, 2.0000,  'pcs', 'ASSEMBLY'),
      ('80.41.125-001', 1, NULL, 1.0000,  'pcs', 'ASSEMBLY'),
      ('82.31.125-002', 1, NULL, 1.0000,  'pcs', 'ASSEMBLY'),
      ('Гайка-М16',     1, NULL, 16.0000, 'pcs', 'BUYABLE'),
      ('Гровер-16',     1, NULL, 16.0000, 'pcs', 'BUYABLE')
    ]::common.component_specification[]
  );


END;
$$;


ALTER FUNCTION tests._load_ebom() OWNER TO postgres;

--
-- TOC entry 832 (class 1255 OID 62786)
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
  TRUNCATE TABLE calendar.benchmark CASCADE;
  TRUNCATE TABLE calendar.checkpoint CASCADE;
  TRUNCATE TABLE calendar.definition CASCADE;
  TRUNCATE TABLE calendar.information CASCADE;
  TRUNCATE TABLE calendar.workday CASCADE;
  TRUNCATE TABLE calendar.workweek CASCADE;
  TRUNCATE TABLE binding.ebom_to_mbom CASCADE;
  TRUNCATE TABLE binding.ebom_to_process CASCADE;
  TRUNCATE TABLE binding.ebom_to_product CASCADE;
  TRUNCATE TABLE binding.mbom_to_process CASCADE;
  TRUNCATE TABLE binding.mbom_to_product CASCADE;
  TRUNCATE TABLE ebom.assembly CASCADE;
  TRUNCATE TABLE ebom.blueprint CASCADE;
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
  TRUNCATE TABLE inventory.variety CASCADE;
  -- TRUNCATE TABLE inventory.phantom CASCADE;
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
  TRUNCATE TABLE product.blueprint CASCADE;
  TRUNCATE TABLE product.tree CASCADE;
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
  ALTER SEQUENCE product.blueprint_id_seq RESTART WITH 1;
  ALTER SEQUENCE tooling.information_id_seq RESTART WITH 1;
  -- ALTER SEQUENCE uom.uom_role_uom_role_id_seq RESTART WITH 1;

  /*

  INSERT INTO equipment.information (id, gid, equipment_code, version_num, display_name, published_date, equipment_type) VALUES (1, 'bb6627ea-b29a-11eb-a98c-f85971830086', 'UNDEFINED', 1, 'UNDEFINED', '2021-05-11', 'UNDEFINED');
  INSERT INTO operation.information (id, gid, operation_code, version_num, display_name, published_date, operation_type) VALUES (1, 'e320b23c-b29a-11eb-b432-f85971830086', 'UNDEFINED', 1, 'UNDEFINED', '2021-05-11', 'UNDEFINED');
  INSERT INTO tooling.information   (id, gid, tooling_code,   version_num, display_name, published_date, tooling_type)   VALUES (1, 'fffa0c5a-b29a-11eb-ba0c-f85971830086', 'UNDEFINED', 1, 'UNDEFINED', '2021-05-11', 'UNDEFINED');
  INSERT INTO personnel.information (id, gid, personnel_code, version_num, display_name, published_date, personnel_type) VALUES (1, 'e5c78082-b29b-11eb-97ce-f85971830086', 'UNDEFINED', 1, 'UNDEFINED', '2021-05-11', 'UNDEFINED');

  SELECT pg_catalog.setval('personnel.information_id_seq', 1, true);
  SELECT pg_catalog.setval('tooling.information_id_seq',   1, true);
  SELECT pg_catalog.setval('equipment.information_id_seq', 1, true);
  SELECT pg_catalog.setval('operation.information_id_seq', 1, true);
  */

END;
$$;


ALTER FUNCTION tests._reset_data() OWNER TO postgres;

--
-- TOC entry 834 (class 1255 OID 62787)
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
-- TOC entry 835 (class 1255 OID 62788)
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
-- TOC entry 836 (class 1255 OID 62789)
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
-- TOC entry 837 (class 1255 OID 62790)
-- Name: submit(common.tooling_head); Type: FUNCTION; Schema: tooling; Owner: postgres
--

CREATE FUNCTION tooling.submit(__head common.tooling_head) RETURNS bigint
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


ALTER FUNCTION tooling.submit(__head common.tooling_head) OWNER TO postgres;

--
-- TOC entry 838 (class 1255 OID 62791)
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
-- TOC entry 839 (class 1255 OID 62792)
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

--
-- TOC entry 840 (class 1255 OID 62793)
-- Name: get_head(character varying); Type: FUNCTION; Schema: uom; Owner: postgres
--

CREATE FUNCTION uom.get_head(__uom_code character varying) RETURNS common.uom_head
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN 
    (information.uom_code, 
    information.uom_domain, 
    information.base_uom_code, 
    information.factor)::common.uom_head
  FROM 
    uom.information
  WHERE 
    information.uom_code = __uom_code;
END;
$$;


ALTER FUNCTION uom.get_head(__uom_code character varying) OWNER TO postgres;

--
-- TOC entry 841 (class 1255 OID 62794)
-- Name: destroy(bigint); Type: FUNCTION; Schema: work; Owner: postgres
--

CREATE FUNCTION work.destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  
  DELETE FROM work.head WHERE id = __document_id;

END;
$$;


ALTER FUNCTION work.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 4945 (class 0 OID 0)
-- Dependencies: 841
-- Name: FUNCTION destroy(__document_id bigint); Type: COMMENT; Schema: work; Owner: postgres
--

COMMENT ON FUNCTION work.destroy(__document_id bigint) IS 'delete work report';


--
-- TOC entry 842 (class 1255 OID 62795)
-- Name: disallow_editing_of_committed_document_body(); Type: FUNCTION; Schema: work; Owner: postgres
--

CREATE FUNCTION work.disallow_editing_of_committed_document_body() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  _document_fsmt common.document_fsmt;
BEGIN
  IF (TG_OP = 'INSERT' OR TG_OP = 'UPDATE') THEN

    SELECT 
      head.curr_fsmt
    FROM 
      work.head
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
      work.head
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


ALTER FUNCTION work.disallow_editing_of_committed_document_body() OWNER TO postgres;

--
-- TOC entry 845 (class 1255 OID 62796)
-- Name: do_commit(bigint, boolean); Type: FUNCTION; Schema: work; Owner: postgres
--

CREATE FUNCTION work.do_commit(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head         common.work_head;
  _body         common.work_segment[];
  _seg          common.work_segment;
  _is_root      boolean;
  _process_id   bigint;
  _process_head common.process_head;
  _process_body common.process_segment[];
  _process_item common.process_segment;
BEGIN

  _head := work.get_head(__document_id);
  _body := work.get_body(__document_id);

  IF (_head.curr_fsmt = 'COMMITTED'::common.document_fsmt) THEN
    RAISE NOTICE 'work % already committed. exiting', _head.gid;
    RETURN;
  END IF;

  PERFORM balance.gain_segment_done_qty(
      __facility_code := _head.facility_code,
      __body          := _body
    );

  FOREACH _seg IN
      ARRAY _body
    LOOP

    _is_root := process.is_root(_seg.gid);

    IF (_is_root IS true) THEN

      _process_id   := process.get_id_by_segment_gid(_seg.gid);
      _process_head := process.get_head(_process_id);
      _process_body := process.get_body(_process_id);

      PERFORM balance.gain_process_done_qty(
        __facility_code := _head.facility_code,
        __work          := (_process_head.gid, _seg.quantity)::common.work_segment
      );

      FOREACH _process_item IN
          ARRAY _process_body
        LOOP

        PERFORM balance.loss_segment_done_qty(
          __facility_code := _head.facility_code,
          __work          := (_process_item.gid, _seg.quantity)::common.work_segment
        );

      END LOOP;
    
    END IF;
    
  END LOOP;

  UPDATE
    work.head
  SET
    curr_fsmt = 'COMMITTED'::common.document_fsmt
  WHERE
    id = __document_id;

  IF (__apprise IS true) THEN
  --
  END IF;

END;
$$;


ALTER FUNCTION work.do_commit(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 846 (class 1255 OID 62797)
-- Name: generate_display_name(date, character varying); Type: FUNCTION; Schema: work; Owner: postgres
--

CREATE FUNCTION work.generate_display_name(__document_date date, __facility_code character varying) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
DECLARE
  _week_number integer;
  _sequence_number integer;
  _document_kind_code character varying;
BEGIN

  _week_number := schedule.get_julianized_week(__document_date);
  _sequence_number := work.numerator_nextval(__facility_code, _week_number);
  _document_kind_code := common.get_document_abbrevation('WORK');

  RETURN concat(_document_kind_code,
    '-', __facility_code,
    '-', common.number_encode2(_week_number, true),
    common.number_encode4(_sequence_number, true));

END;
$$;


ALTER FUNCTION work.generate_display_name(__document_date date, __facility_code character varying) OWNER TO postgres;

--
-- TOC entry 847 (class 1255 OID 62798)
-- Name: get_body(bigint); Type: FUNCTION; Schema: work; Owner: postgres
--

CREATE FUNCTION work.get_body(__document_id bigint) RETURNS common.work_segment[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY(
      SELECT 
          (segment_gid, 
          quantity)::common.work_segment
        FROM 
          work.body
        WHERE 
          head_id = __document_id
    );
END
$$;


ALTER FUNCTION work.get_body(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 848 (class 1255 OID 62799)
-- Name: get_gid_by_id(bigint); Type: FUNCTION; Schema: work; Owner: postgres
--

CREATE FUNCTION work.get_gid_by_id(__document_id bigint) RETURNS uuid
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN gid
    FROM
      work.head
    WHERE
      id = __document_id;
END;
$$;


ALTER FUNCTION work.get_gid_by_id(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 4946 (class 0 OID 0)
-- Dependencies: 848
-- Name: FUNCTION get_gid_by_id(__document_id bigint); Type: COMMENT; Schema: work; Owner: postgres
--

COMMENT ON FUNCTION work.get_gid_by_id(__document_id bigint) IS 'get uuid of work report by id';


--
-- TOC entry 849 (class 1255 OID 62800)
-- Name: get_head(bigint); Type: FUNCTION; Schema: work; Owner: postgres
--

CREATE FUNCTION work.get_head(__document_id bigint) RETURNS common.work_head
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN 
    (id, 
    gid, 
    display_name,
    document_date,
    facility_code,
    curr_fsmt,
    'WORK'::common.document_kind)::common.work_head
  FROM 
    work.head
  WHERE 
    id = __document_id;
END;
$$;


ALTER FUNCTION work.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 850 (class 1255 OID 62801)
-- Name: get_id_by_gid(uuid); Type: FUNCTION; Schema: work; Owner: postgres
--

CREATE FUNCTION work.get_id_by_gid(__document_gid uuid) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN id
    FROM
      work.head
    WHERE
      gid = __document_gid;
END;
$$;


ALTER FUNCTION work.get_id_by_gid(__document_gid uuid) OWNER TO postgres;

--
-- TOC entry 4947 (class 0 OID 0)
-- Dependencies: 850
-- Name: FUNCTION get_id_by_gid(__document_gid uuid); Type: COMMENT; Schema: work; Owner: postgres
--

COMMENT ON FUNCTION work.get_id_by_gid(__document_gid uuid) IS 'get id of work report by uuid';


--
-- TOC entry 851 (class 1255 OID 62802)
-- Name: numerator_nextval(character varying, integer); Type: FUNCTION; Schema: work; Owner: postgres
--

CREATE FUNCTION work.numerator_nextval(__facility_code character varying, __julianized_week integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
  _seqence_number integer;
BEGIN

  UPDATE
    work.numerator
  SET
    current_value = current_value + 1
  WHERE
    julianized_week = __julianized_week AND
    facility_code = __facility_code
  RETURNING current_value INTO _seqence_number;

  IF (NOT FOUND) THEN
    INSERT INTO
      work.numerator (
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


ALTER FUNCTION work.numerator_nextval(__facility_code character varying, __julianized_week integer) OWNER TO postgres;

--
-- TOC entry 852 (class 1255 OID 62803)
-- Name: resubmit(bigint, common.work_segment[]); Type: FUNCTION; Schema: work; Owner: postgres
--

CREATE FUNCTION work.resubmit(__document_id bigint, __body common.work_segment[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.work_segment;
BEGIN

  DELETE FROM
    work.body
  WHERE 
    head_id = __document_id;

  FOREACH _item IN
    ARRAY __body
  LOOP
    INSERT INTO
      work.body (
        head_id, 
        segment_gid, 
        quantity)
    VALUES (
      __document_id, 
      _item.gid, 
      _item.quantity);
  END LOOP;

END;
$$;


ALTER FUNCTION work.resubmit(__document_id bigint, __body common.work_segment[]) OWNER TO postgres;

--
-- TOC entry 853 (class 1255 OID 62804)
-- Name: revert(bigint, boolean); Type: FUNCTION; Schema: work; Owner: postgres
--

CREATE FUNCTION work.revert(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head         common.work_head;
  _body         common.work_segment[];
  _seg          common.work_segment;
  _is_root      boolean;
  _process_id   bigint;
  _process_head common.process_head;
  _process_body common.process_segment[];
  _process_item common.process_segment;
BEGIN

  _head := work.get_head(__document_id);
  _body := work.get_body(__document_id);

  IF (_head.curr_fsmt <> 'COMMITTED'::common.document_fsmt) THEN
    RAISE NOTICE 'WORK % not committed. exiting', _head.gid;
    RETURN;
  END IF;

  UPDATE
    work.head
  SET
    curr_fsmt = 'REVERTED'::common.document_fsmt
  WHERE
    id = __document_id;

  FOREACH _seg IN
      ARRAY _body
    LOOP

    _is_root := process.is_root(_seg.gid);

    IF (_is_root IS true) THEN

      _process_id   := process.get_id_by_segment_gid(_seg.gid);
      _process_head := process.get_head(_process_id);
      _process_body := process.get_body(_process_id);

      PERFORM balance.loss_process_done_qty(
        __facility_code := _head.facility_code,
        __work          := (_process_head.gid, _seg.quantity)::common.work_segment
      );

      FOREACH _process_item IN
          ARRAY _process_body
        LOOP

        PERFORM balance.gain_segment_done_qty(
          __facility_code := _head.facility_code,
          __work          := (_process_item.gid, _seg.quantity)::common.work_segment
        );

      END LOOP;
    
    END IF;
    
  END LOOP;

  PERFORM balance.loss_segment_done_qty(
      __facility_code := _head.facility_code,
      __body          := _body
    );

  IF (__apprise IS true) THEN
  --
  END IF;

END;
$$;


ALTER FUNCTION work.revert(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 843 (class 1255 OID 62805)
-- Name: submit(common.work_head, common.work_segment[]); Type: FUNCTION; Schema: work; Owner: postgres
--

CREATE FUNCTION work.submit(__head common.work_head, __body common.work_segment[]) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.work_segment;
  _document_id bigint;
BEGIN

  IF (__head.facility_code IS NULL) THEN
    RAISE EXCEPTION 'field facility_code is not defined';
  END IF;

  IF (__head.document_date IS NULL) THEN
    __head.document_date := now()::date;
  END IF;

  /*IF (__head.display_name IS NULL) THEN
    __head.display_name := work.generate_display_name(
        __document_date := __head.document_date,
        __facility_code := __head.facility_code);
  END IF;*/

  INSERT INTO
    work.head (
      id, 
      display_name,
      document_date,
      facility_code)
  VALUES (
    DEFAULT, 
    __head.display_name,
    __head.document_date,
    __head.facility_code) 
  RETURNING id INTO _document_id;

  FOREACH _item IN
    ARRAY __body
  LOOP
    INSERT INTO
      work.body (
        head_id, 
        segment_gid, 
        quantity)
    VALUES (
      _document_id, 
      _item.gid, 
      _item.quantity);
  END LOOP;

  RETURN _document_id;

END;
$$;


ALTER FUNCTION work.submit(__head common.work_head, __body common.work_segment[]) OWNER TO postgres;

--
-- TOC entry 4043 (class 2605 OID 64526)
-- Name: CAST (common.approval_fsmt AS common.document_fsmt); Type: CAST; Schema: -; Owner: 
--

CREATE CAST (common.approval_fsmt AS common.document_fsmt) WITH FUNCTION common.convert_approval_to_document_fsmt(common.approval_fsmt) AS IMPLICIT;


--
-- TOC entry 4044 (class 2605 OID 64525)
-- Name: CAST (common.claim_head AS common.document_head); Type: CAST; Schema: -; Owner: 
--

CREATE CAST (common.claim_head AS common.document_head) WITH FUNCTION common.convert_claim_to_document_head(common.claim_head) AS IMPLICIT;


--
-- TOC entry 4045 (class 2605 OID 62806)
-- Name: CAST (common.component_kind AS common.inventory_kind); Type: CAST; Schema: -; Owner: 
--

CREATE CAST (common.component_kind AS common.inventory_kind) WITH FUNCTION common.convert_component_to_inventory_kind(common.component_kind) AS IMPLICIT;


--
-- TOC entry 4048 (class 2605 OID 62809)
-- Name: CAST (common.issue_head AS common.document_head); Type: CAST; Schema: -; Owner: 
--

CREATE CAST (common.issue_head AS common.document_head) WITH FUNCTION common.convert_outbound_to_document_head(common.issue_head) AS IMPLICIT;


--
-- TOC entry 4046 (class 2605 OID 62808)
-- Name: CAST (common.material_kind AS common.inventory_kind); Type: CAST; Schema: -; Owner: 
--

CREATE CAST (common.material_kind AS common.inventory_kind) WITH FUNCTION common.convert_material_to_inventory_kind(common.material_kind) AS IMPLICIT;


--
-- TOC entry 4047 (class 2605 OID 62807)
-- Name: CAST (common.receipt_head AS common.document_head); Type: CAST; Schema: -; Owner: 
--

CREATE CAST (common.receipt_head AS common.document_head) WITH FUNCTION common.convert_inbound_to_document_head(common.receipt_head) AS IMPLICIT;


--
-- TOC entry 4049 (class 2605 OID 62810)
-- Name: CAST (common.stocktake_body AS common.document_body); Type: CAST; Schema: -; Owner: 
--

CREATE CAST (common.stocktake_body AS common.document_body) WITH FUNCTION common.convert_stocktake_to_document_body(common.stocktake_body) AS IMPLICIT;


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 274 (class 1259 OID 62811)
-- Name: process; Type: TABLE; Schema: balance; Owner: postgres
--

CREATE TABLE balance.process (
    facility_code character varying NOT NULL,
    process_gid uuid NOT NULL,
    todo_qty common.quantity_signed DEFAULT 0 NOT NULL,
    done_qty common.quantity_signed DEFAULT 0 NOT NULL
);


ALTER TABLE balance.process OWNER TO postgres;

--
-- TOC entry 4948 (class 0 OID 0)
-- Dependencies: 274
-- Name: TABLE process; Type: COMMENT; Schema: balance; Owner: postgres
--

COMMENT ON TABLE balance.process IS 'production process';


--
-- TOC entry 275 (class 1259 OID 62819)
-- Name: segment; Type: TABLE; Schema: balance; Owner: postgres
--

CREATE TABLE balance.segment (
    facility_code character varying NOT NULL,
    segment_gid uuid NOT NULL,
    todo_qty common.quantity_signed DEFAULT 0 NOT NULL,
    done_qty common.quantity_signed DEFAULT 0 NOT NULL
);


ALTER TABLE balance.segment OWNER TO postgres;

--
-- TOC entry 405 (class 1259 OID 64499)
-- Name: stock; Type: TABLE; Schema: balance; Owner: postgres
--

CREATE TABLE balance.stock (
    facility_code character varying NOT NULL,
    part_code character varying NOT NULL,
    uom_code character varying NOT NULL,
    on_hand_qty common.quantity DEFAULT 0 NOT NULL,
    claimed_qty common.quantity DEFAULT 0 NOT NULL,
    reserved_qty common.quantity DEFAULT 0 NOT NULL,
    on_despatch_qty common.quantity DEFAULT 0 NOT NULL,
    on_delivery_qty common.quantity DEFAULT 0 NOT NULL,
    promissed_qty common.quantity DEFAULT 0 NOT NULL,
    demanded_qty common.quantity DEFAULT 0 NOT NULL
);


ALTER TABLE balance.stock OWNER TO postgres;

--
-- TOC entry 4949 (class 0 OID 0)
-- Dependencies: 405
-- Name: TABLE stock; Type: COMMENT; Schema: balance; Owner: postgres
--

COMMENT ON TABLE balance.stock IS 'production stock';


--
-- TOC entry 276 (class 1259 OID 62845)
-- Name: ebom_to_mbom; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.ebom_to_mbom (
    ebom_id bigint NOT NULL,
    mbom_id bigint NOT NULL
);


ALTER TABLE binding.ebom_to_mbom OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 62848)
-- Name: ebom_to_process; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.ebom_to_process (
    ebom_id bigint NOT NULL,
    process_id bigint NOT NULL
);


ALTER TABLE binding.ebom_to_process OWNER TO postgres;

--
-- TOC entry 278 (class 1259 OID 62851)
-- Name: ebom_to_product; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.ebom_to_product (
    ebom_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE binding.ebom_to_product OWNER TO postgres;

--
-- TOC entry 279 (class 1259 OID 62854)
-- Name: mbom_to_process; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.mbom_to_process (
    mbom_id bigint NOT NULL,
    process_id bigint NOT NULL
);


ALTER TABLE binding.mbom_to_process OWNER TO postgres;

--
-- TOC entry 280 (class 1259 OID 62857)
-- Name: mbom_to_product; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.mbom_to_product (
    mbom_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE binding.mbom_to_product OWNER TO postgres;

--
-- TOC entry 281 (class 1259 OID 62860)
-- Name: benchmark; Type: TABLE; Schema: calendar; Owner: postgres
--

CREATE TABLE calendar.benchmark (
    start_date date NOT NULL,
    julianized_day integer NOT NULL,
    julianized_week integer NOT NULL
);


ALTER TABLE calendar.benchmark OWNER TO postgres;

--
-- TOC entry 282 (class 1259 OID 62863)
-- Name: checkpoint; Type: TABLE; Schema: calendar; Owner: postgres
--

CREATE TABLE calendar.checkpoint (
    start_date date NOT NULL
);


ALTER TABLE calendar.checkpoint OWNER TO postgres;

--
-- TOC entry 283 (class 1259 OID 62866)
-- Name: definition; Type: TABLE; Schema: calendar; Owner: postgres
--

CREATE TABLE calendar.definition (
    calendar_date date NOT NULL,
    facility_code character varying NOT NULL,
    workday_duration interval DEFAULT '08:00:00'::interval NOT NULL,
    workday_type common.day_kind DEFAULT 'WORKDAY'::common.day_kind NOT NULL
);


ALTER TABLE calendar.definition OWNER TO postgres;

--
-- TOC entry 284 (class 1259 OID 62874)
-- Name: information; Type: TABLE; Schema: calendar; Owner: postgres
--

CREATE TABLE calendar.information (
    calendar_date date NOT NULL,
    julianized_day integer NOT NULL,
    julianized_week integer NOT NULL
);


ALTER TABLE calendar.information OWNER TO postgres;

--
-- TOC entry 285 (class 1259 OID 62877)
-- Name: workday; Type: TABLE; Schema: calendar; Owner: postgres
--

CREATE TABLE calendar.workday (
    facility_code character varying NOT NULL,
    dayly_duration interval DEFAULT '08:00:00'::interval NOT NULL
);


ALTER TABLE calendar.workday OWNER TO postgres;

--
-- TOC entry 286 (class 1259 OID 62884)
-- Name: workweek; Type: TABLE; Schema: calendar; Owner: postgres
--

CREATE TABLE calendar.workweek (
    facility_code character varying NOT NULL,
    monday common.day_kind DEFAULT 'WORKDAY'::common.day_kind NOT NULL,
    tuesday common.day_kind DEFAULT 'WORKDAY'::common.day_kind NOT NULL,
    wednesday common.day_kind DEFAULT 'WORKDAY'::common.day_kind NOT NULL,
    thursday common.day_kind DEFAULT 'WORKDAY'::common.day_kind NOT NULL,
    friday common.day_kind DEFAULT 'WORKDAY'::common.day_kind NOT NULL,
    saturday common.day_kind DEFAULT 'HOLIDAY'::common.day_kind NOT NULL,
    sunday common.day_kind DEFAULT 'HOLIDAY'::common.day_kind NOT NULL
);


ALTER TABLE calendar.workweek OWNER TO postgres;

--
-- TOC entry 404 (class 1259 OID 64462)
-- Name: body; Type: TABLE; Schema: claim; Owner: postgres
--

CREATE TABLE claim.body (
    head_id bigint NOT NULL,
    part_code character varying NOT NULL,
    quantity common.quantity NOT NULL,
    uom_code character varying
);


ALTER TABLE claim.body OWNER TO postgres;

--
-- TOC entry 403 (class 1259 OID 64443)
-- Name: head; Type: TABLE; Schema: claim; Owner: postgres
--

CREATE TABLE claim.head (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    document_date date DEFAULT ('now'::text)::date NOT NULL,
    author character varying,
    due_date date NOT NULL,
    ship_to character varying,
    ship_from character varying,
    prev_fsmt common.approval_fsmt,
    prev_fsmt_date timestamp with time zone,
    curr_fsmt common.approval_fsmt DEFAULT 'PROPOSED'::common.approval_fsmt NOT NULL,
    curr_fsmt_date timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT head_check1 CHECK ((document_date <= due_date)),
    CONSTRAINT head_check2 CHECK (((ship_to)::text <> (ship_from)::text))
);


ALTER TABLE claim.head OWNER TO postgres;

--
-- TOC entry 402 (class 1259 OID 64441)
-- Name: head_id_seq; Type: SEQUENCE; Schema: claim; Owner: postgres
--

CREATE SEQUENCE claim.head_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE claim.head_id_seq OWNER TO postgres;

--
-- TOC entry 4950 (class 0 OID 0)
-- Dependencies: 402
-- Name: head_id_seq; Type: SEQUENCE OWNED BY; Schema: claim; Owner: postgres
--

ALTER SEQUENCE claim.head_id_seq OWNED BY claim.head.id;


--
-- TOC entry 287 (class 1259 OID 62917)
-- Name: numerator; Type: TABLE; Schema: claim; Owner: postgres
--

CREATE TABLE claim.numerator (
    facility_code character varying NOT NULL,
    julianized_week integer NOT NULL,
    current_value integer DEFAULT 0 NOT NULL
);


ALTER TABLE claim.numerator OWNER TO postgres;

--
-- TOC entry 288 (class 1259 OID 62928)
-- Name: document_abbrevation; Type: TABLE; Schema: common; Owner: postgres
--

CREATE TABLE common.document_abbrevation (
    doctype common.document_kind NOT NULL,
    abbrevation character varying DEFAULT '[ABBREVATION]'::character varying NOT NULL
);


ALTER TABLE common.document_abbrevation OWNER TO postgres;

--
-- TOC entry 289 (class 1259 OID 62935)
-- Name: exception_code; Type: TABLE; Schema: common; Owner: postgres
--

CREATE TABLE common.exception_code (
    id integer NOT NULL,
    message text,
    detail text,
    hint text,
    errcode character varying(5),
    condition_name character varying(100)
);


ALTER TABLE common.exception_code OWNER TO postgres;

--
-- TOC entry 290 (class 1259 OID 62941)
-- Name: exception_code_id_seq; Type: SEQUENCE; Schema: common; Owner: postgres
--

CREATE SEQUENCE common.exception_code_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE common.exception_code_id_seq OWNER TO postgres;

--
-- TOC entry 4951 (class 0 OID 0)
-- Dependencies: 290
-- Name: exception_code_id_seq; Type: SEQUENCE OWNED BY; Schema: common; Owner: postgres
--

ALTER SEQUENCE common.exception_code_id_seq OWNED BY common.exception_code.id;


--
-- TOC entry 291 (class 1259 OID 62943)
-- Name: stocktake_policy; Type: TABLE; Schema: common; Owner: postgres
--

CREATE TABLE common.stocktake_policy (
    document_kind_name common.document_kind NOT NULL,
    stocktake_mode_applied common.policy_mode DEFAULT 'DISABLED'::common.policy_mode NOT NULL
);


ALTER TABLE common.stocktake_policy OWNER TO postgres;

--
-- TOC entry 292 (class 1259 OID 62972)
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
-- TOC entry 4952 (class 0 OID 0)
-- Dependencies: 292
-- Name: TABLE component; Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON TABLE ebom.component IS 'engineering bill of materials components including producible and buyable parts and assemblies';


--
-- TOC entry 293 (class 1259 OID 62979)
-- Name: assembly; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE ebom.assembly (
    CONSTRAINT assembly_component_type_check CHECK ((component_type = 'ASSEMBLY'::common.component_kind))
)
INHERITS (ebom.component);


ALTER TABLE ebom.assembly OWNER TO postgres;

--
-- TOC entry 4953 (class 0 OID 0)
-- Dependencies: 293
-- Name: TABLE assembly; Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON TABLE ebom.assembly IS 'engineering bill of materials producible assemblies';


--
-- TOC entry 294 (class 1259 OID 62987)
-- Name: blueprint; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE ebom.blueprint (
    definition_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    display_name character varying,
    quantity common.quantity NOT NULL,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL,
    component_type common.component_kind
);


ALTER TABLE ebom.blueprint OWNER TO postgres;

--
-- TOC entry 4954 (class 0 OID 0)
-- Dependencies: 294
-- Name: TABLE blueprint; Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON TABLE ebom.blueprint IS 'engineering bill of materials blueprints';


--
-- TOC entry 295 (class 1259 OID 62994)
-- Name: buyable; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE ebom.buyable (
    CONSTRAINT buyable_component_type_check CHECK ((component_type = 'BUYABLE'::common.component_kind))
)
INHERITS (ebom.component);


ALTER TABLE ebom.buyable OWNER TO postgres;

--
-- TOC entry 4955 (class 0 OID 0)
-- Dependencies: 295
-- Name: TABLE buyable; Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON TABLE ebom.buyable IS 'engineering bill of materials buyable components';


--
-- TOC entry 296 (class 1259 OID 63002)
-- Name: definition; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE ebom.definition (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    version_num integer DEFAULT 1 NOT NULL,
    quantity common.quantity DEFAULT 1 NOT NULL,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL,
    component_type common.component_kind DEFAULT 'ASSEMBLY'::common.component_kind NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    prev_fsmt common.document_fsmt,
    prev_fsmt_date timestamp with time zone,
    curr_fsmt common.document_fsmt DEFAULT 'PROPOSED'::common.document_fsmt NOT NULL,
    curr_fsmt_date timestamp with time zone DEFAULT now() NOT NULL,
    information_id bigint NOT NULL,
    CONSTRAINT definition_component_type_check CHECK (((component_type = 'ASSEMBLY'::common.component_kind) OR (component_type = 'PART'::common.component_kind)))
);


ALTER TABLE ebom.definition OWNER TO postgres;

--
-- TOC entry 4956 (class 0 OID 0)
-- Dependencies: 296
-- Name: TABLE definition; Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON TABLE ebom.definition IS 'engineering bill of materials definotions';


--
-- TOC entry 297 (class 1259 OID 63017)
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
-- TOC entry 4957 (class 0 OID 0)
-- Dependencies: 297
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: ebom; Owner: postgres
--

ALTER SEQUENCE ebom.definition_id_seq OWNED BY ebom.definition.id;


--
-- TOC entry 298 (class 1259 OID 63019)
-- Name: information; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE ebom.information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    part_code character varying NOT NULL,
    display_name character varying NOT NULL
);


ALTER TABLE ebom.information OWNER TO postgres;

--
-- TOC entry 4958 (class 0 OID 0)
-- Dependencies: 298
-- Name: TABLE information; Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON TABLE ebom.information IS 'engineering bill of materials information';


--
-- TOC entry 299 (class 1259 OID 63026)
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
-- TOC entry 4959 (class 0 OID 0)
-- Dependencies: 299
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: ebom; Owner: postgres
--

ALTER SEQUENCE ebom.information_id_seq OWNED BY ebom.information.id;


--
-- TOC entry 300 (class 1259 OID 63028)
-- Name: list; Type: VIEW; Schema: ebom; Owner: postgres
--

CREATE VIEW ebom.list AS
 SELECT definition.id,
    definition.gid,
    definition.published_date,
    definition.curr_fsmt,
    'EBOM'::common.document_kind AS document_type,
    information.part_code,
    definition.version_num,
    information.display_name,
    definition.quantity,
    definition.uom_code,
    definition.component_type
   FROM ebom.information,
    ebom.definition
  WHERE (information.id = definition.information_id);


ALTER TABLE ebom.list OWNER TO postgres;

--
-- TOC entry 4960 (class 0 OID 0)
-- Dependencies: 300
-- Name: VIEW list; Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON VIEW ebom.list IS 'list of engineering bill of materials';


--
-- TOC entry 301 (class 1259 OID 63032)
-- Name: part; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE ebom.part (
    CONSTRAINT part_component_type_check CHECK ((component_type = 'PART'::common.component_kind))
)
INHERITS (ebom.component);


ALTER TABLE ebom.part OWNER TO postgres;

--
-- TOC entry 4961 (class 0 OID 0)
-- Dependencies: 301
-- Name: TABLE part; Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON TABLE ebom.part IS 'engineering bill of materials producible parts';


--
-- TOC entry 302 (class 1259 OID 63040)
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
-- TOC entry 303 (class 1259 OID 63048)
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
-- TOC entry 4962 (class 0 OID 0)
-- Dependencies: 303
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: equipment; Owner: postgres
--

ALTER SEQUENCE equipment.information_id_seq OWNED BY equipment.information.id;


--
-- TOC entry 304 (class 1259 OID 63050)
-- Name: list; Type: VIEW; Schema: equipment; Owner: postgres
--

CREATE VIEW equipment.list AS
 SELECT information.id,
    information.gid,
    information.equipment_code,
    information.version_num,
    information.display_name,
    information.published_date,
    information.equipment_type
   FROM equipment.information;


ALTER TABLE equipment.list OWNER TO postgres;

--
-- TOC entry 305 (class 1259 OID 63054)
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
-- TOC entry 4963 (class 0 OID 0)
-- Dependencies: 305
-- Name: COLUMN information.facility_type; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON COLUMN facility.information.facility_type IS 'PERA organization level';


--
-- TOC entry 306 (class 1259 OID 63063)
-- Name: area; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE facility.area (
    CONSTRAINT area_facility_type_check CHECK ((facility_type = 'AREA'::common.facility_kind))
)
INHERITS (facility.information);


ALTER TABLE facility.area OWNER TO postgres;

--
-- TOC entry 4964 (class 0 OID 0)
-- Dependencies: 306
-- Name: TABLE area; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON TABLE facility.area IS 'PERA model level-2';


--
-- TOC entry 307 (class 1259 OID 63073)
-- Name: enterprise; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE facility.enterprise (
    CONSTRAINT enterprise_facility_type_check CHECK ((facility_type = 'ENTERPRISE'::common.facility_kind))
)
INHERITS (facility.information);


ALTER TABLE facility.enterprise OWNER TO postgres;

--
-- TOC entry 4965 (class 0 OID 0)
-- Dependencies: 307
-- Name: TABLE enterprise; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON TABLE facility.enterprise IS 'PERA model level-4';


--
-- TOC entry 308 (class 1259 OID 63083)
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
-- TOC entry 4966 (class 0 OID 0)
-- Dependencies: 308
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: facility; Owner: postgres
--

ALTER SEQUENCE facility.information_id_seq OWNED BY facility.information.id;


--
-- TOC entry 309 (class 1259 OID 63085)
-- Name: line; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE facility.line (
    CONSTRAINT line_facility_type_check CHECK ((facility_type = 'LINE'::common.facility_kind))
)
INHERITS (facility.information);


ALTER TABLE facility.line OWNER TO postgres;

--
-- TOC entry 4967 (class 0 OID 0)
-- Dependencies: 309
-- Name: TABLE line; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON TABLE facility.line IS 'PERA model level-1 (production line)';


--
-- TOC entry 310 (class 1259 OID 63095)
-- Name: list; Type: VIEW; Schema: facility; Owner: postgres
--

CREATE VIEW facility.list AS
 SELECT information.id,
    information.gid,
    information.facility_code,
    information.version_num,
    information.display_name,
    information.published_date,
    information.parent_facility_code,
    information.facility_type
   FROM facility.information;


ALTER TABLE facility.list OWNER TO postgres;

--
-- TOC entry 311 (class 1259 OID 63099)
-- Name: site; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE facility.site (
    CONSTRAINT site_facility_type_check CHECK ((facility_type = 'SITE'::common.facility_kind)),
    CONSTRAINT site_parent_facility_code_check CHECK ((parent_facility_code IS NOT NULL))
)
INHERITS (facility.information);


ALTER TABLE facility.site OWNER TO postgres;

--
-- TOC entry 4968 (class 0 OID 0)
-- Dependencies: 311
-- Name: TABLE site; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON TABLE facility.site IS 'PERA model level-3';


--
-- TOC entry 312 (class 1259 OID 63110)
-- Name: zone; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE facility.zone (
    CONSTRAINT zone_facility_type_check CHECK ((facility_type = 'ZONE'::common.facility_kind))
)
INHERITS (facility.information);


ALTER TABLE facility.zone OWNER TO postgres;

--
-- TOC entry 4969 (class 0 OID 0)
-- Dependencies: 312
-- Name: TABLE zone; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON TABLE facility.zone IS 'PERA model level-1 (storge zone)';


--
-- TOC entry 313 (class 1259 OID 63120)
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
-- TOC entry 4970 (class 0 OID 0)
-- Dependencies: 313
-- Name: TABLE conglomeration; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.conglomeration IS 'inventory list';


--
-- TOC entry 314 (class 1259 OID 63128)
-- Name: assembly; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.assembly (
    CONSTRAINT assembly_inventory_type_check CHECK ((inventory_type = 'ASSEMBLY'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.assembly OWNER TO postgres;

--
-- TOC entry 4971 (class 0 OID 0)
-- Dependencies: 314
-- Name: TABLE assembly; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.assembly IS 'ebom assembly component';


--
-- TOC entry 315 (class 1259 OID 63137)
-- Name: buyable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.buyable (
    CONSTRAINT buyable_inventory_type_check CHECK ((inventory_type = 'BUYABLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.buyable OWNER TO postgres;

--
-- TOC entry 4972 (class 0 OID 0)
-- Dependencies: 315
-- Name: TABLE buyable; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.buyable IS 'ebom buyable component';


--
-- TOC entry 316 (class 1259 OID 63146)
-- Name: consumable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.consumable (
    CONSTRAINT consumable_inventory_type_check CHECK ((inventory_type = 'CONSUMABLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.consumable OWNER TO postgres;

--
-- TOC entry 4973 (class 0 OID 0)
-- Dependencies: 316
-- Name: TABLE consumable; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.consumable IS 'mbom consumable component';


--
-- TOC entry 317 (class 1259 OID 63155)
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
-- TOC entry 318 (class 1259 OID 63167)
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
-- TOC entry 4974 (class 0 OID 0)
-- Dependencies: 318
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: inventory; Owner: postgres
--

ALTER SEQUENCE inventory.definition_id_seq OWNED BY inventory.definition.id;


--
-- TOC entry 319 (class 1259 OID 63169)
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
-- TOC entry 320 (class 1259 OID 63177)
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
-- TOC entry 4975 (class 0 OID 0)
-- Dependencies: 320
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: inventory; Owner: postgres
--

ALTER SEQUENCE inventory.information_id_seq OWNED BY inventory.information.id;


--
-- TOC entry 321 (class 1259 OID 63179)
-- Name: measurement; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.measurement (
    definition_id bigint NOT NULL,
    uom_code character varying NOT NULL,
    factor numeric
);


ALTER TABLE inventory.measurement OWNER TO postgres;

--
-- TOC entry 322 (class 1259 OID 63185)
-- Name: part; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.part (
    CONSTRAINT part_inventory_type_check CHECK ((inventory_type = 'PART'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.part OWNER TO postgres;

--
-- TOC entry 4976 (class 0 OID 0)
-- Dependencies: 322
-- Name: TABLE part; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.part IS 'ebom part component';


--
-- TOC entry 323 (class 1259 OID 63194)
-- Name: primal; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.primal (
    CONSTRAINT primal_inventory_type_check CHECK ((inventory_type = 'PRIMAL'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.primal OWNER TO postgres;

--
-- TOC entry 4977 (class 0 OID 0)
-- Dependencies: 323
-- Name: TABLE primal; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.primal IS 'mbom primal component';


--
-- TOC entry 324 (class 1259 OID 63203)
-- Name: producible; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.producible (
    CONSTRAINT producible_inventory_type_check CHECK ((inventory_type = 'PRODUCIBLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.producible OWNER TO postgres;

--
-- TOC entry 4978 (class 0 OID 0)
-- Dependencies: 324
-- Name: TABLE producible; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.producible IS 'mbom producible component';


--
-- TOC entry 325 (class 1259 OID 63212)
-- Name: salable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.salable (
    CONSTRAINT salable_inventory_type_check CHECK ((inventory_type = 'SALABLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.salable OWNER TO postgres;

--
-- TOC entry 4979 (class 0 OID 0)
-- Dependencies: 325
-- Name: TABLE salable; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.salable IS 'inventory salable component';


--
-- TOC entry 326 (class 1259 OID 63221)
-- Name: storable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.storable (
    CONSTRAINT storable_inventory_type_check CHECK ((inventory_type = 'STORABLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.storable OWNER TO postgres;

--
-- TOC entry 327 (class 1259 OID 63230)
-- Name: variety; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.variety (
    definition_id bigint NOT NULL,
    inventory_type common.inventory_kind NOT NULL
);


ALTER TABLE inventory.variety OWNER TO postgres;

--
-- TOC entry 4980 (class 0 OID 0)
-- Dependencies: 327
-- Name: TABLE variety; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.variety IS '?';


--
-- TOC entry 328 (class 1259 OID 63233)
-- Name: body; Type: TABLE; Schema: issue; Owner: postgres
--

CREATE TABLE issue.body (
    head_id bigint NOT NULL,
    part_code character varying NOT NULL,
    quantity common.quantity NOT NULL,
    uom_code character varying
);


ALTER TABLE issue.body OWNER TO postgres;

--
-- TOC entry 329 (class 1259 OID 63239)
-- Name: head; Type: TABLE; Schema: issue; Owner: postgres
--

CREATE TABLE issue.head (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    document_date date DEFAULT ('now'::text)::date NOT NULL,
    author character varying,
    due_date date NOT NULL,
    ship_to character varying,
    ship_from character varying,
    prev_fsmt common.document_fsmt,
    prev_fsmt_date timestamp with time zone,
    curr_fsmt common.document_fsmt DEFAULT 'PROPOSED'::common.document_fsmt NOT NULL,
    curr_fsmt_date timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT head_check1 CHECK ((document_date <= due_date)),
    CONSTRAINT head_check2 CHECK (((ship_to)::text <> (ship_from)::text))
);


ALTER TABLE issue.head OWNER TO postgres;

--
-- TOC entry 330 (class 1259 OID 63251)
-- Name: head_id_seq; Type: SEQUENCE; Schema: issue; Owner: postgres
--

CREATE SEQUENCE issue.head_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE issue.head_id_seq OWNER TO postgres;

--
-- TOC entry 4981 (class 0 OID 0)
-- Dependencies: 330
-- Name: head_id_seq; Type: SEQUENCE OWNED BY; Schema: issue; Owner: postgres
--

ALTER SEQUENCE issue.head_id_seq OWNED BY issue.head.id;


--
-- TOC entry 331 (class 1259 OID 63253)
-- Name: numerator; Type: TABLE; Schema: issue; Owner: postgres
--

CREATE TABLE issue.numerator (
    facility_code character varying NOT NULL,
    julianized_week integer NOT NULL,
    current_value integer DEFAULT 0 NOT NULL
);


ALTER TABLE issue.numerator OWNER TO postgres;

--
-- TOC entry 332 (class 1259 OID 63260)
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
-- TOC entry 333 (class 1259 OID 63267)
-- Name: consumable; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE mbom.consumable (
    CONSTRAINT consumable_component_type_check CHECK ((material_type = 'CONSUMABLE'::common.material_kind))
)
INHERITS (mbom.material);


ALTER TABLE mbom.consumable OWNER TO postgres;

--
-- TOC entry 334 (class 1259 OID 63275)
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
-- TOC entry 335 (class 1259 OID 63286)
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
-- TOC entry 4982 (class 0 OID 0)
-- Dependencies: 335
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: mbom; Owner: postgres
--

ALTER SEQUENCE mbom.definition_id_seq OWNED BY mbom.definition.id;


--
-- TOC entry 336 (class 1259 OID 63288)
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
-- TOC entry 337 (class 1259 OID 63296)
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
-- TOC entry 4983 (class 0 OID 0)
-- Dependencies: 337
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: mbom; Owner: postgres
--

ALTER SEQUENCE mbom.information_id_seq OWNED BY mbom.information.id;


--
-- TOC entry 338 (class 1259 OID 63298)
-- Name: primal; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE mbom.primal (
    CONSTRAINT primal_component_type_check CHECK ((material_type = 'PRIMAL'::common.material_kind))
)
INHERITS (mbom.material);


ALTER TABLE mbom.primal OWNER TO postgres;

--
-- TOC entry 339 (class 1259 OID 63306)
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
-- TOC entry 340 (class 1259 OID 63314)
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
-- TOC entry 4984 (class 0 OID 0)
-- Dependencies: 340
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE operation.information_id_seq OWNED BY operation.information.id;


--
-- TOC entry 341 (class 1259 OID 63316)
-- Name: list; Type: VIEW; Schema: operation; Owner: postgres
--

CREATE VIEW operation.list AS
 SELECT information.id,
    information.gid,
    information.operation_code,
    information.version_num,
    information.display_name,
    information.published_date,
    information.operation_type
   FROM operation.information;


ALTER TABLE operation.list OWNER TO postgres;

--
-- TOC entry 342 (class 1259 OID 63320)
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
-- TOC entry 343 (class 1259 OID 63328)
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
-- TOC entry 4985 (class 0 OID 0)
-- Dependencies: 343
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: personnel; Owner: postgres
--

ALTER SEQUENCE personnel.information_id_seq OWNED BY personnel.information.id;


--
-- TOC entry 344 (class 1259 OID 63330)
-- Name: list; Type: VIEW; Schema: personnel; Owner: postgres
--

CREATE VIEW personnel.list AS
 SELECT information.id,
    information.gid,
    information.personnel_code,
    information.version_num,
    information.display_name,
    information.published_date,
    information.personnel_type
   FROM personnel.information;


ALTER TABLE personnel.list OWNER TO postgres;

--
-- TOC entry 345 (class 1259 OID 63334)
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
-- TOC entry 346 (class 1259 OID 63342)
-- Name: consumable; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE process.consumable (
)
INHERITS (process.material);


ALTER TABLE process.consumable OWNER TO postgres;

--
-- TOC entry 347 (class 1259 OID 63350)
-- Name: definition; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE process.definition (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    prev_fsmt common.document_fsmt,
    prev_fsmt_date time with time zone,
    curr_fsmt common.document_fsmt DEFAULT 'PROPOSED'::common.document_fsmt NOT NULL,
    curr_fsmt_date timestamp with time zone DEFAULT now() NOT NULL,
    information_id bigint
);


ALTER TABLE process.definition OWNER TO postgres;

--
-- TOC entry 348 (class 1259 OID 63357)
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
-- TOC entry 4986 (class 0 OID 0)
-- Dependencies: 348
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE process.definition_id_seq OWNED BY process.definition.id;


--
-- TOC entry 349 (class 1259 OID 63359)
-- Name: dependency; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE process.dependency (
    ancestor uuid NOT NULL,
    descendant uuid NOT NULL
);


ALTER TABLE process.dependency OWNER TO postgres;

--
-- TOC entry 350 (class 1259 OID 63362)
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
-- TOC entry 351 (class 1259 OID 63368)
-- Name: facility; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE process.facility (
    segment_id bigint NOT NULL,
    facility_code character varying NOT NULL,
    version_num integer,
    facility_type common.facility_kind
);


ALTER TABLE process.facility OWNER TO postgres;

--
-- TOC entry 352 (class 1259 OID 63374)
-- Name: information; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE process.information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    part_code character varying,
    version_num integer,
    quantity common.quantity DEFAULT 1 NOT NULL,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL,
    material_type common.material_kind DEFAULT 'PRODUCIBLE'::common.material_kind NOT NULL,
    CONSTRAINT information_material_type_check CHECK ((material_type = 'PRODUCIBLE'::common.material_kind))
);


ALTER TABLE process.information OWNER TO postgres;

--
-- TOC entry 353 (class 1259 OID 63385)
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
-- TOC entry 4987 (class 0 OID 0)
-- Dependencies: 353
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE process.information_id_seq OWNED BY process.information.id;


--
-- TOC entry 354 (class 1259 OID 63387)
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
-- TOC entry 355 (class 1259 OID 63393)
-- Name: list; Type: VIEW; Schema: process; Owner: postgres
--

CREATE VIEW process.list AS
 SELECT information.part_code,
    information.version_num,
    information.display_name,
    information.uom_code,
    information.material_type,
    definition.gid,
    definition.published_date,
    definition.curr_fsmt,
    segment.operation_code
   FROM process.information,
    process.definition,
    process.segment
  WHERE ((information.id = definition.information_id) AND (definition.id = segment.definition_id));


ALTER TABLE process.list OWNER TO postgres;

--
-- TOC entry 356 (class 1259 OID 63397)
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
-- TOC entry 357 (class 1259 OID 63407)
-- Name: primal; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE process.primal (
)
INHERITS (process.material);


ALTER TABLE process.primal OWNER TO postgres;

--
-- TOC entry 358 (class 1259 OID 63415)
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
-- TOC entry 4988 (class 0 OID 0)
-- Dependencies: 358
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE process.segment_id_seq OWNED BY process.segment.id;


--
-- TOC entry 359 (class 1259 OID 63417)
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
-- TOC entry 360 (class 1259 OID 63423)
-- Name: blueprint; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.blueprint (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    definition_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer DEFAULT 1 NOT NULL,
    display_name character varying,
    quantity common.quantity DEFAULT 1 NOT NULL,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL,
    material_type common.material_kind DEFAULT 'PRODUCIBLE'::common.material_kind NOT NULL
);


ALTER TABLE product.blueprint OWNER TO postgres;

--
-- TOC entry 4989 (class 0 OID 0)
-- Dependencies: 360
-- Name: TABLE blueprint; Type: COMMENT; Schema: product; Owner: postgres
--

COMMENT ON TABLE product.blueprint IS 'blueprints of product segments structure';


--
-- TOC entry 361 (class 1259 OID 63434)
-- Name: blueprint_id_seq; Type: SEQUENCE; Schema: product; Owner: postgres
--

CREATE SEQUENCE product.blueprint_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product.blueprint_id_seq OWNER TO postgres;

--
-- TOC entry 4990 (class 0 OID 0)
-- Dependencies: 361
-- Name: blueprint_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE product.blueprint_id_seq OWNED BY product.blueprint.id;


--
-- TOC entry 362 (class 1259 OID 63436)
-- Name: definition; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.definition (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    prev_fsmt common.document_fsmt,
    prev_fsmt_date time with time zone,
    curr_fsmt common.document_fsmt DEFAULT 'PROPOSED'::common.document_fsmt NOT NULL,
    curr_fsmt_date timestamp with time zone DEFAULT now() NOT NULL,
    information_id bigint
);


ALTER TABLE product.definition OWNER TO postgres;

--
-- TOC entry 4991 (class 0 OID 0)
-- Dependencies: 362
-- Name: TABLE definition; Type: COMMENT; Schema: product; Owner: postgres
--

COMMENT ON TABLE product.definition IS 'definitions of product structure segments';


--
-- TOC entry 363 (class 1259 OID 63443)
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
-- TOC entry 4992 (class 0 OID 0)
-- Dependencies: 363
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE product.definition_id_seq OWNED BY product.definition.id;


--
-- TOC entry 364 (class 1259 OID 63445)
-- Name: dependency; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.dependency (
    ancestor uuid NOT NULL,
    descendant uuid NOT NULL
);


ALTER TABLE product.dependency OWNER TO postgres;

--
-- TOC entry 4993 (class 0 OID 0)
-- Dependencies: 364
-- Name: TABLE dependency; Type: COMMENT; Schema: product; Owner: postgres
--

COMMENT ON TABLE product.dependency IS 'dependencies of product structure segments';


--
-- TOC entry 365 (class 1259 OID 63448)
-- Name: information; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    quantity common.quantity DEFAULT 1 NOT NULL,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL,
    material_type common.material_kind DEFAULT 'PRODUCIBLE'::common.material_kind NOT NULL,
    CONSTRAINT information_material_type_check CHECK ((material_type = 'PRODUCIBLE'::common.material_kind))
);


ALTER TABLE product.information OWNER TO postgres;

--
-- TOC entry 4994 (class 0 OID 0)
-- Dependencies: 365
-- Name: TABLE information; Type: COMMENT; Schema: product; Owner: postgres
--

COMMENT ON TABLE product.information IS 'list of products defined';


--
-- TOC entry 366 (class 1259 OID 63459)
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
-- TOC entry 4995 (class 0 OID 0)
-- Dependencies: 366
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE product.information_id_seq OWNED BY product.information.id;


--
-- TOC entry 367 (class 1259 OID 63461)
-- Name: list; Type: VIEW; Schema: product; Owner: postgres
--

CREATE VIEW product.list AS
 SELECT definition.id,
    definition.gid,
    definition.published_date,
    definition.curr_fsmt,
    'PRODUCT'::common.document_kind AS document_type,
    information.part_code,
    information.version_num,
    information.display_name,
    information.quantity,
    information.uom_code,
    information.material_type
   FROM product.information,
    product.definition
  WHERE (information.id = definition.information_id);


ALTER TABLE product.list OWNER TO postgres;

--
-- TOC entry 4996 (class 0 OID 0)
-- Dependencies: 367
-- Name: VIEW list; Type: COMMENT; Schema: product; Owner: postgres
--

COMMENT ON VIEW product.list IS 'list of product definitions';


--
-- TOC entry 368 (class 1259 OID 63465)
-- Name: segment; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.segment (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    definition_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer DEFAULT 1 NOT NULL,
    display_name character varying NOT NULL,
    quantity common.quantity DEFAULT 1 NOT NULL,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL,
    material_type common.material_kind DEFAULT 'PRODUCIBLE'::common.material_kind NOT NULL
);


ALTER TABLE product.segment OWNER TO postgres;

--
-- TOC entry 4997 (class 0 OID 0)
-- Dependencies: 368
-- Name: TABLE segment; Type: COMMENT; Schema: product; Owner: postgres
--

COMMENT ON TABLE product.segment IS 'segments of product structure within definition';


--
-- TOC entry 369 (class 1259 OID 63476)
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
-- TOC entry 4998 (class 0 OID 0)
-- Dependencies: 369
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE product.segment_id_seq OWNED BY product.segment.id;


--
-- TOC entry 370 (class 1259 OID 63478)
-- Name: tree; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.tree (
    ancestor uuid NOT NULL,
    descendant uuid NOT NULL
);


ALTER TABLE product.tree OWNER TO postgres;

--
-- TOC entry 4999 (class 0 OID 0)
-- Dependencies: 370
-- Name: TABLE tree; Type: COMMENT; Schema: product; Owner: postgres
--

COMMENT ON TABLE product.tree IS 'blueprints of product segments dependencies';


--
-- TOC entry 371 (class 1259 OID 63481)
-- Name: body; Type: TABLE; Schema: receipt; Owner: postgres
--

CREATE TABLE receipt.body (
    head_id bigint NOT NULL,
    part_code character varying NOT NULL,
    quantity common.quantity NOT NULL,
    uom_code character varying
);


ALTER TABLE receipt.body OWNER TO postgres;

--
-- TOC entry 372 (class 1259 OID 63488)
-- Name: head; Type: TABLE; Schema: receipt; Owner: postgres
--

CREATE TABLE receipt.head (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    document_date date DEFAULT ('now'::text)::date NOT NULL,
    author character varying,
    ship_to character varying,
    ship_from character varying,
    prev_fsmt common.document_fsmt,
    prev_fsmt_date timestamp with time zone,
    curr_fsmt common.document_fsmt DEFAULT 'PROPOSED'::common.document_fsmt NOT NULL,
    curr_fsmt_date timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT head_check2 CHECK (((ship_to)::text <> (ship_from)::text))
);


ALTER TABLE receipt.head OWNER TO postgres;

--
-- TOC entry 373 (class 1259 OID 63499)
-- Name: head_id_seq; Type: SEQUENCE; Schema: receipt; Owner: postgres
--

CREATE SEQUENCE receipt.head_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE receipt.head_id_seq OWNER TO postgres;

--
-- TOC entry 5000 (class 0 OID 0)
-- Dependencies: 373
-- Name: head_id_seq; Type: SEQUENCE OWNED BY; Schema: receipt; Owner: postgres
--

ALTER SEQUENCE receipt.head_id_seq OWNED BY receipt.head.id;


--
-- TOC entry 374 (class 1259 OID 63501)
-- Name: numerator; Type: TABLE; Schema: receipt; Owner: postgres
--

CREATE TABLE receipt.numerator (
    facility_code character varying NOT NULL,
    julianized_week integer NOT NULL,
    current_value integer DEFAULT 0 NOT NULL
);


ALTER TABLE receipt.numerator OWNER TO postgres;

--
-- TOC entry 375 (class 1259 OID 63508)
-- Name: body; Type: TABLE; Schema: request; Owner: postgres
--

CREATE TABLE request.body (
    head_id bigint NOT NULL,
    segment_gid uuid NOT NULL,
    quantity common.quantity NOT NULL
);


ALTER TABLE request.body OWNER TO postgres;

--
-- TOC entry 376 (class 1259 OID 63514)
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
-- TOC entry 377 (class 1259 OID 63525)
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
-- TOC entry 5001 (class 0 OID 0)
-- Dependencies: 377
-- Name: head_id_seq; Type: SEQUENCE OWNED BY; Schema: request; Owner: postgres
--

ALTER SEQUENCE request.head_id_seq OWNED BY request.head.id;


--
-- TOC entry 378 (class 1259 OID 63527)
-- Name: numerator; Type: TABLE; Schema: request; Owner: postgres
--

CREATE TABLE request.numerator (
    facility_code character varying NOT NULL,
    julianized_week integer NOT NULL,
    current_value integer DEFAULT 0 NOT NULL
);


ALTER TABLE request.numerator OWNER TO postgres;

--
-- TOC entry 379 (class 1259 OID 63534)
-- Name: body; Type: TABLE; Schema: response; Owner: postgres
--

CREATE TABLE response.body (
    head_id bigint NOT NULL,
    segment_gid uuid NOT NULL,
    quantity common.quantity NOT NULL
);


ALTER TABLE response.body OWNER TO postgres;

--
-- TOC entry 380 (class 1259 OID 63540)
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
-- TOC entry 381 (class 1259 OID 63550)
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
-- TOC entry 5002 (class 0 OID 0)
-- Dependencies: 381
-- Name: head_id_seq; Type: SEQUENCE OWNED BY; Schema: response; Owner: postgres
--

ALTER SEQUENCE response.head_id_seq OWNED BY response.head.id;


--
-- TOC entry 382 (class 1259 OID 63552)
-- Name: numerator; Type: TABLE; Schema: response; Owner: postgres
--

CREATE TABLE response.numerator (
    facility_code character varying NOT NULL,
    julianized_week integer NOT NULL,
    current_value integer DEFAULT 0 NOT NULL
);


ALTER TABLE response.numerator OWNER TO postgres;

--
-- TOC entry 383 (class 1259 OID 63559)
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
-- TOC entry 384 (class 1259 OID 63566)
-- Name: head; Type: TABLE; Schema: stockcard; Owner: postgres
--

CREATE TABLE stockcard.head (
    document_gid uuid NOT NULL,
    document_kind common.document_kind,
    document_name character varying,
    document_date date,
    facility_code character varying,
    counterparty_code character varying,
    part_code character varying NOT NULL,
    cutoff_date date,
    cutoff_uom character varying,
    cutoff_qty common.quantity,
    receipt_uom character varying,
    receipt_qty common.quantity,
    issued_uom character varying,
    issued_qty common.quantity,
    adjusted_uom character varying,
    adjusted_qty common.quantity,
    rebounded_uom character varying,
    rebounded_qty common.quantity,
    stocktake_uom character varying,
    stocktake_qty common.quantity,
    log_datetime timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE stockcard.head OWNER TO postgres;

--
-- TOC entry 385 (class 1259 OID 63573)
-- Name: body; Type: TABLE; Schema: stocktake; Owner: postgres
--

CREATE TABLE stocktake.body (
    head_id bigint NOT NULL,
    part_code character varying NOT NULL,
    quantity common.quantity NOT NULL,
    uom_code character varying,
    diff_qty common.quantity_signed
);


ALTER TABLE stocktake.body OWNER TO postgres;

--
-- TOC entry 386 (class 1259 OID 63579)
-- Name: head; Type: TABLE; Schema: stocktake; Owner: postgres
--

CREATE TABLE stocktake.head (
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


ALTER TABLE stocktake.head OWNER TO postgres;

--
-- TOC entry 387 (class 1259 OID 63589)
-- Name: head_id_seq; Type: SEQUENCE; Schema: stocktake; Owner: postgres
--

CREATE SEQUENCE stocktake.head_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE stocktake.head_id_seq OWNER TO postgres;

--
-- TOC entry 5003 (class 0 OID 0)
-- Dependencies: 387
-- Name: head_id_seq; Type: SEQUENCE OWNED BY; Schema: stocktake; Owner: postgres
--

ALTER SEQUENCE stocktake.head_id_seq OWNED BY stocktake.head.id;


--
-- TOC entry 388 (class 1259 OID 63591)
-- Name: numerator; Type: TABLE; Schema: stocktake; Owner: postgres
--

CREATE TABLE stocktake.numerator (
    facility_code character varying NOT NULL,
    julianized_week integer NOT NULL,
    current_value integer DEFAULT 0 NOT NULL
);


ALTER TABLE stocktake.numerator OWNER TO postgres;

--
-- TOC entry 389 (class 1259 OID 63598)
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
-- TOC entry 390 (class 1259 OID 63604)
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
-- TOC entry 391 (class 1259 OID 63609)
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
-- TOC entry 392 (class 1259 OID 63614)
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
-- TOC entry 393 (class 1259 OID 63622)
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
-- TOC entry 5004 (class 0 OID 0)
-- Dependencies: 393
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: tooling; Owner: postgres
--

ALTER SEQUENCE tooling.information_id_seq OWNED BY tooling.information.id;


--
-- TOC entry 394 (class 1259 OID 63624)
-- Name: list; Type: VIEW; Schema: tooling; Owner: postgres
--

CREATE VIEW tooling.list AS
 SELECT information.id,
    information.gid,
    information.tooling_code,
    information.version_num,
    information.display_name,
    information.published_date,
    information.tooling_type
   FROM tooling.information;


ALTER TABLE tooling.list OWNER TO postgres;

--
-- TOC entry 395 (class 1259 OID 63628)
-- Name: assignment; Type: TABLE; Schema: uom; Owner: postgres
--

CREATE TABLE uom.assignment (
    uom_role_id bigint NOT NULL,
    uom_role_code character varying(100),
    uom_role_name character varying(300)
);


ALTER TABLE uom.assignment OWNER TO postgres;

--
-- TOC entry 5005 (class 0 OID 0)
-- Dependencies: 395
-- Name: TABLE assignment; Type: COMMENT; Schema: uom; Owner: postgres
--

COMMENT ON TABLE uom.assignment IS 'uom role';


--
-- TOC entry 396 (class 1259 OID 63631)
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
-- TOC entry 397 (class 1259 OID 63637)
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
-- TOC entry 5006 (class 0 OID 0)
-- Dependencies: 397
-- Name: uom_role_uom_role_id_seq; Type: SEQUENCE OWNED BY; Schema: uom; Owner: postgres
--

ALTER SEQUENCE uom.uom_role_uom_role_id_seq OWNED BY uom.assignment.uom_role_id;


--
-- TOC entry 398 (class 1259 OID 63639)
-- Name: body; Type: TABLE; Schema: work; Owner: postgres
--

CREATE TABLE work.body (
    head_id bigint NOT NULL,
    segment_gid uuid NOT NULL,
    quantity common.quantity NOT NULL
);


ALTER TABLE work.body OWNER TO postgres;

--
-- TOC entry 399 (class 1259 OID 63645)
-- Name: head; Type: TABLE; Schema: work; Owner: postgres
--

CREATE TABLE work.head (
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


ALTER TABLE work.head OWNER TO postgres;

--
-- TOC entry 400 (class 1259 OID 63655)
-- Name: head_id_seq; Type: SEQUENCE; Schema: work; Owner: postgres
--

CREATE SEQUENCE work.head_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE work.head_id_seq OWNER TO postgres;

--
-- TOC entry 5007 (class 0 OID 0)
-- Dependencies: 400
-- Name: head_id_seq; Type: SEQUENCE OWNED BY; Schema: work; Owner: postgres
--

ALTER SEQUENCE work.head_id_seq OWNED BY work.head.id;


--
-- TOC entry 401 (class 1259 OID 63657)
-- Name: numerator; Type: TABLE; Schema: work; Owner: postgres
--

CREATE TABLE work.numerator (
    facility_code character varying NOT NULL,
    julianized_week integer NOT NULL,
    current_value integer DEFAULT 0 NOT NULL
);


ALTER TABLE work.numerator OWNER TO postgres;

--
-- TOC entry 4267 (class 2604 OID 64446)
-- Name: head id; Type: DEFAULT; Schema: claim; Owner: postgres
--

ALTER TABLE ONLY claim.head ALTER COLUMN id SET DEFAULT nextval('claim.head_id_seq'::regclass);


--
-- TOC entry 4066 (class 2604 OID 63665)
-- Name: exception_code id; Type: DEFAULT; Schema: common; Owner: postgres
--

ALTER TABLE ONLY common.exception_code ALTER COLUMN id SET DEFAULT nextval('common.exception_code_id_seq'::regclass);


--
-- TOC entry 4069 (class 2604 OID 63667)
-- Name: assembly uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.assembly ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 4072 (class 2604 OID 63668)
-- Name: buyable uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.buyable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 4082 (class 2604 OID 63669)
-- Name: definition id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition ALTER COLUMN id SET DEFAULT nextval('ebom.definition_id_seq'::regclass);


--
-- TOC entry 4085 (class 2604 OID 63670)
-- Name: information id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information ALTER COLUMN id SET DEFAULT nextval('ebom.information_id_seq'::regclass);


--
-- TOC entry 4086 (class 2604 OID 63671)
-- Name: part uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.part ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 4090 (class 2604 OID 63672)
-- Name: information id; Type: DEFAULT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY equipment.information ALTER COLUMN id SET DEFAULT nextval('equipment.information_id_seq'::regclass);


--
-- TOC entry 4095 (class 2604 OID 63673)
-- Name: area id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area ALTER COLUMN id SET DEFAULT nextval('facility.information_id_seq'::regclass);


--
-- TOC entry 4096 (class 2604 OID 63674)
-- Name: area gid; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 4097 (class 2604 OID 63675)
-- Name: area version_num; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 4098 (class 2604 OID 63676)
-- Name: area published_date; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 4100 (class 2604 OID 63677)
-- Name: enterprise id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.enterprise ALTER COLUMN id SET DEFAULT nextval('facility.information_id_seq'::regclass);


--
-- TOC entry 4101 (class 2604 OID 63678)
-- Name: enterprise gid; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.enterprise ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 4102 (class 2604 OID 63679)
-- Name: enterprise version_num; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.enterprise ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 4103 (class 2604 OID 63680)
-- Name: enterprise published_date; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.enterprise ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 4094 (class 2604 OID 63681)
-- Name: information id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.information ALTER COLUMN id SET DEFAULT nextval('facility.information_id_seq'::regclass);


--
-- TOC entry 4105 (class 2604 OID 63682)
-- Name: line id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line ALTER COLUMN id SET DEFAULT nextval('facility.information_id_seq'::regclass);


--
-- TOC entry 4106 (class 2604 OID 63683)
-- Name: line gid; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 4107 (class 2604 OID 63684)
-- Name: line version_num; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 4108 (class 2604 OID 63685)
-- Name: line published_date; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 4110 (class 2604 OID 63686)
-- Name: site id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site ALTER COLUMN id SET DEFAULT nextval('facility.information_id_seq'::regclass);


--
-- TOC entry 4111 (class 2604 OID 63687)
-- Name: site gid; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 4112 (class 2604 OID 63688)
-- Name: site version_num; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 4113 (class 2604 OID 63689)
-- Name: site published_date; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 4116 (class 2604 OID 63690)
-- Name: zone id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone ALTER COLUMN id SET DEFAULT nextval('facility.information_id_seq'::regclass);


--
-- TOC entry 4117 (class 2604 OID 63691)
-- Name: zone gid; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 4118 (class 2604 OID 63692)
-- Name: zone version_num; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 4119 (class 2604 OID 63693)
-- Name: zone published_date; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 4123 (class 2604 OID 63694)
-- Name: assembly version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.assembly ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 4124 (class 2604 OID 63695)
-- Name: assembly published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.assembly ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 4126 (class 2604 OID 63696)
-- Name: buyable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.buyable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 4127 (class 2604 OID 63697)
-- Name: buyable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.buyable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 4129 (class 2604 OID 63698)
-- Name: consumable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.consumable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 4130 (class 2604 OID 63699)
-- Name: consumable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.consumable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 4138 (class 2604 OID 63700)
-- Name: definition id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition ALTER COLUMN id SET DEFAULT nextval('inventory.definition_id_seq'::regclass);


--
-- TOC entry 4141 (class 2604 OID 63701)
-- Name: information id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.information ALTER COLUMN id SET DEFAULT nextval('inventory.information_id_seq'::regclass);


--
-- TOC entry 4142 (class 2604 OID 63702)
-- Name: part version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.part ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 4143 (class 2604 OID 63703)
-- Name: part published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.part ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 4145 (class 2604 OID 63704)
-- Name: primal version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.primal ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 4146 (class 2604 OID 63705)
-- Name: primal published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.primal ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 4148 (class 2604 OID 63706)
-- Name: producible version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.producible ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 4149 (class 2604 OID 63707)
-- Name: producible published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.producible ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 4151 (class 2604 OID 63708)
-- Name: salable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.salable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 4152 (class 2604 OID 63709)
-- Name: salable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.salable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 4154 (class 2604 OID 63710)
-- Name: storable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.storable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 4155 (class 2604 OID 63711)
-- Name: storable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.storable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 4161 (class 2604 OID 63712)
-- Name: head id; Type: DEFAULT; Schema: issue; Owner: postgres
--

ALTER TABLE ONLY issue.head ALTER COLUMN id SET DEFAULT nextval('issue.head_id_seq'::regclass);


--
-- TOC entry 4166 (class 2604 OID 63713)
-- Name: consumable uom_code; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 4173 (class 2604 OID 63714)
-- Name: definition id; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition ALTER COLUMN id SET DEFAULT nextval('mbom.definition_id_seq'::regclass);


--
-- TOC entry 4176 (class 2604 OID 63715)
-- Name: information id; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.information ALTER COLUMN id SET DEFAULT nextval('mbom.information_id_seq'::regclass);


--
-- TOC entry 4177 (class 2604 OID 63716)
-- Name: primal uom_code; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 4181 (class 2604 OID 63717)
-- Name: information id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.information ALTER COLUMN id SET DEFAULT nextval('operation.information_id_seq'::regclass);


--
-- TOC entry 4184 (class 2604 OID 63718)
-- Name: information id; Type: DEFAULT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY personnel.information ALTER COLUMN id SET DEFAULT nextval('personnel.information_id_seq'::regclass);


--
-- TOC entry 4187 (class 2604 OID 63719)
-- Name: consumable uom_code; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 4188 (class 2604 OID 63720)
-- Name: consumable rationing_qty; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.consumable ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 4193 (class 2604 OID 63721)
-- Name: definition id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.definition ALTER COLUMN id SET DEFAULT nextval('process.definition_id_seq'::regclass);


--
-- TOC entry 4198 (class 2604 OID 63722)
-- Name: information id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.information ALTER COLUMN id SET DEFAULT nextval('process.information_id_seq'::regclass);


--
-- TOC entry 4205 (class 2604 OID 63723)
-- Name: primal uom_code; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 4206 (class 2604 OID 63724)
-- Name: primal rationing_qty; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.primal ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 4200 (class 2604 OID 63725)
-- Name: segment id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.segment ALTER COLUMN id SET DEFAULT nextval('process.segment_id_seq'::regclass);


--
-- TOC entry 4212 (class 2604 OID 63726)
-- Name: blueprint id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.blueprint ALTER COLUMN id SET DEFAULT nextval('product.blueprint_id_seq'::regclass);


--
-- TOC entry 4217 (class 2604 OID 63727)
-- Name: definition id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.definition ALTER COLUMN id SET DEFAULT nextval('product.definition_id_seq'::regclass);


--
-- TOC entry 4222 (class 2604 OID 63728)
-- Name: information id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.information ALTER COLUMN id SET DEFAULT nextval('product.information_id_seq'::regclass);


--
-- TOC entry 4229 (class 2604 OID 63729)
-- Name: segment id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.segment ALTER COLUMN id SET DEFAULT nextval('product.segment_id_seq'::regclass);


--
-- TOC entry 4234 (class 2604 OID 63730)
-- Name: head id; Type: DEFAULT; Schema: receipt; Owner: postgres
--

ALTER TABLE ONLY receipt.head ALTER COLUMN id SET DEFAULT nextval('receipt.head_id_seq'::regclass);


--
-- TOC entry 4241 (class 2604 OID 63731)
-- Name: head id; Type: DEFAULT; Schema: request; Owner: postgres
--

ALTER TABLE ONLY request.head ALTER COLUMN id SET DEFAULT nextval('request.head_id_seq'::regclass);


--
-- TOC entry 4248 (class 2604 OID 63732)
-- Name: head id; Type: DEFAULT; Schema: response; Owner: postgres
--

ALTER TABLE ONLY response.head ALTER COLUMN id SET DEFAULT nextval('response.head_id_seq'::regclass);


--
-- TOC entry 4255 (class 2604 OID 63733)
-- Name: head id; Type: DEFAULT; Schema: stocktake; Owner: postgres
--

ALTER TABLE ONLY stocktake.head ALTER COLUMN id SET DEFAULT nextval('stocktake.head_id_seq'::regclass);


--
-- TOC entry 4259 (class 2604 OID 63734)
-- Name: information id; Type: DEFAULT; Schema: tooling; Owner: postgres
--

ALTER TABLE ONLY tooling.information ALTER COLUMN id SET DEFAULT nextval('tooling.information_id_seq'::regclass);


--
-- TOC entry 4260 (class 2604 OID 63735)
-- Name: assignment uom_role_id; Type: DEFAULT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.assignment ALTER COLUMN uom_role_id SET DEFAULT nextval('uom.uom_role_uom_role_id_seq'::regclass);


--
-- TOC entry 4265 (class 2604 OID 63736)
-- Name: head id; Type: DEFAULT; Schema: work; Owner: postgres
--

ALTER TABLE ONLY work.head ALTER COLUMN id SET DEFAULT nextval('work.head_id_seq'::regclass);


--
-- TOC entry 4766 (class 0 OID 62811)
-- Dependencies: 274
-- Data for Name: process; Type: TABLE DATA; Schema: balance; Owner: postgres
--



--
-- TOC entry 4767 (class 0 OID 62819)
-- Dependencies: 275
-- Data for Name: segment; Type: TABLE DATA; Schema: balance; Owner: postgres
--



--
-- TOC entry 4886 (class 0 OID 64499)
-- Dependencies: 405
-- Data for Name: stock; Type: TABLE DATA; Schema: balance; Owner: postgres
--



--
-- TOC entry 4768 (class 0 OID 62845)
-- Dependencies: 276
-- Data for Name: ebom_to_mbom; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4769 (class 0 OID 62848)
-- Dependencies: 277
-- Data for Name: ebom_to_process; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4770 (class 0 OID 62851)
-- Dependencies: 278
-- Data for Name: ebom_to_product; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4771 (class 0 OID 62854)
-- Dependencies: 279
-- Data for Name: mbom_to_process; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4772 (class 0 OID 62857)
-- Dependencies: 280
-- Data for Name: mbom_to_product; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4773 (class 0 OID 62860)
-- Dependencies: 281
-- Data for Name: benchmark; Type: TABLE DATA; Schema: calendar; Owner: postgres
--



--
-- TOC entry 4774 (class 0 OID 62863)
-- Dependencies: 282
-- Data for Name: checkpoint; Type: TABLE DATA; Schema: calendar; Owner: postgres
--



--
-- TOC entry 4775 (class 0 OID 62866)
-- Dependencies: 283
-- Data for Name: definition; Type: TABLE DATA; Schema: calendar; Owner: postgres
--



--
-- TOC entry 4776 (class 0 OID 62874)
-- Dependencies: 284
-- Data for Name: information; Type: TABLE DATA; Schema: calendar; Owner: postgres
--



--
-- TOC entry 4777 (class 0 OID 62877)
-- Dependencies: 285
-- Data for Name: workday; Type: TABLE DATA; Schema: calendar; Owner: postgres
--



--
-- TOC entry 4778 (class 0 OID 62884)
-- Dependencies: 286
-- Data for Name: workweek; Type: TABLE DATA; Schema: calendar; Owner: postgres
--



--
-- TOC entry 4885 (class 0 OID 64462)
-- Dependencies: 404
-- Data for Name: body; Type: TABLE DATA; Schema: claim; Owner: postgres
--



--
-- TOC entry 4884 (class 0 OID 64443)
-- Dependencies: 403
-- Data for Name: head; Type: TABLE DATA; Schema: claim; Owner: postgres
--



--
-- TOC entry 4779 (class 0 OID 62917)
-- Dependencies: 287
-- Data for Name: numerator; Type: TABLE DATA; Schema: claim; Owner: postgres
--



--
-- TOC entry 4780 (class 0 OID 62928)
-- Dependencies: 288
-- Data for Name: document_abbrevation; Type: TABLE DATA; Schema: common; Owner: postgres
--

INSERT INTO common.document_abbrevation VALUES ('REQUEST', 'REQ');
INSERT INTO common.document_abbrevation VALUES ('RESPONSE', 'RES');
INSERT INTO common.document_abbrevation VALUES ('ISSUE', 'ISS');
INSERT INTO common.document_abbrevation VALUES ('RECEIPT', 'REC');
INSERT INTO common.document_abbrevation VALUES ('STOCKTAKE', 'STO');
INSERT INTO common.document_abbrevation VALUES ('WORK', 'WRK');
INSERT INTO common.document_abbrevation VALUES ('CLAIM', 'CLA');


--
-- TOC entry 4781 (class 0 OID 62935)
-- Dependencies: 289
-- Data for Name: exception_code; Type: TABLE DATA; Schema: common; Owner: postgres
--

INSERT INTO common.exception_code VALUES (2, 'WMS ERROR 2 message', 'WMS ERROR 2 details', 'WMS ERROR 2 hint', 'W1002', 'boilerplate_01');
INSERT INTO common.exception_code VALUES (3, 'WMS ERROR 3 message', 'WMS ERROR 3 details', 'WMS ERROR 3 hint', 'W1003', 'boilerplate_02');
INSERT INTO common.exception_code VALUES (4, 'WMS ERROR 4 message', 'WMS ERROR 4 details', 'WMS ERROR 4 hint', 'W1004', 'boilerplate_03');
INSERT INTO common.exception_code VALUES (5, 'WMS ERROR 5 message', 'WMS ERROR 5 details', 'WMS ERROR 5 hint', 'W1005', 'boilerplate_04');
INSERT INTO common.exception_code VALUES (6, 'WMS ERROR 6 message', 'WMS ERROR 6 details', 'WMS ERROR 6 hint', 'W1006', 'boilerplate_05');
INSERT INTO common.exception_code VALUES (7, 'WMS ERROR 7 message', 'WMS ERROR 7 details', 'WMS ERROR 7 hint', 'W1007', 'boilerplate_06');
INSERT INTO common.exception_code VALUES (8, 'WMS ERROR 8 message', 'WMS ERROR 8 details', 'WMS ERROR 8 hint', 'W1008', 'boilerplate_07');
INSERT INTO common.exception_code VALUES (1, 'WMS EXCEPTION 1 message', 'WMS ERROR 1 details', 'WMS ERROR 1 hint', 'W1001', 'invalid_test_data');
INSERT INTO common.exception_code VALUES (9, 'Unknown exception', 'Unknown exception', 'Unknown exception', 'W9999', 'unknown_exception');
INSERT INTO common.exception_code VALUES (10, 'WMS WARNING 1 message', 'WMS NOTICE 1 details', 'WMS NOOTICE 1 hint', 'Z1010', 'incorrect_test_data');


--
-- TOC entry 4783 (class 0 OID 62943)
-- Dependencies: 291
-- Data for Name: stocktake_policy; Type: TABLE DATA; Schema: common; Owner: postgres
--

INSERT INTO common.stocktake_policy VALUES ('CLAIM', 'DISABLED');
INSERT INTO common.stocktake_policy VALUES ('ISSUE', 'ENFORCING');
INSERT INTO common.stocktake_policy VALUES ('RECEIPT', 'ENFORCING');
INSERT INTO common.stocktake_policy VALUES ('STOCKTAKE', 'DISABLED');


--
-- TOC entry 4785 (class 0 OID 62979)
-- Dependencies: 293
-- Data for Name: assembly; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO ebom.assembly VALUES (1, '80.40.095-001', 1, 1.0000, 'pcs', 'ASSEMBLY');
INSERT INTO ebom.assembly VALUES (1, '82.31.050-002', 1, 1.0000, 'pcs', 'ASSEMBLY');
INSERT INTO ebom.assembly VALUES (2, '80.01.050-001', 1, 1.0000, 'pcs', 'ASSEMBLY');
INSERT INTO ebom.assembly VALUES (2, '80.40.095-001', 1, 1.0000, 'pcs', 'ASSEMBLY');
INSERT INTO ebom.assembly VALUES (2, '82.31.050-002', 1, 1.0000, 'pcs', 'ASSEMBLY');
INSERT INTO ebom.assembly VALUES (3, '80.01.050-002', 1, 2.0000, 'pcs', 'ASSEMBLY');
INSERT INTO ebom.assembly VALUES (3, '80.40.095-001', 1, 1.0000, 'pcs', 'ASSEMBLY');
INSERT INTO ebom.assembly VALUES (3, '82.31.050-002', 1, 1.0000, 'pcs', 'ASSEMBLY');


--
-- TOC entry 4786 (class 0 OID 62987)
-- Dependencies: 294
-- Data for Name: blueprint; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 4787 (class 0 OID 62994)
-- Dependencies: 295
-- Data for Name: buyable; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO ebom.buyable VALUES (1, 'гайка м12-оц', 1, 1.0000, 'pcs', 'BUYABLE');
INSERT INTO ebom.buyable VALUES (2, 'гайка м10', 1, 2.0000, 'pcs', 'BUYABLE');
INSERT INTO ebom.buyable VALUES (2, 'гайка м12-оц', 1, 1.0000, 'pcs', 'BUYABLE');
INSERT INTO ebom.buyable VALUES (2, 'гайка м16', 1, 3.0000, 'pcs', 'BUYABLE');
INSERT INTO ebom.buyable VALUES (2, 'шайба гроверна 10', 1, 2.0000, 'pcs', 'BUYABLE');
INSERT INTO ebom.buyable VALUES (2, 'шайба гроверна 16', 1, 3.0000, 'pcs', 'BUYABLE');
INSERT INTO ebom.buyable VALUES (3, 'гайка м12-оц', 1, 1.0000, 'pcs', 'BUYABLE');
INSERT INTO ebom.buyable VALUES (3, 'гайка м16', 1, 8.0000, 'pcs', 'BUYABLE');
INSERT INTO ebom.buyable VALUES (3, 'шайба гроверна 16', 1, 8.0000, 'pcs', 'BUYABLE');


--
-- TOC entry 4784 (class 0 OID 62972)
-- Dependencies: 292
-- Data for Name: component; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 4788 (class 0 OID 63002)
-- Dependencies: 296
-- Data for Name: definition; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO ebom.definition VALUES (1, '29e9fb18-b432-11eb-bc30-f85971830086', 1, 1.0000, 'pcs', 'ASSEMBLY', '2015-01-16', 'PROPOSED', '2021-05-14 00:28:30.949353+03', 'COMMITTED', '2021-05-14 00:29:33.292109+03', 1);
INSERT INTO ebom.definition VALUES (2, '431d86c2-b432-11eb-bc30-f85971830086', 1, 1.0000, 'pcs', 'ASSEMBLY', '2015-01-22', 'PROPOSED', '2021-05-14 00:29:13.230191+03', 'COMMITTED', '2021-05-14 00:29:38.622443+03', 2);
INSERT INTO ebom.definition VALUES (3, '13d1ceee-b434-11eb-bc30-f85971830086', 1, 1.0000, 'pcs', 'ASSEMBLY', '2015-01-16', 'PROPOSED', '2021-05-14 00:42:12.874313+03', 'COMMITTED', '2021-05-14 00:42:30.191282+03', 3);
INSERT INTO ebom.definition VALUES (9, '60dffb5c-b439-11eb-bc30-f85971830086', 1, 1.0000, 'pcs', 'PART', '2014-06-19', 'PROPOSED', '2021-05-14 01:20:09.635735+03', 'COMMITTED', '2021-05-14 01:21:04.459273+03', 8);
INSERT INTO ebom.definition VALUES (10, '60e33ede-b439-11eb-bc30-f85971830086', 1, 1.0000, 'pcs', 'PART', '2014-03-14', 'PROPOSED', '2021-05-14 01:20:09.656966+03', 'COMMITTED', '2021-05-14 01:21:10.045482+03', 9);
INSERT INTO ebom.definition VALUES (11, '60e66528-b439-11eb-bc30-f85971830086', 1, 1.0000, 'pcs', 'PART', '2016-06-10', 'PROPOSED', '2021-05-14 01:20:09.677783+03', 'COMMITTED', '2021-05-14 01:21:12.289016+03', 10);
INSERT INTO ebom.definition VALUES (12, '60e9cf2e-b439-11eb-bc30-f85971830086', 1, 1.0000, 'pcs', 'PART', '2013-07-29', 'PROPOSED', '2021-05-14 01:20:09.699941+03', 'COMMITTED', '2021-05-14 01:21:14.666326+03', 11);
INSERT INTO ebom.definition VALUES (15, '60f381ea-b439-11eb-bc30-f85971830086', 1, 1.0000, 'pcs', 'PART', '2013-07-29', 'PROPOSED', '2021-05-14 01:20:09.763581+03', 'COMMITTED', '2021-05-14 01:21:16.877822+03', 12);


--
-- TOC entry 4790 (class 0 OID 63019)
-- Dependencies: 298
-- Data for Name: information; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO ebom.information VALUES (1, '29ea0522-b432-11eb-bc30-f85971830086', '11.42.050-001', 'Кран 11с42п DN50х50');
INSERT INTO ebom.information VALUES (2, '431d8b54-b432-11eb-bc30-f85971830086', '11.41.050-001', 'Кран 11с41п DN50х50');
INSERT INTO ebom.information VALUES (3, '13d1d7d6-b434-11eb-bc30-f85971830086', '11.64.050-001', 'Кран 11с64п DN50х50');
INSERT INTO ebom.information VALUES (8, '60dffefe-b439-11eb-bc30-f85971830086', '20.10.040-001', 'Фланець ГОСТ12820 PN10 DN40');
INSERT INTO ebom.information VALUES (9, '60e34488-b439-11eb-bc30-f85971830086', '20.10.050-001', 'Фланець ГОСТ12820 PN10 DN50');
INSERT INTO ebom.information VALUES (10, '60e668a2-b439-11eb-bc30-f85971830086', '22.16.050-101', 'Фланець 11с22п DN50х40');
INSERT INTO ebom.information VALUES (11, '60e9d7bc-b439-11eb-bc30-f85971830086', '23.01.050-001', 'Фланець 11с42п DN50х50');
INSERT INTO ebom.information VALUES (12, '60f3878a-b439-11eb-bc30-f85971830086', '23.01.050-002', 'Фланець 11с42п LH DN50х50');


--
-- TOC entry 4792 (class 0 OID 63032)
-- Dependencies: 301
-- Data for Name: part; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO ebom.part VALUES (1, '23.01.050-001', 1, 1.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (1, '23.01.050-002', 1, 1.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (1, '53.01.004-001', 1, 1.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (1, '54.02.010-004', 1, 2.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (1, '54.02.016-001', 1, 3.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (1, '60.01.080-001', 1, 1.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (1, '61.01.013-003', 1, 1.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (1, '70.02.062-001', 1, 2.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (1, '70.03.095-001', 1, 2.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (1, '70.04.017-001', 1, 1.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (1, '71.03.050-001', 1, 2.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (1, '72.01.014-001', 1, 2.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (2, '23.01.050-001', 1, 1.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (2, '53.01.004-001', 1, 1.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (2, '54.01.010-003', 1, 2.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (2, '54.01.016-001', 1, 3.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (2, '60.01.080-001', 1, 1.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (2, '61.01.013-003', 1, 1.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (2, '70.02.062-001', 1, 2.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (2, '70.03.095-001', 1, 2.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (2, '70.04.017-001', 1, 1.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (2, '71.03.050-001', 1, 2.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (2, '72.01.014-001', 1, 2.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (3, '53.01.004-001', 1, 1.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (3, '54.01.016-002', 1, 4.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (3, '60.01.080-001', 1, 1.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (3, '61.01.013-003', 1, 1.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (3, '70.02.062-001', 1, 2.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (3, '70.03.095-001', 1, 2.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (3, '70.04.017-001', 1, 1.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (3, '71.03.050-001', 1, 2.0000, 'pcs', 'PART');
INSERT INTO ebom.part VALUES (3, '72.01.014-001', 1, 2.0000, 'pcs', 'PART');


--
-- TOC entry 4793 (class 0 OID 63040)
-- Dependencies: 302
-- Data for Name: information; Type: TABLE DATA; Schema: equipment; Owner: postgres
--



--
-- TOC entry 4796 (class 0 OID 63063)
-- Dependencies: 306
-- Data for Name: area; Type: TABLE DATA; Schema: facility; Owner: postgres
--

INSERT INTO facility.area VALUES (8, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'AREA-01', 1, 'AREA #1', '2021-05-01', 'SITE-01', 'AREA');
INSERT INTO facility.area VALUES (9, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'AREA-02', 1, 'AREA #2', '2021-05-01', 'SITE-02', 'AREA');


--
-- TOC entry 4797 (class 0 OID 63073)
-- Dependencies: 307
-- Data for Name: enterprise; Type: TABLE DATA; Schema: facility; Owner: postgres
--

INSERT INTO facility.enterprise VALUES (1, 'a711da30-fa3a-11e7-8e63-d4bed939923a', 'ENTERPRISE-01', 1, 'ENTERPRISE #1', '2021-05-01', NULL, 'ENTERPRISE');


--
-- TOC entry 4795 (class 0 OID 63054)
-- Dependencies: 305
-- Data for Name: information; Type: TABLE DATA; Schema: facility; Owner: postgres
--



--
-- TOC entry 4799 (class 0 OID 63085)
-- Dependencies: 309
-- Data for Name: line; Type: TABLE DATA; Schema: facility; Owner: postgres
--



--
-- TOC entry 4800 (class 0 OID 63099)
-- Dependencies: 311
-- Data for Name: site; Type: TABLE DATA; Schema: facility; Owner: postgres
--

INSERT INTO facility.site VALUES (6, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', 'SITE-01', 1, 'SITE #1', '2021-05-01', 'ENTERPRISE-01', 'SITE');
INSERT INTO facility.site VALUES (7, 'f08b5682-fa3a-11e7-86da-d4bed939923a', 'SITE-02', 1, 'SITE #2', '2021-05-01', 'ENTERPRISE-01', 'SITE');


--
-- TOC entry 4801 (class 0 OID 63110)
-- Dependencies: 312
-- Data for Name: zone; Type: TABLE DATA; Schema: facility; Owner: postgres
--



--
-- TOC entry 4803 (class 0 OID 63128)
-- Dependencies: 314
-- Data for Name: assembly; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.assembly VALUES ('11.42.050-001', 1, 'Кран 11с42п DN50х50', '2021-05-14', 'ASSEMBLY', 'pcs', 1);
INSERT INTO inventory.assembly VALUES ('80.40.095-001', 1, 'Корпус 95 з бобишкою', '2021-05-14', 'ASSEMBLY', 'pcs', 14);
INSERT INTO inventory.assembly VALUES ('82.31.050-002', 1, 'Ручка КТ31 DN50х40 сіра', '2021-05-14', 'ASSEMBLY', 'pcs', 15);
INSERT INTO inventory.assembly VALUES ('11.41.050-001', 1, 'Кран 11с41п DN50х50', '2021-05-14', 'ASSEMBLY', 'pcs', 17);
INSERT INTO inventory.assembly VALUES ('80.01.050-001', 1, 'Котушка 11с41п DN50х50', '2021-05-14', 'ASSEMBLY', 'pcs', 20);
INSERT INTO inventory.assembly VALUES ('11.64.050-001', 1, 'Кран 11с64п DN50х50', '2021-05-14', 'ASSEMBLY', 'pcs', 25);
INSERT INTO inventory.assembly VALUES ('80.01.050-002', 1, 'Котушка 11с64п DN50х50', '2021-05-14', 'ASSEMBLY', 'pcs', 27);


--
-- TOC entry 4804 (class 0 OID 63137)
-- Dependencies: 315
-- Data for Name: buyable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.buyable VALUES ('гайка м12-оц', 1, 'Гайка М12 ГОСТ5916 ОЦ', '2021-05-14', 'BUYABLE', 'pcs', 16);
INSERT INTO inventory.buyable VALUES ('гайка м10', 1, 'Гайка М10 ГОСТ15521', '2021-05-14', 'BUYABLE', 'pcs', 21);
INSERT INTO inventory.buyable VALUES ('гайка м16', 1, 'Гайка М16 ГОСТ15521', '2021-05-14', 'BUYABLE', 'pcs', 22);
INSERT INTO inventory.buyable VALUES ('шайба гроверна 10', 1, 'Шайба гроверна 10 ГОСТ6402', '2021-05-14', 'BUYABLE', 'pcs', 23);
INSERT INTO inventory.buyable VALUES ('шайба гроверна 16', 1, 'Шайба гроверна 16 ГОСТ6402', '2021-05-14', 'BUYABLE', 'pcs', 24);
INSERT INTO inventory.buyable VALUES ('Квд-080х080-ст3ПС', 1, 'Квд-ст3ПС-080х080', '2018-05-01', 'BUYABLE', 'pcs', 32);


--
-- TOC entry 4802 (class 0 OID 63120)
-- Dependencies: 313
-- Data for Name: conglomeration; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4805 (class 0 OID 63146)
-- Dependencies: 316
-- Data for Name: consumable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.consumable VALUES ('23.01.050-001', 1, 'Фланець 11с42п DN50х50', '2021-05-14', 'CONSUMABLE', 'pcs', 2);
INSERT INTO inventory.consumable VALUES ('23.01.050-002', 1, 'Фланець 11с42п LH DN50х50', '2021-05-14', 'CONSUMABLE', 'pcs', 3);
INSERT INTO inventory.consumable VALUES ('53.01.004-001', 1, 'Штифт 4х12', '2021-05-14', 'CONSUMABLE', 'pcs', 4);
INSERT INTO inventory.consumable VALUES ('54.02.010-004', 1, 'Шпилька шестигранна 10х86', '2021-05-14', 'CONSUMABLE', 'pcs', 5);
INSERT INTO inventory.consumable VALUES ('54.02.016-001', 1, 'Шпилька шестигранна 16х86', '2021-05-14', 'CONSUMABLE', 'pcs', 6);
INSERT INTO inventory.consumable VALUES ('60.01.080-001', 1, 'Куля 80х60', '2021-05-14', 'CONSUMABLE', 'pcs', 7);
INSERT INTO inventory.consumable VALUES ('61.01.013-003', 1, 'Шток 13х66', '2021-05-14', 'CONSUMABLE', 'pcs', 8);
INSERT INTO inventory.consumable VALUES ('70.02.062-001', 1, 'Ущільнення кулі 50х50', '2021-05-14', 'CONSUMABLE', 'pcs', 9);
INSERT INTO inventory.consumable VALUES ('70.03.095-001', 1, 'Ущільнення корпуса 95', '2021-05-14', 'CONSUMABLE', 'pcs', 10);
INSERT INTO inventory.consumable VALUES ('70.04.017-001', 1, 'Ущільнення штока 17х14', '2021-05-14', 'CONSUMABLE', 'pcs', 11);
INSERT INTO inventory.consumable VALUES ('71.03.050-001', 1, 'Заглушка на фланець DN50', '2021-05-14', 'CONSUMABLE', 'pcs', 12);
INSERT INTO inventory.consumable VALUES ('72.01.014-001', 1, 'Гумове кільце D14', '2021-05-14', 'CONSUMABLE', 'pcs', 13);
INSERT INTO inventory.consumable VALUES ('80.40.095-001', 1, 'Корпус 95 з бобишкою', '2021-05-14', 'CONSUMABLE', 'pcs', 14);
INSERT INTO inventory.consumable VALUES ('82.31.050-002', 1, 'Ручка КТ31 DN50х40 сіра', '2021-05-14', 'CONSUMABLE', 'pcs', 15);
INSERT INTO inventory.consumable VALUES ('гайка м12-оц', 1, 'Гайка М12 ГОСТ5916 ОЦ', '2021-05-14', 'CONSUMABLE', 'pcs', 16);
INSERT INTO inventory.consumable VALUES ('54.01.010-003', 1, 'Шпилька кругла 10х100', '2021-05-14', 'CONSUMABLE', 'pcs', 18);
INSERT INTO inventory.consumable VALUES ('54.01.016-001', 1, 'Шпилька кругла 16х110', '2021-05-14', 'CONSUMABLE', 'pcs', 19);
INSERT INTO inventory.consumable VALUES ('80.01.050-001', 1, 'Котушка 11с41п DN50х50', '2021-05-14', 'CONSUMABLE', 'pcs', 20);
INSERT INTO inventory.consumable VALUES ('гайка м10', 1, 'Гайка М10 ГОСТ15521', '2021-05-14', 'CONSUMABLE', 'pcs', 21);
INSERT INTO inventory.consumable VALUES ('гайка м16', 1, 'Гайка М16 ГОСТ15521', '2021-05-14', 'CONSUMABLE', 'pcs', 22);
INSERT INTO inventory.consumable VALUES ('шайба гроверна 10', 1, 'Шайба гроверна 10 ГОСТ6402', '2021-05-14', 'CONSUMABLE', 'pcs', 23);
INSERT INTO inventory.consumable VALUES ('шайба гроверна 16', 1, 'Шайба гроверна 16 ГОСТ6402', '2021-05-14', 'CONSUMABLE', 'pcs', 24);
INSERT INTO inventory.consumable VALUES ('54.01.016-002', 1, 'Шпилька кругла 16х133', '2021-05-14', 'CONSUMABLE', 'pcs', 26);
INSERT INTO inventory.consumable VALUES ('80.01.050-002', 1, 'Котушка 11с64п DN50х50', '2021-05-14', 'CONSUMABLE', 'pcs', 27);
INSERT INTO inventory.consumable VALUES ('23.01.050-001.030', 1, 'Фланець 11с42п DN50х50 Штмп', '2021-05-14', 'CONSUMABLE', 'pcs', 31);


--
-- TOC entry 4806 (class 0 OID 63155)
-- Dependencies: 317
-- Data for Name: definition; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.definition VALUES (1, '4f12e580-b432-11eb-bc30-f85971830086', 'Кран 11с42п DN50х50', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:29:33.292109+03', 1, 'pcs');
INSERT INTO inventory.definition VALUES (2, '4f132090-b432-11eb-bc30-f85971830086', 'Фланець 11с42п DN50х50', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:29:33.292109+03', 2, 'pcs');
INSERT INTO inventory.definition VALUES (3, '4f134aac-b432-11eb-bc30-f85971830086', 'Фланець 11с42п LH DN50х50', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:29:33.292109+03', 3, 'pcs');
INSERT INTO inventory.definition VALUES (4, '4f139dd6-b432-11eb-bc30-f85971830086', 'Штифт 4х12', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:29:33.292109+03', 4, 'pcs');
INSERT INTO inventory.definition VALUES (5, '4f13cfae-b432-11eb-bc30-f85971830086', 'Шпилька шестигранна 10х86', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:29:33.292109+03', 5, 'pcs');
INSERT INTO inventory.definition VALUES (6, '4f13e462-b432-11eb-bc30-f85971830086', 'Шпилька шестигранна 16х86', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:29:33.292109+03', 6, 'pcs');
INSERT INTO inventory.definition VALUES (7, '4f13f722-b432-11eb-bc30-f85971830086', 'Куля 80х60', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:29:33.292109+03', 7, 'pcs');
INSERT INTO inventory.definition VALUES (8, '4f14026c-b432-11eb-bc30-f85971830086', 'Шток 13х66', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:29:33.292109+03', 8, 'pcs');
INSERT INTO inventory.definition VALUES (9, '4f140b40-b432-11eb-bc30-f85971830086', 'Ущільнення кулі 50х50', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:29:33.292109+03', 9, 'pcs');
INSERT INTO inventory.definition VALUES (10, '4f1413ec-b432-11eb-bc30-f85971830086', 'Ущільнення корпуса 95', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:29:33.292109+03', 10, 'pcs');
INSERT INTO inventory.definition VALUES (11, '4f141c7a-b432-11eb-bc30-f85971830086', 'Ущільнення штока 17х14', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:29:33.292109+03', 11, 'pcs');
INSERT INTO inventory.definition VALUES (12, '4f142558-b432-11eb-bc30-f85971830086', 'Заглушка на фланець DN50', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:29:33.292109+03', 12, 'pcs');
INSERT INTO inventory.definition VALUES (13, '4f142dd2-b432-11eb-bc30-f85971830086', 'Гумове кільце D14', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:29:33.292109+03', 13, 'pcs');
INSERT INTO inventory.definition VALUES (14, '4f143674-b432-11eb-bc30-f85971830086', 'Корпус 95 з бобишкою', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:29:33.292109+03', 14, 'pcs');
INSERT INTO inventory.definition VALUES (15, '4f1441be-b432-11eb-bc30-f85971830086', 'Ручка КТ31 DN50х40 сіра', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:29:33.292109+03', 15, 'pcs');
INSERT INTO inventory.definition VALUES (16, '4f144cc2-b432-11eb-bc30-f85971830086', 'Гайка М12 ГОСТ5916 ОЦ', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:29:33.292109+03', 16, 'pcs');
INSERT INTO inventory.definition VALUES (17, '52402402-b432-11eb-bc30-f85971830086', 'Кран 11с41п DN50х50', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:29:38.622443+03', 17, 'pcs');
INSERT INTO inventory.definition VALUES (18, '52403fdc-b432-11eb-bc30-f85971830086', 'Шпилька кругла 10х100', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:29:38.622443+03', 18, 'pcs');
INSERT INTO inventory.definition VALUES (19, '52404c5c-b432-11eb-bc30-f85971830086', 'Шпилька кругла 16х110', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:29:38.622443+03', 19, 'pcs');
INSERT INTO inventory.definition VALUES (20, '52407164-b432-11eb-bc30-f85971830086', 'Котушка 11с41п DN50х50', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:29:38.622443+03', 20, 'pcs');
INSERT INTO inventory.definition VALUES (21, '524085e6-b432-11eb-bc30-f85971830086', 'Гайка М10 ГОСТ15521', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:29:38.622443+03', 21, 'pcs');
INSERT INTO inventory.definition VALUES (22, '5240963a-b432-11eb-bc30-f85971830086', 'Гайка М16 ГОСТ15521', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:29:38.622443+03', 22, 'pcs');
INSERT INTO inventory.definition VALUES (23, '5240a288-b432-11eb-bc30-f85971830086', 'Шайба гроверна 10 ГОСТ6402', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:29:38.622443+03', 23, 'pcs');
INSERT INTO inventory.definition VALUES (24, '5240aeae-b432-11eb-bc30-f85971830086', 'Шайба гроверна 16 ГОСТ6402', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:29:38.622443+03', 24, 'pcs');
INSERT INTO inventory.definition VALUES (25, '1e2439b8-b434-11eb-bc30-f85971830086', 'Кран 11с64п DN50х50', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:42:30.191282+03', 25, 'pcs');
INSERT INTO inventory.definition VALUES (26, '1e245e8e-b434-11eb-bc30-f85971830086', 'Шпилька кругла 16х133', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:42:30.191282+03', 26, 'pcs');
INSERT INTO inventory.definition VALUES (27, '1e24b9ba-b434-11eb-bc30-f85971830086', 'Котушка 11с64п DN50х50', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 00:42:30.191282+03', 27, 'pcs');
INSERT INTO inventory.definition VALUES (28, '818d7758-b439-11eb-bc30-f85971830086', 'Фланець ГОСТ12820 PN10 DN40', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 01:21:04.459273+03', 28, 'pcs');
INSERT INTO inventory.definition VALUES (29, '84e1dba6-b439-11eb-bc30-f85971830086', 'Фланець ГОСТ12820 PN10 DN50', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 01:21:10.045482+03', 29, 'pcs');
INSERT INTO inventory.definition VALUES (30, '86382dd4-b439-11eb-bc30-f85971830086', 'Фланець 11с22п DN50х40', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 01:21:12.289016+03', 30, 'pcs');
INSERT INTO inventory.definition VALUES (31, 'de5f5052-b43c-11eb-bc30-f85971830086', 'Фланець 11с42п DN50х50 Штмп', 1, '2021-05-14', NULL, NULL, 'PROPOSED', '2021-05-14 01:45:08.671151+03', 31, 'pcs');
INSERT INTO inventory.definition VALUES (32, 'ffdbd1ec-b5db-11eb-b4f1-f85971830086', 'Квд-ст3ПС-080х080', 1, '2018-05-01', NULL, NULL, 'PROPOSED', '2021-05-16 03:16:45.990312+03', 32, 'pcs');


--
-- TOC entry 4808 (class 0 OID 63169)
-- Dependencies: 319
-- Data for Name: information; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.information VALUES (1, '4f12dd1a-b432-11eb-bc30-f85971830086', '11.42.050-001', 'Кран 11с42п DN50х50', '2021-05-14');
INSERT INTO inventory.information VALUES (2, '4f131f32-b432-11eb-bc30-f85971830086', '23.01.050-001', 'Фланець 11с42п DN50х50', '2021-05-14');
INSERT INTO inventory.information VALUES (3, '4f13494e-b432-11eb-bc30-f85971830086', '23.01.050-002', 'Фланець 11с42п LH DN50х50', '2021-05-14');
INSERT INTO inventory.information VALUES (4, '4f1397aa-b432-11eb-bc30-f85971830086', '53.01.004-001', 'Штифт 4х12', '2021-05-14');
INSERT INTO inventory.information VALUES (5, '4f13ccc0-b432-11eb-bc30-f85971830086', '54.02.010-004', 'Шпилька шестигранна 10х86', '2021-05-14');
INSERT INTO inventory.information VALUES (6, '4f13e354-b432-11eb-bc30-f85971830086', '54.02.016-001', 'Шпилька шестигранна 16х86', '2021-05-14');
INSERT INTO inventory.information VALUES (7, '4f13f60a-b432-11eb-bc30-f85971830086', '60.01.080-001', 'Куля 80х60', '2021-05-14');
INSERT INTO inventory.information VALUES (8, '4f140172-b432-11eb-bc30-f85971830086', '61.01.013-003', 'Шток 13х66', '2021-05-14');
INSERT INTO inventory.information VALUES (9, '4f140a46-b432-11eb-bc30-f85971830086', '70.02.062-001', 'Ущільнення кулі 50х50', '2021-05-14');
INSERT INTO inventory.information VALUES (10, '4f1412f2-b432-11eb-bc30-f85971830086', '70.03.095-001', 'Ущільнення корпуса 95', '2021-05-14');
INSERT INTO inventory.information VALUES (11, '4f141b8a-b432-11eb-bc30-f85971830086', '70.04.017-001', 'Ущільнення штока 17х14', '2021-05-14');
INSERT INTO inventory.information VALUES (12, '4f14245e-b432-11eb-bc30-f85971830086', '71.03.050-001', 'Заглушка на фланець DN50', '2021-05-14');
INSERT INTO inventory.information VALUES (13, '4f142ce2-b432-11eb-bc30-f85971830086', '72.01.014-001', 'Гумове кільце D14', '2021-05-14');
INSERT INTO inventory.information VALUES (14, '4f143584-b432-11eb-bc30-f85971830086', '80.40.095-001', 'Корпус 95 з бобишкою', '2021-05-14');
INSERT INTO inventory.information VALUES (15, '4f1440ba-b432-11eb-bc30-f85971830086', '82.31.050-002', 'Ручка КТ31 DN50х40 сіра', '2021-05-14');
INSERT INTO inventory.information VALUES (16, '4f144bb4-b432-11eb-bc30-f85971830086', 'гайка м12-оц', 'Гайка М12 ГОСТ5916 ОЦ', '2021-05-14');
INSERT INTO inventory.information VALUES (17, '5240220e-b432-11eb-bc30-f85971830086', '11.41.050-001', 'Кран 11с41п DN50х50', '2021-05-14');
INSERT INTO inventory.information VALUES (18, '52403e7e-b432-11eb-bc30-f85971830086', '54.01.010-003', 'Шпилька кругла 10х100', '2021-05-14');
INSERT INTO inventory.information VALUES (19, '52404b12-b432-11eb-bc30-f85971830086', '54.01.016-001', 'Шпилька кругла 16х110', '2021-05-14');
INSERT INTO inventory.information VALUES (20, '52407024-b432-11eb-bc30-f85971830086', '80.01.050-001', 'Котушка 11с41п DN50х50', '2021-05-14');
INSERT INTO inventory.information VALUES (21, '524084a6-b432-11eb-bc30-f85971830086', 'гайка м10', 'Гайка М10 ГОСТ15521', '2021-05-14');
INSERT INTO inventory.information VALUES (22, '524094fa-b432-11eb-bc30-f85971830086', 'гайка м16', 'Гайка М16 ГОСТ15521', '2021-05-14');
INSERT INTO inventory.information VALUES (23, '5240a152-b432-11eb-bc30-f85971830086', 'шайба гроверна 10', 'Шайба гроверна 10 ГОСТ6402', '2021-05-14');
INSERT INTO inventory.information VALUES (24, '5240ad6e-b432-11eb-bc30-f85971830086', 'шайба гроверна 16', 'Шайба гроверна 16 ГОСТ6402', '2021-05-14');
INSERT INTO inventory.information VALUES (25, '1e24380a-b434-11eb-bc30-f85971830086', '11.64.050-001', 'Кран 11с64п DN50х50', '2021-05-14');
INSERT INTO inventory.information VALUES (26, '1e245d12-b434-11eb-bc30-f85971830086', '54.01.016-002', 'Шпилька кругла 16х133', '2021-05-14');
INSERT INTO inventory.information VALUES (27, '1e24b744-b434-11eb-bc30-f85971830086', '80.01.050-002', 'Котушка 11с64п DN50х50', '2021-05-14');
INSERT INTO inventory.information VALUES (28, '818d7582-b439-11eb-bc30-f85971830086', '20.10.040-001', 'Фланець ГОСТ12820 PN10 DN40', '2021-05-14');
INSERT INTO inventory.information VALUES (29, '84e1d9da-b439-11eb-bc30-f85971830086', '20.10.050-001', 'Фланець ГОСТ12820 PN10 DN50', '2021-05-14');
INSERT INTO inventory.information VALUES (30, '86382b7c-b439-11eb-bc30-f85971830086', '22.16.050-101', 'Фланець 11с22п DN50х40', '2021-05-14');
INSERT INTO inventory.information VALUES (31, 'de5f4ca6-b43c-11eb-bc30-f85971830086', '23.01.050-001.030', 'Фланець 11с42п DN50х50 Штмп', '2021-05-14');
INSERT INTO inventory.information VALUES (32, 'ffdbacb2-b5db-11eb-b4f1-f85971830086', 'Квд-080х080-ст3ПС', 'Квд-ст3ПС-080х080', '2018-05-01');


--
-- TOC entry 4810 (class 0 OID 63179)
-- Dependencies: 321
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
INSERT INTO inventory.measurement VALUES (21, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (22, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (23, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (24, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (25, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (26, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (27, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (28, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (29, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (30, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (31, 'pcs', 1);
INSERT INTO inventory.measurement VALUES (32, 'kg', 1);


--
-- TOC entry 4811 (class 0 OID 63185)
-- Dependencies: 322
-- Data for Name: part; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.part VALUES ('23.01.050-001', 1, 'Фланець 11с42п DN50х50', '2021-05-14', 'PART', 'pcs', 2);
INSERT INTO inventory.part VALUES ('23.01.050-002', 1, 'Фланець 11с42п LH DN50х50', '2021-05-14', 'PART', 'pcs', 3);
INSERT INTO inventory.part VALUES ('53.01.004-001', 1, 'Штифт 4х12', '2021-05-14', 'PART', 'pcs', 4);
INSERT INTO inventory.part VALUES ('54.02.010-004', 1, 'Шпилька шестигранна 10х86', '2021-05-14', 'PART', 'pcs', 5);
INSERT INTO inventory.part VALUES ('54.02.016-001', 1, 'Шпилька шестигранна 16х86', '2021-05-14', 'PART', 'pcs', 6);
INSERT INTO inventory.part VALUES ('60.01.080-001', 1, 'Куля 80х60', '2021-05-14', 'PART', 'pcs', 7);
INSERT INTO inventory.part VALUES ('61.01.013-003', 1, 'Шток 13х66', '2021-05-14', 'PART', 'pcs', 8);
INSERT INTO inventory.part VALUES ('70.02.062-001', 1, 'Ущільнення кулі 50х50', '2021-05-14', 'PART', 'pcs', 9);
INSERT INTO inventory.part VALUES ('70.03.095-001', 1, 'Ущільнення корпуса 95', '2021-05-14', 'PART', 'pcs', 10);
INSERT INTO inventory.part VALUES ('70.04.017-001', 1, 'Ущільнення штока 17х14', '2021-05-14', 'PART', 'pcs', 11);
INSERT INTO inventory.part VALUES ('71.03.050-001', 1, 'Заглушка на фланець DN50', '2021-05-14', 'PART', 'pcs', 12);
INSERT INTO inventory.part VALUES ('72.01.014-001', 1, 'Гумове кільце D14', '2021-05-14', 'PART', 'pcs', 13);
INSERT INTO inventory.part VALUES ('54.01.010-003', 1, 'Шпилька кругла 10х100', '2021-05-14', 'PART', 'pcs', 18);
INSERT INTO inventory.part VALUES ('54.01.016-001', 1, 'Шпилька кругла 16х110', '2021-05-14', 'PART', 'pcs', 19);
INSERT INTO inventory.part VALUES ('54.01.016-002', 1, 'Шпилька кругла 16х133', '2021-05-14', 'PART', 'pcs', 26);
INSERT INTO inventory.part VALUES ('20.10.040-001', 1, 'Фланець ГОСТ12820 PN10 DN40', '2021-05-14', 'PART', 'pcs', 28);
INSERT INTO inventory.part VALUES ('20.10.050-001', 1, 'Фланець ГОСТ12820 PN10 DN50', '2021-05-14', 'PART', 'pcs', 29);
INSERT INTO inventory.part VALUES ('22.16.050-101', 1, 'Фланець 11с22п DN50х40', '2021-05-14', 'PART', 'pcs', 30);


--
-- TOC entry 4812 (class 0 OID 63194)
-- Dependencies: 323
-- Data for Name: primal; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.primal VALUES ('Квд-080х080-ст3ПС', 1, 'Квд-ст3ПС-080х080', '2018-05-01', 'PRIMAL', 'pcs', 32);


--
-- TOC entry 4813 (class 0 OID 63203)
-- Dependencies: 324
-- Data for Name: producible; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.producible VALUES ('11.42.050-001', 1, 'Кран 11с42п DN50х50', '2021-05-14', 'PRODUCIBLE', 'pcs', 1);
INSERT INTO inventory.producible VALUES ('23.01.050-001', 1, 'Фланець 11с42п DN50х50', '2021-05-14', 'PRODUCIBLE', 'pcs', 2);
INSERT INTO inventory.producible VALUES ('23.01.050-002', 1, 'Фланець 11с42п LH DN50х50', '2021-05-14', 'PRODUCIBLE', 'pcs', 3);
INSERT INTO inventory.producible VALUES ('53.01.004-001', 1, 'Штифт 4х12', '2021-05-14', 'PRODUCIBLE', 'pcs', 4);
INSERT INTO inventory.producible VALUES ('54.02.010-004', 1, 'Шпилька шестигранна 10х86', '2021-05-14', 'PRODUCIBLE', 'pcs', 5);
INSERT INTO inventory.producible VALUES ('54.02.016-001', 1, 'Шпилька шестигранна 16х86', '2021-05-14', 'PRODUCIBLE', 'pcs', 6);
INSERT INTO inventory.producible VALUES ('60.01.080-001', 1, 'Куля 80х60', '2021-05-14', 'PRODUCIBLE', 'pcs', 7);
INSERT INTO inventory.producible VALUES ('61.01.013-003', 1, 'Шток 13х66', '2021-05-14', 'PRODUCIBLE', 'pcs', 8);
INSERT INTO inventory.producible VALUES ('70.02.062-001', 1, 'Ущільнення кулі 50х50', '2021-05-14', 'PRODUCIBLE', 'pcs', 9);
INSERT INTO inventory.producible VALUES ('70.03.095-001', 1, 'Ущільнення корпуса 95', '2021-05-14', 'PRODUCIBLE', 'pcs', 10);
INSERT INTO inventory.producible VALUES ('70.04.017-001', 1, 'Ущільнення штока 17х14', '2021-05-14', 'PRODUCIBLE', 'pcs', 11);
INSERT INTO inventory.producible VALUES ('71.03.050-001', 1, 'Заглушка на фланець DN50', '2021-05-14', 'PRODUCIBLE', 'pcs', 12);
INSERT INTO inventory.producible VALUES ('72.01.014-001', 1, 'Гумове кільце D14', '2021-05-14', 'PRODUCIBLE', 'pcs', 13);
INSERT INTO inventory.producible VALUES ('80.40.095-001', 1, 'Корпус 95 з бобишкою', '2021-05-14', 'PRODUCIBLE', 'pcs', 14);
INSERT INTO inventory.producible VALUES ('82.31.050-002', 1, 'Ручка КТ31 DN50х40 сіра', '2021-05-14', 'PRODUCIBLE', 'pcs', 15);
INSERT INTO inventory.producible VALUES ('11.41.050-001', 1, 'Кран 11с41п DN50х50', '2021-05-14', 'PRODUCIBLE', 'pcs', 17);
INSERT INTO inventory.producible VALUES ('54.01.010-003', 1, 'Шпилька кругла 10х100', '2021-05-14', 'PRODUCIBLE', 'pcs', 18);
INSERT INTO inventory.producible VALUES ('54.01.016-001', 1, 'Шпилька кругла 16х110', '2021-05-14', 'PRODUCIBLE', 'pcs', 19);
INSERT INTO inventory.producible VALUES ('80.01.050-001', 1, 'Котушка 11с41п DN50х50', '2021-05-14', 'PRODUCIBLE', 'pcs', 20);
INSERT INTO inventory.producible VALUES ('11.64.050-001', 1, 'Кран 11с64п DN50х50', '2021-05-14', 'PRODUCIBLE', 'pcs', 25);
INSERT INTO inventory.producible VALUES ('54.01.016-002', 1, 'Шпилька кругла 16х133', '2021-05-14', 'PRODUCIBLE', 'pcs', 26);
INSERT INTO inventory.producible VALUES ('80.01.050-002', 1, 'Котушка 11с64п DN50х50', '2021-05-14', 'PRODUCIBLE', 'pcs', 27);
INSERT INTO inventory.producible VALUES ('20.10.040-001', 1, 'Фланець ГОСТ12820 PN10 DN40', '2021-05-14', 'PRODUCIBLE', 'pcs', 28);
INSERT INTO inventory.producible VALUES ('20.10.050-001', 1, 'Фланець ГОСТ12820 PN10 DN50', '2021-05-14', 'PRODUCIBLE', 'pcs', 29);
INSERT INTO inventory.producible VALUES ('22.16.050-101', 1, 'Фланець 11с22п DN50х40', '2021-05-14', 'PRODUCIBLE', 'pcs', 30);
INSERT INTO inventory.producible VALUES ('23.01.050-001.030', 1, 'Фланець 11с42п DN50х50 Штмп', '2021-05-14', 'PRODUCIBLE', 'pcs', 31);


--
-- TOC entry 4814 (class 0 OID 63212)
-- Dependencies: 325
-- Data for Name: salable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4815 (class 0 OID 63221)
-- Dependencies: 326
-- Data for Name: storable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.storable VALUES ('11.42.050-001', 1, 'Кран 11с42п DN50х50', '2021-05-14', 'STORABLE', 'pcs', 1);
INSERT INTO inventory.storable VALUES ('23.01.050-001', 1, 'Фланець 11с42п DN50х50', '2021-05-14', 'STORABLE', 'pcs', 2);
INSERT INTO inventory.storable VALUES ('23.01.050-002', 1, 'Фланець 11с42п LH DN50х50', '2021-05-14', 'STORABLE', 'pcs', 3);
INSERT INTO inventory.storable VALUES ('53.01.004-001', 1, 'Штифт 4х12', '2021-05-14', 'STORABLE', 'pcs', 4);
INSERT INTO inventory.storable VALUES ('54.02.010-004', 1, 'Шпилька шестигранна 10х86', '2021-05-14', 'STORABLE', 'pcs', 5);
INSERT INTO inventory.storable VALUES ('54.02.016-001', 1, 'Шпилька шестигранна 16х86', '2021-05-14', 'STORABLE', 'pcs', 6);
INSERT INTO inventory.storable VALUES ('60.01.080-001', 1, 'Куля 80х60', '2021-05-14', 'STORABLE', 'pcs', 7);
INSERT INTO inventory.storable VALUES ('61.01.013-003', 1, 'Шток 13х66', '2021-05-14', 'STORABLE', 'pcs', 8);
INSERT INTO inventory.storable VALUES ('70.02.062-001', 1, 'Ущільнення кулі 50х50', '2021-05-14', 'STORABLE', 'pcs', 9);
INSERT INTO inventory.storable VALUES ('70.03.095-001', 1, 'Ущільнення корпуса 95', '2021-05-14', 'STORABLE', 'pcs', 10);
INSERT INTO inventory.storable VALUES ('70.04.017-001', 1, 'Ущільнення штока 17х14', '2021-05-14', 'STORABLE', 'pcs', 11);
INSERT INTO inventory.storable VALUES ('71.03.050-001', 1, 'Заглушка на фланець DN50', '2021-05-14', 'STORABLE', 'pcs', 12);
INSERT INTO inventory.storable VALUES ('72.01.014-001', 1, 'Гумове кільце D14', '2021-05-14', 'STORABLE', 'pcs', 13);
INSERT INTO inventory.storable VALUES ('80.40.095-001', 1, 'Корпус 95 з бобишкою', '2021-05-14', 'STORABLE', 'pcs', 14);
INSERT INTO inventory.storable VALUES ('82.31.050-002', 1, 'Ручка КТ31 DN50х40 сіра', '2021-05-14', 'STORABLE', 'pcs', 15);
INSERT INTO inventory.storable VALUES ('гайка м12-оц', 1, 'Гайка М12 ГОСТ5916 ОЦ', '2021-05-14', 'STORABLE', 'pcs', 16);
INSERT INTO inventory.storable VALUES ('11.41.050-001', 1, 'Кран 11с41п DN50х50', '2021-05-14', 'STORABLE', 'pcs', 17);
INSERT INTO inventory.storable VALUES ('54.01.010-003', 1, 'Шпилька кругла 10х100', '2021-05-14', 'STORABLE', 'pcs', 18);
INSERT INTO inventory.storable VALUES ('54.01.016-001', 1, 'Шпилька кругла 16х110', '2021-05-14', 'STORABLE', 'pcs', 19);
INSERT INTO inventory.storable VALUES ('80.01.050-001', 1, 'Котушка 11с41п DN50х50', '2021-05-14', 'STORABLE', 'pcs', 20);
INSERT INTO inventory.storable VALUES ('гайка м10', 1, 'Гайка М10 ГОСТ15521', '2021-05-14', 'STORABLE', 'pcs', 21);
INSERT INTO inventory.storable VALUES ('гайка м16', 1, 'Гайка М16 ГОСТ15521', '2021-05-14', 'STORABLE', 'pcs', 22);
INSERT INTO inventory.storable VALUES ('шайба гроверна 10', 1, 'Шайба гроверна 10 ГОСТ6402', '2021-05-14', 'STORABLE', 'pcs', 23);
INSERT INTO inventory.storable VALUES ('шайба гроверна 16', 1, 'Шайба гроверна 16 ГОСТ6402', '2021-05-14', 'STORABLE', 'pcs', 24);
INSERT INTO inventory.storable VALUES ('11.64.050-001', 1, 'Кран 11с64п DN50х50', '2021-05-14', 'STORABLE', 'pcs', 25);
INSERT INTO inventory.storable VALUES ('54.01.016-002', 1, 'Шпилька кругла 16х133', '2021-05-14', 'STORABLE', 'pcs', 26);
INSERT INTO inventory.storable VALUES ('80.01.050-002', 1, 'Котушка 11с64п DN50х50', '2021-05-14', 'STORABLE', 'pcs', 27);
INSERT INTO inventory.storable VALUES ('20.10.040-001', 1, 'Фланець ГОСТ12820 PN10 DN40', '2021-05-14', 'STORABLE', 'pcs', 28);
INSERT INTO inventory.storable VALUES ('20.10.050-001', 1, 'Фланець ГОСТ12820 PN10 DN50', '2021-05-14', 'STORABLE', 'pcs', 29);
INSERT INTO inventory.storable VALUES ('22.16.050-101', 1, 'Фланець 11с22п DN50х40', '2021-05-14', 'STORABLE', 'pcs', 30);
INSERT INTO inventory.storable VALUES ('23.01.050-001.030', 1, 'Фланець 11с42п DN50х50 Штмп', '2021-05-14', 'STORABLE', 'pcs', 31);
INSERT INTO inventory.storable VALUES ('Квд-080х080-ст3ПС', 1, 'Квд-ст3ПС-080х080', '2018-05-01', 'STORABLE', 'pcs', 32);


--
-- TOC entry 4816 (class 0 OID 63230)
-- Dependencies: 327
-- Data for Name: variety; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4817 (class 0 OID 63233)
-- Dependencies: 328
-- Data for Name: body; Type: TABLE DATA; Schema: issue; Owner: postgres
--



--
-- TOC entry 4818 (class 0 OID 63239)
-- Dependencies: 329
-- Data for Name: head; Type: TABLE DATA; Schema: issue; Owner: postgres
--



--
-- TOC entry 4820 (class 0 OID 63253)
-- Dependencies: 331
-- Data for Name: numerator; Type: TABLE DATA; Schema: issue; Owner: postgres
--



--
-- TOC entry 4822 (class 0 OID 63267)
-- Dependencies: 333
-- Data for Name: consumable; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 4823 (class 0 OID 63275)
-- Dependencies: 334
-- Data for Name: definition; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 4825 (class 0 OID 63288)
-- Dependencies: 336
-- Data for Name: information; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 4821 (class 0 OID 63260)
-- Dependencies: 332
-- Data for Name: material; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 4827 (class 0 OID 63298)
-- Dependencies: 338
-- Data for Name: primal; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 4828 (class 0 OID 63306)
-- Dependencies: 339
-- Data for Name: information; Type: TABLE DATA; Schema: operation; Owner: postgres
--

INSERT INTO operation.information VALUES (1, '6dd302fe-b5d9-11eb-b4f1-f85971830086', 'OPR-001', 1, 'Operation #001', '2018-01-01', 'OPERATION');
INSERT INTO operation.information VALUES (2, 'b1f2746c-b5dc-11eb-b4f1-f85971830086', 'OPR-002', 1, 'Operation #002', '2018-01-01', 'OPERATION');


--
-- TOC entry 4830 (class 0 OID 63320)
-- Dependencies: 342
-- Data for Name: information; Type: TABLE DATA; Schema: personnel; Owner: postgres
--



--
-- TOC entry 4833 (class 0 OID 63342)
-- Dependencies: 346
-- Data for Name: consumable; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO process.consumable VALUES (8, '23.01.050-001.030', 1, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO process.consumable VALUES (9, '23.01.050-001.030', 1, 1.0000, 'pcs', 'CONSUMABLE', 1);


--
-- TOC entry 4834 (class 0 OID 63350)
-- Dependencies: 347
-- Data for Name: definition; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO process.definition VALUES (8, '27d3e1a2-b5dd-11eb-b4f1-f85971830086', '2021-01-01', NULL, NULL, 'PROPOSED', '2021-05-16 03:25:02.551792+03', 4);
INSERT INTO process.definition VALUES (9, '27d40b50-b5dd-11eb-b4f1-f85971830086', '2021-01-01', NULL, NULL, 'PROPOSED', '2021-05-16 03:25:02.551792+03', 4);
INSERT INTO process.definition VALUES (10, '3b503500-b5dd-11eb-b4f1-f85971830086', '2021-01-01', NULL, NULL, 'PROPOSED', '2021-05-16 03:25:35.24391+03', 5);


--
-- TOC entry 4836 (class 0 OID 63359)
-- Dependencies: 349
-- Data for Name: dependency; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4837 (class 0 OID 63362)
-- Dependencies: 350
-- Data for Name: equipment; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4838 (class 0 OID 63368)
-- Dependencies: 351
-- Data for Name: facility; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4839 (class 0 OID 63374)
-- Dependencies: 352
-- Data for Name: information; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO process.information VALUES (4, '27d3cb04-b5dd-11eb-b4f1-f85971830086', 'Фланець 11с42п DN50х50', '23.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE');
INSERT INTO process.information VALUES (5, '3b502d62-b5dd-11eb-b4f1-f85971830086', 'Фланець 11с42п DN50х50 Штмп', '23.01.050-001.030', 1, 1.0000, 'pcs', 'PRODUCIBLE');


--
-- TOC entry 4832 (class 0 OID 63334)
-- Dependencies: 345
-- Data for Name: material; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4842 (class 0 OID 63397)
-- Dependencies: 356
-- Data for Name: personnel; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4843 (class 0 OID 63407)
-- Dependencies: 357
-- Data for Name: primal; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO process.primal VALUES (10, 'Квд-080х080-ст3ПС', 1, 3.2000, 'kg', 'PRIMAL', 1);


--
-- TOC entry 4841 (class 0 OID 63387)
-- Dependencies: 354
-- Data for Name: segment; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO process.segment VALUES (8, 8, 'OPR-001', '66fe01b6-062d-4e5f-bdfa-f1f5ba4772aa');
INSERT INTO process.segment VALUES (9, 9, 'OPR-001', 'cbc62d50-77de-4b5d-bcff-f3c8924a542d');
INSERT INTO process.segment VALUES (10, 10, 'OPR-001', '6e18b59f-4e7b-4984-954f-84f8945eba4c');
INSERT INTO process.segment VALUES (11, 10, 'OPR-002', '5c6ba26b-8ccf-4959-8d9d-ca7bb02e4b47');


--
-- TOC entry 4845 (class 0 OID 63417)
-- Dependencies: 359
-- Data for Name: tooling; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4846 (class 0 OID 63423)
-- Dependencies: 360
-- Data for Name: blueprint; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4848 (class 0 OID 63436)
-- Dependencies: 362
-- Data for Name: definition; Type: TABLE DATA; Schema: product; Owner: postgres
--

INSERT INTO product.definition VALUES (3, 'be8cf4fa-b43c-11eb-bc30-f85971830086', '2014-12-22', NULL, NULL, 'COMMITTED', '2021-05-14 01:44:15.286708+03', 3);
INSERT INTO product.definition VALUES (4, 'be8d1d86-b43c-11eb-bc30-f85971830086', '2013-07-29', NULL, NULL, 'COMMITTED', '2021-05-14 01:44:15.286708+03', 4);
INSERT INTO product.definition VALUES (5, '96194c34-b43d-11eb-bc30-f85971830086', '2013-07-29', NULL, NULL, 'COMMITTED', '2021-05-14 01:50:16.917196+03', 5);


--
-- TOC entry 4850 (class 0 OID 63445)
-- Dependencies: 364
-- Data for Name: dependency; Type: TABLE DATA; Schema: product; Owner: postgres
--

INSERT INTO product.dependency VALUES ('ea3f6f7a-b43b-11eb-bc30-f85971830086', 'ffa826ae-b43b-11eb-bc30-f85971830086');
INSERT INTO product.dependency VALUES ('cf69640e-b43a-11eb-bc30-f85971830086', '119c6c22-b43b-11eb-bc30-f85971830086');


--
-- TOC entry 4851 (class 0 OID 63448)
-- Dependencies: 365
-- Data for Name: information; Type: TABLE DATA; Schema: product; Owner: postgres
--

INSERT INTO product.information VALUES (3, 'be8ce564-b43c-11eb-bc30-f85971830086', 'Фланець 11с42п DN50х50', '23.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE');
INSERT INTO product.information VALUES (4, 'be8d18ae-b43c-11eb-bc30-f85971830086', 'Фланець 11с42п LH DN50х50', '23.01.050-002', 1, 1.0000, 'pcs', 'PRODUCIBLE');
INSERT INTO product.information VALUES (5, '9619455e-b43d-11eb-bc30-f85971830086', 'Фланець 11с22п DN50х40', '22.16.050-101', 1, 1.0000, 'pcs', 'PRODUCIBLE');


--
-- TOC entry 4853 (class 0 OID 63465)
-- Dependencies: 368
-- Data for Name: segment; Type: TABLE DATA; Schema: product; Owner: postgres
--

INSERT INTO product.segment VALUES (1, 'ea3f6f7a-b43b-11eb-bc30-f85971830086', 3, '23.01.050-001', 1, 'Фланець 11с42п DN50х50', 1.0000, 'pcs', 'PRODUCIBLE');
INSERT INTO product.segment VALUES (2, 'ffa826ae-b43b-11eb-bc30-f85971830086', 3, '23.01.050-001.030', 1, 'Фланець 11с42п DN50х50 Штмп', 1.0000, 'pcs', 'PRODUCIBLE');
INSERT INTO product.segment VALUES (3, 'cf69640e-b43a-11eb-bc30-f85971830086', 4, '23.01.050-002', 1, 'Фланець 11с42п LH DN50х50', 1.0000, 'pcs', 'PRODUCIBLE');
INSERT INTO product.segment VALUES (4, '119c6c22-b43b-11eb-bc30-f85971830086', 4, '23.01.050-001.030', 1, 'Фланець 11с42п DN50х50 Штмп', 1.0000, 'pcs', 'PRODUCIBLE');


--
-- TOC entry 4855 (class 0 OID 63478)
-- Dependencies: 370
-- Data for Name: tree; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4856 (class 0 OID 63481)
-- Dependencies: 371
-- Data for Name: body; Type: TABLE DATA; Schema: receipt; Owner: postgres
--



--
-- TOC entry 4857 (class 0 OID 63488)
-- Dependencies: 372
-- Data for Name: head; Type: TABLE DATA; Schema: receipt; Owner: postgres
--



--
-- TOC entry 4859 (class 0 OID 63501)
-- Dependencies: 374
-- Data for Name: numerator; Type: TABLE DATA; Schema: receipt; Owner: postgres
--



--
-- TOC entry 4860 (class 0 OID 63508)
-- Dependencies: 375
-- Data for Name: body; Type: TABLE DATA; Schema: request; Owner: postgres
--



--
-- TOC entry 4861 (class 0 OID 63514)
-- Dependencies: 376
-- Data for Name: head; Type: TABLE DATA; Schema: request; Owner: postgres
--



--
-- TOC entry 4863 (class 0 OID 63527)
-- Dependencies: 378
-- Data for Name: numerator; Type: TABLE DATA; Schema: request; Owner: postgres
--



--
-- TOC entry 4864 (class 0 OID 63534)
-- Dependencies: 379
-- Data for Name: body; Type: TABLE DATA; Schema: response; Owner: postgres
--



--
-- TOC entry 4865 (class 0 OID 63540)
-- Dependencies: 380
-- Data for Name: head; Type: TABLE DATA; Schema: response; Owner: postgres
--

INSERT INTO response.head VALUES (1, '8f8ca0b6-b503-11eb-a9ee-f85971830086', NULL, '2021-01-01', NULL, 'f-01', NULL, NULL, 'PROPOSED', '2021-05-15 01:27:26.281314+03');


--
-- TOC entry 4867 (class 0 OID 63552)
-- Dependencies: 382
-- Data for Name: numerator; Type: TABLE DATA; Schema: response; Owner: postgres
--



--
-- TOC entry 4868 (class 0 OID 63559)
-- Dependencies: 383
-- Data for Name: calendar; Type: TABLE DATA; Schema: schedule; Owner: postgres
--



--
-- TOC entry 4869 (class 0 OID 63566)
-- Dependencies: 384
-- Data for Name: head; Type: TABLE DATA; Schema: stockcard; Owner: postgres
--



--
-- TOC entry 4870 (class 0 OID 63573)
-- Dependencies: 385
-- Data for Name: body; Type: TABLE DATA; Schema: stocktake; Owner: postgres
--



--
-- TOC entry 4871 (class 0 OID 63579)
-- Dependencies: 386
-- Data for Name: head; Type: TABLE DATA; Schema: stocktake; Owner: postgres
--



--
-- TOC entry 4873 (class 0 OID 63591)
-- Dependencies: 388
-- Data for Name: numerator; Type: TABLE DATA; Schema: stocktake; Owner: postgres
--



--
-- TOC entry 4874 (class 0 OID 63614)
-- Dependencies: 392
-- Data for Name: information; Type: TABLE DATA; Schema: tooling; Owner: postgres
--



--
-- TOC entry 4876 (class 0 OID 63628)
-- Dependencies: 395
-- Data for Name: assignment; Type: TABLE DATA; Schema: uom; Owner: postgres
--



--
-- TOC entry 4877 (class 0 OID 63631)
-- Dependencies: 396
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
-- TOC entry 4879 (class 0 OID 63639)
-- Dependencies: 398
-- Data for Name: body; Type: TABLE DATA; Schema: work; Owner: postgres
--

INSERT INTO work.body VALUES (1, '6e18b59f-4e7b-4984-954f-84f8945eba4c', 1000.0000);
INSERT INTO work.body VALUES (1, '5c6ba26b-8ccf-4959-8d9d-ca7bb02e4b47', 1000.0000);


--
-- TOC entry 4880 (class 0 OID 63645)
-- Dependencies: 399
-- Data for Name: head; Type: TABLE DATA; Schema: work; Owner: postgres
--

INSERT INTO work.head VALUES (1, '67a0de06-b70f-11eb-8a8a-f85971830086', 'W-01', '2021-01-01', NULL, 'AREA-01', NULL, NULL, 'PROPOSED', '2021-05-17 15:57:15.589715+03');


--
-- TOC entry 4882 (class 0 OID 63657)
-- Dependencies: 401
-- Data for Name: numerator; Type: TABLE DATA; Schema: work; Owner: postgres
--



--
-- TOC entry 5008 (class 0 OID 0)
-- Dependencies: 402
-- Name: head_id_seq; Type: SEQUENCE SET; Schema: claim; Owner: postgres
--

SELECT pg_catalog.setval('claim.head_id_seq', 1, false);


--
-- TOC entry 5009 (class 0 OID 0)
-- Dependencies: 290
-- Name: exception_code_id_seq; Type: SEQUENCE SET; Schema: common; Owner: postgres
--

SELECT pg_catalog.setval('common.exception_code_id_seq', 1, false);


--
-- TOC entry 5010 (class 0 OID 0)
-- Dependencies: 297
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: ebom; Owner: postgres
--

SELECT pg_catalog.setval('ebom.definition_id_seq', 15, true);


--
-- TOC entry 5011 (class 0 OID 0)
-- Dependencies: 299
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: ebom; Owner: postgres
--

SELECT pg_catalog.setval('ebom.information_id_seq', 12, true);


--
-- TOC entry 5012 (class 0 OID 0)
-- Dependencies: 303
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: equipment; Owner: postgres
--

SELECT pg_catalog.setval('equipment.information_id_seq', 1, false);


--
-- TOC entry 5013 (class 0 OID 0)
-- Dependencies: 308
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: facility; Owner: postgres
--

SELECT pg_catalog.setval('facility.information_id_seq', 9, true);


--
-- TOC entry 5014 (class 0 OID 0)
-- Dependencies: 318
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.definition_id_seq', 32, true);


--
-- TOC entry 5015 (class 0 OID 0)
-- Dependencies: 320
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.information_id_seq', 32, true);


--
-- TOC entry 5016 (class 0 OID 0)
-- Dependencies: 330
-- Name: head_id_seq; Type: SEQUENCE SET; Schema: issue; Owner: postgres
--

SELECT pg_catalog.setval('issue.head_id_seq', 1, false);


--
-- TOC entry 5017 (class 0 OID 0)
-- Dependencies: 335
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: mbom; Owner: postgres
--

SELECT pg_catalog.setval('mbom.definition_id_seq', 1, false);


--
-- TOC entry 5018 (class 0 OID 0)
-- Dependencies: 337
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: mbom; Owner: postgres
--

SELECT pg_catalog.setval('mbom.information_id_seq', 1, false);


--
-- TOC entry 5019 (class 0 OID 0)
-- Dependencies: 340
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('operation.information_id_seq', 2, true);


--
-- TOC entry 5020 (class 0 OID 0)
-- Dependencies: 343
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: personnel; Owner: postgres
--

SELECT pg_catalog.setval('personnel.information_id_seq', 1, false);


--
-- TOC entry 5021 (class 0 OID 0)
-- Dependencies: 348
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('process.definition_id_seq', 10, true);


--
-- TOC entry 5022 (class 0 OID 0)
-- Dependencies: 353
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('process.information_id_seq', 5, true);


--
-- TOC entry 5023 (class 0 OID 0)
-- Dependencies: 358
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('process.segment_id_seq', 11, true);


--
-- TOC entry 5024 (class 0 OID 0)
-- Dependencies: 361
-- Name: blueprint_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('product.blueprint_id_seq', 12, true);


--
-- TOC entry 5025 (class 0 OID 0)
-- Dependencies: 363
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('product.definition_id_seq', 5, true);


--
-- TOC entry 5026 (class 0 OID 0)
-- Dependencies: 366
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('product.information_id_seq', 5, true);


--
-- TOC entry 5027 (class 0 OID 0)
-- Dependencies: 369
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('product.segment_id_seq', 6, true);


--
-- TOC entry 5028 (class 0 OID 0)
-- Dependencies: 373
-- Name: head_id_seq; Type: SEQUENCE SET; Schema: receipt; Owner: postgres
--

SELECT pg_catalog.setval('receipt.head_id_seq', 1, false);


--
-- TOC entry 5029 (class 0 OID 0)
-- Dependencies: 377
-- Name: head_id_seq; Type: SEQUENCE SET; Schema: request; Owner: postgres
--

SELECT pg_catalog.setval('request.head_id_seq', 1, false);


--
-- TOC entry 5030 (class 0 OID 0)
-- Dependencies: 381
-- Name: head_id_seq; Type: SEQUENCE SET; Schema: response; Owner: postgres
--

SELECT pg_catalog.setval('response.head_id_seq', 1, true);


--
-- TOC entry 5031 (class 0 OID 0)
-- Dependencies: 387
-- Name: head_id_seq; Type: SEQUENCE SET; Schema: stocktake; Owner: postgres
--

SELECT pg_catalog.setval('stocktake.head_id_seq', 1, false);


--
-- TOC entry 5032 (class 0 OID 0)
-- Dependencies: 393
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: tooling; Owner: postgres
--

SELECT pg_catalog.setval('tooling.information_id_seq', 1, false);


--
-- TOC entry 5033 (class 0 OID 0)
-- Dependencies: 397
-- Name: uom_role_uom_role_id_seq; Type: SEQUENCE SET; Schema: uom; Owner: postgres
--

SELECT pg_catalog.setval('uom.uom_role_uom_role_id_seq', 1, false);


--
-- TOC entry 5034 (class 0 OID 0)
-- Dependencies: 400
-- Name: head_id_seq; Type: SEQUENCE SET; Schema: work; Owner: postgres
--

SELECT pg_catalog.setval('work.head_id_seq', 1, true);


--
-- TOC entry 4282 (class 2606 OID 63738)
-- Name: process process_pkey; Type: CONSTRAINT; Schema: balance; Owner: postgres
--

ALTER TABLE ONLY balance.process
    ADD CONSTRAINT process_pkey PRIMARY KEY (facility_code, process_gid);


--
-- TOC entry 4284 (class 2606 OID 63740)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: balance; Owner: postgres
--

ALTER TABLE ONLY balance.segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (facility_code, segment_gid);


--
-- TOC entry 4541 (class 2606 OID 64513)
-- Name: stock stock_pkey; Type: CONSTRAINT; Schema: balance; Owner: postgres
--

ALTER TABLE ONLY balance.stock
    ADD CONSTRAINT stock_pkey PRIMARY KEY (facility_code, part_code);


--
-- TOC entry 4286 (class 2606 OID 63760)
-- Name: ebom_to_mbom ebom_to_mbom_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.ebom_to_mbom
    ADD CONSTRAINT ebom_to_mbom_pkey PRIMARY KEY (ebom_id, mbom_id);


--
-- TOC entry 4288 (class 2606 OID 63762)
-- Name: ebom_to_process ebom_to_process_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.ebom_to_process
    ADD CONSTRAINT ebom_to_process_pkey PRIMARY KEY (ebom_id, process_id);


--
-- TOC entry 4290 (class 2606 OID 63764)
-- Name: ebom_to_product ebom_to_product_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.ebom_to_product
    ADD CONSTRAINT ebom_to_product_pkey PRIMARY KEY (ebom_id, product_id);


--
-- TOC entry 4292 (class 2606 OID 63766)
-- Name: mbom_to_process mbom_to_process_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.mbom_to_process
    ADD CONSTRAINT mbom_to_process_pkey PRIMARY KEY (mbom_id, process_id);


--
-- TOC entry 4294 (class 2606 OID 63768)
-- Name: mbom_to_product mbom_to_product_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.mbom_to_product
    ADD CONSTRAINT mbom_to_product_pkey PRIMARY KEY (mbom_id, product_id);


--
-- TOC entry 4296 (class 2606 OID 63770)
-- Name: benchmark benchmark_pkey; Type: CONSTRAINT; Schema: calendar; Owner: postgres
--

ALTER TABLE ONLY calendar.benchmark
    ADD CONSTRAINT benchmark_pkey PRIMARY KEY (start_date);


--
-- TOC entry 4298 (class 2606 OID 63772)
-- Name: checkpoint checkpoint_pkey; Type: CONSTRAINT; Schema: calendar; Owner: postgres
--

ALTER TABLE ONLY calendar.checkpoint
    ADD CONSTRAINT checkpoint_pkey PRIMARY KEY (start_date);


--
-- TOC entry 4300 (class 2606 OID 63774)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: calendar; Owner: postgres
--

ALTER TABLE ONLY calendar.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (calendar_date, facility_code);


--
-- TOC entry 4302 (class 2606 OID 63776)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: calendar; Owner: postgres
--

ALTER TABLE ONLY calendar.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (calendar_date);


--
-- TOC entry 4304 (class 2606 OID 63778)
-- Name: workday workday_pkey; Type: CONSTRAINT; Schema: calendar; Owner: postgres
--

ALTER TABLE ONLY calendar.workday
    ADD CONSTRAINT workday_pkey PRIMARY KEY (facility_code);


--
-- TOC entry 4306 (class 2606 OID 63780)
-- Name: workweek workweek_pkey; Type: CONSTRAINT; Schema: calendar; Owner: postgres
--

ALTER TABLE ONLY calendar.workweek
    ADD CONSTRAINT workweek_pkey PRIMARY KEY (facility_code);


--
-- TOC entry 4539 (class 2606 OID 64469)
-- Name: body body_pkey; Type: CONSTRAINT; Schema: claim; Owner: postgres
--

ALTER TABLE ONLY claim.body
    ADD CONSTRAINT body_pkey PRIMARY KEY (head_id, part_code);


--
-- TOC entry 4535 (class 2606 OID 64459)
-- Name: head head_gid_key; Type: CONSTRAINT; Schema: claim; Owner: postgres
--

ALTER TABLE ONLY claim.head
    ADD CONSTRAINT head_gid_key UNIQUE (gid);


--
-- TOC entry 4537 (class 2606 OID 64457)
-- Name: head head_pkey; Type: CONSTRAINT; Schema: claim; Owner: postgres
--

ALTER TABLE ONLY claim.head
    ADD CONSTRAINT head_pkey PRIMARY KEY (id);


--
-- TOC entry 4308 (class 2606 OID 63788)
-- Name: numerator numerator_pkey; Type: CONSTRAINT; Schema: claim; Owner: postgres
--

ALTER TABLE ONLY claim.numerator
    ADD CONSTRAINT numerator_pkey PRIMARY KEY (facility_code, julianized_week);


--
-- TOC entry 4310 (class 2606 OID 63792)
-- Name: document_abbrevation document_abbrevation_pkey; Type: CONSTRAINT; Schema: common; Owner: postgres
--

ALTER TABLE ONLY common.document_abbrevation
    ADD CONSTRAINT document_abbrevation_pkey PRIMARY KEY (doctype);


--
-- TOC entry 4312 (class 2606 OID 63794)
-- Name: exception_code exception_code_condition_name_key; Type: CONSTRAINT; Schema: common; Owner: postgres
--

ALTER TABLE ONLY common.exception_code
    ADD CONSTRAINT exception_code_condition_name_key UNIQUE (condition_name);


--
-- TOC entry 4314 (class 2606 OID 63796)
-- Name: exception_code exception_code_errcode_key; Type: CONSTRAINT; Schema: common; Owner: postgres
--

ALTER TABLE ONLY common.exception_code
    ADD CONSTRAINT exception_code_errcode_key UNIQUE (errcode);


--
-- TOC entry 4316 (class 2606 OID 63798)
-- Name: exception_code exception_code_pkey; Type: CONSTRAINT; Schema: common; Owner: postgres
--

ALTER TABLE ONLY common.exception_code
    ADD CONSTRAINT exception_code_pkey PRIMARY KEY (id);


--
-- TOC entry 4318 (class 2606 OID 63800)
-- Name: stocktake_policy stocktake_policy_pkey; Type: CONSTRAINT; Schema: common; Owner: postgres
--

ALTER TABLE ONLY common.stocktake_policy
    ADD CONSTRAINT stocktake_policy_pkey PRIMARY KEY (document_kind_name);


--
-- TOC entry 4322 (class 2606 OID 63810)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4324 (class 2606 OID 63812)
-- Name: blueprint blueprint_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.blueprint
    ADD CONSTRAINT blueprint_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4326 (class 2606 OID 63814)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4320 (class 2606 OID 63816)
-- Name: component component_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.component
    ADD CONSTRAINT component_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4328 (class 2606 OID 63818)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 4330 (class 2606 OID 63820)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 4332 (class 2606 OID 63822)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4334 (class 2606 OID 63824)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 4336 (class 2606 OID 63826)
-- Name: information information_part_code_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information
    ADD CONSTRAINT information_part_code_key UNIQUE (part_code);


--
-- TOC entry 4338 (class 2606 OID 63828)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4340 (class 2606 OID 63830)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.part
    ADD CONSTRAINT part_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4342 (class 2606 OID 63832)
-- Name: information information_equipment_code_version_num_key; Type: CONSTRAINT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY equipment.information
    ADD CONSTRAINT information_equipment_code_version_num_key UNIQUE (equipment_code, version_num);


--
-- TOC entry 4344 (class 2606 OID 63834)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY equipment.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 4346 (class 2606 OID 63836)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY equipment.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4350 (class 2606 OID 63838)
-- Name: area area_facility_code_key; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area
    ADD CONSTRAINT area_facility_code_key UNIQUE (facility_code);


--
-- TOC entry 4352 (class 2606 OID 63840)
-- Name: area area_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area
    ADD CONSTRAINT area_pkey PRIMARY KEY (id);


--
-- TOC entry 4354 (class 2606 OID 63842)
-- Name: enterprise enterprise_facility_code_key; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.enterprise
    ADD CONSTRAINT enterprise_facility_code_key UNIQUE (facility_code);


--
-- TOC entry 4356 (class 2606 OID 63844)
-- Name: enterprise enterprise_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.enterprise
    ADD CONSTRAINT enterprise_pkey PRIMARY KEY (id);


--
-- TOC entry 4348 (class 2606 OID 63846)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4358 (class 2606 OID 63848)
-- Name: line line_facility_code_key; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line
    ADD CONSTRAINT line_facility_code_key UNIQUE (facility_code);


--
-- TOC entry 4360 (class 2606 OID 63850)
-- Name: line line_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line
    ADD CONSTRAINT line_pkey PRIMARY KEY (id);


--
-- TOC entry 4362 (class 2606 OID 63852)
-- Name: site site_facility_code_key; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site
    ADD CONSTRAINT site_facility_code_key UNIQUE (facility_code);


--
-- TOC entry 4364 (class 2606 OID 63854)
-- Name: site site_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site
    ADD CONSTRAINT site_pkey PRIMARY KEY (id);


--
-- TOC entry 4366 (class 2606 OID 63856)
-- Name: zone zone_facility_code_key; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone
    ADD CONSTRAINT zone_facility_code_key UNIQUE (facility_code);


--
-- TOC entry 4368 (class 2606 OID 63858)
-- Name: zone zone_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone
    ADD CONSTRAINT zone_pkey PRIMARY KEY (id);


--
-- TOC entry 4372 (class 2606 OID 63860)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4374 (class 2606 OID 63862)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4370 (class 2606 OID 63864)
-- Name: conglomeration conglomeration_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.conglomeration
    ADD CONSTRAINT conglomeration_pkey PRIMARY KEY (part_code, version_num, inventory_type);


--
-- TOC entry 4376 (class 2606 OID 63866)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4378 (class 2606 OID 63868)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 4380 (class 2606 OID 63870)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 4382 (class 2606 OID 63872)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4384 (class 2606 OID 63874)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 4386 (class 2606 OID 63876)
-- Name: information information_part_code; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.information
    ADD CONSTRAINT information_part_code UNIQUE (part_code);


--
-- TOC entry 4388 (class 2606 OID 63878)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4402 (class 2606 OID 63880)
-- Name: variety kind_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.variety
    ADD CONSTRAINT kind_pkey PRIMARY KEY (definition_id, inventory_type);


--
-- TOC entry 4390 (class 2606 OID 63882)
-- Name: measurement measurement_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.measurement
    ADD CONSTRAINT measurement_pkey PRIMARY KEY (definition_id, uom_code);


--
-- TOC entry 4392 (class 2606 OID 63884)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.part
    ADD CONSTRAINT part_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4394 (class 2606 OID 63886)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4396 (class 2606 OID 63888)
-- Name: producible producible_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.producible
    ADD CONSTRAINT producible_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4398 (class 2606 OID 63890)
-- Name: salable salable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.salable
    ADD CONSTRAINT salable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4400 (class 2606 OID 63892)
-- Name: storable storable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.storable
    ADD CONSTRAINT storable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4404 (class 2606 OID 63894)
-- Name: body body_pkey; Type: CONSTRAINT; Schema: issue; Owner: postgres
--

ALTER TABLE ONLY issue.body
    ADD CONSTRAINT body_pkey PRIMARY KEY (head_id, part_code);


--
-- TOC entry 4406 (class 2606 OID 63896)
-- Name: head head_gid_key; Type: CONSTRAINT; Schema: issue; Owner: postgres
--

ALTER TABLE ONLY issue.head
    ADD CONSTRAINT head_gid_key UNIQUE (gid);


--
-- TOC entry 4408 (class 2606 OID 63898)
-- Name: head head_pkey; Type: CONSTRAINT; Schema: issue; Owner: postgres
--

ALTER TABLE ONLY issue.head
    ADD CONSTRAINT head_pkey PRIMARY KEY (id);


--
-- TOC entry 4410 (class 2606 OID 63900)
-- Name: numerator numerator_pkey; Type: CONSTRAINT; Schema: issue; Owner: postgres
--

ALTER TABLE ONLY issue.numerator
    ADD CONSTRAINT numerator_pkey PRIMARY KEY (facility_code, julianized_week);


--
-- TOC entry 4414 (class 2606 OID 63902)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4416 (class 2606 OID 63904)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 4418 (class 2606 OID 63906)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 4420 (class 2606 OID 63908)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4422 (class 2606 OID 63910)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4412 (class 2606 OID 63912)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4424 (class 2606 OID 63914)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4426 (class 2606 OID 63916)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 4428 (class 2606 OID 63918)
-- Name: information information_operation_code_version_num_key; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.information
    ADD CONSTRAINT information_operation_code_version_num_key UNIQUE (operation_code, version_num);


--
-- TOC entry 4430 (class 2606 OID 63920)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4432 (class 2606 OID 63922)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY personnel.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 4434 (class 2606 OID 63924)
-- Name: information information_personnel_code_version_num_key; Type: CONSTRAINT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY personnel.information
    ADD CONSTRAINT information_personnel_code_version_num_key UNIQUE (personnel_code, version_num);


--
-- TOC entry 4436 (class 2606 OID 63926)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY personnel.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4440 (class 2606 OID 63928)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4442 (class 2606 OID 63930)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4444 (class 2606 OID 63932)
-- Name: dependency dependency_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.dependency
    ADD CONSTRAINT dependency_pkey PRIMARY KEY (ancestor, descendant);


--
-- TOC entry 4446 (class 2606 OID 63934)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, equipment_code);


--
-- TOC entry 4448 (class 2606 OID 63936)
-- Name: facility facility_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.facility
    ADD CONSTRAINT facility_pkey PRIMARY KEY (segment_id, facility_code);


--
-- TOC entry 4450 (class 2606 OID 63938)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4438 (class 2606 OID 63940)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4456 (class 2606 OID 63942)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, personnel_code);


--
-- TOC entry 4458 (class 2606 OID 63944)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4452 (class 2606 OID 63946)
-- Name: segment segment_gid_key; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.segment
    ADD CONSTRAINT segment_gid_key UNIQUE (gid);


--
-- TOC entry 4454 (class 2606 OID 63948)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 4460 (class 2606 OID 63950)
-- Name: tooling tooling_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.tooling
    ADD CONSTRAINT tooling_pkey PRIMARY KEY (segment_id, tooling_code);


--
-- TOC entry 4462 (class 2606 OID 63952)
-- Name: blueprint blueprint_gid_key; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.blueprint
    ADD CONSTRAINT blueprint_gid_key UNIQUE (gid);


--
-- TOC entry 4464 (class 2606 OID 63954)
-- Name: blueprint blueprint_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.blueprint
    ADD CONSTRAINT blueprint_pkey PRIMARY KEY (id);


--
-- TOC entry 4466 (class 2606 OID 63956)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4468 (class 2606 OID 63958)
-- Name: dependency dependency_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.dependency
    ADD CONSTRAINT dependency_pkey PRIMARY KEY (ancestor, descendant);


--
-- TOC entry 4470 (class 2606 OID 63960)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4472 (class 2606 OID 63962)
-- Name: segment segment_gid_key; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.segment
    ADD CONSTRAINT segment_gid_key UNIQUE (gid);


--
-- TOC entry 4474 (class 2606 OID 63964)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 4476 (class 2606 OID 63966)
-- Name: tree tree_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.tree
    ADD CONSTRAINT tree_pkey PRIMARY KEY (ancestor, descendant);


--
-- TOC entry 4478 (class 2606 OID 63968)
-- Name: body body_pkey; Type: CONSTRAINT; Schema: receipt; Owner: postgres
--

ALTER TABLE ONLY receipt.body
    ADD CONSTRAINT body_pkey PRIMARY KEY (head_id, part_code);


--
-- TOC entry 4480 (class 2606 OID 63970)
-- Name: head head_gid_key; Type: CONSTRAINT; Schema: receipt; Owner: postgres
--

ALTER TABLE ONLY receipt.head
    ADD CONSTRAINT head_gid_key UNIQUE (gid);


--
-- TOC entry 4482 (class 2606 OID 63972)
-- Name: head head_pkey; Type: CONSTRAINT; Schema: receipt; Owner: postgres
--

ALTER TABLE ONLY receipt.head
    ADD CONSTRAINT head_pkey PRIMARY KEY (id);


--
-- TOC entry 4484 (class 2606 OID 63974)
-- Name: numerator numerator_pkey; Type: CONSTRAINT; Schema: receipt; Owner: postgres
--

ALTER TABLE ONLY receipt.numerator
    ADD CONSTRAINT numerator_pkey PRIMARY KEY (facility_code, julianized_week);


--
-- TOC entry 4486 (class 2606 OID 63976)
-- Name: body body_pkey; Type: CONSTRAINT; Schema: request; Owner: postgres
--

ALTER TABLE ONLY request.body
    ADD CONSTRAINT body_pkey PRIMARY KEY (head_id, segment_gid);


--
-- TOC entry 4488 (class 2606 OID 63978)
-- Name: head head_gid_key; Type: CONSTRAINT; Schema: request; Owner: postgres
--

ALTER TABLE ONLY request.head
    ADD CONSTRAINT head_gid_key UNIQUE (gid);


--
-- TOC entry 4490 (class 2606 OID 63980)
-- Name: head head_pkey; Type: CONSTRAINT; Schema: request; Owner: postgres
--

ALTER TABLE ONLY request.head
    ADD CONSTRAINT head_pkey PRIMARY KEY (id);


--
-- TOC entry 4492 (class 2606 OID 63982)
-- Name: numerator numerator_pkey; Type: CONSTRAINT; Schema: request; Owner: postgres
--

ALTER TABLE ONLY request.numerator
    ADD CONSTRAINT numerator_pkey PRIMARY KEY (facility_code, julianized_week);


--
-- TOC entry 4494 (class 2606 OID 63984)
-- Name: body body_pkey; Type: CONSTRAINT; Schema: response; Owner: postgres
--

ALTER TABLE ONLY response.body
    ADD CONSTRAINT body_pkey PRIMARY KEY (head_id, segment_gid);


--
-- TOC entry 4496 (class 2606 OID 63986)
-- Name: head head_gid_key; Type: CONSTRAINT; Schema: response; Owner: postgres
--

ALTER TABLE ONLY response.head
    ADD CONSTRAINT head_gid_key UNIQUE (gid);


--
-- TOC entry 4498 (class 2606 OID 63988)
-- Name: head head_pkey; Type: CONSTRAINT; Schema: response; Owner: postgres
--

ALTER TABLE ONLY response.head
    ADD CONSTRAINT head_pkey PRIMARY KEY (id);


--
-- TOC entry 4500 (class 2606 OID 63990)
-- Name: numerator numerator_pkey; Type: CONSTRAINT; Schema: response; Owner: postgres
--

ALTER TABLE ONLY response.numerator
    ADD CONSTRAINT numerator_pkey PRIMARY KEY (facility_code, julianized_week);


--
-- TOC entry 4502 (class 2606 OID 63992)
-- Name: calendar calendar_pkey; Type: CONSTRAINT; Schema: schedule; Owner: postgres
--

ALTER TABLE ONLY schedule.calendar
    ADD CONSTRAINT calendar_pkey PRIMARY KEY (calendar_date);


--
-- TOC entry 4505 (class 2606 OID 63994)
-- Name: head head_pkey; Type: CONSTRAINT; Schema: stockcard; Owner: postgres
--

ALTER TABLE ONLY stockcard.head
    ADD CONSTRAINT head_pkey PRIMARY KEY (document_gid, part_code);


--
-- TOC entry 4507 (class 2606 OID 63996)
-- Name: body body_pkey; Type: CONSTRAINT; Schema: stocktake; Owner: postgres
--

ALTER TABLE ONLY stocktake.body
    ADD CONSTRAINT body_pkey PRIMARY KEY (head_id, part_code);


--
-- TOC entry 4509 (class 2606 OID 63998)
-- Name: head head_gid_key; Type: CONSTRAINT; Schema: stocktake; Owner: postgres
--

ALTER TABLE ONLY stocktake.head
    ADD CONSTRAINT head_gid_key UNIQUE (gid);


--
-- TOC entry 4511 (class 2606 OID 64000)
-- Name: head head_pkey; Type: CONSTRAINT; Schema: stocktake; Owner: postgres
--

ALTER TABLE ONLY stocktake.head
    ADD CONSTRAINT head_pkey PRIMARY KEY (id);


--
-- TOC entry 4513 (class 2606 OID 64002)
-- Name: numerator numerator_pkey; Type: CONSTRAINT; Schema: stocktake; Owner: postgres
--

ALTER TABLE ONLY stocktake.numerator
    ADD CONSTRAINT numerator_pkey PRIMARY KEY (facility_code, julianized_week);


--
-- TOC entry 4515 (class 2606 OID 64004)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: tooling; Owner: postgres
--

ALTER TABLE ONLY tooling.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 4517 (class 2606 OID 64006)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: tooling; Owner: postgres
--

ALTER TABLE ONLY tooling.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4519 (class 2606 OID 64008)
-- Name: information information_tooling_code_version_num_key; Type: CONSTRAINT; Schema: tooling; Owner: postgres
--

ALTER TABLE ONLY tooling.information
    ADD CONSTRAINT information_tooling_code_version_num_key UNIQUE (tooling_code, version_num);


--
-- TOC entry 4525 (class 2606 OID 64010)
-- Name: information uom_pkey; Type: CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.information
    ADD CONSTRAINT uom_pkey PRIMARY KEY (uom_code);


--
-- TOC entry 4521 (class 2606 OID 64012)
-- Name: assignment uom_role_pkey; Type: CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.assignment
    ADD CONSTRAINT uom_role_pkey PRIMARY KEY (uom_role_id);


--
-- TOC entry 4523 (class 2606 OID 64014)
-- Name: assignment uom_role_uom_role_code_key; Type: CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.assignment
    ADD CONSTRAINT uom_role_uom_role_code_key UNIQUE (uom_role_code);


--
-- TOC entry 4527 (class 2606 OID 64016)
-- Name: body body_pkey; Type: CONSTRAINT; Schema: work; Owner: postgres
--

ALTER TABLE ONLY work.body
    ADD CONSTRAINT body_pkey PRIMARY KEY (head_id, segment_gid);


--
-- TOC entry 4529 (class 2606 OID 64018)
-- Name: head head_gid_key; Type: CONSTRAINT; Schema: work; Owner: postgres
--

ALTER TABLE ONLY work.head
    ADD CONSTRAINT head_gid_key UNIQUE (gid);


--
-- TOC entry 4531 (class 2606 OID 64020)
-- Name: head head_pkey; Type: CONSTRAINT; Schema: work; Owner: postgres
--

ALTER TABLE ONLY work.head
    ADD CONSTRAINT head_pkey PRIMARY KEY (id);


--
-- TOC entry 4533 (class 2606 OID 64022)
-- Name: numerator numerator_pkey; Type: CONSTRAINT; Schema: work; Owner: postgres
--

ALTER TABLE ONLY work.numerator
    ADD CONSTRAINT numerator_pkey PRIMARY KEY (facility_code, julianized_week);


--
-- TOC entry 4503 (class 1259 OID 64023)
-- Name: head_document_kind_facility_code_part_code_idx; Type: INDEX; Schema: stockcard; Owner: postgres
--

CREATE INDEX head_document_kind_facility_code_part_code_idx ON stockcard.head USING btree (document_kind, facility_code, part_code);


--
-- TOC entry 4633 (class 2620 OID 64475)
-- Name: body disallow_editing_of_committed_document_body; Type: TRIGGER; Schema: claim; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_body BEFORE INSERT OR DELETE OR UPDATE ON claim.body FOR EACH ROW EXECUTE PROCEDURE claim.disallow_editing_of_committed_document_body();


--
-- TOC entry 4631 (class 2620 OID 64460)
-- Name: head disallow_editing_of_committed_document_head; Type: TRIGGER; Schema: claim; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_head BEFORE DELETE OR UPDATE ON claim.head FOR EACH ROW EXECUTE PROCEDURE common.disallow_editing_of_committed_document_head();


--
-- TOC entry 4632 (class 2620 OID 64461)
-- Name: head set_prev_doc_fsmt; Type: TRIGGER; Schema: claim; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON claim.head FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 4611 (class 2620 OID 64028)
-- Name: definition disallow_editing_of_committed_document_head; Type: TRIGGER; Schema: ebom; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_head BEFORE DELETE OR UPDATE ON ebom.definition FOR EACH ROW EXECUTE PROCEDURE common.disallow_editing_of_committed_document_head();


--
-- TOC entry 4612 (class 2620 OID 64029)
-- Name: definition set_prev_doc_fsmt; Type: TRIGGER; Schema: ebom; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON ebom.definition FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 4613 (class 2620 OID 64030)
-- Name: body disallow_editing_of_committed_document_body; Type: TRIGGER; Schema: issue; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_body BEFORE INSERT OR DELETE OR UPDATE ON issue.body FOR EACH ROW EXECUTE PROCEDURE issue.disallow_editing_of_committed_document_body();


--
-- TOC entry 4614 (class 2620 OID 64031)
-- Name: head disallow_editing_of_committed_document_head; Type: TRIGGER; Schema: issue; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_head BEFORE DELETE OR UPDATE ON issue.head FOR EACH ROW EXECUTE PROCEDURE common.disallow_editing_of_committed_document_head();


--
-- TOC entry 4615 (class 2620 OID 64032)
-- Name: head set_prev_doc_fsmt; Type: TRIGGER; Schema: issue; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON issue.head FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 4616 (class 2620 OID 64033)
-- Name: body disallow_editing_of_committed_document_body; Type: TRIGGER; Schema: receipt; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_body BEFORE INSERT OR DELETE OR UPDATE ON receipt.body FOR EACH ROW EXECUTE PROCEDURE receipt.disallow_editing_of_committed_document_body();


--
-- TOC entry 4617 (class 2620 OID 64034)
-- Name: head disallow_editing_of_committed_document_head; Type: TRIGGER; Schema: receipt; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_head BEFORE DELETE OR UPDATE ON receipt.head FOR EACH ROW EXECUTE PROCEDURE common.disallow_editing_of_committed_document_head();


--
-- TOC entry 4618 (class 2620 OID 64035)
-- Name: head set_prev_doc_fsmt; Type: TRIGGER; Schema: receipt; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON receipt.head FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 4619 (class 2620 OID 64036)
-- Name: body disallow_editing_of_committed_document_body; Type: TRIGGER; Schema: request; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_body BEFORE INSERT OR DELETE OR UPDATE ON request.body FOR EACH ROW EXECUTE PROCEDURE request.disallow_editing_of_committed_document_body();


--
-- TOC entry 4620 (class 2620 OID 64037)
-- Name: head disallow_editing_of_committed_document_head; Type: TRIGGER; Schema: request; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_head BEFORE DELETE OR UPDATE ON request.head FOR EACH ROW EXECUTE PROCEDURE common.disallow_editing_of_committed_document_head();


--
-- TOC entry 4621 (class 2620 OID 64038)
-- Name: head set_prev_doc_fsmt; Type: TRIGGER; Schema: request; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON request.head FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 4622 (class 2620 OID 64039)
-- Name: body disallow_editing_of_committed_document_body; Type: TRIGGER; Schema: response; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_body BEFORE INSERT OR DELETE OR UPDATE ON response.body FOR EACH ROW EXECUTE PROCEDURE response.disallow_editing_of_committed_document_body();


--
-- TOC entry 4623 (class 2620 OID 64040)
-- Name: head disallow_editing_of_committed_document_head; Type: TRIGGER; Schema: response; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_head BEFORE DELETE OR UPDATE ON response.head FOR EACH ROW EXECUTE PROCEDURE common.disallow_editing_of_committed_document_head();


--
-- TOC entry 4624 (class 2620 OID 64041)
-- Name: head set_prev_doc_fsmt; Type: TRIGGER; Schema: response; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON response.head FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 4625 (class 2620 OID 64042)
-- Name: body disallow_editing_of_committed_document_body; Type: TRIGGER; Schema: stocktake; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_body BEFORE INSERT OR DELETE OR UPDATE ON stocktake.body FOR EACH ROW EXECUTE PROCEDURE stocktake.disallow_editing_of_committed_document_body();


--
-- TOC entry 4626 (class 2620 OID 64043)
-- Name: head disallow_editing_of_committed_document_head; Type: TRIGGER; Schema: stocktake; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_head BEFORE DELETE OR UPDATE ON stocktake.head FOR EACH ROW EXECUTE PROCEDURE common.disallow_editing_of_committed_document_head();


--
-- TOC entry 4627 (class 2620 OID 64044)
-- Name: head set_prev_doc_fsmt; Type: TRIGGER; Schema: stocktake; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON stocktake.head FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 4628 (class 2620 OID 64045)
-- Name: body disallow_editing_of_committed_document_body; Type: TRIGGER; Schema: work; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_body BEFORE INSERT OR DELETE OR UPDATE ON work.body FOR EACH ROW EXECUTE PROCEDURE work.disallow_editing_of_committed_document_body();


--
-- TOC entry 4629 (class 2620 OID 64046)
-- Name: head disallow_editing_of_committed_document_head; Type: TRIGGER; Schema: work; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_head BEFORE DELETE OR UPDATE ON work.head FOR EACH ROW EXECUTE PROCEDURE common.disallow_editing_of_committed_document_head();


--
-- TOC entry 4630 (class 2620 OID 64047)
-- Name: head set_prev_doc_fsmt; Type: TRIGGER; Schema: work; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON work.head FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 4542 (class 2606 OID 64088)
-- Name: definition definition_calendar_date_fkey; Type: FK CONSTRAINT; Schema: calendar; Owner: postgres
--

ALTER TABLE ONLY calendar.definition
    ADD CONSTRAINT definition_calendar_date_fkey FOREIGN KEY (calendar_date) REFERENCES calendar.information(calendar_date) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4610 (class 2606 OID 64470)
-- Name: body body_head_id_fkey; Type: FK CONSTRAINT; Schema: claim; Owner: postgres
--

ALTER TABLE ONLY claim.body
    ADD CONSTRAINT body_head_id_fkey FOREIGN KEY (head_id) REFERENCES claim.head(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4543 (class 2606 OID 64103)
-- Name: assembly assembly_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.assembly
    ADD CONSTRAINT assembly_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES ebom.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4544 (class 2606 OID 64108)
-- Name: assembly assembly_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.assembly
    ADD CONSTRAINT assembly_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.assembly(part_code, version_num) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4545 (class 2606 OID 64113)
-- Name: assembly assembly_uom_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.assembly
    ADD CONSTRAINT assembly_uom_code_fkey FOREIGN KEY (uom_code) REFERENCES uom.information(uom_code) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4546 (class 2606 OID 64118)
-- Name: blueprint blueprint_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.blueprint
    ADD CONSTRAINT blueprint_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES ebom.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4547 (class 2606 OID 64123)
-- Name: blueprint blueprint_uom_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.blueprint
    ADD CONSTRAINT blueprint_uom_code_fkey FOREIGN KEY (uom_code) REFERENCES uom.information(uom_code) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4548 (class 2606 OID 64128)
-- Name: buyable buyable_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.buyable
    ADD CONSTRAINT buyable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES ebom.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4549 (class 2606 OID 64133)
-- Name: buyable buyable_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.buyable
    ADD CONSTRAINT buyable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.buyable(part_code, version_num) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4550 (class 2606 OID 64138)
-- Name: buyable buyable_uom_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.buyable
    ADD CONSTRAINT buyable_uom_code_fkey FOREIGN KEY (uom_code) REFERENCES uom.information(uom_code) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4551 (class 2606 OID 64143)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES ebom.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4552 (class 2606 OID 64148)
-- Name: definition definition_uom_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition
    ADD CONSTRAINT definition_uom_code_fkey FOREIGN KEY (uom_code) REFERENCES uom.information(uom_code) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4553 (class 2606 OID 64153)
-- Name: part part_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.part
    ADD CONSTRAINT part_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES ebom.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4554 (class 2606 OID 64158)
-- Name: part part_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.part
    ADD CONSTRAINT part_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.part(part_code, version_num) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4555 (class 2606 OID 64163)
-- Name: part part_uom_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.part
    ADD CONSTRAINT part_uom_code_fkey FOREIGN KEY (uom_code) REFERENCES uom.information(uom_code) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4556 (class 2606 OID 64168)
-- Name: area area_parent_facility_code_fkey; Type: FK CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area
    ADD CONSTRAINT area_parent_facility_code_fkey FOREIGN KEY (parent_facility_code) REFERENCES facility.site(facility_code) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4557 (class 2606 OID 64173)
-- Name: line line_parent_facility_code_fkey; Type: FK CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line
    ADD CONSTRAINT line_parent_facility_code_fkey FOREIGN KEY (parent_facility_code) REFERENCES facility.area(facility_code) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4558 (class 2606 OID 64178)
-- Name: site site_parent_facility_code_fkey; Type: FK CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site
    ADD CONSTRAINT site_parent_facility_code_fkey FOREIGN KEY (parent_facility_code) REFERENCES facility.enterprise(facility_code) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4559 (class 2606 OID 64183)
-- Name: zone zone_parent_facility_code_fkey; Type: FK CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone
    ADD CONSTRAINT zone_parent_facility_code_fkey FOREIGN KEY (parent_facility_code) REFERENCES facility.area(facility_code);


--
-- TOC entry 4560 (class 2606 OID 64188)
-- Name: assembly assembly_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.assembly
    ADD CONSTRAINT assembly_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4561 (class 2606 OID 64193)
-- Name: buyable buyable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.buyable
    ADD CONSTRAINT buyable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4562 (class 2606 OID 64198)
-- Name: consumable consumable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.consumable
    ADD CONSTRAINT consumable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4563 (class 2606 OID 64203)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES inventory.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4564 (class 2606 OID 64208)
-- Name: measurement measurement_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.measurement
    ADD CONSTRAINT measurement_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4565 (class 2606 OID 64213)
-- Name: part part_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.part
    ADD CONSTRAINT part_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4566 (class 2606 OID 64218)
-- Name: primal primal_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.primal
    ADD CONSTRAINT primal_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4567 (class 2606 OID 64223)
-- Name: producible producible_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.producible
    ADD CONSTRAINT producible_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4568 (class 2606 OID 64228)
-- Name: salable salable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.salable
    ADD CONSTRAINT salable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4569 (class 2606 OID 64233)
-- Name: storable storable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.storable
    ADD CONSTRAINT storable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4570 (class 2606 OID 64238)
-- Name: variety variety_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.variety
    ADD CONSTRAINT variety_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4571 (class 2606 OID 64243)
-- Name: body body_head_id_fkey; Type: FK CONSTRAINT; Schema: issue; Owner: postgres
--

ALTER TABLE ONLY issue.body
    ADD CONSTRAINT body_head_id_fkey FOREIGN KEY (head_id) REFERENCES issue.head(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4572 (class 2606 OID 64248)
-- Name: consumable consumable_definition_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.consumable
    ADD CONSTRAINT consumable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES mbom.definition(id);


--
-- TOC entry 4573 (class 2606 OID 64253)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4574 (class 2606 OID 64258)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES mbom.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4575 (class 2606 OID 64263)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4576 (class 2606 OID 64268)
-- Name: primal primal_definition_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.primal
    ADD CONSTRAINT primal_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES mbom.definition(id);


--
-- TOC entry 4577 (class 2606 OID 64273)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4578 (class 2606 OID 64278)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4579 (class 2606 OID 64283)
-- Name: consumable consumable_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.consumable
    ADD CONSTRAINT consumable_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4580 (class 2606 OID 64288)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES process.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4581 (class 2606 OID 64293)
-- Name: dependency dependency_ancestor_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.dependency
    ADD CONSTRAINT dependency_ancestor_fkey FOREIGN KEY (ancestor) REFERENCES process.segment(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4582 (class 2606 OID 64298)
-- Name: dependency dependency_descendant_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.dependency
    ADD CONSTRAINT dependency_descendant_fkey FOREIGN KEY (descendant) REFERENCES process.segment(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4583 (class 2606 OID 64303)
-- Name: equipment equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4584 (class 2606 OID 64308)
-- Name: facility facility_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.facility
    ADD CONSTRAINT facility_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4585 (class 2606 OID 64313)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (version_num, part_code) REFERENCES inventory.producible(version_num, part_code) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4586 (class 2606 OID 64318)
-- Name: information information_uom_code_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.information
    ADD CONSTRAINT information_uom_code_fkey FOREIGN KEY (uom_code) REFERENCES uom.information(uom_code) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4588 (class 2606 OID 64323)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4589 (class 2606 OID 64328)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4590 (class 2606 OID 64333)
-- Name: primal primal_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.primal
    ADD CONSTRAINT primal_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4587 (class 2606 OID 64338)
-- Name: segment segment_definition_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.segment
    ADD CONSTRAINT segment_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES process.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4591 (class 2606 OID 64343)
-- Name: tooling tooling_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.tooling
    ADD CONSTRAINT tooling_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4592 (class 2606 OID 64348)
-- Name: blueprint blueprint_definition_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.blueprint
    ADD CONSTRAINT blueprint_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES product.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4593 (class 2606 OID 64353)
-- Name: blueprint blueprint_uom_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.blueprint
    ADD CONSTRAINT blueprint_uom_code_fkey FOREIGN KEY (uom_code) REFERENCES uom.information(uom_code) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4594 (class 2606 OID 64358)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES product.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4595 (class 2606 OID 64363)
-- Name: dependency dependency_ancestor_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.dependency
    ADD CONSTRAINT dependency_ancestor_fkey FOREIGN KEY (ancestor) REFERENCES product.segment(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4596 (class 2606 OID 64368)
-- Name: dependency dependency_descendant_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.dependency
    ADD CONSTRAINT dependency_descendant_fkey FOREIGN KEY (descendant) REFERENCES product.segment(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4597 (class 2606 OID 64373)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (version_num, part_code) REFERENCES inventory.producible(version_num, part_code) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4598 (class 2606 OID 64378)
-- Name: information information_uom_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.information
    ADD CONSTRAINT information_uom_code_fkey FOREIGN KEY (uom_code) REFERENCES uom.information(uom_code) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4599 (class 2606 OID 64383)
-- Name: segment segment_definition_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.segment
    ADD CONSTRAINT segment_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES product.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4600 (class 2606 OID 64388)
-- Name: segment segment_part_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.segment
    ADD CONSTRAINT segment_part_code_fkey FOREIGN KEY (version_num, part_code) REFERENCES inventory.producible(version_num, part_code);


--
-- TOC entry 4601 (class 2606 OID 64393)
-- Name: segment segment_uom_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.segment
    ADD CONSTRAINT segment_uom_code_fkey FOREIGN KEY (uom_code) REFERENCES uom.information(uom_code) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4602 (class 2606 OID 64398)
-- Name: tree tree_ancestor_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.tree
    ADD CONSTRAINT tree_ancestor_fkey FOREIGN KEY (ancestor) REFERENCES product.blueprint(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4603 (class 2606 OID 64403)
-- Name: tree tree_descendant_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.tree
    ADD CONSTRAINT tree_descendant_fkey FOREIGN KEY (descendant) REFERENCES product.blueprint(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4604 (class 2606 OID 64408)
-- Name: body body_head_id_fkey; Type: FK CONSTRAINT; Schema: receipt; Owner: postgres
--

ALTER TABLE ONLY receipt.body
    ADD CONSTRAINT body_head_id_fkey FOREIGN KEY (head_id) REFERENCES receipt.head(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4605 (class 2606 OID 64413)
-- Name: body body_head_id_fkey; Type: FK CONSTRAINT; Schema: request; Owner: postgres
--

ALTER TABLE ONLY request.body
    ADD CONSTRAINT body_head_id_fkey FOREIGN KEY (head_id) REFERENCES request.head(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4606 (class 2606 OID 64418)
-- Name: body body_head_id_fkey; Type: FK CONSTRAINT; Schema: response; Owner: postgres
--

ALTER TABLE ONLY response.body
    ADD CONSTRAINT body_head_id_fkey FOREIGN KEY (head_id) REFERENCES response.head(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4607 (class 2606 OID 64423)
-- Name: body body_head_id_fkey; Type: FK CONSTRAINT; Schema: stocktake; Owner: postgres
--

ALTER TABLE ONLY stocktake.body
    ADD CONSTRAINT body_head_id_fkey FOREIGN KEY (head_id) REFERENCES stocktake.head(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4608 (class 2606 OID 64428)
-- Name: information uom_base_uom_code_fkey; Type: FK CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.information
    ADD CONSTRAINT uom_base_uom_code_fkey FOREIGN KEY (base_uom_code) REFERENCES uom.information(uom_code);


--
-- TOC entry 4609 (class 2606 OID 64433)
-- Name: body body_head_id_fkey; Type: FK CONSTRAINT; Schema: work; Owner: postgres
--

ALTER TABLE ONLY work.body
    ADD CONSTRAINT body_head_id_fkey FOREIGN KEY (head_id) REFERENCES work.head(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2021-05-20 00:22:20 EEST

--
-- PostgreSQL database dump complete
--

