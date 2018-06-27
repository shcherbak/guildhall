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

CREATE TYPE common.node AS
   (gid uuid,
    facility_code character varying,
    part_code character varying,
    version_num integer,
    process_num integer,
    segment_num integer);
ALTER TYPE common.node
  OWNER TO postgres;

CREATE OR REPLACE FUNCTION stride.get_node_top(__part_code character varying, __version_num integer, __process_num integer)
  RETURNS common.node[] AS
$BODY$
BEGIN
  RETURN
    ARRAY(
      SELECT
        (definition.gid, 
        facility.facility_code, 
        information.part_code, 
        information.version_num, 
        information.process_num, 
        information.segment_num)::common.node
      FROM 
        stride.information, 
        stride.definition,  
        stride.facility
      WHERE 
        information.id = definition.information_id AND
        definition.id = facility.definition_id AND
        information.part_code = __part_code AND 
        information.version_num = __version_num AND
        information.process_num = __process_num AND
        NOT EXISTS (
          SELECT 
            definition_id 
          FROM 
            stride.descendant
          WHERE
            definition_id = definition.id 
        )
    );

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION stride.get_node_root(character varying, integer, integer)
  OWNER TO postgres;

CREATE OR REPLACE FUNCTION stride.get_node_children(__part_code character varying, __version_num integer, __process_num integer, __segment_num integer)
  RETURNS common.node[] AS
$BODY$
BEGIN
  RETURN
    ARRAY(
      SELECT 
        (definition_child.gid, 
        facility.facility_code, 
        information_child.part_code, 
        information_child.version_num, 
        information_child.process_num, 
        information_child.segment_num)::common.node
      FROM 
        stride.information information_parent, 
        stride.information information_child, 
        stride.definition definition_parent, 
        stride.descendant, 
        stride.definition definition_child, 
        stride.facility
      WHERE 
        information_parent.id = definition_parent.information_id AND
        information_child.id = definition_child.information_id AND
        definition_parent.id = descendant.definition_id AND
        descendant.part_code = information_child.part_code AND
        descendant.version_num = information_child.version_num AND
        descendant.process_num = information_child.process_num AND
        descendant.segment_num = information_child.segment_num AND
        definition_child.id = facility.definition_id AND
        information_parent.part_code = __part_code AND 
        information_parent.version_num = __version_num AND 
        information_parent.process_num = __process_num AND 
        information_parent.segment_num = __segment_num
    );

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION stride.get_node_root(character varying, integer, integer, integer)
  OWNER TO postgres;

CREATE OR REPLACE FUNCTION stride.get_node_parents(__part_code character varying, __version_num integer, __process_num integer, __segment_num integer)
  RETURNS common.node[] AS
$BODY$
BEGIN
  RETURN
    ARRAY(
      SELECT 
        (definition_parent.gid, 
        facility.facility_code, 
        information_parent.part_code, 
        information_parent.version_num, 
        information_parent.process_num, 
        information_parent.segment_num)::commmon.node
      FROM 
        stride.information information_child, 
        stride.descendant, 
        stride.definition definition_parent, 
        stride.information information_parent, 
        stride.facility
      WHERE 
        information_child.part_code = descendant.part_code AND
        information_child.version_num = descendant.version_num AND
        information_child.process_num = descendant.process_num AND
        information_child.segment_num = descendant.segment_num AND
        definition_parent.id = descendant.definition_id AND
        definition_parent.id = facility.definition_id AND
        information_parent.id = definition_parent.information_id AND
        information_child.part_code = __part_code AND 
        information_child.version_num = __version_num AND 
        information_child.process_num = __process_num AND 
        information_child.segment_num = __segment_num
    );

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION stride.get_node_parents(character varying, integer, integer, integer)
  OWNER TO postgres;

  PERFORM array_append(_path, _root);


CREATE OR REPLACE FUNCTION stride.get_path()
  RETURNS void AS
$BODY$
DECLARE
  _roots common.node[];
  _root common.node;
  _node common.node;
  _prev_node common.node;
  _parents common.node[];
  _parent common.node;
  _cnt int := 1;
  counter INTEGER := 0; 
  _BIG common.node[][];
  _element common.node[];
  _i int := 1;
  _a int := 1;
