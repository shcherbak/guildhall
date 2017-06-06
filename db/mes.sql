--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2017-06-07 02:54:16 EEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 10 (class 2615 OID 16388)
-- Name: binding; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA binding;


ALTER SCHEMA binding OWNER TO postgres;

--
-- TOC entry 11 (class 2615 OID 16909)
-- Name: bom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA bom;


ALTER SCHEMA bom OWNER TO postgres;

--
-- TOC entry 3344 (class 0 OID 0)
-- Dependencies: 11
-- Name: SCHEMA bom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA bom IS 'bill of material';


--
-- TOC entry 15 (class 2615 OID 17023)
-- Name: common; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA common;


ALTER SCHEMA common OWNER TO postgres;

--
-- TOC entry 17 (class 2615 OID 17172)
-- Name: demand; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA demand;


ALTER SCHEMA demand OWNER TO postgres;

--
-- TOC entry 3345 (class 0 OID 0)
-- Dependencies: 17
-- Name: SCHEMA demand; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA demand IS 'production demand';


--
-- TOC entry 14 (class 2615 OID 16956)
-- Name: inspection; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA inspection;


ALTER SCHEMA inspection OWNER TO postgres;

--
-- TOC entry 3346 (class 0 OID 0)
-- Dependencies: 14
-- Name: SCHEMA inspection; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA inspection IS 'inspection segments';


--
-- TOC entry 13 (class 2615 OID 16955)
-- Name: movement; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA movement;


ALTER SCHEMA movement OWNER TO postgres;

--
-- TOC entry 3347 (class 0 OID 0)
-- Dependencies: 13
-- Name: SCHEMA movement; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA movement IS 'movement segments';


--
-- TOC entry 9 (class 2615 OID 16387)
-- Name: operation; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA operation;


ALTER SCHEMA operation OWNER TO postgres;

--
-- TOC entry 3348 (class 0 OID 0)
-- Dependencies: 9
-- Name: SCHEMA operation; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA operation IS 'operation segments';


--
-- TOC entry 20 (class 2615 OID 17175)
-- Name: plan; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA plan;


ALTER SCHEMA plan OWNER TO postgres;

--
-- TOC entry 8 (class 2615 OID 16385)
-- Name: process; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA process;


ALTER SCHEMA process OWNER TO postgres;

--
-- TOC entry 3349 (class 0 OID 0)
-- Dependencies: 8
-- Name: SCHEMA process; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA process IS 'process segments';


--
-- TOC entry 21 (class 2615 OID 17387)
-- Name: product; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA product;


ALTER SCHEMA product OWNER TO postgres;

--
-- TOC entry 12 (class 2615 OID 16386)
-- Name: production; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA production;


ALTER SCHEMA production OWNER TO postgres;

--
-- TOC entry 3350 (class 0 OID 0)
-- Dependencies: 12
-- Name: SCHEMA production; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA production IS 'production segments';


--
-- TOC entry 18 (class 2615 OID 17173)
-- Name: request; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA request;


ALTER SCHEMA request OWNER TO postgres;

--
-- TOC entry 3353 (class 0 OID 0)
-- Dependencies: 18
-- Name: SCHEMA request; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA request IS 'operation/production request';


--
-- TOC entry 19 (class 2615 OID 17174)
-- Name: response; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA response;


ALTER SCHEMA response OWNER TO postgres;

--
-- TOC entry 3354 (class 0 OID 0)
-- Dependencies: 19
-- Name: SCHEMA response; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA response IS 'operation/production response';


--
-- TOC entry 16 (class 2615 OID 17171)
-- Name: schedule; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA schedule;


ALTER SCHEMA schedule OWNER TO postgres;

--
-- TOC entry 3355 (class 0 OID 0)
-- Dependencies: 16
-- Name: SCHEMA schedule; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA schedule IS 'production schedule';


--
-- TOC entry 22 (class 2615 OID 17388)
-- Name: tests; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tests;


ALTER SCHEMA tests OWNER TO postgres;

