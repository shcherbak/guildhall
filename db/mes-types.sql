CREATE DOMAIN quantity AS numeric(20,4) DEFAULT 0
  CONSTRAINT quantity_is_positive CHECK ((VALUE >= (0)::numeric));

ALTER DOMAIN quantity OWNER TO postgres;
COMMENT ON DOMAIN quantity IS 'quantity domain';


CREATE DOMAIN quantity_signed AS numeric(20,4) DEFAULT 0;
ALTER DOMAIN quantity_signed OWNER TO postgres;
COMMENT ON DOMAIN quantity_signed IS 'quantity signed domain';


CREATE TYPE document_fsmt AS ENUM (
    'PROPOSED',
    'COMMITTED',
    'DECOMMITTED'
);
ALTER TYPE document_fsmt OWNER TO postgres;


CREATE TYPE common.component_kind AS ENUM
   ('ASSEMBLY',
    'PART',
    'BUYABLE');
ALTER TYPE common.component_kind
  OWNER TO postgres;


CREATE TYPE common.material_kind AS ENUM
   ('CONSUMABLE',
    'PRODUCIBLE',
    'PRIMAL');
ALTER TYPE common.material_kind
  OWNER TO postgres;


CREATE TYPE common.document_kind AS ENUM (
    'EBOM',
    'MBOM',
    'OPERATION',
    'PRODUCT',
    'PROCESS',
    'REQUEST',
    'RESPONSE'
);
ALTER TYPE common.document_kind OWNER TO postgres;


/*CREATE TYPE common.document_body AS (
  good_code character varying,
  quantity common.quantity,
  uom_code character varying
);
ALTER TYPE common.document_body OWNER TO postgres;*/


CREATE TYPE common.ebom_body AS (
  part_code character varying,
  version_num integer,
  quantity common.quantity,
  uom_code character varying,
  component_type common.component_kind
);


CREATE TYPE common.mbom_body AS (
  part_code character varying,
  version_num integer,
  quantity common.quantity,
  uom_code character varying,
  material_type common.material_kind
);


/*CREATE TYPE document_head AS (
	document_id bigint,
	gid uuid,
	display_name character varying,
	document_date date,
	facility_code character varying,
	curr_fsmt document_fsmt,
	doctype document_kind
);
ALTER TYPE document_head OWNER TO postgres;*/


CREATE TYPE common.ebom_head AS (
  document_id bigint,
  gid uuid,
  display_name character varying,
  document_date date,
  curr_fsmt common.document_fsmt,
  document_type common.document_kind,
  version_num integer,
  _part_code character varying NOT NULL,
  _version_num integer NOT NULL,
);
ALTER TYPE common.ebom_head OWNER TO postgres;


CREATE TYPE common.mbom_head AS (
  document_id bigint,
  gid uuid,
  display_name character varying,
  document_date date,
  curr_fsmt common.document_fsmt,
  document_type common.document_kind,
  version_num integer,
  _part_code character varying NOT NULL,
  _version_num integer NOT NULL,
);
ALTER TYPE common.mbom_head OWNER TO postgres;



CREATE TYPE document_type AS (
	head document_head,
	body document_body[]
);
ALTER TYPE document_type OWNER TO postgres;




