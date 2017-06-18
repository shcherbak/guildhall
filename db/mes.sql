--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2017-06-18 23:42:05 EEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 8 (class 2615 OID 18137)
-- Name: binding; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA binding;


ALTER SCHEMA binding OWNER TO postgres;

--
-- TOC entry 9 (class 2615 OID 18139)
-- Name: common; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA common;


ALTER SCHEMA common OWNER TO postgres;

--
-- TOC entry 10 (class 2615 OID 18140)
-- Name: demand; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA demand;


ALTER SCHEMA demand OWNER TO postgres;

--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 10
-- Name: SCHEMA demand; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA demand IS 'production demand';


--
-- TOC entry 25 (class 2615 OID 18690)
-- Name: ebom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ebom;


ALTER SCHEMA ebom OWNER TO postgres;

--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 25
-- Name: SCHEMA ebom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA ebom IS 'engineering bill of materials';


--
-- TOC entry 11 (class 2615 OID 18141)
-- Name: inspection; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA inspection;


ALTER SCHEMA inspection OWNER TO postgres;

--
-- TOC entry 3458 (class 0 OID 0)
-- Dependencies: 11
-- Name: SCHEMA inspection; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA inspection IS 'inspection segments';


--
-- TOC entry 12 (class 2615 OID 18142)
-- Name: inventory; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA inventory;


ALTER SCHEMA inventory OWNER TO postgres;

--
-- TOC entry 3459 (class 0 OID 0)
-- Dependencies: 12
-- Name: SCHEMA inventory; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA inventory IS 'inventory items definition';


--
-- TOC entry 26 (class 2615 OID 18138)
-- Name: mbom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA mbom;


ALTER SCHEMA mbom OWNER TO postgres;

--
-- TOC entry 3460 (class 0 OID 0)
-- Dependencies: 26
-- Name: SCHEMA mbom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA mbom IS 'manufacturing bill of materials';


--
-- TOC entry 13 (class 2615 OID 18143)
-- Name: movement; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA movement;


ALTER SCHEMA movement OWNER TO postgres;

--
-- TOC entry 3461 (class 0 OID 0)
-- Dependencies: 13
-- Name: SCHEMA movement; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA movement IS 'movement segments';


--
-- TOC entry 14 (class 2615 OID 18144)
-- Name: operation; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA operation;


ALTER SCHEMA operation OWNER TO postgres;

--
-- TOC entry 3462 (class 0 OID 0)
-- Dependencies: 14
-- Name: SCHEMA operation; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA operation IS 'operation segments';


--
-- TOC entry 15 (class 2615 OID 18145)
-- Name: process; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA process;


ALTER SCHEMA process OWNER TO postgres;

--
-- TOC entry 3463 (class 0 OID 0)
-- Dependencies: 15
-- Name: SCHEMA process; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA process IS 'process segments';


--
-- TOC entry 16 (class 2615 OID 18146)
-- Name: product; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA product;


ALTER SCHEMA product OWNER TO postgres;

--
-- TOC entry 3464 (class 0 OID 0)
-- Dependencies: 16
-- Name: SCHEMA product; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA product IS 'product segments';


--
-- TOC entry 17 (class 2615 OID 18147)
-- Name: production; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA production;


ALTER SCHEMA production OWNER TO postgres;

--
-- TOC entry 3465 (class 0 OID 0)
-- Dependencies: 17
-- Name: SCHEMA production; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA production IS 'production segments';


--
-- TOC entry 18 (class 2615 OID 18148)
-- Name: request; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA request;


ALTER SCHEMA request OWNER TO postgres;

--
-- TOC entry 3468 (class 0 OID 0)
-- Dependencies: 18
-- Name: SCHEMA request; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA request IS 'operation/production request';


--
-- TOC entry 19 (class 2615 OID 18149)
-- Name: response; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA response;


ALTER SCHEMA response OWNER TO postgres;

--
-- TOC entry 3469 (class 0 OID 0)
-- Dependencies: 19
-- Name: SCHEMA response; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA response IS 'operation/production response';


--
-- TOC entry 20 (class 2615 OID 18150)
-- Name: schedule; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA schedule;


ALTER SCHEMA schedule OWNER TO postgres;

