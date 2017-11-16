CREATE TABLE mbom.numerator
(
  facility_code character varying NOT NULL,
  julianized_week integer NOT NULL,
  current_value integer NOT NULL DEFAULT 0,
  CONSTRAINT numerator_pkey PRIMARY KEY (facility_code, julianized_week)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE mbom.numerator
  OWNER TO postgres;