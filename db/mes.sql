--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.5
-- Dumped by pg_dump version 9.6.5

-- Started on 2017-10-18 02:13:21 EEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 27 (class 2615 OID 30962)
-- Name: api; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA api;


ALTER SCHEMA api OWNER TO postgres;

--
-- TOC entry 6 (class 2615 OID 30961)
-- Name: binding; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA binding;


ALTER SCHEMA binding OWNER TO postgres;

--
-- TOC entry 26 (class 2615 OID 30093)
-- Name: common; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA common;


ALTER SCHEMA common OWNER TO postgres;

--
-- TOC entry 3747 (class 0 OID 0)
-- Dependencies: 26
-- Name: SCHEMA common; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA common IS 'common types and functions';


--
-- TOC entry 16 (class 2615 OID 30094)
-- Name: component; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA component;


ALTER SCHEMA component OWNER TO postgres;

--
-- TOC entry 3748 (class 0 OID 0)
-- Dependencies: 16
-- Name: SCHEMA component; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA component IS 'components of ebom';


--
-- TOC entry 30 (class 2615 OID 30095)
-- Name: ebom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ebom;


ALTER SCHEMA ebom OWNER TO postgres;

--
-- TOC entry 3749 (class 0 OID 0)
-- Dependencies: 30
-- Name: SCHEMA ebom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA ebom IS 'engenering bill of materials';


--
-- TOC entry 7 (class 2615 OID 30957)
-- Name: equipment; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA equipment;


ALTER SCHEMA equipment OWNER TO postgres;

--
-- TOC entry 5 (class 2615 OID 30963)
-- Name: goal; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA goal;


ALTER SCHEMA goal OWNER TO postgres;

--
-- TOC entry 9 (class 2615 OID 30096)
-- Name: inspection; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA inspection;


ALTER SCHEMA inspection OWNER TO postgres;

--
-- TOC entry 3750 (class 0 OID 0)
-- Dependencies: 9
-- Name: SCHEMA inspection; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA inspection IS 'inspection segments';


--
-- TOC entry 13 (class 2615 OID 30097)
-- Name: inventory; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA inventory;


ALTER SCHEMA inventory OWNER TO postgres;

--
-- TOC entry 3751 (class 0 OID 0)
-- Dependencies: 13
-- Name: SCHEMA inventory; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA inventory IS 'inventory items definition';


--
-- TOC entry 32 (class 2615 OID 30098)
-- Name: material; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA material;


ALTER SCHEMA material OWNER TO postgres;

--
-- TOC entry 3752 (class 0 OID 0)
-- Dependencies: 32
-- Name: SCHEMA material; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA material IS 'materials of mbom';


--
-- TOC entry 10 (class 2615 OID 30812)
-- Name: mbom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA mbom;


ALTER SCHEMA mbom OWNER TO postgres;

--
-- TOC entry 3753 (class 0 OID 0)
-- Dependencies: 10
-- Name: SCHEMA mbom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA mbom IS 'manufacturing bill of materials';


--
-- TOC entry 25 (class 2615 OID 30099)
-- Name: movement; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA movement;


ALTER SCHEMA movement OWNER TO postgres;

--
-- TOC entry 3754 (class 0 OID 0)
-- Dependencies: 25
-- Name: SCHEMA movement; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA movement IS 'movement segments';


--
-- TOC entry 24 (class 2615 OID 30100)
-- Name: operation; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA operation;


ALTER SCHEMA operation OWNER TO postgres;

--
-- TOC entry 3755 (class 0 OID 0)
-- Dependencies: 24
-- Name: SCHEMA operation; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA operation IS 'operation segments';


--
-- TOC entry 19 (class 2615 OID 30959)
-- Name: performance; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA performance;


ALTER SCHEMA performance OWNER TO postgres;

--
-- TOC entry 31 (class 2615 OID 30958)
-- Name: personnel; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA personnel;


ALTER SCHEMA personnel OWNER TO postgres;

--
-- TOC entry 29 (class 2615 OID 30964)
-- Name: pgunit; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA pgunit;


ALTER SCHEMA pgunit OWNER TO postgres;

--
-- TOC entry 18 (class 2615 OID 30101)
-- Name: process; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA process;


ALTER SCHEMA process OWNER TO postgres;

--
-- TOC entry 3756 (class 0 OID 0)
-- Dependencies: 18
-- Name: SCHEMA process; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA process IS 'process segments';


--
-- TOC entry 15 (class 2615 OID 30102)
-- Name: product; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA product;


ALTER SCHEMA product OWNER TO postgres;

--
-- TOC entry 3757 (class 0 OID 0)
-- Dependencies: 15
-- Name: SCHEMA product; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA product IS 'product segments';


--
-- TOC entry 22 (class 2615 OID 30103)
-- Name: production; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA production;


ALTER SCHEMA production OWNER TO postgres;

--
-- TOC entry 3758 (class 0 OID 0)
-- Dependencies: 22
-- Name: SCHEMA production; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA production IS 'production segments';


--
-- TOC entry 17 (class 2615 OID 30955)
-- Name: request; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA request;


ALTER SCHEMA request OWNER TO postgres;

--
-- TOC entry 20 (class 2615 OID 30956)
-- Name: response; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA response;


ALTER SCHEMA response OWNER TO postgres;

--
-- TOC entry 8 (class 2615 OID 30954)
-- Name: schedule; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA schedule;


ALTER SCHEMA schedule OWNER TO postgres;

--
-- TOC entry 12 (class 2615 OID 30960)
-- Name: tests; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tests;


ALTER SCHEMA tests OWNER TO postgres;

--
-- TOC entry 14 (class 2615 OID 31090)
-- Name: tool; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA tool;


ALTER SCHEMA tool OWNER TO postgres;

--
-- TOC entry 1 (class 3079 OID 13343)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3760 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 2 (class 3079 OID 30104)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- TOC entry 3761 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET search_path = common, pg_catalog;

--
-- TOC entry 580 (class 1247 OID 30116)
-- Name: component_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE component_kind AS ENUM (
    'ASSEMBLY',
    'PART',
    'BUYABLE'
);


ALTER TYPE component_kind OWNER TO postgres;

--
-- TOC entry 583 (class 1247 OID 30124)
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
-- TOC entry 586 (class 1247 OID 30146)
-- Name: inventory_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE inventory_kind AS ENUM (
    'BUYABLE',
    'COMPOSITE',
    'CONSUMABLE',
    'PRODUCIBLE',
    'SALABLE',
    'STORABLE',
    'ASSEMBLY',
    'PART',
    'PRIMAL'
);


ALTER TYPE inventory_kind OWNER TO postgres;

--
-- TOC entry 668 (class 1247 OID 30160)
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
-- TOC entry 671 (class 1247 OID 30178)
-- Name: material_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE material_kind AS ENUM (
    'CONSUMABLE',
    'PRODUCIBLE',
    'RAW',
    'PRIMAL'
);


ALTER TYPE material_kind OWNER TO postgres;

--
-- TOC entry 674 (class 1247 OID 30184)
-- Name: material_use_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE material_use_kind AS ENUM (
    'CONSUMABLE',
    'PRODUCIBLE'
);


