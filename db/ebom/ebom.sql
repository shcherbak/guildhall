--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.6
-- Dumped by pg_dump version 9.6.6

-- Started on 2017-11-21 23:10:50 EET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 27 (class 2615 OID 39505)
-- Name: ebom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ebom;


ALTER SCHEMA ebom OWNER TO postgres;

--
-- TOC entry 3803 (class 0 OID 0)
-- Dependencies: 27
-- Name: SCHEMA ebom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA ebom IS 'engenering bill of materials';


SET search_path = ebom, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 244 (class 1259 OID 40090)
-- Name: component; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE component (
    information_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    qty numeric(10,4) NOT NULL,
    component_type common.component_kind NOT NULL
);


ALTER TABLE component OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 40096)
-- Name: assembly; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE assembly (
    CONSTRAINT assembly_component_type_check CHECK ((component_type = 'ASSEMBLY'::common.component_kind))
)
INHERITS (component);


ALTER TABLE assembly OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 40103)
-- Name: buyable; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE buyable (
    CONSTRAINT buyable_component_type_check CHECK ((component_type = 'BUYABLE'::common.component_kind))
)
INHERITS (component);


ALTER TABLE buyable OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 40110)
-- Name: definition; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE definition (
    id bigint NOT NULL,
    gid uuid,
    display_name character varying NOT NULL,
    version_num integer NOT NULL DEFAULT 1,
    published_date date DEFAULT now() NOT NULL,
    prev_fsmt common.document_fsmt,
    prev_fsmt_date timestamp with time zone,
    curr_fsmt common.document_fsmt DEFAULT 'PROPOSED'::common.document_fsmt NOT NULL,
    curr_fsmt_date timestamp with time zone DEFAULT now() NOT NULL,
    information_id bigint
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 40119)
-- Name: definition_id_seq; Type: SEQUENCE; Schema: ebom; Owner: postgres
--

CREATE SEQUENCE definition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE definition_id_seq OWNER TO postgres;

--
-- TOC entry 3804 (class 0 OID 0)
-- Dependencies: 248
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: ebom; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 249 (class 1259 OID 40121)
-- Name: information; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    gid uuid,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 40128)
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
-- TOC entry 3805 (class 0 OID 0)
-- Dependencies: 250
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: ebom; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 251 (class 1259 OID 40130)
-- Name: part; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE part (
    CONSTRAINT part_component_type_check CHECK ((component_type = 'PART'::common.component_kind))
)
INHERITS (component);


ALTER TABLE part OWNER TO postgres;

--
-- TOC entry 3646 (class 2604 OID 40628)
-- Name: definition id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3648 (class 2604 OID 40629)
-- Name: information id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3792 (class 0 OID 40096)
-- Dependencies: 245
-- Data for Name: assembly; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO assembly VALUES (1, '80.31.050-001', 1, 1.0000, 'ASSEMBLY');
INSERT INTO assembly VALUES (1, '82.31.050-001', 1, 1.0000, 'ASSEMBLY');
INSERT INTO assembly VALUES (2, '80.31.050-001', 1, 1.0000, 'ASSEMBLY');
INSERT INTO assembly VALUES (2, '82.31.050-001', 1, 1.0000, 'ASSEMBLY');
INSERT INTO assembly VALUES (3, '80.31.050-001', 1, 1.0000, 'ASSEMBLY');
INSERT INTO assembly VALUES (3, '82.31.050-001', 1, 1.0000, 'ASSEMBLY');


--
-- TOC entry 3793 (class 0 OID 40103)
-- Dependencies: 246
-- Data for Name: buyable; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO buyable VALUES (1, 'Гайка М12', 1, 1.0000, 'BUYABLE');
INSERT INTO buyable VALUES (2, 'Гайка М12', 1, 1.0000, 'BUYABLE');
INSERT INTO buyable VALUES (3, 'Гайка М12', 1, 1.0000, 'BUYABLE');


