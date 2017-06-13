--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2017-06-14 00:30:52 EEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 8 (class 2615 OID 66334)
-- Name: binding; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA binding;


ALTER SCHEMA binding OWNER TO postgres;

--
-- TOC entry 23 (class 2615 OID 66764)
-- Name: bom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA bom;


ALTER SCHEMA bom OWNER TO postgres;

--
-- TOC entry 9 (class 2615 OID 66335)
-- Name: common; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA common;


ALTER SCHEMA common OWNER TO postgres;

--
-- TOC entry 10 (class 2615 OID 66336)
-- Name: demand; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA demand;


ALTER SCHEMA demand OWNER TO postgres;

--
-- TOC entry 3364 (class 0 OID 0)
-- Dependencies: 10
-- Name: SCHEMA demand; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA demand IS 'production demand';


--
-- TOC entry 11 (class 2615 OID 66337)
-- Name: inspection; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA inspection;


ALTER SCHEMA inspection OWNER TO postgres;

--
-- TOC entry 3365 (class 0 OID 0)
-- Dependencies: 11
-- Name: SCHEMA inspection; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA inspection IS 'inspection segments';


--
-- TOC entry 22 (class 2615 OID 66653)
-- Name: inventory; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA inventory;


ALTER SCHEMA inventory OWNER TO postgres;

--
-- TOC entry 12 (class 2615 OID 66338)
-- Name: movement; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA movement;


ALTER SCHEMA movement OWNER TO postgres;

--
-- TOC entry 3366 (class 0 OID 0)
-- Dependencies: 12
-- Name: SCHEMA movement; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA movement IS 'movement segments';


--
-- TOC entry 13 (class 2615 OID 66339)
-- Name: operation; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA operation;


ALTER SCHEMA operation OWNER TO postgres;

--
-- TOC entry 3367 (class 0 OID 0)
-- Dependencies: 13
-- Name: SCHEMA operation; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA operation IS 'operation segments';


--
-- TOC entry 14 (class 2615 OID 66340)
-- Name: process; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA process;


ALTER SCHEMA process OWNER TO postgres;

--
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 14
-- Name: SCHEMA process; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA process IS 'process segments';


--
-- TOC entry 15 (class 2615 OID 66341)
-- Name: product; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA product;


ALTER SCHEMA product OWNER TO postgres;

--
-- TOC entry 16 (class 2615 OID 66342)
-- Name: production; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA production;


ALTER SCHEMA production OWNER TO postgres;

--
-- TOC entry 3369 (class 0 OID 0)
-- Dependencies: 16
-- Name: SCHEMA production; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA production IS 'production segments';


--
-- TOC entry 17 (class 2615 OID 66343)
-- Name: request; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA request;


ALTER SCHEMA request OWNER TO postgres;

--
-- TOC entry 3372 (class 0 OID 0)
-- Dependencies: 17
-- Name: SCHEMA request; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA request IS 'operation/production request';


--
-- TOC entry 18 (class 2615 OID 66344)
-- Name: response; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA response;


ALTER SCHEMA response OWNER TO postgres;

--
-- TOC entry 3373 (class 0 OID 0)
-- Dependencies: 18
-- Name: SCHEMA response; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA response IS 'operation/production response';


--
-- TOC entry 19 (class 2615 OID 66345)
-- Name: schedule; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA schedule;


ALTER SCHEMA schedule OWNER TO postgres;

--
-- TOC entry 3374 (class 0 OID 0)
-- Dependencies: 19
-- Name: SCHEMA schedule; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA schedule IS 'production schedule';


--
-- TOC entry 20 (class 2615 OID 66346)
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
-- TOC entry 3375 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 2 (class 3079 OID 66692)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- TOC entry 3376 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET search_path = common, pg_catalog;