BEGIN

  _roots := stride.get_node_root('72.01.009-001', 1, 1);
  --RAISE NOTICE '_roots = %', _roots;


  foreach _root in array _roots loop

    _node := _root;
    RAISE NOTICE '_node #%', _node;

    _BIG = _BIG || _node;
    --RAISE NOTICE '_BIG #%', _BIG;

    _parents := stride.get_node_parents(_node.part_code, _node.version_num, _node.process_num, _node.segment_num);

    WHILE array_length(_parents, 1) > 0 LOOP
   
      /*_node := _parents[1];
      RAISE NOTICE '_parent #%', _node;
      _parents := stride.get_node_parents(_node.part_code, _node.version_num, _node.process_num, _node.segment_num);*/
      --RAISE NOTICE '_parents #%', _parents;

      --RAISE NOTICE '_parents_lenght #%', array_length(_parents, 1); 


      foreach _parent in array _parents loop
        _prev_node := _node;
        _node := _parent;
        RAISE NOTICE '_parent #%', _node;


        if array_length(_parents, 1) > 1 then

          FOR _i IN 1..(array_length(_parents, 1) - 1) LOOP

            for _a IN 1..array_length(_BIG, 1) LOOP

              if _BIG[_a] = _prev_node then
                _BIG = array_append(_BIG, _BIG[_a]);
                RAISE NOTICE '_BIG: %', _BIG;
              end if;
      
            end loop;

          end loop;
        end if;

        for _a IN 1..array_length(_BIG, 1) LOOP

          if _BIG[_a][array_upper(_BIG[_a], 1)] = _prev_node then

          _BIG[_a] := _BIG[_a] || _parent;
          RAISE NOTICE '_BIG: %', _BIG;

          end if;

        end loop;

        /*FOR _i IN 1..array_length(_BIG, 1) LOOP
        RAISE NOTICE 'Counter: %', _i;

        if _BIG[_i] = _parent then
        RAISE NOTICE 'equals';
        end if;
        END LOOP;*/

        

        --if array_length(_parents, 1) > 1 THEN
        --RAISE NOTICE 'NOTICE#1';
        --end loop;
        --end if;
          


        _parents := stride.get_node_parents(_node.part_code, _node.version_num, _node.process_num, _node.segment_num);
      end loop;
   
    end loop;

    _cnt := _cnt + 1;
  end loop;
  



  /*
  _parents := stride.get_node_parents(_node.part_code, _node.version_num, _node.process_num, _node.segment_num);
  RAISE NOTICE '_parents #%', _parents;

  _node := _parents[1];
  RAISE NOTICE '_parent #%', _node;

  _parents := stride.get_node_parents(_node.part_code, _node.version_num, _node.process_num, _node.segment_num);
  RAISE NOTICE '_parents #%', _parents;

  _node := _parents[1];
  RAISE NOTICE '_parent #%', _node;


  _parents := stride.get_node_parents(_node.part_code, _node.version_num, _node.process_num, _node.segment_num);
  RAISE NOTICE '_parents #%', _parents;

  _node := _parents[1];
  RAISE NOTICE '_parent #%', _node;


  _parents := stride.get_node_parents(_node.part_code, _node.version_num, _node.process_num, _node.segment_num);
  RAISE NOTICE '_parents #%', _parents;

  _node := _parents[1];
  RAISE NOTICE '_parent #%', _node;

*/


  /*WHILE array_length(_parents, 1) > 0 LOOP
  _node := stride.get_node_parents(_parents[1].part_code, _parents[1].version_num, _parents[1].process_num, _parents[1].segment_num);
  _parents := stride.get_node_parents(_node.part_code, _node.version_num, _node.process_num, _node.segment_num);
  END LOOP;*/

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;


create or replace function stride.recursive_function (ct int, pr int)
returns table (counter int, product int)
language plpgsql
as $$
begin
    return query select ct, pr;
    if ct < 10 then
        return query select * from stride.recursive_function(ct+ 1, pr * (ct+ 1));
    end if;
end $$;

create or replace function stride.loop_function ()
returns table (counter int, product int)
language plpgsql
as $$
declare
    ct int;
    pr int = 1;