--
-- TOC entry 3791 (class 0 OID 40090)
-- Dependencies: 244
-- Data for Name: component; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 3794 (class 0 OID 40110)
-- Dependencies: 247
-- Data for Name: definition; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO definition VALUES (1, NULL, '11с31п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21 20:55:30.985148+03', 1);
INSERT INTO definition VALUES (2, NULL,  '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21 20:55:30.985148+03', 2);
INSERT INTO definition VALUES (3, NULL,  '11с33п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21 20:55:30.985148+03', 3);
INSERT INTO definition VALUES (4, NULL,  'Крпс-089,0х109,0: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21 20:55:30.985148+03', 4);
INSERT INTO definition VALUES (5, NULL,  'Рчк-250х20: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21 20:55:30.985148+03', 5);


--
-- TOC entry 3806 (class 0 OID 0)
-- Dependencies: 248
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: ebom; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 5, true);


--
-- TOC entry 3796 (class 0 OID 40121)
-- Dependencies: 249
-- Data for Name: information; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO information VALUES (1, NULL, '11.31.050-001', 1, '11с31п-50х40: information', '2017-10-23');
INSERT INTO information VALUES (2, NULL, '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23');
INSERT INTO information VALUES (3, NULL, '11.33.050-001', 1, '11с33п-50х40: information', '2017-10-23');
INSERT INTO information VALUES (4, NULL, '80.31.050-001', 1, 'Крпс-089,0х109,0: information', '2017-10-23');
INSERT INTO information VALUES (5, NULL, '82.31.050-001', 1, 'Рчк-250х20: information', '2017-10-23');

--
-- TOC entry 3807 (class 0 OID 0)
-- Dependencies: 250
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: ebom; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 5, true);


--
-- TOC entry 3798 (class 0 OID 40130)
-- Dependencies: 251
-- Data for Name: part; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO part VALUES (1, '40.31.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (1, '50.01.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (1, '51.01.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (1, '52.01.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (1, '53.01.004-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (1, '60.01.050-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (1, '61.01.050-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (1, '70.01.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (1, '70.04.020-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (1, '72.01.009-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (2, '22.25.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (2, '40.32.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (2, '50.01.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (2, '51.01.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (2, '52.01.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (2, '53.01.004-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (2, '60.01.050-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (2, '61.01.050-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (2, '70.01.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (2, '70.04.020-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (2, '72.01.009-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (3, '22.16.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (3, '40.33.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (3, '50.01.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (3, '51.01.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (3, '52.01.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (3, '53.01.004-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (3, '60.01.050-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (3, '61.01.050-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (3, '70.01.050-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (3, '70.04.020-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (3, '72.01.009-001', 1, 2.0000, 'PART');
INSERT INTO part VALUES (4, '41.31.050-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (4, '42.01.050-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (5, '55.31.050-001', 1, 1.0000, 'PART');
INSERT INTO part VALUES (5, '42.02.022-001', 1, 1.0000, 'PART');


--
-- TOC entry 3653 (class 2606 OID 40699)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 3655 (class 2606 OID 40701)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 3651 (class 2606 OID 40703)
-- Name: component component_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY component
    ADD CONSTRAINT component_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 3657 (class 2606 OID 40705)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3659 (class 2606 OID 40707)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3661 (class 2606 OID 40709)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 3670 (class 2620 OID 40842)
-- Name: definition set_prev_doc_fsmt; Type: TRIGGER; Schema: ebom; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON definition FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 3662 (class 2606 OID 40847)
-- Name: assembly assembly_information_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_information_id_fkey FOREIGN KEY (information_id) REFERENCES definition(id);


--
-- TOC entry 3663 (class 2606 OID 40852)
-- Name: assembly assembly_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES component.assembly(part_code, version_num);


--
-- TOC entry 3664 (class 2606 OID 40857)
-- Name: buyable buyable_information_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_information_id_fkey FOREIGN KEY (information_id) REFERENCES definition(id);


--
-- TOC entry 3665 (class 2606 OID 40862)
-- Name: buyable buyable_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES component.buyable(part_code, version_num);


--
-- TOC entry 3666 (class 2606 OID 40867)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3667 (class 2606 OID 40872)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES component.assembly(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3668 (class 2606 OID 40877)
-- Name: part part_information_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_information_id_fkey FOREIGN KEY (information_id) REFERENCES definition(id);


--
-- TOC entry 3669 (class 2606 OID 40882)
-- Name: part part_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES component.part(part_code, version_num);


-- Completed on 2017-11-21 23:10:50 EET

--
-- PostgreSQL database dump complete
--