--
-- TOC entry 607 (class 1247 OID 66348)
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
-- TOC entry 610 (class 1247 OID 66370)
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
-- TOC entry 613 (class 1247 OID 66388)
-- Name: material_use_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE material_use_kind AS ENUM (
    'CONSUMABLE',
    'PRODUCIBLE'
);


ALTER TYPE material_use_kind OWNER TO postgres;

--
-- TOC entry 616 (class 1247 OID 66394)
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
-- TOC entry 619 (class 1247 OID 66408)
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
-- TOC entry 622 (class 1247 OID 66420)
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

SET search_path = process, pg_catalog;

--
-- TOC entry 232 (class 1255 OID 66433)
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
-- TOC entry 234 (class 1255 OID 66434)
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

SET search_path = process, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 66435)
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
-- TOC entry 198 (class 1259 OID 66441)
-- Name: equipment; Type: TABLE; Schema: inspection; Owner: postgres
--

CREATE TABLE equipment (
)
INHERITS (process.equipment);


ALTER TABLE equipment OWNER TO postgres;

SET search_path = process, pg_catalog;

--
-- TOC entry 199 (class 1259 OID 66447)
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
-- TOC entry 200 (class 1259 OID 66453)
-- Name: personnel; Type: TABLE; Schema: inspection; Owner: postgres
--

CREATE TABLE personnel (
)
INHERITS (process.personnel);


ALTER TABLE personnel OWNER TO postgres;

SET search_path = process, pg_catalog;

--
-- TOC entry 201 (class 1259 OID 66459)
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
-- TOC entry 3377 (class 0 OID 0)
-- Dependencies: 201
-- Name: TABLE segment; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE segment IS 'segments to specify process';


SET search_path = inspection, pg_catalog;

--
-- TOC entry 202 (class 1259 OID 66465)
-- Name: segment; Type: TABLE; Schema: inspection; Owner: postgres
--

CREATE TABLE segment (
    CONSTRAINT segment_segment_kind_check CHECK ((segment_kind = 'INSPECTION'::common.process_segment_kind))
)
INHERITS (process.segment);


ALTER TABLE segment OWNER TO postgres;

SET search_path = inventory, pg_catalog;

--
-- TOC entry 220 (class 1259 OID 66656)
-- Name: good; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE good (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    good_code character varying
);


ALTER TABLE good OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 66665)
-- Name: consumable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE consumable (
)
INHERITS (good);


ALTER TABLE consumable OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 66654)
-- Name: good_id_seq; Type: SEQUENCE; Schema: inventory; Owner: postgres
--

CREATE SEQUENCE good_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE good_id_seq OWNER TO postgres;

--
-- TOC entry 3378 (class 0 OID 0)
-- Dependencies: 219
-- Name: good_id_seq; Type: SEQUENCE OWNED BY; Schema: inventory; Owner: postgres
--

ALTER SEQUENCE good_id_seq OWNED BY good.id;


--
-- TOC entry 222 (class 1259 OID 66674)
-- Name: producible; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE producible (
)
INHERITS (good);


ALTER TABLE producible OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 66683)
-- Name: salable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE salable (
)
INHERITS (good);


ALTER TABLE salable OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 66707)
-- Name: storable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE storable (
)
INHERITS (good);


ALTER TABLE storable OWNER TO postgres;

SET search_path = movement, pg_catalog;

--
-- TOC entry 203 (class 1259 OID 66472)
-- Name: equipment; Type: TABLE; Schema: movement; Owner: postgres
--

CREATE TABLE equipment (
)
INHERITS (process.equipment);


ALTER TABLE equipment OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 66478)
-- Name: personnel; Type: TABLE; Schema: movement; Owner: postgres
--

CREATE TABLE personnel (
)
INHERITS (process.personnel);


ALTER TABLE personnel OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 66484)
-- Name: segment; Type: TABLE; Schema: movement; Owner: postgres
--

