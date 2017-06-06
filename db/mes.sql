--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2017-06-06 17:48:22 EEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 12 (class 2615 OID 23002)
-- Name: binding; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA binding;


ALTER SCHEMA binding OWNER TO postgres;

--
-- TOC entry 3501 (class 0 OID 0)
-- Dependencies: 12
-- Name: SCHEMA binding; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA binding IS 'bond';


--
-- TOC entry 13 (class 2615 OID 23003)
-- Name: bom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA bom;


ALTER SCHEMA bom OWNER TO postgres;

--
-- TOC entry 3502 (class 0 OID 0)
-- Dependencies: 13
-- Name: SCHEMA bom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA bom IS 'bill of material';


--
-- TOC entry 14 (class 2615 OID 23004)
-- Name: common; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA common;


ALTER SCHEMA common OWNER TO postgres;

--
-- TOC entry 15 (class 2615 OID 23005)
-- Name: demand; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA demand;


ALTER SCHEMA demand OWNER TO postgres;

--
-- TOC entry 3503 (class 0 OID 0)
-- Dependencies: 15
-- Name: SCHEMA demand; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA demand IS 'production demand';


--
-- TOC entry 16 (class 2615 OID 23006)
-- Name: inspection; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA inspection;


ALTER SCHEMA inspection OWNER TO postgres;

--
-- TOC entry 3504 (class 0 OID 0)
-- Dependencies: 16
-- Name: SCHEMA inspection; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA inspection IS 'inspection segments';


--
-- TOC entry 17 (class 2615 OID 23007)
-- Name: movement; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA movement;


ALTER SCHEMA movement OWNER TO postgres;

--
-- TOC entry 3505 (class 0 OID 0)
-- Dependencies: 17
-- Name: SCHEMA movement; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA movement IS 'movement segments';


--
-- TOC entry 18 (class 2615 OID 23008)
-- Name: operation; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA operation;


ALTER SCHEMA operation OWNER TO postgres;

--
-- TOC entry 3506 (class 0 OID 0)
-- Dependencies: 18
-- Name: SCHEMA operation; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA operation IS 'operation segments';


--
-- TOC entry 19 (class 2615 OID 23009)
-- Name: plan; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA plan;


ALTER SCHEMA plan OWNER TO postgres;

--
-- TOC entry 20 (class 2615 OID 23010)
-- Name: process; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA process;


ALTER SCHEMA process OWNER TO postgres;

--
-- TOC entry 3507 (class 0 OID 0)
-- Dependencies: 20
-- Name: SCHEMA process; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA process IS 'process segments';


--
-- TOC entry 21 (class 2615 OID 23011)
-- Name: production; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA production;


ALTER SCHEMA production OWNER TO postgres;

--
-- TOC entry 3508 (class 0 OID 0)
-- Dependencies: 21
-- Name: SCHEMA production; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA production IS 'production segments';


--
-- TOC entry 22 (class 2615 OID 23012)
-- Name: request; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA request;


ALTER SCHEMA request OWNER TO postgres;

--
-- TOC entry 3511 (class 0 OID 0)
-- Dependencies: 22
-- Name: SCHEMA request; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA request IS 'operation/production request';


--
-- TOC entry 23 (class 2615 OID 23013)
-- Name: response; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA response;


ALTER SCHEMA response OWNER TO postgres;

--
-- TOC entry 3512 (class 0 OID 0)
-- Dependencies: 23
-- Name: SCHEMA response; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA response IS 'operation/production response';


--
-- TOC entry 24 (class 2615 OID 23014)
-- Name: schedule; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA schedule;


ALTER SCHEMA schedule OWNER TO postgres;

--
-- TOC entry 3513 (class 0 OID 0)
-- Dependencies: 24
-- Name: SCHEMA schedule; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA schedule IS 'production schedule';


--
-- TOC entry 26 (class 2615 OID 23541)
-- Name: tests; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tests;


ALTER SCHEMA tests OWNER TO postgres;

--
-- TOC entry 2 (class 3079 OID 13318)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3514 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 1 (class 3079 OID 23410)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 3515 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


--
-- TOC entry 6 (class 3079 OID 23419)
-- Name: pldbgapi; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pldbgapi WITH SCHEMA public;


--
-- TOC entry 3516 (class 0 OID 0)
-- Dependencies: 6
-- Name: EXTENSION pldbgapi; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pldbgapi IS 'server-side support for debugging PL/pgSQL functions';


--
-- TOC entry 5 (class 3079 OID 23456)
-- Name: plpgsql_check; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql_check WITH SCHEMA public;


--
-- TOC entry 3517 (class 0 OID 0)
-- Dependencies: 5
-- Name: EXTENSION plpgsql_check; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql_check IS 'extended check for plpgsql functions';


--
-- TOC entry 4 (class 3079 OID 23461)
-- Name: plprofiler; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plprofiler WITH SCHEMA public;


--
-- TOC entry 3518 (class 0 OID 0)
-- Dependencies: 4
-- Name: EXTENSION plprofiler; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plprofiler IS 'server-side support for profiling PL/pgSQL functions';


--
-- TOC entry 3 (class 3079 OID 23530)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- TOC entry 3519 (class 0 OID 0)
-- Dependencies: 3
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET search_path = common, pg_catalog;

--
-- TOC entry 678 (class 1247 OID 23016)
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
-- TOC entry 681 (class 1247 OID 23038)
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
-- TOC entry 684 (class 1247 OID 23056)
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
-- TOC entry 687 (class 1247 OID 23070)
-- Name: process_segment_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE process_segment_kind AS ENUM (
    'PRODUCTION',
    'MOVEMENT',
    'INSPECTION'
);