--
-- TOC entry 1 (class 3079 OID 13311)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3356 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = common, pg_catalog;

--
-- TOC entry 655 (class 1247 OID 17104)
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
-- TOC entry 652 (class 1247 OID 17126)
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
-- TOC entry 723 (class 1247 OID 17505)
-- Name: material_use_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE material_use_kind AS ENUM (
    'CONSUMABLE',
    'PRODUCIBLE'
);


ALTER TYPE material_use_kind OWNER TO postgres;

--
-- TOC entry 661 (class 1247 OID 17158)
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
-- TOC entry 639 (class 1247 OID 17025)
-- Name: process_segment_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE process_segment_kind AS ENUM (
    'PRODUCTION',
    'MOVEMENT',
    'INSPECTION'
);


ALTER TYPE process_segment_kind OWNER TO postgres;

--
-- TOC entry 658 (class 1247 OID 17144)
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
-- TOC entry 205 (class 1259 OID 16912)
-- Name: external; Type: TABLE; Schema: bom; Owner: postgres
--

CREATE TABLE external (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE external OWNER TO postgres;

--
-- TOC entry 3357 (class 0 OID 0)
-- Dependencies: 205
-- Name: TABLE external; Type: COMMENT; Schema: bom; Owner: postgres
--

COMMENT ON TABLE external IS 'external bill of material';


--
-- TOC entry 204 (class 1259 OID 16910)
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
-- TOC entry 3358 (class 0 OID 0)
-- Dependencies: 204
-- Name: external_id_seq; Type: SEQUENCE OWNED BY; Schema: bom; Owner: postgres
--

ALTER SEQUENCE external_id_seq OWNED BY external.id;


--
-- TOC entry 207 (class 1259 OID 16923)
-- Name: manufacturing; Type: TABLE; Schema: bom; Owner: postgres
--

CREATE TABLE manufacturing (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE manufacturing OWNER TO postgres;

--
-- TOC entry 3359 (class 0 OID 0)
-- Dependencies: 207
-- Name: TABLE manufacturing; Type: COMMENT; Schema: bom; Owner: postgres
--

COMMENT ON TABLE manufacturing IS 'manufacturing bill of material (production)';


--
-- TOC entry 206 (class 1259 OID 16921)
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
-- TOC entry 3360 (class 0 OID 0)
-- Dependencies: 206
-- Name: manufacturing_id_seq; Type: SEQUENCE OWNED BY; Schema: bom; Owner: postgres
--

ALTER SEQUENCE manufacturing_id_seq OWNED BY manufacturing.id;


--
-- TOC entry 209 (class 1259 OID 16934)
-- Name: operation; Type: TABLE; Schema: bom; Owner: postgres
--

CREATE TABLE operation (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE operation OWNER TO postgres;

--
-- TOC entry 3361 (class 0 OID 0)
-- Dependencies: 209
-- Name: TABLE operation; Type: COMMENT; Schema: bom; Owner: postgres
--

COMMENT ON TABLE operation IS 'operations bill of material ';


--
-- TOC entry 208 (class 1259 OID 16932)
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
-- TOC entry 3362 (class 0 OID 0)
-- Dependencies: 208
-- Name: operation_id_seq; Type: SEQUENCE OWNED BY; Schema: bom; Owner: postgres
--

ALTER SEQUENCE operation_id_seq OWNED BY operation.id;


SET search_path = process, pg_catalog;

--
-- TOC entry 225 (class 1259 OID 17389)
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
-- TOC entry 230 (class 1259 OID 17464)
-- Name: equipment; Type: TABLE; Schema: inspection; Owner: postgres
--

CREATE TABLE equipment (
)
INHERITS (process.equipment);


ALTER TABLE equipment OWNER TO postgres;

SET search_path = process, pg_catalog;

--
-- TOC entry 226 (class 1259 OID 17397)
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
-- TOC entry 228 (class 1259 OID 17413)
-- Name: personnel; Type: TABLE; Schema: inspection; Owner: postgres
--

CREATE TABLE personnel (
)
INHERITS (process.personnel);


ALTER TABLE personnel OWNER TO postgres;

SET search_path = process, pg_catalog;

--
-- TOC entry 211 (class 1259 OID 16981)
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
-- TOC entry 3363 (class 0 OID 0)
-- Dependencies: 211
-- Name: TABLE segment; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE segment IS 'segments to specify process';


SET search_path = inspection, pg_catalog;

--
-- TOC entry 222 (class 1259 OID 17356)
-- Name: segment; Type: TABLE; Schema: inspection; Owner: postgres
--

CREATE TABLE segment (
    CONSTRAINT segment_segment_kind_check CHECK ((segment_kind = 'INSPECTION'::common.process_segment_kind))
)
INHERITS (process.segment);


ALTER TABLE segment OWNER TO postgres;

SET search_path = movement, pg_catalog;

--
-- TOC entry 231 (class 1259 OID 17477)
-- Name: equipment; Type: TABLE; Schema: movement; Owner: postgres
--

CREATE TABLE equipment (
)
INHERITS (process.equipment);


ALTER TABLE equipment OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 17405)
-- Name: personnel; Type: TABLE; Schema: movement; Owner: postgres
--

CREATE TABLE personnel (
)
INHERITS (process.personnel);


ALTER TABLE personnel OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 17377)
-- Name: segment; Type: TABLE; Schema: movement; Owner: postgres
--

CREATE TABLE segment (
    CONSTRAINT segment_segment_kind_check CHECK ((segment_kind = 'MOVEMENT'::common.process_segment_kind))
)
INHERITS (process.segment);


ALTER TABLE segment OWNER TO postgres;

SET search_path = operation, pg_catalog;

--
-- TOC entry 201 (class 1259 OID 16889)
-- Name: equipment; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE equipment (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE equipment OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16887)
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
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 200
-- Name: equipment_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE equipment_id_seq OWNED BY equipment.id;


--
-- TOC entry 199 (class 1259 OID 16878)
-- Name: material; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE material (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE material OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16876)
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
-- TOC entry 3365 (class 0 OID 0)
-- Dependencies: 198
-- Name: material_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE material_id_seq OWNED BY material.id;


--
-- TOC entry 219 (class 1259 OID 17321)
-- Name: parameter; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE parameter (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE parameter OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 17319)
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
-- TOC entry 3366 (class 0 OID 0)
-- Dependencies: 218
-- Name: parameter_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE parameter_id_seq OWNED BY parameter.id;


--
-- TOC entry 203 (class 1259 OID 16900)
-- Name: personnel; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE personnel (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE personnel OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16898)
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
-- TOC entry 3367 (class 0 OID 0)
-- Dependencies: 202
-- Name: personnel_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE personnel_id_seq OWNED BY personnel.id;


--
-- TOC entry 197 (class 1259 OID 16867)
-- Name: segment; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE segment (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE segment OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16865)
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
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 196
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


SET search_path = process, pg_catalog;

--
-- TOC entry 213 (class 1259 OID 17033)
-- Name: definition; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE definition (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 3369 (class 0 OID 0)
-- Dependencies: 213
-- Name: TABLE definition; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE definition IS 'definition of specific process';


--
-- TOC entry 212 (class 1259 OID 17031)
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
-- TOC entry 3370 (class 0 OID 0)
-- Dependencies: 212
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 217 (class 1259 OID 17178)
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
-- TOC entry 3371 (class 0 OID 0)
-- Dependencies: 217
-- Name: TABLE dependency; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE dependency IS 'process secment dependency';


--
-- TOC entry 216 (class 1259 OID 17176)
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
-- TOC entry 3372 (class 0 OID 0)
-- Dependencies: 216
-- Name: dependency_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE dependency_id_seq OWNED BY dependency.id;


--
-- TOC entry 221 (class 1259 OID 17347)
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
-- TOC entry 3373 (class 0 OID 0)
-- Dependencies: 221
-- Name: TABLE information; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE information IS 'list of process segments';


--
-- TOC entry 220 (class 1259 OID 17345)
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
-- TOC entry 3374 (class 0 OID 0)
-- Dependencies: 220
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 210 (class 1259 OID 16979)
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
-- TOC entry 3375 (class 0 OID 0)
-- Dependencies: 210
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


--
-- TOC entry 215 (class 1259 OID 17044)
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
-- TOC entry 3376 (class 0 OID 0)
-- Dependencies: 215
-- Name: TABLE specification; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE specification IS 'list of defined processes';


--
-- TOC entry 214 (class 1259 OID 17042)
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
-- TOC entry 3377 (class 0 OID 0)
-- Dependencies: 214
-- Name: specification_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE specification_id_seq OWNED BY specification.id;


SET search_path = production, pg_catalog;

--
-- TOC entry 232 (class 1259 OID 17490)
-- Name: equipment; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE equipment (
)
INHERITS (process.equipment);


ALTER TABLE equipment OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 17421)
-- Name: personnel; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE personnel (
)
INHERITS (process.personnel);


ALTER TABLE personnel OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 17366)
-- Name: segment; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE segment (
    CONSTRAINT segment_segment_kind_check CHECK ((segment_kind = 'PRODUCTION'::common.process_segment_kind))
)
INHERITS (process.segment);