begin
    for ct in 1..10 loop
        pr = ct* pr;
        return query select ct, pr;
    end loop;
end $$;





  FOREACH _node IN
    ARRAY _root
  LOOP

    _cnt := _cnt + 1;
    RAISE NOTICE 'LOOP #%', _cnt;

    RAISE NOTICE '_node #%', _node;

    --_parents := stride.get_node_parents(_node.part_code, _node.version_num, _node.process_num, _node.segment_num);
    /*
    WHILE array_length(_parents, 1) > 0 LOOP
      _parents := stride.get_node_parents(_node.part_code, _node.version_num, _node.process_num, _node.segment_num);
      RAISE NOTICE '_parents = %', _parents;
    END LOOP ; 
    */
    /*counter := 0;
    WHILE counter <= 10 LOOP
    counter := counter + 1 ; 
    RAISE NOTICE 'counter #%', counter;
    END LOOP ;*/

    _parents := stride.get_node_parents(_node.part_code, _node.version_num, _node.process_num, _node.segment_num);
    RAISE NOTICE '_parents = %', _parents;

    WHILE _array_length(_parents, 1) > 0  loop
      counter := counter + 1;
      RAISE NOTICE 'counter = %', counter;

      _parents := stride.get_node_parents(_node.part_code, _node.version_num, _node.process_num, _node.segment_num);
      RAISE NOTICE '_parents = %', _parents;

      FOREACH _parent IN ARRAY _parents LOOP
        _parents := stride.get_node_parents(_parent.part_code, _parent.version_num, _parent.process_num, _parent.segment_num);
        RAISE NOTICE '_parents = %', _parents;
      END LOOP;


    END LOOP;
    
  END LOOP;



            NOTICE:  _node #(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)
            NOTICE:  _parent #(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)
            NOTICE:  _parent #(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,F1-02,72.01.009-001,1,1,2)
            NOTICE:  _parent #(10b6043c-455d-4644-8e5a-790d9ed36a86,F1-01,72.01.009-001,1,1,1)

            NOTICE:  _node #(3709941e-5878-4878-9711-68da8137185c,F4-01,72.01.009-001,1,1,4)
            NOTICE:  _parent #(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)
            NOTICE:  _parent #(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,F1-02,72.01.009-001,1,1,2)
            NOTICE:  _parent #(10b6043c-455d-4644-8e5a-790d9ed36a86,F1-01,72.01.009-001,1,1,1)

[QUERY    ] select stride.get_path()
            NOTICE:  _roots = {"(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)","(3709941e-5878-4878-9711-68da8137185c,F4-01,72.01.009-001,1,1,4)"}
            
            NOTICE:  _node #(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)
            NOTICE:  _parent #(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)
            NOTICE:  _parent #(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F4-01,72.01.009-001,1,1,3)
            NOTICE:  _parent #(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,F1-02,72.01.009-001,1,1,2)
            NOTICE:  _parent #(10b6043c-455d-4644-8e5a-790d9ed36a86,F1-01,72.01.009-001,1,1,1)
            
            NOTICE:  _node #(3709941e-5878-4878-9711-68da8137185c,F4-01,72.01.009-001,1,1,4)
            NOTICE:  _parent #(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)
            NOTICE:  _parent #(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F4-01,72.01.009-001,1,1,3)
            NOTICE:  _parent #(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,F1-02,72.01.009-001,1,1,2)
            NOTICE:  _parent #(10b6043c-455d-4644-8e5a-790d9ed36a86,F1-01,72.01.009-001,1,1,1)



            NOTICE:  _node #(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)
            NOTICE:  _parent #(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F4-01,72.01.009-001,1,1,3)
            NOTICE:  _parent #(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,F1-02,72.01.009-001,1,1,2)
            NOTICE:  _parent #(10b6043c-455d-4644-8e5a-790d9ed36a86,F1-01,72.01.009-001,1,1,1)
            
            NOTICE:  _node #(3709941e-5878-4878-9711-68da8137185c,F4-01,72.01.009-001,1,1,4)
            NOTICE:  _parent #(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F4-01,72.01.009-001,1,1,3)
            NOTICE:  _parent #(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,F1-02,72.01.009-001,1,1,2)
            NOTICE:  _parent #(10b6043c-455d-4644-8e5a-790d9ed36a86,F1-01,72.01.009-001,1,1,1)


            NOTICE:  _node #(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)
            NOTICE:  _parent #(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)
            NOTICE:  _parent #(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,F1-02,72.01.009-001,1,1,2)
            NOTICE:  _parent #(10b6043c-455d-4644-8e5a-790d9ed36a86,F1-01,72.01.009-001,1,1,1)
            
            NOTICE:  _node #(3709941e-5878-4878-9711-68da8137185c,F4-01,72.01.009-001,1,1,4)
            NOTICE:  _parent #(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)
            NOTICE:  _parent #(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,F1-02,72.01.009-001,1,1,2)
            NOTICE:  _parent #(10b6043c-455d-4644-8e5a-790d9ed36a86,F1-01,72.01.009-001,1,1,1)




