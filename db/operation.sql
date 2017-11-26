-- for producible
CREATE TYPE common.material_specification AS (
  part_code   character varying,
  version_num integer,
  quantity    common.quantity,
  uom_code    character varying,
  material_type common.material_kind
);


CREATE TYPE common.material_oper AS (
  part_code character varying,
  version_num integer,
  material_type common.material_kind
  consumed_qty common.quantity,
  consumed_uom character varying,
  rationing_qty common.quantity,
  rationing_uom character varying,
);

CREATE TYPE common.personnel_oper AS (
  personnel_code character varying,
  version_num integer,
  simultaneously_qty integer,
  simultaneously_uom character varying,
  batch_qty common.quantity,
  batch_uom character varying,
  time_per_piece_ratio common.quantity,
  standard_setup_time interval,
  standard_piece_time interval,
  workers_qty integer,
  rationing_qty common.quantity,
  rationing_uom character varying,
);


/*
CREATE TYPE common.personnel_specification AS (
  personnel_code  character varying,
  version_num     integer,
  quantity        common.quantity,
  uom_code        character varying
);
*/

CREATE TYPE common.equipment_specification AS (
  equipment_code  character varying,
  version_num     integer,
  quantity        common.quantity,
  uom_code        character varying
);


CREATE TYPE common.tooling_specification AS (
  tooling_code  character varying,
  version_num   integer,
  quantity      common.quantity,
  uom_code      character varying
);



CREATE TYPE common.operation_segment AS (
  gid uuid,
  operation_code character varying,
  --material_spec  common.material_specification[],
  personnel_spec common.personnel_specification[],
  equipmet_spec  common.equipment_specification[],
  tooling_spec   common.tooling_specification[]
);


CREATE TYPE common.operation_head AS (
  document_id bigint,
  gid uuid,
  display_name character varying,
  version_num integer,
  document_date date,
  curr_fsmt common.document_fsmt,
  document_type common.document_kind,
  producible_spec common.material_specification[]
);



CREATE TYPE common.dependency_specification AS (
  ancestor uuid,
  descendant uuid,
  depth int
);


CREATE TYPE common.operation_document AS (
  head common.operation_head,
  body common.operation_segment[],
  deps common.dependency_specification[]
);