ALTER TABLE segment OWNER TO postgres;

SET search_path = bom, pg_catalog;

--
-- TOC entry 3112 (class 2604 OID 16915)
-- Name: id; Type: DEFAULT; Schema: bom; Owner: postgres
--

ALTER TABLE ONLY external ALTER COLUMN id SET DEFAULT nextval('external_id_seq'::regclass);


--
-- TOC entry 3113 (class 2604 OID 16926)
-- Name: id; Type: DEFAULT; Schema: bom; Owner: postgres
--

ALTER TABLE ONLY manufacturing ALTER COLUMN id SET DEFAULT nextval('manufacturing_id_seq'::regclass);


--
-- TOC entry 3114 (class 2604 OID 16937)
-- Name: id; Type: DEFAULT; Schema: bom; Owner: postgres
--

ALTER TABLE ONLY operation ALTER COLUMN id SET DEFAULT nextval('operation_id_seq'::regclass);


SET search_path = inspection, pg_catalog;

--
-- TOC entry 3121 (class 2604 OID 17359)
-- Name: id; Type: DEFAULT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('process.segment_id_seq'::regclass);


SET search_path = movement, pg_catalog;

--
-- TOC entry 3125 (class 2604 OID 17380)
-- Name: id; Type: DEFAULT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('process.segment_id_seq'::regclass);