ALTER TYPE material_use_kind OWNER TO postgres;

--
-- TOC entry 677 (class 1247 OID 30190)
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
-- TOC entry 680 (class 1247 OID 30204)
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
-- TOC entry 683 (class 1247 OID 30216)
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
-- TOC entry 286 (class 1255 OID 30229)
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
-- TOC entry 287 (class 1255 OID 30230)
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

SET search_path = binding, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 273 (class 1259 OID 31093)
-- Name: mbom_to_operation; Type: TABLE; Schema: binding; Owner: postgres
--

CREATE TABLE mbom_to_operation (
    id_a bigint NOT NULL,
    id_b bigint NOT NULL
);


ALTER TABLE mbom_to_operation OWNER TO postgres;

SET search_path = component, pg_catalog;

--
-- TOC entry 210 (class 1259 OID 30231)
-- Name: information; Type: TABLE; Schema: component; Owner: postgres
--

CREATE TABLE information (
    part_code character varying NOT NULL,
    version_num integer DEFAULT 1 NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    component_type common.component_kind
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 30239)
-- Name: assembly; Type: TABLE; Schema: component; Owner: postgres
--

CREATE TABLE assembly (
    CONSTRAINT assembly_component_type_check CHECK ((component_type = 'ASSEMBLY'::common.component_kind))
)
INHERITS (information);


ALTER TABLE assembly OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 30248)
-- Name: buyable; Type: TABLE; Schema: component; Owner: postgres
--

CREATE TABLE buyable (
    CONSTRAINT buyable_component_type_check CHECK ((component_type = 'BUYABLE'::common.component_kind)),
    CONSTRAINT buyable_version_num_check CHECK ((version_num = 1))
)
INHERITS (information);


ALTER TABLE buyable OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 30258)
-- Name: part; Type: TABLE; Schema: component; Owner: postgres
--

CREATE TABLE part (
    CONSTRAINT part_component_type_check CHECK ((component_type = 'PART'::common.component_kind))
)
INHERITS (information);


ALTER TABLE part OWNER TO postgres;

SET search_path = ebom, pg_catalog;

--
-- TOC entry 214 (class 1259 OID 30267)
-- Name: definition; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE definition (
    information_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    qty numeric(10,4) NOT NULL,
    component_type common.component_kind NOT NULL
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 30273)
-- Name: assembly; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE assembly (
    CONSTRAINT assembly_component_type_check CHECK ((component_type = 'ASSEMBLY'::common.component_kind))
)
INHERITS (definition);


ALTER TABLE assembly OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 30279)
-- Name: buyable; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE buyable (
    CONSTRAINT buyable_component_type_check CHECK ((component_type = 'BUYABLE'::common.component_kind))
)
INHERITS (definition);


ALTER TABLE buyable OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 30285)
-- Name: information; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 30291)
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
-- Dependencies: 218
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: ebom; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 219 (class 1259 OID 30293)
-- Name: part; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE part (
    CONSTRAINT part_component_type_check CHECK ((component_type = 'PART'::common.component_kind))
)
INHERITS (definition);


ALTER TABLE part OWNER TO postgres;

SET search_path = equipment, pg_catalog;

--
-- TOC entry 267 (class 1259 OID 30978)
-- Name: information; Type: TABLE; Schema: equipment; Owner: postgres
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
-- TOC entry 3763 (class 0 OID 0)
-- Dependencies: 267
-- Name: TABLE information; Type: COMMENT; Schema: equipment; Owner: postgres
--

COMMENT ON TABLE information IS 'equipment information';


--
-- TOC entry 266 (class 1259 OID 30976)
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
-- TOC entry 3764 (class 0 OID 0)
-- Dependencies: 266
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: equipment; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


SET search_path = process, pg_catalog;

--
-- TOC entry 220 (class 1259 OID 30299)
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
-- TOC entry 221 (class 1259 OID 30305)
-- Name: equipment; Type: TABLE; Schema: inspection; Owner: postgres
--

CREATE TABLE equipment (
)
INHERITS (process.equipment);


ALTER TABLE equipment OWNER TO postgres;

SET search_path = process, pg_catalog;

--
-- TOC entry 222 (class 1259 OID 30311)
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
-- TOC entry 223 (class 1259 OID 30317)
-- Name: personnel; Type: TABLE; Schema: inspection; Owner: postgres
--

CREATE TABLE personnel (
)
INHERITS (process.personnel);


ALTER TABLE personnel OWNER TO postgres;

SET search_path = process, pg_catalog;

--
-- TOC entry 224 (class 1259 OID 30323)
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
-- TOC entry 3765 (class 0 OID 0)
-- Dependencies: 224
-- Name: TABLE segment; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE segment IS 'segments to specify process';


SET search_path = inspection, pg_catalog;

--
-- TOC entry 225 (class 1259 OID 30329)
-- Name: segment; Type: TABLE; Schema: inspection; Owner: postgres
--

CREATE TABLE segment (
    CONSTRAINT segment_segment_kind_check CHECK ((segment_kind = 'INSPECTION'::common.process_segment_kind))
)
INHERITS (process.segment);


ALTER TABLE segment OWNER TO postgres;

SET search_path = inventory, pg_catalog;

--
-- TOC entry 226 (class 1259 OID 30336)
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
-- TOC entry 264 (class 1259 OID 30934)
-- Name: assembly; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE assembly (
)
INHERITS (information);


ALTER TABLE assembly OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 30343)
-- Name: buyable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE buyable (
)
INHERITS (information);


ALTER TABLE buyable OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 30357)
-- Name: consumable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE consumable (
)
INHERITS (information);


ALTER TABLE consumable OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 30364)
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
-- TOC entry 3766 (class 0 OID 0)
-- Dependencies: 229
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: inventory; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 265 (class 1259 OID 30944)
-- Name: part; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE part (
)
INHERITS (information);


ALTER TABLE part OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 30924)
-- Name: primal; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE primal (
)
INHERITS (information);


ALTER TABLE primal OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 30366)
-- Name: producible; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE producible (
)
INHERITS (information);


ALTER TABLE producible OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 30373)
-- Name: salable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE salable (
)
INHERITS (information);


ALTER TABLE salable OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 30380)
-- Name: storable; Type: TABLE; Schema: inventory; Owner: postgres
--

CREATE TABLE storable (
)
INHERITS (information);


ALTER TABLE storable OWNER TO postgres;

SET search_path = material, pg_catalog;

--
-- TOC entry 233 (class 1259 OID 30387)
-- Name: information; Type: TABLE; Schema: material; Owner: postgres
--

CREATE TABLE information (
    part_code character varying NOT NULL,
    version_num integer DEFAULT 1 NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    material_type common.material_kind NOT NULL
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 30395)
-- Name: consumable; Type: TABLE; Schema: material; Owner: postgres
--

CREATE TABLE consumable (
    CONSTRAINT consumable_material_type_check CHECK ((material_type = 'CONSUMABLE'::common.material_kind))
)
INHERITS (information);


ALTER TABLE consumable OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 30797)
-- Name: primal; Type: TABLE; Schema: material; Owner: postgres
--