CREATE TABLE segment (
    CONSTRAINT segment_segment_kind_check CHECK ((segment_kind = 'MOVEMENT'::common.process_segment_kind))
)
INHERITS (process.segment);


ALTER TABLE segment OWNER TO postgres;

SET search_path = production, pg_catalog;

--
-- TOC entry 206 (class 1259 OID 66491)
-- Name: equipment; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE equipment (
)
INHERITS (process.equipment);


ALTER TABLE equipment OWNER TO postgres;

SET search_path = operation, pg_catalog;

--
-- TOC entry 207 (class 1259 OID 66497)
-- Name: equipment; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE equipment (
)
INHERITS (production.equipment);


ALTER TABLE equipment OWNER TO postgres;

SET search_path = production, pg_catalog;

--
-- TOC entry 208 (class 1259 OID 66503)
-- Name: personnel; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE personnel (
)
INHERITS (process.personnel);


ALTER TABLE personnel OWNER TO postgres;

SET search_path = operation, pg_catalog;

--
-- TOC entry 209 (class 1259 OID 66509)
-- Name: personnel; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE personnel (
)
INHERITS (production.personnel);


ALTER TABLE personnel OWNER TO postgres;

SET search_path = production, pg_catalog;

--
-- TOC entry 210 (class 1259 OID 66515)
-- Name: segment; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE segment (
    segment_class character varying,
    CONSTRAINT segment_segment_kind_check CHECK ((segment_kind = 'PRODUCTION'::common.process_segment_kind))
)
INHERITS (process.segment);


ALTER TABLE segment OWNER TO postgres;

SET search_path = operation, pg_catalog;

--
-- TOC entry 211 (class 1259 OID 66522)
-- Name: segment; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE segment (
)
INHERITS (production.segment);


ALTER TABLE segment OWNER TO postgres;

SET search_path = process, pg_catalog;

--
-- TOC entry 212 (class 1259 OID 66529)
-- Name: definition; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE definition (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 3379 (class 0 OID 0)
-- Dependencies: 212
-- Name: TABLE definition; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE definition IS 'definition of specific process';


--
-- TOC entry 213 (class 1259 OID 66535)
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
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 213
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 214 (class 1259 OID 66537)
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
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 214
-- Name: TABLE information; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE information IS 'list of process segments';


--
-- TOC entry 215 (class 1259 OID 66543)
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
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 215
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 216 (class 1259 OID 66545)
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
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 216
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


--
-- TOC entry 217 (class 1259 OID 66547)
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
-- TOC entry 228 (class 1259 OID 66751)
-- Name: definition; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE definition (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    information_id bigint,
    version_num integer DEFAULT 1 NOT NULL
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 66749)
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
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 227
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 226 (class 1259 OID 66734)
-- Name: information; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    good_code character varying NOT NULL,
    descr character varying
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 66732)
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
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 225
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


SET search_path = production, pg_catalog;

--
-- TOC entry 218 (class 1259 OID 66552)
-- Name: specification; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE specification (
    CONSTRAINT specification_check CHECK ((parent_segment_id <> child_segment_id))
)
INHERITS (process.specification);


ALTER TABLE specification OWNER TO postgres;

SET search_path = inspection, pg_catalog;

--
-- TOC entry 3115 (class 2604 OID 66557)
-- Name: id; Type: DEFAULT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('process.segment_id_seq'::regclass);


SET search_path = inventory, pg_catalog;

--
-- TOC entry 3131 (class 2604 OID 66668)
-- Name: id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN id SET DEFAULT nextval('good_id_seq'::regclass);


--
-- TOC entry 3132 (class 2604 OID 66704)
-- Name: gid; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3129 (class 2604 OID 66659)
-- Name: id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY good ALTER COLUMN id SET DEFAULT nextval('good_id_seq'::regclass);


--
-- TOC entry 3133 (class 2604 OID 66677)
-- Name: id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY producible ALTER COLUMN id SET DEFAULT nextval('good_id_seq'::regclass);


