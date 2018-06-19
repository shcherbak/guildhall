--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.8
-- Dumped by pg_dump version 9.6.8

-- Started on 2018-06-19 23:47:57 EEST

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
-- TOC entry 13 (class 2615 OID 94454)
-- Name: stride; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA stride;


ALTER SCHEMA stride OWNER TO postgres;

--
-- TOC entry 3862 (class 0 OID 0)
-- Dependencies: 13
-- Name: SCHEMA stride; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA stride IS 'operation segments';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 323 (class 1259 OID 96035)
-- Name: material; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.material (
    information_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    quantity common.quantity,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL,
    material_type common.material_kind,
    rationing_qty integer DEFAULT 1
);


ALTER TABLE stride.material OWNER TO postgres;

--
-- TOC entry 324 (class 1259 OID 96045)
-- Name: consumable; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.consumable (
)
INHERITS (stride.material);


ALTER TABLE stride.consumable OWNER TO postgres;

--
-- TOC entry 320 (class 1259 OID 95986)
-- Name: definition; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.definition (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    part_code character varying,
    version_num integer,
    process_num integer,
    segment_num integer,
    pathway public.ltree
);


ALTER TABLE stride.definition OWNER TO postgres;

--
-- TOC entry 326 (class 1259 OID 96085)
-- Name: equipment; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.equipment (
    information_id bigint NOT NULL,
    equipment_code character varying NOT NULL,
    version_num integer,
    quantity common.quantity,
    uom_code character varying
);


ALTER TABLE stride.equipment OWNER TO postgres;

--
-- TOC entry 321 (class 1259 OID 96010)
-- Name: information; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.information (
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


ALTER TABLE stride.information OWNER TO postgres;

--
-- TOC entry 322 (class 1259 OID 96022)
-- Name: location; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.location (
    definition_id bigint NOT NULL,
    location_code character varying NOT NULL
);


ALTER TABLE stride.location OWNER TO postgres;

--
-- TOC entry 327 (class 1259 OID 96098)
-- Name: personnel; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.personnel (
    information_id bigint NOT NULL,
    personnel_code character varying NOT NULL,
    version_num integer,
    rationing_qty integer DEFAULT 1 NOT NULL,
    batch_qty integer,
    workers_qty integer DEFAULT 1 NOT NULL,
    setup_time interval DEFAULT '00:01:00'::interval NOT NULL,
    piece_time interval DEFAULT '00:01:00'::interval NOT NULL
);


ALTER TABLE stride.personnel OWNER TO postgres;

--
-- TOC entry 325 (class 1259 OID 96065)
-- Name: primal; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.primal (
)
INHERITS (stride.material);


ALTER TABLE stride.primal OWNER TO postgres;

--
-- TOC entry 328 (class 1259 OID 96115)
-- Name: tooling; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE stride.tooling (
    information_id bigint NOT NULL,
    tooling_code character varying NOT NULL,
    version_num integer,
    quantity common.quantity,
    uom_code character varying
);


ALTER TABLE stride.tooling OWNER TO postgres;

--
-- TOC entry 3694 (class 2604 OID 96048)
-- Name: consumable uom_code; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3695 (class 2604 OID 96049)
-- Name: consumable rationing_qty; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.consumable ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3696 (class 2604 OID 96068)
-- Name: primal uom_code; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3697 (class 2604 OID 96069)
-- Name: primal rationing_qty; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.primal ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3852 (class 0 OID 96045)
-- Dependencies: 324
-- Data for Name: consumable; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 3848 (class 0 OID 95986)
-- Dependencies: 320
-- Data for Name: definition; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 3854 (class 0 OID 96085)
-- Dependencies: 326
-- Data for Name: equipment; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 3849 (class 0 OID 96010)
-- Dependencies: 321
-- Data for Name: information; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 3850 (class 0 OID 96022)
-- Dependencies: 322
-- Data for Name: location; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 3851 (class 0 OID 96035)
-- Dependencies: 323
-- Data for Name: material; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 3855 (class 0 OID 96098)
-- Dependencies: 327
-- Data for Name: personnel; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 3853 (class 0 OID 96065)
-- Dependencies: 325
-- Data for Name: primal; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 3856 (class 0 OID 96115)
-- Dependencies: 328
-- Data for Name: tooling; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 3711 (class 2606 OID 96054)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 3703 (class 2606 OID 95997)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3715 (class 2606 OID 96092)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (information_id, equipment_code);


--
-- TOC entry 3705 (class 2606 OID 96021)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3707 (class 2606 OID 96029)
-- Name: location location_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.location
    ADD CONSTRAINT location_pkey PRIMARY KEY (definition_id, location_code);


--
-- TOC entry 3709 (class 2606 OID 96044)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 3717 (class 2606 OID 96109)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (information_id, personnel_code);


--
-- TOC entry 3713 (class 2606 OID 96074)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 3719 (class 2606 OID 96122)
-- Name: tooling tooling_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.tooling
    ADD CONSTRAINT tooling_pkey PRIMARY KEY (information_id, tooling_code);


--
-- TOC entry 3721 (class 2606 OID 96060)
-- Name: consumable consumable_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.consumable
    ADD CONSTRAINT consumable_information_id_fkey FOREIGN KEY (information_id) REFERENCES stride.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3722 (class 2606 OID 96055)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3725 (class 2606 OID 96093)
-- Name: equipment equipment_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.equipment
    ADD CONSTRAINT equipment_information_id_fkey FOREIGN KEY (information_id) REFERENCES stride.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3720 (class 2606 OID 96030)
-- Name: location location_definition_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.location
    ADD CONSTRAINT location_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES stride.definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3726 (class 2606 OID 96110)
-- Name: personnel personnel_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.personnel
    ADD CONSTRAINT personnel_information_id_fkey FOREIGN KEY (information_id) REFERENCES stride.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3723 (class 2606 OID 96080)
-- Name: primal primal_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.primal
    ADD CONSTRAINT primal_information_id_fkey FOREIGN KEY (information_id) REFERENCES stride.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3724 (class 2606 OID 96075)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3727 (class 2606 OID 96123)
-- Name: tooling tooling_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY stride.tooling
    ADD CONSTRAINT tooling_information_id_fkey FOREIGN KEY (information_id) REFERENCES stride.information(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2018-06-19 23:47:58 EEST

--
-- PostgreSQL database dump complete
--

