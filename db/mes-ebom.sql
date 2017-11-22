--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.6
-- Dumped by pg_dump version 9.6.6

-- Started on 2017-11-22 14:06:22 EET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 11 (class 2615 OID 34125)
-- Name: common; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA common;


ALTER SCHEMA common OWNER TO postgres;

--
-- TOC entry 8 (class 2615 OID 34239)
-- Name: component; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA component;


ALTER SCHEMA component OWNER TO postgres;

--
-- TOC entry 3439 (class 0 OID 0)
-- Dependencies: 8
-- Name: SCHEMA component; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA component IS 'components of ebom';


--
-- TOC entry 6 (class 2615 OID 34631)
-- Name: ebom; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ebom;


ALTER SCHEMA ebom OWNER TO postgres;

--
-- TOC entry 3440 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA ebom; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA ebom IS 'engenering bill of materials';


--
-- TOC entry 1 (class 3079 OID 13350)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3442 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 2 (class 3079 OID 33950)
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- TOC entry 3443 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- TOC entry 3 (class 3079 OID 33939)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- TOC entry 3444 (class 0 OID 0)
-- Dependencies: 3
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET search_path = common, pg_catalog;

--
-- TOC entry 712 (class 1247 OID 34170)
-- Name: component_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE component_kind AS ENUM (
    'ASSEMBLY',
    'PART',
    'BUYABLE'
);


ALTER TYPE component_kind OWNER TO postgres;

--
-- TOC entry 701 (class 1247 OID 34126)
-- Name: quantity; Type: DOMAIN; Schema: common; Owner: postgres
--

CREATE DOMAIN quantity AS numeric(20,4) DEFAULT 0
	CONSTRAINT quantity_is_positive CHECK ((VALUE >= (0)::numeric));


ALTER DOMAIN quantity OWNER TO postgres;

--
-- TOC entry 3445 (class 0 OID 0)
-- Dependencies: 701
-- Name: DOMAIN quantity; Type: COMMENT; Schema: common; Owner: postgres
--

COMMENT ON DOMAIN quantity IS 'quantity domain';


--
-- TOC entry 721 (class 1247 OID 34190)
-- Name: component_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE component_specification AS (
	part_code character varying,
	version_num integer,
	quantity quantity,
	uom_code character varying,
	component_type component_kind
);


ALTER TYPE component_specification OWNER TO postgres;

--
-- TOC entry 756 (class 1247 OID 34223)
-- Name: dependency_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE dependency_specification AS (
	ancestor uuid,
	descendant uuid,
	depth integer
);


ALTER TYPE dependency_specification OWNER TO postgres;

--
-- TOC entry 753 (class 1247 OID 34220)
-- Name: dependency_specification_ltree; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE dependency_specification_ltree AS (
	ancestor uuid,
	descendant uuid,
	depth integer,
	pathway public.ltree
);


ALTER TYPE dependency_specification_ltree OWNER TO postgres;

--
-- TOC entry 703 (class 1247 OID 34129)
-- Name: document_fsmt; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE document_fsmt AS ENUM (
    'PROPOSED',
    'COMMITTED',
    'DECOMMITTED'
);


ALTER TYPE document_fsmt OWNER TO postgres;

--
-- TOC entry 706 (class 1247 OID 34136)
-- Name: document_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE document_kind AS ENUM (
    'EBOM',
    'MBOM',
    'OPERATION',
    'PRODUCT',
    'PROCESS',
    'REQUEST',
    'RESPONSE'
);


ALTER TYPE document_kind OWNER TO postgres;

--
-- TOC entry 733 (class 1247 OID 34202)
-- Name: ebom_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE ebom_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	version_num integer,
	document_date date,
	curr_fsmt document_fsmt,
	document_type document_kind,
	component_spec component_specification
);


ALTER TYPE ebom_head OWNER TO postgres;

--
-- TOC entry 739 (class 1247 OID 34208)
-- Name: ebom_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE ebom_document AS (
	head ebom_head,
	body component_specification[]
);


ALTER TYPE ebom_document OWNER TO postgres;