CREATE TABLE primal (
    CONSTRAINT primal_material_type_check CHECK ((material_type = 'PRIMAL'::common.material_kind)),
    CONSTRAINT primal_version_num_check CHECK ((version_num = 1))
)
INHERITS (information);


ALTER TABLE primal OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 30405)
-- Name: producible; Type: TABLE; Schema: material; Owner: postgres
--

CREATE TABLE producible (
    CONSTRAINT producible_material_type_check CHECK ((material_type = 'PRODUCIBLE'::common.material_kind))
)
INHERITS (information);


ALTER TABLE producible OWNER TO postgres;

SET search_path = mbom, pg_catalog;

--
-- TOC entry 260 (class 1259 OID 30829)
-- Name: definition; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE definition (
    information_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    qty numeric(10,4) NOT NULL,
    material_type common.material_kind NOT NULL
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 30840)
-- Name: consumable; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE consumable (
    CONSTRAINT consumable_component_type_check CHECK ((material_type = 'CONSUMABLE'::common.material_kind))
)
INHERITS (definition);


ALTER TABLE consumable OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 30815)
-- Name: information; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    display_name character varying,
    published_date date DEFAULT now() NOT NULL
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 30813)
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
-- TOC entry 3767 (class 0 OID 0)
-- Dependencies: 258
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: mbom; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 262 (class 1259 OID 30900)
-- Name: primal; Type: TABLE; Schema: mbom; Owner: postgres
--

CREATE TABLE primal (
    CONSTRAINT primal_component_type_check CHECK ((material_type = 'PRIMAL'::common.material_kind))
)
INHERITS (definition);


ALTER TABLE primal OWNER TO postgres;

SET search_path = movement, pg_catalog;

--
-- TOC entry 236 (class 1259 OID 30415)
-- Name: equipment; Type: TABLE; Schema: movement; Owner: postgres
--

CREATE TABLE equipment (
)
INHERITS (process.equipment);


ALTER TABLE equipment OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 30421)
-- Name: personnel; Type: TABLE; Schema: movement; Owner: postgres
--

CREATE TABLE personnel (
)
INHERITS (process.personnel);


ALTER TABLE personnel OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 30427)
-- Name: segment; Type: TABLE; Schema: movement; Owner: postgres
--

CREATE TABLE segment (
    CONSTRAINT segment_segment_kind_check CHECK ((segment_kind = 'MOVEMENT'::common.process_segment_kind))
)
INHERITS (process.segment);


ALTER TABLE segment OWNER TO postgres;

SET search_path = operation, pg_catalog;

--
-- TOC entry 270 (class 1259 OID 31031)
-- Name: material; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE material (
    definition_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    consumed_qty numeric(10,4) DEFAULT 1 NOT NULL,
    consumed_uom character varying DEFAULT 'pcs'::character varying NOT NULL,
    rationing_qty numeric(10,4) DEFAULT 1 NOT NULL,
    rationing_uom character varying DEFAULT 'pcs'::character varying NOT NULL,
    serial_num integer DEFAULT 1 NOT NULL
);


ALTER TABLE material OWNER TO postgres;

--
-- TOC entry 272 (class 1259 OID 31067)
-- Name: consumable; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE consumable (
)
INHERITS (material);


ALTER TABLE consumable OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 30445)
-- Name: definition; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE definition (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    descr character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 30453)
-- Name: definition_id_seq; Type: SEQUENCE; Schema: operation; Owner: postgres
--

CREATE SEQUENCE definition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE definition_id_seq OWNER TO postgres;

--
-- TOC entry 3768 (class 0 OID 0)
-- Dependencies: 240
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 241 (class 1259 OID 30455)
-- Name: equipment; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE equipment (
    segment_id bigint NOT NULL,
    equipment_code character varying NOT NULL,
    serial_num integer DEFAULT 1 NOT NULL
);


ALTER TABLE equipment OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 30462)
-- Name: personnel; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE personnel (
    segment_id bigint NOT NULL,
    personnel_code character varying NOT NULL,
    serial_num integer DEFAULT 1 NOT NULL,
    simultaneously_qty integer DEFAULT 1 NOT NULL,
    batch_qty numeric(10,4) DEFAULT 1 NOT NULL,
    time_per_piece_ratio numeric(10,4) DEFAULT 1 NOT NULL,
    standard_setup_time interval DEFAULT '00:01:00'::interval NOT NULL,
    standard_piece_time interval DEFAULT '00:01:00'::interval NOT NULL,
    workers_qty integer DEFAULT 1 NOT NULL,
    rationing_qty numeric(10,4) DEFAULT 1 NOT NULL,
    rationing_uom character varying DEFAULT 'pcs'::character varying NOT NULL
);


ALTER TABLE personnel OWNER TO postgres;

--
-- TOC entry 271 (class 1259 OID 31044)
-- Name: primal; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE primal (
)
INHERITS (material);


ALTER TABLE primal OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 30477)
-- Name: producible; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE producible (
    definition_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    produced_qty numeric(10,4) DEFAULT 1 NOT NULL,
    produced_uom character varying DEFAULT 'pcs'::character varying NOT NULL,
    serial_num integer DEFAULT 1 NOT NULL
);


ALTER TABLE producible OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 30486)
-- Name: segment; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE segment (
    id bigint NOT NULL,
    definition_id bigint NOT NULL,
    operation_code character varying NOT NULL,
    serial_num integer DEFAULT 1 NOT NULL
);


ALTER TABLE segment OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 30493)
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
-- TOC entry 3769 (class 0 OID 0)
-- Dependencies: 245
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


--
-- TOC entry 246 (class 1259 OID 30495)
-- Name: tool; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE tool (
    segment_id bigint NOT NULL,
    tool_code character varying NOT NULL,
    serial_num integer DEFAULT 1 NOT NULL
);


ALTER TABLE tool OWNER TO postgres;

SET search_path = personnel, pg_catalog;

--
-- TOC entry 269 (class 1259 OID 30990)
-- Name: information; Type: TABLE; Schema: personnel; Owner: postgres
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
-- TOC entry 3770 (class 0 OID 0)
-- Dependencies: 269
-- Name: TABLE information; Type: COMMENT; Schema: personnel; Owner: postgres
--

COMMENT ON TABLE information IS 'personnel information';


--
-- TOC entry 268 (class 1259 OID 30988)
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
-- TOC entry 3771 (class 0 OID 0)
-- Dependencies: 268
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: personnel; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


SET search_path = process, pg_catalog;

--
-- TOC entry 247 (class 1259 OID 30502)
-- Name: definition; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE definition (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 3772 (class 0 OID 0)
-- Dependencies: 247
-- Name: TABLE definition; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE definition IS 'definition of specific process';


--
-- TOC entry 248 (class 1259 OID 30508)
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
-- TOC entry 3773 (class 0 OID 0)
-- Dependencies: 248
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 249 (class 1259 OID 30510)
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
-- TOC entry 3774 (class 0 OID 0)
-- Dependencies: 249
-- Name: TABLE information; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE information IS 'list of process segments';


--
-- TOC entry 250 (class 1259 OID 30516)
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
-- TOC entry 3775 (class 0 OID 0)
-- Dependencies: 250
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 251 (class 1259 OID 30518)
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
-- TOC entry 3776 (class 0 OID 0)
-- Dependencies: 251
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


--
-- TOC entry 252 (class 1259 OID 30520)
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
-- TOC entry 275 (class 1259 OID 31100)
-- Name: information; Type: TABLE; Schema: product; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    display_name character varying,
    published_date date DEFAULT now() NOT NULL
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 274 (class 1259 OID 31098)
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
-- TOC entry 3777 (class 0 OID 0)
-- Dependencies: 274
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: product; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


SET search_path = production, pg_catalog;

--
-- TOC entry 253 (class 1259 OID 30525)
-- Name: equipment; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE equipment (
)
INHERITS (process.equipment);


ALTER TABLE equipment OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 30531)
-- Name: personnel; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE personnel (
)
INHERITS (process.personnel);