SET search_path = operation, pg_catalog;

--
-- TOC entry 3110 (class 2604 OID 16892)
-- Name: id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY equipment ALTER COLUMN id SET DEFAULT nextval('equipment_id_seq'::regclass);


--
-- TOC entry 3109 (class 2604 OID 16881)
-- Name: id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY material ALTER COLUMN id SET DEFAULT nextval('material_id_seq'::regclass);


--
-- TOC entry 3119 (class 2604 OID 17324)
-- Name: id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY parameter ALTER COLUMN id SET DEFAULT nextval('parameter_id_seq'::regclass);


--
-- TOC entry 3111 (class 2604 OID 16903)
-- Name: id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY personnel ALTER COLUMN id SET DEFAULT nextval('personnel_id_seq'::regclass);


--
-- TOC entry 3108 (class 2604 OID 16870)
-- Name: id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


SET search_path = process, pg_catalog;

--
-- TOC entry 3116 (class 2604 OID 17036)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3118 (class 2604 OID 17181)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY dependency ALTER COLUMN id SET DEFAULT nextval('dependency_id_seq'::regclass);


--
-- TOC entry 3120 (class 2604 OID 17350)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3115 (class 2604 OID 16984)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


--
-- TOC entry 3117 (class 2604 OID 17047)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY specification ALTER COLUMN id SET DEFAULT nextval('specification_id_seq'::regclass);


