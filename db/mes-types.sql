CREATE DOMAIN common.quantity 
  AS numeric(20,4) DEFAULT 0 
  CONSTRAINT quantity_is_positive CHECK ((VALUE >= (0)::numeric));
ALTER DOMAIN common.quantity OWNER TO postgres;
COMMENT ON DOMAIN common.quantity IS 'quantity domain';


CREATE TYPE common.material AS (
  part_code   character varying,
  version_num integer,
  quantity    common.quantity,
  uom_code    character varying
);


CREATE TYPE common.equipment AS (
  equipment_code  character varying,
  version_num     integer,
  quantity        common.quantity,
  uom_code        character varying
);


CREATE TYPE common.personnel AS (
  personnel_code  character varying,
  version_num     integer,
  quantity        common.quantity,
  uom_code        character varying
);


CREATE TYPE common.tooling AS (
  tooling_code  character varying,
  version_num   integer,
  quantity      common.quantity,
  uom_code      character varying
);


CREATE TYPE common.segment AS (
  material  common.material[],
  personnel common.personnel[],
  equipmet  common.equipment[],
  tooling   common.tooling[]
);


CREATE TYPE common.product_information AS (
  document_id   bigint, 
  gid           uuid,
  display_name  character varying,
  document_date date,
  curr_fsmt     common.document_fsmt,
  document_type common.document_kind,
  version_num   integer,
  producible    common.material
);


CREATE TYPE common.operation_information AS (
  document_id   bigint, 
  gid           uuid,
  display_name  character varying,
  document_date date,
  curr_fsmt     common.document_fsmt,
  document_type common.document_kind,
  version_num   integer,
  producible    common.material
);


CREATE TYPE common.process_information AS (
  document_id   bigint, 
  gid           uuid,
  display_name  character varying,
  document_date date,
  curr_fsmt     common.document_fsmt,
  document_type common.document_kind,
  version_num   integer,
  producible    common.material
);


CREATE TYPE common.product AS (
  head common.product_information;
  body common.segment[];
);


CREATE TYPE common.operation AS (
  head common.operation_information;
  body common.segment[];
);


CREATE TYPE common.process AS (
  head common.process_information;
  body common.segment[];
);


CREATE TYPE common.information AS (
  document_id   bigint,
  gid           uuid,
  display_name  character varying,
  document_date date,
  curr_fsmt     common.document_fsmt,
  document_type common.document_kind,
  version_num   integer,
  producible    common.material
);


CREATE TYPE common.definition AS (
  head common.information,
  body common.segment[]
);








































CREATE DOMAIN quantity_signed AS numeric(20,4) DEFAULT 0;
ALTER DOMAIN quantity_signed OWNER TO postgres;
COMMENT ON DOMAIN quantity_signed IS 'quantity signed domain';


CREATE TYPE document_fsmt AS ENUM (
    'PROPOSED',
    'COMMITTED',
    'DECOMMITTED'
);


CREATE TYPE common.component_kind AS ENUM
   ('ASSEMBLY',
    'PART',
    'BUYABLE');
ALTER TYPE common.component_kind
  OWNER TO postgres;

--
 
 CREATE TABLE common.component_kind;


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


CREATE TYPE common.ebom_type AS (
  head common.ebom_head,
  body common.ebom_body[]
);


CREATE TYPE common.mbom_type AS (
  head common.mbom_head,
  body common.mbom_body[]
);


CREATE TYPE common.document_type AS (
	head document_head,
	body document_body[]
);





CREATE TYPE common.segment_spec AS (
  material common.material_segment,
  equipmet common.equipment_segment,
  personnel common.personnel_segment,
  tooling common.tooling_segment
);

CREATE TYPE common.process_type AS (
  head common.process_information,
  body common.process_segment[]
);