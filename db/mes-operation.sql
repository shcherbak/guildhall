--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.6
-- Dumped by pg_dump version 9.6.6

-- Started on 2017-11-26 04:44:10 EET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 17 (class 2615 OID 43920)
-- Name: operation; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA operation;


ALTER SCHEMA operation OWNER TO postgres;

--
-- TOC entry 3581 (class 0 OID 0)
-- Dependencies: 17
-- Name: SCHEMA operation; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA operation IS 'operation segments';


SET search_path = operation, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 236 (class 1259 OID 43921)
-- Name: material; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE material (
    segment_id bigint NOT NULL,
    serial_num integer DEFAULT 1 NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    consumed_qty common.quantity,
    consumed_uom character varying DEFAULT 'pcs'::character varying NOT NULL,
    rationing_qty common.quantity,
    rationing_uom character varying DEFAULT 'pcs'::character varying NOT NULL
);


ALTER TABLE material OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 43932)
-- Name: consumable; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE consumable (
)
INHERITS (material);


ALTER TABLE consumable OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 43943)
-- Name: definition; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE definition (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying NOT NULL,
    version_num integer DEFAULT 1 NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    prev_fsmt common.document_fsmt,
    prev_fsmt_date time with time zone,
    curr_fsmt common.document_fsmt DEFAULT 'PROPOSED'::common.document_fsmt NOT NULL,
    curr_fsmt_date timestamp with time zone DEFAULT now() NOT NULL,
    information_id bigint
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 43952)
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
-- TOC entry 3582 (class 0 OID 0)
-- Dependencies: 239
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 249 (class 1259 OID 44234)
-- Name: dependency; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE dependency (
    ancestor bigint NOT NULL,
    descendant bigint NOT NULL,
    depth integer DEFAULT 1 NOT NULL
);


ALTER TABLE dependency OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 43954)
-- Name: equipment; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE equipment (
    segment_id bigint NOT NULL,
    equipment_code character varying NOT NULL,
    version_num integer,
    quantity common.quantity,
    uom_code character varying
);


ALTER TABLE equipment OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 43961)
-- Name: information; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    published_date date DEFAULT now() NOT NULL
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 43968)
-- Name: information_id_seq; Type: SEQUENCE; Schema: operation; Owner: postgres
--

CREATE SEQUENCE information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE information_id_seq OWNER TO postgres;

--
-- TOC entry 3583 (class 0 OID 0)
-- Dependencies: 242
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 243 (class 1259 OID 43970)
-- Name: personnel; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE personnel (
    segment_id bigint NOT NULL,
    serial_num integer DEFAULT 1 NOT NULL,
    personnel_code character varying NOT NULL,
    version_num integer,
    simultaneously_qty integer DEFAULT 1 NOT NULL,
    simultaneously_uom character varying,
    batch_qty common.quantity,
    batch_uom character varying,
    time_per_piece_ratio numeric(10,4) DEFAULT 1 NOT NULL,
    standard_setup_time interval DEFAULT '00:01:00'::interval NOT NULL,
    standard_piece_time interval DEFAULT '00:01:00'::interval NOT NULL,
    workers_qty integer DEFAULT 1 NOT NULL,
    rationing_qty common.quantity,
    rationing_uom character varying DEFAULT 'pcs'::character varying NOT NULL
);


ALTER TABLE personnel OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 43985)
-- Name: primal; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE primal (
)
INHERITS (material);


ALTER TABLE primal OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 43996)
-- Name: producible; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE producible (
    definition_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    quantity common.quantity,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL
);


ALTER TABLE producible OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 44005)
-- Name: segment; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE segment (
    id bigint NOT NULL,
    definition_id bigint NOT NULL,
    serial_num integer DEFAULT 1 NOT NULL,
    operation_code character varying NOT NULL
);


ALTER TABLE segment OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 44012)
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
-- TOC entry 3584 (class 0 OID 0)
-- Dependencies: 247
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


--
-- TOC entry 248 (class 1259 OID 44014)
-- Name: tooling; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE tooling (
    segment_id bigint NOT NULL,
    tooling_code character varying NOT NULL,
    quantity common.quantity,
    uom_code character varying,
    version_num integer
);


ALTER TABLE tooling OWNER TO postgres;

--
-- TOC entry 3378 (class 2604 OID 44022)
-- Name: consumable consumed_uom; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN consumed_uom SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3379 (class 2604 OID 44024)
-- Name: consumable rationing_uom; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN rationing_uom SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3380 (class 2604 OID 44025)
-- Name: consumable serial_num; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN serial_num SET DEFAULT 1;


--
-- TOC entry 3384 (class 2604 OID 44026)
-- Name: definition id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3387 (class 2604 OID 44027)
-- Name: information id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3397 (class 2604 OID 44029)
-- Name: primal consumed_uom; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN consumed_uom SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3398 (class 2604 OID 44031)
-- Name: primal rationing_uom; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN rationing_uom SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3399 (class 2604 OID 44032)
-- Name: primal serial_num; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN serial_num SET DEFAULT 1;


--
-- TOC entry 3402 (class 2604 OID 44033)
-- Name: segment id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


--
-- TOC entry 3564 (class 0 OID 43932)
-- Dependencies: 237
-- Data for Name: consumable; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3565 (class 0 OID 43943)
-- Dependencies: 238
-- Data for Name: definition; Type: TABLE DATA; Schema: operation; Owner: postgres
--