SET search_path = production, pg_catalog;

--
-- TOC entry 3123 (class 2604 OID 17369)
-- Name: id; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('process.segment_id_seq'::regclass);


SET search_path = bom, pg_catalog;

--
-- TOC entry 3311 (class 0 OID 16912)
-- Dependencies: 205
-- Data for Name: external; Type: TABLE DATA; Schema: bom; Owner: postgres
--



--
-- TOC entry 3378 (class 0 OID 0)
-- Dependencies: 204
-- Name: external_id_seq; Type: SEQUENCE SET; Schema: bom; Owner: postgres
--

SELECT pg_catalog.setval('external_id_seq', 1, false);


--
-- TOC entry 3313 (class 0 OID 16923)
-- Dependencies: 207
-- Data for Name: manufacturing; Type: TABLE DATA; Schema: bom; Owner: postgres
--



--
-- TOC entry 3379 (class 0 OID 0)
-- Dependencies: 206
-- Name: manufacturing_id_seq; Type: SEQUENCE SET; Schema: bom; Owner: postgres
--

SELECT pg_catalog.setval('manufacturing_id_seq', 1, false);


--
-- TOC entry 3315 (class 0 OID 16934)
-- Dependencies: 209
-- Data for Name: operation; Type: TABLE DATA; Schema: bom; Owner: postgres
--



--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 208
-- Name: operation_id_seq; Type: SEQUENCE SET; Schema: bom; Owner: postgres
--

SELECT pg_catalog.setval('operation_id_seq', 1, false);


SET search_path = inspection, pg_catalog;

--
-- TOC entry 3336 (class 0 OID 17464)
-- Dependencies: 230
-- Data for Name: equipment; Type: TABLE DATA; Schema: inspection; Owner: postgres
--

INSERT INTO equipment VALUES (8, 'stopwatch-1', 'time measurement', 1.00, 'pcs');
INSERT INTO equipment VALUES (8, 'testbench-1', 'pressure testbench', 1.00, 'pcs');


--
-- TOC entry 3334 (class 0 OID 17413)
-- Dependencies: 228
-- Data for Name: personnel; Type: TABLE DATA; Schema: inspection; Owner: postgres
--

INSERT INTO personnel VALUES (8, 'inspector senior', 'inspector class', 1.00, 'man');
INSERT INTO personnel VALUES (8, 'inspector junior', 'inspector class', 1.00, 'man');


--
-- TOC entry 3328 (class 0 OID 17356)
-- Dependencies: 222
-- Data for Name: segment; Type: TABLE DATA; Schema: inspection; Owner: postgres
--

INSERT INTO segment VALUES (8, 'inspection segment 1', 'INSPECTION', 'B1', 'SITE', '2017-06-07', '08:00:00');


SET search_path = movement, pg_catalog;

--
-- TOC entry 3337 (class 0 OID 17477)
-- Dependencies: 231
-- Data for Name: equipment; Type: TABLE DATA; Schema: movement; Owner: postgres
--

INSERT INTO equipment VALUES (9, 'truck', 'truck class', 1.00, 'pcs');


--
-- TOC entry 3333 (class 0 OID 17405)
-- Dependencies: 227
-- Data for Name: personnel; Type: TABLE DATA; Schema: movement; Owner: postgres
--

INSERT INTO personnel VALUES (9, 'driver', 'driver class', 1.00, 'man');


--
-- TOC entry 3330 (class 0 OID 17377)
-- Dependencies: 224
-- Data for Name: segment; Type: TABLE DATA; Schema: movement; Owner: postgres
--

INSERT INTO segment VALUES (9, 'movement segment 1', 'MOVEMENT', 'C1', 'SITE', '2017-06-07', '23:00:00');


SET search_path = operation, pg_catalog;

--
-- TOC entry 3307 (class 0 OID 16889)
-- Dependencies: 201
-- Data for Name: equipment; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 200
-- Name: equipment_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('equipment_id_seq', 1, false);


