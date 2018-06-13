CREATE TABLE stride.phantom
(
  part_code character varying NOT NULL,
  version_num integer NOT NULL DEFAULT 1,
  stride_code character varying  NOT NULL DEFAULT '000',
  display_name character varying NOT NULL,
  published_date date NOT NULL DEFAULT now(),
  stride_type common.inventory_kind NOT NULL,
  uom_code character varying,
  CONSTRAINT phantom_pkey PRIMARY KEY (part_code, version_num, stride_code),
  CONSTRAINT phantom_stride_type_check CHECK (stride_type = 'PHANTOM'::common.inventory_kind)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE stride.phantom
  OWNER TO postgres;
COMMENT ON TABLE stride.phantom
  IS 'stride definition';