--
-- TOC entry 724 (class 1247 OID 34193)
-- Name: equipment_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE equipment_specification AS (
	equipment_code character varying,
	version_num integer,
	quantity quantity,
	uom_code character varying
);


ALTER TYPE equipment_specification OWNER TO postgres;

--
-- TOC entry 709 (class 1247 OID 34152)
-- Name: inventory_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE inventory_kind AS ENUM (
    'ASSEMBLY',
    'PART',
    'BUYABLE',
    'CONSUMABLE',
    'PRODUCIBLE',
    'PRIMAL',
    'SALABLE',
    'STORABLE'
);


ALTER TYPE inventory_kind OWNER TO postgres;

--
-- TOC entry 715 (class 1247 OID 34178)
-- Name: material_kind; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE material_kind AS ENUM (
    'CONSUMABLE',
    'PRODUCIBLE',
    'PRIMAL'
);


ALTER TYPE material_kind OWNER TO postgres;

--
-- TOC entry 718 (class 1247 OID 34187)
-- Name: material_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE material_specification AS (
	part_code character varying,
	version_num integer,
	quantity quantity,
	uom_code character varying,
	material_type material_kind
);


ALTER TYPE material_specification OWNER TO postgres;

--
-- TOC entry 736 (class 1247 OID 34205)
-- Name: mbom_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE mbom_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	version_num integer,
	document_date date,
	curr_fsmt document_fsmt,
	document_type document_kind,
	material_spec material_specification
);


ALTER TYPE mbom_head OWNER TO postgres;

--
-- TOC entry 742 (class 1247 OID 34211)
-- Name: mbom_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE mbom_document AS (
	head mbom_head,
	body material_specification[]
);


ALTER TYPE mbom_document OWNER TO postgres;

--
-- TOC entry 750 (class 1247 OID 34217)
-- Name: operation_head; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE operation_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	version_num integer,
	document_date date,
	curr_fsmt document_fsmt,
	document_type document_kind,
	producible_spec material_specification[]
);


ALTER TYPE operation_head OWNER TO postgres;

--
-- TOC entry 727 (class 1247 OID 34196)
-- Name: personnel_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE personnel_specification AS (
	personnel_code character varying,
	version_num integer,
	quantity quantity,
	uom_code character varying
);


ALTER TYPE personnel_specification OWNER TO postgres;

--
-- TOC entry 730 (class 1247 OID 34199)
-- Name: tooling_specification; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE tooling_specification AS (
	tooling_code character varying,
	version_num integer,
	quantity quantity,
	uom_code character varying
);


ALTER TYPE tooling_specification OWNER TO postgres;

--
-- TOC entry 747 (class 1247 OID 34214)
-- Name: operation_segment; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE operation_segment AS (
	gid uuid,
	operation_code character varying,
	material_spec material_specification[],
	personnel_spec personnel_specification[],
	equipmet_spec equipment_specification[],
	tooling_spec tooling_specification[]
);


ALTER TYPE operation_segment OWNER TO postgres;

--
-- TOC entry 759 (class 1247 OID 34226)
-- Name: operation_document; Type: TYPE; Schema: common; Owner: postgres
--

CREATE TYPE operation_document AS (
	head operation_head,
	body operation_segment[],
	deps dependency_specification[]
);


ALTER TYPE operation_document OWNER TO postgres;

--
-- TOC entry 318 (class 1255 OID 34237)
-- Name: assemly_to_consumable(component_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION assemly_to_consumable(__component component_specification) RETURNS material_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __component.part_code,
    __component.version_num,
    __component.quantity,
    __component.uom_code,
    'CONSUMABLE'::common.material_kind
  )::common.material_specification;

END;
$$;


ALTER FUNCTION common.assemly_to_consumable(__component component_specification) OWNER TO postgres;

--
-- TOC entry 314 (class 1255 OID 34233)
-- Name: assemly_to_producible(component_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION assemly_to_producible(__component component_specification) RETURNS material_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __component.part_code,
    __component.version_num,
    __component.quantity,
    __component.uom_code,
    'PRODUCIBLE'::common.material_kind
  )::common.material_specification;