ALTER TABLE personnel OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 30537)
-- Name: segment; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE segment (
    segment_class character varying,
    CONSTRAINT segment_segment_kind_check CHECK ((segment_kind = 'PRODUCTION'::common.process_segment_kind))
)
INHERITS (process.segment);


ALTER TABLE segment OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 30544)
-- Name: specification; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE specification (
    CONSTRAINT specification_check CHECK ((parent_segment_id <> child_segment_id))
)
INHERITS (process.specification);


ALTER TABLE specification OWNER TO postgres;

SET search_path = component, pg_catalog;

--
-- TOC entry 3309 (class 2604 OID 30549)
-- Name: assembly version_num; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY assembly ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3310 (class 2604 OID 30550)
-- Name: assembly published_date; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY assembly ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3312 (class 2604 OID 30551)
-- Name: buyable version_num; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY buyable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3313 (class 2604 OID 30552)
-- Name: buyable published_date; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY buyable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3316 (class 2604 OID 30553)
-- Name: part version_num; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY part ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3317 (class 2604 OID 30554)
-- Name: part published_date; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY part ALTER COLUMN published_date SET DEFAULT now();


SET search_path = ebom, pg_catalog;

--
-- TOC entry 3321 (class 2604 OID 30555)
-- Name: information id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


SET search_path = equipment, pg_catalog;

--
-- TOC entry 3390 (class 2604 OID 30981)
-- Name: information id; Type: DEFAULT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


SET search_path = inspection, pg_catalog;

--
-- TOC entry 3325 (class 2604 OID 30556)
-- Name: segment id; Type: DEFAULT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('process.segment_id_seq'::regclass);


SET search_path = inventory, pg_catalog;

--
-- TOC entry 3386 (class 2604 OID 30937)
-- Name: assembly id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY assembly ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3387 (class 2604 OID 30938)
-- Name: assembly gid; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY assembly ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3329 (class 2604 OID 30557)
-- Name: buyable id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY buyable ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3330 (class 2604 OID 30558)
-- Name: buyable gid; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY buyable ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3331 (class 2604 OID 30561)
-- Name: consumable id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3332 (class 2604 OID 30562)
-- Name: consumable gid; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3328 (class 2604 OID 30563)
-- Name: information id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3388 (class 2604 OID 30947)
-- Name: part id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY part ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3389 (class 2604 OID 30948)
-- Name: part gid; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY part ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3384 (class 2604 OID 30927)
-- Name: primal id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3385 (class 2604 OID 30928)
-- Name: primal gid; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3333 (class 2604 OID 30564)
-- Name: producible id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY producible ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3334 (class 2604 OID 30565)
-- Name: producible gid; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY producible ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3335 (class 2604 OID 30566)
-- Name: salable id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3336 (class 2604 OID 30567)
-- Name: salable gid; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


--
-- TOC entry 3337 (class 2604 OID 30568)
-- Name: storable id; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY storable ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3338 (class 2604 OID 30569)
-- Name: storable gid; Type: DEFAULT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY storable ALTER COLUMN gid SET DEFAULT public.uuid_generate_v1();


SET search_path = material, pg_catalog;

--
-- TOC entry 3341 (class 2604 OID 30570)
-- Name: consumable version_num; Type: DEFAULT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3342 (class 2604 OID 30571)
-- Name: consumable published_date; Type: DEFAULT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3376 (class 2604 OID 30800)
-- Name: primal version_num; Type: DEFAULT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3377 (class 2604 OID 30801)
-- Name: primal published_date; Type: DEFAULT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3344 (class 2604 OID 30572)
-- Name: producible version_num; Type: DEFAULT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY producible ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3345 (class 2604 OID 30573)
-- Name: producible published_date; Type: DEFAULT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY producible ALTER COLUMN published_date SET DEFAULT now();


SET search_path = mbom, pg_catalog;

--
-- TOC entry 3380 (class 2604 OID 30818)
-- Name: information id; Type: DEFAULT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


SET search_path = movement, pg_catalog;

--
-- TOC entry 3347 (class 2604 OID 30574)
-- Name: segment id; Type: DEFAULT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('process.segment_id_seq'::regclass);


SET search_path = operation, pg_catalog;

--
-- TOC entry 3402 (class 2604 OID 31070)
-- Name: consumable consumed_qty; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN consumed_qty SET DEFAULT 1;


--
-- TOC entry 3403 (class 2604 OID 31071)
-- Name: consumable consumed_uom; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN consumed_uom SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3404 (class 2604 OID 31072)
-- Name: consumable rationing_qty; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3405 (class 2604 OID 31073)
-- Name: consumable rationing_uom; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN rationing_uom SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3406 (class 2604 OID 31074)
-- Name: consumable serial_num; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN serial_num SET DEFAULT 1;


--
-- TOC entry 3351 (class 2604 OID 30575)
-- Name: definition id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3397 (class 2604 OID 31047)
-- Name: primal consumed_qty; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN consumed_qty SET DEFAULT 1;


--
-- TOC entry 3398 (class 2604 OID 31048)
-- Name: primal consumed_uom; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN consumed_uom SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3399 (class 2604 OID 31049)
-- Name: primal rationing_qty; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3400 (class 2604 OID 31050)
-- Name: primal rationing_uom; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN rationing_uom SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3401 (class 2604 OID 31051)
-- Name: primal serial_num; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN serial_num SET DEFAULT 1;


--
-- TOC entry 3366 (class 2604 OID 30576)
-- Name: segment id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


SET search_path = personnel, pg_catalog;

--
-- TOC entry 3391 (class 2604 OID 30993)
-- Name: information id; Type: DEFAULT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


SET search_path = process, pg_catalog;

--
-- TOC entry 3368 (class 2604 OID 30577)
-- Name: definition id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3369 (class 2604 OID 30578)
-- Name: information id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3324 (class 2604 OID 30579)
-- Name: segment id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


SET search_path = product, pg_catalog;

--
-- TOC entry 3407 (class 2604 OID 31103)
-- Name: information id; Type: DEFAULT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


SET search_path = production, pg_catalog;

--
-- TOC entry 3372 (class 2604 OID 30580)
-- Name: segment id; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('process.segment_id_seq'::regclass);


--
-- TOC entry 3374 (class 2604 OID 30581)
-- Name: specification qty; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY specification ALTER COLUMN qty SET DEFAULT 1;


SET search_path = binding, pg_catalog;