--
-- TOC entry 3470 (class 0 OID 0)
-- Dependencies: 20
-- Name: SCHEMA schedule; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA schedule IS 'production schedule';


--
-- TOC entry 21 (class 2615 OID 18151)
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
-- TOC entry 3471 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 2 (class 3079 OID 18152)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- TOC entry 3472 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET search_path = common, pg_catalog;

--
-- TOC entry 619 (class 1247 OID 18164)
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
-- TOC entry 739 (class 1247 OID 18674)
-- Name: inventory_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE inventory_kind AS ENUM (
    'BUYABLE',
    'COMPOSITE',
    'CONSUMABLE',
    'PRODUCIBLE',
    'SALABLE',
    'STORABLE'
);


ALTER TYPE inventory_kind OWNER TO postgres;

--
-- TOC entry 622 (class 1247 OID 18186)
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
-- TOC entry 625 (class 1247 OID 18204)
-- Name: material_use_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE material_use_kind AS ENUM (
    'CONSUMABLE',
    'PRODUCIBLE'
);


ALTER TYPE material_use_kind OWNER TO postgres;

--
-- TOC entry 628 (class 1247 OID 18210)
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
-- TOC entry 631 (class 1247 OID 18224)
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
-- TOC entry 634 (class 1247 OID 18236)
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
-- TOC entry 251 (class 1255 OID 18249)
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
-- TOC entry 252 (class 1255 OID 18250)
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

SET search_path = ebom, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 231 (class 1259 OID 18693)
-- Name: information; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    published_date date,
    composite_id bigint
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 18703)
-- Name: definition; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE definition (
    version_num integer DEFAULT 1 NOT NULL
)
INHERITS (information);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 18691)
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
-- TOC entry 3473 (class 0 OID 0)
-- Dependencies: 230
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: ebom; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 233 (class 1259 OID 18714)
-- Name: segment; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE segment (
    definition_id bigint NOT NULL,
    consumable_id bigint NOT NULL,
    qty numeric(10,4),
    qty_uom character varying
);


ALTER TABLE segment OWNER TO postgres;

SET search_path = process, pg_catalog;

--
-- TOC entry 200 (class 1259 OID 18269)
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
-- TOC entry 201 (class 1259 OID 18275)
-- Name: equipment; Type: TABLE; Schema: inspection; Owner: postgres
--

CREATE TABLE equipment (
)
INHERITS (process.equipment);


ALTER TABLE equipment OWNER TO postgres;

SET search_path = process, pg_catalog;

--
-- TOC entry 202 (class 1259 OID 18281)
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
-- TOC entry 203 (class 1259 OID 18287)
-- Name: personnel; Type: TABLE; Schema: inspection; Owner: postgres
--

CREATE TABLE personnel (
)
INHERITS (process.personnel);


ALTER TABLE personnel OWNER TO postgres;

SET search_path = process, pg_catalog;

--
-- TOC entry 204 (class 1259 OID 18293)
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
-- TOC entry 3474 (class 0 OID 0)
-- Dependencies: 204
-- Name: TABLE segment; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE segment IS 'segments to specify process';


SET search_path = inspection, pg_catalog;

--
-- TOC entry 205 (class 1259 OID 18299)
-- Name: segment; Type: TABLE; Schema: inspection; Owner: postgres
--

CREATE TABLE segment (
    CONSTRAINT segment_segment_kind_check CHECK ((segment_kind = 'INSPECTION'::common.process_segment_kind))
)
INHERITS (process.segment);


ALTER TABLE segment OWNER TO postgres;

SET search_path = inventory, pg_catalog;

--
-- TOC entry 206 (class 1259 OID 18306)
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
-- TOC entry 229 (class 1259 OID 18663)
-- Name: buyable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE buyable (
)
INHERITS (information);


ALTER TABLE buyable OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 18653)
-- Name: composite; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE composite (
)
INHERITS (information);


ALTER TABLE composite OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 18313)
-- Name: consumable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE consumable (
)
INHERITS (information);


ALTER TABLE consumable OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 18320)
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
-- TOC entry 3475 (class 0 OID 0)
-- Dependencies: 208
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: inventory; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 209 (class 1259 OID 18322)
-- Name: producible; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE producible (
)
INHERITS (information);