--
-- TOC entry 3305 (class 0 OID 16878)
-- Dependencies: 199
-- Data for Name: material; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 198
-- Name: material_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('material_id_seq', 1, false);


--
-- TOC entry 3325 (class 0 OID 17321)
-- Dependencies: 219
-- Data for Name: parameter; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 218
-- Name: parameter_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('parameter_id_seq', 1, false);


--
-- TOC entry 3309 (class 0 OID 16900)
-- Dependencies: 203
-- Data for Name: personnel; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 202
-- Name: personnel_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('personnel_id_seq', 1, false);


--
-- TOC entry 3303 (class 0 OID 16867)
-- Dependencies: 197
-- Data for Name: segment; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 196
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 1, false);


SET search_path = process, pg_catalog;

--
-- TOC entry 3319 (class 0 OID 17033)
-- Dependencies: 213
-- Data for Name: definition; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO definition VALUES (1, 'valve-31-50');
INSERT INTO definition VALUES (2, 'vlave-41-50');


--
-- TOC entry 3386 (class 0 OID 0)
-- Dependencies: 212
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 2, true);


--
-- TOC entry 3323 (class 0 OID 17178)
-- Dependencies: 217
-- Data for Name: dependency; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3387 (class 0 OID 0)
-- Dependencies: 216
-- Name: dependency_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('dependency_id_seq', 6, true);


--
-- TOC entry 3331 (class 0 OID 17389)
-- Dependencies: 225
-- Data for Name: equipment; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3327 (class 0 OID 17347)
-- Dependencies: 221
-- Data for Name: information; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3388 (class 0 OID 0)
-- Dependencies: 220
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, false);


--
-- TOC entry 3332 (class 0 OID 17397)
-- Dependencies: 226
-- Data for Name: personnel; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3317 (class 0 OID 16981)
-- Dependencies: 211
-- Data for Name: segment; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3389 (class 0 OID 0)
-- Dependencies: 210
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 9, true);


--
-- TOC entry 3321 (class 0 OID 17044)
-- Dependencies: 215
-- Data for Name: specification; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3390 (class 0 OID 0)
-- Dependencies: 214
-- Name: specification_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('specification_id_seq', 8, true);


SET search_path = production, pg_catalog;

--
-- TOC entry 3338 (class 0 OID 17490)
-- Dependencies: 232
-- Data for Name: equipment; Type: TABLE DATA; Schema: production; Owner: postgres
--