--
-- TOC entry 3134 (class 2604 OID 66705)
-- Name: gid; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY producible ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3135 (class 2604 OID 66686)
-- Name: id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable ALTER COLUMN id SET DEFAULT nextval('good_id_seq'::regclass);


--
-- TOC entry 3136 (class 2604 OID 66706)
-- Name: gid; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3137 (class 2604 OID 66710)
-- Name: id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY storable ALTER COLUMN id SET DEFAULT nextval('good_id_seq'::regclass);


--
-- TOC entry 3138 (class 2604 OID 66711)
-- Name: gid; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY storable ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


SET search_path = movement, pg_catalog;

--
-- TOC entry 3117 (class 2604 OID 66558)
-- Name: id; Type: DEFAULT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('process.segment_id_seq'::regclass);


SET search_path = operation, pg_catalog;

--
-- TOC entry 3121 (class 2604 OID 66559)
-- Name: id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('process.segment_id_seq'::regclass);


SET search_path = process, pg_catalog;

--
-- TOC entry 3123 (class 2604 OID 66560)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3124 (class 2604 OID 66561)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3114 (class 2604 OID 66562)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


SET search_path = product, pg_catalog;

--
-- TOC entry 3141 (class 2604 OID 66754)
-- Name: id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3139 (class 2604 OID 66737)
-- Name: id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


SET search_path = production, pg_catalog;

--
-- TOC entry 3119 (class 2604 OID 66563)
-- Name: id; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('process.segment_id_seq'::regclass);


--
-- TOC entry 3127 (class 2604 OID 66564)
-- Name: qty; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY specification ALTER COLUMN qty SET DEFAULT 1;


SET search_path = inspection, pg_catalog;

--
-- TOC entry 3328 (class 0 OID 66441)
-- Dependencies: 198
-- Data for Name: equipment; Type: TABLE DATA; Schema: inspection; Owner: postgres
--

INSERT INTO equipment VALUES (8, 'stopwatch-1', 'time measurement', 1.00, 'pcs');
INSERT INTO equipment VALUES (8, 'testbench-1', 'pressure testbench', 1.00, 'pcs');


--
-- TOC entry 3330 (class 0 OID 66453)
-- Dependencies: 200
-- Data for Name: personnel; Type: TABLE DATA; Schema: inspection; Owner: postgres
--

INSERT INTO personnel VALUES (8, 'inspector senior', 'inspector class', 1.00, 'man');
INSERT INTO personnel VALUES (8, 'inspector junior', 'inspector class', 1.00, 'man');


--
-- TOC entry 3332 (class 0 OID 66465)
-- Dependencies: 202
-- Data for Name: segment; Type: TABLE DATA; Schema: inspection; Owner: postgres
--

INSERT INTO segment VALUES (8, 'inspection segment 1', 'INSPECTION', 'B1', 'SITE', '2017-06-07', '08:00:00');


SET search_path = inventory, pg_catalog;

--
-- TOC entry 3351 (class 0 OID 66665)
-- Dependencies: 221
-- Data for Name: consumable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO consumable VALUES (1, 'dc845dae-507c-11e7-bce9-d4bed939923a', '21.16.080-001');


--
-- TOC entry 3350 (class 0 OID 66656)
-- Dependencies: 220
-- Data for Name: good; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 3386 (class 0 OID 0)
-- Dependencies: 219
-- Name: good_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('good_id_seq', 4, true);


--
-- TOC entry 3352 (class 0 OID 66674)
-- Dependencies: 222
-- Data for Name: producible; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO producible VALUES (2, 'ebddcc54-507c-11e7-ae09-d4bed939923a', '21.16.080-001');


--
-- TOC entry 3353 (class 0 OID 66683)
-- Dependencies: 223
-- Data for Name: salable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO salable VALUES (3, 'f139e9e4-507c-11e7-8acd-d4bed939923a', '21.16.080-001');