ALTER TABLE producible OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 18329)
-- Name: salable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE salable (
)
INHERITS (information);


ALTER TABLE salable OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 18336)
-- Name: storable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE storable (
)
INHERITS (information);


ALTER TABLE storable OWNER TO postgres;

SET search_path = mbom, pg_catalog;

--
-- TOC entry 235 (class 1259 OID 18739)
-- Name: information; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    published_date date,
    producible_id bigint
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 18749)
-- Name: definition; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE definition (
    version_num integer DEFAULT 1 NOT NULL
)
INHERITS (information);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 18737)
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
-- TOC entry 3476 (class 0 OID 0)
-- Dependencies: 234
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: mbom; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 237 (class 1259 OID 18765)
-- Name: segment; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE segment (
    definition_id bigint NOT NULL,
    consumable_id bigint NOT NULL,
    qty numeric(10,4),
    qty_uom character varying
);


ALTER TABLE segment OWNER TO postgres;

SET search_path = movement, pg_catalog;

--
-- TOC entry 212 (class 1259 OID 18343)
-- Name: equipment; Type: TABLE; Schema: movement; Owner: postgres
--

CREATE TABLE equipment (
)
INHERITS (process.equipment);


ALTER TABLE equipment OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 18349)
-- Name: personnel; Type: TABLE; Schema: movement; Owner: postgres
--

CREATE TABLE personnel (
)
INHERITS (process.personnel);


ALTER TABLE personnel OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 18355)
-- Name: segment; Type: TABLE; Schema: movement; Owner: postgres
--

CREATE TABLE segment (
    CONSTRAINT segment_segment_kind_check CHECK ((segment_kind = 'MOVEMENT'::common.process_segment_kind))
)
INHERITS (process.segment);


ALTER TABLE segment OWNER TO postgres;

SET search_path = production, pg_catalog;

--
-- TOC entry 215 (class 1259 OID 18362)
-- Name: equipment; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE equipment (
)
INHERITS (process.equipment);


ALTER TABLE equipment OWNER TO postgres;

SET search_path = operation, pg_catalog;

--
-- TOC entry 216 (class 1259 OID 18368)
-- Name: equipment; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE equipment (
)
INHERITS (production.equipment);


ALTER TABLE equipment OWNER TO postgres;

SET search_path = production, pg_catalog;

--
-- TOC entry 217 (class 1259 OID 18374)
-- Name: personnel; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE personnel (
)
INHERITS (process.personnel);


ALTER TABLE personnel OWNER TO postgres;

SET search_path = operation, pg_catalog;

--
-- TOC entry 218 (class 1259 OID 18380)
-- Name: personnel; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE personnel (
)
INHERITS (production.personnel);


ALTER TABLE personnel OWNER TO postgres;

SET search_path = production, pg_catalog;

--
-- TOC entry 219 (class 1259 OID 18386)
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
-- TOC entry 220 (class 1259 OID 18393)
-- Name: segment; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE segment (
)
INHERITS (production.segment);


ALTER TABLE segment OWNER TO postgres;

SET search_path = process, pg_catalog;

--
-- TOC entry 221 (class 1259 OID 18400)
-- Name: definition; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE definition (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 3477 (class 0 OID 0)
-- Dependencies: 221
-- Name: TABLE definition; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE definition IS 'definition of specific process';


--
-- TOC entry 222 (class 1259 OID 18406)
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
-- TOC entry 3478 (class 0 OID 0)
-- Dependencies: 222
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 223 (class 1259 OID 18408)
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
-- TOC entry 3479 (class 0 OID 0)
-- Dependencies: 223
-- Name: TABLE information; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE information IS 'list of process segments';


--
-- TOC entry 224 (class 1259 OID 18414)
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
-- TOC entry 3480 (class 0 OID 0)
-- Dependencies: 224
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 225 (class 1259 OID 18416)
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
-- TOC entry 3481 (class 0 OID 0)
-- Dependencies: 225
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


--
-- TOC entry 226 (class 1259 OID 18418)
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
-- TOC entry 239 (class 1259 OID 26884)
-- Name: information; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    published_date date,
    producible_id bigint
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 26894)
-- Name: definition; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE definition (
    version_num integer DEFAULT 1 NOT NULL
)
INHERITS (information);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 26882)
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
-- TOC entry 3482 (class 0 OID 0)
-- Dependencies: 238
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


