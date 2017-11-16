CREATE TYPE common.ebom_information AS (
  document_id bigint,
  gid uuid
  display_name character varying,
  version_num int,
  note character varying,
  published_date date NOT NULL DEFAULT now(),
  author character varying,
  hierarhy_scope character varying,
  curr_fsmt common.document_fsmt,
  document_type common.document_kind,
  component_spec common.component_specification -- assembly only (part_code, version_num)
);

-- Table: ebom.information

-- DROP TABLE ebom.information;

CREATE TABLE ebom.information
(
  id bigserial NOT NULL,
  part_code character varying NOT NULL,
  version_num integer NOT NULL,
  display_name character varying NOT NULL,
  published_date date NOT NULL DEFAULT now(),
  CONSTRAINT information_pkey PRIMARY KEY (id),
  CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num)
      REFERENCES component.assembly (part_code, version_num) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE ebom.information
  OWNER TO postgres;



-- Table: ebom.definition

-- DROP TABLE ebom.definition;

CREATE TABLE ebom.definition
(
  id bigserial NOT NULL,
  gid uuid NOT NULL DEFAULT uuid_generate_v1(),
  information_id bigint,
  version_num int,
  display_name character varying NOT NULL,
  note character varying,
  published_date date NOT NULL DEFAULT now(),
  author character varying,
  hierarhy_scope character varying,
  prev_fsmt common.document_fsmt,
  prev_fsmt_date timestamp with time zone,
  curr_fsmt common.document_fsmt NOT NULL DEFAULT 'PROPOSED'::common.document_fsmt,
  curr_fsmt_date timestamp with time zone NOT NULL DEFAULT now(),
  CONSTRAINT definition_pkey PRIMARY KEY (id),
  CONSTRAINT definition_gid_key UNIQUE (gid),
  CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id)
      REFERENCES ebom.information (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE ebom.definition
  OWNER TO postgres;

-- Trigger: set_prev_doc_fsmt on ebom.definition

-- DROP TRIGGER set_prev_doc_fsmt ON ebom.definition;

CREATE TRIGGER set_prev_doc_fsmt
  BEFORE UPDATE
  ON ebom.definition
  FOR EACH ROW
  EXECUTE PROCEDURE common.set_prev_doc_fsmt();



-- Table: demand.head

-- DROP TABLE demand.head;

CREATE TABLE demand.head
(
  id bigserial NOT NULL,
  gid uuid NOT NULL DEFAULT uuid_generate_v1(),
  display_name character varying,
  document_date date NOT NULL DEFAULT ('now'::text)::date,
  author character varying,
  due_date date NOT NULL,
  ship_to character varying,
  ship_from character varying,
  prev_fsmt common.document_fsmt,
  prev_fsmt_date timestamp with time zone,
  curr_fsmt common.document_fsmt NOT NULL DEFAULT 'PROPOSED'::common.document_fsmt,
  curr_fsmt_date timestamp with time zone NOT NULL DEFAULT now(),
  CONSTRAINT head_pkey PRIMARY KEY (id),
  CONSTRAINT head_gid_key UNIQUE (gid),
  CONSTRAINT head_check1 CHECK (document_date <= due_date),
  CONSTRAINT head_check2 CHECK (ship_to::text <> ship_from::text)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE demand.head
  OWNER TO postgres;

-- Trigger: disallow_editing_of_committed_document_head on demand.head

-- DROP TRIGGER disallow_editing_of_committed_document_head ON demand.head;

CREATE TRIGGER disallow_editing_of_committed_document_head
  BEFORE UPDATE OR DELETE
  ON demand.head
  FOR EACH ROW
  EXECUTE PROCEDURE common.disallow_editing_of_committed_document_head();

-- Trigger: set_prev_doc_fsmt on demand.head

-- DROP TRIGGER set_prev_doc_fsmt ON demand.head;

CREATE TRIGGER set_prev_doc_fsmt
  BEFORE UPDATE
  ON demand.head
  FOR EACH ROW
  EXECUTE PROCEDURE common.set_prev_doc_fsmt();

