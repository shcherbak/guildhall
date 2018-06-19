--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.8
-- Dumped by pg_dump version 9.6.8

-- Started on 2018-06-07 00:28:23 EEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 24 (class 2615 OID 86927)
-- Name: stride; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA stride;


ALTER SCHEMA stride OWNER TO postgres;

--
-- TOC entry 3837 (class 0 OID 0)
-- Dependencies: 24
-- Name: SCHEMA stride; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA stride IS 'operation segments';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 320 (class 1259 OID 94204)
-- Name: consumable; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.consumable (
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    process_num integer NOT NULL,
    segment_num integer NOT NULL,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL,
    material_type common.material_kind,
    display_name character varying
);


ALTER TABLE stride.consumable OWNER TO postgres;

--
-- TOC entry 323 (class 1259 OID 94245)
-- Name: definition; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.definition (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    prev_fsmt common.document_fsmt,
    prev_fsmt_date time with time zone,
    curr_fsmt common.document_fsmt DEFAULT 'PROPOSED'::common.document_fsmt NOT NULL,
    curr_fsmt_date timestamp with time zone DEFAULT now() NOT NULL,
    part_code character varying,
    version_num integer,
    process_num integer,
    segment_num integer,
    pathway public.ltree
);


ALTER TABLE stride.definition OWNER TO postgres;

--
-- TOC entry 322 (class 1259 OID 94243)
-- Name: definition_id_seq; Type: SEQUENCE; Schema: stride; Owner: postgres
--

CREATE SEQUENCE stride.definition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE stride.definition_id_seq OWNER TO postgres;

--
-- TOC entry 3838 (class 0 OID 0)
-- Dependencies: 322
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: stride; Owner: postgres
--

ALTER SEQUENCE stride.definition_id_seq OWNED BY stride.definition.id;


--
-- TOC entry 325 (class 1259 OID 94319)
-- Name: location; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.location (
    definition_id bigint NOT NULL,
    location_code character varying NOT NULL
);


ALTER TABLE stride.location OWNER TO postgres;

--
-- TOC entry 324 (class 1259 OID 94266)
-- Name: material; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.material (
    definition_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer,
    process_num integer,
    segment_num integer,
    quantity common.quantity,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL,
    material_type common.material_kind,
    rationing_qty integer DEFAULT 1
);


ALTER TABLE stride.material OWNER TO postgres;

--
-- TOC entry 326 (class 1259 OID 94336)
-- Name: matrial_flow; Type: VIEW; Schema: stride; Owner: postgres
--

CREATE VIEW stride.matrial_flow AS
 SELECT definition.part_code AS out_code,
    definition.version_num AS out_version_num,
    definition.process_num AS out_process_num,
    definition.segment_num AS out_segment_num,
    material.part_code,
    material.version_num,
    material.process_num,
    material.segment_num,
    material.quantity,
    material.uom_code
   FROM stride.definition,
    stride.material
  WHERE (definition.id = material.definition_id);


ALTER TABLE stride.matrial_flow OWNER TO postgres;

--
-- TOC entry 321 (class 1259 OID 94214)
-- Name: producible; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.producible (
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    process_num integer NOT NULL,
    segment_num integer NOT NULL,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL,
    material_type common.material_kind,
    display_name character varying
);


ALTER TABLE stride.producible OWNER TO postgres;

--
-- TOC entry 327 (class 1259 OID 94340)
-- Name: stride_locaton; Type: VIEW; Schema: stride; Owner: postgres
--

CREATE VIEW stride.stride_locaton AS
 SELECT definition.part_code,
    definition.version_num,
    definition.process_num,
    definition.segment_num,
    location.location_code
   FROM stride.definition,
    stride.location
  WHERE (definition.id = location.definition_id);


ALTER TABLE stride.stride_locaton OWNER TO postgres;

--
-- TOC entry 3686 (class 2604 OID 94248)
-- Name: definition id; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.definition ALTER COLUMN id SET DEFAULT nextval('stride.definition_id_seq'::regclass);


--
-- TOC entry 3826 (class 0 OID 94204)
-- Dependencies: 320
-- Data for Name: consumable; Type: TABLE DATA; Schema: stride; Owner: postgres
--