SET search_path = production, pg_catalog;

--
-- TOC entry 227 (class 1259 OID 18460)
-- Name: specification; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE specification (
    CONSTRAINT specification_check CHECK ((parent_segment_id <> child_segment_id))
)
INHERITS (process.specification);


ALTER TABLE specification OWNER TO postgres;

SET search_path = ebom, pg_catalog;

--
-- TOC entry 3194 (class 2604 OID 18706)
-- Name: id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3195 (class 2604 OID 18707)
-- Name: gid; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3192 (class 2604 OID 18696)
-- Name: id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


SET search_path = inspection, pg_catalog;

--
-- TOC entry 3164 (class 2604 OID 18466)
-- Name: id; Type: DEFAULT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('process.segment_id_seq'::regclass);


SET search_path = inventory, pg_catalog;

--
-- TOC entry 3190 (class 2604 OID 18666)
-- Name: id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY buyable ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3191 (class 2604 OID 18667)
-- Name: gid; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY buyable ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3188 (class 2604 OID 18656)
-- Name: id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY composite ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3189 (class 2604 OID 18657)
-- Name: gid; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY composite ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3168 (class 2604 OID 18467)
-- Name: id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3169 (class 2604 OID 18468)
-- Name: gid; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3167 (class 2604 OID 18469)
-- Name: id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3170 (class 2604 OID 18470)
-- Name: id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY producible ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3171 (class 2604 OID 18471)
-- Name: gid; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY producible ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3172 (class 2604 OID 18472)
-- Name: id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3173 (class 2604 OID 18473)
-- Name: gid; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3174 (class 2604 OID 18474)
-- Name: id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY storable ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3175 (class 2604 OID 18475)
-- Name: gid; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY storable ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


SET search_path = mbom, pg_catalog;

--
-- TOC entry 3199 (class 2604 OID 18752)
-- Name: id; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3200 (class 2604 OID 18753)
-- Name: gid; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3197 (class 2604 OID 18742)
-- Name: id; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


SET search_path = movement, pg_catalog;

--
-- TOC entry 3176 (class 2604 OID 18476)
-- Name: id; Type: DEFAULT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('process.segment_id_seq'::regclass);


SET search_path = operation, pg_catalog;

--
-- TOC entry 3180 (class 2604 OID 18477)
-- Name: id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('process.segment_id_seq'::regclass);


SET search_path = process, pg_catalog;

--
-- TOC entry 3182 (class 2604 OID 18478)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3183 (class 2604 OID 18479)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3163 (class 2604 OID 18480)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


SET search_path = product, pg_catalog;

--
-- TOC entry 3204 (class 2604 OID 26897)
-- Name: id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3205 (class 2604 OID 26898)
-- Name: gid; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3202 (class 2604 OID 26887)
-- Name: id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


SET search_path = production, pg_catalog;

--
-- TOC entry 3178 (class 2604 OID 18484)
-- Name: id; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('process.segment_id_seq'::regclass);


--
-- TOC entry 3186 (class 2604 OID 18485)
-- Name: qty; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY specification ALTER COLUMN qty SET DEFAULT 1;


SET search_path = ebom, pg_catalog;

--
-- TOC entry 3442 (class 0 OID 18703)
-- Dependencies: 232
-- Data for Name: definition; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO definition VALUES (1, '9ab9d2ae-5398-11e7-b754-ac9e1788662b', 'External BOM#1', 1, '2017-06-01', 5);


--
-- TOC entry 3441 (class 0 OID 18693)
-- Dependencies: 231
-- Data for Name: information; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 3483 (class 0 OID 0)
-- Dependencies: 230
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: ebom; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, true);


--
-- TOC entry 3443 (class 0 OID 18714)
-- Dependencies: 233
-- Data for Name: segment; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO segment VALUES (1, 1, 2.0000, 'pcs');


SET search_path = inspection, pg_catalog;

