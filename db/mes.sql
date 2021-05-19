--
-- PostgreSQL database dump
--

-- Dumped from database version 11.12 (Debian 11.12-0+deb10u1)
-- Dumped by pg_dump version 11.12 (Debian 11.12-0+deb10u1)

-- Started on 2021-05-19 14:30:23 EEST

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
-- TOC entry 24 (class 2615 OID 57076)
-- Name: balance; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA balance;


ALTER SCHEMA balance OWNER TO postgres;

--
-- TOC entry 5013 (class 0 OID 0)
-- Dependencies: 24
-- Name: SCHEMA balance; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA balance IS 'ALL: balance accounts';


--
-- TOC entry 35 (class 2615 OID 57077)
-- Name: binding; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA binding;


ALTER SCHEMA binding OWNER TO postgres;

--
-- TOC entry 5014 (class 0 OID 0)
-- Dependencies: 35
-- Name: SCHEMA binding; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA binding IS 'ALL: document bindings';


--
-- TOC entry 36 (class 2615 OID 57078)
-- Name: calendar; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA calendar;


ALTER SCHEMA calendar OWNER TO postgres;

--
-- TOC entry 5015 (class 0 OID 0)
-- Dependencies: 36
-- Name: SCHEMA calendar; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA calendar IS 'APS: work calendar';


--
-- TOC entry 26 (class 2615 OID 57079)
-- Name: claim; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA claim;


ALTER SCHEMA claim OWNER TO postgres;

--
-- TOC entry 5016 (class 0 OID 0)
-- Dependencies: 26
-- Name: SCHEMA claim; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA claim IS 'WMS: stock claim';


--
-- TOC entry 28 (class 2615 OID 57080)
-- Name: common; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA common;


ALTER SCHEMA common OWNER TO postgres;

--
-- TOC entry 5017 (class 0 OID 0)
-- Dependencies: 28
-- Name: SCHEMA common; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA common IS 'ALL: common objects';


--
-- TOC entry 33 (class 2615 OID 57081)
-- Name: cutoff; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA cutoff;


ALTER SCHEMA cutoff OWNER TO postgres;

--
-- TOC entry 5018 (class 0 OID 0)
-- Dependencies: 33
-- Name: SCHEMA cutoff; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA cutoff IS 'WMS: warehouse reporting period lock';


--
-- TOC entry 34 (class 2615 OID 57082)
-- Name: ebom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ebom;


ALTER SCHEMA ebom OWNER TO postgres;

--
-- TOC entry 5019 (class 0 OID 0)
-- Dependencies: 34
-- Name: SCHEMA ebom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA ebom IS 'MES: engineering bill of materials';


--
-- TOC entry 37 (class 2615 OID 57083)
-- Name: equipment; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA equipment;


ALTER SCHEMA equipment OWNER TO postgres;

--
-- TOC entry 5020 (class 0 OID 0)
-- Dependencies: 37
-- Name: SCHEMA equipment; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA equipment IS 'MES:  equipmet classes definitions';


--
-- TOC entry 9 (class 2615 OID 57084)
-- Name: facility; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA facility;


ALTER SCHEMA facility OWNER TO postgres;

--
-- TOC entry 5021 (class 0 OID 0)
-- Dependencies: 9
-- Name: SCHEMA facility; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA facility IS 'MDM: PERA model facility structure';


--
-- TOC entry 27 (class 2615 OID 57085)
-- Name: inventory; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA inventory;


ALTER SCHEMA inventory OWNER TO postgres;

--
-- TOC entry 5022 (class 0 OID 0)
-- Dependencies: 27
-- Name: SCHEMA inventory; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA inventory IS 'MDM: inventory classes definitions';


--
-- TOC entry 18 (class 2615 OID 57086)
-- Name: issue; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA issue;


ALTER SCHEMA issue OWNER TO postgres;

--
-- TOC entry 5023 (class 0 OID 0)
-- Dependencies: 18
-- Name: SCHEMA issue; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA issue IS 'WMS: warehouse issues';


--
-- TOC entry 17 (class 2615 OID 57087)
-- Name: mbom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA mbom;


ALTER SCHEMA mbom OWNER TO postgres;

--
-- TOC entry 5024 (class 0 OID 0)
-- Dependencies: 17
-- Name: SCHEMA mbom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA mbom IS 'MES: manufacturing bill of materials';


--
-- TOC entry 31 (class 2615 OID 57088)
-- Name: operation; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA operation;


ALTER SCHEMA operation OWNER TO postgres;

--
-- TOC entry 5025 (class 0 OID 0)
-- Dependencies: 31
-- Name: SCHEMA operation; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA operation IS 'MES: operation classes definitions';


--
-- TOC entry 13 (class 2615 OID 57089)
-- Name: personnel; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA personnel;


ALTER SCHEMA personnel OWNER TO postgres;

--
-- TOC entry 5026 (class 0 OID 0)
-- Dependencies: 13
-- Name: SCHEMA personnel; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA personnel IS 'MES: personnel classes definitions';


--
-- TOC entry 29 (class 2615 OID 57090)
-- Name: pgunit; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA pgunit;


ALTER SCHEMA pgunit OWNER TO postgres;

--
-- TOC entry 5027 (class 0 OID 0)
-- Dependencies: 29
-- Name: SCHEMA pgunit; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA pgunit IS 'pgunit objects';


--
-- TOC entry 8 (class 2615 OID 57091)
-- Name: process; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA process;


ALTER SCHEMA process OWNER TO postgres;

--
-- TOC entry 5028 (class 0 OID 0)
-- Dependencies: 8
-- Name: SCHEMA process; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA process IS 'MES: production processes definitions';


--
-- TOC entry 32 (class 2615 OID 57092)
-- Name: product; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA product;


ALTER SCHEMA product OWNER TO postgres;

--
-- TOC entry 5029 (class 0 OID 0)
-- Dependencies: 32
-- Name: SCHEMA product; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA product IS 'MES: product segments definitions';


--
-- TOC entry 14 (class 2615 OID 57093)
-- Name: receipt; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA receipt;


ALTER SCHEMA receipt OWNER TO postgres;

--
-- TOC entry 5030 (class 0 OID 0)
-- Dependencies: 14
-- Name: SCHEMA receipt; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA receipt IS 'WMS: warehouse receipts';


--
-- TOC entry 16 (class 2615 OID 57094)
-- Name: request; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA request;


ALTER SCHEMA request OWNER TO postgres;

--
-- TOC entry 5031 (class 0 OID 0)
-- Dependencies: 16
-- Name: SCHEMA request; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA request IS 'MES: process segment request';


--
-- TOC entry 25 (class 2615 OID 57095)
-- Name: requirement; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA requirement;


ALTER SCHEMA requirement OWNER TO postgres;

--
-- TOC entry 5032 (class 0 OID 0)
-- Dependencies: 25
-- Name: SCHEMA requirement; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA requirement IS 'MES: production request requirements';


--
-- TOC entry 19 (class 2615 OID 57096)
-- Name: response; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA response;


ALTER SCHEMA response OWNER TO postgres;

--
-- TOC entry 5033 (class 0 OID 0)
-- Dependencies: 19
-- Name: SCHEMA response; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA response IS 'MES: process segment response';


--
-- TOC entry 20 (class 2615 OID 57097)
-- Name: schedule; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA schedule;


ALTER SCHEMA schedule OWNER TO postgres;

--
-- TOC entry 5034 (class 0 OID 0)
-- Dependencies: 20
-- Name: SCHEMA schedule; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA schedule IS 'MES: production schedule';


--
-- TOC entry 11 (class 2615 OID 57098)
-- Name: stockcard; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA stockcard;


ALTER SCHEMA stockcard OWNER TO postgres;

--
-- TOC entry 5035 (class 0 OID 0)
-- Dependencies: 11
-- Name: SCHEMA stockcard; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA stockcard IS 'WMS: warehouse stockcard';


--
-- TOC entry 21 (class 2615 OID 57099)
-- Name: stocktake; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA stocktake;


ALTER SCHEMA stocktake OWNER TO postgres;

--
-- TOC entry 5036 (class 0 OID 0)
-- Dependencies: 21
-- Name: SCHEMA stocktake; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA stocktake IS 'WMS: warehouse stocktake';


--
-- TOC entry 30 (class 2615 OID 57100)
-- Name: tests; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tests;


ALTER SCHEMA tests OWNER TO postgres;

--
-- TOC entry 5037 (class 0 OID 0)
-- Dependencies: 30
-- Name: SCHEMA tests; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA tests IS 'pgunit tests';


--
-- TOC entry 38 (class 2615 OID 57101)
-- Name: tooling; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tooling;


ALTER SCHEMA tooling OWNER TO postgres;

--
-- TOC entry 5038 (class 0 OID 0)
-- Dependencies: 38
-- Name: SCHEMA tooling; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA tooling IS 'MES: tooling classes definitions';


--
-- TOC entry 10 (class 2615 OID 57102)
-- Name: uom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA uom;


ALTER SCHEMA uom OWNER TO postgres;

--
-- TOC entry 5039 (class 0 OID 0)
-- Dependencies: 10
-- Name: SCHEMA uom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA uom IS 'MDM: units of measure classes definitions';


--
-- TOC entry 15 (class 2615 OID 57103)
-- Name: work; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA work;


ALTER SCHEMA work OWNER TO postgres;

--
-- TOC entry 5040 (class 0 OID 0)
-- Dependencies: 15
-- Name: SCHEMA work; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA work IS 'MES: production work progress report';


--
-- TOC entry 4 (class 3079 OID 57104)
-- Name: pldbgapi; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pldbgapi WITH SCHEMA public;


--
-- TOC entry 5041 (class 0 OID 0)
-- Dependencies: 4
-- Name: EXTENSION pldbgapi; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pldbgapi IS 'server-side support for debugging PL/pgSQL functions';


--
-- TOC entry 3 (class 3079 OID 57141)
-- Name: plpgsql_check; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql_check WITH SCHEMA public;


--
-- TOC entry 5042 (class 0 OID 0)
-- Dependencies: 3
-- Name: EXTENSION plpgsql_check; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql_check IS 'extended check for plpgsql functions';


--
-- TOC entry 2 (class 3079 OID 57164)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- TOC entry 5043 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- TOC entry 1334 (class 1247 OID 57176)
-- Name: day_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.day_kind AS ENUM (
    'WORKDAY',
    'HOLIDAY'
);


ALTER TYPE common.day_kind OWNER TO postgres;

--
-- TOC entry 1337 (class 1247 OID 57183)
-- Name: calendar_body; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.calendar_body AS (
	facility_code character varying,
	workday_duration interval,
	workday_type common.day_kind
);


ALTER TYPE common.calendar_body OWNER TO postgres;

--
-- TOC entry 1340 (class 1247 OID 57186)
-- Name: calendar_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.calendar_head AS (
	calendar_date date,
	julianized_day integer,
	julianized_week integer
);


ALTER TYPE common.calendar_head OWNER TO postgres;

--
-- TOC entry 1343 (class 1247 OID 57188)
-- Name: component_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.component_kind AS ENUM (
    'ASSEMBLY',
    'PART',
    'BUYABLE'
);


ALTER TYPE common.component_kind OWNER TO postgres;

--
-- TOC entry 5044 (class 0 OID 0)
-- Dependencies: 1343
-- Name: TYPE component_kind; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON TYPE common.component_kind IS 'engineering bill of materials components kinds';


--
-- TOC entry 1346 (class 1247 OID 57196)
-- Name: quantity; Type: DOMAIN; Schema: common; Owner: postgres
--

CREATE DOMAIN common.quantity AS numeric(20,4) DEFAULT 0
	CONSTRAINT quantity_is_positive CHECK ((VALUE >= (0)::numeric));


ALTER DOMAIN common.quantity OWNER TO postgres;

--
-- TOC entry 5045 (class 0 OID 0)
-- Dependencies: 1346
-- Name: DOMAIN quantity; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON DOMAIN common.quantity IS 'quantity domain';


--
-- TOC entry 1350 (class 1247 OID 57200)
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
-- TOC entry 5046 (class 0 OID 0)
-- Dependencies: 1350
-- Name: TYPE component_specification; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON TYPE common.component_specification IS 'engineering bill of materials components';


--
-- TOC entry 1353 (class 1247 OID 57202)
-- Name: material_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.material_kind AS ENUM (
    'CONSUMABLE',
    'PRODUCIBLE',
    'PRIMAL'
);


ALTER TYPE common.material_kind OWNER TO postgres;

--
-- TOC entry 1356 (class 1247 OID 57211)
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
-- TOC entry 1359 (class 1247 OID 57214)
-- Name: dependency_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.dependency_specification AS (
	ancestor uuid,
	descendant uuid
);


ALTER TYPE common.dependency_specification OWNER TO postgres;

--
-- TOC entry 1362 (class 1247 OID 57217)
-- Name: document_body; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.document_body AS (
	part_code character varying,
	quantity common.quantity,
	uom_code character varying
);


ALTER TYPE common.document_body OWNER TO postgres;

--
-- TOC entry 1365 (class 1247 OID 57219)
-- Name: document_fsmt; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.document_fsmt AS ENUM (
    'PROPOSED',
    'COMMITTED',
    'DECOMMITTED'
);


ALTER TYPE common.document_fsmt OWNER TO postgres;

--
-- TOC entry 1368 (class 1247 OID 57226)
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
-- TOC entry 1371 (class 1247 OID 57255)
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
-- TOC entry 1374 (class 1247 OID 57258)
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
-- TOC entry 5047 (class 0 OID 0)
-- Dependencies: 1374
-- Name: TYPE ebom_head; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON TYPE common.ebom_head IS 'engineering bill of materials information';


--
-- TOC entry 1377 (class 1247 OID 57261)
-- Name: ebom_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.ebom_document AS (
	head common.ebom_head,
	body common.component_specification[]
);


ALTER TYPE common.ebom_document OWNER TO postgres;

--
-- TOC entry 5048 (class 0 OID 0)
-- Dependencies: 1377
-- Name: TYPE ebom_document; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON TYPE common.ebom_document IS 'engineering bill of materials document';


--
-- TOC entry 1380 (class 1247 OID 57264)
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
-- TOC entry 1383 (class 1247 OID 57267)
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
-- TOC entry 1386 (class 1247 OID 57269)
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
-- TOC entry 1389 (class 1247 OID 57281)
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
-- TOC entry 1392 (class 1247 OID 57284)
-- Name: facility_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.facility_specification AS (
	facility_code character varying,
	version_num integer,
	facility_type common.facility_kind
);


ALTER TYPE common.facility_specification OWNER TO postgres;

--
-- TOC entry 1395 (class 1247 OID 57287)
-- Name: inbound_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.inbound_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	document_date date,
	facility_code character varying,
	curr_fsmt common.document_fsmt,
	doctype common.document_kind,
	addresser character varying
);


ALTER TYPE common.inbound_head OWNER TO postgres;

--
-- TOC entry 1398 (class 1247 OID 57290)
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
-- TOC entry 1401 (class 1247 OID 57292)
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
-- TOC entry 1404 (class 1247 OID 57313)
-- Name: unit_conversion_type; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.unit_conversion_type AS (
	uom_code_from character varying,
	uom_code_to character varying,
	factor numeric
);


ALTER TYPE common.unit_conversion_type OWNER TO postgres;

--
-- TOC entry 1407 (class 1247 OID 57316)
-- Name: inventory_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.inventory_document AS (
	head common.inventory_head,
	meas common.unit_conversion_type[],
	kind common.inventory_kind[]
);


ALTER TYPE common.inventory_document OWNER TO postgres;

--
-- TOC entry 1410 (class 1247 OID 57319)
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
-- TOC entry 1413 (class 1247 OID 57322)
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
-- TOC entry 1416 (class 1247 OID 57325)
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
-- TOC entry 1419 (class 1247 OID 57328)
-- Name: mbom_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.mbom_document AS (
	head common.mbom_head,
	body common.material_specification[]
);


ALTER TYPE common.mbom_document OWNER TO postgres;