[QUERY    ] select stride.get_path()
            NOTICE:  _node #(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)
            NOTICE:  _parent #(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)
            NOTICE:  _BIG: {"(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)","(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)"}
            NOTICE:  _parent #(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F4-01,72.01.009-001,1,1,3)
            NOTICE:  else
            NOTICE:  _parent #(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,F1-02,72.01.009-001,1,1,2)
            NOTICE:  else
            NOTICE:  _parent #(10b6043c-455d-4644-8e5a-790d9ed36a86,F1-01,72.01.009-001,1,1,1)
            NOTICE:  else
            NOTICE:  _node #(3709941e-5878-4878-9711-68da8137185c,F4-01,72.01.009-001,1,1,4)
            NOTICE:  _parent #(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)
            NOTICE:  _BIG: {"(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)","(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)","(3709941e-5878-4878-9711-68da8137185c,F4-01,72.01.009-001,1,1,4)","(3709941e-5878-4878-9711-68da8137185c,F4-01,72.01.009-001,1,1,4)"}
            NOTICE:  _parent #(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F4-01,72.01.009-001,1,1,3)
            NOTICE:  else
            NOTICE:  _parent #(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,F1-02,72.01.009-001,1,1,2)
            NOTICE:  else
            NOTICE:  _parent #(10b6043c-455d-4644-8e5a-790d9ed36a86,F1-01,72.01.009-001,1,1,1)
            NOTICE:  else








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
















CREATE TABLE stride.employees (
 employee_id serial PRIMARY KEY,
 full_name VARCHAR NOT NULL,
 manager_id INT
);

INSERT INTO stride.employees (
 employee_id,
 full_name,
 manager_id
)
VALUES
 (1, 'Michael North', NULL),
 (2, 'Megan Berry', 1),
 (3, 'Sarah Berry', 1),
 (4, 'Zoe Black', 1),
 (5, 'Tim James', 1),
 (6, 'Bella Tucker', 2),
 (7, 'Ryan Metcalfe', 2),
 (8, 'Max Mills', 2),
 (9, 'Benjamin Glover', 2),
 (10, 'Carolyn Henderson', 3),
 (11, 'Nicola Kelly', 3),
 (12, 'Alexandra Climo', 3),
 (13, 'Dominic King', 3),
 (14, 'Leonard Gray', 4),
 (15, 'Eric Rampling', 4),
 (16, 'Piers Paige', 7),
 (17, 'Ryan Henderson', 7),
 (18, 'Frank Tucker', 8),
 (19, 'Nathan Ferguson', 8),
 (20, 'Kevin Rampling', 8);

 WITH RECURSIVE subordinates AS (
 SELECT
 employee_id,
 manager_id,
 full_name
 FROM
 stride.employees
 WHERE
 employee_id = 2
 UNION
 SELECT
 e.employee_id,
 e.manager_id,
 e.full_name
 FROM
 sride.employees e
 INNER JOIN subordinates s ON s.employee_id = e.manager_id
) SELECT
 *
FROM
 subordinates;


 WITH RECURSIVE subordinates AS (
  SELECT * from stride.get_node_parents('72.01.009-001',1,1,4)
  UNION
  SELECT
  e.employee_id,
  e.manager_id,
  e.full_name
  FROM
  sride.employees e
  INNER JOIN subordinates s ON s.employee_id = e.manager_id
) SELECT
 *
FROM
 subordinates;




