INSERT INTO equipment VALUES (7, 'tool-1', 'tool class', 2.00, 'pcs');
INSERT INTO equipment VALUES (7, 'machine-tool
	
machine-tool
	
machine-tool', 'machine class', 1.00, 'pcs');


--
-- TOC entry 3335 (class 0 OID 17421)
-- Dependencies: 229
-- Data for Name: personnel; Type: TABLE DATA; Schema: production; Owner: postgres
--

INSERT INTO personnel VALUES (7, 'operator-1', 'operator class', 2.00, 'man');


--
-- TOC entry 3329 (class 0 OID 17366)
-- Dependencies: 223
-- Data for Name: segment; Type: TABLE DATA; Schema: production; Owner: postgres
--

INSERT INTO segment VALUES (7, 'production segm 1', 'PRODUCTION', 'A1', 'SITE', '2017-06-07', '02:00:00');


SET search_path = bom, pg_catalog;

--
-- TOC entry 3136 (class 2606 OID 16920)
-- Name: external_pkey; Type: CONSTRAINT; Schema: bom; Owner: postgres
--

ALTER TABLE ONLY external
    ADD CONSTRAINT external_pkey PRIMARY KEY (id);


--
-- TOC entry 3138 (class 2606 OID 16931)
-- Name: manufacturing_pkey; Type: CONSTRAINT; Schema: bom; Owner: postgres
--

ALTER TABLE ONLY manufacturing
    ADD CONSTRAINT manufacturing_pkey PRIMARY KEY (id);


--
-- TOC entry 3140 (class 2606 OID 16942)
-- Name: operation_pkey; Type: CONSTRAINT; Schema: bom; Owner: postgres
--

ALTER TABLE ONLY operation
    ADD CONSTRAINT operation_pkey PRIMARY KEY (id);


SET search_path = inspection, pg_catalog;

--
-- TOC entry 3172 (class 2606 OID 17471)
-- Name: equipment_pkey; Type: CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3168 (class 2606 OID 17420)
-- Name: personnel_pkey; Type: CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3156 (class 2606 OID 17364)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


SET search_path = movement, pg_catalog;

--
-- TOC entry 3174 (class 2606 OID 17484)
-- Name: equipment_pkey; Type: CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3166 (class 2606 OID 17412)
-- Name: personnel_pkey; Type: CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3160 (class 2606 OID 17386)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


SET search_path = operation, pg_catalog;

--
-- TOC entry 3132 (class 2606 OID 16897)
-- Name: equipment_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (id);


--
-- TOC entry 3130 (class 2606 OID 16886)
-- Name: material_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY material
    ADD CONSTRAINT material_pkey PRIMARY KEY (id);


--
-- TOC entry 3152 (class 2606 OID 17329)
-- Name: parameter_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY parameter
    ADD CONSTRAINT parameter_pkey PRIMARY KEY (id);


--
-- TOC entry 3134 (class 2606 OID 16908)
-- Name: personnel_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (id);


--
-- TOC entry 3128 (class 2606 OID 16875)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


SET search_path = process, pg_catalog;

--
-- TOC entry 3144 (class 2606 OID 17041)
-- Name: definition_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3148 (class 2606 OID 17186)
-- Name: dependency_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_pkey PRIMARY KEY (id);


--
-- TOC entry 3150 (class 2606 OID 17198)
-- Name: dependency_specification_id_a_sbecification_id_b_key; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_specification_id_a_sbecification_id_b_key UNIQUE (specification_id_a, sbecification_id_b);


--
-- TOC entry 3162 (class 2606 OID 17396)
-- Name: equipment_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3154 (class 2606 OID 17355)
-- Name: information_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3164 (class 2606 OID 17404)
-- Name: personnel_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3142 (class 2606 OID 16989)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 3146 (class 2606 OID 17052)
-- Name: specification_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_pkey PRIMARY KEY (id);


SET search_path = production, pg_catalog;

--
-- TOC entry 3176 (class 2606 OID 17497)
-- Name: equipment_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3170 (class 2606 OID 17428)
-- Name: personnel_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3158 (class 2606 OID 17375)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


SET search_path = inspection, pg_catalog;

--
-- TOC entry 3185 (class 2606 OID 17472)
-- Name: equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3183 (class 2606 OID 17429)
-- Name: personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = movement, pg_catalog;

--
-- TOC entry 3186 (class 2606 OID 17485)
-- Name: equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3182 (class 2606 OID 17449)
-- Name: personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = process, pg_catalog;

--
-- TOC entry 3180 (class 2606 OID 17192)
-- Name: dependency_sbecification_id_b_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_sbecification_id_b_fkey FOREIGN KEY (sbecification_id_b) REFERENCES specification(id);


--
-- TOC entry 3179 (class 2606 OID 17187)
-- Name: dependency_specification_id_a_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_specification_id_a_fkey FOREIGN KEY (specification_id_a) REFERENCES specification(id);


--
-- TOC entry 3181 (class 2606 OID 17444)
-- Name: personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3178 (class 2606 OID 17092)
-- Name: specification_definition_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id);


--
-- TOC entry 3177 (class 2606 OID 17087)
-- Name: specification_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id);


SET search_path = production, pg_catalog;

--
-- TOC entry 3187 (class 2606 OID 17498)
-- Name: equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3184 (class 2606 OID 17459)
-- Name: personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3352 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-06-07 02:54:16 EEST

--
-- PostgreSQL database dump complete
--