--
-- TOC entry 3411 (class 0 OID 18275)
-- Dependencies: 201
-- Data for Name: equipment; Type: TABLE DATA; Schema: inspection; Owner: postgres
--

INSERT INTO equipment VALUES (8, 'stopwatch-1', 'time measurement', 1.00, 'pcs');
INSERT INTO equipment VALUES (8, 'testbench-1', 'pressure testbench', 1.00, 'pcs');


--
-- TOC entry 3413 (class 0 OID 18287)
-- Dependencies: 203
-- Data for Name: personnel; Type: TABLE DATA; Schema: inspection; Owner: postgres
--

INSERT INTO personnel VALUES (8, 'inspector senior', 'inspector class', 1.00, 'man');
INSERT INTO personnel VALUES (8, 'inspector junior', 'inspector class', 1.00, 'man');


--
-- TOC entry 3415 (class 0 OID 18299)
-- Dependencies: 205
-- Data for Name: segment; Type: TABLE DATA; Schema: inspection; Owner: postgres
--

INSERT INTO segment VALUES (8, 'inspection segment 1', 'INSPECTION', 'B1', 'SITE', '2017-06-07', '08:00:00');


SET search_path = inventory, pg_catalog;

--
-- TOC entry 3439 (class 0 OID 18663)
-- Dependencies: 229
-- Data for Name: buyable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 3438 (class 0 OID 18653)
-- Dependencies: 228
-- Data for Name: composite; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO composite VALUES (5, 'c3850c08-52d5-11e7-b45f-ac9e1788662b', '11.31.100-001', 'COMPOSITE');


--
-- TOC entry 3417 (class 0 OID 18313)
-- Dependencies: 207
-- Data for Name: consumable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO consumable VALUES (1, 'dc845dae-507c-11e7-bce9-d4bed939923a', '21.16.080-001', 'CONSUMABLE');


--
-- TOC entry 3416 (class 0 OID 18306)
-- Dependencies: 206
-- Data for Name: information; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 3484 (class 0 OID 0)
-- Dependencies: 208
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 8, true);


--
-- TOC entry 3419 (class 0 OID 18322)
-- Dependencies: 209
-- Data for Name: producible; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO producible VALUES (6, 'c3850c08-52d5-11e7-b45f-ac9e1788662b', '11.31.100-001', 'PRODUCIBLE');
INSERT INTO producible VALUES (2, 'dc845dae-507c-11e7-bce9-d4bed939923a', '21.16.080-001', 'PRODUCIBLE');


--
-- TOC entry 3420 (class 0 OID 18329)
-- Dependencies: 210
-- Data for Name: salable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO salable VALUES (7, 'c3850c08-52d5-11e7-b45f-ac9e1788662b', '11.31.100-001', 'SALABLE');
INSERT INTO salable VALUES (3, 'dc845dae-507c-11e7-bce9-d4bed939923a', '21.16.080-001', 'SALABLE');


--
-- TOC entry 3421 (class 0 OID 18336)
-- Dependencies: 211
-- Data for Name: storable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO storable VALUES (8, 'c3850c08-52d5-11e7-b45f-ac9e1788662b', '11.31.100-001', 'STORABLE');
INSERT INTO storable VALUES (4, 'dc845dae-507c-11e7-bce9-d4bed939923a', '21.16.080-001', 'STORABLE');


SET search_path = mbom, pg_catalog;

--
-- TOC entry 3446 (class 0 OID 18749)
-- Dependencies: 236
-- Data for Name: definition; Type: TABLE DATA; Schema: mbom; Owner: postgres
--

INSERT INTO definition VALUES (1, 'e024d124-539b-11e7-8597-ac9e1788662b', 'Manufacturing BOM#1', '2017-06-01', 6, 1);


--
-- TOC entry 3445 (class 0 OID 18739)
-- Dependencies: 235
-- Data for Name: information; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 3485 (class 0 OID 0)
-- Dependencies: 234
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: mbom; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, true);


--
-- TOC entry 3447 (class 0 OID 18765)
-- Dependencies: 237
-- Data for Name: segment; Type: TABLE DATA; Schema: mbom; Owner: postgres
--