END;
$$;


ALTER FUNCTION common.assemly_to_producible(__component component_specification) OWNER TO postgres;

--
-- TOC entry 319 (class 1255 OID 34238)
-- Name: buyable_to_consumable(component_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION buyable_to_consumable(__component component_specification) RETURNS material_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __component.part_code,
    __component.version_num,
    __component.quantity,
    __component.uom_code,
    'CONSUMABLE'::common.material_kind
  )::common.material_specification;

END;
$$;


ALTER FUNCTION common.buyable_to_consumable(__component component_specification) OWNER TO postgres;

--
-- TOC entry 316 (class 1255 OID 34235)
-- Name: buyable_to_primal(component_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION buyable_to_primal(__component component_specification) RETURNS material_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __component.part_code,
    __component.version_num,
    __component.quantity,
    __component.uom_code,
    'PRIMAL'::common.material_kind
  )::common.material_specification;

END;
$$;


ALTER FUNCTION common.buyable_to_primal(__component component_specification) OWNER TO postgres;

--
-- TOC entry 311 (class 1255 OID 34230)
-- Name: consumable_to_assembly(material_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION consumable_to_assembly(__material material_specification) RETURNS component_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __material.part_code,
    __material.version_num,
    __material.quantity,
    __material.uom_code,
    'ASSEMBLY'::common.component_kind
  )::common.component_specification;

END;
$$;


ALTER FUNCTION common.consumable_to_assembly(__material material_specification) OWNER TO postgres;

--
-- TOC entry 312 (class 1255 OID 34231)
-- Name: consumable_to_buyable(material_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION consumable_to_buyable(__material material_specification) RETURNS component_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __material.part_code,
    __material.version_num,
    __material.quantity,
    __material.uom_code,
    'BUYABLE'::common.component_kind
  )::common.component_specification;

END;
$$;


ALTER FUNCTION common.consumable_to_buyable(__material material_specification) OWNER TO postgres;

--
-- TOC entry 310 (class 1255 OID 34229)
-- Name: consumable_to_part(material_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION consumable_to_part(__material material_specification) RETURNS component_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __material.part_code,
    __material.version_num,
    __material.quantity,
    __material.uom_code,
    'PART'::common.component_kind
  )::common.component_specification;

END;
$$;


ALTER FUNCTION common.consumable_to_part(__material material_specification) OWNER TO postgres;

--
-- TOC entry 320 (class 1255 OID 34554)
-- Name: disallow_editing_of_committed_document_head(); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION disallow_editing_of_committed_document_head() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
  BEGIN
    IF (TG_OP = 'UPDATE') THEN

      IF (OLD.curr_fsmt = 'COMMITTED'::common.document_fsmt AND NEW.curr_fsmt <> 'DECOMMITTED'::common.document_fsmt) THEN
        RAISE EXCEPTION 'not allowed to edit document %, %, %', OLD.id, OLD.gid, OLD.curr_fsmt;
      END IF;

      RETURN NEW;

    ELSIF (TG_OP = 'DELETE') THEN

      IF (OLD.curr_fsmt = 'COMMITTED'::common.document_fsmt) THEN
        RAISE EXCEPTION 'not allowed to delete document %, %', OLD.id, OLD.curr_fsmt;
      END IF;

      RETURN OLD;
    END IF;
    RETURN NULL;
  END;
  $$;


ALTER FUNCTION common.disallow_editing_of_committed_document_head() OWNER TO postgres;

--
-- TOC entry 317 (class 1255 OID 34236)
-- Name: part_to_consumable(component_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION part_to_consumable(__component component_specification) RETURNS material_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __component.part_code,
    __component.version_num,
    __component.quantity,
    __component.uom_code,
    'CONSUMABLE'::common.material_kind
  )::common.material_specification;

END;
$$;


ALTER FUNCTION common.part_to_consumable(__component component_specification) OWNER TO postgres;