INSERT INTO definition VALUES (1, '81ce5c76-b827-11e7-9511-d4bed939923a', 'operation #1', '2017-10-23', 1, 1, NULL, NULL, 'PROPOSED', '2017-11-26 03:49:57.468503+02');
INSERT INTO definition VALUES (2, '868fe84c-b827-11e7-9512-d4bed939923a', 'operation #2', '2017-10-23', 1, 2, NULL, NULL, 'PROPOSED', '2017-11-26 03:49:57.468503+02');
INSERT INTO definition VALUES (3, '8a177408-b827-11e7-9513-d4bed939923a', 'operation #3', '2017-10-23', 1, 3, NULL, NULL, 'PROPOSED', '2017-11-26 03:49:57.468503+02');
INSERT INTO definition VALUES (4, '8dd62c1a-b827-11e7-9514-d4bed939923a', 'operation #4', '2017-10-23', 1, 4, NULL, NULL, 'PROPOSED', '2017-11-26 03:49:57.468503+02');


--
-- TOC entry 3585 (class 0 OID 0)
-- Dependencies: 239
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 4, true);


--
-- TOC entry 3576 (class 0 OID 44234)
-- Dependencies: 249
-- Data for Name: dependency; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3567 (class 0 OID 43954)
-- Dependencies: 240
-- Data for Name: equipment; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3568 (class 0 OID 43961)
-- Dependencies: 241
-- Data for Name: information; Type: TABLE DATA; Schema: operation; Owner: postgres
--

INSERT INTO information VALUES (1, 'ef5e95b6-d24a-11e7-b8ee-d4bed939923a', 'information #1', '2017-11-26');
INSERT INTO information VALUES (2, 'ef5e982c-d24a-11e7-b8ef-d4bed939923a', 'information #2', '2017-11-26');
INSERT INTO information VALUES (3, 'ef5e985e-d24a-11e7-b8f0-d4bed939923a', 'information #3', '2017-11-26');
INSERT INTO information VALUES (4, 'ef5e987c-d24a-11e7-b8f1-d4bed939923a', 'information #4', '2017-11-26');


--
-- TOC entry 3586 (class 0 OID 0)
-- Dependencies: 242
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 4, true);


--
-- TOC entry 3563 (class 0 OID 43921)
-- Dependencies: 236
-- Data for Name: material; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3570 (class 0 OID 43970)
-- Dependencies: 243
-- Data for Name: personnel; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3571 (class 0 OID 43985)
-- Dependencies: 244
-- Data for Name: primal; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3572 (class 0 OID 43996)
-- Dependencies: 245
-- Data for Name: producible; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3573 (class 0 OID 44005)
-- Dependencies: 246
-- Data for Name: segment; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3587 (class 0 OID 0)
-- Dependencies: 247
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 1, false);


--
-- TOC entry 3575 (class 0 OID 44014)
-- Dependencies: 248
-- Data for Name: tooling; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3407 (class 2606 OID 44035)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3409 (class 2606 OID 44037)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3411 (class 2606 OID 44039)
-- Name: definition definition_version_num_information_id_key; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_version_num_information_id_key UNIQUE (version_num, information_id);


--
-- TOC entry 3429 (class 2606 OID 44239)
-- Name: dependency dependency_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_pkey PRIMARY KEY (ancestor, descendant);


--
-- TOC entry 3413 (class 2606 OID 44041)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, equipment_code);


--
-- TOC entry 3415 (class 2606 OID 44043)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3405 (class 2606 OID 44045)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY material
    ADD CONSTRAINT material_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3417 (class 2606 OID 44047)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, personnel_code);


--
-- TOC entry 3419 (class 2606 OID 44049)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3421 (class 2606 OID 44051)
-- Name: producible producible_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY producible
    ADD CONSTRAINT producible_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3423 (class 2606 OID 44053)
-- Name: segment segment_definition_id_operation_code_key; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_definition_id_operation_code_key UNIQUE (definition_id, operation_code);


--
-- TOC entry 3425 (class 2606 OID 44055)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 3427 (class 2606 OID 44057)
-- Name: tooling tooling_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY tooling
    ADD CONSTRAINT tooling_pkey PRIMARY KEY (segment_id, tooling_code);


--
-- TOC entry 3430 (class 2606 OID 44058)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3431 (class 2606 OID 44063)
-- Name: consumable consumable_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id);


--
-- TOC entry 3432 (class 2606 OID 44250)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3441 (class 2606 OID 44240)
-- Name: dependency dependency_ancestor_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_ancestor_fkey FOREIGN KEY (ancestor) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3442 (class 2606 OID 44245)
-- Name: dependency dependency_descendant_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY dependency
    ADD CONSTRAINT dependency_descendant_fkey FOREIGN KEY (descendant) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3433 (class 2606 OID 44073)
-- Name: equipment equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3434 (class 2606 OID 44078)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3435 (class 2606 OID 44083)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3436 (class 2606 OID 44109)
-- Name: primal primal_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3437 (class 2606 OID 44255)
-- Name: producible producible_definition_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY producible
    ADD CONSTRAINT producible_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3438 (class 2606 OID 44260)
-- Name: producible producible_part_code_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY producible
    ADD CONSTRAINT producible_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3439 (class 2606 OID 44098)
-- Name: segment segment_definition_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3440 (class 2606 OID 44103)
-- Name: tooling tooling_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY tooling
    ADD CONSTRAINT tooling_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2017-11-26 04:44:11 EET

--
-- PostgreSQL database dump complete
--

