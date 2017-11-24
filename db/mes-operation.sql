--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.6
-- Dumped by pg_dump version 9.6.6

-- Started on 2017-11-24 11:56:59 EET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 11 (class 2615 OID 28996)
-- Name: operation; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA operation;


ALTER SCHEMA operation OWNER TO postgres;

--
-- TOC entry 3679 (class 0 OID 0)
-- Dependencies: 11
-- Name: SCHEMA operation; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA operation IS 'operation segments';


SET search_path = operation, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 278 (class 1259 OID 29605)
-- Name: material; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE material (
    segment_id bigint NOT NULL,
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
-- TOC entry 279 (class 1259 OID 29616)
-- Name: consumable; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE consumable (
)
INHERITS (material);


ALTER TABLE consumable OWNER TO postgres;

--
-- TOC entry 280 (class 1259 OID 29627)
-- Name: definition; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE definition (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    descr character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    version_num integer DEFAULT 1 NOT NULL,
    information_id bigint
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 281 (class 1259 OID 29636)
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
-- TOC entry 3680 (class 0 OID 0)
-- Dependencies: 281
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 282 (class 1259 OID 29638)
-- Name: equipment; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE equipment (
    segment_id bigint NOT NULL,
    equipment_code character varying NOT NULL,
    serial_num integer DEFAULT 1 NOT NULL
);


ALTER TABLE equipment OWNER TO postgres;

--
-- TOC entry 283 (class 1259 OID 29645)
-- Name: information; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    display_name character varying,
    published_date date DEFAULT now() NOT NULL
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 284 (class 1259 OID 29652)
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
-- TOC entry 3681 (class 0 OID 0)
-- Dependencies: 284
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 285 (class 1259 OID 29654)
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
-- TOC entry 286 (class 1259 OID 29669)
-- Name: primal; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE primal (
)
INHERITS (material);


ALTER TABLE primal OWNER TO postgres;

--
-- TOC entry 287 (class 1259 OID 29680)
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
-- TOC entry 288 (class 1259 OID 29689)
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
-- TOC entry 289 (class 1259 OID 29696)
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
-- TOC entry 3682 (class 0 OID 0)
-- Dependencies: 289
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: operation; Owner: postgres
--

ALTER SEQUENCE segment_id_seq OWNED BY segment.id;


--
-- TOC entry 290 (class 1259 OID 29698)
-- Name: tooling; Type: TABLE; Schema: operation; Owner: postgres
--

CREATE TABLE tooling (
    segment_id bigint NOT NULL,
    tool_code character varying NOT NULL,
    serial_num integer DEFAULT 1 NOT NULL
);


ALTER TABLE tooling OWNER TO postgres;

--
-- TOC entry 3475 (class 2604 OID 29903)
-- Name: consumable consumed_qty; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN consumed_qty SET DEFAULT 1;


--
-- TOC entry 3476 (class 2604 OID 29904)
-- Name: consumable consumed_uom; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN consumed_uom SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3477 (class 2604 OID 29905)
-- Name: consumable rationing_qty; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3478 (class 2604 OID 29906)
-- Name: consumable rationing_uom; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN rationing_uom SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3479 (class 2604 OID 29907)
-- Name: consumable serial_num; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN serial_num SET DEFAULT 1;


--
-- TOC entry 3483 (class 2604 OID 29908)
-- Name: definition id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3486 (class 2604 OID 29909)
-- Name: information id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3496 (class 2604 OID 29910)
-- Name: primal consumed_qty; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN consumed_qty SET DEFAULT 1;


--
-- TOC entry 3497 (class 2604 OID 29911)
-- Name: primal consumed_uom; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN consumed_uom SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3498 (class 2604 OID 29912)
-- Name: primal rationing_qty; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 3499 (class 2604 OID 29913)
-- Name: primal rationing_uom; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN rationing_uom SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 3500 (class 2604 OID 29914)
-- Name: primal serial_num; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN serial_num SET DEFAULT 1;


--
-- TOC entry 3505 (class 2604 OID 29915)
-- Name: segment id; Type: DEFAULT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment ALTER COLUMN id SET DEFAULT nextval('segment_id_seq'::regclass);


--
-- TOC entry 3663 (class 0 OID 29616)
-- Dependencies: 279
-- Data for Name: consumable; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3664 (class 0 OID 29627)
-- Dependencies: 280
-- Data for Name: definition; Type: TABLE DATA; Schema: operation; Owner: postgres
--

INSERT INTO definition VALUES (1, '81ce5c76-b827-11e7-9511-d4bed939923a', 'operation #1', '2017-10-23', 1, 1);
INSERT INTO definition VALUES (2, '868fe84c-b827-11e7-9512-d4bed939923a', 'operation #2', '2017-10-23', 1, 2);
INSERT INTO definition VALUES (3, '8a177408-b827-11e7-9513-d4bed939923a', 'operation #3', '2017-10-23', 1, 3);
INSERT INTO definition VALUES (4, '8dd62c1a-b827-11e7-9514-d4bed939923a', 'operation #4', '2017-10-23', 1, 4);


--
-- TOC entry 3683 (class 0 OID 0)
-- Dependencies: 281
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 4, true);


--
-- TOC entry 3666 (class 0 OID 29638)
-- Dependencies: 282
-- Data for Name: equipment; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3667 (class 0 OID 29645)
-- Dependencies: 283
-- Data for Name: information; Type: TABLE DATA; Schema: operation; Owner: postgres
--

INSERT INTO information VALUES (1, 'operation #1', '2017-10-27');
INSERT INTO information VALUES (2, 'operation #2', '2017-10-27');
INSERT INTO information VALUES (3, 'operation #3', '2017-10-27');
INSERT INTO information VALUES (4, 'operation #4', '2017-10-27');


--
-- TOC entry 3684 (class 0 OID 0)
-- Dependencies: 284
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 4, true);