--
-- TOC entry 3739 (class 0 OID 31093)
-- Dependencies: 273
-- Data for Name: mbom_to_operation; Type: TABLE DATA; Schema: binding; Owner: postgres
--



SET search_path = component, pg_catalog;

--
-- TOC entry 3677 (class 0 OID 30239)
-- Dependencies: 211
-- Data for Name: assembly; Type: TABLE DATA; Schema: component; Owner: postgres
--

INSERT INTO assembly VALUES ('11.31.050-001', 1, 'Valve-31-50', '2017-06-22', 'ASSEMBLY');
INSERT INTO assembly VALUES ('80.31.050-001', 1, 'Body-31-50', '2017-06-22', 'ASSEMBLY');
INSERT INTO assembly VALUES ('82.31.050-001', 1, 'Handle-31-50', '2017-06-22', 'ASSEMBLY');


--
-- TOC entry 3678 (class 0 OID 30248)
-- Dependencies: 212
-- Data for Name: buyable; Type: TABLE DATA; Schema: component; Owner: postgres
--

INSERT INTO buyable VALUES ('G12', 1, 'Гайка М12', '2017-06-22', 'BUYABLE');


--
-- TOC entry 3676 (class 0 OID 30231)
-- Dependencies: 210
-- Data for Name: information; Type: TABLE DATA; Schema: component; Owner: postgres
--



--
-- TOC entry 3679 (class 0 OID 30258)
-- Dependencies: 213
-- Data for Name: part; Type: TABLE DATA; Schema: component; Owner: postgres
--

INSERT INTO part VALUES ('40.31.050-001', 1, 'Pipe-31-50', '2017-06-22', 'PART');
INSERT INTO part VALUES ('60.31.050-001', 1, 'Ball-31-50', '2017-06-22', 'PART');
INSERT INTO part VALUES ('61.31.050-001', 1, 'Stem-31-50', '2017-06-22', 'PART');


SET search_path = ebom, pg_catalog;

--
-- TOC entry 3681 (class 0 OID 30273)
-- Dependencies: 215
-- Data for Name: assembly; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO assembly VALUES (1, '80.31.050-001', 1, 1.0000, 'ASSEMBLY');
INSERT INTO assembly VALUES (1, '82.31.050-001', 1, 1.0000, 'ASSEMBLY');


--
-- TOC entry 3682 (class 0 OID 30279)
-- Dependencies: 216
-- Data for Name: buyable; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO buyable VALUES (1, 'G12', 1, 1.0000, 'BUYABLE');


--
-- TOC entry 3680 (class 0 OID 30267)
-- Dependencies: 214
-- Data for Name: definition; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 3683 (class 0 OID 30285)
-- Dependencies: 217
-- Data for Name: information; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO information VALUES (1, '11.31.050-001', 1, 'bom#1', '2017-10-18');


--
-- TOC entry 3778 (class 0 OID 0)
-- Dependencies: 218
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: ebom; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, true);


--
-- TOC entry 3685 (class 0 OID 30293)
-- Dependencies: 219
-- Data for Name: part; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO part VALUES (1, '40.31.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (1, '60.31.050-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (1, '61.31.050-001', 1, 1.0000, 'PART');


SET search_path = equipment, pg_catalog;

--
-- TOC entry 3733 (class 0 OID 30978)
-- Dependencies: 267
-- Data for Name: information; Type: TABLE DATA; Schema: equipment; Owner: postgres
--



--
-- TOC entry 3779 (class 0 OID 0)
-- Dependencies: 266
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: equipment; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, false);


SET search_path = inspection, pg_catalog;

--
-- TOC entry 3687 (class 0 OID 30305)
-- Dependencies: 221
-- Data for Name: equipment; Type: TABLE DATA; Schema: inspection; Owner: postgres
--

INSERT INTO equipment VALUES (8, 'stopwatch-1', 'time measurement', 1.00, 'pcs');
INSERT INTO equipment VALUES (8, 'testbench-1', 'pressure testbench', 1.00, 'pcs');


--
-- TOC entry 3689 (class 0 OID 30317)
-- Dependencies: 223
-- Data for Name: personnel; Type: TABLE DATA; Schema: inspection; Owner: postgres
--

INSERT INTO personnel VALUES (8, 'inspector senior', 'inspector class', 1.00, 'man');
INSERT INTO personnel VALUES (8, 'inspector junior', 'inspector class', 1.00, 'man');


--
-- TOC entry 3691 (class 0 OID 30329)
-- Dependencies: 225
-- Data for Name: segment; Type: TABLE DATA; Schema: inspection; Owner: postgres
--

INSERT INTO segment VALUES (8, 'inspection segment 1', 'INSPECTION', 'B1', 'SITE', '2017-06-07', '08:00:00');


SET search_path = inventory, pg_catalog;

--
-- TOC entry 3730 (class 0 OID 30934)
-- Dependencies: 264
-- Data for Name: assembly; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 3693 (class 0 OID 30343)
-- Dependencies: 227
-- Data for Name: buyable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 3694 (class 0 OID 30357)
-- Dependencies: 228
-- Data for Name: consumable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO consumable VALUES (1, 'dc845dae-507c-11e7-bce9-d4bed939923a', '21.16.080-001', 'CONSUMABLE');


--
-- TOC entry 3692 (class 0 OID 30336)
-- Dependencies: 226
-- Data for Name: information; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 3780 (class 0 OID 0)
-- Dependencies: 229
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: inventory; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 8, true);


--
-- TOC entry 3731 (class 0 OID 30944)
-- Dependencies: 265
-- Data for Name: part; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 3729 (class 0 OID 30924)
-- Dependencies: 263
-- Data for Name: primal; Type: TABLE DATA; Schema: inventory; Owner: postgres
--



--
-- TOC entry 3696 (class 0 OID 30366)
-- Dependencies: 230
-- Data for Name: producible; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO producible VALUES (6, 'c3850c08-52d5-11e7-b45f-ac9e1788662b', '11.31.100-001', 'PRODUCIBLE');
INSERT INTO producible VALUES (2, 'dc845dae-507c-11e7-bce9-d4bed939923a', '21.16.080-001', 'PRODUCIBLE');


--
-- TOC entry 3697 (class 0 OID 30373)
-- Dependencies: 231
-- Data for Name: salable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO salable VALUES (7, 'c3850c08-52d5-11e7-b45f-ac9e1788662b', '11.31.100-001', 'SALABLE');
INSERT INTO salable VALUES (3, 'dc845dae-507c-11e7-bce9-d4bed939923a', '21.16.080-001', 'SALABLE');


--
-- TOC entry 3698 (class 0 OID 30380)
-- Dependencies: 232
-- Data for Name: storable; Type: TABLE DATA; Schema: inventory; Owner: postgres
--

INSERT INTO storable VALUES (8, 'c3850c08-52d5-11e7-b45f-ac9e1788662b', '11.31.100-001', 'STORABLE');
INSERT INTO storable VALUES (4, 'dc845dae-507c-11e7-bce9-d4bed939923a', '21.16.080-001', 'STORABLE');


SET search_path = material, pg_catalog;

--
-- TOC entry 3700 (class 0 OID 30395)
-- Dependencies: 234
-- Data for Name: consumable; Type: TABLE DATA; Schema: material; Owner: postgres
--

