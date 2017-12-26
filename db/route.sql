/*
route:
	gid: 'ef5e95b6-d24a-11e7-b8ee-d4bed939923a'
	ancestor[]:
		part_code: 22.16.050-001.010
		version_num: 1
	descendant:
		part_code: 22.16.050-001
		version_num: 1
	site[]:
		location_code: A1
		location_code: B1
*/

CREATE TYPE common.route_segment AS (
	descendant_spec common.material_specification,
	ancestor_spec common.material_specification[],
	location_spec character varying[]  
);

CREATE TYPE common.route_head AS (
  document_id bigint,
  gid uuid,
  display_name character varying,
  version_num integer,
  document_date date,
  curr_fsmt common.document_fsmt,
  document_type common.document_kind,
  descendant_spec common.material_specification
);

CREATE TYPE common.route_document AS (
  head common.route_head,
  body common.route_segment[],
);