--
-- TOC entry 3662 (class 0 OID 29605)
-- Dependencies: 278
-- Data for Name: material; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3669 (class 0 OID 29654)
-- Dependencies: 285
-- Data for Name: personnel; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3670 (class 0 OID 29669)
-- Dependencies: 286
-- Data for Name: primal; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3671 (class 0 OID 29680)
-- Dependencies: 287
-- Data for Name: producible; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3672 (class 0 OID 29689)
-- Dependencies: 288
-- Data for Name: segment; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3685 (class 0 OID 0)
-- Dependencies: 289
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: operation; Owner: postgres
--

SELECT pg_catalog.setval('segment_id_seq', 1, false);


--
-- TOC entry 3674 (class 0 OID 29698)
-- Dependencies: 290
-- Data for Name: tooling; Type: TABLE DATA; Schema: operation; Owner: postgres
--



--
-- TOC entry 3510 (class 2606 OID 30012)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3512 (class 2606 OID 30014)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3514 (class 2606 OID 30016)
-- Name: definition definition_version_num_information_id_key; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_version_num_information_id_key UNIQUE (version_num, information_id);


--
-- TOC entry 3516 (class 2606 OID 30018)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (segment_id, equipment_code);


--
-- TOC entry 3518 (class 2606 OID 30020)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3508 (class 2606 OID 30022)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY material
    ADD CONSTRAINT material_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3520 (class 2606 OID 30024)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (segment_id, personnel_code);


--
-- TOC entry 3522 (class 2606 OID 30026)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (segment_id, part_code);


--
-- TOC entry 3524 (class 2606 OID 30028)
-- Name: producible producible_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY producible
    ADD CONSTRAINT producible_pkey PRIMARY KEY (definition_id, part_code);


--
-- TOC entry 3526 (class 2606 OID 30030)
-- Name: segment segment_definition_id_operation_code_key; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_definition_id_operation_code_key UNIQUE (definition_id, operation_code);


--
-- TOC entry 3528 (class 2606 OID 30032)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (id);


--
-- TOC entry 3530 (class 2606 OID 30034)
-- Name: tooling tooling_pkey; Type: CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY tooling
    ADD CONSTRAINT tooling_pkey PRIMARY KEY (segment_id, tool_code);


--
-- TOC entry 3531 (class 2606 OID 30176)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3532 (class 2606 OID 30181)
-- Name: consumable consumable_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id);


--
-- TOC entry 3533 (class 2606 OID 30186)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id);


--
-- TOC entry 3534 (class 2606 OID 30191)
-- Name: equipment equipment_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3535 (class 2606 OID 30196)
-- Name: personnel personnel_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3536 (class 2606 OID 30201)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3537 (class 2606 OID 30206)
-- Name: primal primal_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES movement.segment(id);


--
-- TOC entry 3538 (class 2606 OID 30211)
-- Name: producible producible_definition_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY producible
    ADD CONSTRAINT producible_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id);


--
-- TOC entry 3539 (class 2606 OID 30216)
-- Name: producible producible_part_code_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY producible
    ADD CONSTRAINT producible_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES material.producible(part_code, version_num);


--
-- TOC entry 3540 (class 2606 OID 30221)
-- Name: segment segment_definition_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3541 (class 2606 OID 30226)
-- Name: tooling tooling_segment_id_fkey; Type: FK CONSTRAINT; Schema: operation; Owner: postgres
--

ALTER TABLE ONLY tooling
    ADD CONSTRAINT tooling_segment_id_fkey FOREIGN KEY (segment_id) REFERENCES segment(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2017-11-24 11:56:59 EET

--
-- PostgreSQL database dump complete
--