--
-- TOC entry 315 (class 1255 OID 34234)
-- Name: part_to_producible(component_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION part_to_producible(__component component_specification) RETURNS material_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __component.part_code,
    __component.version_num,
    __component.quantity,
    __component.uom_code,
    'PRODUCIBLE'::common.material_kind
  )::common.material_specification;

END;
$$;


ALTER FUNCTION common.part_to_producible(__component component_specification) OWNER TO postgres;

--
-- TOC entry 313 (class 1255 OID 34232)
-- Name: primal_to_buyable(material_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION primal_to_buyable(__material material_specification) RETURNS component_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __material.part_code,
    __material.version_num,
    __material.quantity,
    __material.uom_code,
    'BUYABLE'::common.component_kind
  )::common.component_specification;

END;
$$;


ALTER FUNCTION common.primal_to_buyable(__material material_specification) OWNER TO postgres;

--
-- TOC entry 309 (class 1255 OID 34228)
-- Name: producible_to_assembly(material_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION producible_to_assembly(__material material_specification) RETURNS component_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __material.part_code,
    __material.version_num,
    __material.quantity,
    __material.uom_code,
    'ASSEMBLY'::common.component_kind
  )::common.component_specification;

END;
$$;


ALTER FUNCTION common.producible_to_assembly(__material material_specification) OWNER TO postgres;

--
-- TOC entry 308 (class 1255 OID 34227)
-- Name: producible_to_part(material_specification); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION producible_to_part(__material material_specification) RETURNS component_specification
    LANGUAGE plpgsql
    AS $$
BEGIN

  RETURN (
    __material.part_code,
    __material.version_num,
    __material.quantity,
    __material.uom_code,
    'PART'::common.component_kind
  )::common.component_specification;

END;
$$;


ALTER FUNCTION common.producible_to_part(__material material_specification) OWNER TO postgres;

--
-- TOC entry 321 (class 1255 OID 34555)
-- Name: set_prev_doc_fsmt(); Type: FUNCTION; Schema: common; Owner: postgres
--

CREATE FUNCTION set_prev_doc_fsmt() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
    BEGIN
      IF (TG_OP = 'UPDATE' AND NEW.curr_fsmt != OLD.curr_fsmt) THEN
        NEW.prev_fsmt := OLD.curr_fsmt;
        NEW.prev_fsmt_date := OLD.curr_fsmt_date;
        NEW.curr_fsmt_date := now();
      END IF;
      RETURN NEW;
    END;
    $$;


ALTER FUNCTION common.set_prev_doc_fsmt() OWNER TO postgres;

SET search_path = ebom, pg_catalog;

--
-- TOC entry 324 (class 1255 OID 34738)
-- Name: destroy(bigint); Type: FUNCTION; Schema: ebom; Owner: postgres
--

CREATE FUNCTION destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM ebom.definition WHERE id = __document_id;
END;
$$;


ALTER FUNCTION ebom.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 326 (class 1255 OID 34740)
-- Name: get_body(bigint); Type: FUNCTION; Schema: ebom; Owner: postgres
--