INSERT INTO consumable VALUES ('40.31.050-001', 1, 'Pipe-31-50', '2017-06-24', 'CONSUMABLE');
INSERT INTO consumable VALUES ('60.31.050-001', 1, 'Ball-31-50', '2017-06-24', 'CONSUMABLE');
INSERT INTO consumable VALUES ('61.31.050-001', 1, 'Stem-31-50', '2017-06-24', 'CONSUMABLE');
INSERT INTO consumable VALUES ('80.31.050-001', 1, 'Body-31-50', '2017-06-24', 'CONSUMABLE');
INSERT INTO consumable VALUES ('82.31.050-001', 1, 'Handle-31-50', '2017-06-24', 'CONSUMABLE');
INSERT INTO consumable VALUES ('G12', 1, 'Гайка М12', '2017-06-24', 'CONSUMABLE');
INSERT INTO consumable VALUES ('40.31.050-001.011', 1, 'Pipe-31-50.011', '2017-06-30', 'CONSUMABLE');


--
-- TOC entry 3699 (class 0 OID 30387)
-- Dependencies: 233
-- Data for Name: information; Type: TABLE DATA; Schema: material; Owner: postgres
--



--
-- TOC entry 3723 (class 0 OID 30797)
-- Dependencies: 257
-- Data for Name: primal; Type: TABLE DATA; Schema: material; Owner: postgres
--

INSERT INTO primal VALUES ('pipe-57', 1, 'pipe 57', '2017-10-17', 'PRIMAL');


--
-- TOC entry 3701 (class 0 OID 30405)
-- Dependencies: 235
-- Data for Name: producible; Type: TABLE DATA; Schema: material; Owner: postgres
--

INSERT INTO producible VALUES ('11.31.050-001', 1, 'Valve-31-50', '2017-06-24', 'PRODUCIBLE');
INSERT INTO producible VALUES ('40.31.050-001', 1, 'Pipe-31-50', '2017-06-24', 'PRODUCIBLE');
INSERT INTO producible VALUES ('60.31.050-001', 1, 'Ball-31-50', '2017-06-24', 'PRODUCIBLE');
INSERT INTO producible VALUES ('61.31.050-001', 1, 'Stem-31-50', '2017-06-24', 'PRODUCIBLE');
INSERT INTO producible VALUES ('80.31.050-001', 1, 'Body-31-50', '2017-06-24', 'PRODUCIBLE');
INSERT INTO producible VALUES ('82.31.050-001', 1, 'Handle-31-50', '2017-06-24', 'PRODUCIBLE');
INSERT INTO producible VALUES ('40.31.050-001.011', 1, 'Pipe-31-50.011', '2017-06-30', 'PRODUCIBLE');


SET search_path = mbom, pg_catalog;

--
-- TOC entry 3727 (class 0 OID 30840)
-- Dependencies: 261
-- Data for Name: consumable; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 3726 (class 0 OID 30829)
-- Dependencies: 260
-- Data for Name: definition; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 3725 (class 0 OID 30815)
-- Dependencies: 259
-- Data for Name: information; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



--
-- TOC entry 3781 (class 0 OID 0)
-- Dependencies: 258
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: mbom; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, false);


--
-- TOC entry 3728 (class 0 OID 30900)
-- Dependencies: 262
-- Data for Name: primal; Type: TABLE DATA; Schema: mbom; Owner: postgres
--



SET search_path = movement, pg_catalog;

--
-- TOC entry 3702 (class 0 OID 30415)
-- Dependencies: 236
-- Data for Name: equipment; Type: TABLE DATA; Schema: movement; Owner: postgres
--

INSERT INTO equipment VALUES (9, 'truck', 'truck class', 1.00, 'pcs');


--
-- TOC entry 3703 (class 0 OID 30421)
-- Dependencies: 237
-- Data for Name: personnel; Type: TABLE DATA; Schema: movement; Owner: postgres
--

INSERT INTO personnel VALUES (9, 'driver', 'driver class', 1.00, 'man');


--
-- TOC entry 3704 (class 0 OID 30427)
-- Dependencies: 238
-- Data for Name: segment; Type: TABLE DATA; Schema: movement; Owner: postgres
--

INSERT INTO segment VALUES (9, 'movement segment 1', 'MOVEMENT', 'C1', 'SITE', '2017-06-07', '23:00:00');


SET search_path = operation, pg_catalog;

--
-- TOC entry 3738 (class 0 OID 31067)
-- Dependencies: 272
-- Data for Name: consumable; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3705 (class 0 OID 30445)
-- Dependencies: 239
-- Data for Name: definition; Type: TABLE DATA; Schema: operation; Owner: postgres
--

INSERT INTO definition VALUES (1, 'c864888a-5d15-11e7-91f1-ac9e1788662b', 'Test definition', '2017-06-30');
INSERT INTO definition VALUES (2, '95e87ed0-5d1e-11e7-8a26-ac9e1788662b', '60.31.050-001 from pipe', '2017-06-30');
INSERT INTO definition VALUES (3, '9a78ab14-5d1e-11e7-8a27-ac9e1788662b', '60.31.050-001 from plate', '2017-06-30');


--
-- TOC entry 3782 (class 0 OID 0)
-- Dependencies: 240
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 3, true);


--
-- TOC entry 3707 (class 0 OID 30455)
-- Dependencies: 241
-- Data for Name: equipment; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3736 (class 0 OID 31031)
-- Dependencies: 270
-- Data for Name: material; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3708 (class 0 OID 30462)
-- Dependencies: 242
-- Data for Name: personnel; Type: TABLE DATA; Schema: operation; Owner: postgres
--

INSERT INTO personnel VALUES (1, 'worker-1', 1, 1, 1.0000, 1.0000, '00:01:00', '00:01:00', 1, 1.0000, 'pcs');
INSERT INTO personnel VALUES (1, 'worker-2', 1, 1, 1.0000, 1.0000, '00:01:00', '00:01:00', 1, 1.0000, 'pcs');


--
-- TOC entry 3737 (class 0 OID 31044)
-- Dependencies: 271
-- Data for Name: primal; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3709 (class 0 OID 30477)
-- Dependencies: 243
-- Data for Name: producible; Type: TABLE DATA; Schema: operation; Owner: postgres
--

INSERT INTO producible VALUES (1, '40.31.050-001', 1, 1.0000, 'pcs', 1);
INSERT INTO producible VALUES (2, '60.31.050-001', 1, 1.0000, 'pcs', 1);
INSERT INTO producible VALUES (3, '60.31.050-001', 1, 1.0000, 'pcs', 1);


--
-- TOC entry 3710 (class 0 OID 30486)
-- Dependencies: 244
-- Data for Name: segment; Type: TABLE DATA; Schema: operation; Owner: postgres
--

INSERT INTO segment VALUES (1, 1, 'operation-1', 1);
INSERT INTO segment VALUES (2, 1, 'operation-2', 2);


--
-- TOC entry 3783 (class 0 OID 0)
-- Dependencies: 245
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 2, true);


--
-- TOC entry 3712 (class 0 OID 30495)
-- Dependencies: 246
-- Data for Name: tool; Type: TABLE DATA; Schema: operation; Owner: postgres
--



