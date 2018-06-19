CREATE TYPE common.vertex_specification AS
   (part_code character varying,
    version_num integer,
    process_num integer,
    segment_num integer,
    quantity common.quantity,
    uom_code character varying,
    material_type common.material_kind);
ALTER TYPE common.material_specification
  OWNER TO postgres;

 CREATE TYPE common.stride_head AS
   (document_id bigint,
    gid uuid,
    display_name character varying,
    version_num integer,
    document_date date,
    curr_fsmt common.document_fsmt,
    document_type common.document_kind,
    ancestor_spec common.vertex_specification,
    descendant_spec common.vertex_specification);
ALTER TYPE common.mbom_head
  OWNER TO postgres;


CREATE TYPE common.production_segment AS
   (gid uuid,
    operation_code character varying,
    consumable_spec common.consumable_specification[],
    personnel_spec common.personnel_specification[],
    equipmet_spec common.equipment_specification[],
    tooling_spec common.tooling_specification[]);
ALTER TYPE common.production_segment
  OWNER TO postgres;