CREATE FUNCTION get_body(__document_id bigint) RETURNS common.component_specification[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY(
      SELECT
        (component.part_code,
        component.version_num,
        component.qty,
        'pcs',
        component.component_type)::common.component_specification
      FROM
        ebom.component
      WHERE
        component.information_id = __document_id
    );
END
$$;


ALTER FUNCTION ebom.get_body(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 322 (class 1255 OID 34736)
-- Name: get_gid_by_id(bigint); Type: FUNCTION; Schema: ebom; Owner: postgres
--

CREATE FUNCTION get_gid_by_id(__document_id bigint) RETURNS uuid
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN gid
    FROM
      ebom.definition
    WHERE
      id = __document_id;
END;
$$;


ALTER FUNCTION ebom.get_gid_by_id(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 325 (class 1255 OID 34739)
-- Name: get_head(bigint); Type: FUNCTION; Schema: ebom; Owner: postgres
--

CREATE FUNCTION get_head(__document_id bigint) RETURNS common.ebom_head
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
    'EBOM'::common.document_kind,
    (information.part_code, information.version_num, 1, 'pcs', 'ASSEMBLY')::common.component_specification
    )::common.ebom_head
  FROM
    ebom.definition,
    ebom.information
  WHERE
    information.id = definition.information_id AND
    definition.id = __document_id;
END;
$$;


ALTER FUNCTION ebom.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 323 (class 1255 OID 34737)
-- Name: get_id_by_gid(uuid); Type: FUNCTION; Schema: ebom; Owner: postgres
--

CREATE FUNCTION get_id_by_gid(__document_gid uuid) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN id
    FROM
      ebom.definition
    WHERE
      gid = __document_gid;
END;
$$;


ALTER FUNCTION ebom.get_id_by_gid(__document_gid uuid) OWNER TO postgres;

SET search_path = component, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 204 (class 1259 OID 34240)
-- Name: information; Type: TABLE; Schema: component; Owner: postgres
--

CREATE TABLE information (
    part_code character varying NOT NULL,
    version_num integer DEFAULT 1 NOT NULL,
    display_name character varying NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    component_type common.component_kind NOT NULL
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 3446 (class 0 OID 0)
-- Dependencies: 204
-- Name: TABLE information; Type: COMMENT; Schema: component; Owner: postgres
--

COMMENT ON TABLE information IS 'ebom component list';


--
-- TOC entry 205 (class 1259 OID 34248)
-- Name: assembly; Type: TABLE; Schema: component; Owner: postgres
--

CREATE TABLE assembly (
    CONSTRAINT assembly_component_type_check CHECK ((component_type = 'ASSEMBLY'::common.component_kind))
)
INHERITS (information);


ALTER TABLE assembly OWNER TO postgres;

--
-- TOC entry 3447 (class 0 OID 0)
-- Dependencies: 205
-- Name: TABLE assembly; Type: COMMENT; Schema: component; Owner: postgres
--

COMMENT ON TABLE assembly IS 'ebom assembly component';


--
-- TOC entry 206 (class 1259 OID 34257)
-- Name: buyable; Type: TABLE; Schema: component; Owner: postgres
--

CREATE TABLE buyable (
    CONSTRAINT buyable_component_type_check CHECK ((component_type = 'BUYABLE'::common.component_kind)),
    CONSTRAINT buyable_version_num_check CHECK ((version_num = 1))
)
INHERITS (information);


ALTER TABLE buyable OWNER TO postgres;

--
-- TOC entry 3448 (class 0 OID 0)
-- Dependencies: 206
-- Name: TABLE buyable; Type: COMMENT; Schema: component; Owner: postgres
--

COMMENT ON TABLE buyable IS 'ebom buyable component';


--
-- TOC entry 207 (class 1259 OID 34267)
-- Name: part; Type: TABLE; Schema: component; Owner: postgres
--

CREATE TABLE part (
    CONSTRAINT part_component_type_check CHECK ((component_type = 'PART'::common.component_kind))
)
INHERITS (information);


ALTER TABLE part OWNER TO postgres;

--
-- TOC entry 3449 (class 0 OID 0)
-- Dependencies: 207
-- Name: TABLE part; Type: COMMENT; Schema: component; Owner: postgres
--

COMMENT ON TABLE part IS 'ebom part component';


SET search_path = ebom, pg_catalog;

--
-- TOC entry 208 (class 1259 OID 34632)
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
-- TOC entry 209 (class 1259 OID 34638)
-- Name: assembly; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE assembly (
    CONSTRAINT assembly_component_type_check CHECK ((component_type = 'ASSEMBLY'::common.component_kind))
)
INHERITS (component);


ALTER TABLE assembly OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 34645)
-- Name: buyable; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE buyable (
    CONSTRAINT buyable_component_type_check CHECK ((component_type = 'BUYABLE'::common.component_kind))
)
INHERITS (component);


ALTER TABLE buyable OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 34652)
-- Name: definition; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE definition (
    id bigint NOT NULL,
    gid uuid,
    display_name character varying NOT NULL,
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
-- TOC entry 212 (class 1259 OID 34662)
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
-- TOC entry 3450 (class 0 OID 0)
-- Dependencies: 212
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: ebom; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 213 (class 1259 OID 34664)
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
-- TOC entry 214 (class 1259 OID 34671)
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
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 214
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: ebom; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 215 (class 1259 OID 34673)
-- Name: part; Type: TABLE; Schema: ebom; Owner: postgres
--

CREATE TABLE part (
    CONSTRAINT part_component_type_check CHECK ((component_type = 'PART'::common.component_kind))
)
INHERITS (component);


ALTER TABLE part OWNER TO postgres;

SET search_path = component, pg_catalog;

--
-- TOC entry 3256 (class 2604 OID 34276)
-- Name: assembly version_num; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY assembly ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3257 (class 2604 OID 34277)
-- Name: assembly published_date; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY assembly ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3259 (class 2604 OID 34278)
-- Name: buyable version_num; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY buyable ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3260 (class 2604 OID 34279)
-- Name: buyable published_date; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY buyable ALTER COLUMN published_date SET DEFAULT now();


--
-- TOC entry 3263 (class 2604 OID 34280)
-- Name: part version_num; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY part ALTER COLUMN version_num SET DEFAULT 1;


--
-- TOC entry 3264 (class 2604 OID 34281)
-- Name: part published_date; Type: DEFAULT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY part ALTER COLUMN published_date SET DEFAULT now();


SET search_path = ebom, pg_catalog;

--
-- TOC entry 3272 (class 2604 OID 34680)
-- Name: definition id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 3274 (class 2604 OID 34681)
-- Name: information id; Type: DEFAULT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


SET search_path = component, pg_catalog;

--
-- TOC entry 3423 (class 0 OID 34248)
-- Dependencies: 205
-- Data for Name: assembly; Type: TABLE DATA; Schema: component; Owner: postgres
--

INSERT INTO assembly VALUES ('11.31.050-001', 1, '11с31п-50х40', '2017-10-21', 'ASSEMBLY');
INSERT INTO assembly VALUES ('11.32.050-001', 1, '11с32п-50х40', '2017-10-21', 'ASSEMBLY');
INSERT INTO assembly VALUES ('11.33.050-001', 1, '11с33п-50х40', '2017-10-21', 'ASSEMBLY');
INSERT INTO assembly VALUES ('80.31.050-001', 1, 'Крпс-089,0х109,0', '2017-10-21', 'ASSEMBLY');
INSERT INTO assembly VALUES ('82.31.050-001', 1, 'Рчк-250х20', '2017-10-21', 'ASSEMBLY');


--
-- TOC entry 3424 (class 0 OID 34257)
-- Dependencies: 206
-- Data for Name: buyable; Type: TABLE DATA; Schema: component; Owner: postgres
--

INSERT INTO buyable VALUES ('Гайка М12', 1, 'Гайка-М12', '2017-10-21', 'BUYABLE');


--
-- TOC entry 3422 (class 0 OID 34240)
-- Dependencies: 204
-- Data for Name: information; Type: TABLE DATA; Schema: component; Owner: postgres
--



--
-- TOC entry 3425 (class 0 OID 34267)
-- Dependencies: 207
-- Data for Name: part; Type: TABLE DATA; Schema: component; Owner: postgres
--

INSERT INTO part VALUES ('22.16.050-001', 1, 'КТ33-50х40', '2017-10-21', 'PART');
INSERT INTO part VALUES ('22.25.050-001', 1, 'КТ32-50х40', '2017-10-21', 'PART');
INSERT INTO part VALUES ('40.31.050-001', 1, 'Птрб-057,0х126,0', '2017-10-21', 'PART');
INSERT INTO part VALUES ('40.32.050-001', 1, 'Птрб-057,0х074,0', '2017-10-21', 'PART');
INSERT INTO part VALUES ('40.33.050-001', 1, 'Птрб-057,0х054,0', '2017-10-21', 'PART');
INSERT INTO part VALUES ('41.31.050-001', 1, 'Крпс-089,0х109,0', '2017-10-21', 'PART');
INSERT INTO part VALUES ('42.01.050-001', 1, 'Ббшк-022,0х044,0', '2017-10-21', 'PART');
INSERT INTO part VALUES ('50.01.050-001', 1, 'Втлк-050,0х039,0', '2017-10-21', 'PART');
INSERT INTO part VALUES ('60.01.050-001', 1, 'ШП-068,0х052,5', '2017-10-21', 'PART');
INSERT INTO part VALUES ('51.01.050-001', 1, 'Пржн-050,6х042,0', '2017-10-21', 'PART');
INSERT INTO part VALUES ('61.01.050-001', 1, 'Штк-013,3х075,0', '2017-10-21', 'PART');
INSERT INTO part VALUES ('52.01.050-001', 1, 'Шйб-051,0х042,6', '2017-10-21', 'PART');
INSERT INTO part VALUES ('70.01.050-001', 1, 'Ф4-051,5х041,7х11,0', '2017-10-21', 'PART');
INSERT INTO part VALUES ('71.02.050-001', 1, 'Кршк-ПП-50', '2017-10-21', 'PART');
INSERT INTO part VALUES ('71.03.050-001', 1, 'Зглш-ПП-50', '2017-10-21', 'PART');
INSERT INTO part VALUES ('55.31.050-001', 1, 'Рчк-250х20', '2017-10-21', 'PART');
INSERT INTO part VALUES ('53.01.004-001', 1, 'Штфт-4', '2017-10-21', 'PART');
INSERT INTO part VALUES ('70.04.020-001', 1, 'Клц-20', '2017-10-21', 'PART');
INSERT INTO part VALUES ('72.01.009-001', 1, 'Клц-009', '2017-10-21', 'PART');
INSERT INTO part VALUES ('42.02.022-001', 1, 'Втлк-Р-50х18', '2017-10-21', 'PART');


SET search_path = ebom, pg_catalog;

--
-- TOC entry 3427 (class 0 OID 34638)
-- Dependencies: 209
-- Data for Name: assembly; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO assembly VALUES (1, '80.31.050-001', 1, 1.0000, 'ASSEMBLY');
INSERT INTO assembly VALUES (1, '82.31.050-001', 1, 1.0000, 'ASSEMBLY');
INSERT INTO assembly VALUES (2, '80.31.050-001', 1, 1.0000, 'ASSEMBLY');
INSERT INTO assembly VALUES (2, '82.31.050-001', 1, 1.0000, 'ASSEMBLY');
INSERT INTO assembly VALUES (3, '80.31.050-001', 1, 1.0000, 'ASSEMBLY');
INSERT INTO assembly VALUES (3, '82.31.050-001', 1, 1.0000, 'ASSEMBLY');


--
-- TOC entry 3428 (class 0 OID 34645)
-- Dependencies: 210
-- Data for Name: buyable; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO buyable VALUES (1, 'Гайка М12', 1, 1.0000, 'BUYABLE');
INSERT INTO buyable VALUES (2, 'Гайка М12', 1, 1.0000, 'BUYABLE');
INSERT INTO buyable VALUES (3, 'Гайка М12', 1, 1.0000, 'BUYABLE');


--
-- TOC entry 3426 (class 0 OID 34632)
-- Dependencies: 208
-- Data for Name: component; Type: TABLE DATA; Schema: ebom; Owner: postgres
--



--
-- TOC entry 3429 (class 0 OID 34652)
-- Dependencies: 211
-- Data for Name: definition; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO definition VALUES (1, NULL, '11с31п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21 20:55:30.985148+03', 1);
INSERT INTO definition VALUES (2, NULL, '11с32п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21 20:55:30.985148+03', 2);
INSERT INTO definition VALUES (3, NULL, '11с33п-50х40: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21 20:55:30.985148+03', 3);
INSERT INTO definition VALUES (4, NULL, 'Крпс-089,0х109,0: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21 20:55:30.985148+03', 4);
INSERT INTO definition VALUES (5, NULL, 'Рчк-250х20: definition', 1, '2017-10-21', NULL, NULL, 'PROPOSED', '2017-10-21 20:55:30.985148+03', 5);


--
-- TOC entry 3452 (class 0 OID 0)
-- Dependencies: 212
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: ebom; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 5, true);


--
-- TOC entry 3431 (class 0 OID 34664)
-- Dependencies: 213
-- Data for Name: information; Type: TABLE DATA; Schema: ebom; Owner: postgres
--

INSERT INTO information VALUES (1, NULL, '11.31.050-001', 1, '11с31п-50х40: information', '2017-10-23');
INSERT INTO information VALUES (2, NULL, '11.32.050-001', 1, '11с32п-50х40: information', '2017-10-23');
INSERT INTO information VALUES (3, NULL, '11.33.050-001', 1, '11с33п-50х40: information', '2017-10-23');
INSERT INTO information VALUES (4, NULL, '80.31.050-001', 1, 'Крпс-089,0х109,0: information', '2017-10-23');
INSERT INTO information VALUES (5, NULL, '82.31.050-001', 1, 'Рчк-250х20: information', '2017-10-23');


--
-- TOC entry 3453 (class 0 OID 0)
-- Dependencies: 214
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: ebom; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 5, true);