SET search_path = personnel, pg_catalog;

--
-- TOC entry 3735 (class 0 OID 30990)
-- Dependencies: 269
-- Data for Name: information; Type: TABLE DATA; Schema: personnel; Owner: postgres
--



--
-- TOC entry 3784 (class 0 OID 0)
-- Dependencies: 268
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: personnel; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, false);


SET search_path = process, pg_catalog;

--
-- TOC entry 3713 (class 0 OID 30502)
-- Dependencies: 247
-- Data for Name: definition; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO definition VALUES (1, 'valve-31-50');
INSERT INTO definition VALUES (2, 'vlave-41-50');


--
-- TOC entry 3785 (class 0 OID 0)
-- Dependencies: 248
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 2, true);


--
-- TOC entry 3686 (class 0 OID 30299)
-- Dependencies: 220
-- Data for Name: equipment; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3715 (class 0 OID 30510)
-- Dependencies: 249
-- Data for Name: information; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3786 (class 0 OID 0)
-- Dependencies: 250
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, false);


--
-- TOC entry 3688 (class 0 OID 30311)
-- Dependencies: 222
-- Data for Name: personnel; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3690 (class 0 OID 30323)
-- Dependencies: 224
-- Data for Name: segment; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO segment VALUES (15, 'process segment 1', 'PROCESS', 'A1', 'ENTERPRISE', '2017-06-07', '3 days');


--
-- TOC entry 3787 (class 0 OID 0)
-- Dependencies: 251
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 15, true);


--
-- TOC entry 3718 (class 0 OID 30520)
-- Dependencies: 252
-- Data for Name: specification; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO specification VALUES (15, 9, 1);
INSERT INTO specification VALUES (15, 7, 1);
INSERT INTO specification VALUES (15, 8, 1);
INSERT INTO specification VALUES (15, 12, 1);
INSERT INTO specification VALUES (15, 14, 1);


SET search_path = product, pg_catalog;

--
-- TOC entry 3741 (class 0 OID 31100)
-- Dependencies: 275
-- Data for Name: information; Type: TABLE DATA; Schema: product; Owner: postgres
--



--
-- TOC entry 3788 (class 0 OID 0)
-- Dependencies: 274
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: product; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, false);


SET search_path = production, pg_catalog;

--
-- TOC entry 3719 (class 0 OID 30525)
-- Dependencies: 253
-- Data for Name: equipment; Type: TABLE DATA; Schema: production; Owner: postgres
--

INSERT INTO equipment VALUES (7, 'tool-1', 'tool class', 2.00, 'pcs');
INSERT INTO equipment VALUES (7, 'machine-tool
	
machine-tool
	
machine-tool', 'machine class', 1.00, 'pcs');


--
-- TOC entry 3720 (class 0 OID 30531)
-- Dependencies: 254
-- Data for Name: personnel; Type: TABLE DATA; Schema: production; Owner: postgres
--

INSERT INTO personnel VALUES (7, 'operator-1', 'operator class', 2.00, 'man');


--
-- TOC entry 3721 (class 0 OID 30537)
-- Dependencies: 255
-- Data for Name: segment; Type: TABLE DATA; Schema: production; Owner: postgres
--

INSERT INTO segment VALUES (7, 'production segm 1', 'PRODUCTION', 'A1', 'SITE', '2017-06-07', '02:00:00', 'PROCESS');
INSERT INTO segment VALUES (14, 'production segm 2', 'PRODUCTION', 'A1', 'SITE', '2017-06-07', '01:00:00', 'PROCESS');


--
-- TOC entry 3722 (class 0 OID 30544)
-- Dependencies: 256
-- Data for Name: specification; Type: TABLE DATA; Schema: production; Owner: postgres
--

INSERT INTO specification VALUES (7, 12, 1);
INSERT INTO specification VALUES (7, 13, 1);
INSERT INTO specification VALUES (14, 12, 2);


SET search_path = binding, pg_catalog;

--
-- TOC entry 3522 (class 2606 OID 31097)
-- Name: mbom_to_operation mbom_to_operation_pkey; Type: CONSTRAINT; Schema: binding; Owner: postgres
--

ALTER TABLE ONLY mbom_to_operation
    ADD CONSTRAINT mbom_to_operation_pkey PRIMARY KEY (id_a, id_b);


SET search_path = component, pg_catalog;

--
-- TOC entry 3412 (class 2606 OID 30583)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3414 (class 2606 OID 30585)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3410 (class 2606 OID 30587)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3789 (class 0 OID 0)
-- Dependencies: 3410
-- Name: CONSTRAINT information_pkey ON information; Type: COMMENT; Schema: component; Owner: postgres
--

COMMENT ON CONSTRAINT information_pkey ON information IS 'may be part_code + version_num + component_type';


--
-- TOC entry 3416 (class 2606 OID 30589)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_pkey PRIMARY KEY (part_code, version_num);


SET search_path = ebom, pg_catalog;

--
-- TOC entry 3420 (class 2606 OID 30591)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 3422 (class 2606 OID 30595)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 3418 (class 2606 OID 30593)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 3424 (class 2606 OID 30597)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3426 (class 2606 OID 30599)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_pkey PRIMARY KEY (information_id, part_code);


SET search_path = equipment, pg_catalog;

--
-- TOC entry 3512 (class 2606 OID 30986)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: equipment; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


SET search_path = inspection, pg_catalog;

--
-- TOC entry 3430 (class 2606 OID 30601)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3434 (class 2606 OID 30603)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3438 (class 2606 OID 30605)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


SET search_path = inventory, pg_catalog;

--
-- TOC entry 3508 (class 2606 OID 30943)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (id);


--
-- TOC entry 3442 (class 2606 OID 30607)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (id);


--
-- TOC entry 3444 (class 2606 OID 30611)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (id);


--
-- TOC entry 3440 (class 2606 OID 30613)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3510 (class 2606 OID 30953)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_pkey PRIMARY KEY (id);


--
-- TOC entry 3506 (class 2606 OID 30933)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (id);


--
-- TOC entry 3446 (class 2606 OID 30615)
-- Name: producible producible_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY producible
    ADD CONSTRAINT producible_pkey PRIMARY KEY (id);


--
-- TOC entry 3448 (class 2606 OID 30617)
-- Name: salable salable_gid_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable
    ADD CONSTRAINT salable_gid_key UNIQUE (gid);


--
-- TOC entry 3450 (class 2606 OID 30619)
-- Name: salable salable_good_code_key; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable
    ADD CONSTRAINT salable_good_code_key UNIQUE (good_code);


--
-- TOC entry 3452 (class 2606 OID 30621)
-- Name: salable salable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY salable
    ADD CONSTRAINT salable_pkey PRIMARY KEY (id);


--
-- TOC entry 3454 (class 2606 OID 30623)
-- Name: storable storable_pkey; Type: CONSTRAINT; Schema: inventory; Owner: postgres
--

ALTER TABLE ONLY storable
    ADD CONSTRAINT storable_pkey PRIMARY KEY (id);


SET search_path = material, pg_catalog;

--
-- TOC entry 3458 (class 2606 OID 30625)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3456 (class 2606 OID 30627)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (part_code, version_num, material_type);


--
-- TOC entry 3496 (class 2606 OID 30808)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3460 (class 2606 OID 30629)
-- Name: producible producible_pkey; Type: CONSTRAINT; Schema: material; Owner: postgres
--

ALTER TABLE ONLY producible
    ADD CONSTRAINT producible_pkey PRIMARY KEY (part_code, version_num);


SET search_path = mbom, pg_catalog;

--
-- TOC entry 3502 (class 2606 OID 30848)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 3500 (class 2606 OID 30836)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 3498 (class 2606 OID 30823)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3504 (class 2606 OID 30908)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (information_id, part_code);


SET search_path = movement, pg_catalog;

--
-- TOC entry 3462 (class 2606 OID 30631)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3464 (class 2606 OID 30633)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3466 (class 2606 OID 30635)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


SET search_path = operation, pg_catalog;

--
-- TOC entry 3520 (class 2606 OID 31079)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3468 (class 2606 OID 30639)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3470 (class 2606 OID 30641)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, equipment_code);