INSERT INTO segment VALUES (1, 1, 2.0000, 'pcs');


SET search_path = movement, pg_catalog;

--
-- TOC entry 3422 (class 0 OID 18343)
-- Dependencies: 212
-- Data for Name: equipment; Type: TABLE DATA; Schema: movement; Owner: postgres
--

INSERT INTO equipment VALUES (9, 'truck', 'truck class', 1.00, 'pcs');


--
-- TOC entry 3423 (class 0 OID 18349)
-- Dependencies: 213
-- Data for Name: personnel; Type: TABLE DATA; Schema: movement; Owner: postgres
--

INSERT INTO personnel VALUES (9, 'driver', 'driver class', 1.00, 'man');


--
-- TOC entry 3424 (class 0 OID 18355)
-- Dependencies: 214
-- Data for Name: segment; Type: TABLE DATA; Schema: movement; Owner: postgres
--

INSERT INTO segment VALUES (9, 'movement segment 1', 'MOVEMENT', 'C1', 'SITE', '2017-06-07', '23:00:00');


SET search_path = operation, pg_catalog;

--
-- TOC entry 3426 (class 0 OID 18368)
-- Dependencies: 216
-- Data for Name: equipment; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3428 (class 0 OID 18380)
-- Dependencies: 218
-- Data for Name: personnel; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3430 (class 0 OID 18393)
-- Dependencies: 220
-- Data for Name: segment; Type: TABLE DATA; Schema: operation; Owner: postgres
--

INSERT INTO segment VALUES (12, 'atomic operation 1', 'PRODUCTION', 'A1', 'CELL', '2017-06-07', '00:00:01', 'OPERATION');
INSERT INTO segment VALUES (13, 'atomic operation 2', 'PRODUCTION', 'A1', 'CELL', '2017-06-07', '01:00:00', 'OPERATION');


SET search_path = process, pg_catalog;

--
-- TOC entry 3431 (class 0 OID 18400)
-- Dependencies: 221
-- Data for Name: definition; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO definition VALUES (1, 'valve-31-50');
INSERT INTO definition VALUES (2, 'vlave-41-50');


--
-- TOC entry 3486 (class 0 OID 0)
-- Dependencies: 222
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 2, true);


--
-- TOC entry 3410 (class 0 OID 18269)
-- Dependencies: 200
-- Data for Name: equipment; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3433 (class 0 OID 18408)
-- Dependencies: 223
-- Data for Name: information; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3487 (class 0 OID 0)
-- Dependencies: 224
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, false);


--
-- TOC entry 3412 (class 0 OID 18281)
-- Dependencies: 202
-- Data for Name: personnel; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3414 (class 0 OID 18293)
-- Dependencies: 204
-- Data for Name: segment; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO segment VALUES (15, 'process segment 1', 'PROCESS', 'A1', 'ENTERPRISE', '2017-06-07', '3 days');


--
-- TOC entry 3488 (class 0 OID 0)
-- Dependencies: 225
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 15, true);


--
-- TOC entry 3436 (class 0 OID 18418)
-- Dependencies: 226
-- Data for Name: specification; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO specification VALUES (15, 9, 1);
INSERT INTO specification VALUES (15, 7, 1);
INSERT INTO specification VALUES (15, 8, 1);
INSERT INTO specification VALUES (15, 12, 1);
INSERT INTO specification VALUES (15, 14, 1);


SET search_path = product, pg_catalog;

--
-- TOC entry 3450 (class 0 OID 26894)
-- Dependencies: 240
-- Data for Name: definition; Type: TABLE DATA; Schema: product; Owner: postgres
--

INSERT INTO definition VALUES (1, '8f264186-5463-11e7-b032-ac9e1788662b', 'valve 11-31-100', '2017-06-01', 1, NULL);


--
-- TOC entry 3449 (class 0 OID 26884)
-- Dependencies: 239
-- Data for Name: information; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 3489 (class 0 OID 0)
-- Dependencies: 238
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, true);


SET search_path = production, pg_catalog;

--
-- TOC entry 3425 (class 0 OID 18362)
-- Dependencies: 215
-- Data for Name: equipment; Type: TABLE DATA; Schema: production; Owner: postgres
--