ALTER TYPE process_segment_kind OWNER TO postgres;

--
-- TOC entry 690 (class 1247 OID 23078)
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

SET search_path = bom, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 200 (class 1259 OID 23091)
-- Name: external; Type: TABLE; Schema: bom; Owner: postgres
--

CREATE TABLE external (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE external OWNER TO postgres;

--
-- TOC entry 3520 (class 0 OID 0)
-- Dependencies: 200
-- Name: TABLE external; Type: COMMENT; Schema: bom; Owner: postgres
--

COMMENT ON TABLE external IS 'external bill of material';


--
-- TOC entry 201 (class 1259 OID 23097)
-- Name: external_id_seq; Type: SEQUENCE; Schema: bom; Owner: postgres
--

CREATE SEQUENCE external_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE external_id_seq OWNER TO postgres;

--
-- TOC entry 3521 (class 0 OID 0)
-- Dependencies: 201
-- Name: external_id_seq; Type: SEQUENCE OWNED BY; Schema: bom; Owner: postgres
--

ALTER SEQUENCE external_id_seq OWNED BY external.id;


--
-- TOC entry 202 (class 1259 OID 23099)
-- Name: manufacturing; Type: TABLE; Schema: bom; Owner: postgres
--

CREATE TABLE manufacturing (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE manufacturing OWNER TO postgres;

--
-- TOC entry 3522 (class 0 OID 0)
-- Dependencies: 202
-- Name: TABLE manufacturing; Type: COMMENT; Schema: bom; Owner: postgres
--

COMMENT ON TABLE manufacturing IS 'manufacturing bill of material (production)';


--
-- TOC entry 203 (class 1259 OID 23105)
-- Name: manufacturing_id_seq; Type: SEQUENCE; Schema: bom; Owner: postgres
--

CREATE SEQUENCE manufacturing_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE manufacturing_id_seq OWNER TO postgres;

--
-- TOC entry 3523 (class 0 OID 0)
-- Dependencies: 203
-- Name: manufacturing_id_seq; Type: SEQUENCE OWNED BY; Schema: bom; Owner: postgres
--

ALTER SEQUENCE manufacturing_id_seq OWNED BY manufacturing.id;


--
-- TOC entry 204 (class 1259 OID 23107)
-- Name: operation; Type: TABLE; Schema: bom; Owner: postgres
--

CREATE TABLE operation (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE operation OWNER TO postgres;

--
-- TOC entry 3524 (class 0 OID 0)
-- Dependencies: 204
-- Name: TABLE operation; Type: COMMENT; Schema: bom; Owner: postgres
--

COMMENT ON TABLE operation IS 'operations bill of material ';


--
-- TOC entry 205 (class 1259 OID 23113)
-- Name: operation_id_seq; Type: SEQUENCE; Schema: bom; Owner: postgres
--

CREATE SEQUENCE operation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE operation_id_seq OWNER TO postgres;

--
-- TOC entry 3525 (class 0 OID 0)
-- Dependencies: 205
-- Name: operation_id_seq; Type: SEQUENCE OWNED BY; Schema: bom; Owner: postgres
--

ALTER SEQUENCE operation_id_seq OWNED BY operation.id;


SET search_path = inspection, pg_catalog;

--
-- TOC entry 206 (class 1259 OID 23115)
-- Name: segment; Type: TABLE; Schema: inspection; Owner: postgres
--

CREATE TABLE segment (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE segment OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 23121)
-- Name: segment_id_seq; Type: SEQUENCE; Schema: inspection; Owner: postgres
--

CREATE SEQUENCE segment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE segment_id_seq OWNER TO postgres;

--
-- TOC entry 3526 (class 0 OID 0)
-- Dependencies: 207
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: inspection; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


SET search_path = movement, pg_catalog;

--
-- TOC entry 208 (class 1259 OID 23123)
-- Name: segment; Type: TABLE; Schema: movement; Owner: postgres
--

CREATE TABLE segment (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE segment OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 23129)
-- Name: segment_id_seq; Type: SEQUENCE; Schema: movement; Owner: postgres
--

CREATE SEQUENCE segment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE segment_id_seq OWNER TO postgres;

--
-- TOC entry 3527 (class 0 OID 0)
-- Dependencies: 209
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: movement; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


SET search_path = operation, pg_catalog;

--
-- TOC entry 210 (class 1259 OID 23131)
-- Name: equipment; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE equipment (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE equipment OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 23137)
-- Name: equipment_id_seq; Type: SEQUENCE; Schema: operation; Owner: postgres
--

CREATE SEQUENCE equipment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE equipment_id_seq OWNER TO postgres;

--
-- TOC entry 3528 (class 0 OID 0)
-- Dependencies: 211
-- Name: equipment_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE equipment_id_seq OWNED BY equipment.id;


--
-- TOC entry 212 (class 1259 OID 23139)
-- Name: material; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE material (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE material OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 23145)
-- Name: material_id_seq; Type: SEQUENCE; Schema: operation; Owner: postgres
--

CREATE SEQUENCE material_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE material_id_seq OWNER TO postgres;

--
-- TOC entry 3529 (class 0 OID 0)
-- Dependencies: 213
-- Name: material_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE material_id_seq OWNED BY material.id;


--
-- TOC entry 214 (class 1259 OID 23147)
-- Name: parameter; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE parameter (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE parameter OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 23153)
-- Name: parameter_id_seq; Type: SEQUENCE; Schema: operation; Owner: postgres
--

CREATE SEQUENCE parameter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE parameter_id_seq OWNER TO postgres;

--
-- TOC entry 3530 (class 0 OID 0)
-- Dependencies: 215
-- Name: parameter_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE parameter_id_seq OWNED BY parameter.id;


--
-- TOC entry 216 (class 1259 OID 23155)
-- Name: personnel; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE personnel (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE personnel OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 23161)
-- Name: personnel_id_seq; Type: SEQUENCE; Schema: operation; Owner: postgres
--

CREATE SEQUENCE personnel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE personnel_id_seq OWNER TO postgres;

--
-- TOC entry 3531 (class 0 OID 0)
-- Dependencies: 217
-- Name: personnel_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE personnel_id_seq OWNED BY personnel.id;


--
-- TOC entry 218 (class 1259 OID 23163)
-- Name: segment; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE segment (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE segment OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 23169)
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
-- TOC entry 3532 (class 0 OID 0)
-- Dependencies: 219
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


SET search_path = process, pg_catalog;

--
-- TOC entry 220 (class 1259 OID 23171)
-- Name: definition; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE definition (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 3533 (class 0 OID 0)
-- Dependencies: 220
-- Name: TABLE definition; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE definition IS 'definition of specific process';


--
-- TOC entry 221 (class 1259 OID 23177)
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
-- TOC entry 3534 (class 0 OID 0)
-- Dependencies: 221
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 222 (class 1259 OID 23179)
-- Name: dependency; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE dependency (
    id bigint NOT NULL,
    descr character varying,
    specification_id_a bigint,
    dependency_type common.dependency_kind,
    sbecification_id_b bigint
);


ALTER TABLE dependency OWNER TO postgres;

--
-- TOC entry 3535 (class 0 OID 0)
-- Dependencies: 222
-- Name: TABLE dependency; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE dependency IS 'process secment dependency';


--
-- TOC entry 223 (class 1259 OID 23185)
-- Name: dependency_id_seq; Type: SEQUENCE; Schema: process; Owner: postgres
--

CREATE SEQUENCE dependency_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dependency_id_seq OWNER TO postgres;

--
-- TOC entry 3536 (class 0 OID 0)
-- Dependencies: 223
-- Name: dependency_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE dependency_id_seq OWNED BY dependency.id;


--
-- TOC entry 224 (class 1259 OID 23187)
-- Name: equipment; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE equipment (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE equipment OWNER TO postgres;

--
-- TOC entry 3537 (class 0 OID 0)
-- Dependencies: 224
-- Name: TABLE equipment; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE equipment IS 'process segment equipment specification';


--
-- TOC entry 225 (class 1259 OID 23193)
-- Name: equipment_id_seq; Type: SEQUENCE; Schema: process; Owner: postgres
--

CREATE SEQUENCE equipment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE equipment_id_seq OWNER TO postgres;

--
-- TOC entry 3538 (class 0 OID 0)
-- Dependencies: 225
-- Name: equipment_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE equipment_id_seq OWNED BY equipment.id;


--
-- TOC entry 226 (class 1259 OID 23195)
-- Name: inspection; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE inspection (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE inspection OWNER TO postgres;

--
-- TOC entry 3539 (class 0 OID 0)
-- Dependencies: 226
-- Name: TABLE inspection; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE inspection IS 'inspection segment list';


--
-- TOC entry 227 (class 1259 OID 23201)
-- Name: inspection_id_seq; Type: SEQUENCE; Schema: process; Owner: postgres
--

CREATE SEQUENCE inspection_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE inspection_id_seq OWNER TO postgres;

--
-- TOC entry 3540 (class 0 OID 0)
-- Dependencies: 227
-- Name: inspection_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE inspection_id_seq OWNED BY inspection.id;


--
-- TOC entry 228 (class 1259 OID 23203)
-- Name: material; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE material (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE material OWNER TO postgres;

--
-- TOC entry 3541 (class 0 OID 0)
-- Dependencies: 228
-- Name: TABLE material; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE material IS 'process segment material specification';


--
-- TOC entry 229 (class 1259 OID 23209)
-- Name: material_id_seq; Type: SEQUENCE; Schema: process; Owner: postgres
--

CREATE SEQUENCE material_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE material_id_seq OWNER TO postgres;

--
-- TOC entry 3542 (class 0 OID 0)
-- Dependencies: 229
-- Name: material_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE material_id_seq OWNED BY material.id;


--
-- TOC entry 230 (class 1259 OID 23211)
-- Name: movement; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE movement (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE movement OWNER TO postgres;

--
-- TOC entry 3543 (class 0 OID 0)
-- Dependencies: 230
-- Name: TABLE movement; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE movement IS 'movement segment list';


--
-- TOC entry 231 (class 1259 OID 23217)
-- Name: movement_id_seq; Type: SEQUENCE; Schema: process; Owner: postgres
--

CREATE SEQUENCE movement_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE movement_id_seq OWNER TO postgres;

--
-- TOC entry 3544 (class 0 OID 0)
-- Dependencies: 231
-- Name: movement_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE movement_id_seq OWNED BY movement.id;


--
-- TOC entry 232 (class 1259 OID 23219)
-- Name: personnel; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE personnel (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE personnel OWNER TO postgres;

--
-- TOC entry 3545 (class 0 OID 0)
-- Dependencies: 232
-- Name: TABLE personnel; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE personnel IS 'process segment personnel specification';


--
-- TOC entry 233 (class 1259 OID 23225)
-- Name: personnel_id_seq; Type: SEQUENCE; Schema: process; Owner: postgres
--

CREATE SEQUENCE personnel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE personnel_id_seq OWNER TO postgres;

--
-- TOC entry 3546 (class 0 OID 0)
-- Dependencies: 233
-- Name: personnel_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE personnel_id_seq OWNED BY personnel.id;


--
-- TOC entry 234 (class 1259 OID 23227)
-- Name: production; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE production (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE production OWNER TO postgres;

--
-- TOC entry 3547 (class 0 OID 0)
-- Dependencies: 234
-- Name: TABLE production; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE production IS 'production segment list';


--
-- TOC entry 235 (class 1259 OID 23233)
-- Name: production_id_seq; Type: SEQUENCE; Schema: process; Owner: postgres
--

CREATE SEQUENCE production_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE production_id_seq OWNER TO postgres;

--
-- TOC entry 3548 (class 0 OID 0)
-- Dependencies: 235
-- Name: production_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE production_id_seq OWNED BY production.id;


--
-- TOC entry 236 (class 1259 OID 23235)
-- Name: segment; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE segment (
    id bigint NOT NULL,
    descr character varying,
    segment_kind common.process_segment_kind
);


ALTER TABLE segment OWNER TO postgres;

--
-- TOC entry 3549 (class 0 OID 0)
-- Dependencies: 236
-- Name: TABLE segment; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE segment IS 'segments to specify process';


--
-- TOC entry 237 (class 1259 OID 23241)
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
-- TOC entry 3550 (class 0 OID 0)
-- Dependencies: 237
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


--
-- TOC entry 238 (class 1259 OID 23243)
-- Name: specification; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE specification (
    id bigint NOT NULL,
    descr character varying,
    definition_id bigint,
    segment_id bigint,
    facility_code character varying
);


ALTER TABLE specification OWNER TO postgres;

--
-- TOC entry 3551 (class 0 OID 0)
-- Dependencies: 238
-- Name: TABLE specification; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE specification IS 'list of defined processes';


--
-- TOC entry 239 (class 1259 OID 23249)
-- Name: specification_id_seq; Type: SEQUENCE; Schema: process; Owner: postgres
--

CREATE SEQUENCE specification_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE specification_id_seq OWNER TO postgres;

--
-- TOC entry 3552 (class 0 OID 0)
-- Dependencies: 239
-- Name: specification_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE specification_id_seq OWNED BY specification.id;


SET search_path = production, pg_catalog;

--
-- TOC entry 240 (class 1259 OID 23251)
-- Name: definition; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE definition (
    id bigint NOT NULL,
    descr character varying,
    material_produced character varying
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 3553 (class 0 OID 0)
-- Dependencies: 240
-- Name: TABLE definition; Type: COMMENT; Schema: production; Owner: postgres
--

COMMENT ON TABLE definition IS 'definition of specific production';


--
-- TOC entry 241 (class 1259 OID 23257)
-- Name: definition_id_seq; Type: SEQUENCE; Schema: production; Owner: postgres
--

CREATE SEQUENCE definition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE definition_id_seq OWNER TO postgres;

--
-- TOC entry 3554 (class 0 OID 0)
-- Dependencies: 241
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: production; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 242 (class 1259 OID 23259)
-- Name: equipment; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE equipment (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE equipment OWNER TO postgres;

--
-- TOC entry 3555 (class 0 OID 0)
-- Dependencies: 242
-- Name: TABLE equipment; Type: COMMENT; Schema: production; Owner: postgres
--

COMMENT ON TABLE equipment IS 'production segment equipment specification';


--
-- TOC entry 243 (class 1259 OID 23265)
-- Name: equipment_id_seq; Type: SEQUENCE; Schema: production; Owner: postgres
--

CREATE SEQUENCE equipment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE equipment_id_seq OWNER TO postgres;

--
-- TOC entry 3556 (class 0 OID 0)
-- Dependencies: 243
-- Name: equipment_id_seq; Type: SEQUENCE OWNED BY; Schema: production; Owner: postgres
--

ALTER SEQUENCE equipment_id_seq OWNED BY equipment.id;


--
-- TOC entry 244 (class 1259 OID 23267)
-- Name: material; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE material (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE material OWNER TO postgres;

--
-- TOC entry 3557 (class 0 OID 0)
-- Dependencies: 244
-- Name: TABLE material; Type: COMMENT; Schema: production; Owner: postgres
--

COMMENT ON TABLE material IS 'production segment material specification';


--
-- TOC entry 245 (class 1259 OID 23273)
-- Name: material_id_seq; Type: SEQUENCE; Schema: production; Owner: postgres
--

CREATE SEQUENCE material_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE material_id_seq OWNER TO postgres;

--
-- TOC entry 3558 (class 0 OID 0)
-- Dependencies: 245
-- Name: material_id_seq; Type: SEQUENCE OWNED BY; Schema: production; Owner: postgres
--

ALTER SEQUENCE material_id_seq OWNED BY material.id;


--
-- TOC entry 246 (class 1259 OID 23275)
-- Name: personnel; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE personnel (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE personnel OWNER TO postgres;

--
-- TOC entry 3559 (class 0 OID 0)
-- Dependencies: 246
-- Name: TABLE personnel; Type: COMMENT; Schema: production; Owner: postgres
--

COMMENT ON TABLE personnel IS 'production segment personnel specification';


--
-- TOC entry 247 (class 1259 OID 23281)
-- Name: personnel_id_seq; Type: SEQUENCE; Schema: production; Owner: postgres
--

CREATE SEQUENCE personnel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE personnel_id_seq OWNER TO postgres;

--
-- TOC entry 3560 (class 0 OID 0)
-- Dependencies: 247
-- Name: personnel_id_seq; Type: SEQUENCE OWNED BY; Schema: production; Owner: postgres
--

ALTER SEQUENCE personnel_id_seq OWNED BY personnel.id;


--
-- TOC entry 248 (class 1259 OID 23283)
-- Name: segment; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE segment (
    id bigint NOT NULL,
    descr character varying,
    segment_kind common.process_segment_kind
);


ALTER TABLE segment OWNER TO postgres;

--
-- TOC entry 3561 (class 0 OID 0)
-- Dependencies: 248
-- Name: TABLE segment; Type: COMMENT; Schema: production; Owner: postgres
--

COMMENT ON TABLE segment IS 'segments to specify production';


--
-- TOC entry 249 (class 1259 OID 23289)
-- Name: segment_id_seq; Type: SEQUENCE; Schema: production; Owner: postgres
--

CREATE SEQUENCE segment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE segment_id_seq OWNER TO postgres;

--
-- TOC entry 3562 (class 0 OID 0)
-- Dependencies: 249
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: production; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


--
-- TOC entry 250 (class 1259 OID 23291)
-- Name: specification; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE specification (
    id bigint NOT NULL,
    descr character varying,
    definition_id bigint,
    segment_id bigint,
    facility_code character varying
);


ALTER TABLE specification OWNER TO postgres;

--
-- TOC entry 3563 (class 0 OID 0)
-- Dependencies: 250
-- Name: TABLE specification; Type: COMMENT; Schema: production; Owner: postgres
--

COMMENT ON TABLE specification IS 'list of defined productiones';


--
-- TOC entry 251 (class 1259 OID 23297)
-- Name: specification_id_seq; Type: SEQUENCE; Schema: production; Owner: postgres
--

CREATE SEQUENCE specification_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE specification_id_seq OWNER TO postgres;

--
-- TOC entry 3564 (class 0 OID 0)
-- Dependencies: 251
-- Name: specification_id_seq; Type: SEQUENCE OWNED BY; Schema: production; Owner: postgres
--

ALTER SEQUENCE specification_id_seq OWNED BY specification.id;


SET search_path = bom, pg_catalog;

--
-- TOC entry 3244 (class 2604 OID 23299)
-- Name: id; Type: DEFAULT; Schema: bom; Owner: postgres
--

ALTER TABLE ONLY external ALTER COLUMN id SET DEFAULT nextval('external_id_seq'::regclass);


--
-- TOC entry 3245 (class 2604 OID 23300)
-- Name: id; Type: DEFAULT; Schema: bom; Owner: postgres
--

ALTER TABLE ONLY manufacturing ALTER COLUMN id SET DEFAULT nextval('manufacturing_id_seq'::regclass);


--
-- TOC entry 3246 (class 2604 OID 23301)
-- Name: id; Type: DEFAULT; Schema: bom; Owner: postgres
--

ALTER TABLE ONLY operation ALTER COLUMN id SET DEFAULT nextval('operation_id_seq'::regclass);


SET search_path = inspection, pg_catalog;

--
-- TOC entry 3247 (class 2604 OID 23302)
-- Name: id; Type: DEFAULT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


SET search_path = movement, pg_catalog;

--
-- TOC entry 3248 (class 2604 OID 23303)
-- Name: id; Type: DEFAULT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


SET search_path = operation, pg_catalog;

--
-- TOC entry 3249 (class 2604 OID 23304)
-- Name: id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY equipment ALTER COLUMN id SET DEFAULT nextval('equipment_id_seq'::regclass);


--
-- TOC entry 3250 (class 2604 OID 23305)
-- Name: id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY material ALTER COLUMN id SET DEFAULT nextval('material_id_seq'::regclass);


--
-- TOC entry 3251 (class 2604 OID 23306)
-- Name: id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY parameter ALTER COLUMN id SET DEFAULT nextval('parameter_id_seq'::regclass);


--
-- TOC entry 3252 (class 2604 OID 23307)
-- Name: id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY personnel ALTER COLUMN id SET DEFAULT nextval('personnel_id_seq'::regclass);


--
-- TOC entry 3253 (class 2604 OID 23308)
-- Name: id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


SET search_path = process, pg_catalog;

--
-- TOC entry 3254 (class 2604 OID 23309)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3255 (class 2604 OID 23310)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY dependency ALTER COLUMN id SET DEFAULT nextval('dependency_id_seq'::regclass);


--
-- TOC entry 3256 (class 2604 OID 23311)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY equipment ALTER COLUMN id SET DEFAULT nextval('equipment_id_seq'::regclass);


--
-- TOC entry 3257 (class 2604 OID 23312)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY inspection ALTER COLUMN id SET DEFAULT nextval('inspection_id_seq'::regclass);


--
-- TOC entry 3258 (class 2604 OID 23313)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY material ALTER COLUMN id SET DEFAULT nextval('material_id_seq'::regclass);


--
-- TOC entry 3259 (class 2604 OID 23314)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY movement ALTER COLUMN id SET DEFAULT nextval('movement_id_seq'::regclass);


--
-- TOC entry 3260 (class 2604 OID 23315)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY personnel ALTER COLUMN id SET DEFAULT nextval('personnel_id_seq'::regclass);


--
-- TOC entry 3261 (class 2604 OID 23316)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY production ALTER COLUMN id SET DEFAULT nextval('production_id_seq'::regclass);


--
-- TOC entry 3262 (class 2604 OID 23317)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


--
-- TOC entry 3263 (class 2604 OID 23318)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY specification ALTER COLUMN id SET DEFAULT nextval('specification_id_seq'::regclass);


SET search_path = production, pg_catalog;

--
-- TOC entry 3264 (class 2604 OID 23319)
-- Name: id; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3265 (class 2604 OID 23320)
-- Name: id; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY equipment ALTER COLUMN id SET DEFAULT nextval('equipment_id_seq'::regclass);


--
-- TOC entry 3266 (class 2604 OID 23321)
-- Name: id; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY material ALTER COLUMN id SET DEFAULT nextval('material_id_seq'::regclass);


--
-- TOC entry 3267 (class 2604 OID 23322)
-- Name: id; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY personnel ALTER COLUMN id SET DEFAULT nextval('personnel_id_seq'::regclass);


--
-- TOC entry 3268 (class 2604 OID 23323)
-- Name: id; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


--
-- TOC entry 3269 (class 2604 OID 23324)
-- Name: id; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY specification ALTER COLUMN id SET DEFAULT nextval('specification_id_seq'::regclass);


SET search_path = bom, pg_catalog;

--
-- TOC entry 3444 (class 0 OID 23091)
-- Dependencies: 200
-- Data for Name: external; Type: TABLE DATA; Schema: bom; Owner: postgres
--



--
-- TOC entry 3565 (class 0 OID 0)
-- Dependencies: 201
-- Name: external_id_seq; Type: SEQUENCE SET; Schema: bom; Owner: postgres
--

SELECT pg_catalog.setval('external_id_seq', 1, false);


--
-- TOC entry 3446 (class 0 OID 23099)
-- Dependencies: 202
-- Data for Name: manufacturing; Type: TABLE DATA; Schema: bom; Owner: postgres
--



--
-- TOC entry 3566 (class 0 OID 0)
-- Dependencies: 203
-- Name: manufacturing_id_seq; Type: SEQUENCE SET; Schema: bom; Owner: postgres
--

SELECT pg_catalog.setval('manufacturing_id_seq', 1, false);


--
-- TOC entry 3448 (class 0 OID 23107)
-- Dependencies: 204
-- Data for Name: operation; Type: TABLE DATA; Schema: bom; Owner: postgres
--



--
-- TOC entry 3567 (class 0 OID 0)
-- Dependencies: 205
-- Name: operation_id_seq; Type: SEQUENCE SET; Schema: bom; Owner: postgres
--

SELECT pg_catalog.setval('operation_id_seq', 1, false);


SET search_path = inspection, pg_catalog;

--
-- TOC entry 3450 (class 0 OID 23115)
-- Dependencies: 206
-- Data for Name: segment; Type: TABLE DATA; Schema: inspection; Owner: postgres
--



--
-- TOC entry 3568 (class 0 OID 0)
-- Dependencies: 207
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: inspection; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 1, false);


SET search_path = movement, pg_catalog;

--
-- TOC entry 3452 (class 0 OID 23123)
-- Dependencies: 208
-- Data for Name: segment; Type: TABLE DATA; Schema: movement; Owner: postgres
--



--
-- TOC entry 3569 (class 0 OID 0)
-- Dependencies: 209
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: movement; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 1, false);


SET search_path = operation, pg_catalog;

--
-- TOC entry 3454 (class 0 OID 23131)
-- Dependencies: 210
-- Data for Name: equipment; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3570 (class 0 OID 0)
-- Dependencies: 211
-- Name: equipment_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('equipment_id_seq', 1, false);


--
-- TOC entry 3456 (class 0 OID 23139)
-- Dependencies: 212
-- Data for Name: material; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3571 (class 0 OID 0)
-- Dependencies: 213
-- Name: material_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('material_id_seq', 1, false);


--
-- TOC entry 3458 (class 0 OID 23147)
-- Dependencies: 214
-- Data for Name: parameter; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3572 (class 0 OID 0)
-- Dependencies: 215
-- Name: parameter_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('parameter_id_seq', 1, false);


--
-- TOC entry 3460 (class 0 OID 23155)
-- Dependencies: 216
-- Data for Name: personnel; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3573 (class 0 OID 0)
-- Dependencies: 217
-- Name: personnel_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('personnel_id_seq', 1, false);


--
-- TOC entry 3462 (class 0 OID 23163)
-- Dependencies: 218
-- Data for Name: segment; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3574 (class 0 OID 0)
-- Dependencies: 219
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 1, false);


SET search_path = process, pg_catalog;

--
-- TOC entry 3464 (class 0 OID 23171)
-- Dependencies: 220
-- Data for Name: definition; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO definition VALUES (1, 'valve-31-50');
INSERT INTO definition VALUES (2, 'vlave-41-50');


--
-- TOC entry 3575 (class 0 OID 0)
-- Dependencies: 221
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 2, true);


--
-- TOC entry 3466 (class 0 OID 23179)
-- Dependencies: 222
-- Data for Name: dependency; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO dependency VALUES (1, 'packing after assebling', 1, 'AfterEnd', 2);
INSERT INTO dependency VALUES (2, 'assembling after tooling', 2, 'AfterEnd', 5);
INSERT INTO dependency VALUES (3, 'tooling after forging', 5, 'AfterEnd', 6);
INSERT INTO dependency VALUES (4, 'packing after assebling', 3, 'AfterEnd', 4);
INSERT INTO dependency VALUES (5, 'assembling after tooling', 4, 'AfterEnd', 7);
INSERT INTO dependency VALUES (6, 'tooling after forging', 7, 'AfterEnd', 8);


--
-- TOC entry 3576 (class 0 OID 0)
-- Dependencies: 223
-- Name: dependency_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('dependency_id_seq', 6, true);


--
-- TOC entry 3468 (class 0 OID 23187)
-- Dependencies: 224
-- Data for Name: equipment; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3577 (class 0 OID 0)
-- Dependencies: 225
-- Name: equipment_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('equipment_id_seq', 1, false);


--
-- TOC entry 3470 (class 0 OID 23195)
-- Dependencies: 226
-- Data for Name: inspection; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3578 (class 0 OID 0)
-- Dependencies: 227
-- Name: inspection_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('inspection_id_seq', 1, false);


--
-- TOC entry 3472 (class 0 OID 23203)
-- Dependencies: 228
-- Data for Name: material; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3579 (class 0 OID 0)
-- Dependencies: 229
-- Name: material_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('material_id_seq', 1, false);


--
-- TOC entry 3474 (class 0 OID 23211)
-- Dependencies: 230
-- Data for Name: movement; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3580 (class 0 OID 0)
-- Dependencies: 231
-- Name: movement_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('movement_id_seq', 1, false);


--
-- TOC entry 3476 (class 0 OID 23219)
-- Dependencies: 232
-- Data for Name: personnel; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3581 (class 0 OID 0)
-- Dependencies: 233
-- Name: personnel_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('personnel_id_seq', 1, false);


--
-- TOC entry 3478 (class 0 OID 23227)
-- Dependencies: 234
-- Data for Name: production; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3582 (class 0 OID 0)
-- Dependencies: 235
-- Name: production_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('production_id_seq', 1, false);


--
-- TOC entry 3480 (class 0 OID 23235)
-- Dependencies: 236
-- Data for Name: segment; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO segment VALUES (2, 'packing valve-41-50', 'PRODUCTION');
INSERT INTO segment VALUES (1, 'packing valve-31-50', 'PRODUCTION');
INSERT INTO segment VALUES (3, 'assemling valve-31-50', 'PRODUCTION');
INSERT INTO segment VALUES (4, 'assembling valve-41-50', 'PRODUCTION');
INSERT INTO segment VALUES (5, 'tooling flange-50', 'PRODUCTION');
INSERT INTO segment VALUES (6, 'forging flange-50', 'PRODUCTION');


--
-- TOC entry 3583 (class 0 OID 0)
-- Dependencies: 237
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 6, true);


--
-- TOC entry 3482 (class 0 OID 23243)
-- Dependencies: 238
-- Data for Name: specification; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO specification VALUES (1, 'spec valve-31-50', 1, 1, 'G1');
INSERT INTO specification VALUES (2, 'spec valve-31-50', 1, 3, 'G2');
INSERT INTO specification VALUES (3, 'spec valve-41-50', 2, 1, 'O1');
INSERT INTO specification VALUES (4, 'spec valve-41-50', 2, 4, 'O1');
INSERT INTO specification VALUES (5, 'spec valve-31-50', 1, 5, 'G3');
INSERT INTO specification VALUES (6, 'spec valve-31-50', 1, 6, 'O1');
INSERT INTO specification VALUES (7, 'spec valve-41-50', 2, 5, 'G3');
INSERT INTO specification VALUES (8, 'spec valve-41-50', 2, 6, 'O1');


--
-- TOC entry 3584 (class 0 OID 0)
-- Dependencies: 239
-- Name: specification_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('specification_id_seq', 8, true);


SET search_path = production, pg_catalog;

--
-- TOC entry 3484 (class 0 OID 23251)
-- Dependencies: 240
-- Data for Name: definition; Type: TABLE DATA; Schema: production; Owner: postgres
--



--
-- TOC entry 3585 (class 0 OID 0)
-- Dependencies: 241
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: production; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 1, false);


--
-- TOC entry 3486 (class 0 OID 23259)
-- Dependencies: 242
-- Data for Name: equipment; Type: TABLE DATA; Schema: production; Owner: postgres
--



--
-- TOC entry 3586 (class 0 OID 0)
-- Dependencies: 243
-- Name: equipment_id_seq; Type: SEQUENCE SET; Schema: production; Owner: postgres
--

SELECT pg_catalog.setval('equipment_id_seq', 1, false);


--
-- TOC entry 3488 (class 0 OID 23267)
-- Dependencies: 244
-- Data for Name: material; Type: TABLE DATA; Schema: production; Owner: postgres
--



--
-- TOC entry 3587 (class 0 OID 0)
-- Dependencies: 245
-- Name: material_id_seq; Type: SEQUENCE SET; Schema: production; Owner: postgres
--

SELECT pg_catalog.setval('material_id_seq', 1, false);


--
-- TOC entry 3490 (class 0 OID 23275)
-- Dependencies: 246
-- Data for Name: personnel; Type: TABLE DATA; Schema: production; Owner: postgres
--



--
-- TOC entry 3588 (class 0 OID 0)
-- Dependencies: 247
-- Name: personnel_id_seq; Type: SEQUENCE SET; Schema: production; Owner: postgres
--

SELECT pg_catalog.setval('personnel_id_seq', 1, false);


--
-- TOC entry 3492 (class 0 OID 23283)
-- Dependencies: 248
-- Data for Name: segment; Type: TABLE DATA; Schema: production; Owner: postgres
--



--
-- TOC entry 3589 (class 0 OID 0)
-- Dependencies: 249
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: production; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 1, false);


--
-- TOC entry 3494 (class 0 OID 23291)
-- Dependencies: 250
-- Data for Name: specification; Type: TABLE DATA; Schema: production; Owner: postgres
--



--
-- TOC entry 3590 (class 0 OID 0)
-- Dependencies: 251
-- Name: specification_id_seq; Type: SEQUENCE SET; Schema: production; Owner: postgres
--

SELECT pg_catalog.setval('specification_id_seq', 1, false);


SET search_path = bom, pg_catalog;

--
-- TOC entry 3271 (class 2606 OID 23326)
-- Name: external_pkey; Type: CONSTRAINT; Schema: bom; Owner: postgres
--

ALTER TABLE ONLY external
    ADD CONSTRAINT external_pkey PRIMARY KEY (id);


--
-- TOC entry 3273 (class 2606 OID 23328)
-- Name: manufacturing_pkey; Type: CONSTRAINT; Schema: bom; Owner: postgres
--

ALTER TABLE ONLY manufacturing
    ADD CONSTRAINT manufacturing_pkey PRIMARY KEY (id);


--
-- TOC entry 3275 (class 2606 OID 23330)
-- Name: operation_pkey; Type: CONSTRAINT; Schema: bom; Owner: postgres
--

ALTER TABLE ONLY operation
    ADD CONSTRAINT operation_pkey PRIMARY KEY (id);


SET search_path = inspection, pg_catalog;

--
-- TOC entry 3277 (class 2606 OID 23332)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


SET search_path = movement, pg_catalog;

--
-- TOC entry 3279 (class 2606 OID 23334)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


SET search_path = operation, pg_catalog;

--
-- TOC entry 3281 (class 2606 OID 23336)
-- Name: equipment_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (id);


--
-- TOC entry 3283 (class 2606 OID 23338)
-- Name: material_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY material
    ADD CONSTRAINT material_pkey PRIMARY KEY (id);


--
-- TOC entry 3285 (class 2606 OID 23340)
-- Name: parameter_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY parameter
    ADD CONSTRAINT parameter_pkey PRIMARY KEY (id);


--
-- TOC entry 3287 (class 2606 OID 23342)
-- Name: personnel_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (id);


--
-- TOC entry 3289 (class 2606 OID 23344)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


SET search_path = process, pg_catalog;

--
-- TOC entry 3291 (class 2606 OID 23346)
-- Name: definition_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3293 (class 2606 OID 23348)
-- Name: dependency_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_pkey PRIMARY KEY (id);


--
-- TOC entry 3295 (class 2606 OID 23350)
-- Name: dependency_specification_id_a_sbecification_id_b_key; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_specification_id_a_sbecification_id_b_key UNIQUE (specification_id_a, sbecification_id_b);


--
-- TOC entry 3297 (class 2606 OID 23352)
-- Name: equipment_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (id);


--
-- TOC entry 3299 (class 2606 OID 23354)
-- Name: inspection_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY inspection
    ADD CONSTRAINT inspection_pkey PRIMARY KEY (id);


--
-- TOC entry 3301 (class 2606 OID 23356)
-- Name: material_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY material
    ADD CONSTRAINT material_pkey PRIMARY KEY (id);


--
-- TOC entry 3303 (class 2606 OID 23358)
-- Name: movement_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY movement
    ADD CONSTRAINT movement_pkey PRIMARY KEY (id);


--
-- TOC entry 3305 (class 2606 OID 23360)
-- Name: personnel_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (id);


--
-- TOC entry 3307 (class 2606 OID 23362)
-- Name: production_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY production
    ADD CONSTRAINT production_pkey PRIMARY KEY (id);


--
-- TOC entry 3309 (class 2606 OID 23364)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 3311 (class 2606 OID 23366)
-- Name: specification_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_pkey PRIMARY KEY (id);


SET search_path = production, pg_catalog;

--
-- TOC entry 3313 (class 2606 OID 23368)
-- Name: definition_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3315 (class 2606 OID 23370)
-- Name: equipment_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (id);


--
-- TOC entry 3317 (class 2606 OID 23372)
-- Name: material_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY material
    ADD CONSTRAINT material_pkey PRIMARY KEY (id);


--
-- TOC entry 3319 (class 2606 OID 23374)
-- Name: personnel_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (id);


--
-- TOC entry 3321 (class 2606 OID 23376)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 3323 (class 2606 OID 23378)
-- Name: specification_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_pkey PRIMARY KEY (id);


SET search_path = process, pg_catalog;

--
-- TOC entry 3324 (class 2606 OID 23379)
-- Name: dependency_sbecification_id_b_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_sbecification_id_b_fkey FOREIGN KEY (sbecification_id_b) REFERENCES specification(id);


--
-- TOC entry 3325 (class 2606 OID 23384)
-- Name: dependency_specification_id_a_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_specification_id_a_fkey FOREIGN KEY (specification_id_a) REFERENCES specification(id);


--
-- TOC entry 3326 (class 2606 OID 23389)
-- Name: specification_definition_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id);


--
-- TOC entry 3327 (class 2606 OID 23394)
-- Name: specification_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id);


SET search_path = production, pg_catalog;

--
-- TOC entry 3328 (class 2606 OID 23399)
-- Name: specification_definition_id_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id);


--
-- TOC entry 3329 (class 2606 OID 23404)
-- Name: specification_segment_id_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id);


--
-- TOC entry 3510 (class 0 OID 0)
-- Dependencies: 25
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-06-06 17:48:22 EEST

--
-- PostgreSQL database dump complete
--