--
-- TOC entry 3516 (class 2606 OID 31043)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY material
    ADD CONSTRAINT material_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3472 (class 2606 OID 30643)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, personnel_code);


--
-- TOC entry 3518 (class 2606 OID 31056)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3474 (class 2606 OID 30645)
-- Name: producible producible_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY producible
    ADD CONSTRAINT producible_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3476 (class 2606 OID 31092)
-- Name: segment segment_definition_id_operation_code_key; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_definition_id_operation_code_key UNIQUE (definition_id, operation_code);


--
-- TOC entry 3478 (class 2606 OID 30647)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 3480 (class 2606 OID 30649)
-- Name: tool tool_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY tool
    ADD CONSTRAINT tool_pkey PRIMARY KEY (segment_id, tool_code);


SET search_path = personnel, pg_catalog;

--
-- TOC entry 3514 (class 2606 OID 30998)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: personnel; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


SET search_path = process, pg_catalog;

--
-- TOC entry 3482 (class 2606 OID 30651)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3428 (class 2606 OID 30653)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3484 (class 2606 OID 30655)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3432 (class 2606 OID 30657)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3436 (class 2606 OID 30659)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 3486 (class 2606 OID 30661)
-- Name: specification specification_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_pkey PRIMARY KEY (parent_segment_id, child_segment_id);


SET search_path = product, pg_catalog;

--
-- TOC entry 3524 (class 2606 OID 31109)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


SET search_path = production, pg_catalog;

--
-- TOC entry 3488 (class 2606 OID 30663)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3490 (class 2606 OID 30665)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, class_id);


--
-- TOC entry 3492 (class 2606 OID 30667)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 3494 (class 2606 OID 30669)
-- Name: specification specification_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_pkey PRIMARY KEY (parent_segment_id, child_segment_id);


SET search_path = process, pg_catalog;

--
-- TOC entry 3557 (class 2620 OID 30671)
-- Name: specification child_segment_ref_fkey_trigger; Type: TRIGGER; Schema: process; Owner: postgres
--

CREATE CONSTRAINT TRIGGER child_segment_ref_fkey_trigger AFTER INSERT OR UPDATE ON specification DEFERRABLE INITIALLY IMMEDIATE FOR EACH ROW EXECUTE PROCEDURE child_segment_ref_trigger();


SET search_path = production, pg_catalog;

--
-- TOC entry 3558 (class 2620 OID 30673)
-- Name: specification child_segment_ref_fkey_trigger; Type: TRIGGER; Schema: production; Owner: postgres
--

CREATE CONSTRAINT TRIGGER child_segment_ref_fkey_trigger AFTER INSERT OR UPDATE ON specification DEFERRABLE INITIALLY IMMEDIATE FOR EACH ROW EXECUTE PROCEDURE child_segment_ref_trigger();


SET search_path = ebom, pg_catalog;

--
-- TOC entry 3526 (class 2606 OID 30674)
-- Name: assembly assembly_information_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id);


--
-- TOC entry 3525 (class 2606 OID 30679)
-- Name: assembly assembly_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES component.assembly(part_code, version_num);


--
-- TOC entry 3528 (class 2606 OID 30684)
-- Name: buyable buyable_information_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id);


--
-- TOC entry 3527 (class 2606 OID 30689)
-- Name: buyable buyable_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES component.buyable(part_code, version_num);


--
-- TOC entry 3529 (class 2606 OID 30694)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES component.assembly(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3531 (class 2606 OID 30699)
-- Name: part part_information_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id);


--
-- TOC entry 3530 (class 2606 OID 30704)
-- Name: part part_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES component.part(part_code, version_num);


SET search_path = inspection, pg_catalog;

--
-- TOC entry 3532 (class 2606 OID 30709)
-- Name: equipment equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3534 (class 2606 OID 30714)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = mbom, pg_catalog;

--
-- TOC entry 3548 (class 2606 OID 30849)
-- Name: consumable consumable_information_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id);


--
-- TOC entry 3549 (class 2606 OID 30854)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.consumable(part_code, version_num);


--
-- TOC entry 3547 (class 2606 OID 30824)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3550 (class 2606 OID 30909)
-- Name: primal primal_information_id_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id);


--
-- TOC entry 3551 (class 2606 OID 30914)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: mbom; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.primal(part_code, version_num);


SET search_path = movement, pg_catalog;

--
-- TOC entry 3535 (class 2606 OID 30719)
-- Name: equipment equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3536 (class 2606 OID 30724)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = operation, pg_catalog;

--
-- TOC entry 3554 (class 2606 OID 31080)
-- Name: consumable consumable_definition_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3555 (class 2606 OID 31085)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3537 (class 2606 OID 30739)
-- Name: equipment equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3538 (class 2606 OID 30744)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3552 (class 2606 OID 31057)
-- Name: primal primal_definition_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3553 (class 2606 OID 31062)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3539 (class 2606 OID 30749)
-- Name: producible producible_definition_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY producible
    ADD CONSTRAINT producible_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id);


--
-- TOC entry 3540 (class 2606 OID 30754)
-- Name: producible producible_part_code_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY producible
    ADD CONSTRAINT producible_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.producible(part_code, version_num);


--
-- TOC entry 3541 (class 2606 OID 30759)
-- Name: segment segment_definition_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3542 (class 2606 OID 30764)
-- Name: tool tool_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY tool
    ADD CONSTRAINT tool_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = process, pg_catalog;

--
-- TOC entry 3533 (class 2606 OID 30769)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3543 (class 2606 OID 30774)
-- Name: specification specification_parent_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_parent_segment_id_fkey FOREIGN KEY (parent_segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = product, pg_catalog;

--
-- TOC entry 3556 (class 2606 OID 31110)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: product; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


SET search_path = production, pg_catalog;

--
-- TOC entry 3544 (class 2606 OID 30779)
-- Name: equipment equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3545 (class 2606 OID 30784)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3546 (class 2606 OID 30789)
-- Name: specification specification_parent_segment_id_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_parent_segment_id_fkey FOREIGN KEY (parent_segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2017-10-18 02:13:22 EEST

--
-- PostgreSQL database dump complete
--

