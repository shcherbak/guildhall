--stride
-- Table: stride.consumable

-- DROP TABLE stride.consumable;

CREATE TABLE stride.consumable
(
-- Inherited from table stride.material:  information_id bigint NOT NULL,
-- Inherited from table stride.material:  part_code character varying NOT NULL,
-- Inherited from table stride.material:  version_num integer NOT NULL,
-- Inherited from table stride.material:  quantity common.quantity,
-- Inherited from table stride.material:  uom_code character varying NOT NULL DEFAULT 'pcs'::character varying,
-- Inherited from table stride.material:  material_type common.material_kind,
-- Inherited from table stride.material:  rationing_qty integer DEFAULT 1,
  CONSTRAINT consumable_pkey PRIMARY KEY (information_id, part_code),
  CONSTRAINT consumable_information_id_fkey FOREIGN KEY (information_id)
      REFERENCES stride.information (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num)
      REFERENCES inventory.consumable (part_code, version_num) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
INHERITS (stride.material)
WITH (
  OIDS=FALSE
);
ALTER TABLE stride.consumable
  OWNER TO postgres;



-- Table: stride.definition

-- DROP TABLE stride.definition;

CREATE TABLE stride.definition
(
  id bigserial NOT NULL,
  gid uuid NOT NULL DEFAULT uuid_generate_v1(),
  display_name character varying NOT NULL,
  version_num integer NOT NULL DEFAULT 1,
  published_date date NOT NULL DEFAULT now(),
  prev_fsmt common.document_fsmt,
  prev_fsmt_date time with time zone,
  curr_fsmt common.document_fsmt NOT NULL DEFAULT 'PROPOSED'::common.document_fsmt,
  curr_fsmt_date timestamp with time zone NOT NULL DEFAULT now(),
  information_id bigint,
  operation_code character varying,
  CONSTRAINT definition_pkey PRIMARY KEY (id),
  CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id)
      REFERENCES stride.information (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT definition_version_num_information_id_key UNIQUE (version_num, information_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE stride.definition
  OWNER TO postgres;





-- Table: stride.descendant

-- DROP TABLE stride.descendant;

CREATE TABLE stride.descendant
(
  definition_id bigint NOT NULL,
  part_code character varying,
  version_num integer,
  process_num integer,
  segment_num integer,
  operation_code character varying,
  CONSTRAINT descendant_pkey PRIMARY KEY (definition_id),
  CONSTRAINT descendant_definition_id_fkey FOREIGN KEY (definition_id)
      REFERENCES stride.definition (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT descendant_part_code_fkey FOREIGN KEY (part_code, version_num)
      REFERENCES inventory.producible (part_code, version_num) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE stride.descendant
  OWNER TO postgres;







-- Table: stride.equipment

-- DROP TABLE stride.equipment;

CREATE TABLE stride.equipment
(
  information_id bigint NOT NULL,
  equipment_code character varying NOT NULL,
  version_num integer,
  quantity common.quantity,
  uom_code character varying,
  CONSTRAINT equipment_pkey PRIMARY KEY (information_id, equipment_code),
  CONSTRAINT equipment_information_id_fkey FOREIGN KEY (information_id)
      REFERENCES stride.information (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE stride.equipment
  OWNER TO postgres;



-- Table: stride.facility

-- DROP TABLE stride.facility;

CREATE TABLE stride.facility
(
  definition_id bigint NOT NULL,
  facility_code character varying NOT NULL,
  CONSTRAINT facility_pkey PRIMARY KEY (definition_id, facility_code),
  CONSTRAINT facility_definition_id_fkey FOREIGN KEY (definition_id)
      REFERENCES stride.definition (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE stride.facility
  OWNER TO postgres;






-- Table: stride.information

-- DROP TABLE stride.information;

CREATE TABLE stride.information
(
  id bigserial NOT NULL,
  gid uuid NOT NULL DEFAULT uuid_generate_v1(),
  display_name character varying,
  published_date date NOT NULL DEFAULT now(),
  part_code character varying,
  version_num integer,
  process_num integer,
  segment_num integer,
  operation_code character varying,
  CONSTRAINT information_pkey PRIMARY KEY (id),
  CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num)
      REFERENCES inventory.producible (part_code, version_num) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE stride.information
  OWNER TO postgres;


-- Table: stride.material

-- DROP TABLE stride.material;

CREATE TABLE stride.material
(
  information_id bigint NOT NULL,
  part_code character varying NOT NULL,
  version_num integer NOT NULL,
  quantity common.quantity,
  uom_code character varying NOT NULL DEFAULT 'pcs'::character varying,
  material_type common.material_kind,
  rationing_qty integer DEFAULT 1,
  CONSTRAINT material_pkey PRIMARY KEY (information_id, part_code)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE stride.material
  OWNER TO postgres;




-- Table: stride.personnel

-- DROP TABLE stride.personnel;

CREATE TABLE stride.personnel
(
  information_id bigint NOT NULL,
  personnel_code character varying NOT NULL,
  version_num integer,
  rationing_qty integer NOT NULL DEFAULT 1,
  batch_qty integer,
  workers_qty integer NOT NULL DEFAULT 1,
  setup_time interval NOT NULL DEFAULT '00:01:00'::interval,
  piece_time interval NOT NULL DEFAULT '00:01:00'::interval,
  CONSTRAINT personnel_pkey PRIMARY KEY (information_id, personnel_code),
  CONSTRAINT personnel_information_id_fkey FOREIGN KEY (information_id)
      REFERENCES stride.information (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE stride.personnel
  OWNER TO postgres;



-- Table: stride.primal

-- DROP TABLE stride.primal;

CREATE TABLE stride.primal
(
-- Inherited from table stride.material:  information_id bigint NOT NULL,
-- Inherited from table stride.material:  part_code character varying NOT NULL,
-- Inherited from table stride.material:  version_num integer NOT NULL,
-- Inherited from table stride.material:  quantity common.quantity,
-- Inherited from table stride.material:  uom_code character varying NOT NULL DEFAULT 'pcs'::character varying,
-- Inherited from table stride.material:  material_type common.material_kind,
-- Inherited from table stride.material:  rationing_qty integer DEFAULT 1,
  CONSTRAINT primal_pkey PRIMARY KEY (information_id, part_code),
  CONSTRAINT primal_information_id_fkey FOREIGN KEY (information_id)
      REFERENCES stride.information (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num)
      REFERENCES inventory.primal (part_code, version_num) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
INHERITS (stride.material)
WITH (
  OIDS=FALSE
);
ALTER TABLE stride.primal
  OWNER TO postgres;



-- Table: stride.tooling

-- DROP TABLE stride.tooling;

CREATE TABLE stride.tooling
(
  information_id bigint NOT NULL,
  tooling_code character varying NOT NULL,
  version_num integer,
  quantity common.quantity,
  uom_code character varying,
  CONSTRAINT tooling_pkey PRIMARY KEY (information_id, tooling_code),
  CONSTRAINT tooling_information_id_fkey FOREIGN KEY (information_id)
      REFERENCES stride.information (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE stride.tooling
  OWNER TO postgres;







INSERT INTO
  inventory.information
    ( id, gid, part_code, display_name, published_date )
  VALUES
    ( 101, 'a711da30-fa3a-11e7-8e63-d4bed939923a', '11.31.050-001', '11с31п-50х40: information', '2018-01-15' ),
    ( 102, 'b39a3ff4-fa3a-11e7-8e64-d4bed939923a', '11.32.050-001', '11с32п-50х40: information', '2018-01-15' ),
    ( 103, 'f08b5682-fa3a-11e7-86da-d4bed939923a', '11.33.050-001', '11с33п-50х40: information', '2018-01-15' ),
    ( 104, '8236af18-eb1a-11e6-8a73-d4bed939923a', '80.31.050-001', 'xxxxxxxxxxxa: information', '2018-01-15' ),
    ( 105, 'f20d7196-01d1-11e7-b441-d4bed939923a', '72.01.009-001', 'xxxxxxxxxxxb: information', '2018-01-15' ),
    ( 106, '9b2952fa-01d1-11e7-b440-d4bed939923a', 'Гайка-М12-001', 'xxxxxxxxxxxc: information', '2018-01-15' );

INSERT INTO
  inventory.definition 
    ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id, uom_code )
  VALUES 
    ( 101, 'c9000ec8-fa3a-11e7-9489-d4bed939923a', '11.31.050-001', 1, '2018-01-10', NULL, NULL, 'DECOMMITTED', '2018-01-10', 101, 'pcs' ),
    ( 102, 'd83fb96a-fa3a-11e7-948a-d4bed939923a', '11.32.050-001', 1, '2018-01-15', NULL, NULL, 'COMMITTED', '2018-01-15', 102, 'pcs' ),
    ( 103, 'cf77e3ea-0b5c-4e62-be62-63704f4071b7', '11.32.050-001', 2, '2018-01-16', NULL, NULL, 'PROPOSED', '2018-01-16', 102, 'pcs' ),
    ( 104, 'c792f74d-7e6e-4577-ad69-987f56af7af7', '11.33.050-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 103, 'pcs' ),
    ( 105, '9b2952fa-01d1-11e7-b440-d4bed939923a', '80.31.050-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 104, 'pcs' ),
    ( 106, '8236af18-eb1a-11e6-8a73-d4bed939923a', '72.01.009-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 105, 'pcs' ),
    ( 107, 'f20d7196-01d1-11e7-b441-d4bed939923a', 'Гайка-М12-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 106, 'pcs' );

INSERT INTO
  inventory.producible
    ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
  VALUES
    ( '11.31.050-001', 1, '11с31п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 101 ),
    ( '11.32.050-001', 1, '11с32п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 102 ),
    ( '11.32.050-001', 2, '11с32п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 103 ),
    ( '11.33.050-001', 1, '11с32п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 104 ),
    ( '80.31.050-001', 1, '80с31п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 104 );

INSERT INTO
  inventory.part
    ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
  VALUES
    ( '72.01.009-001', 1, '72с01п-50х40: information', '2018-01-15', 'PART', 'pcs', 105 ),
    ( '80.31.050-001', 1, '80с31п-50х40: information', '2018-01-15', 'PART', 'pcs', 104 );

INSERT INTO
  inventory.consumable
    ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
  VALUES
    ( '72.01.009-001', 1, '72с01п-50х40: information', '2018-01-15', 'CONSUMABLE', 'pcs', 105 ),
    ( '80.31.050-001', 1, '80с31п-50х40: information', '2018-01-15', 'CONSUMABLE', 'pcs', 104 );

INSERT INTO
  inventory.primal
    ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
  VALUES
    ( 'Гайка-М12-001', 1, 'Гайка-М12-001: information', '2018-01-15', 'PRIMAL', 'pcs', 106 );


/*
*
*
*/


INSERT INTO
  inventory.information
    ( id, gid, part_code, display_name, published_date )
  VALUES
    ( 105, 'f20d7196-01d1-11e7-b441-d4bed939923a', '72.01.009-001', 'xxxxxxxxxxxb: information', '2018-01-15' );

INSERT INTO
  inventory.definition 
    ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id, uom_code )
  VALUES 
    ( 105, '8236af18-eb1a-11e6-8a73-d4bed939923a', '72.01.009-001', 1, '2018-01-17', NULL, NULL, 'COMMITTED', '2018-01-17', 105, 'pcs' );

INSERT INTO
  inventory.producible
    ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
  VALUES
    ( '72.01.009-001', 1, '72с01п-50х40: information', '2018-01-15', 'PRODUCIBLE', 'pcs', 105 );

INSERT INTO
  inventory.part
    ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
  VALUES
    ( '72.01.009-001', 1, '72с01п-50х40: information', '2018-01-15', 'PART', 'pcs', 105 );

INSERT INTO
  inventory.consumable
    ( part_code, version_num, display_name, published_date, inventory_type, uom_code, definition_id )
  VALUES
    ( '72.01.009-001', 1, '72с01п-50х40: information', '2018-01-15', 'CONSUMABLE', 'pcs', 105 );

INSERT INTO 
  stride.information
    ( id, gid, display_name, published_date, part_code, version_num, process_num, segment_num, operation_code )
  VALUES
    ( 101, '0f443d56-61f4-4523-b7a8-21e805889817', '72.01.009-001 #01', '2018-01-01', '72.01.009-001', 1, 1, 1, 'OPERATION-01' ),
    ( 102, 'cc93de3c-30d7-4435-b0f1-86ca4c4daf85', '72.01.009-001 #02', '2018-01-01', '72.01.009-001', 1, 1, 2, 'OPERATION-02' ),
    ( 103, '55001d01-3994-4067-86ba-d2a04cceb952', '72.01.009-001 #03', '2018-01-01', '72.01.009-001', 1, 1, 3, 'OPERATION-03' ),
    ( 104, 'e24df5fc-f439-455c-ab09-ad2f5f1095d2', '72.01.009-001 #04', '2018-01-01', '72.01.009-001', 1, 1, 4, 'OPERATION-04' ),
    ( 111, '442cd231-dc69-46b0-b1d4-a1d0eeae7728', '72.01.009-001 #11', '2018-01-01', '72.01.009-001', 1, 2, 1, 'OPERATION-11' ),
    ( 112, '9776e9da-7431-4019-8db3-62d5fa817ba8', '72.01.009-001 #12', '2018-01-01', '72.01.009-001', 1, 2, 2, 'OPERATION-12' ),
    ( 113, '1c4bde5d-266b-4848-bb0b-3deb9c81b78e', '72.01.009-001 #13', '2018-01-01', '72.01.009-001', 1, 2, 3, 'OPERATION-13' ),
    ( 114, 'ca7d9fcc-b494-4e0d-b180-d7241283bf0f', '72.01.009-001 #14', '2018-01-01', '72.01.009-001', 1, 2, 4, 'OPERATION-14' );

INSERT INTO 
  stride.definition
    ( id, gid, display_name, version_num, published_date, prev_fsmt, prev_fsmt_date, curr_fsmt, curr_fsmt_date, information_id, operation_code )
  VALUES
    ( 201, '10b6043c-455d-4644-8e5a-790d9ed36a86', '72.01.009-001 #01', 1, '2018-01-01', NULL, NULL, 'PROPOSED', '2018-01-01', 101, 'OPERATION-01' ),
    ( 202, 'a8627dc7-8584-4cc5-9e6d-4cf8594f23e0', '72.01.009-001 #02', 1, '2018-01-01', NULL, NULL, 'PROPOSED', '2018-01-01', 102, 'OPERATION-02' ),
    ( 203, '63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a', '72.01.009-001 #03', 1, '2018-01-01', NULL, NULL, 'PROPOSED', '2018-01-01', 103, 'OPERATION-03' ),
    ( 204, '3709941e-5878-4878-9711-68da8137185c', '72.01.009-001 #04', 1, '2018-01-01', NULL, NULL, 'PROPOSED', '2018-01-01', 104, 'OPERATION-04' ),
    ( 211, '5e6bfc1e-ada4-4148-a752-d08af11086fa', '72.01.009-001 #11', 1, '2018-01-01', NULL, NULL, 'PROPOSED', '2018-01-01', 111, 'OPERATION-11' ),
    ( 212, 'c38bef1b-1290-4562-be96-5b89af257887', '72.01.009-001 #12', 1, '2018-01-01', NULL, NULL, 'PROPOSED', '2018-01-01', 112, 'OPERATION-12' ),
    ( 213, '6b4159e1-e84d-454c-a2c4-daa438a643d1', '72.01.009-001 #13', 1, '2018-01-01', NULL, NULL, 'PROPOSED', '2018-01-01', 113, 'OPERATION-13' ),
    ( 214, '9752ad0a-1c4f-40d3-bffe-f78933ee0398', '72.01.009-001 #14', 1, '2018-01-01', NULL, NULL, 'PROPOSED', '2018-01-01', 114, 'OPERATION-14' );


INSERT INTO 
  stride.descendant
    ( definition_id, part_code, version_num, process_num, segment_num, operation_code )
  VALUES
    ( 201, '72.01.009-001', 1, 1, 2, 'OPERATION-02' ),
    ( 202, '72.01.009-001', 1, 1, 3, 'OPERATION-03' ),
    ( 203, '72.01.009-001', 1, 1, 4, 'OPERATION-04' ),
    --( 204, '72.01.009-001', 1, 1, 2, 'OPERATION-02' ),
    ( 211, '72.01.009-001', 1, 2, 2, 'OPERATION-12' ),
    ( 212, '72.01.009-001', 1, 2, 3, 'OPERATION-13' ),
    ( 213, '72.01.009-001', 1, 2, 4, 'OPERATION-14' );
    --( 214, '72.01.009-001', 1, 2, 4, 'OPERATION-04' );

INSERT INTO
  stride.facility
    ( definition_id, facility_code )
  VALUES
    ( 201, 'F1-01' ),
    ( 202, 'F1-02' ),
    ( 203, 'F2-01' ),
    ( 204, 'F2-02' ),
    ( 211, 'F1-01' ),
    ( 212, 'F1-02' ),
    ( 213, 'F2-01' ),
    ( 214, 'F2-02' );



SELECT 
  information.part_code, 
  information.version_num, 
  information.process_num, 
  information.segment_num, 
  facility.facility_code, 
  definition.gid
FROM 
  stride.facility, 
  stride.definition, 
  stride.descendant, 
  stride.information
WHERE 
  definition.id = facility.definition_id AND
  definition.id = descendant.definition_id AND
  information.id = definition.information_id AND
  descendant.segment_num = 0 AND 
  information.part_code = '72.01.009-001' AND 
  information.version_num = 1 AND
  1 = 1;

select ARRAY[ARRAY['a', 'b']::character varying[], ARRAY['a', 'b']::character varying[]]

CREATE TYPE common.route_segment AS
   (gid uuid,
    facility_code character varying,
    ancestor uuid,
    descendant uuid);
ALTER TYPE common.route_segment
  OWNER TO postgres;
CREATE TYPE common.vertex_specification AS
   (part_code character varying,
    version_num integer,
    process_num integer,
    segment_num integer,
    operation_code character varying,
    quantity common.quantity,
    uom_code character varying,
    material_type common.material_kind);
ALTER TYPE common.vertex_specification
  OWNER TO postgres;

CREATE OR REPLACE FUNCTION stride.get_path(__part_code character varying, __version_num integer, __process_num integer)
  RETURNS common.vertex_specification[] AS
$BODY$
DECLARE
  _root common.vertex_specification;
  _path common.vertex_specification[];
BEGIN
  _root := (information.part_code, 
            information.version_num, 
            information.process_num, 
            information.segment_num,
            'OP-CODE',
            1.0,
            'pc',
            'PRODUCIBLE')::common.vertex_specification
            --facility.facility_code, 
            --definition.gid
          FROM 
            --stride.facility, 
            stride.definition, 
            stride.descendant, 
            stride.information
          WHERE 
            --definition.id = facility.definition_id AND
            definition.id = descendant.definition_id AND
            information.id = definition.information_id AND
            descendant.segment_num = 0 AND 
            information.part_code = __part_code AND 
            information.version_num = __version_num AND
            information.process_num = __process_num AND
            1 = 1;

  PERFORM array_append(_path, _root);

/*

*/

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION stride.get_path(character varying, integer, integer)
  OWNER TO postgres;

'72.01.009-001';1;1;1;'F1-01';'10b6043c-455d-4644-8e5a-790d9ed36a86'
'72.01.009-001';1;1;2;'F1-02';'a8627dc7-8584-4cc5-9e6d-4cf8594f23e0'
'72.01.009-001';1;1;3;'F2-01';'63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a'
'72.01.009-001';1;1;4;'F2-02';'3709941e-5878-4878-9711-68da8137185c'
'72.01.009-001';1;2;1;'F1-01';'9ce5fa8a-db5a-406f-b67c-deaf0f4b56d4'
'72.01.009-001';1;2;1;'F3-01';'975adc5f-7ff2-4914-94ea-fcca36245110'
'72.01.009-001';1;2;1;'F4-01';'5e6bfc1e-ada4-4148-a752-d08af11086fa'
'72.01.009-001';1;2;2;'F1-02';'c38bef1b-1290-4562-be96-5b89af257887'
'72.01.009-001';1;2;3;'F2-01';'6b4159e1-e84d-454c-a2c4-daa438a643d1'
'72.01.009-001';1;2;4;'F2-02';'9752ad0a-1c4f-40d3-bffe-f78933ee0398'

R-1-100
'72.01.009-001';1;1;4;'F2-02';'3709941e-5878-4878-9711-68da8137185c'
'72.01.009-001';1;1;3;'F2-01';'63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a'
'72.01.009-001';1;1;2;'F1-02';'a8627dc7-8584-4cc5-9e6d-4cf8594f23e0'
'72.01.009-001';1;1;1;'F1-01';'10b6043c-455d-4644-8e5a-790d9ed36a86'

R-2-110
'72.01.009-001';1;2;4;'F2-02';'9752ad0a-1c4f-40d3-bffe-f78933ee0398'
'72.01.009-001';1;2;3;'F2-01';'6b4159e1-e84d-454c-a2c4-daa438a643d1'
'72.01.009-001';1;2;2;'F1-02';'c38bef1b-1290-4562-be96-5b89af257887'
'72.01.009-001';1;2;1;'F1-01';'9ce5fa8a-db5a-406f-b67c-deaf0f4b56d4'

R-3-200
'72.01.009-001';1;2;4;'F2-02';'9752ad0a-1c4f-40d3-bffe-f78933ee0398'
'72.01.009-001';1;2;3;'F2-01';'6b4159e1-e84d-454c-a2c4-daa438a643d1'
'72.01.009-001';1;2;2;'F1-02';'c38bef1b-1290-4562-be96-5b89af257887'
'72.01.009-001';1;2;1;'F3-01';'9ce5fa8a-db5a-406f-b67c-deaf0f4b56d4'

R-4-300
'72.01.009-001';1;2;4;'F2-02';'9752ad0a-1c4f-40d3-bffe-f78933ee0398'
'72.01.009-001';1;2;3;'F2-01';'6b4159e1-e84d-454c-a2c4-daa438a643d1'
'72.01.009-001';1;2;2;'F1-02';'c38bef1b-1290-4562-be96-5b89af257887'
'72.01.009-001';1;2;1;'F4-01';'9ce5fa8a-db5a-406f-b67c-deaf0f4b56d4'

select stride.get_tree_root(__part_code character varying, __version_num integer, __process_num integer); --return common.vertex_specification
select stride.get_tree_ancestors(__part_code character varying, __version_num integer, __process_num integer); --return common.vertex_specification[]
select stride.get_tree_descendants(__part_code character varying, __version_num integer, __process_num integer); --return common.vertex_specification[]








































