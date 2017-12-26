--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.6
-- Dumped by pg_dump version 9.6.6

-- Started on 2017-12-27 00:35:16 EET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 21 (class 2615 OID 51714)
-- Name: route; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA route;


ALTER SCHEMA route OWNER TO postgres;

SET search_path = route, pg_catalog;

--
-- TOC entry 514 (class 1255 OID 51803)
-- Name: destroy(bigint); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM route.definition WHERE id = __document_id;
END;
$$;


ALTER FUNCTION route.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 460 (class 1255 OID 51825)
-- Name: get_ancestor_spec(bigint); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION get_ancestor_spec(__document_id bigint) RETURNS common.material_specification[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY(
      SELECT 
        (segment.ancestor_part_code, 
        segment.ancestor_version_num,
        1,
        'pcs',
        'CONSUMABLE')::common.material_specification
      FROM 
        route.segment
      WHERE 
        segment.definition_id = __document_id
    );
END
$$;


ALTER FUNCTION route.get_ancestor_spec(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 517 (class 1255 OID 51829)
-- Name: get_body(bigint); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION get_body(__document_id bigint) RETURNS common.route_segment
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN

      --SELECT 
        (route.get_ancestor_spec(__document_id := __document_id),
        route.get_location_spec(__document_id := __document_id))::common.route_segment;
    --;
END
$$;


ALTER FUNCTION route.get_body(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 513 (class 1255 OID 51802)
-- Name: get_gid_by_id(bigint); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION get_gid_by_id(__document_id bigint) RETURNS uuid
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN gid
    FROM
      route.definition
    WHERE
      id = __document_id;
END;
$$;


ALTER FUNCTION route.get_gid_by_id(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 515 (class 1255 OID 51822)
-- Name: get_head(bigint); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION get_head(__document_id bigint) RETURNS common.route_head
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN
    (definition.id,
    definition.gid,
    definition.display_name,
    definition.version_num,
    definition.published_date,
    definition.curr_fsmt,
    'ROUTE'::common.document_kind,
    (information.part_code, information.version_num, 1, 'pcs', 'PRODUCIBLE')::common.material_specification
    )::common.route_head
  FROM
    route.definition,
    route.information
  WHERE
    information.id = definition.information_id AND
    definition.id = __document_id;
END;
$$;


ALTER FUNCTION route.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 512 (class 1255 OID 51801)
-- Name: get_id_by_gid(uuid); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION get_id_by_gid(__document_gid uuid) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN id
    FROM
      route.definition
    WHERE
      gid = __document_gid;
END;
$$;


ALTER FUNCTION route.get_id_by_gid(__document_gid uuid) OWNER TO postgres;

--
-- TOC entry 516 (class 1255 OID 51827)
-- Name: get_location_spec(bigint); Type: FUNCTION; Schema: route; Owner: postgres
--

CREATE FUNCTION get_location_spec(__document_id bigint) RETURNS character varying[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY (
      SELECT 
        location.location_code
      FROM 
        route.location
      WHERE 
        location.definition_id = __document_id
    );
END
$$;


ALTER FUNCTION route.get_location_spec(__document_id bigint) OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 292 (class 1259 OID 51754)
-- Name: definition; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE definition (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    version_num integer DEFAULT 1 NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    prev_fsmt common.document_fsmt,
    prev_fsmt_date timestamp with time zone,
    curr_fsmt common.document_fsmt DEFAULT 'PROPOSED'::common.document_fsmt NOT NULL,
    curr_fsmt_date timestamp with time zone DEFAULT now() NOT NULL,
    information_id bigint
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 291 (class 1259 OID 51752)
-- Name: definition_id_seq; Type: SEQUENCE; Schema: route; Owner: postgres
--

CREATE SEQUENCE definition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE definition_id_seq OWNER TO postgres;

--
-- TOC entry 3723 (class 0 OID 0)
-- Dependencies: 291
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: route; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 290 (class 1259 OID 51741)
-- Name: information; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    published_date date DEFAULT now() NOT NULL,
    part_code character varying,
    version_num integer
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 289 (class 1259 OID 51739)
-- Name: information_id_seq; Type: SEQUENCE; Schema: route; Owner: postgres
--

CREATE SEQUENCE information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE information_id_seq OWNER TO postgres;

--
-- TOC entry 3724 (class 0 OID 0)
-- Dependencies: 289
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: route; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 294 (class 1259 OID 51793)
-- Name: location; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE location (
    definition_id bigint NOT NULL,
    location_code character varying NOT NULL
);


ALTER TABLE location OWNER TO postgres;

--
-- TOC entry 293 (class 1259 OID 51785)
-- Name: segment; Type: TABLE; Schema: route; Owner: postgres
--

CREATE TABLE segment (
    definition_id bigint NOT NULL,
    descendant_part_code character varying NOT NULL,
    descendant_version_num integer NOT NULL,
    ancestor_part_code character varying NOT NULL,
    ancestor_version_num integer NOT NULL
);


ALTER TABLE segment OWNER TO postgres;

--
-- TOC entry 3574 (class 2604 OID 51757)
-- Name: definition id; Type: DEFAULT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3571 (class 2604 OID 51744)
-- Name: information id; Type: DEFAULT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 3716 (class 0 OID 51754)
-- Dependencies: 292
-- Data for Name: definition; Type: TABLE DATA; Schema: route; Owner: postgres
--

INSERT INTO definition (id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id) VALUES (1, '1e999d70-ded1-11e7-a137-d4bed939923a', 'route #1', 1, '2017-12-12', NULL, NULL, 'PROPOSED', '2017-12-12 02:12:19.975723+02', 1);
INSERT INTO definition (id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id) VALUES (2, '946dc1de-ded1-11e7-9a1f-d4bed939923a', 'route #2', 1, '2017-12-12', NULL, NULL, 'PROPOSED', '2017-12-12 02:15:37.78253+02', 2);


--
-- TOC entry 3725 (class 0 OID 0)
-- Dependencies: 291
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: route; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 2, true);


--
-- TOC entry 3714 (class 0 OID 51741)
-- Dependencies: 290
-- Data for Name: information; Type: TABLE DATA; Schema: route; Owner: postgres
--

INSERT INTO information (id, gid, display_name, published_date, part_code, version_num) VALUES (1, '26cf4af8-ded1-11e7-9070-d4bed939923a', 'route #1', '2017-12-12', NULL, NULL);
INSERT INTO information (id, gid, display_name, published_date, part_code, version_num) VALUES (2, '893303e2-ded1-11e7-a4be-d4bed939923a', 'route #2', '2017-12-12', NULL, NULL);


--
-- TOC entry 3726 (class 0 OID 0)
-- Dependencies: 289
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: route; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 2, true);


--
-- TOC entry 3718 (class 0 OID 51793)
-- Dependencies: 294
-- Data for Name: location; Type: TABLE DATA; Schema: route; Owner: postgres
--

INSERT INTO location (definition_id, location_code) VALUES (1, 'A1');
INSERT INTO location (definition_id, location_code) VALUES (1, 'B1');
INSERT INTO location (definition_id, location_code) VALUES (1, 'C1');
INSERT INTO location (definition_id, location_code) VALUES (2, 'A1');


--
-- TOC entry 3717 (class 0 OID 51785)
-- Dependencies: 293
-- Data for Name: segment; Type: TABLE DATA; Schema: route; Owner: postgres
--

INSERT INTO segment (definition_id, descendant_part_code, descendant_version_num, ancestor_part_code, ancestor_version_num) VALUES (1, '22.25.100-001', 1, '22.25.100-001.010', 1);
INSERT INTO segment (definition_id, descendant_part_code, descendant_version_num, ancestor_part_code, ancestor_version_num) VALUES (2, '22.16.100-001', 1, '22.25.100-001.010', 1);


--
-- TOC entry 3583 (class 2606 OID 51769)
-- Name: definition definition_gid_key; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_gid_key UNIQUE (gid);


--
-- TOC entry 3585 (class 2606 OID 51771)
-- Name: definition definition_information_id_version_num_key; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_version_num_key UNIQUE (information_id, version_num);


--
-- TOC entry 3587 (class 2606 OID 51767)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3581 (class 2606 OID 51751)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3591 (class 2606 OID 51800)
-- Name: location location_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY location
    ADD CONSTRAINT location_pkey PRIMARY KEY (definition_id, location_code);


--
-- TOC entry 3589 (class 2606 OID 51792)
-- Name: segment segment_pkey; Type: CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY segment
    ADD CONSTRAINT segment_pkey PRIMARY KEY (definition_id, ancestor_part_code, ancestor_version_num, descendant_part_code, descendant_version_num);


--
-- TOC entry 3592 (class 2606 OID 51772)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: route; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2017-12-27 00:35:17 EET

--
-- PostgreSQL database dump complete
--