--
-- TOC entry 1422 (class 1247 OID 57331)
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
-- TOC entry 1425 (class 1247 OID 57334)
-- Name: outbound_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.outbound_head AS (
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


ALTER TYPE common.outbound_head OWNER TO postgres;

--
-- TOC entry 1428 (class 1247 OID 57337)
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
-- TOC entry 1431 (class 1247 OID 57340)
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
-- TOC entry 1434 (class 1247 OID 57342)
-- Name: policy_mode; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.policy_mode AS ENUM (
    'DISABLED',
    'PERMISSIVE',
    'ENFORCING'
);


ALTER TYPE common.policy_mode OWNER TO postgres;

--
-- TOC entry 1437 (class 1247 OID 57351)
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
-- TOC entry 1440 (class 1247 OID 57354)
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
-- TOC entry 1443 (class 1247 OID 57357)
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
-- TOC entry 1446 (class 1247 OID 57360)
-- Name: process_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.process_document AS (
	head common.process_head,
	body common.process_segment[],
	deps common.dependency_specification[]
);


ALTER TYPE common.process_document OWNER TO postgres;

--
-- TOC entry 5049 (class 0 OID 0)
-- Dependencies: 1446
-- Name: TYPE process_document; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON TYPE common.process_document IS 'operation';


--
-- TOC entry 1449 (class 1247 OID 57363)
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
-- TOC entry 1452 (class 1247 OID 57366)
-- Name: product_segment; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.product_segment AS (
	gid uuid,
	producible_spec common.material_specification
);


ALTER TYPE common.product_segment OWNER TO postgres;

--
-- TOC entry 1455 (class 1247 OID 57369)
-- Name: product_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.product_document AS (
	head common.product_head,
	body common.product_segment[],
	deps common.dependency_specification[]
);


ALTER TYPE common.product_document OWNER TO postgres;

--
-- TOC entry 1458 (class 1247 OID 57371)
-- Name: quantity_signed; Type: DOMAIN; Schema: common; Owner: postgres
--

CREATE DOMAIN common.quantity_signed AS numeric(20,4) DEFAULT 0;


ALTER DOMAIN common.quantity_signed OWNER TO postgres;

--
-- TOC entry 5050 (class 0 OID 0)
-- Dependencies: 1458
-- Name: DOMAIN quantity_signed; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON DOMAIN common.quantity_signed IS 'quantity signed domain';


--
-- TOC entry 1461 (class 1247 OID 57374)
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
-- TOC entry 1464 (class 1247 OID 57377)
-- Name: response_segment; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.response_segment AS (
	gid uuid,
	quantity common.quantity
);


ALTER TYPE common.response_segment OWNER TO postgres;

--
-- TOC entry 1467 (class 1247 OID 57380)
-- Name: response_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.response_document AS (
	head common.response_head,
	body common.response_segment[]
);


ALTER TYPE common.response_document OWNER TO postgres;

--
-- TOC entry 5051 (class 0 OID 0)
-- Dependencies: 1467
-- Name: TYPE response_document; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON TYPE common.response_document IS 'response';


--
-- TOC entry 1470 (class 1247 OID 57383)
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
-- TOC entry 1473 (class 1247 OID 57386)
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
-- TOC entry 1476 (class 1247 OID 57388)
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
-- TOC entry 1479 (class 1247 OID 57399)
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
-- TOC entry 1482 (class 1247 OID 57402)
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
-- TOC entry 1485 (class 1247 OID 57405)
-- Name: work_segment; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.work_segment AS (
	gid uuid,
	quantity common.quantity
);


ALTER TYPE common.work_segment OWNER TO postgres;

--
-- TOC entry 1488 (class 1247 OID 57408)
-- Name: work_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE common.work_document AS (
	head common.work_head,
	body common.work_segment[]
);


ALTER TYPE common.work_document OWNER TO postgres;

--
-- TOC entry 5052 (class 0 OID 0)
-- Dependencies: 1488
-- Name: TYPE work_document; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON TYPE common.work_document IS 'work';


--
-- TOC entry 479 (class 1255 OID 57409)
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
-- TOC entry 480 (class 1255 OID 57410)
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
-- TOC entry 481 (class 1255 OID 57411)
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
-- TOC entry 482 (class 1255 OID 57412)
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
-- TOC entry 483 (class 1255 OID 57413)
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
-- TOC entry 484 (class 1255 OID 57414)
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
-- TOC entry 485 (class 1255 OID 57415)
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
-- TOC entry 486 (class 1255 OID 57416)
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
-- TOC entry 487 (class 1255 OID 57417)
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
-- TOC entry 488 (class 1255 OID 57418)
-- Name: gain_stock_en_route_qty(character varying, common.document_body[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_stock_en_route_qty(__facility_code character varying, __inventory common.document_body[]) RETURNS void
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
      en_route_qty = en_route_qty + _item.quantity
    WHERE
      facility_code = __facility_code AND
      part_code = _item.part_code;

    IF NOT FOUND THEN
      INSERT INTO
        balance.stock (
          facility_code,
          part_code,
          uom_code,
          en_route_qty)
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


ALTER FUNCTION balance.gain_stock_en_route_qty(__facility_code character varying, __inventory common.document_body[]) OWNER TO postgres;

--
-- TOC entry 489 (class 1255 OID 57419)
-- Name: gain_stock_en_route_qty(character varying, common.document_body); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_stock_en_route_qty(__facility_code character varying, __inventory common.document_body) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  -- improve: add cast qty against uom and good

  UPDATE
    balance.stock
  SET
    en_route_qty = en_route_qty + __inventory.quantity
  WHERE
    facility_code = __facility_code AND
    part_code = __inventory.part_code;

  IF NOT FOUND THEN
    INSERT INTO
      balance.stock (
        facility_code,
        part_code,
        uom_code,
        en_route_qty)
    VALUES (
      __facility_code,
      __inventory.part_code,
      __inventory.uom_code,
      __inventory.quantity);
  END IF;

  RAISE NOTICE 'balance of % gained on % of %', __inventory.part_code, __inventory.quantity, __inventory.uom_code;

END;
$$;


ALTER FUNCTION balance.gain_stock_en_route_qty(__facility_code character varying, __inventory common.document_body) OWNER TO postgres;

--
-- TOC entry 490 (class 1255 OID 57420)
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
-- TOC entry 491 (class 1255 OID 57421)
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
-- TOC entry 492 (class 1255 OID 57422)
-- Name: gain_stock_on_order_qty(character varying, common.document_body[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_stock_on_order_qty(__facility_code character varying, __inventory common.document_body[]) RETURNS void
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
      on_order_qty = on_order_qty + _item.quantity
    WHERE
      facility_code = __facility_code AND
      part_code = _item.part_code;

    IF NOT FOUND THEN
      INSERT INTO
        balance.stock (
          facility_code,
          part_code,
          uom_code,
          on_order_qty)
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


ALTER FUNCTION balance.gain_stock_on_order_qty(__facility_code character varying, __inventory common.document_body[]) OWNER TO postgres;

--
-- TOC entry 493 (class 1255 OID 57423)
-- Name: gain_stock_on_order_qty(character varying, common.document_body); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.gain_stock_on_order_qty(__facility_code character varying, __inventory common.document_body) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  -- improve: add cast qty against uom and good

  UPDATE
    balance.stock
  SET
    on_order_qty = on_order_qty + __inventory.quantity
  WHERE
    facility_code = __facility_code AND
    part_code = __inventory.part_code;

  IF NOT FOUND THEN
    INSERT INTO
      balance.stock (
        facility_code,
        part_code,
        uom_code,
        on_order_qty)
    VALUES (
      __facility_code,
      __inventory.part_code,
      __inventory.uom_code,
      __inventory.quantity);
  END IF;

  RAISE NOTICE 'balance of % gained on % of %', __inventory.part_code, __inventory.quantity, __inventory.uom_code;

END;
$$;


ALTER FUNCTION balance.gain_stock_on_order_qty(__facility_code character varying, __inventory common.document_body) OWNER TO postgres;

--
-- TOC entry 494 (class 1255 OID 57424)
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
-- TOC entry 495 (class 1255 OID 57425)
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
-- TOC entry 496 (class 1255 OID 57426)
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
-- TOC entry 497 (class 1255 OID 57427)
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
-- TOC entry 498 (class 1255 OID 57428)
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
-- TOC entry 499 (class 1255 OID 57429)
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
-- TOC entry 500 (class 1255 OID 57430)
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
-- TOC entry 501 (class 1255 OID 57431)
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
-- TOC entry 502 (class 1255 OID 57432)
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
-- TOC entry 503 (class 1255 OID 57433)
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
-- TOC entry 504 (class 1255 OID 57434)
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
-- TOC entry 505 (class 1255 OID 57435)
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
-- TOC entry 506 (class 1255 OID 57436)
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
-- TOC entry 507 (class 1255 OID 57437)
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
-- TOC entry 508 (class 1255 OID 57438)
-- Name: loss_stock_en_route_qty(character varying, common.document_body[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_stock_en_route_qty(__facility_code character varying, __inventory common.document_body[]) RETURNS void
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
      en_route_qty = en_route_qty - _item.quantity
    WHERE
      facility_code = __facility_code AND
      part_code = _item.part_code;

    RAISE NOTICE 'balance of % lossed on % of %', _item.part_code, _item.quantity, _item.uom_code;
  END LOOP;

END;
$$;


ALTER FUNCTION balance.loss_stock_en_route_qty(__facility_code character varying, __inventory common.document_body[]) OWNER TO postgres;

--
-- TOC entry 509 (class 1255 OID 57439)
-- Name: loss_stock_en_route_qty(character varying, common.document_body); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_stock_en_route_qty(__facility_code character varying, __inventory common.document_body) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  -- improve: add cast qty against uom and good

  UPDATE
    balance.stock
  SET
    en_route_qty = en_route_qty - __inventory.quantity
  WHERE
    facility_code = __facility_code AND
    part_code = __inventory.part_code;

  RAISE NOTICE 'balance of % lossed on % of %', __inventory.part_code, __inventory.quantity, __inventory.uom_code;

END;
$$;


ALTER FUNCTION balance.loss_stock_en_route_qty(__facility_code character varying, __inventory common.document_body) OWNER TO postgres;

--
-- TOC entry 510 (class 1255 OID 57440)
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
-- TOC entry 511 (class 1255 OID 57441)
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
-- TOC entry 512 (class 1255 OID 57442)
-- Name: loss_stock_on_order_qty(character varying, common.document_body[]); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_stock_on_order_qty(__facility_code character varying, __inventory common.document_body[]) RETURNS void
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
      on_order_qty = on_order_qty - _item.quantity
    WHERE
      facility_code = __facility_code AND
      part_code = _item.part_code;

    RAISE NOTICE 'balance of % lossed on % of %', _item.part_code, _item.quantity, _item.uom_code;
  END LOOP;

END;
$$;


ALTER FUNCTION balance.loss_stock_on_order_qty(__facility_code character varying, __inventory common.document_body[]) OWNER TO postgres;

--
-- TOC entry 513 (class 1255 OID 57443)
-- Name: loss_stock_on_order_qty(character varying, common.document_body); Type: FUNCTION; Schema: balance; Owner: postgres
--

CREATE FUNCTION balance.loss_stock_on_order_qty(__facility_code character varying, __inventory common.document_body) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  -- improve: add cast qty against uom and good

  UPDATE
    balance.stock
  SET
    on_order_qty = on_order_qty - __inventory.quantity
  WHERE
    facility_code = __facility_code AND
    part_code = __inventory.part_code;

  RAISE NOTICE 'balance of % lossed on % of %', __inventory.part_code, __inventory.quantity, __inventory.uom_code;

END;
$$;


ALTER FUNCTION balance.loss_stock_on_order_qty(__facility_code character varying, __inventory common.document_body) OWNER TO postgres;

--
-- TOC entry 514 (class 1255 OID 57444)
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
-- TOC entry 515 (class 1255 OID 57445)
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
-- TOC entry 516 (class 1255 OID 57446)
-- Name: bind_cutoff_and_claim(bigint, bigint); Type: FUNCTION; Schema: binding; Owner: postgres
--

CREATE FUNCTION binding.bind_cutoff_and_claim(__parent_id bigint, __child_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  INSERT INTO
    binding.cutoff_to_claim (
      cutoff_id,
      claim_id)
  VALUES (
    __parent_id,
    __child_id);

END;
$$;


ALTER FUNCTION binding.bind_cutoff_and_claim(__parent_id bigint, __child_id bigint) OWNER TO postgres;

--
-- TOC entry 517 (class 1255 OID 57447)
-- Name: bind_cutoff_and_issue(bigint, bigint); Type: FUNCTION; Schema: binding; Owner: postgres
--

CREATE FUNCTION binding.bind_cutoff_and_issue(__parent_id bigint, __child_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  INSERT INTO
    binding.cutoff_to_issue (
      cutoff_id,
      issue_id)
  VALUES (
    __parent_id,
    __child_id);

END;
$$;


ALTER FUNCTION binding.bind_cutoff_and_issue(__parent_id bigint, __child_id bigint) OWNER TO postgres;

--
-- TOC entry 518 (class 1255 OID 57448)
-- Name: bind_cutoff_and_receipt(bigint, bigint); Type: FUNCTION; Schema: binding; Owner: postgres
--

CREATE FUNCTION binding.bind_cutoff_and_receipt(__parent_id bigint, __child_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  INSERT INTO
    binding.cutoff_to_receipt (
      cutoff_id,
      receipt_id)
  VALUES (
    __parent_id,
    __child_id);

END;
$$;


ALTER FUNCTION binding.bind_cutoff_and_receipt(__parent_id bigint, __child_id bigint) OWNER TO postgres;

--
-- TOC entry 519 (class 1255 OID 57449)
-- Name: bind_cutoff_and_stocktake(bigint, bigint); Type: FUNCTION; Schema: binding; Owner: postgres
--

CREATE FUNCTION binding.bind_cutoff_and_stocktake(__parent_id bigint, __child_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  INSERT INTO
    binding.cutoff_to_stocktake (
      cutoff_id,
      stocktake_id)
  VALUES (
    __parent_id,
    __child_id);

END;
$$;


ALTER FUNCTION binding.bind_cutoff_and_stocktake(__parent_id bigint, __child_id bigint) OWNER TO postgres;

--
-- TOC entry 520 (class 1255 OID 57450)
-- Name: get_claim_binded_to_cutoff(bigint[]); Type: FUNCTION; Schema: binding; Owner: postgres
--

CREATE FUNCTION binding.get_claim_binded_to_cutoff(__cutoff_ids bigint[]) RETURNS bigint[]
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN
    ARRAY (
      SELECT 
        claim_id
      FROM 
        binding.cutoff_to_claim
      WHERE 
        cutoff_id = ANY(__cutoff_ids)
      );

END;
$$;


ALTER FUNCTION binding.get_claim_binded_to_cutoff(__cutoff_ids bigint[]) OWNER TO postgres;

--
-- TOC entry 521 (class 1255 OID 57451)
-- Name: get_claim_binded_to_cutoff(bigint); Type: FUNCTION; Schema: binding; Owner: postgres
--

CREATE FUNCTION binding.get_claim_binded_to_cutoff(__cutoff_id bigint) RETURNS bigint[]
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN
    ARRAY (
      SELECT
        claim_id
      FROM 
        binding.cutoff_to_claim
      WHERE 
        cutoff_id = __cutoff_id
      );

END;
$$;


ALTER FUNCTION binding.get_claim_binded_to_cutoff(__cutoff_id bigint) OWNER TO postgres;

--
-- TOC entry 522 (class 1255 OID 57452)
-- Name: get_cutoff_binded_to(common.document_head); Type: FUNCTION; Schema: binding; Owner: postgres
--

CREATE FUNCTION binding.get_cutoff_binded_to(__head common.document_head) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _cutoff_id bigint;
BEGIN
  CASE __head.doctype
    WHEN 'CLAIM'::common.document_kind THEN
      _cutoff_id := binding.get_cutoff_binded_to_claim(__head.document_id);
    WHEN 'ISSUE'::common.document_kind THEN 
      _cutoff_id := binding.get_cutoff_binded_to_issue(__head.document_id);
    WHEN 'RECEIPT'::common.document_kind THEN 
      _cutoff_id := binding.get_cutoff_binded_to_receipt(__head.document_id);
    WHEN 'STOCKTAKE'::common.document_kind THEN 
      _cutoff_id := binding.get_cutoff_binded_to_stocktake(__head.document_id);
    ELSE
      RAISE EXCEPTION 'unsupported doctype %', __head.doctype;
  END CASE;

  RETURN _cutoff_id;
END;
$$;


ALTER FUNCTION binding.get_cutoff_binded_to(__head common.document_head) OWNER TO postgres;

--
-- TOC entry 523 (class 1255 OID 57453)
-- Name: get_cutoff_binded_to_claim(bigint); Type: FUNCTION; Schema: binding; Owner: postgres
--

CREATE FUNCTION binding.get_cutoff_binded_to_claim(__claim_id bigint) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN
    cutoff_id
  FROM 
    binding.cutoff_to_claim
  WHERE 
    claim_id = __claim_id;
    
END;
$$;


ALTER FUNCTION binding.get_cutoff_binded_to_claim(__claim_id bigint) OWNER TO postgres;

--
-- TOC entry 524 (class 1255 OID 57454)
-- Name: get_cutoff_binded_to_issue(bigint); Type: FUNCTION; Schema: binding; Owner: postgres
--

CREATE FUNCTION binding.get_cutoff_binded_to_issue(__issue_id bigint) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN
    cutoff_id
  FROM 
    binding.cutoff_to_issue
  WHERE 
    issue_id = __issue_id;
    
END;
$$;


ALTER FUNCTION binding.get_cutoff_binded_to_issue(__issue_id bigint) OWNER TO postgres;

--
-- TOC entry 525 (class 1255 OID 57455)
-- Name: get_cutoff_binded_to_receipt(bigint); Type: FUNCTION; Schema: binding; Owner: postgres
--

CREATE FUNCTION binding.get_cutoff_binded_to_receipt(__receipt_id bigint) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN
    cutoff_id
  FROM 
    binding.cutoff_to_receipt
  WHERE 
    receipt_id = __receipt_id;
    
END;
$$;


ALTER FUNCTION binding.get_cutoff_binded_to_receipt(__receipt_id bigint) OWNER TO postgres;

--
-- TOC entry 526 (class 1255 OID 57456)
-- Name: get_cutoff_binded_to_stocktake(bigint); Type: FUNCTION; Schema: binding; Owner: postgres
--

CREATE FUNCTION binding.get_cutoff_binded_to_stocktake(__stocktake_id bigint) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN
    cutoff_id
  FROM 
    binding.cutoff_to_stocktake
  WHERE 
    stocktake_id = __stocktake_id;
    
END;
$$;


ALTER FUNCTION binding.get_cutoff_binded_to_stocktake(__stocktake_id bigint) OWNER TO postgres;

--
-- TOC entry 527 (class 1255 OID 57457)
-- Name: get_issue_binded_to_cutoff(bigint[]); Type: FUNCTION; Schema: binding; Owner: postgres
--

CREATE FUNCTION binding.get_issue_binded_to_cutoff(__cutoff_ids bigint[]) RETURNS bigint[]
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN
    ARRAY (
      SELECT 
        issue_id
      FROM 
        binding.cutoff_to_issue
      WHERE 
        cutoff_id = ANY(__cutoff_ids)
      );

END;
$$;


ALTER FUNCTION binding.get_issue_binded_to_cutoff(__cutoff_ids bigint[]) OWNER TO postgres;

--
-- TOC entry 528 (class 1255 OID 57458)
-- Name: get_issue_binded_to_cutoff(bigint); Type: FUNCTION; Schema: binding; Owner: postgres
--

CREATE FUNCTION binding.get_issue_binded_to_cutoff(__cutoff_id bigint) RETURNS bigint[]
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN
    ARRAY (
      SELECT
        issue_id
      FROM 
        binding.cutoff_to_issue
      WHERE 
        cutoff_id = __cutoff_id
      );

END;
$$;


ALTER FUNCTION binding.get_issue_binded_to_cutoff(__cutoff_id bigint) OWNER TO postgres;

--
-- TOC entry 529 (class 1255 OID 57459)
-- Name: get_receipt_binded_to_cutoff(bigint[]); Type: FUNCTION; Schema: binding; Owner: postgres
--

CREATE FUNCTION binding.get_receipt_binded_to_cutoff(__cutoff_ids bigint[]) RETURNS bigint[]
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN
    ARRAY (
      SELECT 
        receipt_id
      FROM 
        binding.cutoff_to_receipt
      WHERE 
        cutoff_id = ANY(__cutoff_ids)
      );

END;
$$;


ALTER FUNCTION binding.get_receipt_binded_to_cutoff(__cutoff_ids bigint[]) OWNER TO postgres;

--
-- TOC entry 530 (class 1255 OID 57460)
-- Name: get_receipt_binded_to_cutoff(bigint); Type: FUNCTION; Schema: binding; Owner: postgres
--

CREATE FUNCTION binding.get_receipt_binded_to_cutoff(__cutoff_id bigint) RETURNS bigint[]
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN
    ARRAY (
      SELECT
        receipt_id
      FROM 
        binding.cutoff_to_receipt
      WHERE 
        cutoff_id = __cutoff_id
      );

END;
$$;


ALTER FUNCTION binding.get_receipt_binded_to_cutoff(__cutoff_id bigint) OWNER TO postgres;

--
-- TOC entry 531 (class 1255 OID 57461)
-- Name: get_stocktake_binded_to_cutoff(bigint[]); Type: FUNCTION; Schema: binding; Owner: postgres
--

CREATE FUNCTION binding.get_stocktake_binded_to_cutoff(__cutoff_ids bigint[]) RETURNS bigint[]
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN
    ARRAY (
      SELECT 
        stocktake_id
      FROM 
        binding.cutoff_to_stocktake
      WHERE 
        cutoff_id = ANY(__cutoff_ids)
      );

END;
$$;


ALTER FUNCTION binding.get_stocktake_binded_to_cutoff(__cutoff_ids bigint[]) OWNER TO postgres;

--
-- TOC entry 532 (class 1255 OID 57462)
-- Name: get_stocktake_binded_to_cutoff(bigint); Type: FUNCTION; Schema: binding; Owner: postgres
--

CREATE FUNCTION binding.get_stocktake_binded_to_cutoff(__cutoff_id bigint) RETURNS bigint[]
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN
    ARRAY (
      SELECT
        stocktake_id
      FROM 
        binding.cutoff_to_stocktake
      WHERE 
        cutoff_id = __cutoff_id
      );

END;
$$;


ALTER FUNCTION binding.get_stocktake_binded_to_cutoff(__cutoff_id bigint) OWNER TO postgres;

--
-- TOC entry 533 (class 1255 OID 57463)
-- Name: unbind_cutoff_and_claim(bigint, bigint); Type: FUNCTION; Schema: binding; Owner: postgres
--

CREATE FUNCTION binding.unbind_cutoff_and_claim(__parent_id bigint, __child_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  DELETE FROM
    binding.cutoff_to_claim
  WHERE 
    cutoff_id = __parent_id AND
    claim_id = __child_id;

END;
$$;


ALTER FUNCTION binding.unbind_cutoff_and_claim(__parent_id bigint, __child_id bigint) OWNER TO postgres;

--
-- TOC entry 534 (class 1255 OID 57464)
-- Name: unbind_cutoff_and_issue(bigint, bigint); Type: FUNCTION; Schema: binding; Owner: postgres
--

CREATE FUNCTION binding.unbind_cutoff_and_issue(__parent_id bigint, __child_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  DELETE FROM
    binding.cutoff_to_issue
  WHERE 
    cutoff_id = __parent_id AND
    issue_id = __child_id;

END;
$$;


ALTER FUNCTION binding.unbind_cutoff_and_issue(__parent_id bigint, __child_id bigint) OWNER TO postgres;

--
-- TOC entry 535 (class 1255 OID 57465)
-- Name: unbind_cutoff_and_receipt(bigint, bigint); Type: FUNCTION; Schema: binding; Owner: postgres
--

CREATE FUNCTION binding.unbind_cutoff_and_receipt(__parent_id bigint, __child_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  DELETE FROM
    binding.cutoff_to_receipt
  WHERE 
    cutoff_id = __parent_id AND
    receipt_id = __child_id;

END;
$$;


ALTER FUNCTION binding.unbind_cutoff_and_receipt(__parent_id bigint, __child_id bigint) OWNER TO postgres;

--
-- TOC entry 536 (class 1255 OID 57466)
-- Name: unbind_cutoff_and_stocktake(bigint, bigint); Type: FUNCTION; Schema: binding; Owner: postgres
--

CREATE FUNCTION binding.unbind_cutoff_and_stocktake(__parent_id bigint, __child_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  DELETE FROM
    binding.cutoff_to_stocktake
  WHERE 
    cutoff_id = __parent_id AND
    stocktake_id = __child_id;

END;
$$;


ALTER FUNCTION binding.unbind_cutoff_and_stocktake(__parent_id bigint, __child_id bigint) OWNER TO postgres;

--
-- TOC entry 538 (class 1255 OID 57467)
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
-- TOC entry 539 (class 1255 OID 57468)
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
-- TOC entry 540 (class 1255 OID 57469)
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
-- TOC entry 541 (class 1255 OID 57470)
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
-- TOC entry 542 (class 1255 OID 57471)
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
-- TOC entry 543 (class 1255 OID 57472)
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
-- TOC entry 544 (class 1255 OID 57473)
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
-- TOC entry 545 (class 1255 OID 57474)
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
-- TOC entry 546 (class 1255 OID 57475)
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
-- TOC entry 547 (class 1255 OID 57476)
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
-- TOC entry 548 (class 1255 OID 57477)
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
-- TOC entry 550 (class 1255 OID 57478)
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
-- TOC entry 551 (class 1255 OID 57479)
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
-- TOC entry 552 (class 1255 OID 57480)
-- Name: disallow_editing_of_committed_document_body(); Type: FUNCTION; Schema: claim; Owner: postgres
--

CREATE FUNCTION claim.disallow_editing_of_committed_document_body() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  _document_fsmt common.document_fsmt;
BEGIN
  IF (TG_OP = 'INSERT' OR TG_OP = 'UPDATE') THEN

    SELECT 
      head.curr_fsmt
    FROM 
      claim.head
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
      claim.head
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


ALTER FUNCTION claim.disallow_editing_of_committed_document_body() OWNER TO postgres;

--
-- TOC entry 553 (class 1255 OID 57481)
-- Name: do_commit(bigint, boolean); Type: FUNCTION; Schema: claim; Owner: postgres
--

CREATE FUNCTION claim.do_commit(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.outbound_head;
  _body common.document_body[];
  _is_locked boolean;
BEGIN

  _head := claim.get_head(__document_id);

  IF (_head.curr_fsmt = 'COMMITTED'::common.document_fsmt) THEN
    RAISE EXCEPTION 'claim % already committed. exiting', _head.gid;
  END IF;

  _is_locked := cutoff.is_document_locked(_head);
  IF (_is_locked = true) THEN
    RAISE EXCEPTION 'claim % is locked by cutoff. exiting', _head.gid;
  END IF;

  _body := claim.get_body(__document_id);
  _is_locked := stocktake.is_document_locked(_head, _body);
  IF (_is_locked = true) THEN
    RAISE EXCEPTION 'claim % is locked by stocktake. exiting', _head.gid;
  END IF;

  UPDATE
    claim.head
  SET
    curr_fsmt = 'COMMITTED'::common.document_fsmt
  WHERE
    id = __document_id;

  IF (__apprise) THEN
  --
  END IF;

END;
$$;


ALTER FUNCTION claim.do_commit(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 554 (class 1255 OID 57482)
-- Name: do_decommit(bigint, boolean); Type: FUNCTION; Schema: claim; Owner: postgres
--

CREATE FUNCTION claim.do_decommit(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.outbound_head;
  _body common.document_body[];
  _is_locked boolean;
BEGIN

  _head := claim.get_head(__document_id);

  IF (_head.curr_fsmt <> 'COMMITTED'::common.document_fsmt) THEN
    RAISE EXCEPTION 'claim % not committed. exiting', _head.gid;
  END IF;

  _is_locked := cutoff.is_document_locked(_head);
  IF (_is_locked = true) THEN
    RAISE EXCEPTION 'claim % is locked by cutoff. exiting', _head.gid;
  END IF;

  _body := claim.get_body(__document_id);
  _is_locked := stocktake.is_document_locked(_head, _body);
  IF (_is_locked = true) THEN
    RAISE EXCEPTION 'claim % is locked by stocktake. exiting', _head.gid;
  END IF;

  UPDATE
    claim.head
  SET
    curr_fsmt = 'DECOMMITTED'::common.document_fsmt
  WHERE
    id = __document_id;

  IF (__apprise) THEN
  --
  END IF;

END;
$$;


ALTER FUNCTION claim.do_decommit(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 555 (class 1255 OID 57483)
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
-- TOC entry 556 (class 1255 OID 57484)
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
-- TOC entry 557 (class 1255 OID 57485)
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
-- TOC entry 558 (class 1255 OID 57486)
-- Name: get_head(bigint); Type: FUNCTION; Schema: claim; Owner: postgres
--

CREATE FUNCTION claim.get_head(__document_id bigint) RETURNS common.outbound_head
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
    due_date)::common.outbound_head
  FROM 
    claim.head
  WHERE 
    id = __document_id;
END;
$$;


ALTER FUNCTION claim.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 559 (class 1255 OID 57487)
-- Name: get_head_batch(bigint[]); Type: FUNCTION; Schema: claim; Owner: postgres
--

CREATE FUNCTION claim.get_head_batch(__document_ids bigint[]) RETURNS common.outbound_head[]
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
        due_date)::common.outbound_head
      FROM 
        claim.head
      WHERE 
        id = ANY(__document_ids)
    );
END;
$$;


ALTER FUNCTION claim.get_head_batch(__document_ids bigint[]) OWNER TO postgres;

--
-- TOC entry 560 (class 1255 OID 57488)
-- Name: get_head_batch_proposed(character varying, date, date); Type: FUNCTION; Schema: claim; Owner: postgres
--

CREATE FUNCTION claim.get_head_batch_proposed(__facility_code character varying, __date_start date, __date_end date) RETURNS common.outbound_head[]
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
        due_date)::common.outbound_head
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
-- TOC entry 561 (class 1255 OID 57489)
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
-- TOC entry 562 (class 1255 OID 57490)
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
-- TOC entry 563 (class 1255 OID 57491)
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
-- TOC entry 564 (class 1255 OID 57492)
-- Name: submit(common.outbound_head, common.document_body[]); Type: FUNCTION; Schema: claim; Owner: postgres
--

CREATE FUNCTION claim.submit(__head common.outbound_head, __body common.document_body[]) RETURNS bigint
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


ALTER FUNCTION claim.submit(__head common.outbound_head, __body common.document_body[]) OWNER TO postgres;

--
-- TOC entry 565 (class 1255 OID 57493)
-- Name: array_append_distinct(anyarray, anyelement); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.array_append_distinct(anyarray, anyelement) RETURNS anyarray
    LANGUAGE sql
    AS $_$ 
  SELECT ARRAY(SELECT unnest($1) union SELECT $2) 
$_$;


ALTER FUNCTION common.array_append_distinct(anyarray, anyelement) OWNER TO postgres;

--
-- TOC entry 566 (class 1255 OID 57494)
-- Name: array_distinct(anyarray); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.array_distinct(anyarray) RETURNS anyarray
    LANGUAGE sql
    AS $_$
  SELECT ARRAY(SELECT DISTINCT unnest($1))
$_$;


ALTER FUNCTION common.array_distinct(anyarray) OWNER TO postgres;

--
-- TOC entry 567 (class 1255 OID 57495)
-- Name: array_erase(anyarray, anyelement); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.array_erase(anyarray, anyelement) RETURNS anyarray
    LANGUAGE sql
    AS $_$
  SELECT ARRAY(SELECT v FROM unnest($1) g(v) WHERE v <> $2)
$_$;


ALTER FUNCTION common.array_erase(anyarray, anyelement) OWNER TO postgres;

--
-- TOC entry 568 (class 1255 OID 57496)
-- Name: array_sort(anyarray); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.array_sort(anyarray) RETURNS anyarray
    LANGUAGE sql
    AS $_$
  SELECT ARRAY(SELECT unnest($1) ORDER BY 1)
$_$;


ALTER FUNCTION common.array_sort(anyarray) OWNER TO postgres;

--
-- TOC entry 569 (class 1255 OID 57497)
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
-- TOC entry 570 (class 1255 OID 57498)
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
-- TOC entry 571 (class 1255 OID 57499)
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
-- TOC entry 572 (class 1255 OID 57500)
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
-- TOC entry 573 (class 1255 OID 57501)
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
-- TOC entry 574 (class 1255 OID 57502)
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
-- TOC entry 575 (class 1255 OID 57503)
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
-- TOC entry 576 (class 1255 OID 57504)
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
-- TOC entry 577 (class 1255 OID 57505)
-- Name: convert_inbound_to_document_head(common.inbound_head); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.convert_inbound_to_document_head(__inbound_head common.inbound_head) RETURNS common.document_head
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __inbound_head.document_id,
    __inbound_head.gid,
    __inbound_head.display_name,
    __inbound_head.document_date,
    __inbound_head.facility_code,
    __inbound_head.curr_fsmt,
    __inbound_head.doctype
  )::common.document_head;

END;
$$;


ALTER FUNCTION common.convert_inbound_to_document_head(__inbound_head common.inbound_head) OWNER TO postgres;

--
-- TOC entry 578 (class 1255 OID 57506)
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
-- TOC entry 579 (class 1255 OID 57507)
-- Name: convert_outbound_to_document_head(common.outbound_head); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.convert_outbound_to_document_head(__outbound_head common.outbound_head) RETURNS common.document_head
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __outbound_head.document_id,
    __outbound_head.gid,
    __outbound_head.display_name,
    __outbound_head.document_date,
    __outbound_head.facility_code,
    __outbound_head.curr_fsmt,
    __outbound_head.doctype
  )::common.document_head;

END;
$$;


ALTER FUNCTION common.convert_outbound_to_document_head(__outbound_head common.outbound_head) OWNER TO postgres;

--
-- TOC entry 580 (class 1255 OID 57508)
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
-- TOC entry 581 (class 1255 OID 57509)
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
-- TOC entry 582 (class 1255 OID 57510)
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
-- TOC entry 583 (class 1255 OID 57511)
-- Name: get_document_head_types(common.policy_mode); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.get_document_head_types(__policy_mode common.policy_mode) RETURNS common.document_kind[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY (
      SELECT
        document_kind_name
      FROM 
        common.cutoff_policy
      WHERE 
        policy_mode_applied = __policy_mode
    );

END;
$$;


ALTER FUNCTION common.get_document_head_types(__policy_mode common.policy_mode) OWNER TO postgres;

--
-- TOC entry 584 (class 1255 OID 57512)
-- Name: get_policy_mode(common.document_kind); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION common.get_policy_mode(__document_kind common.document_kind) RETURNS common.policy_mode
    LANGUAGE plpgsql
    AS $$
DECLARE
  _policy_mode common.policy_mode;
BEGIN

  SELECT
    policy_mode_applied
  FROM 
    common.cutoff_policy
  WHERE 
    document_kind_name = __document_kind
  INTO
    _policy_mode;
  IF NOT FOUND THEN
    _policy_mode := 'DISABLED'::common.policy_mode;
  END IF;

  RETURN _policy_mode;

END;
$$;


ALTER FUNCTION common.get_policy_mode(__document_kind common.document_kind) OWNER TO postgres;

--
-- TOC entry 585 (class 1255 OID 57513)
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
-- TOC entry 586 (class 1255 OID 57514)
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
-- TOC entry 588 (class 1255 OID 57515)
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
-- TOC entry 589 (class 1255 OID 57516)
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
-- TOC entry 590 (class 1255 OID 57517)
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
-- TOC entry 591 (class 1255 OID 57518)
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
-- TOC entry 592 (class 1255 OID 57519)
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
-- TOC entry 593 (class 1255 OID 57520)
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
-- TOC entry 594 (class 1255 OID 57521)
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
-- TOC entry 595 (class 1255 OID 57522)
-- Name: destroy(bigint); Type: FUNCTION; Schema: cutoff; Owner: postgres
--

CREATE FUNCTION cutoff.destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  DELETE FROM cutoff.head WHERE id = __document_id;
END;
$$;


ALTER FUNCTION cutoff.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 596 (class 1255 OID 57523)
-- Name: do_blockers_check(common.document_head, common.document_kind, date, date); Type: FUNCTION; Schema: cutoff; Owner: postgres
--

CREATE FUNCTION cutoff.do_blockers_check(__head common.document_head, __document_kind common.document_kind, __date_start date, __date_end date) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _document_heads common.document_head[];
BEGIN
  CASE __document_kind
    WHEN 'CLAIM'::common.document_kind THEN
      _document_heads := claim.get_head_batch_proposed(
          __facility_code := __head.facility_code,
          __date_start := __date_start,
          __date_end := __date_end);
    WHEN 'ISSUE'::common.document_kind THEN 
      _document_heads := issue.get_head_batch_proposed(
          __facility_code := __head.facility_code,
          __date_start := __date_start,
          __date_end := __date_end);
    WHEN 'STOCKTAKE'::common.document_kind THEN 
      _document_heads := stocktake.get_head_batch_proposed(
          __facility_code := __head.facility_code,
          __date_start := __date_start,
          __date_end := __date_end);
    ELSE
      -- do nothing
  END CASE;
  PERFORM cutoff.do_blockers_denote(
      __document_id := __head.document_id,
      __head := _document_heads);
END;
$$;


ALTER FUNCTION cutoff.do_blockers_check(__head common.document_head, __document_kind common.document_kind, __date_start date, __date_end date) OWNER TO postgres;

--
-- TOC entry 597 (class 1255 OID 57524)
-- Name: do_blockers_delete(bigint); Type: FUNCTION; Schema: cutoff; Owner: postgres
--

CREATE FUNCTION cutoff.do_blockers_delete(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM cutoff.blocker WHERE head_id = __document_id;
END;
$$;


ALTER FUNCTION cutoff.do_blockers_delete(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 598 (class 1255 OID 57525)
-- Name: do_blockers_denote(bigint, common.document_head[]); Type: FUNCTION; Schema: cutoff; Owner: postgres
--

CREATE FUNCTION cutoff.do_blockers_denote(__document_id bigint, __head common.document_head[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  INSERT INTO
    cutoff.blocker (
      head_id, 
      blocker_document) 
  VALUES (
    __document_id, 
    unnest(__head)::common.document_head);

END;
$$;


ALTER FUNCTION cutoff.do_blockers_denote(__document_id bigint, __head common.document_head[]) OWNER TO postgres;

--
-- TOC entry 599 (class 1255 OID 57526)
-- Name: do_blockers_exclude(common.document_head, common.document_kind, date, date); Type: FUNCTION; Schema: cutoff; Owner: postgres
--

CREATE FUNCTION cutoff.do_blockers_exclude(__head common.document_head, __document_kind common.document_kind, __date_start date, __date_end date) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _document_heads common.document_head[];
  _document_head common.document_head;
  _past_cutof_ids bigint[];
BEGIN
  _past_cutof_ids := cutoff.get_all_comitted(__facility_code := __head.facility_code);

  CASE __document_kind
    WHEN 'CLAIM'::common.document_kind THEN
      _document_heads := claim.get_head_batch(__document_ids := _past_cutof_ids);
      FOREACH _document_head IN
        ARRAY _document_heads
      LOOP
        IF (_document_head.curr_fsmt = 'COMMITTED'::common.document_fsmt) THEN
          PERFORM binding.unbind_cutoff_and_claim(
              __parent_id := __head.document_id,
              __child_id := _document_head.document_id);
        END IF;
      END LOOP;

      _document_heads := claim.get_head_batch_proposed(__head.facility_code, __date_start, __date_end);
      FOREACH _document_head IN
        ARRAY _document_heads
      LOOP
        PERFORM binding.bind_cutoff_and_claim(
            __parent_id := __head.document_id,
            __child_id := _document_head.document_id);
      END LOOP;

    WHEN 'ISSUE'::common.document_kind THEN 
      _document_heads := issue.get_head_batch(__document_ids := _past_cutof_ids);
      FOREACH _document_head IN
        ARRAY _document_heads
      LOOP
        IF (_document_head.curr_fsmt = 'COMMITTED'::common.document_fsmt) THEN
          PERFORM binding.unbind_cutoff_and_issue(
              __parent_id := __head.document_id,
              __child_id := _document_head.document_id);
        END IF;
      END LOOP;

      _document_heads := issue.get_head_batch_proposed(__head.facility_code, __date_start, __date_end);
      FOREACH _document_head IN
        ARRAY _document_heads
      LOOP
        PERFORM binding.bind_cutoff_and_issue(
            __parent_id := __head.document_id,
            __child_id := _document_head.document_id);
      END LOOP;
    
    WHEN 'STOCKTAKE'::common.document_kind THEN 
      _document_heads := stocktake.get_head_batch(__document_ids := _past_cutof_ids);
      FOREACH _document_head IN
        ARRAY _document_heads
      LOOP
        IF (_document_head.curr_fsmt = 'COMMITTED'::common.document_fsmt) THEN
          PERFORM binding.unbind_cutoff_and_stocktake(
              __parent_id := __head.document_id,
              __child_id := _document_head.document_id);
        END IF;
      END LOOP;

      _document_heads := stocktake.get_head_batch_proposed(__head.facility_code, __date_start, __date_end);
      FOREACH _document_head IN
        ARRAY _document_heads
      LOOP
        PERFORM binding.bind_cutoff_and_stocktake(
            __parent_id := __head.document_id,
            __child_id := _document_head.document_id);
      END LOOP;

    ELSE
      -- do nothing
  END CASE;
END;
$$;


ALTER FUNCTION cutoff.do_blockers_exclude(__head common.document_head, __document_kind common.document_kind, __date_start date, __date_end date) OWNER TO postgres;

--
-- TOC entry 600 (class 1255 OID 57527)
-- Name: do_commit(bigint); Type: FUNCTION; Schema: cutoff; Owner: postgres
--

CREATE FUNCTION cutoff.do_commit(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _document_head_types common.document_kind[];
  _document_head_type common.document_kind;
  _head common.document_head;
  _date_start date;
  _date_end date;
  _has_blockers boolean;
BEGIN

  _head := cutoff.get_head(__document_id := __document_id);
  _date_start := cutoff.get_last_cutoff_date(_head.facility_code);
  _date_end := _head.document_date;

  -- check state
  IF (_head.curr_fsmt = 'COMMITTED') THEN
    RAISE EXCEPTION 'cutoff already committed';
  END IF;

  _has_blockers := cutoff.has_blockers(__document_id := __document_id);
  -- cleart previously blockers analyze result
  IF (_has_blockers IS TRUE) THEN
    PERFORM cutoff.do_blockers_delete(__document_id := __document_id);
  END IF;

  -- analyze blockers
  _document_head_types := common.get_document_head_types(__policy_mode := 'ENFORCING'::common.policy_mode);
  FOREACH _document_head_type IN
    ARRAY _document_head_types
  LOOP
    PERFORM cutoff.do_blockers_check(
        __head := _head, 
        __document_kind := _document_head_type, 
        __date_start := _date_start, 
        __date_end := _date_end);
  END LOOP;

  _has_blockers := cutoff.has_blockers(__document_id := __document_id);
  IF (_has_blockers IS TRUE) THEN
    RAISE WARNING 'there is bloking documents. can not perform commit of cutoff %', __document_id;
    RETURN; 
  END IF;

  _document_head_types := common.get_document_head_types(__policy_mode := 'PERMISSIVE'::common.policy_mode);
  FOREACH _document_head_type IN
    ARRAY _document_head_types
  LOOP
    PERFORM cutoff.do_blockers_exclude(
        __head := _head, 
        __document_kind := _document_head_type, 
        __date_start := _date_start, 
        __date_end := _date_end);
  END LOOP;

  UPDATE
    cutoff.head
  SET
    curr_fsmt = 'COMMITTED'
  WHERE
    id = __document_id;

END;
$$;


ALTER FUNCTION cutoff.do_commit(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 587 (class 1255 OID 57528)
-- Name: do_decommit(bigint, boolean); Type: FUNCTION; Schema: cutoff; Owner: postgres
--

CREATE FUNCTION cutoff.do_decommit(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.document_head;
BEGIN

  _head := cutoff.get_head(__document_id);

  IF (_head.curr_fsmt <> 'COMMITTED'::common.document_fsmt) THEN
    RAISE NOTICE 'cutoff % not committed. exiting', _head.gid;
    RETURN;
  END IF;

  UPDATE
    cutoff.head
  SET
    curr_fsmt = 'DECOMMITTED'::common.document_fsmt
  WHERE
    id = __document_id;

  DELETE FROM binding.cutoff_to_claim WHERE cutoff_id = __document_id;
  DELETE FROM binding.cutoff_to_issue WHERE cutoff_id = __document_id;
  DELETE FROM binding.cutoff_to_receipt WHERE cutoff_id = __document_id;
  DELETE FROM binding.cutoff_to_stocktake WHERE cutoff_id = __document_id;

  IF (__apprise) THEN
  --
  END IF;

END;
$$;


ALTER FUNCTION cutoff.do_decommit(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 601 (class 1255 OID 57529)
-- Name: generate_display_name(date, character varying); Type: FUNCTION; Schema: cutoff; Owner: postgres
--

CREATE FUNCTION cutoff.generate_display_name(__document_date date, __facility_code character varying) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
DECLARE
  _week_number integer;
  _sequence_number integer;
  _document_kind_code character varying;
BEGIN

  _week_number := schedule.get_julianized_week(__document_date);
  _sequence_number := cutoff.numerator_nextval(__facility_code, _week_number);
  _document_kind_code := common.get_document_abbrevation('CUTOFF');

  RETURN concat(_document_kind_code,
    '-', __facility_code,
    '-', common.number_encode2(_week_number, true),
    common.number_encode4(_sequence_number, true));

END;
$$;


ALTER FUNCTION cutoff.generate_display_name(__document_date date, __facility_code character varying) OWNER TO postgres;

--
-- TOC entry 602 (class 1255 OID 57530)
-- Name: get_all_comitted(character varying); Type: FUNCTION; Schema: cutoff; Owner: postgres
--

CREATE FUNCTION cutoff.get_all_comitted(__facility_code character varying) RETURNS bigint[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY (
      SELECT
        id
      FROM 
        cutoff.head
      WHERE 
        facility_code = __facility_code AND
        curr_fsmt = 'COMMITTED'::common.document_fsmt
    );
END;
$$;


ALTER FUNCTION cutoff.get_all_comitted(__facility_code character varying) OWNER TO postgres;

--
-- TOC entry 603 (class 1255 OID 57531)
-- Name: get_gid_by_id(bigint); Type: FUNCTION; Schema: cutoff; Owner: postgres
--

CREATE FUNCTION cutoff.get_gid_by_id(__document_id bigint) RETURNS uuid
    LANGUAGE plpgsql
    AS $$
DECLARE
  --_id bigint;
BEGIN
  RETURN gid
    FROM 
      cutoff.head
    WHERE 
      id = __document_id;
END;
$$;


ALTER FUNCTION cutoff.get_gid_by_id(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 604 (class 1255 OID 57532)
-- Name: get_head(bigint); Type: FUNCTION; Schema: cutoff; Owner: postgres
--

CREATE FUNCTION cutoff.get_head(__document_id bigint) RETURNS common.document_head
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
    'CUTOFF'::common.document_kind)::common.document_head
  FROM 
    cutoff.head
  WHERE 
    id = __document_id;
END;
$$;


ALTER FUNCTION cutoff.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 605 (class 1255 OID 57533)
-- Name: get_head_batch(bigint[]); Type: FUNCTION; Schema: cutoff; Owner: postgres
--

CREATE FUNCTION cutoff.get_head_batch(__document_ids bigint[]) RETURNS common.document_head[]
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
        'CUTOFF'::common.document_kind)::common.document_head
      FROM 
        cutoff.head
      WHERE 
        id = ANY(__document_ids)
    );
END;
$$;


ALTER FUNCTION cutoff.get_head_batch(__document_ids bigint[]) OWNER TO postgres;

--
-- TOC entry 606 (class 1255 OID 57534)
-- Name: get_head_batch_proposed(character varying, date, date); Type: FUNCTION; Schema: cutoff; Owner: postgres
--

CREATE FUNCTION cutoff.get_head_batch_proposed(__facility_code character varying, __date_start date, __date_end date) RETURNS common.document_head[]
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
        'CUTOFF'::common.document_kind)::common.document_head
      FROM 
        cutoff.head
      WHERE 
        facility_code = __facility_code AND
        curr_fsmt = 'PROPOSED' AND
        document_date BETWEEN __date_start AND __date_end
    );
END;
$$;


ALTER FUNCTION cutoff.get_head_batch_proposed(__facility_code character varying, __date_start date, __date_end date) OWNER TO postgres;

--
-- TOC entry 607 (class 1255 OID 57535)
-- Name: get_id_by_gid(uuid); Type: FUNCTION; Schema: cutoff; Owner: postgres
--

CREATE FUNCTION cutoff.get_id_by_gid(__document_gid uuid) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  --_id bigint;
BEGIN
  RETURN id
    FROM 
      cutoff.head
    WHERE 
      gid = __document_gid;
END;
$$;


ALTER FUNCTION cutoff.get_id_by_gid(__document_gid uuid) OWNER TO postgres;

--
-- TOC entry 608 (class 1255 OID 57536)
-- Name: get_last_cutoff_date(character varying); Type: FUNCTION; Schema: cutoff; Owner: postgres
--

CREATE FUNCTION cutoff.get_last_cutoff_date(__facility_code character varying) RETURNS date
    LANGUAGE plpgsql
    AS $$
DECLARE
  __cutoff_date date;
BEGIN
  SELECT
    head.document_date
  FROM 
    cutoff.head
  WHERE 
    head.curr_fsmt = 'COMMITTED'::common.document_fsmt AND 
    head.facility_code = __facility_code
  ORDER BY
    head.document_date DESC
  LIMIT 1
  INTO __cutoff_date;
  IF NOT FOUND THEN
    __cutoff_date := schedule.get_date_of_julianized_day(1);
  END IF;
  RETURN __cutoff_date;
END;
$$;


ALTER FUNCTION cutoff.get_last_cutoff_date(__facility_code character varying) OWNER TO postgres;

--
-- TOC entry 609 (class 1255 OID 57537)
-- Name: has_blockers(bigint); Type: FUNCTION; Schema: cutoff; Owner: postgres
--

CREATE FUNCTION cutoff.has_blockers(__document_id bigint) RETURNS boolean
    LANGUAGE plpgsql
    AS $$
BEGIN
  PERFORM
    blocker.head_id
  FROM 
    cutoff.blocker
  WHERE 
    blocker.head_id = __document_id
  LIMIT 1;
  IF FOUND THEN
    RETURN true;
  ELSE 
    RETURN false;
  END IF;
END;
$$;


ALTER FUNCTION cutoff.has_blockers(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 610 (class 1255 OID 57538)
-- Name: is_document_locked(common.document_head); Type: FUNCTION; Schema: cutoff; Owner: postgres
--

CREATE FUNCTION cutoff.is_document_locked(__head common.document_head) RETURNS boolean
    LANGUAGE plpgsql
    AS $$
DECLARE
  _last_cutoff_date date;
  _policy_mode common.policy_mode;
  _is_locked boolean;
  _binded_cutoff bigint;
BEGIN
  _last_cutoff_date := cutoff.get_last_cutoff_date(__head.facility_code);
  _policy_mode := common.get_policy_mode(__head.doctype);

  IF (__head.document_date > _last_cutoff_date) THEN
    _is_locked := false;
  ELSE
    IF (_policy_mode = 'ENFORCING') THEN
      _is_locked := true;
    ELSIF (_policy_mode = 'PERMISSIVE') THEN
      _binded_cutoff := binding.get_cutoff_binded_to(__head);
      IF (_binded_cutoff IS NOT NULL) THEN
        _is_locked := false;
      ELSE
        _is_locked := true;
      END IF;
    ELSE
      _is_locked := false; --!
    END IF;
  END IF;

  RETURN _is_locked;
END;
$$;


ALTER FUNCTION cutoff.is_document_locked(__head common.document_head) OWNER TO postgres;

--
-- TOC entry 611 (class 1255 OID 57539)
-- Name: numerator_nextval(character varying, integer); Type: FUNCTION; Schema: cutoff; Owner: postgres
--

CREATE FUNCTION cutoff.numerator_nextval(__facility_code character varying, __julianized_week integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
  _seqence_number integer;
BEGIN

  UPDATE
    cutoff.numerator
  SET
    current_value = current_value + 1
  WHERE
    julianized_week = __julianized_week AND
    facility_code = __facility_code
  RETURNING current_value INTO _seqence_number;

  IF (NOT FOUND) THEN
    INSERT INTO
      cutoff.numerator (
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


ALTER FUNCTION cutoff.numerator_nextval(__facility_code character varying, __julianized_week integer) OWNER TO postgres;

--
-- TOC entry 612 (class 1255 OID 57540)
-- Name: submit(common.document_head); Type: FUNCTION; Schema: cutoff; Owner: postgres
--

CREATE FUNCTION cutoff.submit(__head common.document_head) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _document_id bigint;
BEGIN

  IF (__head.facility_code IS NULL) THEN
    RAISE EXCEPTION 'field facility_code is not defined';
  END IF;

  IF (__head.document_date IS NULL) THEN
    __head.document_date := now()::date;
  END IF;

  IF (__head.display_name IS NULL) THEN
    __head.display_name := cutoff.generate_display_name(
        __document_date := __head.document_date,
        __facility_code := __head.facility_code);
  END IF;

  INSERT INTO
    cutoff.head (
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

  RETURN _document_id;

END;
$$;


ALTER FUNCTION cutoff.submit(__head common.document_head) OWNER TO postgres;

--
-- TOC entry 613 (class 1255 OID 57541)
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
-- TOC entry 5053 (class 0 OID 0)
-- Dependencies: 613
-- Name: FUNCTION destroy(__document_id bigint); Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON FUNCTION ebom.destroy(__document_id bigint) IS 'delete engineering bill of materials';


--
-- TOC entry 614 (class 1255 OID 57542)
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
-- TOC entry 5054 (class 0 OID 0)
-- Dependencies: 614
-- Name: FUNCTION do_commit(__document_id bigint, __apprise boolean); Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON FUNCTION ebom.do_commit(__document_id bigint, __apprise boolean) IS 'commit engineering bill of materials and create inventory items';


--
-- TOC entry 615 (class 1255 OID 57543)
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
-- TOC entry 5055 (class 0 OID 0)
-- Dependencies: 615
-- Name: FUNCTION get_body(__document_id bigint); Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON FUNCTION ebom.get_body(__document_id bigint) IS 'get records of engineering bill of materials';


--
-- TOC entry 616 (class 1255 OID 57544)
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
-- TOC entry 5056 (class 0 OID 0)
-- Dependencies: 616
-- Name: FUNCTION get_gid_by_id(__document_id bigint); Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON FUNCTION ebom.get_gid_by_id(__document_id bigint) IS 'get uuid if engineering bill of materials by id';


--
-- TOC entry 617 (class 1255 OID 57545)
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
-- TOC entry 5057 (class 0 OID 0)
-- Dependencies: 617
-- Name: FUNCTION get_head(__document_id bigint); Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON FUNCTION ebom.get_head(__document_id bigint) IS 'get heading information of engineering bill of materials';


--
-- TOC entry 618 (class 1255 OID 57546)
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
-- TOC entry 5058 (class 0 OID 0)
-- Dependencies: 618
-- Name: FUNCTION get_id_by_gid(__document_gid uuid); Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON FUNCTION ebom.get_id_by_gid(__document_gid uuid) IS 'get id of engineering bill of materials by uuid';


--
-- TOC entry 619 (class 1255 OID 57547)
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
-- TOC entry 5059 (class 0 OID 0)
-- Dependencies: 619
-- Name: FUNCTION resubmit(__document_id bigint, __body common.component_specification[]); Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON FUNCTION ebom.resubmit(__document_id bigint, __body common.component_specification[]) IS 'recreate engineering bill of materials';


--
-- TOC entry 620 (class 1255 OID 57548)
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
    curr_fsmt = 'DECOMMITTED'::common.document_fsmt
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
-- TOC entry 5060 (class 0 OID 0)
-- Dependencies: 620
-- Name: FUNCTION revert(__document_id bigint, __apprise boolean); Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON FUNCTION ebom.revert(__document_id bigint, __apprise boolean) IS 'revert engineering bill of materials';


--
-- TOC entry 623 (class 1255 OID 57549)
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
-- TOC entry 5061 (class 0 OID 0)
-- Dependencies: 623
-- Name: FUNCTION submit(__head common.ebom_head, __body common.component_specification[]); Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON FUNCTION ebom.submit(__head common.ebom_head, __body common.component_specification[]) IS 'create engineering bill of materials';


--
-- TOC entry 624 (class 1255 OID 57550)
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
-- TOC entry 625 (class 1255 OID 57551)
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
-- TOC entry 626 (class 1255 OID 57552)
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
-- TOC entry 627 (class 1255 OID 57553)
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
-- TOC entry 628 (class 1255 OID 57554)
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
-- TOC entry 629 (class 1255 OID 57555)
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
-- TOC entry 630 (class 1255 OID 57556)
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
-- TOC entry 631 (class 1255 OID 57557)
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
-- TOC entry 632 (class 1255 OID 57558)
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
-- TOC entry 633 (class 1255 OID 57559)
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
-- TOC entry 621 (class 1255 OID 57560)
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
-- TOC entry 634 (class 1255 OID 57561)
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
-- TOC entry 635 (class 1255 OID 57562)
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
-- TOC entry 636 (class 1255 OID 57563)
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
-- TOC entry 637 (class 1255 OID 57564)
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
-- TOC entry 638 (class 1255 OID 57565)
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
-- TOC entry 639 (class 1255 OID 57566)
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
-- TOC entry 640 (class 1255 OID 57567)
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
-- TOC entry 641 (class 1255 OID 57568)
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
-- TOC entry 642 (class 1255 OID 57569)
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
-- TOC entry 643 (class 1255 OID 57570)
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
-- TOC entry 644 (class 1255 OID 57571)
-- Name: do_commit(bigint, boolean); Type: FUNCTION; Schema: issue; Owner: postgres
--

CREATE FUNCTION issue.do_commit(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.outbound_head;
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
-- TOC entry 645 (class 1255 OID 57572)
-- Name: do_decommit(bigint, boolean); Type: FUNCTION; Schema: issue; Owner: postgres
--

CREATE FUNCTION issue.do_decommit(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.outbound_head;
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
    curr_fsmt = 'DECOMMITTED'::common.document_fsmt
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


ALTER FUNCTION issue.do_decommit(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 646 (class 1255 OID 57573)
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
-- TOC entry 647 (class 1255 OID 57574)
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
-- TOC entry 648 (class 1255 OID 57575)
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
-- TOC entry 649 (class 1255 OID 57576)
-- Name: get_head(bigint); Type: FUNCTION; Schema: issue; Owner: postgres
--

CREATE FUNCTION issue.get_head(__document_id bigint) RETURNS common.outbound_head
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
    due_date)::common.outbound_head
  FROM 
    issue.head
  WHERE 
    id = __document_id;
END;
$$;


ALTER FUNCTION issue.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 650 (class 1255 OID 57577)
-- Name: get_head_batch(bigint[]); Type: FUNCTION; Schema: issue; Owner: postgres
--

CREATE FUNCTION issue.get_head_batch(__document_ids bigint[]) RETURNS common.outbound_head[]
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
        due_date)::common.outbound_head
      FROM 
        issue.head
      WHERE 
        id = ANY(__document_ids)
    );
END;
$$;


ALTER FUNCTION issue.get_head_batch(__document_ids bigint[]) OWNER TO postgres;

--
-- TOC entry 651 (class 1255 OID 57578)
-- Name: get_head_batch_proposed(character varying, date, date); Type: FUNCTION; Schema: issue; Owner: postgres
--

CREATE FUNCTION issue.get_head_batch_proposed(__facility_code character varying, __date_start date, __date_end date) RETURNS common.outbound_head[]
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
        due_date)::common.outbound_head
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
-- TOC entry 652 (class 1255 OID 57579)
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
-- TOC entry 653 (class 1255 OID 57580)
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
-- TOC entry 537 (class 1255 OID 57581)
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
-- TOC entry 654 (class 1255 OID 57582)
-- Name: submit(common.outbound_head, common.document_body[]); Type: FUNCTION; Schema: issue; Owner: postgres
--

CREATE FUNCTION issue.submit(__head common.outbound_head, __body common.document_body[]) RETURNS bigint
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


ALTER FUNCTION issue.submit(__head common.outbound_head, __body common.document_body[]) OWNER TO postgres;

--
-- TOC entry 655 (class 1255 OID 57583)
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
-- TOC entry 656 (class 1255 OID 57584)
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
-- TOC entry 657 (class 1255 OID 57585)
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
-- TOC entry 658 (class 1255 OID 57586)
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
-- TOC entry 659 (class 1255 OID 57587)
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
-- TOC entry 660 (class 1255 OID 57588)
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
-- TOC entry 661 (class 1255 OID 57589)
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
-- TOC entry 662 (class 1255 OID 57590)
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
-- TOC entry 663 (class 1255 OID 57591)
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
-- TOC entry 664 (class 1255 OID 57592)
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
-- TOC entry 665 (class 1255 OID 57593)
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
-- TOC entry 549 (class 1255 OID 57594)
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
-- TOC entry 666 (class 1255 OID 57595)
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
-- TOC entry 667 (class 1255 OID 57596)
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
-- TOC entry 668 (class 1255 OID 57597)
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
-- TOC entry 669 (class 1255 OID 57598)
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
-- TOC entry 670 (class 1255 OID 57599)
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
-- TOC entry 671 (class 1255 OID 57600)
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
-- TOC entry 672 (class 1255 OID 57601)
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
-- TOC entry 673 (class 1255 OID 57602)
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
-- TOC entry 674 (class 1255 OID 57603)
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
-- TOC entry 675 (class 1255 OID 57604)
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
-- TOC entry 676 (class 1255 OID 57605)
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
-- TOC entry 677 (class 1255 OID 57606)
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
-- TOC entry 678 (class 1255 OID 57607)
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
-- TOC entry 681 (class 1255 OID 57608)
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
-- TOC entry 682 (class 1255 OID 57609)
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
-- TOC entry 683 (class 1255 OID 57610)
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
-- TOC entry 684 (class 1255 OID 57611)
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
-- TOC entry 685 (class 1255 OID 57612)
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
-- TOC entry 686 (class 1255 OID 57613)
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
-- TOC entry 687 (class 1255 OID 57614)
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
-- TOC entry 688 (class 1255 OID 57615)
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
-- TOC entry 689 (class 1255 OID 57616)
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
-- TOC entry 622 (class 1255 OID 57617)
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
-- TOC entry 679 (class 1255 OID 57618)
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
-- TOC entry 680 (class 1255 OID 57619)
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
-- TOC entry 690 (class 1255 OID 57620)
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
-- TOC entry 691 (class 1255 OID 57621)
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
-- TOC entry 692 (class 1255 OID 57622)
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
-- TOC entry 693 (class 1255 OID 57623)
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
-- TOC entry 694 (class 1255 OID 57624)
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
-- TOC entry 695 (class 1255 OID 57625)
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
-- TOC entry 696 (class 1255 OID 57626)
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
-- TOC entry 697 (class 1255 OID 57627)
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
-- TOC entry 698 (class 1255 OID 57628)
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
-- TOC entry 699 (class 1255 OID 57629)
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
-- TOC entry 701 (class 1255 OID 57630)
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
    curr_fsmt = 'DECOMMITTED'::common.document_fsmt
  WHERE
    id = __document_id;

  IF (__apprise IS true) THEN
  -- delete unreferenced inventory items
  END IF;

END;
$$;


ALTER FUNCTION process.revert(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 5062 (class 0 OID 0)
-- Dependencies: 701
-- Name: FUNCTION revert(__document_id bigint, __apprise boolean); Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON FUNCTION process.revert(__document_id bigint, __apprise boolean) IS 'revert process definition';


--
-- TOC entry 702 (class 1255 OID 57631)
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
-- TOC entry 703 (class 1255 OID 57632)
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
-- TOC entry 704 (class 1255 OID 57633)
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
-- TOC entry 705 (class 1255 OID 57634)
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
-- TOC entry 706 (class 1255 OID 57635)
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
-- TOC entry 707 (class 1255 OID 57636)
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
-- TOC entry 708 (class 1255 OID 57637)
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
-- TOC entry 711 (class 1255 OID 57638)
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
-- TOC entry 712 (class 1255 OID 57639)
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
-- TOC entry 713 (class 1255 OID 57640)
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
-- TOC entry 714 (class 1255 OID 57641)
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
-- TOC entry 715 (class 1255 OID 57642)
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
-- TOC entry 716 (class 1255 OID 57643)
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
-- TOC entry 717 (class 1255 OID 57644)
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
-- TOC entry 719 (class 1255 OID 57645)
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
    curr_fsmt = 'DECOMMITTED'::common.document_fsmt
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
-- TOC entry 5063 (class 0 OID 0)
-- Dependencies: 719
-- Name: FUNCTION revert(__document_id bigint, __apprise boolean); Type: COMMENT; Schema: product; Owner: postgres
--

COMMENT ON FUNCTION product.revert(__document_id bigint, __apprise boolean) IS 'revert product definition';


--
-- TOC entry 720 (class 1255 OID 57646)
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
-- TOC entry 721 (class 1255 OID 57647)
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
-- TOC entry 722 (class 1255 OID 57648)
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
-- TOC entry 723 (class 1255 OID 57649)
-- Name: do_commit(bigint, boolean); Type: FUNCTION; Schema: receipt; Owner: postgres
--

CREATE FUNCTION receipt.do_commit(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.inbound_head;
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
-- TOC entry 724 (class 1255 OID 57650)
-- Name: do_decommit(bigint, boolean); Type: FUNCTION; Schema: receipt; Owner: postgres
--

CREATE FUNCTION receipt.do_decommit(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.inbound_head;
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
    curr_fsmt = 'DECOMMITTED'::common.document_fsmt
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


ALTER FUNCTION receipt.do_decommit(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 725 (class 1255 OID 57651)
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
-- TOC entry 700 (class 1255 OID 57652)
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
-- TOC entry 709 (class 1255 OID 57653)
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
-- TOC entry 710 (class 1255 OID 57654)
-- Name: get_head(bigint); Type: FUNCTION; Schema: receipt; Owner: postgres
--

CREATE FUNCTION receipt.get_head(__document_id bigint) RETURNS common.inbound_head
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
    ship_from)::common.inbound_head
  FROM 
    receipt.head
  WHERE 
    id = __document_id;
END;
$$;


ALTER FUNCTION receipt.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 718 (class 1255 OID 57655)
-- Name: get_head_batch(bigint[]); Type: FUNCTION; Schema: receipt; Owner: postgres
--

CREATE FUNCTION receipt.get_head_batch(__document_ids bigint[]) RETURNS common.inbound_head[]
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
        ship_from)::common.inbound_head
      FROM 
        receipt.head
      WHERE 
        id = ANY(__document_ids)
    );
END;
$$;


ALTER FUNCTION receipt.get_head_batch(__document_ids bigint[]) OWNER TO postgres;

--
-- TOC entry 726 (class 1255 OID 57656)
-- Name: get_head_batch_proposed(character varying, date, date); Type: FUNCTION; Schema: receipt; Owner: postgres
--

CREATE FUNCTION receipt.get_head_batch_proposed(__facility_code character varying, __date_start date, __date_end date) RETURNS common.inbound_head[]
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
        ship_from)::common.inbound_head
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
-- TOC entry 727 (class 1255 OID 57657)
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
-- TOC entry 728 (class 1255 OID 57658)
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
-- TOC entry 729 (class 1255 OID 57659)
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
-- TOC entry 730 (class 1255 OID 57660)
-- Name: submit(common.inbound_head, common.document_body[]); Type: FUNCTION; Schema: receipt; Owner: postgres
--

CREATE FUNCTION receipt.submit(__head common.inbound_head, __body common.document_body[]) RETURNS bigint
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


ALTER FUNCTION receipt.submit(__head common.inbound_head, __body common.document_body[]) OWNER TO postgres;

--
-- TOC entry 731 (class 1255 OID 57661)
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
-- TOC entry 732 (class 1255 OID 57662)
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
-- TOC entry 733 (class 1255 OID 57663)
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
-- TOC entry 734 (class 1255 OID 57664)
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
-- TOC entry 5064 (class 0 OID 0)
-- Dependencies: 734
-- Name: FUNCTION destroy(__document_id bigint); Type: COMMENT; Schema: response; Owner: postgres
--

COMMENT ON FUNCTION response.destroy(__document_id bigint) IS 'delete response report';


--
-- TOC entry 735 (class 1255 OID 57665)
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
-- TOC entry 737 (class 1255 OID 57666)
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
-- TOC entry 738 (class 1255 OID 57667)
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
-- TOC entry 739 (class 1255 OID 57668)
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
-- TOC entry 740 (class 1255 OID 57669)
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
-- TOC entry 5065 (class 0 OID 0)
-- Dependencies: 740
-- Name: FUNCTION get_gid_by_id(__document_id bigint); Type: COMMENT; Schema: response; Owner: postgres
--

COMMENT ON FUNCTION response.get_gid_by_id(__document_id bigint) IS 'get uuid of response report by id';


--
-- TOC entry 741 (class 1255 OID 57670)
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
-- TOC entry 742 (class 1255 OID 57671)
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
-- TOC entry 5066 (class 0 OID 0)
-- Dependencies: 742
-- Name: FUNCTION get_id_by_gid(__document_gid uuid); Type: COMMENT; Schema: response; Owner: postgres
--

COMMENT ON FUNCTION response.get_id_by_gid(__document_gid uuid) IS 'get id of response report by uuid';


--
-- TOC entry 743 (class 1255 OID 57672)
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
-- TOC entry 744 (class 1255 OID 57673)
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
-- TOC entry 745 (class 1255 OID 57674)
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
    curr_fsmt = 'DECOMMITTED'::common.document_fsmt
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
-- TOC entry 747 (class 1255 OID 57675)
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
-- TOC entry 748 (class 1255 OID 57676)
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
-- TOC entry 749 (class 1255 OID 57677)
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
-- TOC entry 750 (class 1255 OID 57678)
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
-- TOC entry 751 (class 1255 OID 57679)
-- Name: assign_issue(bigint); Type: FUNCTION; Schema: stockcard; Owner: postgres
--

CREATE FUNCTION stockcard.assign_issue(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.outbound_head;
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
-- TOC entry 752 (class 1255 OID 57680)
-- Name: assign_issue(common.outbound_head, common.document_body[]); Type: FUNCTION; Schema: stockcard; Owner: postgres
--

CREATE FUNCTION stockcard.assign_issue(__document_head common.outbound_head, __document_body common.document_body[]) RETURNS void
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


ALTER FUNCTION stockcard.assign_issue(__document_head common.outbound_head, __document_body common.document_body[]) OWNER TO postgres;

--
-- TOC entry 753 (class 1255 OID 57681)
-- Name: assign_receipt(bigint); Type: FUNCTION; Schema: stockcard; Owner: postgres
--

CREATE FUNCTION stockcard.assign_receipt(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.inbound_head;
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
-- TOC entry 754 (class 1255 OID 57682)
-- Name: assign_receipt(common.inbound_head, common.document_body[]); Type: FUNCTION; Schema: stockcard; Owner: postgres
--

CREATE FUNCTION stockcard.assign_receipt(__document_head common.inbound_head, __document_body common.document_body[]) RETURNS void
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


ALTER FUNCTION stockcard.assign_receipt(__document_head common.inbound_head, __document_body common.document_body[]) OWNER TO postgres;

--
-- TOC entry 755 (class 1255 OID 57683)
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
-- TOC entry 756 (class 1255 OID 57684)
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
-- TOC entry 757 (class 1255 OID 57685)
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
-- TOC entry 758 (class 1255 OID 57686)
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
-- TOC entry 736 (class 1255 OID 57687)
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
-- TOC entry 746 (class 1255 OID 57688)
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
-- TOC entry 759 (class 1255 OID 57689)
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
-- TOC entry 760 (class 1255 OID 57690)
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
-- TOC entry 761 (class 1255 OID 57691)
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
-- TOC entry 762 (class 1255 OID 57692)
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
-- TOC entry 763 (class 1255 OID 57693)
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
-- TOC entry 764 (class 1255 OID 57694)
-- Name: do_decommit(bigint, boolean); Type: FUNCTION; Schema: stocktake; Owner: postgres
--

CREATE FUNCTION stocktake.do_decommit(__document_id bigint, __apprise boolean DEFAULT true) RETURNS void
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
    curr_fsmt = 'DECOMMITTED'::common.document_fsmt
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


ALTER FUNCTION stocktake.do_decommit(__document_id bigint, __apprise boolean) OWNER TO postgres;

--
-- TOC entry 765 (class 1255 OID 57695)
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
-- TOC entry 766 (class 1255 OID 57696)
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
-- TOC entry 767 (class 1255 OID 57697)
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
-- TOC entry 768 (class 1255 OID 57698)
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
-- TOC entry 769 (class 1255 OID 57699)
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
-- TOC entry 770 (class 1255 OID 57700)
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
-- TOC entry 771 (class 1255 OID 57701)
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
-- TOC entry 772 (class 1255 OID 57702)
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
-- TOC entry 773 (class 1255 OID 57703)
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
-- TOC entry 774 (class 1255 OID 57704)
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
-- TOC entry 775 (class 1255 OID 57705)
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
-- TOC entry 776 (class 1255 OID 57706)
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
-- TOC entry 777 (class 1255 OID 57707)
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
-- TOC entry 778 (class 1255 OID 57708)
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
-- TOC entry 780 (class 1255 OID 57709)
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
-- TOC entry 781 (class 1255 OID 57710)
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
-- TOC entry 782 (class 1255 OID 57711)
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
-- TOC entry 783 (class 1255 OID 57712)
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
-- TOC entry 784 (class 1255 OID 57713)
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
-- TOC entry 785 (class 1255 OID 57714)
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
-- TOC entry 786 (class 1255 OID 57715)
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
-- TOC entry 787 (class 1255 OID 57716)
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
-- TOC entry 788 (class 1255 OID 57717)
-- Name: __binding__bind_cutoff_and_claim(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__binding__bind_cutoff_and_claim() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _cutoff_id bigint;
  _test_cutoff_id CONSTANT bigint := 202;
  _test_claim_id CONSTANT bigint := 102;
BEGIN
  
  RAISE DEBUG '#trace Check __binding__bind_cutoff_and_claim()';

  INSERT INTO claim.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CLAIM-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CLAIM-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CLAIM-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CUTOFF-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CUTOFF-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CUTOFF-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  PERFORM binding.bind_cutoff_and_claim(202, 102);
  SELECT cutoff_id FROM binding.cutoff_to_claim WHERE claim_id = _test_claim_id INTO _cutoff_id;
  PERFORM pgunit.assert_equals(_test_cutoff_id, _cutoff_id, 'Incorrect _cutoff_id value');

END;
$$;


ALTER FUNCTION tests.__binding__bind_cutoff_and_claim() OWNER TO postgres;

--
-- TOC entry 791 (class 1255 OID 57718)
-- Name: __binding__bind_cutoff_and_issue(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__binding__bind_cutoff_and_issue() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _cutoff_id bigint;
  _test_cutoff_id CONSTANT bigint := 202;
  _test_issue_id CONSTANT bigint := 102;
BEGIN
  
  RAISE DEBUG '#trace Check __binding__bind_cutoff_and_issue()';

  INSERT INTO issue.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'ISSUE-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'ISSUE-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'ISSUE-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CUTOFF-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CUTOFF-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CUTOFF-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  PERFORM binding.bind_cutoff_and_issue(202, 102);
  SELECT cutoff_id FROM binding.cutoff_to_issue WHERE issue_id = _test_issue_id INTO _cutoff_id;
  PERFORM pgunit.assert_equals(_test_cutoff_id, _cutoff_id, 'Incorrect _cutoff_id value');

END;
$$;


ALTER FUNCTION tests.__binding__bind_cutoff_and_issue() OWNER TO postgres;

--
-- TOC entry 792 (class 1255 OID 57719)
-- Name: __binding__bind_cutoff_and_receipt(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__binding__bind_cutoff_and_receipt() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _cutoff_id bigint;
  _test_cutoff_id CONSTANT bigint := 202;
  _test_receipt_id CONSTANT bigint := 102;
BEGIN
  
  RAISE DEBUG '#trace Check __binding__bind_cutoff_and_receipt()';

  INSERT INTO receipt.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'RECEIPT-01', '2017-01-01', NULL, 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'RECEIPT-02', '2017-02-01', NULL, 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'RECEIPT-03', '2017-03-01', NULL, 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CUTOFF-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CUTOFF-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CUTOFF-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  PERFORM binding.bind_cutoff_and_receipt(202, 102);
  SELECT cutoff_id FROM binding.cutoff_to_receipt WHERE receipt_id = _test_receipt_id INTO _cutoff_id;
  PERFORM pgunit.assert_equals(_test_cutoff_id, _cutoff_id, 'Incorrect _cutoff_id value');

END;
$$;


ALTER FUNCTION tests.__binding__bind_cutoff_and_receipt() OWNER TO postgres;

--
-- TOC entry 793 (class 1255 OID 57720)
-- Name: __binding__bind_cutoff_and_stocktake(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__binding__bind_cutoff_and_stocktake() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _cutoff_id bigint;
  _test_cutoff_id CONSTANT bigint := 202;
  _test_stocktake_id CONSTANT bigint := 102;
BEGIN
  
  RAISE DEBUG '#trace Check __binding__bind_cutoff_and_stocktake()';

  INSERT INTO stocktake.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'STOCKTAKE-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'STOCKTAKE-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'STOCKTAKE-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CUTOFF-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CUTOFF-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CUTOFF-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  PERFORM binding.bind_cutoff_and_stocktake(202, 102);
  SELECT cutoff_id FROM binding.cutoff_to_stocktake WHERE stocktake_id = _test_stocktake_id INTO _cutoff_id;
  PERFORM pgunit.assert_equals(_test_cutoff_id, _cutoff_id, 'Incorrect _cutoff_id value');

END;
$$;


ALTER FUNCTION tests.__binding__bind_cutoff_and_stocktake() OWNER TO postgres;

--
-- TOC entry 794 (class 1255 OID 57721)
-- Name: __binding__get_claim_binded_to_cutoff(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__binding__get_claim_binded_to_cutoff() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _cutoff_id bigint;
  _array_lengh integer;
  _claim_ids bigint[];
  _test_cutoff_id CONSTANT bigint := 201;
  _test_cutoff_ids CONSTANT bigint[] := ARRAY[202]::bigint[];
  _test_claim_id CONSTANT bigint := 101;
BEGIN
  
  RAISE DEBUG '#trace Check __binding__get_claim_binded_to_cutoff()';

  INSERT INTO claim.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CLAIM-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CLAIM-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CLAIM-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CUTOFF-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CUTOFF-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CUTOFF-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  INSERT INTO binding.cutoff_to_claim VALUES (201,101);
  INSERT INTO binding.cutoff_to_claim VALUES (202,102);
  INSERT INTO binding.cutoff_to_claim VALUES (202,103);

  _claim_ids := binding.get_claim_binded_to_cutoff(_test_cutoff_id);
  _array_lengh := array_length(_claim_ids, 1);
  PERFORM pgunit.assert_equals(_test_claim_id, _claim_ids[1], 'Incorrect _claim_ids value');
  PERFORM pgunit.assert_equals(1, _array_lengh, 'Incorrect _array_lengh value');

  _claim_ids := binding.get_claim_binded_to_cutoff(_test_cutoff_ids);
  _array_lengh := array_length(_claim_ids, 1);
  PERFORM pgunit.assert_equals(2, _array_lengh, 'Incorrect _array_lengh value');

END;
$$;


ALTER FUNCTION tests.__binding__get_claim_binded_to_cutoff() OWNER TO postgres;

--
-- TOC entry 795 (class 1255 OID 57722)
-- Name: __binding__get_cutoff_binded_to(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__binding__get_cutoff_binded_to() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _cutoff_id_01 bigint;
  _cutoff_id_02 bigint;
  _cutoff_id_03 bigint;
  _cutoff_id_05 bigint;
  _cutoff_id_08 bigint;
  _cutoff_id_09 bigint;
  _cutoff_id_10 bigint;
  _delivery_head common.document_head;
  _claim_head common.document_head;
  _despatch_head common.document_head;
  _issue_head common.document_head;
  _receipt_head common.document_head;
  _reserve_head common.document_head;
  _stocktake_head common.document_head;
  _test_cutoff_id CONSTANT bigint := 201;
BEGIN
  
  RAISE DEBUG '#trace Check __binding__get_cutoff_binded_to()';

  INSERT INTO delivery.head VALUES (1001, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'DELIVERY-01', '2017-01-01', NULL, 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (1101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CLAIM-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO despatch.head VALUES (1201, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'DESPATCH-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (1401, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'ISSUE-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (1701, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'RECEIPT-01', '2017-01-01', NULL, 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO reserve.head VALUES (1801, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'RESERVE-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (1901, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'STOCKTAKE-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  
  INSERT INTO cutoff.head VALUES (_test_cutoff_id, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CUTOFF-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');

  INSERT INTO binding.cutoff_to_delivery VALUES (_test_cutoff_id,1001);
  INSERT INTO binding.cutoff_to_claim VALUES (_test_cutoff_id,1101);
  INSERT INTO binding.cutoff_to_despatch VALUES (_test_cutoff_id,1201);
  INSERT INTO binding.cutoff_to_issue VALUES (_test_cutoff_id,1401);
  INSERT INTO binding.cutoff_to_receipt VALUES (_test_cutoff_id,1701);
  INSERT INTO binding.cutoff_to_reserve VALUES (_test_cutoff_id,1801);
  INSERT INTO binding.cutoff_to_stocktake VALUES (_test_cutoff_id,1901);

  _delivery_head := delivery.get_head(1001);
  _claim_head := claim.get_head(1101);
  _despatch_head := despatch.get_head(1201);
  _issue_head := issue.get_head(1401);
  _receipt_head := receipt.get_head(1701);
  _reserve_head := reserve.get_head(1801);
  _stocktake_head := stocktake.get_head(1901);

  _cutoff_id_01 := binding.get_cutoff_binded_to(_delivery_head);
  _cutoff_id_02 := binding.get_cutoff_binded_to(_claim_head);
  _cutoff_id_03 := binding.get_cutoff_binded_to(_despatch_head);
  _cutoff_id_05 := binding.get_cutoff_binded_to(_issue_head);
  _cutoff_id_08 := binding.get_cutoff_binded_to(_receipt_head);
  _cutoff_id_09 := binding.get_cutoff_binded_to(_reserve_head);
  _cutoff_id_10 := binding.get_cutoff_binded_to(_stocktake_head);

  PERFORM pgunit.assert_equals(_test_cutoff_id, _cutoff_id_01, 'Incorrect _cutoff_id_01 value');
  PERFORM pgunit.assert_equals(_test_cutoff_id, _cutoff_id_02, 'Incorrect _cutoff_id_02 value');
  PERFORM pgunit.assert_equals(_test_cutoff_id, _cutoff_id_03, 'Incorrect _cutoff_id_03 value');
  PERFORM pgunit.assert_equals(_test_cutoff_id, _cutoff_id_05, 'Incorrect _cutoff_id_05 value');
  PERFORM pgunit.assert_equals(_test_cutoff_id, _cutoff_id_08, 'Incorrect _cutoff_id_08 value');
  PERFORM pgunit.assert_equals(_test_cutoff_id, _cutoff_id_09, 'Incorrect _cutoff_id_09 value');
  PERFORM pgunit.assert_equals(_test_cutoff_id, _cutoff_id_10, 'Incorrect _cutoff_id_10 value');

END;
$$;


ALTER FUNCTION tests.__binding__get_cutoff_binded_to() OWNER TO postgres;

--
-- TOC entry 779 (class 1255 OID 57723)
-- Name: __binding__get_cutoff_binded_to_claim(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__binding__get_cutoff_binded_to_claim() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _cutoff_id bigint;
  _array_lengh integer;
  _claim_ids bigint[];
  _test_cutoff_id CONSTANT bigint := 201;
  _test_cutoff_ids CONSTANT bigint[] := ARRAY[202]::bigint[];
  _test_claim_id CONSTANT bigint := 101;
BEGIN
  
  RAISE DEBUG '#trace Check __binding__get_cutoff_binded_to_claim()';

  INSERT INTO claim.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CLAIM-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CLAIM-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CLAIM-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CUTOFF-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CUTOFF-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CUTOFF-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  INSERT INTO binding.cutoff_to_claim VALUES (201,101);
  INSERT INTO binding.cutoff_to_claim VALUES (202,102);
  INSERT INTO binding.cutoff_to_claim VALUES (202,103);

  _cutoff_id := binding.get_cutoff_binded_to_claim(_test_claim_id);
  PERFORM pgunit.assert_equals(_test_cutoff_id, _cutoff_id, 'Incorrect _cutoff_id value');

END;
$$;


ALTER FUNCTION tests.__binding__get_cutoff_binded_to_claim() OWNER TO postgres;

--
-- TOC entry 789 (class 1255 OID 57724)
-- Name: __binding__get_cutoff_binded_to_issue(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__binding__get_cutoff_binded_to_issue() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _cutoff_id bigint;
  _array_lengh integer;
  _issue_ids bigint[];
  _test_cutoff_id CONSTANT bigint := 201;
  _test_cutoff_ids CONSTANT bigint[] := ARRAY[202]::bigint[];
  _test_issue_id CONSTANT bigint := 101;
BEGIN
  
  RAISE DEBUG '#trace Check __binding__get_cutoff_binded_to_issue()';

  INSERT INTO issue.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'ISSUE-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'ISSUE-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'ISSUE-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CUTOFF-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CUTOFF-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CUTOFF-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  INSERT INTO binding.cutoff_to_issue VALUES (201,101);
  INSERT INTO binding.cutoff_to_issue VALUES (202,102);
  INSERT INTO binding.cutoff_to_issue VALUES (202,103);

  _cutoff_id := binding.get_cutoff_binded_to_issue(_test_issue_id);
  PERFORM pgunit.assert_equals(_test_cutoff_id, _cutoff_id, 'Incorrect _cutoff_id value');

END;
$$;


ALTER FUNCTION tests.__binding__get_cutoff_binded_to_issue() OWNER TO postgres;

--
-- TOC entry 790 (class 1255 OID 57725)
-- Name: __binding__get_cutoff_binded_to_receipt(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__binding__get_cutoff_binded_to_receipt() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _cutoff_id bigint;
  _array_lengh integer;
  _receipt_ids bigint[];
  _test_cutoff_id CONSTANT bigint := 201;
  _test_cutoff_ids CONSTANT bigint[] := ARRAY[202]::bigint[];
  _test_receipt_id CONSTANT bigint := 101;
BEGIN
  
  RAISE DEBUG '#trace Check __binding__get_cutoff_binded_to_receipt()';

  INSERT INTO receipt.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'RECEIPT-01', '2017-01-01', NULL, 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'RECEIPT-02', '2017-02-01', NULL, 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'RECEIPT-03', '2017-03-01', NULL, 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CUTOFF-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CUTOFF-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CUTOFF-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  INSERT INTO binding.cutoff_to_receipt VALUES (201,101);
  INSERT INTO binding.cutoff_to_receipt VALUES (202,102);
  INSERT INTO binding.cutoff_to_receipt VALUES (202,103);

  _cutoff_id := binding.get_cutoff_binded_to_receipt(_test_receipt_id);
  PERFORM pgunit.assert_equals(_test_cutoff_id, _cutoff_id, 'Incorrect _cutoff_id value');

END;
$$;


ALTER FUNCTION tests.__binding__get_cutoff_binded_to_receipt() OWNER TO postgres;

--
-- TOC entry 796 (class 1255 OID 57726)
-- Name: __binding__get_cutoff_binded_to_stocktake(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__binding__get_cutoff_binded_to_stocktake() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _cutoff_id bigint;
  _array_lengh integer;
  _stocktake_ids bigint[];
  _test_cutoff_id CONSTANT bigint := 201;
  _test_cutoff_ids CONSTANT bigint[] := ARRAY[202]::bigint[];
  _test_stocktake_id CONSTANT bigint := 101;
BEGIN
  
  RAISE DEBUG '#trace Check __binding__get_cutoff_binded_to_stocktake()';

  INSERT INTO stocktake.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'STOCKTAKE-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'STOCKTAKE-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'STOCKTAKE-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CUTOFF-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CUTOFF-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CUTOFF-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  INSERT INTO binding.cutoff_to_stocktake VALUES (201,101);
  INSERT INTO binding.cutoff_to_stocktake VALUES (202,102);
  INSERT INTO binding.cutoff_to_stocktake VALUES (202,103);

  _cutoff_id := binding.get_cutoff_binded_to_stocktake(_test_stocktake_id);
  PERFORM pgunit.assert_equals(_test_cutoff_id, _cutoff_id, 'Incorrect _cutoff_id value');

END;
$$;


ALTER FUNCTION tests.__binding__get_cutoff_binded_to_stocktake() OWNER TO postgres;

--
-- TOC entry 797 (class 1255 OID 57727)
-- Name: __binding__get_issue_binded_to_cutoff(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__binding__get_issue_binded_to_cutoff() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _cutoff_id bigint;
  _array_lengh integer;
  _issue_ids bigint[];
  _test_cutoff_id CONSTANT bigint := 201;
  _test_cutoff_ids CONSTANT bigint[] := ARRAY[202]::bigint[];
  _test_issue_id CONSTANT bigint := 101;
BEGIN
  
  RAISE DEBUG '#trace Check __binding__get_issue_binded_to_cutoff()';

  INSERT INTO issue.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'ISSUE-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'ISSUE-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'ISSUE-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CUTOFF-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CUTOFF-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CUTOFF-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  INSERT INTO binding.cutoff_to_issue VALUES (201,101);
  INSERT INTO binding.cutoff_to_issue VALUES (202,102);
  INSERT INTO binding.cutoff_to_issue VALUES (202,103);

  _issue_ids := binding.get_issue_binded_to_cutoff(_test_cutoff_id);
  _array_lengh := array_length(_issue_ids, 1);
  PERFORM pgunit.assert_equals(_test_issue_id, _issue_ids[1], 'Incorrect _issue_ids value');
  PERFORM pgunit.assert_equals(1, _array_lengh, 'Incorrect _array_lengh value');

  _issue_ids := binding.get_issue_binded_to_cutoff(_test_cutoff_ids);
  _array_lengh := array_length(_issue_ids, 1);
  PERFORM pgunit.assert_equals(2, _array_lengh, 'Incorrect _array_lengh value');

END;
$$;


ALTER FUNCTION tests.__binding__get_issue_binded_to_cutoff() OWNER TO postgres;

--
-- TOC entry 798 (class 1255 OID 57728)
-- Name: __binding__get_receipt_binded_to_cutoff(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__binding__get_receipt_binded_to_cutoff() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _cutoff_id bigint;
  _array_lengh integer;
  _receipt_ids bigint[];
  _test_cutoff_id CONSTANT bigint := 201;
  _test_cutoff_ids CONSTANT bigint[] := ARRAY[202]::bigint[];
  _test_receipt_id CONSTANT bigint := 101;
BEGIN
  
  RAISE DEBUG '#trace Check __binding__get_receipt_binded_to_cutoff()';

  INSERT INTO receipt.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'RECEIPT-01', '2017-01-01', NULL, 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'RECEIPT-02', '2017-02-01', NULL, 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'RECEIPT-03', '2017-03-01', NULL, 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CUTOFF-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CUTOFF-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CUTOFF-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  INSERT INTO binding.cutoff_to_receipt VALUES (201,101);
  INSERT INTO binding.cutoff_to_receipt VALUES (202,102);
  INSERT INTO binding.cutoff_to_receipt VALUES (202,103);

  _receipt_ids := binding.get_receipt_binded_to_cutoff(_test_cutoff_id);
  _array_lengh := array_length(_receipt_ids, 1);
  PERFORM pgunit.assert_equals(_test_receipt_id, _receipt_ids[1], 'Incorrect _receipt_ids value');
  PERFORM pgunit.assert_equals(1, _array_lengh, 'Incorrect _array_lengh value');

  _receipt_ids := binding.get_receipt_binded_to_cutoff(_test_cutoff_ids);
  _array_lengh := array_length(_receipt_ids, 1);
  PERFORM pgunit.assert_equals(2, _array_lengh, 'Incorrect _array_lengh value');

END;
$$;


ALTER FUNCTION tests.__binding__get_receipt_binded_to_cutoff() OWNER TO postgres;

--
-- TOC entry 799 (class 1255 OID 57729)
-- Name: __binding__get_stocktake_binded_to_cutoff(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__binding__get_stocktake_binded_to_cutoff() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _cutoff_id bigint;
  _array_lengh integer;
  _stocktake_ids bigint[];
  _test_cutoff_id CONSTANT bigint := 201;
  _test_cutoff_ids CONSTANT bigint[] := ARRAY[202]::bigint[];
  _test_stocktake_id CONSTANT bigint := 101;
BEGIN
  
  RAISE DEBUG '#trace Check __binding__get_stocktake_binded_to_cutoff()';

  INSERT INTO stocktake.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'STOCKTAKE-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'STOCKTAKE-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'STOCKTAKE-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CUTOFF-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CUTOFF-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CUTOFF-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  INSERT INTO binding.cutoff_to_stocktake VALUES (201,101);
  INSERT INTO binding.cutoff_to_stocktake VALUES (202,102);
  INSERT INTO binding.cutoff_to_stocktake VALUES (202,103);

  _stocktake_ids := binding.get_stocktake_binded_to_cutoff(_test_cutoff_id);
  _array_lengh := array_length(_stocktake_ids, 1);
  PERFORM pgunit.assert_equals(_test_stocktake_id, _stocktake_ids[1], 'Incorrect _stocktake_ids value');
  PERFORM pgunit.assert_equals(1, _array_lengh, 'Incorrect _array_lengh value');

  _stocktake_ids := binding.get_stocktake_binded_to_cutoff(_test_cutoff_ids);
  _array_lengh := array_length(_stocktake_ids, 1);
  PERFORM pgunit.assert_equals(2, _array_lengh, 'Incorrect _array_lengh value');

END;
$$;


ALTER FUNCTION tests.__binding__get_stocktake_binded_to_cutoff() OWNER TO postgres;

--
-- TOC entry 800 (class 1255 OID 57730)
-- Name: __binding__unbind_cutoff_and_claim(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__binding__unbind_cutoff_and_claim() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _cutoff_id bigint;
  _test_cutoff_id CONSTANT bigint := 201;
  _test_claim_id CONSTANT bigint := 101;
BEGIN
  
  RAISE DEBUG '#trace Check __binding__unbind_cutoff_and_claim()';

  INSERT INTO claim.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CLAIM-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CLAIM-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CLAIM-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CUTOFF-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CUTOFF-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CUTOFF-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  INSERT INTO binding.cutoff_to_claim VALUES (201,101);
  INSERT INTO binding.cutoff_to_claim VALUES (202,102);
  INSERT INTO binding.cutoff_to_claim VALUES (202,103);

  PERFORM binding.unbind_cutoff_and_claim(_test_cutoff_id, _test_claim_id);
  SELECT cutoff_id FROM binding.cutoff_to_claim WHERE claim_id = _test_claim_id INTO _cutoff_id;
  PERFORM pgunit.assert_null(_cutoff_id, 'Incorrect _cutoff_id value');

END;
$$;


ALTER FUNCTION tests.__binding__unbind_cutoff_and_claim() OWNER TO postgres;

--
-- TOC entry 801 (class 1255 OID 57731)
-- Name: __binding__unbind_cutoff_and_issue(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__binding__unbind_cutoff_and_issue() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _cutoff_id bigint;
  _test_cutoff_id CONSTANT bigint := 201;
  _test_issue_id CONSTANT bigint := 101;
BEGIN
  
  RAISE DEBUG '#trace Check __binding__unbind_cutoff_and_issue()';

  INSERT INTO issue.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'ISSUE-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'ISSUE-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'ISSUE-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CUTOFF-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CUTOFF-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CUTOFF-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  INSERT INTO binding.cutoff_to_issue VALUES (201,101);
  INSERT INTO binding.cutoff_to_issue VALUES (202,102);
  INSERT INTO binding.cutoff_to_issue VALUES (202,103);

  PERFORM binding.unbind_cutoff_and_issue(_test_cutoff_id, _test_issue_id);
  SELECT cutoff_id FROM binding.cutoff_to_issue WHERE issue_id = _test_issue_id INTO _cutoff_id;
  PERFORM pgunit.assert_null(_cutoff_id, 'Incorrect _cutoff_id value');

END;
$$;


ALTER FUNCTION tests.__binding__unbind_cutoff_and_issue() OWNER TO postgres;

--
-- TOC entry 802 (class 1255 OID 57732)
-- Name: __binding__unbind_cutoff_and_receipt(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__binding__unbind_cutoff_and_receipt() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _cutoff_id bigint;
  _test_cutoff_id CONSTANT bigint := 201;
  _test_receipt_id CONSTANT bigint := 101;
BEGIN
  
  RAISE DEBUG '#trace Check __binding__unbind_cutoff_and_receipt()';

  INSERT INTO receipt.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'RECEIPT-01', '2017-01-01', NULL, 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'RECEIPT-02', '2017-02-01', NULL, 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'RECEIPT-03', '2017-03-01', NULL, 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CUTOFF-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CUTOFF-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CUTOFF-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  INSERT INTO binding.cutoff_to_receipt VALUES (201,101);
  INSERT INTO binding.cutoff_to_receipt VALUES (202,102);
  INSERT INTO binding.cutoff_to_receipt VALUES (202,103);

  PERFORM binding.unbind_cutoff_and_receipt(_test_cutoff_id, _test_receipt_id);
  SELECT cutoff_id FROM binding.cutoff_to_receipt WHERE receipt_id = _test_receipt_id INTO _cutoff_id;
  PERFORM pgunit.assert_null(_cutoff_id, 'Incorrect _cutoff_id value');

END;
$$;


ALTER FUNCTION tests.__binding__unbind_cutoff_and_receipt() OWNER TO postgres;

--
-- TOC entry 803 (class 1255 OID 57733)
-- Name: __binding__unbind_cutoff_and_stocktake(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__binding__unbind_cutoff_and_stocktake() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _cutoff_id bigint;
  _array_lengh integer;
  _stocktake_ids bigint[];
  _stocktake_id bigint;
  _test_cutoff_id CONSTANT bigint := 201;
  _test_cutoff_ids CONSTANT bigint[] := ARRAY[202]::bigint[];
  _test_stocktake_id CONSTANT bigint := 101;
BEGIN
  
  RAISE DEBUG '#trace Check __binding__unbind_cutoff_and_stocktake()';

  INSERT INTO stocktake.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'STOCKTAKE-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'STOCKTAKE-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'STOCKTAKE-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (201, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CUTOFF-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (202, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CUTOFF-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (203, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CUTOFF-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  INSERT INTO binding.cutoff_to_stocktake VALUES (201,101);
  INSERT INTO binding.cutoff_to_stocktake VALUES (202,102);
  INSERT INTO binding.cutoff_to_stocktake VALUES (202,103);

  PERFORM binding.unbind_cutoff_and_stocktake(_test_cutoff_id, _test_stocktake_id);
  SELECT cutoff_id FROM binding.cutoff_to_stocktake WHERE stocktake_id = _test_stocktake_id INTO _cutoff_id;
  PERFORM pgunit.assert_null(_cutoff_id, 'Incorrect _cutoff_id value');

END;
$$;


ALTER FUNCTION tests.__binding__unbind_cutoff_and_stocktake() OWNER TO postgres;

--
-- TOC entry 804 (class 1255 OID 57734)
-- Name: __claim__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__claim__destroy() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.outbound_head;
BEGIN
  
  RAISE DEBUG '#trace Check __claim__destroy()';

  INSERT INTO claim.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CLAIM-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
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
-- TOC entry 805 (class 1255 OID 57735)
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
-- TOC entry 806 (class 1255 OID 57736)
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
-- TOC entry 807 (class 1255 OID 57737)
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

  INSERT INTO claim.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CLAIM-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
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
-- TOC entry 809 (class 1255 OID 57738)
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

  INSERT INTO claim.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CLAIM-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CLAIM-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CLAIM-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  _gid := claim.get_gid_by_id(_test_id);
  PERFORM pgunit.assert_equals(_test_gid, _gid, 'Incorrect _gid value');

END;
$$;


ALTER FUNCTION tests.__claim__get_gid_by_id() OWNER TO postgres;

--
-- TOC entry 810 (class 1255 OID 57739)
-- Name: __claim__get_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__claim__get_head() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.outbound_head;
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

  INSERT INTO claim.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CLAIM-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
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
-- TOC entry 811 (class 1255 OID 57740)
-- Name: __claim__get_head_batch(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__claim__get_head_batch() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _heads common.outbound_head[];
  _head common.outbound_head;
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

  INSERT INTO claim.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CLAIM-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
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
-- TOC entry 812 (class 1255 OID 57741)
-- Name: __claim__get_head_batch_proposed(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__claim__get_head_batch_proposed() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _heads common.outbound_head[];
  _head common.outbound_head;
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

  INSERT INTO claim.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CLAIM-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
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
-- TOC entry 813 (class 1255 OID 57742)
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

  INSERT INTO claim.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CLAIM-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CLAIM-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO claim.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CLAIM-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  _id := claim.get_id_by_gid(_test_gid);
  PERFORM pgunit.assert_equals(_test_id, _id, 'Incorrect _id value');

END;
$$;


ALTER FUNCTION tests.__claim__get_id_by_gid() OWNER TO postgres;

--
-- TOC entry 814 (class 1255 OID 57743)
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
-- TOC entry 815 (class 1255 OID 57744)
-- Name: __claim__resubmit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__claim__resubmit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.outbound_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','CLAIM-01','2017-01-01','A1','PROPOSED','CLAIM','B1','2017-02-01')]::common.outbound_head[];
  _test_body_submit CONSTANT common.document_body[] := ARRAY[('good1',10,'m'), ('good2',20,'m')]::common.document_body[];
  _test_body_resubmit CONSTANT common.document_body[] := ARRAY[('good3',10,'m'), ('good4',20,'m')]::common.document_body[];
  _head common.outbound_head;
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
-- TOC entry 817 (class 1255 OID 57745)
-- Name: __claim__submit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__claim__submit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.outbound_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','CLAIM-01','2017-01-01','A1','PROPOSED','CLAIM','B1','2017-02-01')]::common.outbound_head[];
  _test_body CONSTANT common.document_body[] := ARRAY[('good1',10,'m'), ('good2',20,'m')]::common.document_body[];
  _head common.outbound_head;
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
-- TOC entry 818 (class 1255 OID 57746)
-- Name: __common__convert_inbound_to_document_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__common__convert_inbound_to_document_head() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_goal_head CONSTANT common.goal_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','GOAL-01','2017-01-01','A1','PROPOSED','GOAL')]::common.goal_head[];
  _test_document_head CONSTANT common.document_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','CUTOFF-01','2017-01-01','A1','PROPOSED','CUTOFF')]::common.document_head[];
  _test_inbound_head CONSTANT common.inbound_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','RECEIPT-01','2017-01-01','A1','PROPOSED','RECEIPT','B1')]::common.inbound_head[];
  _test_converted_head CONSTANT common.document_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','RECEIPT-01','2017-01-01','A1','PROPOSED','RECEIPT')]::common.document_head[];
  _test_outbound_head CONSTANT common.outbound_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','ISSUE-01','2017-01-01','A1','PROPOSED','ISSUE','B1','2017-02-01')]::common.outbound_head[];
  _document_head common.document_head;

BEGIN
  
  RAISE DEBUG '#trace Check __common__convert_inbound_to_document_head()';
  
  _document_head := common.convert_inbound_to_document_head(_test_inbound_head[1]);
  RAISE NOTICE 'NOTICE %', _document_head;

  PERFORM pgunit.assert_equals(_test_converted_head[1], _document_head, 'Incorrect _document_head value');

END;
$$;


ALTER FUNCTION tests.__common__convert_inbound_to_document_head() OWNER TO postgres;

--
-- TOC entry 819 (class 1255 OID 57747)
-- Name: __common__convert_outbound_to_document_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__common__convert_outbound_to_document_head() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_outbound_head CONSTANT common.outbound_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','ISSUE-01','2017-01-01','A1','PROPOSED','ISSUE','B1','2017-02-01')]::common.outbound_head[];
  _test_converted_head CONSTANT common.document_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','ISSUE-01','2017-01-01','A1','PROPOSED','ISSUE')]::common.document_head[];
  _document_head common.document_head;

BEGIN
  
  RAISE DEBUG '#trace Check __common__convert_outbound_to_document_head()';
  
  _document_head := common.convert_outbound_to_document_head(_test_outbound_head[1]);

  PERFORM pgunit.assert_equals(_test_converted_head[1], _document_head, 'Incorrect _document_head value');

END;
$$;


ALTER FUNCTION tests.__common__convert_outbound_to_document_head() OWNER TO postgres;

--
-- TOC entry 820 (class 1255 OID 57748)
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
-- TOC entry 821 (class 1255 OID 57749)
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
-- TOC entry 822 (class 1255 OID 57750)
-- Name: __common__get_document_head_types(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__common__get_document_head_types() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_document_head_types CONSTANT common.document_kind[] := ARRAY['ISSUE', 'RECEIPT']::common.document_kind[];
  _document_head_types common.document_kind[];
BEGIN
  
  RAISE DEBUG '#trace Check __common__get_document_head_types()';

  TRUNCATE TABLE common.cutoff_policy;
  INSERT INTO common.cutoff_policy VALUES ('ISSUE', 'PERMISSIVE');
  INSERT INTO common.cutoff_policy VALUES ('RECEIPT', 'PERMISSIVE');
  INSERT INTO common.cutoff_policy VALUES ('CLAIM', 'ENFORCING');
  
  _document_head_types := common.get_document_head_types('PERMISSIVE');
  PERFORM pgunit.assert_array_equals(_test_document_head_types, _document_head_types, 'Incorrect _document_head_types value');

END;
$$;


ALTER FUNCTION tests.__common__get_document_head_types() OWNER TO postgres;

--
-- TOC entry 823 (class 1255 OID 57751)
-- Name: __common__get_policy_mode(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__common__get_policy_mode() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _cutoff_policy common.policy_mode;
  _test_cutoff_policy CONSTANT common.policy_mode := 'ENFORCING'::common.policy_mode;
BEGIN
  
  RAISE DEBUG '#trace Check __common__get_policy_mode()';

  TRUNCATE TABLE common.cutoff_policy;

  INSERT INTO common.cutoff_policy VALUES ('ISSUE', 'ENFORCING');

  _cutoff_policy := common.get_policy_mode('ISSUE');

  PERFORM pgunit.assert_equals(_test_cutoff_policy, _cutoff_policy, 'Incorrect _cutoff_policy value');

END;
$$;


ALTER FUNCTION tests.__common__get_policy_mode() OWNER TO postgres;

--
-- TOC entry 824 (class 1255 OID 57752)
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
-- TOC entry 827 (class 1255 OID 57756)
-- Name: __cutoff__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__cutoff__destroy() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _cutoff_id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __cutoff__destroy()';

  INSERT INTO cutoff.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CUTOFF-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CUTOFF-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CUTOFF-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  PERFORM cutoff.destroy(101); -- + add not allowed delete test
  
  SELECT id FROM cutoff.head WHERE id = 101 INTO _cutoff_id;

  PERFORM pgunit.assert_null(_cutoff_id, 'Incorrect _cutoff_id value');

END;
$$;


ALTER FUNCTION tests.__cutoff__destroy() OWNER TO postgres;

--
-- TOC entry 828 (class 1255 OID 57757)
-- Name: __cutoff__generate_display_name(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__cutoff__generate_display_name() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _display_name character varying;
BEGIN
  
  RAISE DEBUG '#trace Check __cutoff__generate_display_name()';
  
  INSERT INTO schedule.calendar VALUES ('2017-01-01', 1, 1, 1, 1);
  
  _display_name := cutoff.generate_display_name('2017-01-01', 'A1');
  PERFORM pgunit.assert_equals('CUT-A1-AB1AA0', _display_name, 'Incorrect _abbrevation value');

END;
$$;


ALTER FUNCTION tests.__cutoff__generate_display_name() OWNER TO postgres;

--
-- TOC entry 829 (class 1255 OID 57758)
-- Name: __cutoff__get_all_comitted(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__cutoff__get_all_comitted() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_cutoff_ids CONSTANT bigint[] := ARRAY[101, 102]::bigint[];
  _cutoff_ids bigint[];
BEGIN
  
  RAISE DEBUG '#trace Check __cutoff__get_all_comitted()';

  INSERT INTO cutoff.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CUTOFF-01', '2017-01-01', NULL, 'A1', 'DECOMMITTED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CUTOFF-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CUTOFF-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  _cutoff_ids := cutoff.get_all_comitted('A1');
  PERFORM pgunit.assert_array_equals(_test_cutoff_ids, _cutoff_ids, 'Incorrect _cutoff_ids value');

END;
$$;


ALTER FUNCTION tests.__cutoff__get_all_comitted() OWNER TO postgres;

--
-- TOC entry 825 (class 1255 OID 57759)
-- Name: __cutoff__get_gid_by_id(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__cutoff__get_gid_by_id() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_id CONSTANT bigint := 102;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a'::uuid;
  _gid uuid;
BEGIN
  
  RAISE DEBUG '#trace Check __cutoff__get_gid_by_id()';

  INSERT INTO cutoff.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CUTOFF-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CUTOFF-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CUTOFF-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  _gid := cutoff.get_gid_by_id(_test_id);
  PERFORM pgunit.assert_equals(_test_gid, _gid, 'Incorrect _gid value');

END;
$$;


ALTER FUNCTION tests.__cutoff__get_gid_by_id() OWNER TO postgres;

--
-- TOC entry 830 (class 1255 OID 57760)
-- Name: __cutoff__get_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__cutoff__get_head() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.document_head;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a'::uuid;
  _test_display_name CONSTANT character varying := 'CUTOFF-02';
  _test_document_date CONSTANT date := '2017-02-01'::date;
  _test_facility_code CONSTANT character varying := 'A1';
  _test_curr_fsmt CONSTANT common.document_fsmt := 'COMMITTED'::common.document_fsmt;
  _test_doctype CONSTANT common.document_kind := 'CUTOFF'::common.document_kind;
BEGIN
  
  RAISE DEBUG '#trace Check __cutoff__get_head()';

  INSERT INTO cutoff.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CUTOFF-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CUTOFF-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CUTOFF-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  
  _head := cutoff.get_head(102);
  PERFORM pgunit.assert_equals(_test_gid, _head.gid, 'Incorrect gid value');
  PERFORM pgunit.assert_equals(_test_display_name, _head.display_name, 'Incorrect display_name value');
  PERFORM pgunit.assert_equals(_test_document_date, _head.document_date, 'Incorrect document_date value');
  PERFORM pgunit.assert_equals(_test_facility_code, _head.facility_code, 'Incorrect facility_code value');
  PERFORM pgunit.assert_equals(_test_curr_fsmt, _head.curr_fsmt, 'Incorrect curr_fsmt value');
  PERFORM pgunit.assert_equals(_test_doctype, _head.doctype, 'Incorrect doctype value');

  _head := cutoff.get_head(103);
  PERFORM pgunit.assert_not_equals(_test_gid, _head.gid, 'Incorrect gid value');
  
  _head := cutoff.get_head(104);
  PERFORM pgunit.assert_null(_head, 'Incorrect _head value');

END;
$$;


ALTER FUNCTION tests.__cutoff__get_head() OWNER TO postgres;

--
-- TOC entry 831 (class 1255 OID 57761)
-- Name: __cutoff__get_id_by_gid(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__cutoff__get_id_by_gid() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_id CONSTANT bigint := 102;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a'::uuid;
  _id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __cutoff__get_id_by_gid()';

  INSERT INTO cutoff.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CUTOFF-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CUTOFF-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'CUTOFF-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  _id := cutoff.get_id_by_gid(_test_gid);
  PERFORM pgunit.assert_equals(_test_id, _id, 'Incorrect _id value');

END;
$$;


ALTER FUNCTION tests.__cutoff__get_id_by_gid() OWNER TO postgres;

--
-- TOC entry 832 (class 1255 OID 57762)
-- Name: __cutoff__get_last_cutoff_date(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__cutoff__get_last_cutoff_date() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_date_a1 CONSTANT date := '2017-02-01'::date;
  _test_date_b1 CONSTANT date := '2017-01-01'::date;
  _date_a1 date;
  _date_b1 date;
BEGIN
  
  RAISE DEBUG '#trace Check __cutoff__get_last_cutoff_date()';

  INSERT INTO schedule.calendar VALUES ('2017-01-01',1,1,1,1);
  INSERT INTO schedule.calendar VALUES ('2017-01-02',2,1,2,1);
  INSERT INTO cutoff.head VALUES (101, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'CUTOFF-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO cutoff.head VALUES (102, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'CUTOFF-01', '2017-02-02', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');

  _date_a1 := cutoff.get_last_cutoff_date('A1');
  _date_b1 := cutoff.get_last_cutoff_date('B1');
  PERFORM pgunit.assert_equals(_test_date_a1, _date_a1, 'Incorrect _date_a1 value');
  PERFORM pgunit.assert_equals(_test_date_b1, _date_b1, 'Incorrect _date_b1 value');

END;
$$;


ALTER FUNCTION tests.__cutoff__get_last_cutoff_date() OWNER TO postgres;

--
-- TOC entry 833 (class 1255 OID 57763)
-- Name: __cutoff__numerator_nextval(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__cutoff__numerator_nextval() RETURNS void
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
  
  RAISE DEBUG '#trace Check __cutoff__numerator_nextval()';

  INSERT INTO cutoff.numerator VALUES ('A1', 1, 100);
  INSERT INTO cutoff.numerator VALUES ('A1', 2, 10);
  INSERT INTO cutoff.numerator VALUES ('B1', 1, 200);

  _numerator := cutoff.numerator_nextval(_test_facility_code_a1, _test_week_a1);
  PERFORM pgunit.assert_equals(_test_numerator_a1, _numerator, 'Incorrect _numerator value');

  _numerator := cutoff.numerator_nextval(_test_facility_code_g1, _test_week_g1);
  PERFORM pgunit.assert_equals(_test_numerator_g1, _numerator, 'Incorrect _numerator value');

END;
$$;


ALTER FUNCTION tests.__cutoff__numerator_nextval() OWNER TO postgres;

--
-- TOC entry 834 (class 1255 OID 57764)
-- Name: __cutoff__submit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__cutoff__submit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.document_head[] := ARRAY[(10,'8c1581c0-04c0-11e7-a843-08626627b4d6','CUTOFF-01','2017-01-01','A1','PROPOSED','CUTOFF')]::common.document_head[];
  _head common.document_head;
  _document_id bigint;
BEGIN
  
  RAISE DEBUG '#trace Check __cutoff__submit()';
  
  _document_id := cutoff.submit(_test_head[1]);
  _head := cutoff.get_head(_document_id);
  PERFORM pgunit.assert_not_null(_head, 'Incorrect _head value');
  -- PERFORM pgunit.assert_equals(_test_head[1], _head, 'Incorrect _head value');
  -- PERFORM pgunit.assert_array_equals(_test_body, _body, 'Incorrect _body value');


END;
$$;


ALTER FUNCTION tests.__cutoff__submit() OWNER TO postgres;

--
-- TOC entry 835 (class 1255 OID 57765)
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
-- TOC entry 836 (class 1255 OID 57766)
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
-- TOC entry 837 (class 1255 OID 57767)
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
-- TOC entry 838 (class 1255 OID 57768)
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
-- TOC entry 839 (class 1255 OID 57769)
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
-- TOC entry 840 (class 1255 OID 57770)
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
-- TOC entry 841 (class 1255 OID 57771)
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
  
  _document_id := ebom.submit(_test_head[1], _test_body);
  _head := ebom.get_head(_document_id);
  _body := ebom.get_body(_document_id);
  --PERFORM pgunit.assert_equals(_test_head[1], _head, 'Incorrect _head value');
  PERFORM pgunit.assert_array_equals(_test_body, _body, 'Incorrect _body value');


END;
$$;


ALTER FUNCTION tests.__ebom__submit() OWNER TO postgres;

--
-- TOC entry 842 (class 1255 OID 57772)
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
-- TOC entry 843 (class 1255 OID 57773)
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
-- TOC entry 844 (class 1255 OID 57774)
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
-- TOC entry 845 (class 1255 OID 57775)
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
-- TOC entry 846 (class 1255 OID 57776)
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
-- TOC entry 847 (class 1255 OID 57777)
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
-- TOC entry 849 (class 1255 OID 57778)
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
-- TOC entry 850 (class 1255 OID 57779)
-- Name: __issue__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__issue__destroy() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.outbound_head;
BEGIN
  
  RAISE DEBUG '#trace Check __issue__destroy()';

  INSERT INTO issue.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'ISSUE-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
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
-- TOC entry 851 (class 1255 OID 57780)
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
-- TOC entry 852 (class 1255 OID 57781)
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
-- TOC entry 853 (class 1255 OID 57782)
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

  INSERT INTO issue.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'ISSUE-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
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
-- TOC entry 854 (class 1255 OID 57783)
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

  INSERT INTO issue.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'ISSUE-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'ISSUE-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'ISSUE-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  _gid := issue.get_gid_by_id(_test_id);
  PERFORM pgunit.assert_equals(_test_gid, _gid, 'Incorrect _gid value');

END;
$$;


ALTER FUNCTION tests.__issue__get_gid_by_id() OWNER TO postgres;

--
-- TOC entry 855 (class 1255 OID 57784)
-- Name: __issue__get_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__issue__get_head() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.outbound_head;
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

  INSERT INTO issue.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'ISSUE-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
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
-- TOC entry 857 (class 1255 OID 57785)
-- Name: __issue__get_head_batch(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__issue__get_head_batch() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _heads common.outbound_head[];
  _head common.outbound_head;
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

  INSERT INTO issue.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'ISSUE-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
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
-- TOC entry 858 (class 1255 OID 57786)
-- Name: __issue__get_head_batch_proposed(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__issue__get_head_batch_proposed() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _heads common.outbound_head[];
  _head common.outbound_head;
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

  INSERT INTO issue.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'ISSUE-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
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
-- TOC entry 859 (class 1255 OID 57787)
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

  INSERT INTO issue.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'ISSUE-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'ISSUE-02', '2017-02-01', NULL, '2017-02-02', 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO issue.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'ISSUE-03', '2017-03-01', NULL, '2017-03-02', 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');

  _id := issue.get_id_by_gid(_test_gid);
  PERFORM pgunit.assert_equals(_test_id, _id, 'Incorrect _id value');

END;
$$;


ALTER FUNCTION tests.__issue__get_id_by_gid() OWNER TO postgres;

--
-- TOC entry 860 (class 1255 OID 57788)
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
-- TOC entry 861 (class 1255 OID 57789)
-- Name: __issue__resubmit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__issue__resubmit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.outbound_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','ISSUE-01','2017-01-01','A1','PROPOSED','ISSUE','B1','2017-02-01')]::common.outbound_head[];
  _test_body_submit CONSTANT common.document_body[] := ARRAY[('good1',10,'m'), ('good2',20,'m')]::common.document_body[];
  _test_body_resubmit CONSTANT common.document_body[] := ARRAY[('good3',10,'m'), ('good4',20,'m')]::common.document_body[];
  _head common.outbound_head;
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
-- TOC entry 862 (class 1255 OID 57790)
-- Name: __issue__submit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__issue__submit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.outbound_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','ISSUE-01','2017-01-01','A1','PROPOSED','ISSUE','B1','2017-02-01')]::common.outbound_head[];
  _test_body CONSTANT common.document_body[] := ARRAY[('good1',10,'m'), ('good2',20,'m')]::common.document_body[];
  _head common.outbound_head;
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
-- TOC entry 863 (class 1255 OID 57791)
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
-- TOC entry 864 (class 1255 OID 57792)
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
-- TOC entry 865 (class 1255 OID 57793)
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
-- TOC entry 866 (class 1255 OID 57794)
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
-- TOC entry 867 (class 1255 OID 57795)
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
-- TOC entry 868 (class 1255 OID 57796)
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
-- TOC entry 870 (class 1255 OID 57797)
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
  
  _document_id := mbom.submit(_test_head[1], _test_body);
  _head := mbom.get_head(_document_id);
  _body := mbom.get_body(_document_id);
  --PERFORM pgunit.assert_equals(_test_head[1], _head, 'Incorrect _head value');
  PERFORM pgunit.assert_array_equals(_test_body, _body, 'Incorrect _body value');


END;
$$;


ALTER FUNCTION tests.__mbom__submit() OWNER TO postgres;

--
-- TOC entry 871 (class 1255 OID 57798)
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
-- TOC entry 872 (class 1255 OID 57799)
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
-- TOC entry 873 (class 1255 OID 57800)
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
-- TOC entry 874 (class 1255 OID 57801)
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
-- TOC entry 877 (class 1255 OID 57802)
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
-- TOC entry 878 (class 1255 OID 57803)
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
-- TOC entry 879 (class 1255 OID 57804)
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
-- TOC entry 880 (class 1255 OID 57805)
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
-- TOC entry 881 (class 1255 OID 57807)
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
-- TOC entry 882 (class 1255 OID 57808)
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
-- TOC entry 875 (class 1255 OID 57809)
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
-- TOC entry 876 (class 1255 OID 57810)
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
-- TOC entry 883 (class 1255 OID 57812)
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
-- TOC entry 884 (class 1255 OID 57813)
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
-- TOC entry 885 (class 1255 OID 57814)
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
-- TOC entry 886 (class 1255 OID 57815)
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
-- TOC entry 887 (class 1255 OID 57816)
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
-- TOC entry 888 (class 1255 OID 57817)
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
-- TOC entry 889 (class 1255 OID 57818)
-- Name: __receipt__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__receipt__destroy() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.outbound_head;
BEGIN
  
  RAISE DEBUG '#trace Check __receipt__destroy()';

  INSERT INTO receipt.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'RECEIPT-01', '2017-01-01', NULL, 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
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
-- TOC entry 890 (class 1255 OID 57819)
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
-- TOC entry 891 (class 1255 OID 57820)
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

  INSERT INTO receipt.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'RECEIPT-01', '2017-01-01', NULL, 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
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
-- TOC entry 892 (class 1255 OID 57821)
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

  INSERT INTO receipt.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'RECEIPT-01', '2017-01-01', NULL, 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'RECEIPT-02', '2017-02-01', NULL, 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'RECEIPT-03', '2017-03-01', NULL, 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  
  _gid := receipt.get_gid_by_id(_test_id);
  PERFORM pgunit.assert_equals(_test_gid, _gid, 'Incorrect _gid value');

END;
$$;


ALTER FUNCTION tests.__receipt__get_gid_by_id() OWNER TO postgres;

--
-- TOC entry 893 (class 1255 OID 57822)
-- Name: __receipt__get_head(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__receipt__get_head() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.inbound_head;
  _test_gid CONSTANT uuid := '9b2952fa-01d1-11e7-b440-d4bed939923a'::uuid;
  _test_display_name CONSTANT character varying := 'RECEIPT-02';
  _test_document_date CONSTANT date := '2017-02-01'::date;
  _test_ship_to CONSTANT character varying := 'A1';
  _test_ship_from CONSTANT character varying := 'B1';
  _test_curr_fsmt CONSTANT common.document_fsmt := 'COMMITTED'::common.document_fsmt;
  _test_doctype CONSTANT common.document_kind := 'RECEIPT'::common.document_kind;
BEGIN
  
  RAISE DEBUG '#trace Check __receipt__get_head()';

  INSERT INTO receipt.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'RECEIPT-01', '2017-01-01', NULL, 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
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
-- TOC entry 894 (class 1255 OID 57823)
-- Name: __receipt__get_head_batch(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__receipt__get_head_batch() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _heads common.inbound_head[];
  _head common.inbound_head;
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

  INSERT INTO receipt.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'RECEIPT-01', '2017-01-01', NULL, 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
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
-- TOC entry 869 (class 1255 OID 57824)
-- Name: __receipt__get_head_batch_proposed(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__receipt__get_head_batch_proposed() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _heads common.inbound_head[];
  _head common.inbound_head;
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

  INSERT INTO receipt.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'RECEIPT-01', '2017-01-01', NULL, 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
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
-- TOC entry 895 (class 1255 OID 57825)
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

  INSERT INTO receipt.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'RECEIPT-01', '2017-01-01', NULL, 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'RECEIPT-02', '2017-02-01', NULL, 'A1', 'B1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO receipt.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'RECEIPT-03', '2017-03-01', NULL, 'A1', 'B1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  
  _id := receipt.get_id_by_gid(_test_gid);
  PERFORM pgunit.assert_equals(_test_id, _id, 'Incorrect _id value');

END;
$$;


ALTER FUNCTION tests.__receipt__get_id_by_gid() OWNER TO postgres;

--
-- TOC entry 896 (class 1255 OID 57826)
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
-- TOC entry 897 (class 1255 OID 57827)
-- Name: __receipt__resubmit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__receipt__resubmit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.inbound_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','RECEIPT-01','2017-01-01','A1','PROPOSED','CUTOFF','B1')]::common.inbound_head[];
  _test_body_submit CONSTANT common.document_body[] := ARRAY[('good1',10,'m'), ('good2',20,'m')]::common.document_body[];
  _test_body_resubmit CONSTANT common.document_body[] := ARRAY[('good3',10,'m'), ('good4',20,'m')]::common.document_body[];
  _head common.outbound_head;
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
-- TOC entry 898 (class 1255 OID 57828)
-- Name: __receipt__submit(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__receipt__submit() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _test_head CONSTANT common.inbound_head[] := ARRAY[(1,'8c1581c0-04c0-11e7-a843-08626627b4d6','RECEIPT-01','2017-01-01','A1','PROPOSED','CUTOFF','B1')]::common.inbound_head[];
  _test_body CONSTANT common.document_body[] := ARRAY[('good1',10,'m'), ('good2',20,'m')]::common.document_body[];
  _head common.outbound_head;
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
-- TOC entry 899 (class 1255 OID 57829)
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
-- TOC entry 900 (class 1255 OID 57830)
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
-- TOC entry 901 (class 1255 OID 57831)
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
-- TOC entry 902 (class 1255 OID 57832)
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

  INSERT INTO issue.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'ISSUE-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
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
-- TOC entry 903 (class 1255 OID 57833)
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

  INSERT INTO receipt.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'RECEIPT-01', '2017-01-01', NULL, 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
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
-- TOC entry 808 (class 1255 OID 57834)
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

  INSERT INTO stocktake.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'STOCKTAKE-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
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
-- TOC entry 904 (class 1255 OID 57835)
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

  INSERT INTO issue.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'ISSUE-01', '2017-01-01', NULL, '2017-01-02', 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
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
-- TOC entry 905 (class 1255 OID 57836)
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

  INSERT INTO receipt.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'RECEIPT-01', '2017-01-01', NULL, 'B1', 'A1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
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
-- TOC entry 906 (class 1255 OID 57837)
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

  INSERT INTO stocktake.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'STOCKTAKE-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
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
-- TOC entry 907 (class 1255 OID 57838)
-- Name: __stocktake__destroy(); Type: FUNCTION; Schema: tests; Owner: postgres
--

CREATE FUNCTION tests.__stocktake__destroy() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _head common.document_head;
BEGIN
  
  RAISE DEBUG '#trace Check __stocktake__destroy()';

  INSERT INTO stocktake.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'STOCKTAKE-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
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
-- TOC entry 908 (class 1255 OID 57839)
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
-- TOC entry 909 (class 1255 OID 57840)
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

  INSERT INTO stocktake.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'STOCKTAKE-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
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
-- TOC entry 910 (class 1255 OID 57841)
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

  INSERT INTO stocktake.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'STOCKTAKE-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'STOCKTAKE-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'STOCKTAKE-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  
  _gid := stocktake.get_gid_by_id(_test_id);
  PERFORM pgunit.assert_equals(_test_gid, _gid, 'Incorrect _gid value');

END;
$$;


ALTER FUNCTION tests.__stocktake__get_gid_by_id() OWNER TO postgres;

--
-- TOC entry 911 (class 1255 OID 57842)
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

  INSERT INTO stocktake.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'STOCKTAKE-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
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
-- TOC entry 912 (class 1255 OID 57843)
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

  INSERT INTO stocktake.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'STOCKTAKE-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
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
-- TOC entry 913 (class 1255 OID 57844)
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

  INSERT INTO stocktake.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'STOCKTAKE-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
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
-- TOC entry 914 (class 1255 OID 57845)
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

  INSERT INTO stocktake.head VALUES (101, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'STOCKTAKE-01', '2017-01-01', NULL, 'B1', 'COMMITTED', '2017-02-04 22:46:51.810833+02', 'DECOMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (102, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'STOCKTAKE-02', '2017-02-01', NULL, 'A1', 'PROPOSED', '2017-02-04 22:46:51.810833+02', 'COMMITTED', '2017-02-04 22:47:10.05991+02');
  INSERT INTO stocktake.head VALUES (103, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'STOCKTAKE-03', '2017-03-01', NULL, 'A1', NULL, NULL, 'PROPOSED', '2017-02-04 22:47:10.05991+02');
  
  _id := stocktake.get_id_by_gid(_test_gid);
  PERFORM pgunit.assert_equals(_test_id, _id, 'Incorrect _id value');

END;
$$;


ALTER FUNCTION tests.__stocktake__get_id_by_gid() OWNER TO postgres;

--
-- TOC entry 915 (class 1255 OID 57846)
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
-- TOC entry 916 (class 1255 OID 57847)
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
-- TOC entry 917 (class 1255 OID 57848)
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
-- TOC entry 918 (class 1255 OID 57849)
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
-- TOC entry 919 (class 1255 OID 57850)
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
-- TOC entry 920 (class 1255 OID 57851)
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
-- TOC entry 921 (class 1255 OID 57852)
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
-- TOC entry 922 (class 1255 OID 57854)
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
-- TOC entry 923 (class 1255 OID 57855)
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
-- TOC entry 924 (class 1255 OID 57856)
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
-- TOC entry 925 (class 1255 OID 57857)
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
-- TOC entry 926 (class 1255 OID 57858)
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
-- TOC entry 927 (class 1255 OID 57859)
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
-- TOC entry 928 (class 1255 OID 57860)
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
-- TOC entry 929 (class 1255 OID 57861)
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
-- TOC entry 930 (class 1255 OID 57862)
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
-- TOC entry 931 (class 1255 OID 57863)
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
-- TOC entry 5067 (class 0 OID 0)
-- Dependencies: 931
-- Name: FUNCTION destroy(__document_id bigint); Type: COMMENT; Schema: work; Owner: postgres
--

COMMENT ON FUNCTION work.destroy(__document_id bigint) IS 'delete work report';


--
-- TOC entry 932 (class 1255 OID 57864)
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
-- TOC entry 933 (class 1255 OID 57865)
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
-- TOC entry 934 (class 1255 OID 57866)
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
-- TOC entry 935 (class 1255 OID 57867)
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
-- TOC entry 936 (class 1255 OID 57868)
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
-- TOC entry 5068 (class 0 OID 0)
-- Dependencies: 936
-- Name: FUNCTION get_gid_by_id(__document_id bigint); Type: COMMENT; Schema: work; Owner: postgres
--

COMMENT ON FUNCTION work.get_gid_by_id(__document_id bigint) IS 'get uuid of work report by id';


--
-- TOC entry 816 (class 1255 OID 57869)
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
-- TOC entry 826 (class 1255 OID 57870)
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
-- TOC entry 5069 (class 0 OID 0)
-- Dependencies: 826
-- Name: FUNCTION get_id_by_gid(__document_gid uuid); Type: COMMENT; Schema: work; Owner: postgres
--

COMMENT ON FUNCTION work.get_id_by_gid(__document_gid uuid) IS 'get id of work report by uuid';


--
-- TOC entry 848 (class 1255 OID 57871)
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
-- TOC entry 856 (class 1255 OID 57872)
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
-- TOC entry 937 (class 1255 OID 57873)
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
    curr_fsmt = 'DECOMMITTED'::common.document_fsmt
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
-- TOC entry 938 (class 1255 OID 57874)
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
-- TOC entry 4121 (class 2605 OID 57875)
-- Name: CAST (common.component_kind AS common.inventory_kind); Type: CAST; Schema: -; Owner: 
--

CREATE CAST (common.component_kind AS common.inventory_kind) WITH FUNCTION common.convert_component_to_inventory_kind(common.component_kind) AS IMPLICIT;


--
-- TOC entry 4123 (class 2605 OID 57876)
-- Name: CAST (common.inbound_head AS common.document_head); Type: CAST; Schema: -; Owner: 
--

CREATE CAST (common.inbound_head AS common.document_head) WITH FUNCTION common.convert_inbound_to_document_head(common.inbound_head) AS IMPLICIT;


--
-- TOC entry 4122 (class 2605 OID 57877)
-- Name: CAST (common.material_kind AS common.inventory_kind); Type: CAST; Schema: -; Owner: 
--

CREATE CAST (common.material_kind AS common.inventory_kind) WITH FUNCTION common.convert_material_to_inventory_kind(common.material_kind) AS IMPLICIT;


--
-- TOC entry 4124 (class 2605 OID 57878)
-- Name: CAST (common.outbound_head AS common.document_head); Type: CAST; Schema: -; Owner: 
--

CREATE CAST (common.outbound_head AS common.document_head) WITH FUNCTION common.convert_outbound_to_document_head(common.outbound_head) AS IMPLICIT;


--
-- TOC entry 4125 (class 2605 OID 57879)
-- Name: CAST (common.stocktake_body AS common.document_body); Type: CAST; Schema: -; Owner: 
--

CREATE CAST (common.stocktake_body AS common.document_body) WITH FUNCTION common.convert_stocktake_to_document_body(common.stocktake_body) AS IMPLICIT;


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 273 (class 1259 OID 57880)
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
-- TOC entry 5070 (class 0 OID 0)
-- Dependencies: 273
-- Name: TABLE process; Type: COMMENT; Schema: balance; Owner: postgres
--

COMMENT ON TABLE balance.process IS 'production process';


--
-- TOC entry 274 (class 1259 OID 57888)
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
-- TOC entry 275 (class 1259 OID 57896)
-- Name: stock; Type: TABLE; Schema: balance; Owner: postgres
--

CREATE TABLE balance.stock (
    facility_code character varying NOT NULL,
    part_code character varying NOT NULL,
    uom_code character varying NOT NULL,
    on_hand_qty common.quantity NOT NULL,
    reserved_qty common.quantity NOT NULL,
    available_qty common.quantity NOT NULL,
    en_route_qty common.quantity NOT NULL,
    on_order_qty common.quantity NOT NULL
);


ALTER TABLE balance.stock OWNER TO postgres;

--
-- TOC entry 5071 (class 0 OID 0)
-- Dependencies: 275
-- Name: TABLE stock; Type: COMMENT; Schema: balance; Owner: postgres
--

COMMENT ON TABLE balance.stock IS 'production stock';


--
-- TOC entry 276 (class 1259 OID 57902)
-- Name: cutoff_to_claim; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.cutoff_to_claim (
    cutoff_id bigint NOT NULL,
    claim_id bigint NOT NULL
);


ALTER TABLE binding.cutoff_to_claim OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 57905)
-- Name: cutoff_to_issue; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.cutoff_to_issue (
    cutoff_id bigint NOT NULL,
    issue_id bigint NOT NULL
);


ALTER TABLE binding.cutoff_to_issue OWNER TO postgres;

--
-- TOC entry 278 (class 1259 OID 57908)
-- Name: cutoff_to_receipt; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.cutoff_to_receipt (
    cutoff_id bigint NOT NULL,
    receipt_id bigint NOT NULL
);


ALTER TABLE binding.cutoff_to_receipt OWNER TO postgres;

--
-- TOC entry 279 (class 1259 OID 57911)
-- Name: cutoff_to_stocktake; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.cutoff_to_stocktake (
    cutoff_id bigint NOT NULL,
    stocktake_id bigint NOT NULL
);


ALTER TABLE binding.cutoff_to_stocktake OWNER TO postgres;

--
-- TOC entry 280 (class 1259 OID 57914)
-- Name: ebom_to_mbom; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.ebom_to_mbom (
    ebom_id bigint NOT NULL,
    mbom_id bigint NOT NULL
);


ALTER TABLE binding.ebom_to_mbom OWNER TO postgres;

--
-- TOC entry 281 (class 1259 OID 57917)
-- Name: ebom_to_process; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.ebom_to_process (
    ebom_id bigint NOT NULL,
    process_id bigint NOT NULL
);


ALTER TABLE binding.ebom_to_process OWNER TO postgres;

--
-- TOC entry 282 (class 1259 OID 57920)
-- Name: ebom_to_product; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.ebom_to_product (
    ebom_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE binding.ebom_to_product OWNER TO postgres;

--
-- TOC entry 283 (class 1259 OID 57923)
-- Name: mbom_to_process; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.mbom_to_process (
    mbom_id bigint NOT NULL,
    process_id bigint NOT NULL
);


ALTER TABLE binding.mbom_to_process OWNER TO postgres;

--
-- TOC entry 284 (class 1259 OID 57926)
-- Name: mbom_to_product; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE binding.mbom_to_product (
    mbom_id bigint NOT NULL,
    product_id bigint NOT NULL
);


ALTER TABLE binding.mbom_to_product OWNER TO postgres;

--
-- TOC entry 285 (class 1259 OID 57929)
-- Name: benchmark; Type: TABLE; Schema: calendar; Owner: postgres
--

CREATE TABLE calendar.benchmark (
    start_date date NOT NULL,
    julianized_day integer NOT NULL,
    julianized_week integer NOT NULL
);


ALTER TABLE calendar.benchmark OWNER TO postgres;

--
-- TOC entry 286 (class 1259 OID 57932)
-- Name: checkpoint; Type: TABLE; Schema: calendar; Owner: postgres
--

CREATE TABLE calendar.checkpoint (
    start_date date NOT NULL
);


ALTER TABLE calendar.checkpoint OWNER TO postgres;

--
-- TOC entry 287 (class 1259 OID 57935)
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
-- TOC entry 288 (class 1259 OID 57943)
-- Name: information; Type: TABLE; Schema: calendar; Owner: postgres
--

CREATE TABLE calendar.information (
    calendar_date date NOT NULL,
    julianized_day integer NOT NULL,
    julianized_week integer NOT NULL
);


ALTER TABLE calendar.information OWNER TO postgres;

--
-- TOC entry 289 (class 1259 OID 57946)
-- Name: workday; Type: TABLE; Schema: calendar; Owner: postgres
--

CREATE TABLE calendar.workday (
    facility_code character varying NOT NULL,
    dayly_duration interval DEFAULT '08:00:00'::interval NOT NULL
);


ALTER TABLE calendar.workday OWNER TO postgres;

--
-- TOC entry 290 (class 1259 OID 57953)
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
-- TOC entry 291 (class 1259 OID 57966)
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
-- TOC entry 292 (class 1259 OID 57972)
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
    prev_fsmt common.document_fsmt,
    prev_fsmt_date timestamp with time zone,
    curr_fsmt common.document_fsmt DEFAULT 'PROPOSED'::common.document_fsmt NOT NULL,
    curr_fsmt_date timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT head_check1 CHECK ((document_date <= due_date)),
    CONSTRAINT head_check2 CHECK (((ship_to)::text <> (ship_from)::text))
);


ALTER TABLE claim.head OWNER TO postgres;

--
-- TOC entry 293 (class 1259 OID 57984)
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
-- TOC entry 5072 (class 0 OID 0)
-- Dependencies: 293
-- Name: head_id_seq; Type: SEQUENCE OWNED BY; Schema: claim; Owner: postgres
--

ALTER SEQUENCE claim.head_id_seq OWNED BY claim.head.id;


--
-- TOC entry 294 (class 1259 OID 57986)
-- Name: numerator; Type: TABLE; Schema: claim; Owner: postgres
--

CREATE TABLE claim.numerator (
    facility_code character varying NOT NULL,
    julianized_week integer NOT NULL,
    current_value integer DEFAULT 0 NOT NULL
);


ALTER TABLE claim.numerator OWNER TO postgres;

--
-- TOC entry 295 (class 1259 OID 57993)
-- Name: cutoff_policy; Type: TABLE; Schema: common; Owner: postgres
--

CREATE TABLE common.cutoff_policy (
    document_kind_name common.document_kind NOT NULL,
    policy_mode_applied common.policy_mode DEFAULT 'DISABLED'::common.policy_mode NOT NULL
);


ALTER TABLE common.cutoff_policy OWNER TO postgres;

--
-- TOC entry 296 (class 1259 OID 57997)
-- Name: document_abbrevation; Type: TABLE; Schema: common; Owner: postgres
--

CREATE TABLE common.document_abbrevation (
    doctype common.document_kind NOT NULL,
    abbrevation character varying DEFAULT '[ABBREVATION]'::character varying NOT NULL
);


ALTER TABLE common.document_abbrevation OWNER TO postgres;

--
-- TOC entry 297 (class 1259 OID 58004)
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
-- TOC entry 298 (class 1259 OID 58010)
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
-- TOC entry 5073 (class 0 OID 0)
-- Dependencies: 298
-- Name: exception_code_id_seq; Type: SEQUENCE OWNED BY; Schema: common; Owner: postgres
--

ALTER SEQUENCE common.exception_code_id_seq OWNED BY common.exception_code.id;


--
-- TOC entry 299 (class 1259 OID 58012)
-- Name: stocktake_policy; Type: TABLE; Schema: common; Owner: postgres
--

CREATE TABLE common.stocktake_policy (
    document_kind_name common.document_kind NOT NULL,
    stocktake_mode_applied common.policy_mode DEFAULT 'DISABLED'::common.policy_mode NOT NULL
);


ALTER TABLE common.stocktake_policy OWNER TO postgres;

--
-- TOC entry 300 (class 1259 OID 58016)
-- Name: blocker; Type: TABLE; Schema: cutoff; Owner: postgres
--

CREATE TABLE cutoff.blocker (
    head_id bigint NOT NULL,
    blocker_document common.document_head NOT NULL
);


ALTER TABLE cutoff.blocker OWNER TO postgres;

--
-- TOC entry 301 (class 1259 OID 58022)
-- Name: head; Type: TABLE; Schema: cutoff; Owner: postgres
--

CREATE TABLE cutoff.head (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    document_date date DEFAULT now() NOT NULL,
    author character varying,
    facility_code character varying,
    prev_fsmt common.document_fsmt,
    prev_fsmt_date timestamp with time zone,
    curr_fsmt common.document_fsmt DEFAULT 'PROPOSED'::common.document_fsmt NOT NULL,
    curr_fsmt_date timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE cutoff.head OWNER TO postgres;

--
-- TOC entry 302 (class 1259 OID 58032)
-- Name: head_id_seq; Type: SEQUENCE; Schema: cutoff; Owner: postgres
--

CREATE SEQUENCE cutoff.head_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cutoff.head_id_seq OWNER TO postgres;

--
-- TOC entry 5074 (class 0 OID 0)
-- Dependencies: 302
-- Name: head_id_seq; Type: SEQUENCE OWNED BY; Schema: cutoff; Owner: postgres
--

ALTER SEQUENCE cutoff.head_id_seq OWNED BY cutoff.head.id;


--
-- TOC entry 303 (class 1259 OID 58034)
-- Name: numerator; Type: TABLE; Schema: cutoff; Owner: postgres
--

CREATE TABLE cutoff.numerator (
    facility_code character varying NOT NULL,
    julianized_week integer NOT NULL,
    current_value integer DEFAULT 0 NOT NULL
);


ALTER TABLE cutoff.numerator OWNER TO postgres;

--
-- TOC entry 304 (class 1259 OID 58041)
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
-- TOC entry 5075 (class 0 OID 0)
-- Dependencies: 304
-- Name: TABLE component; Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON TABLE ebom.component IS 'engineering bill of materials components including producible and buyable parts and assemblies';


--
-- TOC entry 305 (class 1259 OID 58048)
-- Name: assembly; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE ebom.assembly (
    CONSTRAINT assembly_component_type_check CHECK ((component_type = 'ASSEMBLY'::common.component_kind))
)
INHERITS (ebom.component);


ALTER TABLE ebom.assembly OWNER TO postgres;

--
-- TOC entry 5076 (class 0 OID 0)
-- Dependencies: 305
-- Name: TABLE assembly; Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON TABLE ebom.assembly IS 'engineering bill of materials producible assemblies';


--
-- TOC entry 306 (class 1259 OID 58056)
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
-- TOC entry 5077 (class 0 OID 0)
-- Dependencies: 306
-- Name: TABLE blueprint; Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON TABLE ebom.blueprint IS 'engineering bill of materials blueprints';


--
-- TOC entry 307 (class 1259 OID 58063)
-- Name: buyable; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE ebom.buyable (
    CONSTRAINT buyable_component_type_check CHECK ((component_type = 'BUYABLE'::common.component_kind))
)
INHERITS (ebom.component);


ALTER TABLE ebom.buyable OWNER TO postgres;

--
-- TOC entry 5078 (class 0 OID 0)
-- Dependencies: 307
-- Name: TABLE buyable; Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON TABLE ebom.buyable IS 'engineering bill of materials buyable components';


--
-- TOC entry 308 (class 1259 OID 58071)
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
-- TOC entry 5079 (class 0 OID 0)
-- Dependencies: 308
-- Name: TABLE definition; Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON TABLE ebom.definition IS 'engineering bill of materials definotions';


--
-- TOC entry 309 (class 1259 OID 58086)
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
-- TOC entry 5080 (class 0 OID 0)
-- Dependencies: 309
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: ebom; Owner: postgres
--

ALTER SEQUENCE ebom.definition_id_seq OWNED BY ebom.definition.id;


--
-- TOC entry 310 (class 1259 OID 58088)
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
-- TOC entry 5081 (class 0 OID 0)
-- Dependencies: 310
-- Name: TABLE information; Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON TABLE ebom.information IS 'engineering bill of materials information';


--
-- TOC entry 311 (class 1259 OID 58095)
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
-- TOC entry 5082 (class 0 OID 0)
-- Dependencies: 311
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: ebom; Owner: postgres
--

ALTER SEQUENCE ebom.information_id_seq OWNED BY ebom.information.id;


--
-- TOC entry 312 (class 1259 OID 58097)
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
-- TOC entry 5083 (class 0 OID 0)
-- Dependencies: 312
-- Name: VIEW list; Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON VIEW ebom.list IS 'list of engineering bill of materials';


--
-- TOC entry 313 (class 1259 OID 58101)
-- Name: part; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE ebom.part (
    CONSTRAINT part_component_type_check CHECK ((component_type = 'PART'::common.component_kind))
)
INHERITS (ebom.component);


ALTER TABLE ebom.part OWNER TO postgres;

--
-- TOC entry 5084 (class 0 OID 0)
-- Dependencies: 313
-- Name: TABLE part; Type: COMMENT; Schema: ebom; Owner: postgres
--

COMMENT ON TABLE ebom.part IS 'engineering bill of materials producible parts';


--
-- TOC entry 314 (class 1259 OID 58109)
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
-- TOC entry 315 (class 1259 OID 58117)
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
-- TOC entry 5085 (class 0 OID 0)
-- Dependencies: 315
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: equipment; Owner: postgres
--

ALTER SEQUENCE equipment.information_id_seq OWNED BY equipment.information.id;


--
-- TOC entry 316 (class 1259 OID 58119)
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
-- TOC entry 317 (class 1259 OID 58123)
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
-- TOC entry 5086 (class 0 OID 0)
-- Dependencies: 317
-- Name: COLUMN information.facility_type; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON COLUMN facility.information.facility_type IS 'PERA organization level';


--
-- TOC entry 318 (class 1259 OID 58132)
-- Name: area; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE facility.area (
    CONSTRAINT area_facility_type_check CHECK ((facility_type = 'AREA'::common.facility_kind))
)
INHERITS (facility.information);


ALTER TABLE facility.area OWNER TO postgres;

--
-- TOC entry 5087 (class 0 OID 0)
-- Dependencies: 318
-- Name: TABLE area; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON TABLE facility.area IS 'PERA model level-2';


--
-- TOC entry 319 (class 1259 OID 58142)
-- Name: enterprise; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE facility.enterprise (
    CONSTRAINT enterprise_facility_type_check CHECK ((facility_type = 'ENTERPRISE'::common.facility_kind))
)
INHERITS (facility.information);


ALTER TABLE facility.enterprise OWNER TO postgres;

--
-- TOC entry 5088 (class 0 OID 0)
-- Dependencies: 319
-- Name: TABLE enterprise; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON TABLE facility.enterprise IS 'PERA model level-4';


--
-- TOC entry 320 (class 1259 OID 58152)
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
-- TOC entry 5089 (class 0 OID 0)
-- Dependencies: 320
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: facility; Owner: postgres
--

ALTER SEQUENCE facility.information_id_seq OWNED BY facility.information.id;


--
-- TOC entry 321 (class 1259 OID 58154)
-- Name: line; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE facility.line (
    CONSTRAINT line_facility_type_check CHECK ((facility_type = 'LINE'::common.facility_kind))
)
INHERITS (facility.information);


ALTER TABLE facility.line OWNER TO postgres;

--
-- TOC entry 5090 (class 0 OID 0)
-- Dependencies: 321
-- Name: TABLE line; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON TABLE facility.line IS 'PERA model level-1 (production line)';


--
-- TOC entry 322 (class 1259 OID 58164)
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
-- TOC entry 323 (class 1259 OID 58168)
-- Name: site; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE facility.site (
    CONSTRAINT site_facility_type_check CHECK ((facility_type = 'SITE'::common.facility_kind)),
    CONSTRAINT site_parent_facility_code_check CHECK ((parent_facility_code IS NOT NULL))
)
INHERITS (facility.information);


ALTER TABLE facility.site OWNER TO postgres;

--
-- TOC entry 5091 (class 0 OID 0)
-- Dependencies: 323
-- Name: TABLE site; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON TABLE facility.site IS 'PERA model level-3';


--
-- TOC entry 324 (class 1259 OID 58179)
-- Name: zone; Type: TABLE; Schema: facility; Owner: postgres
--

CREATE TABLE facility.zone (
    CONSTRAINT zone_facility_type_check CHECK ((facility_type = 'ZONE'::common.facility_kind))
)
INHERITS (facility.information);


ALTER TABLE facility.zone OWNER TO postgres;

--
-- TOC entry 5092 (class 0 OID 0)
-- Dependencies: 324
-- Name: TABLE zone; Type: COMMENT; Schema: facility; Owner: postgres
--

COMMENT ON TABLE facility.zone IS 'PERA model level-1 (storge zone)';


--
-- TOC entry 325 (class 1259 OID 58189)
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
-- TOC entry 5093 (class 0 OID 0)
-- Dependencies: 325
-- Name: TABLE conglomeration; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.conglomeration IS 'inventory list';


--
-- TOC entry 326 (class 1259 OID 58197)
-- Name: assembly; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.assembly (
    CONSTRAINT assembly_inventory_type_check CHECK ((inventory_type = 'ASSEMBLY'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.assembly OWNER TO postgres;

--
-- TOC entry 5094 (class 0 OID 0)
-- Dependencies: 326
-- Name: TABLE assembly; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.assembly IS 'ebom assembly component';


--
-- TOC entry 327 (class 1259 OID 58206)
-- Name: buyable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.buyable (
    CONSTRAINT buyable_inventory_type_check CHECK ((inventory_type = 'BUYABLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.buyable OWNER TO postgres;

--
-- TOC entry 5095 (class 0 OID 0)
-- Dependencies: 327
-- Name: TABLE buyable; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.buyable IS 'ebom buyable component';


--
-- TOC entry 328 (class 1259 OID 58215)
-- Name: consumable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.consumable (
    CONSTRAINT consumable_inventory_type_check CHECK ((inventory_type = 'CONSUMABLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.consumable OWNER TO postgres;

--
-- TOC entry 5096 (class 0 OID 0)
-- Dependencies: 328
-- Name: TABLE consumable; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.consumable IS 'mbom consumable component';


--
-- TOC entry 329 (class 1259 OID 58224)
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
-- TOC entry 330 (class 1259 OID 58236)
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
-- TOC entry 5097 (class 0 OID 0)
-- Dependencies: 330
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: inventory; Owner: postgres
--

ALTER SEQUENCE inventory.definition_id_seq OWNED BY inventory.definition.id;


--
-- TOC entry 331 (class 1259 OID 58238)
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
-- TOC entry 332 (class 1259 OID 58246)
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
-- TOC entry 5098 (class 0 OID 0)
-- Dependencies: 332
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: inventory; Owner: postgres
--

ALTER SEQUENCE inventory.information_id_seq OWNED BY inventory.information.id;


--
-- TOC entry 333 (class 1259 OID 58248)
-- Name: measurement; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.measurement (
    definition_id bigint NOT NULL,
    uom_code character varying NOT NULL,
    factor numeric
);


ALTER TABLE inventory.measurement OWNER TO postgres;

--
-- TOC entry 334 (class 1259 OID 58254)
-- Name: part; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.part (
    CONSTRAINT part_inventory_type_check CHECK ((inventory_type = 'PART'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.part OWNER TO postgres;

--
-- TOC entry 5099 (class 0 OID 0)
-- Dependencies: 334
-- Name: TABLE part; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.part IS 'ebom part component';


--
-- TOC entry 335 (class 1259 OID 58263)
-- Name: primal; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.primal (
    CONSTRAINT primal_inventory_type_check CHECK ((inventory_type = 'PRIMAL'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.primal OWNER TO postgres;

--
-- TOC entry 5100 (class 0 OID 0)
-- Dependencies: 335
-- Name: TABLE primal; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.primal IS 'mbom primal component';


--
-- TOC entry 336 (class 1259 OID 58272)
-- Name: producible; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.producible (
    CONSTRAINT producible_inventory_type_check CHECK ((inventory_type = 'PRODUCIBLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.producible OWNER TO postgres;

--
-- TOC entry 5101 (class 0 OID 0)
-- Dependencies: 336
-- Name: TABLE producible; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.producible IS 'mbom producible component';


--
-- TOC entry 337 (class 1259 OID 58281)
-- Name: salable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.salable (
    CONSTRAINT salable_inventory_type_check CHECK ((inventory_type = 'SALABLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.salable OWNER TO postgres;

--
-- TOC entry 5102 (class 0 OID 0)
-- Dependencies: 337
-- Name: TABLE salable; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.salable IS 'inventory salable component';


--
-- TOC entry 338 (class 1259 OID 58290)
-- Name: storable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.storable (
    CONSTRAINT storable_inventory_type_check CHECK ((inventory_type = 'STORABLE'::common.inventory_kind))
)
INHERITS (inventory.conglomeration);


ALTER TABLE inventory.storable OWNER TO postgres;

--
-- TOC entry 339 (class 1259 OID 58299)
-- Name: variety; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE inventory.variety (
    definition_id bigint NOT NULL,
    inventory_type common.inventory_kind NOT NULL
);


ALTER TABLE inventory.variety OWNER TO postgres;

--
-- TOC entry 5103 (class 0 OID 0)
-- Dependencies: 339
-- Name: TABLE variety; Type: COMMENT; Schema: inventory; Owner: postgres
--

COMMENT ON TABLE inventory.variety IS '?';


--
-- TOC entry 340 (class 1259 OID 58302)
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
-- TOC entry 341 (class 1259 OID 58308)
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
-- TOC entry 342 (class 1259 OID 58320)
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
-- TOC entry 5104 (class 0 OID 0)
-- Dependencies: 342
-- Name: head_id_seq; Type: SEQUENCE OWNED BY; Schema: issue; Owner: postgres
--

ALTER SEQUENCE issue.head_id_seq OWNED BY issue.head.id;


--
-- TOC entry 343 (class 1259 OID 58322)
-- Name: numerator; Type: TABLE; Schema: issue; Owner: postgres
--

CREATE TABLE issue.numerator (
    facility_code character varying NOT NULL,
    julianized_week integer NOT NULL,
    current_value integer DEFAULT 0 NOT NULL
);


ALTER TABLE issue.numerator OWNER TO postgres;

--
-- TOC entry 344 (class 1259 OID 58329)
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
-- TOC entry 345 (class 1259 OID 58336)
-- Name: consumable; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE mbom.consumable (
    CONSTRAINT consumable_component_type_check CHECK ((material_type = 'CONSUMABLE'::common.material_kind))
)
INHERITS (mbom.material);


ALTER TABLE mbom.consumable OWNER TO postgres;

--
-- TOC entry 346 (class 1259 OID 58344)
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
-- TOC entry 347 (class 1259 OID 58355)
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
-- TOC entry 5105 (class 0 OID 0)
-- Dependencies: 347
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: mbom; Owner: postgres
--

ALTER SEQUENCE mbom.definition_id_seq OWNED BY mbom.definition.id;


--
-- TOC entry 348 (class 1259 OID 58357)
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
-- TOC entry 349 (class 1259 OID 58365)
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
-- TOC entry 5106 (class 0 OID 0)
-- Dependencies: 349
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: mbom; Owner: postgres
--

ALTER SEQUENCE mbom.information_id_seq OWNED BY mbom.information.id;


--
-- TOC entry 350 (class 1259 OID 58367)
-- Name: primal; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE mbom.primal (
    CONSTRAINT primal_component_type_check CHECK ((material_type = 'PRIMAL'::common.material_kind))
)
INHERITS (mbom.material);


ALTER TABLE mbom.primal OWNER TO postgres;

--
-- TOC entry 351 (class 1259 OID 58375)
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
-- TOC entry 352 (class 1259 OID 58383)
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
-- TOC entry 5107 (class 0 OID 0)
-- Dependencies: 352
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE operation.information_id_seq OWNED BY operation.information.id;


--
-- TOC entry 353 (class 1259 OID 58385)
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
-- TOC entry 354 (class 1259 OID 58389)
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
-- TOC entry 355 (class 1259 OID 58397)
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
-- TOC entry 5108 (class 0 OID 0)
-- Dependencies: 355
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: personnel; Owner: postgres
--

ALTER SEQUENCE personnel.information_id_seq OWNED BY personnel.information.id;


--
-- TOC entry 356 (class 1259 OID 58399)
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
-- TOC entry 357 (class 1259 OID 58403)
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
-- TOC entry 358 (class 1259 OID 58411)
-- Name: consumable; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE process.consumable (
)
INHERITS (process.material);


ALTER TABLE process.consumable OWNER TO postgres;

--
-- TOC entry 359 (class 1259 OID 58419)
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
-- TOC entry 360 (class 1259 OID 58426)
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
-- TOC entry 5109 (class 0 OID 0)
-- Dependencies: 360
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE process.definition_id_seq OWNED BY process.definition.id;


--
-- TOC entry 361 (class 1259 OID 58428)
-- Name: dependency; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE process.dependency (
    ancestor uuid NOT NULL,
    descendant uuid NOT NULL
);


ALTER TABLE process.dependency OWNER TO postgres;

--
-- TOC entry 362 (class 1259 OID 58431)
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
-- TOC entry 363 (class 1259 OID 58437)
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
-- TOC entry 364 (class 1259 OID 58443)
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
-- TOC entry 365 (class 1259 OID 58454)
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
-- TOC entry 5110 (class 0 OID 0)
-- Dependencies: 365
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE process.information_id_seq OWNED BY process.information.id;


--
-- TOC entry 366 (class 1259 OID 58456)
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
-- TOC entry 367 (class 1259 OID 58462)
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
-- TOC entry 368 (class 1259 OID 58466)
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
-- TOC entry 369 (class 1259 OID 58476)
-- Name: primal; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE process.primal (
)
INHERITS (process.material);


ALTER TABLE process.primal OWNER TO postgres;

--
-- TOC entry 370 (class 1259 OID 58484)
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
-- TOC entry 5111 (class 0 OID 0)
-- Dependencies: 370
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE process.segment_id_seq OWNED BY process.segment.id;


--
-- TOC entry 371 (class 1259 OID 58486)
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
-- TOC entry 372 (class 1259 OID 58492)
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
-- TOC entry 5112 (class 0 OID 0)
-- Dependencies: 372
-- Name: TABLE blueprint; Type: COMMENT; Schema: product; Owner: postgres
--

COMMENT ON TABLE product.blueprint IS 'blueprints of product segments structure';


--
-- TOC entry 373 (class 1259 OID 58503)
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
-- TOC entry 5113 (class 0 OID 0)
-- Dependencies: 373
-- Name: blueprint_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE product.blueprint_id_seq OWNED BY product.blueprint.id;


--
-- TOC entry 374 (class 1259 OID 58505)
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
-- TOC entry 5114 (class 0 OID 0)
-- Dependencies: 374
-- Name: TABLE definition; Type: COMMENT; Schema: product; Owner: postgres
--

COMMENT ON TABLE product.definition IS 'definitions of product structure segments';


--
-- TOC entry 375 (class 1259 OID 58512)
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
-- TOC entry 5115 (class 0 OID 0)
-- Dependencies: 375
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE product.definition_id_seq OWNED BY product.definition.id;


--
-- TOC entry 376 (class 1259 OID 58514)
-- Name: dependency; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.dependency (
    ancestor uuid NOT NULL,
    descendant uuid NOT NULL
);


ALTER TABLE product.dependency OWNER TO postgres;

--
-- TOC entry 5116 (class 0 OID 0)
-- Dependencies: 376
-- Name: TABLE dependency; Type: COMMENT; Schema: product; Owner: postgres
--

COMMENT ON TABLE product.dependency IS 'dependencies of product structure segments';


--
-- TOC entry 377 (class 1259 OID 58517)
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
-- TOC entry 5117 (class 0 OID 0)
-- Dependencies: 377
-- Name: TABLE information; Type: COMMENT; Schema: product; Owner: postgres
--

COMMENT ON TABLE product.information IS 'list of products defined';


--
-- TOC entry 378 (class 1259 OID 58528)
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
-- TOC entry 5118 (class 0 OID 0)
-- Dependencies: 378
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE product.information_id_seq OWNED BY product.information.id;


--
-- TOC entry 379 (class 1259 OID 58530)
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
-- TOC entry 5119 (class 0 OID 0)
-- Dependencies: 379
-- Name: VIEW list; Type: COMMENT; Schema: product; Owner: postgres
--

COMMENT ON VIEW product.list IS 'list of product definitions';


--
-- TOC entry 380 (class 1259 OID 58534)
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
-- TOC entry 5120 (class 0 OID 0)
-- Dependencies: 380
-- Name: TABLE segment; Type: COMMENT; Schema: product; Owner: postgres
--

COMMENT ON TABLE product.segment IS 'segments of product structure within definition';


--
-- TOC entry 381 (class 1259 OID 58545)
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
-- TOC entry 5121 (class 0 OID 0)
-- Dependencies: 381
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE product.segment_id_seq OWNED BY product.segment.id;


--
-- TOC entry 382 (class 1259 OID 58547)
-- Name: tree; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE product.tree (
    ancestor uuid NOT NULL,
    descendant uuid NOT NULL
);


ALTER TABLE product.tree OWNER TO postgres;

--
-- TOC entry 5122 (class 0 OID 0)
-- Dependencies: 382
-- Name: TABLE tree; Type: COMMENT; Schema: product; Owner: postgres
--

COMMENT ON TABLE product.tree IS 'blueprints of product segments dependencies';


--
-- TOC entry 383 (class 1259 OID 58550)
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
-- TOC entry 384 (class 1259 OID 58556)
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
-- TOC entry 385 (class 1259 OID 58567)
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
-- TOC entry 5123 (class 0 OID 0)
-- Dependencies: 385
-- Name: head_id_seq; Type: SEQUENCE OWNED BY; Schema: receipt; Owner: postgres
--

ALTER SEQUENCE receipt.head_id_seq OWNED BY receipt.head.id;


--
-- TOC entry 386 (class 1259 OID 58569)
-- Name: numerator; Type: TABLE; Schema: receipt; Owner: postgres
--

CREATE TABLE receipt.numerator (
    facility_code character varying NOT NULL,
    julianized_week integer NOT NULL,
    current_value integer DEFAULT 0 NOT NULL
);


ALTER TABLE receipt.numerator OWNER TO postgres;

--
-- TOC entry 387 (class 1259 OID 58576)
-- Name: body; Type: TABLE; Schema: request; Owner: postgres
--

CREATE TABLE request.body (
    head_id bigint NOT NULL,
    segment_gid uuid NOT NULL,
    quantity common.quantity NOT NULL
);


ALTER TABLE request.body OWNER TO postgres;

--
-- TOC entry 388 (class 1259 OID 58582)
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
-- TOC entry 389 (class 1259 OID 58593)
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
-- TOC entry 5124 (class 0 OID 0)
-- Dependencies: 389
-- Name: head_id_seq; Type: SEQUENCE OWNED BY; Schema: request; Owner: postgres
--

ALTER SEQUENCE request.head_id_seq OWNED BY request.head.id;


--
-- TOC entry 390 (class 1259 OID 58595)
-- Name: numerator; Type: TABLE; Schema: request; Owner: postgres
--

CREATE TABLE request.numerator (
    facility_code character varying NOT NULL,
    julianized_week integer NOT NULL,
    current_value integer DEFAULT 0 NOT NULL
);


ALTER TABLE request.numerator OWNER TO postgres;

--
-- TOC entry 391 (class 1259 OID 58602)
-- Name: body; Type: TABLE; Schema: response; Owner: postgres
--

CREATE TABLE response.body (
    head_id bigint NOT NULL,
    segment_gid uuid NOT NULL,
    quantity common.quantity NOT NULL
);


ALTER TABLE response.body OWNER TO postgres;

--
-- TOC entry 392 (class 1259 OID 58608)
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
-- TOC entry 393 (class 1259 OID 58618)
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
-- TOC entry 5125 (class 0 OID 0)
-- Dependencies: 393
-- Name: head_id_seq; Type: SEQUENCE OWNED BY; Schema: response; Owner: postgres
--

ALTER SEQUENCE response.head_id_seq OWNED BY response.head.id;


--
-- TOC entry 394 (class 1259 OID 58620)
-- Name: numerator; Type: TABLE; Schema: response; Owner: postgres
--

CREATE TABLE response.numerator (
    facility_code character varying NOT NULL,
    julianized_week integer NOT NULL,
    current_value integer DEFAULT 0 NOT NULL
);


ALTER TABLE response.numerator OWNER TO postgres;

--
-- TOC entry 395 (class 1259 OID 58627)
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
-- TOC entry 396 (class 1259 OID 58630)
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
-- TOC entry 397 (class 1259 OID 58637)
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
-- TOC entry 398 (class 1259 OID 58643)
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
-- TOC entry 399 (class 1259 OID 58653)
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
-- TOC entry 5126 (class 0 OID 0)
-- Dependencies: 399
-- Name: head_id_seq; Type: SEQUENCE OWNED BY; Schema: stocktake; Owner: postgres
--

ALTER SEQUENCE stocktake.head_id_seq OWNED BY stocktake.head.id;


--
-- TOC entry 400 (class 1259 OID 58655)
-- Name: numerator; Type: TABLE; Schema: stocktake; Owner: postgres
--

CREATE TABLE stocktake.numerator (
    facility_code character varying NOT NULL,
    julianized_week integer NOT NULL,
    current_value integer DEFAULT 0 NOT NULL
);


ALTER TABLE stocktake.numerator OWNER TO postgres;

--
-- TOC entry 401 (class 1259 OID 58662)
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
-- TOC entry 402 (class 1259 OID 58667)
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
-- TOC entry 403 (class 1259 OID 58672)
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
-- TOC entry 404 (class 1259 OID 58677)
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
-- TOC entry 405 (class 1259 OID 58685)
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
-- TOC entry 5127 (class 0 OID 0)
-- Dependencies: 405
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: tooling; Owner: postgres
--

ALTER SEQUENCE tooling.information_id_seq OWNED BY tooling.information.id;


--
-- TOC entry 406 (class 1259 OID 58687)
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
-- TOC entry 407 (class 1259 OID 58691)
-- Name: assignment; Type: TABLE; Schema: uom; Owner: postgres
--

CREATE TABLE uom.assignment (
    uom_role_id bigint NOT NULL,
    uom_role_code character varying(100),
    uom_role_name character varying(300)
);


ALTER TABLE uom.assignment OWNER TO postgres;

--
-- TOC entry 5128 (class 0 OID 0)
-- Dependencies: 407
-- Name: TABLE assignment; Type: COMMENT; Schema: uom; Owner: postgres
--

COMMENT ON TABLE uom.assignment IS 'uom role';


--
-- TOC entry 408 (class 1259 OID 58694)
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
-- TOC entry 409 (class 1259 OID 58700)
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
-- TOC entry 5129 (class 0 OID 0)
-- Dependencies: 409
-- Name: uom_role_uom_role_id_seq; Type: SEQUENCE OWNED BY; Schema: uom; Owner: postgres
--

ALTER SEQUENCE uom.uom_role_uom_role_id_seq OWNED BY uom.assignment.uom_role_id;


--
-- TOC entry 410 (class 1259 OID 58702)
-- Name: body; Type: TABLE; Schema: work; Owner: postgres
--

CREATE TABLE work.body (
    head_id bigint NOT NULL,
    segment_gid uuid NOT NULL,
    quantity common.quantity NOT NULL
);


ALTER TABLE work.body OWNER TO postgres;

--
-- TOC entry 411 (class 1259 OID 58708)
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
-- TOC entry 412 (class 1259 OID 58718)
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
-- TOC entry 5130 (class 0 OID 0)
-- Dependencies: 412
-- Name: head_id_seq; Type: SEQUENCE OWNED BY; Schema: work; Owner: postgres
--

ALTER SEQUENCE work.head_id_seq OWNED BY work.head.id;


--
-- TOC entry 413 (class 1259 OID 58720)
-- Name: numerator; Type: TABLE; Schema: work; Owner: postgres
--

CREATE TABLE work.numerator (
    facility_code character varying NOT NULL,
    julianized_week integer NOT NULL,
    current_value integer DEFAULT 0 NOT NULL
);


ALTER TABLE work.numerator OWNER TO postgres;

--
-- TOC entry 4144 (class 2604 OID 58727)
-- Name: head id; Type: DEFAULT; Schema: claim; Owner: postgres
--

ALTER TABLE ONLY claim.head ALTER COLUMN id SET DEFAULT nextval('claim.head_id_seq'::regclass);


--
-- TOC entry 4150 (class 2604 OID 58728)
-- Name: exception_code id; Type: DEFAULT; Schema: common; Owner: postgres
--

ALTER TABLE ONLY common.exception_code ALTER COLUMN id SET DEFAULT nextval('common.exception_code_id_seq'::regclass);


--
-- TOC entry 4156 (class 2604 OID 58729)
-- Name: head id; Type: DEFAULT; Schema: cutoff; Owner: postgres
--

ALTER TABLE ONLY cutoff.head ALTER COLUMN id SET DEFAULT nextval('cutoff.head_id_seq'::regclass);


--
-- TOC entry 4159 (class 2604 OID 58730)
-- Name: assembly uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.assembly ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 4162 (class 2604 OID 58731)
-- Name: buyable uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.buyable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 4172 (class 2604 OID 58732)
-- Name: definition id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition ALTER COLUMN id SET DEFAULT nextval('ebom.definition_id_seq'::regclass);


--
-- TOC entry 4175 (class 2604 OID 58733)
-- Name: information id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information ALTER COLUMN id SET DEFAULT nextval('ebom.information_id_seq'::regclass);


--
-- TOC entry 4176 (class 2604 OID 58734)
-- Name: part uom_code; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.part ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 4180 (class 2604 OID 58735)
-- Name: information id; Type: DEFAULT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY equipment.information ALTER COLUMN id SET DEFAULT nextval('equipment.information_id_seq'::regclass);


--
-- TOC entry 4185 (class 2604 OID 58736)
-- Name: area id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area ALTER COLUMN id SET DEFAULT nextval('facility.information_id_seq'::regclass);


--
-- TOC entry 4186 (class 2604 OID 58737)
-- Name: area gid; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 4187 (class 2604 OID 58738)
-- Name: area version_num; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 4188 (class 2604 OID 58739)
-- Name: area published_date; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 4190 (class 2604 OID 58740)
-- Name: enterprise id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.enterprise ALTER COLUMN id SET DEFAULT nextval('facility.information_id_seq'::regclass);


--
-- TOC entry 4191 (class 2604 OID 58741)
-- Name: enterprise gid; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.enterprise ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 4192 (class 2604 OID 58742)
-- Name: enterprise version_num; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.enterprise ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 4193 (class 2604 OID 58743)
-- Name: enterprise published_date; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.enterprise ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 4184 (class 2604 OID 58744)
-- Name: information id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.information ALTER COLUMN id SET DEFAULT nextval('facility.information_id_seq'::regclass);


--
-- TOC entry 4195 (class 2604 OID 58745)
-- Name: line id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line ALTER COLUMN id SET DEFAULT nextval('facility.information_id_seq'::regclass);


--
-- TOC entry 4196 (class 2604 OID 58746)
-- Name: line gid; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 4197 (class 2604 OID 58747)
-- Name: line version_num; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 4198 (class 2604 OID 58748)
-- Name: line published_date; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 4200 (class 2604 OID 58749)
-- Name: site id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site ALTER COLUMN id SET DEFAULT nextval('facility.information_id_seq'::regclass);


--
-- TOC entry 4201 (class 2604 OID 58750)
-- Name: site gid; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 4202 (class 2604 OID 58751)
-- Name: site version_num; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 4203 (class 2604 OID 58752)
-- Name: site published_date; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 4206 (class 2604 OID 58753)
-- Name: zone id; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone ALTER COLUMN id SET DEFAULT nextval('facility.information_id_seq'::regclass);


--
-- TOC entry 4207 (class 2604 OID 58754)
-- Name: zone gid; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 4208 (class 2604 OID 58755)
-- Name: zone version_num; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 4209 (class 2604 OID 58756)
-- Name: zone published_date; Type: DEFAULT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 4213 (class 2604 OID 58757)
-- Name: assembly version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.assembly ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 4214 (class 2604 OID 58758)
-- Name: assembly published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.assembly ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 4216 (class 2604 OID 58759)
-- Name: buyable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.buyable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 4217 (class 2604 OID 58760)
-- Name: buyable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.buyable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 4219 (class 2604 OID 58761)
-- Name: consumable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.consumable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 4220 (class 2604 OID 58762)
-- Name: consumable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.consumable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 4228 (class 2604 OID 58763)
-- Name: definition id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition ALTER COLUMN id SET DEFAULT nextval('inventory.definition_id_seq'::regclass);


--
-- TOC entry 4231 (class 2604 OID 58764)
-- Name: information id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.information ALTER COLUMN id SET DEFAULT nextval('inventory.information_id_seq'::regclass);


--
-- TOC entry 4232 (class 2604 OID 58765)
-- Name: part version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.part ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 4233 (class 2604 OID 58766)
-- Name: part published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.part ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 4235 (class 2604 OID 58767)
-- Name: primal version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.primal ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 4236 (class 2604 OID 58768)
-- Name: primal published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.primal ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 4238 (class 2604 OID 58769)
-- Name: producible version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.producible ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 4239 (class 2604 OID 58770)
-- Name: producible published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.producible ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 4241 (class 2604 OID 58771)
-- Name: salable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.salable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 4242 (class 2604 OID 58772)
-- Name: salable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.salable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 4244 (class 2604 OID 58773)
-- Name: storable version_num; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.storable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 4245 (class 2604 OID 58774)
-- Name: storable published_date; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.storable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 4251 (class 2604 OID 58775)
-- Name: head id; Type: DEFAULT; Schema: issue; Owner: postgres
--

ALTER TABLE ONLY issue.head ALTER COLUMN id SET DEFAULT nextval('issue.head_id_seq'::regclass);


--
-- TOC entry 4256 (class 2604 OID 58776)
-- Name: consumable uom_code; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 4263 (class 2604 OID 58777)
-- Name: definition id; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition ALTER COLUMN id SET DEFAULT nextval('mbom.definition_id_seq'::regclass);


--
-- TOC entry 4266 (class 2604 OID 58778)
-- Name: information id; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.information ALTER COLUMN id SET DEFAULT nextval('mbom.information_id_seq'::regclass);


--
-- TOC entry 4267 (class 2604 OID 58779)
-- Name: primal uom_code; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 4271 (class 2604 OID 58780)
-- Name: information id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.information ALTER COLUMN id SET DEFAULT nextval('operation.information_id_seq'::regclass);


--
-- TOC entry 4274 (class 2604 OID 58781)
-- Name: information id; Type: DEFAULT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY personnel.information ALTER COLUMN id SET DEFAULT nextval('personnel.information_id_seq'::regclass);


--
-- TOC entry 4277 (class 2604 OID 58782)
-- Name: consumable uom_code; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 4278 (class 2604 OID 58783)
-- Name: consumable rationing_qty; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.consumable ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 4283 (class 2604 OID 58784)
-- Name: definition id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.definition ALTER COLUMN id SET DEFAULT nextval('process.definition_id_seq'::regclass);


--
-- TOC entry 4288 (class 2604 OID 58785)
-- Name: information id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.information ALTER COLUMN id SET DEFAULT nextval('process.information_id_seq'::regclass);


--
-- TOC entry 4295 (class 2604 OID 58786)
-- Name: primal uom_code; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 4296 (class 2604 OID 58787)
-- Name: primal rationing_qty; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.primal ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 4290 (class 2604 OID 58788)
-- Name: segment id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.segment ALTER COLUMN id SET DEFAULT nextval('process.segment_id_seq'::regclass);


--
-- TOC entry 4302 (class 2604 OID 58789)
-- Name: blueprint id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.blueprint ALTER COLUMN id SET DEFAULT nextval('product.blueprint_id_seq'::regclass);


--
-- TOC entry 4307 (class 2604 OID 58790)
-- Name: definition id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.definition ALTER COLUMN id SET DEFAULT nextval('product.definition_id_seq'::regclass);


--
-- TOC entry 4312 (class 2604 OID 58791)
-- Name: information id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.information ALTER COLUMN id SET DEFAULT nextval('product.information_id_seq'::regclass);


--
-- TOC entry 4319 (class 2604 OID 58792)
-- Name: segment id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.segment ALTER COLUMN id SET DEFAULT nextval('product.segment_id_seq'::regclass);


--
-- TOC entry 4324 (class 2604 OID 58793)
-- Name: head id; Type: DEFAULT; Schema: receipt; Owner: postgres
--

ALTER TABLE ONLY receipt.head ALTER COLUMN id SET DEFAULT nextval('receipt.head_id_seq'::regclass);


--
-- TOC entry 4331 (class 2604 OID 58794)
-- Name: head id; Type: DEFAULT; Schema: request; Owner: postgres
--

ALTER TABLE ONLY request.head ALTER COLUMN id SET DEFAULT nextval('request.head_id_seq'::regclass);


--
-- TOC entry 4338 (class 2604 OID 58795)
-- Name: head id; Type: DEFAULT; Schema: response; Owner: postgres
--

ALTER TABLE ONLY response.head ALTER COLUMN id SET DEFAULT nextval('response.head_id_seq'::regclass);


--
-- TOC entry 4345 (class 2604 OID 58796)
-- Name: head id; Type: DEFAULT; Schema: stocktake; Owner: postgres
--

ALTER TABLE ONLY stocktake.head ALTER COLUMN id SET DEFAULT nextval('stocktake.head_id_seq'::regclass);


--
-- TOC entry 4349 (class 2604 OID 58797)
-- Name: information id; Type: DEFAULT; Schema: tooling; Owner: postgres
--

ALTER TABLE ONLY tooling.information ALTER COLUMN id SET DEFAULT nextval('tooling.information_id_seq'::regclass);


--
-- TOC entry 4350 (class 2604 OID 58798)
-- Name: assignment uom_role_id; Type: DEFAULT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.assignment ALTER COLUMN uom_role_id SET DEFAULT nextval('uom.uom_role_uom_role_id_seq'::regclass);


--
-- TOC entry 4355 (class 2604 OID 58799)
-- Name: head id; Type: DEFAULT; Schema: work; Owner: postgres
--

ALTER TABLE ONLY work.head ALTER COLUMN id SET DEFAULT nextval('work.head_id_seq'::regclass);


--
-- TOC entry 4878 (class 0 OID 57880)
-- Dependencies: 273
-- Data for Name: process; Type: TABLE DATA; Schema: balance; Owner: postgres
--



--
-- TOC entry 4879 (class 0 OID 57888)
-- Dependencies: 274
-- Data for Name: segment; Type: TABLE DATA; Schema: balance; Owner: postgres
--



--
-- TOC entry 4880 (class 0 OID 57896)
-- Dependencies: 275
-- Data for Name: stock; Type: TABLE DATA; Schema: balance; Owner: postgres
--



--
-- TOC entry 4881 (class 0 OID 57902)
-- Dependencies: 276
-- Data for Name: cutoff_to_claim; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4882 (class 0 OID 57905)
-- Dependencies: 277
-- Data for Name: cutoff_to_issue; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4883 (class 0 OID 57908)
-- Dependencies: 278
-- Data for Name: cutoff_to_receipt; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4884 (class 0 OID 57911)
-- Dependencies: 279
-- Data for Name: cutoff_to_stocktake; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4885 (class 0 OID 57914)
-- Dependencies: 280
-- Data for Name: ebom_to_mbom; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4886 (class 0 OID 57917)
-- Dependencies: 281
-- Data for Name: ebom_to_process; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4887 (class 0 OID 57920)
-- Dependencies: 282
-- Data for Name: ebom_to_product; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4888 (class 0 OID 57923)
-- Dependencies: 283
-- Data for Name: mbom_to_process; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4889 (class 0 OID 57926)
-- Dependencies: 284
-- Data for Name: mbom_to_product; Type: TABLE DATA; Schema: binding; Owner: postgres
--



--
-- TOC entry 4890 (class 0 OID 57929)
-- Dependencies: 285
-- Data for Name: benchmark; Type: TABLE DATA; Schema: calendar; Owner: postgres
--



--
-- TOC entry 4891 (class 0 OID 57932)
-- Dependencies: 286
-- Data for Name: checkpoint; Type: TABLE DATA; Schema: calendar; Owner: postgres
--



--
-- TOC entry 4892 (class 0 OID 57935)
-- Dependencies: 287
-- Data for Name: definition; Type: TABLE DATA; Schema: calendar; Owner: postgres
--



--
-- TOC entry 4893 (class 0 OID 57943)
-- Dependencies: 288
-- Data for Name: information; Type: TABLE DATA; Schema: calendar; Owner: postgres
--



--
-- TOC entry 4894 (class 0 OID 57946)
-- Dependencies: 289
-- Data for Name: workday; Type: TABLE DATA; Schema: calendar; Owner: postgres
--



--
-- TOC entry 4895 (class 0 OID 57953)
-- Dependencies: 290
-- Data for Name: workweek; Type: TABLE DATA; Schema: calendar; Owner: postgres
--



--
-- TOC entry 4896 (class 0 OID 57966)
-- Dependencies: 291
-- Data for Name: body; Type: TABLE DATA; Schema: claim; Owner: postgres
--



--
-- TOC entry 4897 (class 0 OID 57972)
-- Dependencies: 292
-- Data for Name: head; Type: TABLE DATA; Schema: claim; Owner: postgres
--



--
-- TOC entry 4899 (class 0 OID 57986)
-- Dependencies: 294
-- Data for Name: numerator; Type: TABLE DATA; Schema: claim; Owner: postgres
--



--
-- TOC entry 4900 (class 0 OID 57993)
-- Dependencies: 295
-- Data for Name: cutoff_policy; Type: TABLE DATA; Schema: common; Owner: postgres
--

INSERT INTO common.cutoff_policy VALUES ('ISSUE', 'ENFORCING');
INSERT INTO common.cutoff_policy VALUES ('RECEIPT', 'ENFORCING');
INSERT INTO common.cutoff_policy VALUES ('STOCKTAKE', 'ENFORCING');
INSERT INTO common.cutoff_policy VALUES ('CLAIM', 'PERMISSIVE');
INSERT INTO common.cutoff_policy VALUES ('CUTOFF', 'DISABLED');


--
-- TOC entry 4901 (class 0 OID 57997)
-- Dependencies: 296
-- Data for Name: document_abbrevation; Type: TABLE DATA; Schema: common; Owner: postgres
--

INSERT INTO common.document_abbrevation VALUES ('REQUEST', 'REQ');
INSERT INTO common.document_abbrevation VALUES ('RESPONSE', 'RES');
INSERT INTO common.document_abbrevation VALUES ('ISSUE', 'ISS');
INSERT INTO common.document_abbrevation VALUES ('RECEIPT', 'REC');
INSERT INTO common.document_abbrevation VALUES ('STOCKTAKE', 'STO');
INSERT INTO common.document_abbrevation VALUES ('CUTOFF', 'CUT');
INSERT INTO common.document_abbrevation VALUES ('WORK', 'WRK');
INSERT INTO common.document_abbrevation VALUES ('CLAIM', 'CLA');


--
-- TOC entry 4902 (class 0 OID 58004)
-- Dependencies: 297
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
-- TOC entry 4904 (class 0 OID 58012)
-- Dependencies: 299
-- Data for Name: stocktake_policy; Type: TABLE DATA; Schema: common; Owner: postgres
--

INSERT INTO common.stocktake_policy VALUES ('CLAIM', 'DISABLED');
INSERT INTO common.stocktake_policy VALUES ('ISSUE', 'ENFORCING');
INSERT INTO common.stocktake_policy VALUES ('RECEIPT', 'ENFORCING');
INSERT INTO common.stocktake_policy VALUES ('STOCKTAKE', 'DISABLED');
INSERT INTO common.stocktake_policy VALUES ('CUTOFF', 'DISABLED');


--
-- TOC entry 4905 (class 0 OID 58016)
-- Dependencies: 300
-- Data for Name: blocker; Type: TABLE DATA; Schema: cutoff; Owner: postgres
--



--
-- TOC entry 4906 (class 0 OID 58022)
-- Dependencies: 301
-- Data for Name: head; Type: TABLE DATA; Schema: cutoff; Owner: postgres
--



--
-- TOC entry 4908 (class 0 OID 58034)
-- Dependencies: 303
-- Data for Name: numerator; Type: TABLE DATA; Schema: cutoff; Owner: postgres
--



--
-- TOC entry 4910 (class 0 OID 58048)
-- Dependencies: 305
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
-- TOC entry 4911 (class 0 OID 58056)
-- Dependencies: 306
-- Data for Name: blueprint; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 4912 (class 0 OID 58063)
-- Dependencies: 307
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
-- TOC entry 4909 (class 0 OID 58041)
-- Dependencies: 304
-- Data for Name: component; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 4913 (class 0 OID 58071)
-- Dependencies: 308
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
-- TOC entry 4915 (class 0 OID 58088)
-- Dependencies: 310
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
-- TOC entry 4917 (class 0 OID 58101)
-- Dependencies: 313
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
-- TOC entry 4918 (class 0 OID 58109)
-- Dependencies: 314
-- Data for Name: information; Type: TABLE DATA; Schema: equipment; Owner: postgres
--



--
-- TOC entry 4921 (class 0 OID 58132)
-- Dependencies: 318
-- Data for Name: area; Type: TABLE DATA; Schema: facility; Owner: postgres
--

INSERT INTO facility.area VALUES (8, '8236af18-eb1a-11e6-8a73-d4bed939923a', 'AREA-01', 1, 'AREA #1', '2021-05-01', 'SITE-01', 'AREA');
INSERT INTO facility.area VALUES (9, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'AREA-02', 1, 'AREA #2', '2021-05-01', 'SITE-02', 'AREA');


--
-- TOC entry 4922 (class 0 OID 58142)
-- Dependencies: 319
-- Data for Name: enterprise; Type: TABLE DATA; Schema: facility; Owner: postgres
--

INSERT INTO facility.enterprise VALUES (1, 'a711da30-fa3a-11e7-8e63-d4bed939923a', 'ENTERPRISE-01', 1, 'ENTERPRISE #1', '2021-05-01', NULL, 'ENTERPRISE');


--
-- TOC entry 4920 (class 0 OID 58123)
-- Dependencies: 317
-- Data for Name: information; Type: TABLE DATA; Schema: facility; Owner: postgres
--



--
-- TOC entry 4924 (class 0 OID 58154)
-- Dependencies: 321
-- Data for Name: line; Type: TABLE DATA; Schema: facility; Owner: postgres
--



--
-- TOC entry 4925 (class 0 OID 58168)
-- Dependencies: 323
-- Data for Name: site; Type: TABLE DATA; Schema: facility; Owner: postgres
--

INSERT INTO facility.site VALUES (6, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', 'SITE-01', 1, 'SITE #1', '2021-05-01', 'ENTERPRISE-01', 'SITE');
INSERT INTO facility.site VALUES (7, 'f08b5682-fa3a-11e7-86da-d4bed939923a', 'SITE-02', 1, 'SITE #2', '2021-05-01', 'ENTERPRISE-01', 'SITE');


--
-- TOC entry 4926 (class 0 OID 58179)
-- Dependencies: 324
-- Data for Name: zone; Type: TABLE DATA; Schema: facility; Owner: postgres
--



--
-- TOC entry 4928 (class 0 OID 58197)
-- Dependencies: 326
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
-- TOC entry 4929 (class 0 OID 58206)
-- Dependencies: 327
-- Data for Name: buyable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.buyable VALUES ('гайка м12-оц', 1, 'Гайка М12 ГОСТ5916 ОЦ', '2021-05-14', 'BUYABLE', 'pcs', 16);
INSERT INTO inventory.buyable VALUES ('гайка м10', 1, 'Гайка М10 ГОСТ15521', '2021-05-14', 'BUYABLE', 'pcs', 21);
INSERT INTO inventory.buyable VALUES ('гайка м16', 1, 'Гайка М16 ГОСТ15521', '2021-05-14', 'BUYABLE', 'pcs', 22);
INSERT INTO inventory.buyable VALUES ('шайба гроверна 10', 1, 'Шайба гроверна 10 ГОСТ6402', '2021-05-14', 'BUYABLE', 'pcs', 23);
INSERT INTO inventory.buyable VALUES ('шайба гроверна 16', 1, 'Шайба гроверна 16 ГОСТ6402', '2021-05-14', 'BUYABLE', 'pcs', 24);
INSERT INTO inventory.buyable VALUES ('Квд-080х080-ст3ПС', 1, 'Квд-ст3ПС-080х080', '2018-05-01', 'BUYABLE', 'pcs', 32);


--
-- TOC entry 4927 (class 0 OID 58189)
-- Dependencies: 325
-- Data for Name: conglomeration; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4930 (class 0 OID 58215)
-- Dependencies: 328
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
-- TOC entry 4931 (class 0 OID 58224)
-- Dependencies: 329
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
-- TOC entry 4933 (class 0 OID 58238)
-- Dependencies: 331
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
-- TOC entry 4935 (class 0 OID 58248)
-- Dependencies: 333
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
-- TOC entry 4936 (class 0 OID 58254)
-- Dependencies: 334
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
-- TOC entry 4937 (class 0 OID 58263)
-- Dependencies: 335
-- Data for Name: primal; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO inventory.primal VALUES ('Квд-080х080-ст3ПС', 1, 'Квд-ст3ПС-080х080', '2018-05-01', 'PRIMAL', 'pcs', 32);


--
-- TOC entry 4938 (class 0 OID 58272)
-- Dependencies: 336
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
-- TOC entry 4939 (class 0 OID 58281)
-- Dependencies: 337
-- Data for Name: salable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4940 (class 0 OID 58290)
-- Dependencies: 338
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
-- TOC entry 4941 (class 0 OID 58299)
-- Dependencies: 339
-- Data for Name: variety; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 4942 (class 0 OID 58302)
-- Dependencies: 340
-- Data for Name: body; Type: TABLE DATA; Schema: issue; Owner: postgres
--



--
-- TOC entry 4943 (class 0 OID 58308)
-- Dependencies: 341
-- Data for Name: head; Type: TABLE DATA; Schema: issue; Owner: postgres
--



--
-- TOC entry 4945 (class 0 OID 58322)
-- Dependencies: 343
-- Data for Name: numerator; Type: TABLE DATA; Schema: issue; Owner: postgres
--



--
-- TOC entry 4947 (class 0 OID 58336)
-- Dependencies: 345
-- Data for Name: consumable; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 4948 (class 0 OID 58344)
-- Dependencies: 346
-- Data for Name: definition; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 4950 (class 0 OID 58357)
-- Dependencies: 348
-- Data for Name: information; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 4946 (class 0 OID 58329)
-- Dependencies: 344
-- Data for Name: material; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 4952 (class 0 OID 58367)
-- Dependencies: 350
-- Data for Name: primal; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 4953 (class 0 OID 58375)
-- Dependencies: 351
-- Data for Name: information; Type: TABLE DATA; Schema: operation; Owner: postgres
--

INSERT INTO operation.information VALUES (1, '6dd302fe-b5d9-11eb-b4f1-f85971830086', 'OPR-001', 1, 'Operation #001', '2018-01-01', 'OPERATION');
INSERT INTO operation.information VALUES (2, 'b1f2746c-b5dc-11eb-b4f1-f85971830086', 'OPR-002', 1, 'Operation #002', '2018-01-01', 'OPERATION');


--
-- TOC entry 4955 (class 0 OID 58389)
-- Dependencies: 354
-- Data for Name: information; Type: TABLE DATA; Schema: personnel; Owner: postgres
--



--
-- TOC entry 4958 (class 0 OID 58411)
-- Dependencies: 358
-- Data for Name: consumable; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO process.consumable VALUES (8, '23.01.050-001.030', 1, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO process.consumable VALUES (9, '23.01.050-001.030', 1, 1.0000, 'pcs', 'CONSUMABLE', 1);


--
-- TOC entry 4959 (class 0 OID 58419)
-- Dependencies: 359
-- Data for Name: definition; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO process.definition VALUES (8, '27d3e1a2-b5dd-11eb-b4f1-f85971830086', '2021-01-01', NULL, NULL, 'PROPOSED', '2021-05-16 03:25:02.551792+03', 4);
INSERT INTO process.definition VALUES (9, '27d40b50-b5dd-11eb-b4f1-f85971830086', '2021-01-01', NULL, NULL, 'PROPOSED', '2021-05-16 03:25:02.551792+03', 4);
INSERT INTO process.definition VALUES (10, '3b503500-b5dd-11eb-b4f1-f85971830086', '2021-01-01', NULL, NULL, 'PROPOSED', '2021-05-16 03:25:35.24391+03', 5);


--
-- TOC entry 4961 (class 0 OID 58428)
-- Dependencies: 361
-- Data for Name: dependency; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4962 (class 0 OID 58431)
-- Dependencies: 362
-- Data for Name: equipment; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4963 (class 0 OID 58437)
-- Dependencies: 363
-- Data for Name: facility; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4964 (class 0 OID 58443)
-- Dependencies: 364
-- Data for Name: information; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO process.information VALUES (4, '27d3cb04-b5dd-11eb-b4f1-f85971830086', 'Фланець 11с42п DN50х50', '23.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE');
INSERT INTO process.information VALUES (5, '3b502d62-b5dd-11eb-b4f1-f85971830086', 'Фланець 11с42п DN50х50 Штмп', '23.01.050-001.030', 1, 1.0000, 'pcs', 'PRODUCIBLE');


--
-- TOC entry 4957 (class 0 OID 58403)
-- Dependencies: 357
-- Data for Name: material; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4967 (class 0 OID 58466)
-- Dependencies: 368
-- Data for Name: personnel; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4968 (class 0 OID 58476)
-- Dependencies: 369
-- Data for Name: primal; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO process.primal VALUES (10, 'Квд-080х080-ст3ПС', 1, 3.2000, 'kg', 'PRIMAL', 1);


--
-- TOC entry 4966 (class 0 OID 58456)
-- Dependencies: 366
-- Data for Name: segment; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO process.segment VALUES (8, 8, 'OPR-001', '66fe01b6-062d-4e5f-bdfa-f1f5ba4772aa');
INSERT INTO process.segment VALUES (9, 9, 'OPR-001', 'cbc62d50-77de-4b5d-bcff-f3c8924a542d');
INSERT INTO process.segment VALUES (10, 10, 'OPR-001', '6e18b59f-4e7b-4984-954f-84f8945eba4c');
INSERT INTO process.segment VALUES (11, 10, 'OPR-002', '5c6ba26b-8ccf-4959-8d9d-ca7bb02e4b47');


--
-- TOC entry 4970 (class 0 OID 58486)
-- Dependencies: 371
-- Data for Name: tooling; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 4971 (class 0 OID 58492)
-- Dependencies: 372
-- Data for Name: blueprint; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4973 (class 0 OID 58505)
-- Dependencies: 374
-- Data for Name: definition; Type: TABLE DATA; Schema: product; Owner: postgres
--

INSERT INTO product.definition VALUES (3, 'be8cf4fa-b43c-11eb-bc30-f85971830086', '2014-12-22', NULL, NULL, 'COMMITTED', '2021-05-14 01:44:15.286708+03', 3);
INSERT INTO product.definition VALUES (4, 'be8d1d86-b43c-11eb-bc30-f85971830086', '2013-07-29', NULL, NULL, 'COMMITTED', '2021-05-14 01:44:15.286708+03', 4);
INSERT INTO product.definition VALUES (5, '96194c34-b43d-11eb-bc30-f85971830086', '2013-07-29', NULL, NULL, 'COMMITTED', '2021-05-14 01:50:16.917196+03', 5);


--
-- TOC entry 4975 (class 0 OID 58514)
-- Dependencies: 376
-- Data for Name: dependency; Type: TABLE DATA; Schema: product; Owner: postgres
--

INSERT INTO product.dependency VALUES ('ea3f6f7a-b43b-11eb-bc30-f85971830086', 'ffa826ae-b43b-11eb-bc30-f85971830086');
INSERT INTO product.dependency VALUES ('cf69640e-b43a-11eb-bc30-f85971830086', '119c6c22-b43b-11eb-bc30-f85971830086');


--
-- TOC entry 4976 (class 0 OID 58517)
-- Dependencies: 377
-- Data for Name: information; Type: TABLE DATA; Schema: product; Owner: postgres
--

INSERT INTO product.information VALUES (3, 'be8ce564-b43c-11eb-bc30-f85971830086', 'Фланець 11с42п DN50х50', '23.01.050-001', 1, 1.0000, 'pcs', 'PRODUCIBLE');
INSERT INTO product.information VALUES (4, 'be8d18ae-b43c-11eb-bc30-f85971830086', 'Фланець 11с42п LH DN50х50', '23.01.050-002', 1, 1.0000, 'pcs', 'PRODUCIBLE');
INSERT INTO product.information VALUES (5, '9619455e-b43d-11eb-bc30-f85971830086', 'Фланець 11с22п DN50х40', '22.16.050-101', 1, 1.0000, 'pcs', 'PRODUCIBLE');


--
-- TOC entry 4978 (class 0 OID 58534)
-- Dependencies: 380
-- Data for Name: segment; Type: TABLE DATA; Schema: product; Owner: postgres
--

INSERT INTO product.segment VALUES (1, 'ea3f6f7a-b43b-11eb-bc30-f85971830086', 3, '23.01.050-001', 1, 'Фланець 11с42п DN50х50', 1.0000, 'pcs', 'PRODUCIBLE');
INSERT INTO product.segment VALUES (2, 'ffa826ae-b43b-11eb-bc30-f85971830086', 3, '23.01.050-001.030', 1, 'Фланець 11с42п DN50х50 Штмп', 1.0000, 'pcs', 'PRODUCIBLE');
INSERT INTO product.segment VALUES (3, 'cf69640e-b43a-11eb-bc30-f85971830086', 4, '23.01.050-002', 1, 'Фланець 11с42п LH DN50х50', 1.0000, 'pcs', 'PRODUCIBLE');
INSERT INTO product.segment VALUES (4, '119c6c22-b43b-11eb-bc30-f85971830086', 4, '23.01.050-001.030', 1, 'Фланець 11с42п DN50х50 Штмп', 1.0000, 'pcs', 'PRODUCIBLE');


--
-- TOC entry 4980 (class 0 OID 58547)
-- Dependencies: 382
-- Data for Name: tree; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 4981 (class 0 OID 58550)
-- Dependencies: 383
-- Data for Name: body; Type: TABLE DATA; Schema: receipt; Owner: postgres
--



--
-- TOC entry 4982 (class 0 OID 58556)
-- Dependencies: 384
-- Data for Name: head; Type: TABLE DATA; Schema: receipt; Owner: postgres
--



--
-- TOC entry 4984 (class 0 OID 58569)
-- Dependencies: 386
-- Data for Name: numerator; Type: TABLE DATA; Schema: receipt; Owner: postgres
--



--
-- TOC entry 4985 (class 0 OID 58576)
-- Dependencies: 387
-- Data for Name: body; Type: TABLE DATA; Schema: request; Owner: postgres
--



--
-- TOC entry 4986 (class 0 OID 58582)
-- Dependencies: 388
-- Data for Name: head; Type: TABLE DATA; Schema: request; Owner: postgres
--



--
-- TOC entry 4988 (class 0 OID 58595)
-- Dependencies: 390
-- Data for Name: numerator; Type: TABLE DATA; Schema: request; Owner: postgres
--



--
-- TOC entry 4989 (class 0 OID 58602)
-- Dependencies: 391
-- Data for Name: body; Type: TABLE DATA; Schema: response; Owner: postgres
--



--
-- TOC entry 4990 (class 0 OID 58608)
-- Dependencies: 392
-- Data for Name: head; Type: TABLE DATA; Schema: response; Owner: postgres
--

INSERT INTO response.head VALUES (1, '8f8ca0b6-b503-11eb-a9ee-f85971830086', NULL, '2021-01-01', NULL, 'f-01', NULL, NULL, 'PROPOSED', '2021-05-15 01:27:26.281314+03');


--
-- TOC entry 4992 (class 0 OID 58620)
-- Dependencies: 394
-- Data for Name: numerator; Type: TABLE DATA; Schema: response; Owner: postgres
--



--
-- TOC entry 4993 (class 0 OID 58627)
-- Dependencies: 395
-- Data for Name: calendar; Type: TABLE DATA; Schema: schedule; Owner: postgres
--



--
-- TOC entry 4994 (class 0 OID 58630)
-- Dependencies: 396
-- Data for Name: head; Type: TABLE DATA; Schema: stockcard; Owner: postgres
--



--
-- TOC entry 4995 (class 0 OID 58637)
-- Dependencies: 397
-- Data for Name: body; Type: TABLE DATA; Schema: stocktake; Owner: postgres
--



--
-- TOC entry 4996 (class 0 OID 58643)
-- Dependencies: 398
-- Data for Name: head; Type: TABLE DATA; Schema: stocktake; Owner: postgres
--



--
-- TOC entry 4998 (class 0 OID 58655)
-- Dependencies: 400
-- Data for Name: numerator; Type: TABLE DATA; Schema: stocktake; Owner: postgres
--



--
-- TOC entry 4999 (class 0 OID 58677)
-- Dependencies: 404
-- Data for Name: information; Type: TABLE DATA; Schema: tooling; Owner: postgres
--



--
-- TOC entry 5001 (class 0 OID 58691)
-- Dependencies: 407
-- Data for Name: assignment; Type: TABLE DATA; Schema: uom; Owner: postgres
--



--
-- TOC entry 5002 (class 0 OID 58694)
-- Dependencies: 408
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
-- TOC entry 5004 (class 0 OID 58702)
-- Dependencies: 410
-- Data for Name: body; Type: TABLE DATA; Schema: work; Owner: postgres
--

INSERT INTO work.body VALUES (1, '6e18b59f-4e7b-4984-954f-84f8945eba4c', 1000.0000);
INSERT INTO work.body VALUES (1, '5c6ba26b-8ccf-4959-8d9d-ca7bb02e4b47', 1000.0000);


--
-- TOC entry 5005 (class 0 OID 58708)
-- Dependencies: 411
-- Data for Name: head; Type: TABLE DATA; Schema: work; Owner: postgres
--

INSERT INTO work.head VALUES (1, '67a0de06-b70f-11eb-8a8a-f85971830086', 'W-01', '2021-01-01', NULL, 'AREA-01', NULL, NULL, 'PROPOSED', '2021-05-17 15:57:15.589715+03');


--
-- TOC entry 5007 (class 0 OID 58720)
-- Dependencies: 413
-- Data for Name: numerator; Type: TABLE DATA; Schema: work; Owner: postgres
--



--
-- TOC entry 5131 (class 0 OID 0)
-- Dependencies: 293
-- Name: head_id_seq; Type: SEQUENCE SET; Schema: claim; Owner: postgres
--

SELECT pg_catalog.setval('claim.head_id_seq', 1, false);


--
-- TOC entry 5132 (class 0 OID 0)
-- Dependencies: 298
-- Name: exception_code_id_seq; Type: SEQUENCE SET; Schema: common; Owner: postgres
--

SELECT pg_catalog.setval('common.exception_code_id_seq', 1, false);


--
-- TOC entry 5133 (class 0 OID 0)
-- Dependencies: 302
-- Name: head_id_seq; Type: SEQUENCE SET; Schema: cutoff; Owner: postgres
--

SELECT pg_catalog.setval('cutoff.head_id_seq', 1, false);


--
-- TOC entry 5134 (class 0 OID 0)
-- Dependencies: 309
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: ebom; Owner: postgres
--

SELECT pg_catalog.setval('ebom.definition_id_seq', 15, true);


--
-- TOC entry 5135 (class 0 OID 0)
-- Dependencies: 311
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: ebom; Owner: postgres
--

SELECT pg_catalog.setval('ebom.information_id_seq', 12, true);


--
-- TOC entry 5136 (class 0 OID 0)
-- Dependencies: 315
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: equipment; Owner: postgres
--

SELECT pg_catalog.setval('equipment.information_id_seq', 1, false);


--
-- TOC entry 5137 (class 0 OID 0)
-- Dependencies: 320
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: facility; Owner: postgres
--

SELECT pg_catalog.setval('facility.information_id_seq', 9, true);


--
-- TOC entry 5138 (class 0 OID 0)
-- Dependencies: 330
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.definition_id_seq', 32, true);


--
-- TOC entry 5139 (class 0 OID 0)
-- Dependencies: 332
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('inventory.information_id_seq', 32, true);


--
-- TOC entry 5140 (class 0 OID 0)
-- Dependencies: 342
-- Name: head_id_seq; Type: SEQUENCE SET; Schema: issue; Owner: postgres
--

SELECT pg_catalog.setval('issue.head_id_seq', 1, false);


--
-- TOC entry 5141 (class 0 OID 0)
-- Dependencies: 347
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: mbom; Owner: postgres
--

SELECT pg_catalog.setval('mbom.definition_id_seq', 1, false);


--
-- TOC entry 5142 (class 0 OID 0)
-- Dependencies: 349
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: mbom; Owner: postgres
--

SELECT pg_catalog.setval('mbom.information_id_seq', 1, false);


--
-- TOC entry 5143 (class 0 OID 0)
-- Dependencies: 352
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('operation.information_id_seq', 2, true);


--
-- TOC entry 5144 (class 0 OID 0)
-- Dependencies: 355
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: personnel; Owner: postgres
--

SELECT pg_catalog.setval('personnel.information_id_seq', 1, false);


--
-- TOC entry 5145 (class 0 OID 0)
-- Dependencies: 360
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('process.definition_id_seq', 10, true);


--
-- TOC entry 5146 (class 0 OID 0)
-- Dependencies: 365
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('process.information_id_seq', 5, true);


--
-- TOC entry 5147 (class 0 OID 0)
-- Dependencies: 370
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('process.segment_id_seq', 11, true);


--
-- TOC entry 5148 (class 0 OID 0)
-- Dependencies: 373
-- Name: blueprint_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('product.blueprint_id_seq', 12, true);


--
-- TOC entry 5149 (class 0 OID 0)
-- Dependencies: 375
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('product.definition_id_seq', 5, true);


--
-- TOC entry 5150 (class 0 OID 0)
-- Dependencies: 378
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('product.information_id_seq', 5, true);


--
-- TOC entry 5151 (class 0 OID 0)
-- Dependencies: 381
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('product.segment_id_seq', 6, true);


--
-- TOC entry 5152 (class 0 OID 0)
-- Dependencies: 385
-- Name: head_id_seq; Type: SEQUENCE SET; Schema: receipt; Owner: postgres
--

SELECT pg_catalog.setval('receipt.head_id_seq', 1, false);


--
-- TOC entry 5153 (class 0 OID 0)
-- Dependencies: 389
-- Name: head_id_seq; Type: SEQUENCE SET; Schema: request; Owner: postgres
--

SELECT pg_catalog.setval('request.head_id_seq', 1, false);


--
-- TOC entry 5154 (class 0 OID 0)
-- Dependencies: 393
-- Name: head_id_seq; Type: SEQUENCE SET; Schema: response; Owner: postgres
--

SELECT pg_catalog.setval('response.head_id_seq', 1, true);


--
-- TOC entry 5155 (class 0 OID 0)
-- Dependencies: 399
-- Name: head_id_seq; Type: SEQUENCE SET; Schema: stocktake; Owner: postgres
--

SELECT pg_catalog.setval('stocktake.head_id_seq', 1, false);


--
-- TOC entry 5156 (class 0 OID 0)
-- Dependencies: 405
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: tooling; Owner: postgres
--

SELECT pg_catalog.setval('tooling.information_id_seq', 1, false);


--
-- TOC entry 5157 (class 0 OID 0)
-- Dependencies: 409
-- Name: uom_role_uom_role_id_seq; Type: SEQUENCE SET; Schema: uom; Owner: postgres
--

SELECT pg_catalog.setval('uom.uom_role_uom_role_id_seq', 1, false);


--
-- TOC entry 5158 (class 0 OID 0)
-- Dependencies: 412
-- Name: head_id_seq; Type: SEQUENCE SET; Schema: work; Owner: postgres
--

SELECT pg_catalog.setval('work.head_id_seq', 1, true);


--
-- TOC entry 4358 (class 2606 OID 58801)
-- Name: process process_pkey; Type: CONSTRAINT; Schema: balance; Owner: postgres
--

ALTER TABLE ONLY balance.process
    ADD CONSTRAINT process_pkey PRIMARY KEY (facility_code, process_gid);


--
-- TOC entry 4360 (class 2606 OID 58803)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: balance; Owner: postgres
--

ALTER TABLE ONLY balance.segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (facility_code, segment_gid);


--
-- TOC entry 4362 (class 2606 OID 58805)
-- Name: stock stock_pkey; Type: CONSTRAINT; Schema: balance; Owner: postgres
--

ALTER TABLE ONLY balance.stock
    ADD CONSTRAINT stock_pkey PRIMARY KEY (facility_code, part_code);


--
-- TOC entry 4364 (class 2606 OID 58807)
-- Name: cutoff_to_claim cutoff_to_claim_claim_id_key; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.cutoff_to_claim
    ADD CONSTRAINT cutoff_to_claim_claim_id_key UNIQUE (claim_id);


--
-- TOC entry 4366 (class 2606 OID 58809)
-- Name: cutoff_to_claim cutoff_to_claim_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.cutoff_to_claim
    ADD CONSTRAINT cutoff_to_claim_pkey PRIMARY KEY (cutoff_id, claim_id);


--
-- TOC entry 4368 (class 2606 OID 58811)
-- Name: cutoff_to_issue cutoff_to_issue_issue_id_key; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.cutoff_to_issue
    ADD CONSTRAINT cutoff_to_issue_issue_id_key UNIQUE (issue_id);


--
-- TOC entry 4370 (class 2606 OID 58813)
-- Name: cutoff_to_issue cutoff_to_issue_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.cutoff_to_issue
    ADD CONSTRAINT cutoff_to_issue_pkey PRIMARY KEY (cutoff_id, issue_id);


--
-- TOC entry 4372 (class 2606 OID 58815)
-- Name: cutoff_to_receipt cutoff_to_receipt_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.cutoff_to_receipt
    ADD CONSTRAINT cutoff_to_receipt_pkey PRIMARY KEY (cutoff_id, receipt_id);


--
-- TOC entry 4374 (class 2606 OID 58817)
-- Name: cutoff_to_receipt cutoff_to_receipt_receipt_id_key; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.cutoff_to_receipt
    ADD CONSTRAINT cutoff_to_receipt_receipt_id_key UNIQUE (receipt_id);


--
-- TOC entry 4376 (class 2606 OID 58819)
-- Name: cutoff_to_stocktake cutoff_to_stocktake_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.cutoff_to_stocktake
    ADD CONSTRAINT cutoff_to_stocktake_pkey PRIMARY KEY (cutoff_id, stocktake_id);


--
-- TOC entry 4378 (class 2606 OID 58821)
-- Name: cutoff_to_stocktake cutoff_to_stocktake_stocktake_id_key; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.cutoff_to_stocktake
    ADD CONSTRAINT cutoff_to_stocktake_stocktake_id_key UNIQUE (stocktake_id);


--
-- TOC entry 4380 (class 2606 OID 58823)
-- Name: ebom_to_mbom ebom_to_mbom_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.ebom_to_mbom
    ADD CONSTRAINT ebom_to_mbom_pkey PRIMARY KEY (ebom_id, mbom_id);


--
-- TOC entry 4382 (class 2606 OID 58825)
-- Name: ebom_to_process ebom_to_process_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.ebom_to_process
    ADD CONSTRAINT ebom_to_process_pkey PRIMARY KEY (ebom_id, process_id);


--
-- TOC entry 4384 (class 2606 OID 58827)
-- Name: ebom_to_product ebom_to_product_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.ebom_to_product
    ADD CONSTRAINT ebom_to_product_pkey PRIMARY KEY (ebom_id, product_id);


--
-- TOC entry 4386 (class 2606 OID 58829)
-- Name: mbom_to_process mbom_to_process_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.mbom_to_process
    ADD CONSTRAINT mbom_to_process_pkey PRIMARY KEY (mbom_id, process_id);


--
-- TOC entry 4388 (class 2606 OID 58831)
-- Name: mbom_to_product mbom_to_product_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.mbom_to_product
    ADD CONSTRAINT mbom_to_product_pkey PRIMARY KEY (mbom_id, product_id);


--
-- TOC entry 4390 (class 2606 OID 58833)
-- Name: benchmark benchmark_pkey; Type: CONSTRAINT; Schema: calendar; Owner: postgres
--

ALTER TABLE ONLY calendar.benchmark
    ADD CONSTRAINT benchmark_pkey PRIMARY KEY (start_date);


--
-- TOC entry 4392 (class 2606 OID 58835)
-- Name: checkpoint checkpoint_pkey; Type: CONSTRAINT; Schema: calendar; Owner: postgres
--

ALTER TABLE ONLY calendar.checkpoint
    ADD CONSTRAINT checkpoint_pkey PRIMARY KEY (start_date);


--
-- TOC entry 4394 (class 2606 OID 58837)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: calendar; Owner: postgres
--

ALTER TABLE ONLY calendar.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (calendar_date, facility_code);


--
-- TOC entry 4396 (class 2606 OID 58839)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: calendar; Owner: postgres
--

ALTER TABLE ONLY calendar.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (calendar_date);


--
-- TOC entry 4398 (class 2606 OID 58841)
-- Name: workday workday_pkey; Type: CONSTRAINT; Schema: calendar; Owner: postgres
--

ALTER TABLE ONLY calendar.workday
    ADD CONSTRAINT workday_pkey PRIMARY KEY (facility_code);


--
-- TOC entry 4400 (class 2606 OID 58843)
-- Name: workweek workweek_pkey; Type: CONSTRAINT; Schema: calendar; Owner: postgres
--

ALTER TABLE ONLY calendar.workweek
    ADD CONSTRAINT workweek_pkey PRIMARY KEY (facility_code);


--
-- TOC entry 4402 (class 2606 OID 58845)
-- Name: body body_pkey; Type: CONSTRAINT; Schema: claim; Owner: postgres
--

ALTER TABLE ONLY claim.body
    ADD CONSTRAINT body_pkey PRIMARY KEY (head_id, part_code);


--
-- TOC entry 4404 (class 2606 OID 58847)
-- Name: head head_gid_key; Type: CONSTRAINT; Schema: claim; Owner: postgres
--

ALTER TABLE ONLY claim.head
    ADD CONSTRAINT head_gid_key UNIQUE (gid);


--
-- TOC entry 4406 (class 2606 OID 58849)
-- Name: head head_pkey; Type: CONSTRAINT; Schema: claim; Owner: postgres
--

ALTER TABLE ONLY claim.head
    ADD CONSTRAINT head_pkey PRIMARY KEY (id);


--
-- TOC entry 4408 (class 2606 OID 58851)
-- Name: numerator numerator_pkey; Type: CONSTRAINT; Schema: claim; Owner: postgres
--

ALTER TABLE ONLY claim.numerator
    ADD CONSTRAINT numerator_pkey PRIMARY KEY (facility_code, julianized_week);


--
-- TOC entry 4410 (class 2606 OID 58853)
-- Name: cutoff_policy cutoff_policy_pkey; Type: CONSTRAINT; Schema: common; Owner: postgres
--

ALTER TABLE ONLY common.cutoff_policy
    ADD CONSTRAINT cutoff_policy_pkey PRIMARY KEY (document_kind_name);


--
-- TOC entry 4412 (class 2606 OID 58855)
-- Name: document_abbrevation document_abbrevation_pkey; Type: CONSTRAINT; Schema: common; Owner: postgres
--

ALTER TABLE ONLY common.document_abbrevation
    ADD CONSTRAINT document_abbrevation_pkey PRIMARY KEY (doctype);


--
-- TOC entry 4414 (class 2606 OID 58857)
-- Name: exception_code exception_code_condition_name_key; Type: CONSTRAINT; Schema: common; Owner: postgres
--

ALTER TABLE ONLY common.exception_code
    ADD CONSTRAINT exception_code_condition_name_key UNIQUE (condition_name);


--
-- TOC entry 4416 (class 2606 OID 58859)
-- Name: exception_code exception_code_errcode_key; Type: CONSTRAINT; Schema: common; Owner: postgres
--

ALTER TABLE ONLY common.exception_code
    ADD CONSTRAINT exception_code_errcode_key UNIQUE (errcode);


--
-- TOC entry 4418 (class 2606 OID 58861)
-- Name: exception_code exception_code_pkey; Type: CONSTRAINT; Schema: common; Owner: postgres
--

ALTER TABLE ONLY common.exception_code
    ADD CONSTRAINT exception_code_pkey PRIMARY KEY (id);


--
-- TOC entry 4420 (class 2606 OID 58863)
-- Name: stocktake_policy stocktake_policy_pkey; Type: CONSTRAINT; Schema: common; Owner: postgres
--

ALTER TABLE ONLY common.stocktake_policy
    ADD CONSTRAINT stocktake_policy_pkey PRIMARY KEY (document_kind_name);


--
-- TOC entry 4422 (class 2606 OID 58865)
-- Name: blocker blocker_pkey; Type: CONSTRAINT; Schema: cutoff; Owner: postgres
--

ALTER TABLE ONLY cutoff.blocker
    ADD CONSTRAINT blocker_pkey PRIMARY KEY (head_id, blocker_document);


--
-- TOC entry 4424 (class 2606 OID 58867)
-- Name: head head_gid_key; Type: CONSTRAINT; Schema: cutoff; Owner: postgres
--

ALTER TABLE ONLY cutoff.head
    ADD CONSTRAINT head_gid_key UNIQUE (gid);


--
-- TOC entry 4426 (class 2606 OID 58869)
-- Name: head head_pkey; Type: CONSTRAINT; Schema: cutoff; Owner: postgres
--

ALTER TABLE ONLY cutoff.head
    ADD CONSTRAINT head_pkey PRIMARY KEY (id);


--
-- TOC entry 4428 (class 2606 OID 58871)
-- Name: numerator numerator_pkey; Type: CONSTRAINT; Schema: cutoff; Owner: postgres
--

ALTER TABLE ONLY cutoff.numerator
    ADD CONSTRAINT numerator_pkey PRIMARY KEY (facility_code, julianized_week);


--
-- TOC entry 4432 (class 2606 OID 58873)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4434 (class 2606 OID 58875)
-- Name: blueprint blueprint_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.blueprint
    ADD CONSTRAINT blueprint_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4436 (class 2606 OID 58877)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4430 (class 2606 OID 58879)
-- Name: component component_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.component
    ADD CONSTRAINT component_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4438 (class 2606 OID 58881)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 4440 (class 2606 OID 58883)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 4442 (class 2606 OID 58885)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4444 (class 2606 OID 58887)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 4446 (class 2606 OID 58889)
-- Name: information information_part_code_key; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information
    ADD CONSTRAINT information_part_code_key UNIQUE (part_code);


--
-- TOC entry 4448 (class 2606 OID 58891)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4450 (class 2606 OID 58893)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.part
    ADD CONSTRAINT part_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4452 (class 2606 OID 58895)
-- Name: information information_equipment_code_version_num_key; Type: CONSTRAINT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY equipment.information
    ADD CONSTRAINT information_equipment_code_version_num_key UNIQUE (equipment_code, version_num);


--
-- TOC entry 4454 (class 2606 OID 58897)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY equipment.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 4456 (class 2606 OID 58899)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY equipment.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4460 (class 2606 OID 58901)
-- Name: area area_facility_code_key; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area
    ADD CONSTRAINT area_facility_code_key UNIQUE (facility_code);


--
-- TOC entry 4462 (class 2606 OID 58903)
-- Name: area area_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area
    ADD CONSTRAINT area_pkey PRIMARY KEY (id);


--
-- TOC entry 4464 (class 2606 OID 58905)
-- Name: enterprise enterprise_facility_code_key; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.enterprise
    ADD CONSTRAINT enterprise_facility_code_key UNIQUE (facility_code);


--
-- TOC entry 4466 (class 2606 OID 58907)
-- Name: enterprise enterprise_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.enterprise
    ADD CONSTRAINT enterprise_pkey PRIMARY KEY (id);


--
-- TOC entry 4458 (class 2606 OID 58909)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4468 (class 2606 OID 58911)
-- Name: line line_facility_code_key; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line
    ADD CONSTRAINT line_facility_code_key UNIQUE (facility_code);


--
-- TOC entry 4470 (class 2606 OID 58913)
-- Name: line line_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line
    ADD CONSTRAINT line_pkey PRIMARY KEY (id);


--
-- TOC entry 4472 (class 2606 OID 58915)
-- Name: site site_facility_code_key; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site
    ADD CONSTRAINT site_facility_code_key UNIQUE (facility_code);


--
-- TOC entry 4474 (class 2606 OID 58917)
-- Name: site site_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site
    ADD CONSTRAINT site_pkey PRIMARY KEY (id);


--
-- TOC entry 4476 (class 2606 OID 58919)
-- Name: zone zone_facility_code_key; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone
    ADD CONSTRAINT zone_facility_code_key UNIQUE (facility_code);


--
-- TOC entry 4478 (class 2606 OID 58921)
-- Name: zone zone_pkey; Type: CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone
    ADD CONSTRAINT zone_pkey PRIMARY KEY (id);


--
-- TOC entry 4482 (class 2606 OID 58923)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4484 (class 2606 OID 58925)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4480 (class 2606 OID 58927)
-- Name: conglomeration conglomeration_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.conglomeration
    ADD CONSTRAINT conglomeration_pkey PRIMARY KEY (part_code, version_num, inventory_type);


--
-- TOC entry 4486 (class 2606 OID 58929)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4488 (class 2606 OID 58931)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 4490 (class 2606 OID 58933)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 4492 (class 2606 OID 58935)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4494 (class 2606 OID 58937)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 4496 (class 2606 OID 58939)
-- Name: information information_part_code; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.information
    ADD CONSTRAINT information_part_code UNIQUE (part_code);


--
-- TOC entry 4498 (class 2606 OID 58941)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4512 (class 2606 OID 58943)
-- Name: variety kind_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.variety
    ADD CONSTRAINT kind_pkey PRIMARY KEY (definition_id, inventory_type);


--
-- TOC entry 4500 (class 2606 OID 58945)
-- Name: measurement measurement_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.measurement
    ADD CONSTRAINT measurement_pkey PRIMARY KEY (definition_id, uom_code);


--
-- TOC entry 4502 (class 2606 OID 58947)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.part
    ADD CONSTRAINT part_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4504 (class 2606 OID 58949)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4506 (class 2606 OID 58951)
-- Name: producible producible_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.producible
    ADD CONSTRAINT producible_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4508 (class 2606 OID 58953)
-- Name: salable salable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.salable
    ADD CONSTRAINT salable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4510 (class 2606 OID 58955)
-- Name: storable storable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.storable
    ADD CONSTRAINT storable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 4514 (class 2606 OID 58957)
-- Name: body body_pkey; Type: CONSTRAINT; Schema: issue; Owner: postgres
--

ALTER TABLE ONLY issue.body
    ADD CONSTRAINT body_pkey PRIMARY KEY (head_id, part_code);


--
-- TOC entry 4516 (class 2606 OID 58959)
-- Name: head head_gid_key; Type: CONSTRAINT; Schema: issue; Owner: postgres
--

ALTER TABLE ONLY issue.head
    ADD CONSTRAINT head_gid_key UNIQUE (gid);


--
-- TOC entry 4518 (class 2606 OID 58961)
-- Name: head head_pkey; Type: CONSTRAINT; Schema: issue; Owner: postgres
--

ALTER TABLE ONLY issue.head
    ADD CONSTRAINT head_pkey PRIMARY KEY (id);


--
-- TOC entry 4520 (class 2606 OID 58963)
-- Name: numerator numerator_pkey; Type: CONSTRAINT; Schema: issue; Owner: postgres
--

ALTER TABLE ONLY issue.numerator
    ADD CONSTRAINT numerator_pkey PRIMARY KEY (facility_code, julianized_week);


--
-- TOC entry 4524 (class 2606 OID 58965)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4526 (class 2606 OID 58967)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 4528 (class 2606 OID 58969)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 4530 (class 2606 OID 58971)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4532 (class 2606 OID 58973)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4522 (class 2606 OID 58975)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4534 (class 2606 OID 58977)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 4536 (class 2606 OID 58979)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 4538 (class 2606 OID 58981)
-- Name: information information_operation_code_version_num_key; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.information
    ADD CONSTRAINT information_operation_code_version_num_key UNIQUE (operation_code, version_num);


--
-- TOC entry 4540 (class 2606 OID 58983)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY operation.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4542 (class 2606 OID 58985)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY personnel.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 4544 (class 2606 OID 58987)
-- Name: information information_personnel_code_version_num_key; Type: CONSTRAINT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY personnel.information
    ADD CONSTRAINT information_personnel_code_version_num_key UNIQUE (personnel_code, version_num);


--
-- TOC entry 4546 (class 2606 OID 58989)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY personnel.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4550 (class 2606 OID 58991)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4552 (class 2606 OID 58993)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4554 (class 2606 OID 58995)
-- Name: dependency dependency_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.dependency
    ADD CONSTRAINT dependency_pkey PRIMARY KEY (ancestor, descendant);


--
-- TOC entry 4556 (class 2606 OID 58997)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, equipment_code);


--
-- TOC entry 4558 (class 2606 OID 58999)
-- Name: facility facility_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.facility
    ADD CONSTRAINT facility_pkey PRIMARY KEY (segment_id, facility_code);


--
-- TOC entry 4560 (class 2606 OID 59001)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4548 (class 2606 OID 59003)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4566 (class 2606 OID 59005)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, personnel_code);


--
-- TOC entry 4568 (class 2606 OID 59007)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 4562 (class 2606 OID 59009)
-- Name: segment segment_gid_key; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.segment
    ADD CONSTRAINT segment_gid_key UNIQUE (gid);


--
-- TOC entry 4564 (class 2606 OID 59011)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 4570 (class 2606 OID 59013)
-- Name: tooling tooling_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.tooling
    ADD CONSTRAINT tooling_pkey PRIMARY KEY (segment_id, tooling_code);


--
-- TOC entry 4572 (class 2606 OID 59015)
-- Name: blueprint blueprint_gid_key; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.blueprint
    ADD CONSTRAINT blueprint_gid_key UNIQUE (gid);


--
-- TOC entry 4574 (class 2606 OID 59017)
-- Name: blueprint blueprint_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.blueprint
    ADD CONSTRAINT blueprint_pkey PRIMARY KEY (id);


--
-- TOC entry 4576 (class 2606 OID 59019)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 4578 (class 2606 OID 59021)
-- Name: dependency dependency_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.dependency
    ADD CONSTRAINT dependency_pkey PRIMARY KEY (ancestor, descendant);


--
-- TOC entry 4580 (class 2606 OID 59023)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4582 (class 2606 OID 59025)
-- Name: segment segment_gid_key; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.segment
    ADD CONSTRAINT segment_gid_key UNIQUE (gid);


--
-- TOC entry 4584 (class 2606 OID 59027)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 4586 (class 2606 OID 59029)
-- Name: tree tree_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.tree
    ADD CONSTRAINT tree_pkey PRIMARY KEY (ancestor, descendant);


--
-- TOC entry 4588 (class 2606 OID 59031)
-- Name: body body_pkey; Type: CONSTRAINT; Schema: receipt; Owner: postgres
--

ALTER TABLE ONLY receipt.body
    ADD CONSTRAINT body_pkey PRIMARY KEY (head_id, part_code);


--
-- TOC entry 4590 (class 2606 OID 59033)
-- Name: head head_gid_key; Type: CONSTRAINT; Schema: receipt; Owner: postgres
--

ALTER TABLE ONLY receipt.head
    ADD CONSTRAINT head_gid_key UNIQUE (gid);


--
-- TOC entry 4592 (class 2606 OID 59035)
-- Name: head head_pkey; Type: CONSTRAINT; Schema: receipt; Owner: postgres
--

ALTER TABLE ONLY receipt.head
    ADD CONSTRAINT head_pkey PRIMARY KEY (id);


--
-- TOC entry 4594 (class 2606 OID 59037)
-- Name: numerator numerator_pkey; Type: CONSTRAINT; Schema: receipt; Owner: postgres
--

ALTER TABLE ONLY receipt.numerator
    ADD CONSTRAINT numerator_pkey PRIMARY KEY (facility_code, julianized_week);


--
-- TOC entry 4596 (class 2606 OID 59039)
-- Name: body body_pkey; Type: CONSTRAINT; Schema: request; Owner: postgres
--

ALTER TABLE ONLY request.body
    ADD CONSTRAINT body_pkey PRIMARY KEY (head_id, segment_gid);


--
-- TOC entry 4598 (class 2606 OID 59041)
-- Name: head head_gid_key; Type: CONSTRAINT; Schema: request; Owner: postgres
--

ALTER TABLE ONLY request.head
    ADD CONSTRAINT head_gid_key UNIQUE (gid);


--
-- TOC entry 4600 (class 2606 OID 59043)
-- Name: head head_pkey; Type: CONSTRAINT; Schema: request; Owner: postgres
--

ALTER TABLE ONLY request.head
    ADD CONSTRAINT head_pkey PRIMARY KEY (id);


--
-- TOC entry 4602 (class 2606 OID 59045)
-- Name: numerator numerator_pkey; Type: CONSTRAINT; Schema: request; Owner: postgres
--

ALTER TABLE ONLY request.numerator
    ADD CONSTRAINT numerator_pkey PRIMARY KEY (facility_code, julianized_week);


--
-- TOC entry 4604 (class 2606 OID 59047)
-- Name: body body_pkey; Type: CONSTRAINT; Schema: response; Owner: postgres
--

ALTER TABLE ONLY response.body
    ADD CONSTRAINT body_pkey PRIMARY KEY (head_id, segment_gid);


--
-- TOC entry 4606 (class 2606 OID 59049)
-- Name: head head_gid_key; Type: CONSTRAINT; Schema: response; Owner: postgres
--

ALTER TABLE ONLY response.head
    ADD CONSTRAINT head_gid_key UNIQUE (gid);


--
-- TOC entry 4608 (class 2606 OID 59051)
-- Name: head head_pkey; Type: CONSTRAINT; Schema: response; Owner: postgres
--

ALTER TABLE ONLY response.head
    ADD CONSTRAINT head_pkey PRIMARY KEY (id);


--
-- TOC entry 4610 (class 2606 OID 59053)
-- Name: numerator numerator_pkey; Type: CONSTRAINT; Schema: response; Owner: postgres
--

ALTER TABLE ONLY response.numerator
    ADD CONSTRAINT numerator_pkey PRIMARY KEY (facility_code, julianized_week);


--
-- TOC entry 4612 (class 2606 OID 59055)
-- Name: calendar calendar_pkey; Type: CONSTRAINT; Schema: schedule; Owner: postgres
--

ALTER TABLE ONLY schedule.calendar
    ADD CONSTRAINT calendar_pkey PRIMARY KEY (calendar_date);


--
-- TOC entry 4615 (class 2606 OID 59057)
-- Name: head head_pkey; Type: CONSTRAINT; Schema: stockcard; Owner: postgres
--

ALTER TABLE ONLY stockcard.head
    ADD CONSTRAINT head_pkey PRIMARY KEY (document_gid, part_code);


--
-- TOC entry 4617 (class 2606 OID 59059)
-- Name: body body_pkey; Type: CONSTRAINT; Schema: stocktake; Owner: postgres
--

ALTER TABLE ONLY stocktake.body
    ADD CONSTRAINT body_pkey PRIMARY KEY (head_id, part_code);


--
-- TOC entry 4619 (class 2606 OID 59061)
-- Name: head head_gid_key; Type: CONSTRAINT; Schema: stocktake; Owner: postgres
--

ALTER TABLE ONLY stocktake.head
    ADD CONSTRAINT head_gid_key UNIQUE (gid);


--
-- TOC entry 4621 (class 2606 OID 59063)
-- Name: head head_pkey; Type: CONSTRAINT; Schema: stocktake; Owner: postgres
--

ALTER TABLE ONLY stocktake.head
    ADD CONSTRAINT head_pkey PRIMARY KEY (id);


--
-- TOC entry 4623 (class 2606 OID 59065)
-- Name: numerator numerator_pkey; Type: CONSTRAINT; Schema: stocktake; Owner: postgres
--

ALTER TABLE ONLY stocktake.numerator
    ADD CONSTRAINT numerator_pkey PRIMARY KEY (facility_code, julianized_week);


--
-- TOC entry 4625 (class 2606 OID 59067)
-- Name: information information_gid_key; Type: CONSTRAINT; Schema: tooling; Owner: postgres
--

ALTER TABLE ONLY tooling.information
    ADD CONSTRAINT information_gid_key UNIQUE (gid);


--
-- TOC entry 4627 (class 2606 OID 59069)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: tooling; Owner: postgres
--

ALTER TABLE ONLY tooling.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 4629 (class 2606 OID 59071)
-- Name: information information_tooling_code_version_num_key; Type: CONSTRAINT; Schema: tooling; Owner: postgres
--

ALTER TABLE ONLY tooling.information
    ADD CONSTRAINT information_tooling_code_version_num_key UNIQUE (tooling_code, version_num);


--
-- TOC entry 4635 (class 2606 OID 59073)
-- Name: information uom_pkey; Type: CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.information
    ADD CONSTRAINT uom_pkey PRIMARY KEY (uom_code);


--
-- TOC entry 4631 (class 2606 OID 59075)
-- Name: assignment uom_role_pkey; Type: CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.assignment
    ADD CONSTRAINT uom_role_pkey PRIMARY KEY (uom_role_id);


--
-- TOC entry 4633 (class 2606 OID 59077)
-- Name: assignment uom_role_uom_role_code_key; Type: CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.assignment
    ADD CONSTRAINT uom_role_uom_role_code_key UNIQUE (uom_role_code);


--
-- TOC entry 4637 (class 2606 OID 59079)
-- Name: body body_pkey; Type: CONSTRAINT; Schema: work; Owner: postgres
--

ALTER TABLE ONLY work.body
    ADD CONSTRAINT body_pkey PRIMARY KEY (head_id, segment_gid);


--
-- TOC entry 4639 (class 2606 OID 59081)
-- Name: head head_gid_key; Type: CONSTRAINT; Schema: work; Owner: postgres
--

ALTER TABLE ONLY work.head
    ADD CONSTRAINT head_gid_key UNIQUE (gid);


--
-- TOC entry 4641 (class 2606 OID 59083)
-- Name: head head_pkey; Type: CONSTRAINT; Schema: work; Owner: postgres
--

ALTER TABLE ONLY work.head
    ADD CONSTRAINT head_pkey PRIMARY KEY (id);


--
-- TOC entry 4643 (class 2606 OID 59085)
-- Name: numerator numerator_pkey; Type: CONSTRAINT; Schema: work; Owner: postgres
--

ALTER TABLE ONLY work.numerator
    ADD CONSTRAINT numerator_pkey PRIMARY KEY (facility_code, julianized_week);


--
-- TOC entry 4613 (class 1259 OID 59086)
-- Name: head_document_kind_facility_code_part_code_idx; Type: INDEX; Schema: stockcard; Owner: postgres
--

CREATE INDEX head_document_kind_facility_code_part_code_idx ON stockcard.head USING btree (document_kind, facility_code, part_code);


--
-- TOC entry 4722 (class 2620 OID 59087)
-- Name: body disallow_editing_of_committed_document_body; Type: TRIGGER; Schema: claim; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_body BEFORE INSERT OR DELETE OR UPDATE ON claim.body FOR EACH ROW EXECUTE PROCEDURE claim.disallow_editing_of_committed_document_body();


--
-- TOC entry 4723 (class 2620 OID 59088)
-- Name: head disallow_editing_of_committed_document_head; Type: TRIGGER; Schema: claim; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_head BEFORE DELETE OR UPDATE ON claim.head FOR EACH ROW EXECUTE PROCEDURE common.disallow_editing_of_committed_document_head();


--
-- TOC entry 4724 (class 2620 OID 59089)
-- Name: head set_prev_doc_fsmt; Type: TRIGGER; Schema: claim; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON claim.head FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 4725 (class 2620 OID 59090)
-- Name: head set_prev_doc_fsmt; Type: TRIGGER; Schema: cutoff; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON cutoff.head FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 4726 (class 2620 OID 59091)
-- Name: definition disallow_editing_of_committed_document_head; Type: TRIGGER; Schema: ebom; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_head BEFORE DELETE OR UPDATE ON ebom.definition FOR EACH ROW EXECUTE PROCEDURE common.disallow_editing_of_committed_document_head();


--
-- TOC entry 4727 (class 2620 OID 59092)
-- Name: definition set_prev_doc_fsmt; Type: TRIGGER; Schema: ebom; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON ebom.definition FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 4728 (class 2620 OID 59093)
-- Name: body disallow_editing_of_committed_document_body; Type: TRIGGER; Schema: issue; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_body BEFORE INSERT OR DELETE OR UPDATE ON issue.body FOR EACH ROW EXECUTE PROCEDURE issue.disallow_editing_of_committed_document_body();


--
-- TOC entry 4729 (class 2620 OID 59094)
-- Name: head disallow_editing_of_committed_document_head; Type: TRIGGER; Schema: issue; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_head BEFORE DELETE OR UPDATE ON issue.head FOR EACH ROW EXECUTE PROCEDURE common.disallow_editing_of_committed_document_head();


--
-- TOC entry 4730 (class 2620 OID 59095)
-- Name: head set_prev_doc_fsmt; Type: TRIGGER; Schema: issue; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON issue.head FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 4731 (class 2620 OID 59096)
-- Name: body disallow_editing_of_committed_document_body; Type: TRIGGER; Schema: receipt; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_body BEFORE INSERT OR DELETE OR UPDATE ON receipt.body FOR EACH ROW EXECUTE PROCEDURE receipt.disallow_editing_of_committed_document_body();


--
-- TOC entry 4732 (class 2620 OID 59097)
-- Name: head disallow_editing_of_committed_document_head; Type: TRIGGER; Schema: receipt; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_head BEFORE DELETE OR UPDATE ON receipt.head FOR EACH ROW EXECUTE PROCEDURE common.disallow_editing_of_committed_document_head();


--
-- TOC entry 4733 (class 2620 OID 59098)
-- Name: head set_prev_doc_fsmt; Type: TRIGGER; Schema: receipt; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON receipt.head FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 4734 (class 2620 OID 59099)
-- Name: body disallow_editing_of_committed_document_body; Type: TRIGGER; Schema: request; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_body BEFORE INSERT OR DELETE OR UPDATE ON request.body FOR EACH ROW EXECUTE PROCEDURE request.disallow_editing_of_committed_document_body();


--
-- TOC entry 4735 (class 2620 OID 59100)
-- Name: head disallow_editing_of_committed_document_head; Type: TRIGGER; Schema: request; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_head BEFORE DELETE OR UPDATE ON request.head FOR EACH ROW EXECUTE PROCEDURE common.disallow_editing_of_committed_document_head();


--
-- TOC entry 4736 (class 2620 OID 59101)
-- Name: head set_prev_doc_fsmt; Type: TRIGGER; Schema: request; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON request.head FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 4737 (class 2620 OID 59102)
-- Name: body disallow_editing_of_committed_document_body; Type: TRIGGER; Schema: response; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_body BEFORE INSERT OR DELETE OR UPDATE ON response.body FOR EACH ROW EXECUTE PROCEDURE response.disallow_editing_of_committed_document_body();


--
-- TOC entry 4738 (class 2620 OID 59103)
-- Name: head disallow_editing_of_committed_document_head; Type: TRIGGER; Schema: response; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_head BEFORE DELETE OR UPDATE ON response.head FOR EACH ROW EXECUTE PROCEDURE common.disallow_editing_of_committed_document_head();


--
-- TOC entry 4739 (class 2620 OID 59104)
-- Name: head set_prev_doc_fsmt; Type: TRIGGER; Schema: response; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON response.head FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 4740 (class 2620 OID 59105)
-- Name: body disallow_editing_of_committed_document_body; Type: TRIGGER; Schema: stocktake; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_body BEFORE INSERT OR DELETE OR UPDATE ON stocktake.body FOR EACH ROW EXECUTE PROCEDURE stocktake.disallow_editing_of_committed_document_body();


--
-- TOC entry 4741 (class 2620 OID 59106)
-- Name: head disallow_editing_of_committed_document_head; Type: TRIGGER; Schema: stocktake; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_head BEFORE DELETE OR UPDATE ON stocktake.head FOR EACH ROW EXECUTE PROCEDURE common.disallow_editing_of_committed_document_head();


--
-- TOC entry 4742 (class 2620 OID 59107)
-- Name: head set_prev_doc_fsmt; Type: TRIGGER; Schema: stocktake; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON stocktake.head FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 4743 (class 2620 OID 59108)
-- Name: body disallow_editing_of_committed_document_body; Type: TRIGGER; Schema: work; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_body BEFORE INSERT OR DELETE OR UPDATE ON work.body FOR EACH ROW EXECUTE PROCEDURE work.disallow_editing_of_committed_document_body();


--
-- TOC entry 4744 (class 2620 OID 59109)
-- Name: head disallow_editing_of_committed_document_head; Type: TRIGGER; Schema: work; Owner: postgres
--

CREATE TRIGGER disallow_editing_of_committed_document_head BEFORE DELETE OR UPDATE ON work.head FOR EACH ROW EXECUTE PROCEDURE common.disallow_editing_of_committed_document_head();


--
-- TOC entry 4745 (class 2620 OID 59110)
-- Name: head set_prev_doc_fsmt; Type: TRIGGER; Schema: work; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON work.head FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 4644 (class 2606 OID 59111)
-- Name: cutoff_to_claim cutoff_to_claim_claim_id_fkey; Type: FK CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.cutoff_to_claim
    ADD CONSTRAINT cutoff_to_claim_claim_id_fkey FOREIGN KEY (claim_id) REFERENCES claim.head(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4645 (class 2606 OID 59116)
-- Name: cutoff_to_claim cutoff_to_claim_cutoff_id_fkey; Type: FK CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.cutoff_to_claim
    ADD CONSTRAINT cutoff_to_claim_cutoff_id_fkey FOREIGN KEY (cutoff_id) REFERENCES cutoff.head(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4646 (class 2606 OID 59121)
-- Name: cutoff_to_issue cutoff_to_issue_cutoff_id_fkey; Type: FK CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.cutoff_to_issue
    ADD CONSTRAINT cutoff_to_issue_cutoff_id_fkey FOREIGN KEY (cutoff_id) REFERENCES cutoff.head(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4647 (class 2606 OID 59126)
-- Name: cutoff_to_issue cutoff_to_issue_issue_id_fkey; Type: FK CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.cutoff_to_issue
    ADD CONSTRAINT cutoff_to_issue_issue_id_fkey FOREIGN KEY (issue_id) REFERENCES issue.head(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4648 (class 2606 OID 59131)
-- Name: cutoff_to_receipt cutoff_to_receipt_cutoff_id_fkey; Type: FK CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.cutoff_to_receipt
    ADD CONSTRAINT cutoff_to_receipt_cutoff_id_fkey FOREIGN KEY (cutoff_id) REFERENCES cutoff.head(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4649 (class 2606 OID 59136)
-- Name: cutoff_to_receipt cutoff_to_receipt_receipt_id_fkey; Type: FK CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.cutoff_to_receipt
    ADD CONSTRAINT cutoff_to_receipt_receipt_id_fkey FOREIGN KEY (receipt_id) REFERENCES receipt.head(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4650 (class 2606 OID 59141)
-- Name: cutoff_to_stocktake cutoff_to_stocktake_cutoff_id_fkey; Type: FK CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.cutoff_to_stocktake
    ADD CONSTRAINT cutoff_to_stocktake_cutoff_id_fkey FOREIGN KEY (cutoff_id) REFERENCES cutoff.head(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4651 (class 2606 OID 59146)
-- Name: cutoff_to_stocktake cutoff_to_stocktake_stocktake_id_fkey; Type: FK CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY binding.cutoff_to_stocktake
    ADD CONSTRAINT cutoff_to_stocktake_stocktake_id_fkey FOREIGN KEY (stocktake_id) REFERENCES stocktake.head(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4652 (class 2606 OID 59151)
-- Name: definition definition_calendar_date_fkey; Type: FK CONSTRAINT; Schema: calendar; Owner: postgres
--

ALTER TABLE ONLY calendar.definition
    ADD CONSTRAINT definition_calendar_date_fkey FOREIGN KEY (calendar_date) REFERENCES calendar.information(calendar_date) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4653 (class 2606 OID 59156)
-- Name: body body_head_id_fkey; Type: FK CONSTRAINT; Schema: claim; Owner: postgres
--

ALTER TABLE ONLY claim.body
    ADD CONSTRAINT body_head_id_fkey FOREIGN KEY (head_id) REFERENCES claim.head(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4654 (class 2606 OID 59161)
-- Name: blocker blocker_head_id_fkey; Type: FK CONSTRAINT; Schema: cutoff; Owner: postgres
--

ALTER TABLE ONLY cutoff.blocker
    ADD CONSTRAINT blocker_head_id_fkey FOREIGN KEY (head_id) REFERENCES cutoff.head(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4655 (class 2606 OID 59166)
-- Name: assembly assembly_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.assembly
    ADD CONSTRAINT assembly_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES ebom.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4656 (class 2606 OID 59171)
-- Name: assembly assembly_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.assembly
    ADD CONSTRAINT assembly_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.assembly(part_code, version_num) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4657 (class 2606 OID 59176)
-- Name: assembly assembly_uom_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.assembly
    ADD CONSTRAINT assembly_uom_code_fkey FOREIGN KEY (uom_code) REFERENCES uom.information(uom_code) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4658 (class 2606 OID 59181)
-- Name: blueprint blueprint_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.blueprint
    ADD CONSTRAINT blueprint_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES ebom.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4659 (class 2606 OID 59186)
-- Name: blueprint blueprint_uom_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.blueprint
    ADD CONSTRAINT blueprint_uom_code_fkey FOREIGN KEY (uom_code) REFERENCES uom.information(uom_code) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4660 (class 2606 OID 59191)
-- Name: buyable buyable_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.buyable
    ADD CONSTRAINT buyable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES ebom.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4661 (class 2606 OID 59196)
-- Name: buyable buyable_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.buyable
    ADD CONSTRAINT buyable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.buyable(part_code, version_num) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4662 (class 2606 OID 59201)
-- Name: buyable buyable_uom_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.buyable
    ADD CONSTRAINT buyable_uom_code_fkey FOREIGN KEY (uom_code) REFERENCES uom.information(uom_code) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4663 (class 2606 OID 59206)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES ebom.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4664 (class 2606 OID 59211)
-- Name: definition definition_uom_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.definition
    ADD CONSTRAINT definition_uom_code_fkey FOREIGN KEY (uom_code) REFERENCES uom.information(uom_code) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4665 (class 2606 OID 59216)
-- Name: part part_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.part
    ADD CONSTRAINT part_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES ebom.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4666 (class 2606 OID 59221)
-- Name: part part_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.part
    ADD CONSTRAINT part_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.part(part_code, version_num) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4667 (class 2606 OID 59226)
-- Name: part part_uom_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY ebom.part
    ADD CONSTRAINT part_uom_code_fkey FOREIGN KEY (uom_code) REFERENCES uom.information(uom_code) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4668 (class 2606 OID 59231)
-- Name: area area_parent_facility_code_fkey; Type: FK CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.area
    ADD CONSTRAINT area_parent_facility_code_fkey FOREIGN KEY (parent_facility_code) REFERENCES facility.site(facility_code) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4669 (class 2606 OID 59236)
-- Name: line line_parent_facility_code_fkey; Type: FK CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.line
    ADD CONSTRAINT line_parent_facility_code_fkey FOREIGN KEY (parent_facility_code) REFERENCES facility.area(facility_code) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4670 (class 2606 OID 59241)
-- Name: site site_parent_facility_code_fkey; Type: FK CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.site
    ADD CONSTRAINT site_parent_facility_code_fkey FOREIGN KEY (parent_facility_code) REFERENCES facility.enterprise(facility_code) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4671 (class 2606 OID 59246)
-- Name: zone zone_parent_facility_code_fkey; Type: FK CONSTRAINT; Schema: facility; Owner: postgres
--

ALTER TABLE ONLY facility.zone
    ADD CONSTRAINT zone_parent_facility_code_fkey FOREIGN KEY (parent_facility_code) REFERENCES facility.area(facility_code);


--
-- TOC entry 4672 (class 2606 OID 59251)
-- Name: assembly assembly_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.assembly
    ADD CONSTRAINT assembly_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4673 (class 2606 OID 59256)
-- Name: buyable buyable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.buyable
    ADD CONSTRAINT buyable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4674 (class 2606 OID 59261)
-- Name: consumable consumable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.consumable
    ADD CONSTRAINT consumable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4675 (class 2606 OID 59266)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES inventory.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4676 (class 2606 OID 59271)
-- Name: measurement measurement_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.measurement
    ADD CONSTRAINT measurement_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4677 (class 2606 OID 59276)
-- Name: part part_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.part
    ADD CONSTRAINT part_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4678 (class 2606 OID 59281)
-- Name: primal primal_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.primal
    ADD CONSTRAINT primal_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4679 (class 2606 OID 59286)
-- Name: producible producible_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.producible
    ADD CONSTRAINT producible_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4680 (class 2606 OID 59291)
-- Name: salable salable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.salable
    ADD CONSTRAINT salable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4681 (class 2606 OID 59296)
-- Name: storable storable_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.storable
    ADD CONSTRAINT storable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4682 (class 2606 OID 59301)
-- Name: variety variety_definition_id_fkey; Type: FK CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY inventory.variety
    ADD CONSTRAINT variety_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES inventory.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4683 (class 2606 OID 59306)
-- Name: body body_head_id_fkey; Type: FK CONSTRAINT; Schema: issue; Owner: postgres
--

ALTER TABLE ONLY issue.body
    ADD CONSTRAINT body_head_id_fkey FOREIGN KEY (head_id) REFERENCES issue.head(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4684 (class 2606 OID 59311)
-- Name: consumable consumable_definition_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.consumable
    ADD CONSTRAINT consumable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES mbom.definition(id);


--
-- TOC entry 4685 (class 2606 OID 59316)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4686 (class 2606 OID 59321)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES mbom.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4687 (class 2606 OID 59326)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4688 (class 2606 OID 59331)
-- Name: primal primal_definition_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.primal
    ADD CONSTRAINT primal_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES mbom.definition(id);


--
-- TOC entry 4689 (class 2606 OID 59336)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY mbom.primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4690 (class 2606 OID 59341)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4691 (class 2606 OID 59346)
-- Name: consumable consumable_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.consumable
    ADD CONSTRAINT consumable_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4692 (class 2606 OID 59351)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES process.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4693 (class 2606 OID 59356)
-- Name: dependency dependency_ancestor_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.dependency
    ADD CONSTRAINT dependency_ancestor_fkey FOREIGN KEY (ancestor) REFERENCES process.segment(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4694 (class 2606 OID 59361)
-- Name: dependency dependency_descendant_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.dependency
    ADD CONSTRAINT dependency_descendant_fkey FOREIGN KEY (descendant) REFERENCES process.segment(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4695 (class 2606 OID 59366)
-- Name: equipment equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4696 (class 2606 OID 59371)
-- Name: facility facility_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.facility
    ADD CONSTRAINT facility_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4697 (class 2606 OID 59376)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (version_num, part_code) REFERENCES inventory.producible(version_num, part_code) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4698 (class 2606 OID 59381)
-- Name: information information_uom_code_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.information
    ADD CONSTRAINT information_uom_code_fkey FOREIGN KEY (uom_code) REFERENCES uom.information(uom_code) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4700 (class 2606 OID 59386)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4701 (class 2606 OID 59391)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4702 (class 2606 OID 59396)
-- Name: primal primal_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.primal
    ADD CONSTRAINT primal_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4699 (class 2606 OID 59401)
-- Name: segment segment_definition_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.segment
    ADD CONSTRAINT segment_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES process.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4703 (class 2606 OID 59406)
-- Name: tooling tooling_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY process.tooling
    ADD CONSTRAINT tooling_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES process.segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4704 (class 2606 OID 59411)
-- Name: blueprint blueprint_definition_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.blueprint
    ADD CONSTRAINT blueprint_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES product.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4705 (class 2606 OID 59416)
-- Name: blueprint blueprint_uom_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.blueprint
    ADD CONSTRAINT blueprint_uom_code_fkey FOREIGN KEY (uom_code) REFERENCES uom.information(uom_code) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4706 (class 2606 OID 59421)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES product.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4707 (class 2606 OID 59426)
-- Name: dependency dependency_ancestor_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.dependency
    ADD CONSTRAINT dependency_ancestor_fkey FOREIGN KEY (ancestor) REFERENCES product.segment(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4708 (class 2606 OID 59431)
-- Name: dependency dependency_descendant_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.dependency
    ADD CONSTRAINT dependency_descendant_fkey FOREIGN KEY (descendant) REFERENCES product.segment(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4709 (class 2606 OID 59436)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (version_num, part_code) REFERENCES inventory.producible(version_num, part_code) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4710 (class 2606 OID 59441)
-- Name: information information_uom_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.information
    ADD CONSTRAINT information_uom_code_fkey FOREIGN KEY (uom_code) REFERENCES uom.information(uom_code) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4711 (class 2606 OID 59446)
-- Name: segment segment_definition_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.segment
    ADD CONSTRAINT segment_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES product.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4712 (class 2606 OID 59451)
-- Name: segment segment_part_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.segment
    ADD CONSTRAINT segment_part_code_fkey FOREIGN KEY (version_num, part_code) REFERENCES inventory.producible(version_num, part_code);


--
-- TOC entry 4713 (class 2606 OID 59456)
-- Name: segment segment_uom_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.segment
    ADD CONSTRAINT segment_uom_code_fkey FOREIGN KEY (uom_code) REFERENCES uom.information(uom_code) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 4714 (class 2606 OID 59461)
-- Name: tree tree_ancestor_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.tree
    ADD CONSTRAINT tree_ancestor_fkey FOREIGN KEY (ancestor) REFERENCES product.blueprint(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4715 (class 2606 OID 59466)
-- Name: tree tree_descendant_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY product.tree
    ADD CONSTRAINT tree_descendant_fkey FOREIGN KEY (descendant) REFERENCES product.blueprint(gid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4716 (class 2606 OID 59471)
-- Name: body body_head_id_fkey; Type: FK CONSTRAINT; Schema: receipt; Owner: postgres
--

ALTER TABLE ONLY receipt.body
    ADD CONSTRAINT body_head_id_fkey FOREIGN KEY (head_id) REFERENCES receipt.head(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4717 (class 2606 OID 59476)
-- Name: body body_head_id_fkey; Type: FK CONSTRAINT; Schema: request; Owner: postgres
--

ALTER TABLE ONLY request.body
    ADD CONSTRAINT body_head_id_fkey FOREIGN KEY (head_id) REFERENCES request.head(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4718 (class 2606 OID 59481)
-- Name: body body_head_id_fkey; Type: FK CONSTRAINT; Schema: response; Owner: postgres
--

ALTER TABLE ONLY response.body
    ADD CONSTRAINT body_head_id_fkey FOREIGN KEY (head_id) REFERENCES response.head(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4719 (class 2606 OID 59486)
-- Name: body body_head_id_fkey; Type: FK CONSTRAINT; Schema: stocktake; Owner: postgres
--

ALTER TABLE ONLY stocktake.body
    ADD CONSTRAINT body_head_id_fkey FOREIGN KEY (head_id) REFERENCES stocktake.head(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 4720 (class 2606 OID 59491)
-- Name: information uom_base_uom_code_fkey; Type: FK CONSTRAINT; Schema: uom; Owner: postgres
--

ALTER TABLE ONLY uom.information
    ADD CONSTRAINT uom_base_uom_code_fkey FOREIGN KEY (base_uom_code) REFERENCES uom.information(uom_code);


--
-- TOC entry 4721 (class 2606 OID 59496)
-- Name: body body_head_id_fkey; Type: FK CONSTRAINT; Schema: work; Owner: postgres
--

ALTER TABLE ONLY work.body
    ADD CONSTRAINT body_head_id_fkey FOREIGN KEY (head_id) REFERENCES work.head(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2021-05-19 14:30:24 EEST

--
-- PostgreSQL database dump complete
--

