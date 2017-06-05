--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2017-06-06 00:16:35 EEST

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
-- TOC entry 3396 (class 0 OID 0)
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
-- TOC entry 3397 (class 0 OID 0)
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
-- TOC entry 3398 (class 0 OID 0)
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
-- TOC entry 3399 (class 0 OID 0)
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
-- TOC entry 3400 (class 0 OID 0)
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
-- TOC entry 3401 (class 0 OID 0)
-- Dependencies: 8
-- Name: SCHEMA process; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA process IS 'process segments';


--
-- TOC entry 12 (class 2615 OID 16386)
-- Name: production; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA production;


ALTER SCHEMA production OWNER TO postgres;

--
-- TOC entry 3402 (class 0 OID 0)
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
-- TOC entry 3405 (class 0 OID 0)
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
-- TOC entry 3406 (class 0 OID 0)
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
-- TOC entry 3407 (class 0 OID 0)
-- Dependencies: 16
-- Name: SCHEMA schedule; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA schedule IS 'production schedule';


--
-- TOC entry 1 (class 3079 OID 13311)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3408 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = common, pg_catalog;

--
-- TOC entry 708 (class 1247 OID 17104)
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
-- TOC entry 705 (class 1247 OID 17126)
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
-- TOC entry 714 (class 1247 OID 17158)
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
-- TOC entry 677 (class 1247 OID 17025)
-- Name: process_segment_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE process_segment_kind AS ENUM (
    'PRODUCTION',
    'MOVEMENT',
    'INSPECTION'
);


ALTER TYPE process_segment_kind OWNER TO postgres;

--
-- TOC entry 711 (class 1247 OID 17144)
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
-- TOC entry 203 (class 1259 OID 16912)
-- Name: external; Type: TABLE; Schema: bom; Owner: postgres
--