--
-- TOC entry 3354 (class 0 OID 66707)
-- Dependencies: 224
-- Data for Name: storable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO storable VALUES (4, 'f766b676-507c-11e7-99c7-d4bed939923a', '21.16.080-001');


SET search_path = movement, pg_catalog;

--
-- TOC entry 3333 (class 0 OID 66472)
-- Dependencies: 203
-- Data for Name: equipment; Type: TABLE DATA; Schema: movement; Owner: postgres
--

INSERT INTO equipment VALUES (9, 'truck', 'truck class', 1.00, 'pcs');


--
-- TOC entry 3334 (class 0 OID 66478)
-- Dependencies: 204
-- Data for Name: personnel; Type: TABLE DATA; Schema: movement; Owner: postgres
--

INSERT INTO personnel VALUES (9, 'driver', 'driver class', 1.00, 'man');


--
-- TOC entry 3335 (class 0 OID 66484)
-- Dependencies: 205
-- Data for Name: segment; Type: TABLE DATA; Schema: movement; Owner: postgres
--

INSERT INTO segment VALUES (9, 'movement segment 1', 'MOVEMENT', 'C1', 'SITE', '2017-06-07', '23:00:00');


SET search_path = operation, pg_catalog;

--
-- TOC entry 3337 (class 0 OID 66497)
-- Dependencies: 207
-- Data for Name: equipment; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3339 (class 0 OID 66509)
-- Dependencies: 209
-- Data for Name: personnel; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3341 (class 0 OID 66522)
-- Dependencies: 211
-- Data for Name: segment; Type: TABLE DATA; Schema: operation; Owner: postgres
--

INSERT INTO segment VALUES (12, 'atomic operation 1', 'PRODUCTION', 'A1', 'CELL', '2017-06-07', '00:00:01', 'OPERATION');
INSERT INTO segment VALUES (13, 'atomic operation 2', 'PRODUCTION', 'A1', 'CELL', '2017-06-07', '01:00:00', 'OPERATION');


SET search_path = process, pg_catalog;

--
-- TOC entry 3342 (class 0 OID 66529)
-- Dependencies: 212
-- Data for Name: definition; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO definition VALUES (1, 'valve-31-50');
INSERT INTO definition VALUES (2, 'vlave-41-50');


--
-- TOC entry 3387 (class 0 OID 0)
-- Dependencies: 213
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 2, true);


--
-- TOC entry 3327 (class 0 OID 66435)
-- Dependencies: 197
-- Data for Name: equipment; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3344 (class 0 OID 66537)
-- Dependencies: 214
-- Data for Name: information; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3388 (class 0 OID 0)
-- Dependencies: 215
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, false);


--
-- TOC entry 3329 (class 0 OID 66447)
-- Dependencies: 199
-- Data for Name: personnel; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3331 (class 0 OID 66459)
-- Dependencies: 201
-- Data for Name: segment; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO segment VALUES (15, 'process segment 1', 'PROCESS', 'A1', 'ENTERPRISE', '2017-06-07', '3 days');


--
-- TOC entry 3389 (class 0 OID 0)
-- Dependencies: 216
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 15, true);


--
-- TOC entry 3347 (class 0 OID 66547)
-- Dependencies: 217
-- Data for Name: specification; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO specification VALUES (15, 9, 1);
INSERT INTO specification VALUES (15, 7, 1);
INSERT INTO specification VALUES (15, 8, 1);
INSERT INTO specification VALUES (15, 12, 1);
INSERT INTO specification VALUES (15, 14, 1);


SET search_path = product, pg_catalog;

--
-- TOC entry 3358 (class 0 OID 66751)
-- Dependencies: 228
-- Data for Name: definition; Type: TABLE DATA; Schema: product; Owner: postgres
--

INSERT INTO definition VALUES (1, 'e0b9440a-507e-11e7-80cc-d4bed939923a', 1, 1);


