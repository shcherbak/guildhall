-- Table: process.operation

-- DROP TABLE process.operation;

CREATE TABLE process.operation
(
  segment_id bigint NOT NULL,
  operation_id character varying NOT NULL,
  descr character varying,
  CONSTRAINT operation_pkey PRIMARY KEY (segment_id, operation_id),
  CONSTRAINT operation_segment_id_fkey FOREIGN KEY (segment_id)
      REFERENCES process.segment (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE process.operation
  OWNER TO postgres;


CREATE TYPE common.process_head AS ( --operation_head
  document_id bigint,
  gid uuid,
  display_name character varying,
  version_num integer,
  document_date date,
  curr_fsmt common.document_fsmt,
  document_type common.document_kind,
  producible_spec common.material_specification[]
);


CREATE TYPE common.process_segment AS (
  gid uuid,
  operation_spec common.operation_specification[]
  consumable_spec  common.consumable_specification[],
  personnel_spec common.personnel_specification[],
  equipmet_spec  common.equipment_specification[],
  tooling_spec   common.tooling_specification[]
);


CREATE TYPE common.process_document AS (
  head common.process_head,
  body common.process_segment[],
  deps common.dependency_specification[]
  maps common.physical_maping[]
);

CREATE TYPE common.physical_maping AS (
  process_id bigint,
  location_code character varying[]
);