INSERT INTO stride.consumable (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 1, 0, 'pcs', 'CONSUMABLE', 'bl-50::final::1');
INSERT INTO stride.consumable (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 1, 1, 'pcs', 'CONSUMABLE', 'bl-50::op-01::1');
INSERT INTO stride.consumable (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 1, 2, 'pcs', 'CONSUMABLE', 'bl-50::op-02::1');
INSERT INTO stride.consumable (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 1, 3, 'pcs', 'CONSUMABLE', 'bl-50::op-03::1');
INSERT INTO stride.consumable (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 2, 0, 'pcs', 'CONSUMABLE', 'bl-50::final::2');
INSERT INTO stride.consumable (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 2, 1, 'pcs', 'CONSUMABLE', 'bl-50::op-01::2');
INSERT INTO stride.consumable (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 2, 2, 'pcs', 'CONSUMABLE', 'bl-50::op-02::2');
INSERT INTO stride.consumable (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 2, 3, 'pcs', 'CONSUMABLE', 'bl-50::op-03::2');
INSERT INTO stride.consumable (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 3, 0, 'pcs', 'CONSUMABLE', 'bl-50::final::3');
INSERT INTO stride.consumable (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 3, 1, 'pcs', 'CONSUMABLE', 'bl-50::op-01::3');
INSERT INTO stride.consumable (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 3, 2, 'pcs', 'CONSUMABLE', 'bl-50::op-02::3');
INSERT INTO stride.consumable (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 3, 3, 'pcs', 'CONSUMABLE', 'bl-50::op-03::3');
INSERT INTO stride.consumable (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 3, 4, 'pcs', 'CONSUMABLE', 'bl-50::op-04::3');
INSERT INTO stride.consumable (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 4, 0, 'pcs', 'CONSUMABLE', 'bl-50::final::4');
INSERT INTO stride.consumable (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 4, 1, 'pcs', 'CONSUMABLE', 'bl-50::op-01::4');
INSERT INTO stride.consumable (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 4, 2, 'pcs', 'CONSUMABLE', 'bl-50::op-02::4');
INSERT INTO stride.consumable (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 4, 3, 'pcs', 'CONSUMABLE', 'bl-50::op-03::4');
INSERT INTO stride.consumable (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 4, 4, 'pcs', 'CONSUMABLE', 'bl-50::op-04::4');
INSERT INTO stride.consumable (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('pipe-st-50-03', 1, 0, 0, 'pcs', 'CONSUMABLE', 'pp-53::op-00::0');
INSERT INTO stride.consumable (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('pipe-st-50-04', 1, 0, 0, 'pcs', 'CONSUMABLE', 'pp-54::op-00::0');
INSERT INTO stride.consumable (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('plate-st-04-0', 1, 0, 0, 'pcs', 'CONSUMABLE', 'pl-04::op-00::0');
INSERT INTO stride.consumable (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('plate-st-05-0', 1, 0, 0, 'pcs', 'CONSUMABLE', 'pl-05::op-00::0');


--
-- TOC entry 3829 (class 0 OID 94245)
-- Dependencies: 323
-- Data for Name: definition; Type: TABLE DATA; Schema: stride; Owner: postgres
--

INSERT INTO stride.definition (id, gid, display_name, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, part_code, version_num, process_num, segment_num, pathway) VALUES (1, '83bf7980-6767-11e8-a1d4-d4bed939923a', 'bl-50::final::1', '2018-06-03', NULL, NULL, 'PROPOSED', '2018-06-03 22:51:32.326354+03', '60.01.050-001', 1, 1, 0, '1');
INSERT INTO stride.definition (id, gid, display_name, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, part_code, version_num, process_num, segment_num, pathway) VALUES (2, '83bf87ea-6767-11e8-a1d5-d4bed939923a', 'bl-50::op-01::1', '2018-06-03', NULL, NULL, 'PROPOSED', '2018-06-03 22:51:32.326354+03', '60.01.050-001', 1, 1, 1, '1.2');
INSERT INTO stride.definition (id, gid, display_name, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, part_code, version_num, process_num, segment_num, pathway) VALUES (3, '83bf8966-6767-11e8-a1d6-d4bed939923a', 'bl-50::op-02::1', '2018-06-03', NULL, NULL, 'PROPOSED', '2018-06-03 22:51:32.326354+03', '60.01.050-001', 1, 1, 2, '1.2.3');
INSERT INTO stride.definition (id, gid, display_name, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, part_code, version_num, process_num, segment_num, pathway) VALUES (4, '83bf8a4c-6767-11e8-a1d7-d4bed939923a', 'bl-50::op-03::1', '2018-06-03', NULL, NULL, 'PROPOSED', '2018-06-03 22:51:32.326354+03', '60.01.050-001', 1, 1, 3, '1.2.3.4');
INSERT INTO stride.definition (id, gid, display_name, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, part_code, version_num, process_num, segment_num, pathway) VALUES (5, '83bf8b1e-6767-11e8-a1d8-d4bed939923a', 'bl-50::final::2', '2018-06-03', NULL, NULL, 'PROPOSED', '2018-06-03 22:51:32.326354+03', '60.01.050-001', 1, 2, 0, '5');
INSERT INTO stride.definition (id, gid, display_name, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, part_code, version_num, process_num, segment_num, pathway) VALUES (6, '83bf8c7c-6767-11e8-a1d9-d4bed939923a', 'bl-50::op-01::2', '2018-06-03', NULL, NULL, 'PROPOSED', '2018-06-03 22:51:32.326354+03', '60.01.050-001', 1, 2, 1, '5.6');
INSERT INTO stride.definition (id, gid, display_name, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, part_code, version_num, process_num, segment_num, pathway) VALUES (7, '83bf8d62-6767-11e8-a1da-d4bed939923a', 'bl-50::op-02::2', '2018-06-03', NULL, NULL, 'PROPOSED', '2018-06-03 22:51:32.326354+03', '60.01.050-001', 1, 2, 2, '5.6.7');
INSERT INTO stride.definition (id, gid, display_name, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, part_code, version_num, process_num, segment_num, pathway) VALUES (8, '83bf8e20-6767-11e8-a1db-d4bed939923a', 'bl-50::op-03::2', '2018-06-03', NULL, NULL, 'PROPOSED', '2018-06-03 22:51:32.326354+03', '60.01.050-001', 1, 2, 3, '5.6.7.8');
INSERT INTO stride.definition (id, gid, display_name, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, part_code, version_num, process_num, segment_num, pathway) VALUES (9, '83bf8ee8-6767-11e8-a1dc-d4bed939923a', 'bl-50::final::3', '2018-06-03', NULL, NULL, 'PROPOSED', '2018-06-03 22:51:32.326354+03', '60.01.050-001', 1, 3, 0, '9');
INSERT INTO stride.definition (id, gid, display_name, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, part_code, version_num, process_num, segment_num, pathway) VALUES (10, '83bf8fa6-6767-11e8-a1dd-d4bed939923a', 'bl-50::op-01::3', '2018-06-03', NULL, NULL, 'PROPOSED', '2018-06-03 22:51:32.326354+03', '60.01.050-001', 1, 3, 1, '9.10');
INSERT INTO stride.definition (id, gid, display_name, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, part_code, version_num, process_num, segment_num, pathway) VALUES (11, '83bf906e-6767-11e8-a1de-d4bed939923a', 'bl-50::op-02::3', '2018-06-03', NULL, NULL, 'PROPOSED', '2018-06-03 22:51:32.326354+03', '60.01.050-001', 1, 3, 2, '9.10.11');
INSERT INTO stride.definition (id, gid, display_name, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, part_code, version_num, process_num, segment_num, pathway) VALUES (12, '83bf912c-6767-11e8-a1df-d4bed939923a', 'bl-50::op-03::3', '2018-06-03', NULL, NULL, 'PROPOSED', '2018-06-03 22:51:32.326354+03', '60.01.050-001', 1, 3, 3, '9.10.11.12');
INSERT INTO stride.definition (id, gid, display_name, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, part_code, version_num, process_num, segment_num, pathway) VALUES (13, '83bf91ea-6767-11e8-a1e0-d4bed939923a', 'bl-50::op-04::3', '2018-06-03', NULL, NULL, 'PROPOSED', '2018-06-03 22:51:32.326354+03', '60.01.050-001', 1, 3, 4, '9.10.11.12.13');
INSERT INTO stride.definition (id, gid, display_name, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, part_code, version_num, process_num, segment_num, pathway) VALUES (14, '83bf92b2-6767-11e8-a1e1-d4bed939923a', 'bl-50::final::4', '2018-06-03', NULL, NULL, 'PROPOSED', '2018-06-03 22:51:32.326354+03', '60.01.050-001', 1, 4, 0, '14');
INSERT INTO stride.definition (id, gid, display_name, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, part_code, version_num, process_num, segment_num, pathway) VALUES (15, '83bf9370-6767-11e8-a1e2-d4bed939923a', 'bl-50::op-01::4', '2018-06-03', NULL, NULL, 'PROPOSED', '2018-06-03 22:51:32.326354+03', '60.01.050-001', 1, 4, 1, '14.15');
INSERT INTO stride.definition (id, gid, display_name, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, part_code, version_num, process_num, segment_num, pathway) VALUES (16, '83bf942e-6767-11e8-a1e3-d4bed939923a', 'bl-50::op-02::4', '2018-06-03', NULL, NULL, 'PROPOSED', '2018-06-03 22:51:32.326354+03', '60.01.050-001', 1, 4, 2, '14.15.16');
INSERT INTO stride.definition (id, gid, display_name, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, part_code, version_num, process_num, segment_num, pathway) VALUES (17, '83bf953c-6767-11e8-a1e4-d4bed939923a', 'bl-50::op-03::4', '2018-06-03', NULL, NULL, 'PROPOSED', '2018-06-03 22:51:32.326354+03', '60.01.050-001', 1, 4, 3, '14.15.16.17');
INSERT INTO stride.definition (id, gid, display_name, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, part_code, version_num, process_num, segment_num, pathway) VALUES (18, '83bf960e-6767-11e8-a1e5-d4bed939923a', 'bl-50::op-04::4', '2018-06-03', NULL, NULL, 'PROPOSED', '2018-06-03 22:51:32.326354+03', '60.01.050-001', 1, 4, 4, '14.15.16.17.18');


--
-- TOC entry 3839 (class 0 OID 0)
-- Dependencies: 322
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: stride; Owner: postgres
--

SELECT pg_catalog.setval('stride.definition_id_seq', 18, true);


--
-- TOC entry 3831 (class 0 OID 94319)
-- Dependencies: 325
-- Data for Name: location; Type: TABLE DATA; Schema: stride; Owner: postgres
--

INSERT INTO stride.location (definition_id, location_code) VALUES (1, 'LOCATION-01');
INSERT INTO stride.location (definition_id, location_code) VALUES (1, 'LOCATION-02');
INSERT INTO stride.location (definition_id, location_code) VALUES (2, 'LOCATION-01');
INSERT INTO stride.location (definition_id, location_code) VALUES (3, 'LOCATION-01');
INSERT INTO stride.location (definition_id, location_code) VALUES (3, 'LOCATION-02');
INSERT INTO stride.location (definition_id, location_code) VALUES (4, 'LOCATION-01');
INSERT INTO stride.location (definition_id, location_code) VALUES (5, 'LOCATION-01');
INSERT INTO stride.location (definition_id, location_code) VALUES (5, 'LOCATION-02');
INSERT INTO stride.location (definition_id, location_code) VALUES (5, 'LOCATION-03');
INSERT INTO stride.location (definition_id, location_code) VALUES (6, 'LOCATION-01');
INSERT INTO stride.location (definition_id, location_code) VALUES (7, 'LOCATION-01');
INSERT INTO stride.location (definition_id, location_code) VALUES (8, 'LOCATION-01');
INSERT INTO stride.location (definition_id, location_code) VALUES (8, 'LOCATION-03');
INSERT INTO stride.location (definition_id, location_code) VALUES (9, 'LOCATION-01');
INSERT INTO stride.location (definition_id, location_code) VALUES (9, 'LOCATION-02');
INSERT INTO stride.location (definition_id, location_code) VALUES (10, 'LOCATION-01');
INSERT INTO stride.location (definition_id, location_code) VALUES (11, 'LOCATION-01');
INSERT INTO stride.location (definition_id, location_code) VALUES (12, 'LOCATION-01');
INSERT INTO stride.location (definition_id, location_code) VALUES (12, 'LOCATION-02');
INSERT INTO stride.location (definition_id, location_code) VALUES (13, 'LOCATION-01');
INSERT INTO stride.location (definition_id, location_code) VALUES (14, 'LOCATION-01');
INSERT INTO stride.location (definition_id, location_code) VALUES (14, 'LOCATION-02');
INSERT INTO stride.location (definition_id, location_code) VALUES (15, 'LOCATION-01');
INSERT INTO stride.location (definition_id, location_code) VALUES (16, 'LOCATION-01');
INSERT INTO stride.location (definition_id, location_code) VALUES (16, 'LOCATION-03');
INSERT INTO stride.location (definition_id, location_code) VALUES (17, 'LOCATION-01');
INSERT INTO stride.location (definition_id, location_code) VALUES (18, 'LOCATION-01');
INSERT INTO stride.location (definition_id, location_code) VALUES (18, 'LOCATION-03');


--
-- TOC entry 3830 (class 0 OID 94266)
-- Dependencies: 324
-- Data for Name: material; Type: TABLE DATA; Schema: stride; Owner: postgres
--

INSERT INTO stride.material (definition_id, part_code, version_num, process_num, segment_num, quantity, uom_code, material_type, rationing_qty) VALUES (1, '60.01.050-001', 1, 1, 1, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO stride.material (definition_id, part_code, version_num, process_num, segment_num, quantity, uom_code, material_type, rationing_qty) VALUES (2, '60.01.050-001', 1, 1, 2, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO stride.material (definition_id, part_code, version_num, process_num, segment_num, quantity, uom_code, material_type, rationing_qty) VALUES (3, '60.01.050-001', 1, 1, 3, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO stride.material (definition_id, part_code, version_num, process_num, segment_num, quantity, uom_code, material_type, rationing_qty) VALUES (4, 'pipe-st-50-03', 1, 0, 0, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO stride.material (definition_id, part_code, version_num, process_num, segment_num, quantity, uom_code, material_type, rationing_qty) VALUES (5, '60.01.050-001', 1, 2, 1, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO stride.material (definition_id, part_code, version_num, process_num, segment_num, quantity, uom_code, material_type, rationing_qty) VALUES (6, '60.01.050-001', 1, 2, 2, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO stride.material (definition_id, part_code, version_num, process_num, segment_num, quantity, uom_code, material_type, rationing_qty) VALUES (7, '60.01.050-001', 1, 2, 3, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO stride.material (definition_id, part_code, version_num, process_num, segment_num, quantity, uom_code, material_type, rationing_qty) VALUES (8, 'pipe-st-50-04', 1, 0, 0, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO stride.material (definition_id, part_code, version_num, process_num, segment_num, quantity, uom_code, material_type, rationing_qty) VALUES (9, '60.01.050-001', 1, 3, 1, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO stride.material (definition_id, part_code, version_num, process_num, segment_num, quantity, uom_code, material_type, rationing_qty) VALUES (10, '60.01.050-001', 1, 3, 2, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO stride.material (definition_id, part_code, version_num, process_num, segment_num, quantity, uom_code, material_type, rationing_qty) VALUES (11, '60.01.050-001', 1, 3, 3, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO stride.material (definition_id, part_code, version_num, process_num, segment_num, quantity, uom_code, material_type, rationing_qty) VALUES (12, '60.01.050-001', 1, 3, 4, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO stride.material (definition_id, part_code, version_num, process_num, segment_num, quantity, uom_code, material_type, rationing_qty) VALUES (13, 'plate-st-04-0', 1, 0, 0, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO stride.material (definition_id, part_code, version_num, process_num, segment_num, quantity, uom_code, material_type, rationing_qty) VALUES (14, '60.01.050-001', 1, 4, 1, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO stride.material (definition_id, part_code, version_num, process_num, segment_num, quantity, uom_code, material_type, rationing_qty) VALUES (15, '60.01.050-001', 1, 4, 2, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO stride.material (definition_id, part_code, version_num, process_num, segment_num, quantity, uom_code, material_type, rationing_qty) VALUES (16, '60.01.050-001', 1, 4, 3, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO stride.material (definition_id, part_code, version_num, process_num, segment_num, quantity, uom_code, material_type, rationing_qty) VALUES (17, '60.01.050-001', 1, 4, 4, 1.0000, 'pcs', 'CONSUMABLE', 1);
INSERT INTO stride.material (definition_id, part_code, version_num, process_num, segment_num, quantity, uom_code, material_type, rationing_qty) VALUES (18, 'plate-st-05-0', 1, 0, 0, 1.0000, 'pcs', 'CONSUMABLE', 1);


--
-- TOC entry 3827 (class 0 OID 94214)
-- Dependencies: 321
-- Data for Name: producible; Type: TABLE DATA; Schema: stride; Owner: postgres
--

INSERT INTO stride.producible (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 1, 0, 'pcs', 'PRODUCIBLE', 'bl-50::final::1');
INSERT INTO stride.producible (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 1, 1, 'pcs', 'PRODUCIBLE', 'bl-50::op-01::1');
INSERT INTO stride.producible (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 1, 2, 'pcs', 'PRODUCIBLE', 'bl-50::op-02::1');
INSERT INTO stride.producible (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 1, 3, 'pcs', 'PRODUCIBLE', 'bl-50::op-03::1');
INSERT INTO stride.producible (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 2, 0, 'pcs', 'PRODUCIBLE', 'bl-50::final::2');
INSERT INTO stride.producible (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 2, 1, 'pcs', 'PRODUCIBLE', 'bl-50::op-01::2');
INSERT INTO stride.producible (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 2, 2, 'pcs', 'PRODUCIBLE', 'bl-50::op-02::2');
INSERT INTO stride.producible (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 2, 3, 'pcs', 'PRODUCIBLE', 'bl-50::op-03::2');
INSERT INTO stride.producible (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 3, 0, 'pcs', 'PRODUCIBLE', 'bl-50::final::3');
INSERT INTO stride.producible (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 3, 1, 'pcs', 'PRODUCIBLE', 'bl-50::op-01::3');
INSERT INTO stride.producible (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 3, 2, 'pcs', 'PRODUCIBLE', 'bl-50::op-02::3');
INSERT INTO stride.producible (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 3, 3, 'pcs', 'PRODUCIBLE', 'bl-50::op-03::3');
INSERT INTO stride.producible (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 3, 4, 'pcs', 'PRODUCIBLE', 'bl-50::op-04::3');
INSERT INTO stride.producible (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 4, 0, 'pcs', 'PRODUCIBLE', 'bl-50::final::4');
INSERT INTO stride.producible (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 4, 1, 'pcs', 'PRODUCIBLE', 'bl-50::op-01::4');
INSERT INTO stride.producible (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 4, 2, 'pcs', 'PRODUCIBLE', 'bl-50::op-02::4');
INSERT INTO stride.producible (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 4, 3, 'pcs', 'PRODUCIBLE', 'bl-50::op-03::4');
INSERT INTO stride.producible (part_code, version_num, process_num, segment_num, uom_code, material_type, display_name) VALUES ('60.01.050-001', 1, 4, 4, 'pcs', 'PRODUCIBLE', 'bl-50::op-04::4');


--
-- TOC entry 3694 (class 2606 OID 94333)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (part_code, version_num, process_num, segment_num);


--
-- TOC entry 3698 (class 2606 OID 94258)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3702 (class 2606 OID 94326)
-- Name: location location_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.location
    ADD CONSTRAINT location_pkey PRIMARY KEY (definition_id, location_code);


--
-- TOC entry 3700 (class 2606 OID 94275)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3696 (class 2606 OID 94335)
-- Name: producible producible_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.producible
    ADD CONSTRAINT producible_pkey PRIMARY KEY (part_code, version_num, process_num, segment_num);


--
-- TOC entry 3703 (class 2606 OID 94327)
-- Name: location location_definition_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.location
    ADD CONSTRAINT location_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES stride.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2018-06-07 00:28:24 EEST

--
-- PostgreSQL database dump complete
--