--
-- TOC entry 3433 (class 0 OID 34673)
-- Dependencies: 215
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


SET search_path = component, pg_catalog;

--
-- TOC entry 3279 (class 2606 OID 34283)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3281 (class 2606 OID 34285)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3277 (class 2606 OID 34287)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (part_code, version_num);


--
-- TOC entry 3454 (class 0 OID 0)
-- Dependencies: 3277
-- Name: CONSTRAINT information_pkey ON information; Type: COMMENT; Schema: component; Owner: postgres
--

COMMENT ON CONSTRAINT information_pkey ON information IS 'may be part_code + version_num + component_type';


--
-- TOC entry 3283 (class 2606 OID 34289)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: component; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_pkey PRIMARY KEY (part_code, version_num);


SET search_path = ebom, pg_catalog;

--
-- TOC entry 3287 (class 2606 OID 34683)
-- Name: assembly assembly_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 3289 (class 2606 OID 34685)
-- Name: buyable buyable_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 3285 (class 2606 OID 34687)
-- Name: component component_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY component
    ADD CONSTRAINT component_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 3291 (class 2606 OID 34689)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 3293 (class 2606 OID 34691)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 3295 (class 2606 OID 34693)
-- Name: part part_pkey; Type: CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 3304 (class 2620 OID 34694)
-- Name: definition set_prev_doc_fsmt; Type: TRIGGER; Schema: ebom; Owner: postgres
--