--
-- TOC entry 3390 (class 0 OID 0)
-- Dependencies: 227
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 1, true);


--
-- TOC entry 3356 (class 0 OID 66734)
-- Dependencies: 226
-- Data for Name: information; Type: TABLE DATA; Schema: product; Owner: postgres
--

INSERT INTO information VALUES (1, '571755ca-507e-11e7-8453-d4bed939923a', '21.16.080-001', 'fl-16-80');


--
-- TOC entry 3391 (class 0 OID 0)
-- Dependencies: 225
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, true);


SET search_path = production, pg_catalog;

--
-- TOC entry 3336 (class 0 OID 66491)
-- Dependencies: 206
-- Data for Name: equipment; Type: TABLE DATA; Schema: production; Owner: postgres
--

INSERT INTO equipment VALUES (7, 'tool-1', 'tool class', 2.00, 'pcs');
INSERT INTO equipment VALUES (7, 'machine-tool
	
machine-tool
	
machine-tool', 'machine class', 1.00, 'pcs');


--
-- TOC entry 3338 (class 0 OID 66503)
-- Dependencies: 208
-- Data for Name: personnel; Type: TABLE DATA; Schema: production; Owner: postgres
--

INSERT INTO personnel VALUES (7, 'operator-1', 'operator class', 2.00, 'man');


--
-- TOC entry 3340 (class 0 OID 66515)
-- Dependencies: 210
-- Data for Name: segment; Type: TABLE DATA; Schema: production; Owner: postgres
--

INSERT INTO segment VALUES (7, 'production segm 1', 'PRODUCTION', 'A1', 'SITE', '2017-06-07', '02:00:00', 'PROCESS');
INSERT INTO segment VALUES (14, 'production segm 2', 'PRODUCTION', 'A1', 'SITE', '2017-06-07', '01:00:00', 'PROCESS');


--
-- TOC entry 3348 (class 0 OID 66552)
-- Dependencies: 218
-- Data for Name: specification; Type: TABLE DATA; Schema: production; Owner: postgres
--

INSERT INTO specification VALUES (7, 12, 1);
INSERT INTO specification VALUES (7, 13, 1);
INSERT INTO specification VALUES (14, 12, 2);


SET search_path = inspection, pg_catalog;

--
-- TOC entry 3147 (class 2606 OID 66566)
-- Name: equipment_pkey; Type: CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3151 (class 2606 OID 66568)
-- Name: personnel_pkey; Type: CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3155 (class 2606 OID 66570)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


SET search_path = inventory, pg_catalog;

--
-- TOC entry 3185 (class 2606 OID 66673)
-- Name: consumable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (id);


--
-- TOC entry 3183 (class 2606 OID 66664)
-- Name: good_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY good
    ADD CONSTRAINT good_pkey PRIMARY KEY (id);


--
-- TOC entry 3187 (class 2606 OID 66682)
-- Name: producible_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY producible
    ADD CONSTRAINT producible_pkey PRIMARY KEY (id);


--
-- TOC entry 3189 (class 2606 OID 66718)
-- Name: salable_gid_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable
    ADD CONSTRAINT salable_gid_key UNIQUE (gid);


--
-- TOC entry 3191 (class 2606 OID 66720)
-- Name: salable_good_code_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable
    ADD CONSTRAINT salable_good_code_key UNIQUE (good_code);


--
-- TOC entry 3193 (class 2606 OID 66691)
-- Name: salable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable
    ADD CONSTRAINT salable_pkey PRIMARY KEY (id);


--
-- TOC entry 3195 (class 2606 OID 66716)
-- Name: storable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY storable
    ADD CONSTRAINT storable_pkey PRIMARY KEY (id);


SET search_path = movement, pg_catalog;

--
-- TOC entry 3157 (class 2606 OID 66572)
-- Name: equipment_pkey; Type: CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3159 (class 2606 OID 66574)
-- Name: personnel_pkey; Type: CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3161 (class 2606 OID 66576)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


SET search_path = operation, pg_catalog;

--
-- TOC entry 3165 (class 2606 OID 66578)
-- Name: equipment_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3169 (class 2606 OID 66580)
-- Name: personnel_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3173 (class 2606 OID 66582)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


SET search_path = process, pg_catalog;

--
-- TOC entry 3175 (class 2606 OID 66584)
-- Name: definition_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3145 (class 2606 OID 66586)
-- Name: equipment_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3177 (class 2606 OID 66588)
-- Name: information_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3149 (class 2606 OID 66590)
-- Name: personnel_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3153 (class 2606 OID 66592)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 3179 (class 2606 OID 66594)
-- Name: specification_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_pkey PRIMARY KEY (parent_segment_id, child_segment_id);


SET search_path = product, pg_catalog;

--
-- TOC entry 3199 (class 2606 OID 66758)
-- Name: definition_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3197 (class 2606 OID 66742)
-- Name: information_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


SET search_path = production, pg_catalog;

--
-- TOC entry 3163 (class 2606 OID 66596)
-- Name: equipment_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3167 (class 2606 OID 66598)
-- Name: personnel_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3171 (class 2606 OID 66600)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 3181 (class 2606 OID 66602)
-- Name: specification_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_pkey PRIMARY KEY (parent_segment_id, child_segment_id);


SET search_path = process, pg_catalog;

--
-- TOC entry 3211 (class 2620 OID 66604)
-- Name: child_segment_ref_fkey_trigger; Type: TRIGGER; Schema: process; Owner: postgres
--

CREATE CONSTRAINT TRIGGER child_segment_ref_fkey_trigger AFTER INSERT OR UPDATE ON specification DEFERRABLE INITIALLY IMMEDIATE FOR EACH ROW EXECUTE PROCEDURE child_segment_ref_trigger();


SET search_path = production, pg_catalog;

--
-- TOC entry 3212 (class 2620 OID 66606)
-- Name: child_segment_ref_fkey_trigger; Type: TRIGGER; Schema: production; Owner: postgres
--

CREATE CONSTRAINT TRIGGER child_segment_ref_fkey_trigger AFTER INSERT OR UPDATE ON specification DEFERRABLE INITIALLY IMMEDIATE FOR EACH ROW EXECUTE PROCEDURE child_segment_ref_trigger();


SET search_path = inspection, pg_catalog;

--
-- TOC entry 3200 (class 2606 OID 66607)
-- Name: equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3202 (class 2606 OID 66612)
-- Name: personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = movement, pg_catalog;

--
-- TOC entry 3203 (class 2606 OID 66617)
-- Name: equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3204 (class 2606 OID 66622)
-- Name: personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = process, pg_catalog;

--
-- TOC entry 3201 (class 2606 OID 66627)
-- Name: personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3207 (class 2606 OID 66632)
-- Name: specification_parent_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_parent_segment_id_fkey FOREIGN KEY (parent_segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = product, pg_catalog;

--
-- TOC entry 3210 (class 2606 OID 66759)
-- Name: definition_information_id_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id);


--
-- TOC entry 3209 (class 2606 OID 66743)
-- Name: information_good_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_good_code_fkey FOREIGN KEY (good_code) REFERENCES inventory.salable(good_code) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = production, pg_catalog;

--
-- TOC entry 3205 (class 2606 OID 66637)
-- Name: equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3206 (class 2606 OID 66642)
-- Name: personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3208 (class 2606 OID 66647)
-- Name: specification_parent_segment_id_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_parent_segment_id_fkey FOREIGN KEY (parent_segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3371 (class 0 OID 0)
-- Dependencies: 21
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-06-14 00:30:52 EEST

--
-- PostgreSQL database dump complete
--