INSERT INTO equipment VALUES (7, 'tool-1', 'tool class', 2.00, 'pcs');
INSERT INTO equipment VALUES (7, 'machine-tool
	
machine-tool
	
machine-tool', 'machine class', 1.00, 'pcs');


--
-- TOC entry 3427 (class 0 OID 18374)
-- Dependencies: 217
-- Data for Name: personnel; Type: TABLE DATA; Schema: production; Owner: postgres
--

INSERT INTO personnel VALUES (7, 'operator-1', 'operator class', 2.00, 'man');


--
-- TOC entry 3429 (class 0 OID 18386)
-- Dependencies: 219
-- Data for Name: segment; Type: TABLE DATA; Schema: production; Owner: postgres
--

INSERT INTO segment VALUES (7, 'production segm 1', 'PRODUCTION', 'A1', 'SITE', '2017-06-07', '02:00:00', 'PROCESS');
INSERT INTO segment VALUES (14, 'production segm 2', 'PRODUCTION', 'A1', 'SITE', '2017-06-07', '01:00:00', 'PROCESS');


--
-- TOC entry 3437 (class 0 OID 18460)
-- Dependencies: 227
-- Data for Name: specification; Type: TABLE DATA; Schema: production; Owner: postgres
--

INSERT INTO specification VALUES (7, 12, 1);
INSERT INTO specification VALUES (7, 13, 1);
INSERT INTO specification VALUES (14, 12, 2);


SET search_path = ebom, pg_catalog;

--
-- TOC entry 3266 (class 2606 OID 18713)
-- Name: definition_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3264 (class 2606 OID 18701)
-- Name: information_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3268 (class 2606 OID 18721)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (definition_id, consumable_id);


SET search_path = inspection, pg_catalog;

--
-- TOC entry 3210 (class 2606 OID 18495)
-- Name: equipment_pkey; Type: CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3214 (class 2606 OID 18497)
-- Name: personnel_pkey; Type: CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3218 (class 2606 OID 18499)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


SET search_path = inventory, pg_catalog;

--
-- TOC entry 3262 (class 2606 OID 18672)
-- Name: buyable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (id);


--
-- TOC entry 3260 (class 2606 OID 18662)
-- Name: composite_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY composite
    ADD CONSTRAINT composite_pkey PRIMARY KEY (id);


--
-- TOC entry 3222 (class 2606 OID 18501)
-- Name: consumable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (id);


--
-- TOC entry 3220 (class 2606 OID 18503)
-- Name: information_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3224 (class 2606 OID 18505)
-- Name: producible_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY producible
    ADD CONSTRAINT producible_pkey PRIMARY KEY (id);


--
-- TOC entry 3226 (class 2606 OID 18507)
-- Name: salable_gid_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable
    ADD CONSTRAINT salable_gid_key UNIQUE (gid);


--
-- TOC entry 3228 (class 2606 OID 18509)
-- Name: salable_good_code_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable
    ADD CONSTRAINT salable_good_code_key UNIQUE (good_code);


--
-- TOC entry 3230 (class 2606 OID 18511)
-- Name: salable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable
    ADD CONSTRAINT salable_pkey PRIMARY KEY (id);


--
-- TOC entry 3232 (class 2606 OID 18513)
-- Name: storable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY storable
    ADD CONSTRAINT storable_pkey PRIMARY KEY (id);


SET search_path = mbom, pg_catalog;

--
-- TOC entry 3272 (class 2606 OID 18759)
-- Name: definition_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3270 (class 2606 OID 18748)
-- Name: information_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3274 (class 2606 OID 18772)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (definition_id, consumable_id);


SET search_path = movement, pg_catalog;

--
-- TOC entry 3234 (class 2606 OID 18515)
-- Name: equipment_pkey; Type: CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3236 (class 2606 OID 18517)
-- Name: personnel_pkey; Type: CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3238 (class 2606 OID 18519)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


SET search_path = operation, pg_catalog;

--
-- TOC entry 3242 (class 2606 OID 18521)
-- Name: equipment_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3246 (class 2606 OID 18523)
-- Name: personnel_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3250 (class 2606 OID 18525)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


SET search_path = process, pg_catalog;

--
-- TOC entry 3252 (class 2606 OID 18527)
-- Name: definition_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3208 (class 2606 OID 18529)
-- Name: equipment_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3254 (class 2606 OID 18531)
-- Name: information_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3212 (class 2606 OID 18533)
-- Name: personnel_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3216 (class 2606 OID 18535)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 3256 (class 2606 OID 18537)
-- Name: specification_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_pkey PRIMARY KEY (parent_segment_id, child_segment_id);


SET search_path = product, pg_catalog;

--
-- TOC entry 3278 (class 2606 OID 26910)
-- Name: definition_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3276 (class 2606 OID 26893)
-- Name: information_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


SET search_path = production, pg_catalog;

--
-- TOC entry 3240 (class 2606 OID 18551)
-- Name: equipment_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3244 (class 2606 OID 18553)
-- Name: personnel_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3248 (class 2606 OID 18555)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 3258 (class 2606 OID 18557)
-- Name: specification_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_pkey PRIMARY KEY (parent_segment_id, child_segment_id);


SET search_path = process, pg_catalog;

--
-- TOC entry 3294 (class 2620 OID 18559)
-- Name: child_segment_ref_fkey_trigger; Type: TRIGGER; Schema: process; Owner: postgres
--

CREATE CONSTRAINT TRIGGER child_segment_ref_fkey_trigger AFTER INSERT OR UPDATE ON specification DEFERRABLE INITIALLY IMMEDIATE FOR EACH ROW EXECUTE PROCEDURE child_segment_ref_trigger();


SET search_path = production, pg_catalog;

--
-- TOC entry 3295 (class 2620 OID 18561)
-- Name: child_segment_ref_fkey_trigger; Type: TRIGGER; Schema: production; Owner: postgres
--

CREATE CONSTRAINT TRIGGER child_segment_ref_fkey_trigger AFTER INSERT OR UPDATE ON specification DEFERRABLE INITIALLY IMMEDIATE FOR EACH ROW EXECUTE PROCEDURE child_segment_ref_trigger();


SET search_path = ebom, pg_catalog;

--
-- TOC entry 3288 (class 2606 OID 18732)
-- Name: definition_composite_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_composite_id_fkey FOREIGN KEY (composite_id) REFERENCES inventory.composite(id);


--
-- TOC entry 3290 (class 2606 OID 18727)
-- Name: segment_consumable_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_consumable_id_fkey FOREIGN KEY (consumable_id) REFERENCES inventory.consumable(id);


--
-- TOC entry 3289 (class 2606 OID 18722)
-- Name: segment_definition_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = inspection, pg_catalog;

--
-- TOC entry 3279 (class 2606 OID 18577)
-- Name: equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3281 (class 2606 OID 18582)
-- Name: personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = mbom, pg_catalog;

--
-- TOC entry 3291 (class 2606 OID 18760)
-- Name: definition_producible_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_producible_id_fkey FOREIGN KEY (producible_id) REFERENCES inventory.producible(id);


--
-- TOC entry 3292 (class 2606 OID 18773)
-- Name: segment_consumable_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_consumable_id_fkey FOREIGN KEY (consumable_id) REFERENCES inventory.consumable(id);


--
-- TOC entry 3293 (class 2606 OID 18778)
-- Name: segment_definition_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = movement, pg_catalog;

--
-- TOC entry 3282 (class 2606 OID 18587)
-- Name: equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3283 (class 2606 OID 18592)
-- Name: personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = process, pg_catalog;

--
-- TOC entry 3280 (class 2606 OID 18597)
-- Name: personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3286 (class 2606 OID 18602)
-- Name: specification_parent_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_parent_segment_id_fkey FOREIGN KEY (parent_segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = production, pg_catalog;

--
-- TOC entry 3284 (class 2606 OID 18637)
-- Name: equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3285 (class 2606 OID 18642)
-- Name: personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3287 (class 2606 OID 18647)
-- Name: specification_parent_segment_id_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_parent_segment_id_fkey FOREIGN KEY (parent_segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3467 (class 0 OID 0)
-- Dependencies: 22
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-06-18 23:42:05 EEST

--
-- PostgreSQL database dump complete
--