CREATE TABLE external (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE external OWNER TO postgres;

--
-- TOC entry 3409 (class 0 OID 0)
-- Dependencies: 203
-- Name: TABLE external; Type: COMMENT; Schema: bom; Owner: postgres
--

COMMENT ON TABLE external IS 'external bill of material';


--
-- TOC entry 202 (class 1259 OID 16910)
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
-- TOC entry 3410 (class 0 OID 0)
-- Dependencies: 202
-- Name: external_id_seq; Type: SEQUENCE OWNED BY; Schema: bom; Owner: postgres
--

ALTER SEQUENCE external_id_seq OWNED BY external.id;


--
-- TOC entry 205 (class 1259 OID 16923)
-- Name: manufacturing; Type: TABLE; Schema: bom; Owner: postgres
--

CREATE TABLE manufacturing (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE manufacturing OWNER TO postgres;

--
-- TOC entry 3411 (class 0 OID 0)
-- Dependencies: 205
-- Name: TABLE manufacturing; Type: COMMENT; Schema: bom; Owner: postgres
--

COMMENT ON TABLE manufacturing IS 'manufacturing bill of material (production)';


--
-- TOC entry 204 (class 1259 OID 16921)
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
-- TOC entry 3412 (class 0 OID 0)
-- Dependencies: 204
-- Name: manufacturing_id_seq; Type: SEQUENCE OWNED BY; Schema: bom; Owner: postgres
--

ALTER SEQUENCE manufacturing_id_seq OWNED BY manufacturing.id;


--
-- TOC entry 207 (class 1259 OID 16934)
-- Name: operation; Type: TABLE; Schema: bom; Owner: postgres
--

CREATE TABLE operation (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE operation OWNER TO postgres;

--
-- TOC entry 3413 (class 0 OID 0)
-- Dependencies: 207
-- Name: TABLE operation; Type: COMMENT; Schema: bom; Owner: postgres
--

COMMENT ON TABLE operation IS 'operations bill of material ';


--
-- TOC entry 206 (class 1259 OID 16932)
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
-- TOC entry 3414 (class 0 OID 0)
-- Dependencies: 206
-- Name: operation_id_seq; Type: SEQUENCE OWNED BY; Schema: bom; Owner: postgres
--

ALTER SEQUENCE operation_id_seq OWNED BY operation.id;


SET search_path = inspection, pg_catalog;

--
-- TOC entry 211 (class 1259 OID 16970)
-- Name: segment; Type: TABLE; Schema: inspection; Owner: postgres
--

CREATE TABLE segment (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE segment OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16968)
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
-- TOC entry 3415 (class 0 OID 0)
-- Dependencies: 210
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: inspection; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


SET search_path = movement, pg_catalog;

--
-- TOC entry 209 (class 1259 OID 16959)
-- Name: segment; Type: TABLE; Schema: movement; Owner: postgres
--

CREATE TABLE segment (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE segment OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16957)
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
-- TOC entry 3416 (class 0 OID 0)
-- Dependencies: 208
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: movement; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


SET search_path = operation, pg_catalog;

--
-- TOC entry 199 (class 1259 OID 16889)
-- Name: equipment; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE equipment (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE equipment OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16887)
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
-- TOC entry 3417 (class 0 OID 0)
-- Dependencies: 198
-- Name: equipment_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE equipment_id_seq OWNED BY equipment.id;


--
-- TOC entry 197 (class 1259 OID 16878)
-- Name: material; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE material (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE material OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16876)
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
-- TOC entry 3418 (class 0 OID 0)
-- Dependencies: 196
-- Name: material_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE material_id_seq OWNED BY material.id;


--
-- TOC entry 245 (class 1259 OID 17321)
-- Name: parameter; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE parameter (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE parameter OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 17319)
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
-- TOC entry 3419 (class 0 OID 0)
-- Dependencies: 244
-- Name: parameter_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE parameter_id_seq OWNED BY parameter.id;


--
-- TOC entry 201 (class 1259 OID 16900)
-- Name: personnel; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE personnel (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE personnel OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16898)
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
-- TOC entry 3420 (class 0 OID 0)
-- Dependencies: 200
-- Name: personnel_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE personnel_id_seq OWNED BY personnel.id;


--
-- TOC entry 195 (class 1259 OID 16867)
-- Name: segment; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE segment (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE segment OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 16865)
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
-- TOC entry 3421 (class 0 OID 0)
-- Dependencies: 194
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


SET search_path = process, pg_catalog;

--
-- TOC entry 221 (class 1259 OID 17033)
-- Name: definition; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE definition (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 3422 (class 0 OID 0)
-- Dependencies: 221
-- Name: TABLE definition; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE definition IS 'definition of specific process';


--
-- TOC entry 220 (class 1259 OID 17031)
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
-- TOC entry 3423 (class 0 OID 0)
-- Dependencies: 220
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 231 (class 1259 OID 17178)
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
-- TOC entry 3424 (class 0 OID 0)
-- Dependencies: 231
-- Name: TABLE dependency; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE dependency IS 'process secment dependency';


--
-- TOC entry 230 (class 1259 OID 17176)
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
-- TOC entry 3425 (class 0 OID 0)
-- Dependencies: 230
-- Name: dependency_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE dependency_id_seq OWNED BY dependency.id;


--
-- TOC entry 225 (class 1259 OID 17055)
-- Name: equipment; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE equipment (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE equipment OWNER TO postgres;

--
-- TOC entry 3426 (class 0 OID 0)
-- Dependencies: 225
-- Name: TABLE equipment; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE equipment IS 'process segment equipment specification';


--
-- TOC entry 224 (class 1259 OID 17053)
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
-- TOC entry 3427 (class 0 OID 0)
-- Dependencies: 224
-- Name: equipment_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE equipment_id_seq OWNED BY equipment.id;


--
-- TOC entry 217 (class 1259 OID 17003)
-- Name: inspection; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE inspection (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE inspection OWNER TO postgres;

--
-- TOC entry 3428 (class 0 OID 0)
-- Dependencies: 217
-- Name: TABLE inspection; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE inspection IS 'inspection segment list';


--
-- TOC entry 216 (class 1259 OID 17001)
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
-- TOC entry 3429 (class 0 OID 0)
-- Dependencies: 216
-- Name: inspection_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE inspection_id_seq OWNED BY inspection.id;


--
-- TOC entry 227 (class 1259 OID 17066)
-- Name: material; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE material (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE material OWNER TO postgres;

--
-- TOC entry 3430 (class 0 OID 0)
-- Dependencies: 227
-- Name: TABLE material; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE material IS 'process segment material specification';


--
-- TOC entry 226 (class 1259 OID 17064)
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
-- TOC entry 3431 (class 0 OID 0)
-- Dependencies: 226
-- Name: material_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE material_id_seq OWNED BY material.id;


--
-- TOC entry 215 (class 1259 OID 16992)
-- Name: movement; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE movement (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE movement OWNER TO postgres;

--
-- TOC entry 3432 (class 0 OID 0)
-- Dependencies: 215
-- Name: TABLE movement; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE movement IS 'movement segment list';


--
-- TOC entry 214 (class 1259 OID 16990)
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
-- TOC entry 3433 (class 0 OID 0)
-- Dependencies: 214
-- Name: movement_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE movement_id_seq OWNED BY movement.id;


--
-- TOC entry 229 (class 1259 OID 17077)
-- Name: personnel; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE personnel (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE personnel OWNER TO postgres;

--
-- TOC entry 3434 (class 0 OID 0)
-- Dependencies: 229
-- Name: TABLE personnel; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE personnel IS 'process segment personnel specification';


--
-- TOC entry 228 (class 1259 OID 17075)
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
-- TOC entry 3435 (class 0 OID 0)
-- Dependencies: 228
-- Name: personnel_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE personnel_id_seq OWNED BY personnel.id;


--
-- TOC entry 219 (class 1259 OID 17014)
-- Name: production; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE production (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE production OWNER TO postgres;

--
-- TOC entry 3436 (class 0 OID 0)
-- Dependencies: 219
-- Name: TABLE production; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE production IS 'production segment list';


--
-- TOC entry 218 (class 1259 OID 17012)
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
-- TOC entry 3437 (class 0 OID 0)
-- Dependencies: 218
-- Name: production_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE production_id_seq OWNED BY production.id;


--
-- TOC entry 213 (class 1259 OID 16981)
-- Name: segment; Type: TABLE; Schema: process; Owner: postgres
--

CREATE TABLE segment (
    id bigint NOT NULL,
    descr character varying,
    segment_kind common.process_segment_kind
);


ALTER TABLE segment OWNER TO postgres;

--
-- TOC entry 3438 (class 0 OID 0)
-- Dependencies: 213
-- Name: TABLE segment; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE segment IS 'segments to specify process';


--
-- TOC entry 212 (class 1259 OID 16979)
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
-- TOC entry 3439 (class 0 OID 0)
-- Dependencies: 212
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


--
-- TOC entry 223 (class 1259 OID 17044)
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
-- TOC entry 3440 (class 0 OID 0)
-- Dependencies: 223
-- Name: TABLE specification; Type: COMMENT; Schema: process; Owner: postgres
--

COMMENT ON TABLE specification IS 'list of defined processes';


--
-- TOC entry 222 (class 1259 OID 17042)
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
-- TOC entry 3441 (class 0 OID 0)
-- Dependencies: 222
-- Name: specification_id_seq; Type: SEQUENCE OWNED BY; Schema: process; Owner: postgres
--

ALTER SEQUENCE specification_id_seq OWNED BY specification.id;


SET search_path = production, pg_catalog;

--
-- TOC entry 233 (class 1259 OID 17245)
-- Name: definition; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE definition (
    id bigint NOT NULL,
    descr character varying,
    material_produced character varying
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 3442 (class 0 OID 0)
-- Dependencies: 233
-- Name: TABLE definition; Type: COMMENT; Schema: production; Owner: postgres
--

COMMENT ON TABLE definition IS 'definition of specific production';


--
-- TOC entry 232 (class 1259 OID 17243)
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
-- TOC entry 3443 (class 0 OID 0)
-- Dependencies: 232
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: production; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 235 (class 1259 OID 17256)
-- Name: equipment; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE equipment (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE equipment OWNER TO postgres;

--
-- TOC entry 3444 (class 0 OID 0)
-- Dependencies: 235
-- Name: TABLE equipment; Type: COMMENT; Schema: production; Owner: postgres
--

COMMENT ON TABLE equipment IS 'production segment equipment specification';


--
-- TOC entry 234 (class 1259 OID 17254)
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
-- TOC entry 3445 (class 0 OID 0)
-- Dependencies: 234
-- Name: equipment_id_seq; Type: SEQUENCE OWNED BY; Schema: production; Owner: postgres
--

ALTER SEQUENCE equipment_id_seq OWNED BY equipment.id;


--
-- TOC entry 237 (class 1259 OID 17267)
-- Name: material; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE material (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE material OWNER TO postgres;

--
-- TOC entry 3446 (class 0 OID 0)
-- Dependencies: 237
-- Name: TABLE material; Type: COMMENT; Schema: production; Owner: postgres
--

COMMENT ON TABLE material IS 'production segment material specification';


--
-- TOC entry 236 (class 1259 OID 17265)
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
-- TOC entry 3447 (class 0 OID 0)
-- Dependencies: 236
-- Name: material_id_seq; Type: SEQUENCE OWNED BY; Schema: production; Owner: postgres
--

ALTER SEQUENCE material_id_seq OWNED BY material.id;


--
-- TOC entry 239 (class 1259 OID 17278)
-- Name: personnel; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE personnel (
    id bigint NOT NULL,
    descr character varying
);


ALTER TABLE personnel OWNER TO postgres;

--
-- TOC entry 3448 (class 0 OID 0)
-- Dependencies: 239
-- Name: TABLE personnel; Type: COMMENT; Schema: production; Owner: postgres
--

COMMENT ON TABLE personnel IS 'production segment personnel specification';


--
-- TOC entry 238 (class 1259 OID 17276)
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
-- TOC entry 3449 (class 0 OID 0)
-- Dependencies: 238
-- Name: personnel_id_seq; Type: SEQUENCE OWNED BY; Schema: production; Owner: postgres
--

ALTER SEQUENCE personnel_id_seq OWNED BY personnel.id;


--
-- TOC entry 241 (class 1259 OID 17289)
-- Name: segment; Type: TABLE; Schema: production; Owner: postgres
--

CREATE TABLE segment (
    id bigint NOT NULL,
    descr character varying,
    segment_kind common.process_segment_kind
);


ALTER TABLE segment OWNER TO postgres;

--
-- TOC entry 3450 (class 0 OID 0)
-- Dependencies: 241
-- Name: TABLE segment; Type: COMMENT; Schema: production; Owner: postgres
--

COMMENT ON TABLE segment IS 'segments to specify production';


--
-- TOC entry 240 (class 1259 OID 17287)
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
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 240
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: production; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


--
-- TOC entry 243 (class 1259 OID 17300)
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
-- TOC entry 3452 (class 0 OID 0)
-- Dependencies: 243
-- Name: TABLE specification; Type: COMMENT; Schema: production; Owner: postgres
--

COMMENT ON TABLE specification IS 'list of defined productiones';


--
-- TOC entry 242 (class 1259 OID 17298)
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
-- TOC entry 3453 (class 0 OID 0)
-- Dependencies: 242
-- Name: specification_id_seq; Type: SEQUENCE OWNED BY; Schema: production; Owner: postgres
--

ALTER SEQUENCE specification_id_seq OWNED BY specification.id;


SET search_path = bom, pg_catalog;

--
-- TOC entry 3143 (class 2604 OID 16915)
-- Name: id; Type: DEFAULT; Schema: bom; Owner: postgres
--

ALTER TABLE ONLY external ALTER COLUMN id SET DEFAULT nextval('external_id_seq'::regclass);


--
-- TOC entry 3144 (class 2604 OID 16926)
-- Name: id; Type: DEFAULT; Schema: bom; Owner: postgres
--

ALTER TABLE ONLY manufacturing ALTER COLUMN id SET DEFAULT nextval('manufacturing_id_seq'::regclass);


--
-- TOC entry 3145 (class 2604 OID 16937)
-- Name: id; Type: DEFAULT; Schema: bom; Owner: postgres
--

ALTER TABLE ONLY operation ALTER COLUMN id SET DEFAULT nextval('operation_id_seq'::regclass);


SET search_path = inspection, pg_catalog;

--
-- TOC entry 3147 (class 2604 OID 16973)
-- Name: id; Type: DEFAULT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


SET search_path = movement, pg_catalog;

--
-- TOC entry 3146 (class 2604 OID 16962)
-- Name: id; Type: DEFAULT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


SET search_path = operation, pg_catalog;

--
-- TOC entry 3141 (class 2604 OID 16892)
-- Name: id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY equipment ALTER COLUMN id SET DEFAULT nextval('equipment_id_seq'::regclass);


--
-- TOC entry 3140 (class 2604 OID 16881)
-- Name: id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY material ALTER COLUMN id SET DEFAULT nextval('material_id_seq'::regclass);


--
-- TOC entry 3164 (class 2604 OID 17324)
-- Name: id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY parameter ALTER COLUMN id SET DEFAULT nextval('parameter_id_seq'::regclass);


--
-- TOC entry 3142 (class 2604 OID 16903)
-- Name: id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY personnel ALTER COLUMN id SET DEFAULT nextval('personnel_id_seq'::regclass);


--
-- TOC entry 3139 (class 2604 OID 16870)
-- Name: id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


SET search_path = process, pg_catalog;

--
-- TOC entry 3152 (class 2604 OID 17036)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3157 (class 2604 OID 17181)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY dependency ALTER COLUMN id SET DEFAULT nextval('dependency_id_seq'::regclass);


--
-- TOC entry 3154 (class 2604 OID 17058)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY equipment ALTER COLUMN id SET DEFAULT nextval('equipment_id_seq'::regclass);


--
-- TOC entry 3150 (class 2604 OID 17006)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY inspection ALTER COLUMN id SET DEFAULT nextval('inspection_id_seq'::regclass);


--
-- TOC entry 3155 (class 2604 OID 17069)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY material ALTER COLUMN id SET DEFAULT nextval('material_id_seq'::regclass);


--
-- TOC entry 3149 (class 2604 OID 16995)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY movement ALTER COLUMN id SET DEFAULT nextval('movement_id_seq'::regclass);


--
-- TOC entry 3156 (class 2604 OID 17080)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY personnel ALTER COLUMN id SET DEFAULT nextval('personnel_id_seq'::regclass);


--
-- TOC entry 3151 (class 2604 OID 17017)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY production ALTER COLUMN id SET DEFAULT nextval('production_id_seq'::regclass);


--
-- TOC entry 3148 (class 2604 OID 16984)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


--
-- TOC entry 3153 (class 2604 OID 17047)
-- Name: id; Type: DEFAULT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY specification ALTER COLUMN id SET DEFAULT nextval('specification_id_seq'::regclass);


SET search_path = production, pg_catalog;

--
-- TOC entry 3158 (class 2604 OID 17248)
-- Name: id; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3159 (class 2604 OID 17259)
-- Name: id; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY equipment ALTER COLUMN id SET DEFAULT nextval('equipment_id_seq'::regclass);


--
-- TOC entry 3160 (class 2604 OID 17270)
-- Name: id; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY material ALTER COLUMN id SET DEFAULT nextval('material_id_seq'::regclass);


--
-- TOC entry 3161 (class 2604 OID 17281)
-- Name: id; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY personnel ALTER COLUMN id SET DEFAULT nextval('personnel_id_seq'::regclass);


--
-- TOC entry 3162 (class 2604 OID 17292)
-- Name: id; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


--
-- TOC entry 3163 (class 2604 OID 17303)
-- Name: id; Type: DEFAULT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY specification ALTER COLUMN id SET DEFAULT nextval('specification_id_seq'::regclass);


SET search_path = bom, pg_catalog;

--
-- TOC entry 3348 (class 0 OID 16912)
-- Dependencies: 203
-- Data for Name: external; Type: TABLE DATA; Schema: bom; Owner: postgres
--



--
-- TOC entry 3454 (class 0 OID 0)
-- Dependencies: 202
-- Name: external_id_seq; Type: SEQUENCE SET; Schema: bom; Owner: postgres
--

SELECT pg_catalog.setval('external_id_seq', 1, false);


--
-- TOC entry 3350 (class 0 OID 16923)
-- Dependencies: 205
-- Data for Name: manufacturing; Type: TABLE DATA; Schema: bom; Owner: postgres
--



--
-- TOC entry 3455 (class 0 OID 0)
-- Dependencies: 204
-- Name: manufacturing_id_seq; Type: SEQUENCE SET; Schema: bom; Owner: postgres
--

SELECT pg_catalog.setval('manufacturing_id_seq', 1, false);


--
-- TOC entry 3352 (class 0 OID 16934)
-- Dependencies: 207
-- Data for Name: operation; Type: TABLE DATA; Schema: bom; Owner: postgres
--



--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 206
-- Name: operation_id_seq; Type: SEQUENCE SET; Schema: bom; Owner: postgres
--

SELECT pg_catalog.setval('operation_id_seq', 1, false);


SET search_path = inspection, pg_catalog;

--
-- TOC entry 3356 (class 0 OID 16970)
-- Dependencies: 211
-- Data for Name: segment; Type: TABLE DATA; Schema: inspection; Owner: postgres
--



--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 210
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: inspection; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 1, false);


SET search_path = movement, pg_catalog;

--
-- TOC entry 3354 (class 0 OID 16959)
-- Dependencies: 209
-- Data for Name: segment; Type: TABLE DATA; Schema: movement; Owner: postgres
--



--
-- TOC entry 3458 (class 0 OID 0)
-- Dependencies: 208
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: movement; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 1, false);


SET search_path = operation, pg_catalog;

--
-- TOC entry 3344 (class 0 OID 16889)
-- Dependencies: 199
-- Data for Name: equipment; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3459 (class 0 OID 0)
-- Dependencies: 198
-- Name: equipment_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('equipment_id_seq', 1, false);


--
-- TOC entry 3342 (class 0 OID 16878)
-- Dependencies: 197
-- Data for Name: material; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3460 (class 0 OID 0)
-- Dependencies: 196
-- Name: material_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('material_id_seq', 1, false);


--
-- TOC entry 3390 (class 0 OID 17321)
-- Dependencies: 245
-- Data for Name: parameter; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3461 (class 0 OID 0)
-- Dependencies: 244
-- Name: parameter_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('parameter_id_seq', 1, false);


--
-- TOC entry 3346 (class 0 OID 16900)
-- Dependencies: 201
-- Data for Name: personnel; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3462 (class 0 OID 0)
-- Dependencies: 200
-- Name: personnel_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('personnel_id_seq', 1, false);


--
-- TOC entry 3340 (class 0 OID 16867)
-- Dependencies: 195
-- Data for Name: segment; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3463 (class 0 OID 0)
-- Dependencies: 194
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 1, false);


SET search_path = process, pg_catalog;

--
-- TOC entry 3366 (class 0 OID 17033)
-- Dependencies: 221
-- Data for Name: definition; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO definition VALUES (1, 'valve-31-50');
INSERT INTO definition VALUES (2, 'vlave-41-50');


--
-- TOC entry 3464 (class 0 OID 0)
-- Dependencies: 220
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 2, true);


--
-- TOC entry 3376 (class 0 OID 17178)
-- Dependencies: 231
-- Data for Name: dependency; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO dependency VALUES (1, 'packing after assebling', 1, 'AfterEnd', 2);
INSERT INTO dependency VALUES (2, 'assembling after tooling', 2, 'AfterEnd', 5);
INSERT INTO dependency VALUES (3, 'tooling after forging', 5, 'AfterEnd', 6);
INSERT INTO dependency VALUES (4, 'packing after assebling', 3, 'AfterEnd', 4);
INSERT INTO dependency VALUES (5, 'assembling after tooling', 4, 'AfterEnd', 7);
INSERT INTO dependency VALUES (6, 'tooling after forging', 7, 'AfterEnd', 8);


--
-- TOC entry 3465 (class 0 OID 0)
-- Dependencies: 230
-- Name: dependency_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('dependency_id_seq', 6, true);


--
-- TOC entry 3370 (class 0 OID 17055)
-- Dependencies: 225
-- Data for Name: equipment; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3466 (class 0 OID 0)
-- Dependencies: 224
-- Name: equipment_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('equipment_id_seq', 1, false);


--
-- TOC entry 3362 (class 0 OID 17003)
-- Dependencies: 217
-- Data for Name: inspection; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3467 (class 0 OID 0)
-- Dependencies: 216
-- Name: inspection_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('inspection_id_seq', 1, false);


--
-- TOC entry 3372 (class 0 OID 17066)
-- Dependencies: 227
-- Data for Name: material; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3468 (class 0 OID 0)
-- Dependencies: 226
-- Name: material_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('material_id_seq', 1, false);


--
-- TOC entry 3360 (class 0 OID 16992)
-- Dependencies: 215
-- Data for Name: movement; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3469 (class 0 OID 0)
-- Dependencies: 214
-- Name: movement_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('movement_id_seq', 1, false);


--
-- TOC entry 3374 (class 0 OID 17077)
-- Dependencies: 229
-- Data for Name: personnel; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3470 (class 0 OID 0)
-- Dependencies: 228
-- Name: personnel_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('personnel_id_seq', 1, false);


--
-- TOC entry 3364 (class 0 OID 17014)
-- Dependencies: 219
-- Data for Name: production; Type: TABLE DATA; Schema: process; Owner: postgres
--



--
-- TOC entry 3471 (class 0 OID 0)
-- Dependencies: 218
-- Name: production_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('production_id_seq', 1, false);


--
-- TOC entry 3358 (class 0 OID 16981)
-- Dependencies: 213
-- Data for Name: segment; Type: TABLE DATA; Schema: process; Owner: postgres
--

INSERT INTO segment VALUES (2, 'packing valve-41-50', 'PRODUCTION');
INSERT INTO segment VALUES (1, 'packing valve-31-50', 'PRODUCTION');
INSERT INTO segment VALUES (3, 'assemling valve-31-50', 'PRODUCTION');
INSERT INTO segment VALUES (4, 'assembling valve-41-50', 'PRODUCTION');
INSERT INTO segment VALUES (5, 'tooling flange-50', 'PRODUCTION');
INSERT INTO segment VALUES (6, 'forging flange-50', 'PRODUCTION');


--
-- TOC entry 3472 (class 0 OID 0)
-- Dependencies: 212
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 6, true);


--
-- TOC entry 3368 (class 0 OID 17044)
-- Dependencies: 223
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
-- TOC entry 3473 (class 0 OID 0)
-- Dependencies: 222
-- Name: specification_id_seq; Type: SEQUENCE SET; Schema: process; Owner: postgres
--

SELECT pg_catalog.setval('specification_id_seq', 8, true);


SET search_path = production, pg_catalog;

--
-- TOC entry 3378 (class 0 OID 17245)
-- Dependencies: 233
-- Data for Name: definition; Type: TABLE DATA; Schema: production; Owner: postgres
--



--
-- TOC entry 3474 (class 0 OID 0)
-- Dependencies: 232
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: production; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 1, false);


--
-- TOC entry 3380 (class 0 OID 17256)
-- Dependencies: 235
-- Data for Name: equipment; Type: TABLE DATA; Schema: production; Owner: postgres
--



--
-- TOC entry 3475 (class 0 OID 0)
-- Dependencies: 234
-- Name: equipment_id_seq; Type: SEQUENCE SET; Schema: production; Owner: postgres
--

SELECT pg_catalog.setval('equipment_id_seq', 1, false);


--
-- TOC entry 3382 (class 0 OID 17267)
-- Dependencies: 237
-- Data for Name: material; Type: TABLE DATA; Schema: production; Owner: postgres
--



--
-- TOC entry 3476 (class 0 OID 0)
-- Dependencies: 236
-- Name: material_id_seq; Type: SEQUENCE SET; Schema: production; Owner: postgres
--

SELECT pg_catalog.setval('material_id_seq', 1, false);


--
-- TOC entry 3384 (class 0 OID 17278)
-- Dependencies: 239
-- Data for Name: personnel; Type: TABLE DATA; Schema: production; Owner: postgres
--



--
-- TOC entry 3477 (class 0 OID 0)
-- Dependencies: 238
-- Name: personnel_id_seq; Type: SEQUENCE SET; Schema: production; Owner: postgres
--

SELECT pg_catalog.setval('personnel_id_seq', 1, false);


--
-- TOC entry 3386 (class 0 OID 17289)
-- Dependencies: 241
-- Data for Name: segment; Type: TABLE DATA; Schema: production; Owner: postgres
--



--
-- TOC entry 3478 (class 0 OID 0)
-- Dependencies: 240
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: production; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 1, false);


--
-- TOC entry 3388 (class 0 OID 17300)
-- Dependencies: 243
-- Data for Name: specification; Type: TABLE DATA; Schema: production; Owner: postgres
--



--
-- TOC entry 3479 (class 0 OID 0)
-- Dependencies: 242
-- Name: specification_id_seq; Type: SEQUENCE SET; Schema: production; Owner: postgres
--

SELECT pg_catalog.setval('specification_id_seq', 1, false);


SET search_path = bom, pg_catalog;

--
-- TOC entry 3174 (class 2606 OID 16920)
-- Name: external_pkey; Type: CONSTRAINT; Schema: bom; Owner: postgres
--

ALTER TABLE ONLY external
    ADD CONSTRAINT external_pkey PRIMARY KEY (id);


--
-- TOC entry 3176 (class 2606 OID 16931)
-- Name: manufacturing_pkey; Type: CONSTRAINT; Schema: bom; Owner: postgres
--

ALTER TABLE ONLY manufacturing
    ADD CONSTRAINT manufacturing_pkey PRIMARY KEY (id);


--
-- TOC entry 3178 (class 2606 OID 16942)
-- Name: operation_pkey; Type: CONSTRAINT; Schema: bom; Owner: postgres
--

ALTER TABLE ONLY operation
    ADD CONSTRAINT operation_pkey PRIMARY KEY (id);


SET search_path = inspection, pg_catalog;

--
-- TOC entry 3182 (class 2606 OID 16978)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: inspection; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


SET search_path = movement, pg_catalog;

--
-- TOC entry 3180 (class 2606 OID 16967)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: movement; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


SET search_path = operation, pg_catalog;

--
-- TOC entry 3170 (class 2606 OID 16897)
-- Name: equipment_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (id);


--
-- TOC entry 3168 (class 2606 OID 16886)
-- Name: material_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY material
    ADD CONSTRAINT material_pkey PRIMARY KEY (id);


--
-- TOC entry 3218 (class 2606 OID 17329)
-- Name: parameter_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY parameter
    ADD CONSTRAINT parameter_pkey PRIMARY KEY (id);


--
-- TOC entry 3172 (class 2606 OID 16908)
-- Name: personnel_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (id);


--
-- TOC entry 3166 (class 2606 OID 16875)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


SET search_path = process, pg_catalog;

--
-- TOC entry 3192 (class 2606 OID 17041)
-- Name: definition_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3202 (class 2606 OID 17186)
-- Name: dependency_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_pkey PRIMARY KEY (id);


--
-- TOC entry 3204 (class 2606 OID 17198)
-- Name: dependency_specification_id_a_sbecification_id_b_key; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_specification_id_a_sbecification_id_b_key UNIQUE (specification_id_a, sbecification_id_b);


--
-- TOC entry 3196 (class 2606 OID 17063)
-- Name: equipment_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (id);


--
-- TOC entry 3188 (class 2606 OID 17011)
-- Name: inspection_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY inspection
    ADD CONSTRAINT inspection_pkey PRIMARY KEY (id);


--
-- TOC entry 3198 (class 2606 OID 17074)
-- Name: material_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY material
    ADD CONSTRAINT material_pkey PRIMARY KEY (id);


--
-- TOC entry 3186 (class 2606 OID 17000)
-- Name: movement_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY movement
    ADD CONSTRAINT movement_pkey PRIMARY KEY (id);


--
-- TOC entry 3200 (class 2606 OID 17085)
-- Name: personnel_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (id);


--
-- TOC entry 3190 (class 2606 OID 17022)
-- Name: production_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY production
    ADD CONSTRAINT production_pkey PRIMARY KEY (id);


--
-- TOC entry 3184 (class 2606 OID 16989)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 3194 (class 2606 OID 17052)
-- Name: specification_pkey; Type: CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_pkey PRIMARY KEY (id);


SET search_path = production, pg_catalog;

--
-- TOC entry 3206 (class 2606 OID 17253)
-- Name: definition_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3208 (class 2606 OID 17264)
-- Name: equipment_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (id);


--
-- TOC entry 3210 (class 2606 OID 17275)
-- Name: material_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY material
    ADD CONSTRAINT material_pkey PRIMARY KEY (id);


--
-- TOC entry 3212 (class 2606 OID 17286)
-- Name: personnel_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (id);


--
-- TOC entry 3214 (class 2606 OID 17297)
-- Name: segment_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 3216 (class 2606 OID 17308)
-- Name: specification_pkey; Type: CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_pkey PRIMARY KEY (id);


SET search_path = process, pg_catalog;

--
-- TOC entry 3222 (class 2606 OID 17192)
-- Name: dependency_sbecification_id_b_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_sbecification_id_b_fkey FOREIGN KEY (sbecification_id_b) REFERENCES specification(id);


--
-- TOC entry 3221 (class 2606 OID 17187)
-- Name: dependency_specification_id_a_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_specification_id_a_fkey FOREIGN KEY (specification_id_a) REFERENCES specification(id);


--
-- TOC entry 3220 (class 2606 OID 17092)
-- Name: specification_definition_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id);


--
-- TOC entry 3219 (class 2606 OID 17087)
-- Name: specification_segment_id_fkey; Type: FK CONSTRAINT; Schema: process; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id);


SET search_path = production, pg_catalog;

--
-- TOC entry 3223 (class 2606 OID 17309)
-- Name: specification_definition_id_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id);


--
-- TOC entry 3224 (class 2606 OID 17314)
-- Name: specification_segment_id_fkey; Type: FK CONSTRAINT; Schema: production; Owner: postgres
--

ALTER TABLE ONLY specification
    ADD CONSTRAINT specification_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id);


--
-- TOC entry 3404 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-06-06 00:16:35 EEST

--
-- PostgreSQL database dump complete
--