CREATE TRIGGER set_prev_doc_fsmt BEFORE UPDATE ON definition FOR EACH ROW EXECUTE PROCEDURE common.set_prev_doc_fsmt();


--
-- TOC entry 3297 (class 2606 OID 34695)
-- Name: assembly assembly_information_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_information_id_fkey FOREIGN KEY (information_id) REFERENCES definition(id);


--
-- TOC entry 3296 (class 2606 OID 34700)
-- Name: assembly assembly_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY assembly
    ADD CONSTRAINT assembly_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES component.assembly(part_code, version_num);


--
-- TOC entry 3299 (class 2606 OID 34705)
-- Name: buyable buyable_information_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_information_id_fkey FOREIGN KEY (information_id) REFERENCES definition(id);


--
-- TOC entry 3298 (class 2606 OID 34710)
-- Name: buyable buyable_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY buyable
    ADD CONSTRAINT buyable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES component.buyable(part_code, version_num);


--
-- TOC entry 3300 (class 2606 OID 34715)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3301 (class 2606 OID 34720)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES component.assembly(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3303 (class 2606 OID 34725)
-- Name: part part_information_id_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_information_id_fkey FOREIGN KEY (information_id) REFERENCES definition(id);


--
-- TOC entry 3302 (class 2606 OID 34730)
-- Name: part part_part_code_fkey; Type: FK CONSTRAINT; Schema: ebom; Owner: postgres
--

ALTER TABLE ONLY part
    ADD CONSTRAINT part_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES component.part(part_code, version_num);


-- Completed on 2017-11-22 14:06:22 EET

--
-- PostgreSQL database dump complete
--

