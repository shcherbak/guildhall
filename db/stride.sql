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
ALTER FUNCTION stride.get_node_top(character varying, integer, integer)
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
        information_parent.segment_num)::common.node
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

  _roots := stride.get_node_top('72.01.009-001', 1, 1);
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


CREATE OR REPLACE FUNCTION stride.test()
  RETURNS void AS
$BODY$
DECLARE
_arr int[][];
_arr_unnest int[];
BEGIN

_arr = ARRAY[ ARRAY[ 21, 22, 23 ], ARRAY[ 11 ,12, 13 ] , ARRAY [ 31, 32, 33, 34 ] ];

RAISE NOTICE '_arr: %', _arr;
RAISE NOTICE '_arr[1:1]: %', _arr[1:1];
RAISE NOTICE '_arr[1:2]: %', _arr[1:2];
RAISE NOTICE '_arr[1:3]: %', _arr[1:3];
RAISE NOTICE '_arr[1:2][1:3]: %', _arr[1:2][1:3];
RAISE NOTICE '_arr[1:2][2:3]: %', _arr[1:2][2:3];
RAISE NOTICE '_arr[2:2][2:3]: %', _arr[2:2][2:3];
RAISE NOTICE '_arr[1:]: %', _arr[1:];
RAISE NOTICE '_arr[:1]: %', _arr[:1];
RAISE NOTICE '_arr[2:]: %', _arr[2:];
RAISE NOTICE '_arr[:2]: %', _arr[:2];
RAISE NOTICE '_arr[1]: %', _arr[1:1];
RAISE NOTICE '_arr[2]: %', _arr[2:2];
RAISE NOTICE '_arr[3]: %', _arr[3:3];
RAISE NOTICE 'array_ndims(_arr): %', array_ndims(_arr);
RAISE NOTICE 'array_dims(_arr): %', array_dims(_arr);



END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION stride.test()
  OWNER TO postgres;


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
  _new common.node[];
  _cnt int := 1;
  counter INTEGER := 0; 
  _BIG common.node[][];
  _element common.node[];
  _i int := 1;
  _a int := 1;
  _r record;
BEGIN

  _roots := stride.get_node_top('72.01.009-001', 1, 1);
  RAISE NOTICE '_roots = %', _roots;


  foreach _root in array _roots loop

    _node := _root;
    RAISE NOTICE '_node #%', _node;

    insert into stride.t1 values (DEFAULT, ARRAY[(_node)]::common.node[]);

    _parents := stride.get_node_parents(_node.part_code, _node.version_num, _node.process_num, _node.segment_num);

    WHILE array_length(_parents, 1) > 0 LOOP

      foreach _parent in array _parents loop
        _prev_node := _node;
        _node := _parent;
        RAISE NOTICE '_parent #%', _node;


        if array_length(_parents, 1) > 1 then

          FOR _i IN 1..(array_length(_parents, 1) - 1) LOOP

            for _r IN select * from stride.t1 LOOP

              raise notice '_r.s1 %', _r.s1;
              raise notice '_prev_node %', _prev_node;
              _element := _r.s1;

              -- если послений текущий элемент в таблище равен предыдущему обработаному,
              -- копируем весь путь
              if _element[array_upper(_element, 1)] = _prev_node then
                insert into stride.t1 values (DEFAULT, _element);
              end if;
      
            end loop;

          end loop;
        end if;

            for _r IN select * from stride.t1 LOOP

              raise notice '_r.s1 %', _r.s1;
              raise notice '_prev_node %', _prev_node;
              _element := _r.s1;
              -- послений элемент в таблице равен предыдущему обработаному,
              -- добавляем элемент в путь
              if _element[array_upper(_element, 1)] = _prev_node then
                _new := array_append(_element, _parent);
                update stride.t1 set s1 = _new where id = _r.id;
              end if;
      
            end loop;


        _parents := stride.get_node_parents(_node.part_code, _node.version_num, _node.process_num, _node.segment_num);
      end loop;
   
    end loop;

    _cnt := _cnt + 1;
  end loop;
  
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;


{
"(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)",
"(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)",
"(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,F1-02,72.01.009-001,1,1,2)",
"(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,G1-01,72.01.009-001,1,1,2)",
"(10b6043c-455d-4644-8e5a-790d9ed36a86,F1-01,72.01.009-001,1,1,1)"
}

{
"(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)",
"(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)",
"(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,F1-02,72.01.009-001,1,1,2)",
"(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,G1-01,72.01.009-001,1,1,2)",
"(10b6043c-455d-4644-8e5a-790d9ed36a86,F1-01,72.01.009-001,1,1,1)"
}







.........................

найти конечные узлы графа

для каждого узла в конечных узлах графа выполнить цикл

  _предыдущий_узел = конечный узел
  _следующий_узел = конечный узел

  _следующие_узлы = выбрать _следующие_узлы по _предыдущий_узел

  пока не закончатся _следующие_узлы выполнять цикл

    _следующий_узел = 


    _следующие_узлы = выбрать _следующие_узлы по узлу
  конец цикла

конец цикла

*/



CREATE OR REPLACE FUNCTION stride.get_last(__last_in_path common.node)
  RETURNS SETOF stride.t1 AS
$BODY$
DECLARE
  _record record;
BEGIN


    for _record in
        select * from stride.t1
    loop
      if _record.s1[array_length(_record.s1, 1)] = __last_in_path then
        return next _record;
      end if;
    end loop;
  
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- select stride.get_last(('a8627dc7-8584-4cc5-9e6d-4cf8594f23e0','F1-02','72.01.009-001',1,1,2)::common.node);

CREATE OR REPLACE FUNCTION stride.append_node(__last_in_path common.node, __append common.node)
  RETURNS void AS
$BODY$
DECLARE
  _record record;
  _arr common.node[];
BEGIN


    for _record in
        select * from stride.t1
    loop
      if _record.s1[array_length(_record.s1, 1)] = __last_in_path then
        _arr := array_append(_arr, __append);
        update stride.t1 set s1 = _arr where id = _record.id;
      end if;
    end loop;
  
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;



  --
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.7
-- Dumped by pg_dump version 9.6.7

-- Started on 2018-06-27 13:41:48 EEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = stride, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 378 (class 1259 OID 370275)
-- Name: t1; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE t1 (
    id bigint NOT NULL,
    s1 common.node[]
);


ALTER TABLE t1 OWNER TO postgres;

--
-- TOC entry 377 (class 1259 OID 370273)
-- Name: t1_id_seq; Type: SEQUENCE; Schema: stride; Owner: postgres
--

CREATE SEQUENCE t1_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE t1_id_seq OWNER TO postgres;

--
-- TOC entry 2956 (class 0 OID 0)
-- Dependencies: 377
-- Name: t1_id_seq; Type: SEQUENCE OWNED BY; Schema: stride; Owner: postgres
--

ALTER SEQUENCE t1_id_seq OWNED BY t1.id;


--
-- TOC entry 2827 (class 2604 OID 370278)
-- Name: t1 id; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY t1 ALTER COLUMN id SET DEFAULT nextval('t1_id_seq'::regclass);


--
-- TOC entry 2951 (class 0 OID 370275)
-- Dependencies: 378
-- Data for Name: t1; Type: TABLE DATA; Schema: stride; Owner: postgres
--

INSERT INTO t1 (id, s1) VALUES (9, '{"(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)","(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)","(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,F1-02,72.01.009-001,1,1,2)"}');
INSERT INTO t1 (id, s1) VALUES (10, '{"(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)","(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)","(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,F1-02,72.01.009-001,1,1,2)"}');


--
-- TOC entry 2957 (class 0 OID 0)
-- Dependencies: 377
-- Name: t1_id_seq; Type: SEQUENCE SET; Schema: stride; Owner: postgres
--

SELECT pg_catalog.setval('t1_id_seq', 10, true);


--
-- TOC entry 2829 (class 2606 OID 370283)
-- Name: t1 t1_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY t1
    ADD CONSTRAINT t1_pkey PRIMARY KEY (id);


-- Completed on 2018-06-27 13:41:48 EEST

--
-- PostgreSQL database dump complete
--

{"(10b6043c-455d-4644-8e5a-790d9ed36a86,F1-01,72.01.009-001,1,1,1)",
"(10b6043c-455d-4644-8e5a-790d9ed36a86,F1-01,72.01.009-001,1,1,1)",
"(10b6043c-455d-4644-8e5a-790d9ed36a86,F1-01,72.01.009-001,1,1,1)",
"(10b6043c-455d-4644-8e5a-790d9ed36a86,F1-01,72.01.009-001,1,1,1)"}























CREATE OR REPLACE FUNCTION stride.get_path()
  RETURNS void AS
$BODY$
DECLARE
  _roots common.node[];
  _root common.node;
  _node common.node;
  _prev_node common.node;
  _curr_node common.node;
  _next_node common.node;
  _parents common.node[];
  _parent common.node;
  _new common.node[];
  _cnt int := 1;
  counter INTEGER := 0; 
  _BIG common.node[][];
  _element common.node[];
  _i int := 1;
  _a int := 1;
  _r record;
BEGIN

  _roots := stride.get_node_top('72.01.009-001', 1, 1);
  RAISE NOTICE '_roots = %', _roots;


  foreach _root in array _roots loop

    _prev_node := _root;
    _curr_node := _root;
    _next_node := _root;
    RAISE NOTICE '_prev_node #%', _prev_node;
    RAISE NOTICE '_curr_node #%', _curr_node;
    RAISE NOTICE '_next_node #%', _next_node;

    _parents := stride.get_node_parents(_curr_node.part_code, _curr_node.version_num, _curr_node.process_num, _curr_node.segment_num);
    RAISE NOTICE '_parents #%', _parents;

    while array_length(_parents, 1) > 0 loop
      RAISE NOTICE 'LOOP #%', _cnt;
      foreach _node in array _parents loop
        _prev_node := _curr_node;
        _curr_node := _node;
        RAISE NOTICE '_prev_node #%', _prev_node;
        RAISE NOTICE '_curr_node #%', _curr_node;
      end loop;


    _parents := stride.get_node_parents(_curr_node.part_code, _curr_node.version_num, _curr_node.process_num, _curr_node.segment_num);
    _cnt := _cnt + 1;
    end loop;

  end loop;
  
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

/*
[QUERY    ] select stride.get_path()
NOTICE:  _roots = {"(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)"}
NOTICE:  _prev_node #(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)
NOTICE:  _curr_node #(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)
NOTICE:  _next_node #(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)
NOTICE:  _parents #{"(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)"}
NOTICE:  LOOP #1
NOTICE:  _prev_node #(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)
NOTICE:  _curr_node #(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)
NOTICE:  LOOP #2
NOTICE:  _prev_node #(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)
NOTICE:  _curr_node #(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,F1-02,72.01.009-001,1,1,2)
NOTICE:  _prev_node #(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,F1-02,72.01.009-001,1,1,2)
NOTICE:  _curr_node #(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,G1-01,72.01.009-001,1,1,2)
NOTICE:  LOOP #3
NOTICE:  _prev_node #(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,G1-01,72.01.009-001,1,1,2)
NOTICE:  _curr_node #(10b6043c-455d-4644-8e5a-790d9ed36a86,F1-01,72.01.009-001,1,1,1)
*/




CREATE OR REPLACE FUNCTION stride.get_path()
  RETURNS void AS
$BODY$
DECLARE
  _roots common.node[];
  _root common.node;
  _node common.node;
  _prev_node common.node;
  _curr_node common.node;
  _next_node common.node;
  _parents common.node[];
  _parent common.node;
  _new common.node[];
  _cnt int := 1;
  counter INTEGER := 0; 
  _BIG common.node[][];
  _element common.node[];
  _i int := 1;
  _a int := 1;
  _r record;
BEGIN

  _roots := stride.get_node_top('72.01.009-001', 1, 1);
  RAISE NOTICE '_roots = %', _roots;


  foreach _root in array _roots loop

    _prev_node := _root;
    _curr_node := _root;
    _next_node := _root;
    RAISE NOTICE '_prev_node #%', _prev_node;
    RAISE NOTICE '_curr_node #%', _curr_node;
    RAISE NOTICE '_next_node #%', _next_node;

    _parents := stride.get_node_parents(_curr_node.part_code, _curr_node.version_num, _curr_node.process_num, _curr_node.segment_num);
    RAISE NOTICE '_parents #%', _parents;

    while array_length(_parents, 1) > 0 loop
      RAISE NOTICE 'LOOP #%', _cnt;
      _prev_node := _curr_node;
      
      foreach _node in array _parents loop
        _curr_node := _node;
        RAISE NOTICE '_prev_node #%', _prev_node;
        RAISE NOTICE '_curr_node #%', _curr_node;
      end loop;


    _parents := stride.get_node_parents(_curr_node.part_code, _curr_node.version_num, _curr_node.process_num, _curr_node.segment_num);
    _cnt := _cnt + 1;
    end loop;

  end loop;
  
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

/*
[QUERY    ] select stride.get_path()
NOTICE:  _roots = {"(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)"}
NOTICE:  _prev_node #(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)
NOTICE:  _curr_node #(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)
NOTICE:  _next_node #(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)
NOTICE:  _parents #{"(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)"}
NOTICE:  LOOP #1
NOTICE:  _prev_node #(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)
NOTICE:  _curr_node #(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)
NOTICE:  LOOP #2
NOTICE:  _prev_node #(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)
NOTICE:  _curr_node #(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,F1-02,72.01.009-001,1,1,2)
NOTICE:  _prev_node #(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)
NOTICE:  _curr_node #(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,G1-01,72.01.009-001,1,1,2)
NOTICE:  LOOP #3
NOTICE:  _prev_node #(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,G1-01,72.01.009-001,1,1,2)
NOTICE:  _curr_node #(10b6043c-455d-4644-8e5a-790d9ed36a86,F1-01,72.01.009-001,1,1,1)
*/



CREATE OR REPLACE FUNCTION stride.get_path()
  RETURNS void AS
$BODY$
DECLARE
  _roots common.node[];
  _root common.node;
  _node common.node;
  _prev_node common.node;
  _curr_node common.node;
  _next_node common.node;
  _parents common.node[];
  _parent common.node;
  _new common.node[];
  _cnt int := 1;
  counter INTEGER := 0; 
  _BIG common.node[][];
  _element common.node[];
  _i int := 1;
  _a int := 1;
  _r record;
BEGIN

  _roots := stride.get_node_top('72.01.009-001', 1, 1);
  --RAISE NOTICE '_roots = %', _roots;


  _root := _roots[1];

  _parents := stride.get_node_parents(_root.part_code, _root.version_num, _root.process_num, _root.segment_num);

  while array_length(_parents, 1) > 0 loop

    if _prev_node is null then
      _prev_node := _root;
    end if;

    if _curr_node is null then
      _curr_node := _root;
    end if;

    if array_length(_parents, 1) > 1 then
      foreach _node in array _parents loop
        foreach _r in select * from stride.get_last(_prev_node) loop
      end loop;
    end if;


    _parents := stride.get_node_parents(_curr_node.part_code, _curr_node.version_num, _curr_node.process_num, _curr_node.segment_num);
  end loop;

/*
  foreach _root in array _roots loop

    _prev_node := _root;
    _curr_node := _root;
    _next_node := _root;
    RAISE NOTICE '_prev_node #%', _prev_node;
    RAISE NOTICE '_curr_node #%', _curr_node;
    RAISE NOTICE '_next_node #%', _next_node;

    insert into stride.t1 values (DEFAULT, ARRAY[(_root)]::common.node[]);

    _parents := stride.get_node_parents(_curr_node.part_code, _curr_node.version_num, _curr_node.process_num, _curr_node.segment_num);
    RAISE NOTICE '_parents #%', _parents;

    while array_length(_parents, 1) > 0 loop
      RAISE NOTICE 'LOOP #%', _cnt;
            
      foreach _node in array _parents loop
        
        RAISE NOTICE '_prev_node #%', _prev_node;
        RAISE NOTICE '_curr_node #%', _curr_node;
        _prev_node := _curr_node;
        _curr_node := _node; 
      end loop;


    _parents := stride.get_node_parents(_curr_node.part_code, _curr_node.version_num, _curr_node.process_num, _curr_node.segment_num);
    _cnt := _cnt + 1;
    end loop;

  end loop;
*/  
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;


[QUERY    ] select stride.get_path()
            NOTICE:  _roots = {"(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)"}

            NOTICE:  _prev_node #(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)
            NOTICE:  _curr_node #(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)

            NOTICE:  _prev_node #(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)
            NOTICE:  _curr_node #(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)

            NOTICE:  _prev_node #(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)
            NOTICE:  _curr_node #(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,F1-02,72.01.009-001,1,1,2)

            NOTICE:  _prev_node #(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,F1-02,72.01.009-001,1,1,2)
            NOTICE:  _curr_node #(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,G1-01,72.01.009-001,1,1,2)


[QUERY    ] select stride.get_path()
NOTICE:  _roots = {"(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)"}
NOTICE:  _prev_node #(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)
NOTICE:  _curr_node #(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)
NOTICE:  _next_node #(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)
NOTICE:  _parents #{"(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)"}
NOTICE:  LOOP #1
NOTICE:  _prev_node #(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)
NOTICE:  _curr_node #(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)
NOTICE:  !!! _prev_node #(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)
NOTICE:  !!! _curr_node #(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)
NOTICE:  !!! _element #{"(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)"}
NOTICE:  LOOP #2
NOTICE:  _prev_node #(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)
NOTICE:  _curr_node #(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)
NOTICE:  !!! _prev_node #(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)
NOTICE:  !!! _curr_node #(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)
NOTICE:  !!! _element #{"(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)","(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)"}
NOTICE:  _prev_node #(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)
NOTICE:  _curr_node #(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,F1-02,72.01.009-001,1,1,2)
NOTICE:  !!! _prev_node #(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)
NOTICE:  !!! _curr_node #(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)
NOTICE:  !!! _element #{"(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)","(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)","(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)"}
NOTICE:  LOOP #3
NOTICE:  _prev_node #(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,F1-02,72.01.009-001,1,1,2)
NOTICE:  _curr_node #(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,G1-01,72.01.009-001,1,1,2)
NOTICE:  !!! _prev_node #(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,F1-02,72.01.009-001,1,1,2)
NOTICE:  !!! _curr_node #(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,F1-02,72.01.009-001,1,1,2)
NOTICE:  !!! _element #{"(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)","(3709941e-5878-4878-9711-68da8137185c,F2-02,72.01.009-001,1,1,4)","(63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a,F2-01,72.01.009-001,1,1,3)","(a8627dc7-8584-4cc5-9e6d-4cf8594f23e0,F1-02,72.01.009-001,1,1,2)"}



WITH RECURSIVE subordinates AS (
SELECT 
  v1.i_part_code, 
  v1.i_version_num, 
  v1.i_process_num, 
  v1.i_segment_num
FROM 
  stride.v1
WHERE 
  v1.i_part_code = '72.01.009-001' AND 
  v1.i_version_num = 1 AND 
  v1.i_process_num = 1 --AND 
  --v1.i_segment_num = 3
 UNION
SELECT 
  v11.i_part_code, 
  v11.i_version_num, 
  v11.i_process_num, 
  v11.i_segment_num
FROM 
  stride.v1 v11
 INNER JOIN subordinates s ON 
    s.i_part_code = v11.i_part_code AND 
    s.i_version_num = v11.i_version_num AND
    s.i_process_num = v11.i_process_num --AND
    --s.i_segment_num = v11.i_segment_num
) SELECT
 *
FROM
 subordinates;


SELECT 
  facility.facility_code
FROM 
  stride.information, 
  stride.definition, 
  stride.facility
WHERE 
  information.id = definition.information_id AND
  definition.id = facility.definition_id AND
  information.part_code = '72.01.009-001' AND 
  information.version_num = 1 AND 
  information.process_num = 1 AND 
  information.segment_num = 1;


















--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.7
-- Dumped by pg_dump version 9.6.7

-- Started on 2018-06-29 19:17:07 EEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 13 (class 2615 OID 368263)
-- Name: stride; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA stride;


ALTER SCHEMA stride OWNER TO postgres;

--
-- TOC entry 3057 (class 0 OID 0)
-- Dependencies: 13
-- Name: SCHEMA stride; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA stride IS 'operation segments';


SET search_path = stride, pg_catalog;

--
-- TOC entry 625 (class 1255 OID 370346)
-- Name: append_node(common.node, common.node); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION append_node(__last_in_path common.node, __append common.node) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _record record;
  _arr common.node[];
BEGIN


    for _record in
        select * from stride.t1
    loop
      if _record.s1[array_length(_record.s1, 1)] = __last_in_path then
        _arr := array_append(_arr, __append);
        update stride.t1 set s1 = _arr where id = _record.id;
      end if;
    end loop;
  
END;
$$;


ALTER FUNCTION stride.append_node(__last_in_path common.node, __append common.node) OWNER TO postgres;

--
-- TOC entry 557 (class 1255 OID 368643)
-- Name: destroy(bigint); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION destroy(__document_id bigint) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  DELETE FROM stride.definition WHERE id = __document_id;
END;
$$;


ALTER FUNCTION stride.destroy(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 558 (class 1255 OID 368644)
-- Name: get_body(bigint); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION get_body(__document_id bigint) RETURNS common.process_segment
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
      (definition.gid,
      definition.operation_code,
      stride.get_consumable_spec(__document_id := __document_id),
      stride.get_personnel_spec(__document_id := __document_id),
      stride.get_equipment_spec(__document_id := __document_id),
      stride.get_tooling_spec(__document_id := __document_id))::common.process_segment
    FROM 
      stride.definition
    WHERE 
      definition.id = __document_id;
END
$$;


ALTER FUNCTION stride.get_body(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 559 (class 1255 OID 368645)
-- Name: get_consumable_spec(bigint); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION get_consumable_spec(__document_id bigint) RETURNS common.consumable_specification[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (material.part_code, 
        material.version_num, 
        material.quantity, 
        material.uom_code, 
        material.material_type, 
        material.rationing_qty)::common.consumable_specification
      FROM 
        stride.material, 
        stride.definition
      WHERE 
        definition.information_id = material.information_id AND
        definition.id = __document_id
    );
END
$$;


ALTER FUNCTION stride.get_consumable_spec(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 560 (class 1255 OID 368646)
-- Name: get_equipment_spec(bigint); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION get_equipment_spec(__document_id bigint) RETURNS common.equipment_specification[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (equipment.equipment_code, 
        equipment.version_num, 
        equipment.quantity, 
        equipment.uom_code)::common.equipment_specification
      FROM 
        stride.equipment, 
        stride.definition
      WHERE 
        definition.information_id = equipment.information_id AND
        definition.id = __document_id
    );
END
$$;


ALTER FUNCTION stride.get_equipment_spec(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 561 (class 1255 OID 368647)
-- Name: get_facility_spec(bigint); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION get_facility_spec(__document_id bigint) RETURNS common.facility_specification[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (facility.facility_code, 
        1, 
        'LINE'::common.facility_kind)::common.facility_specification
      FROM 
        stride.facility
      WHERE 
        facility.definition_id = __document_id
    );
END
$$;


ALTER FUNCTION stride.get_facility_spec(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 562 (class 1255 OID 368648)
-- Name: get_gid_by_id(bigint); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION get_gid_by_id(__document_id bigint) RETURNS uuid
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN gid
    FROM
      stride.definition
    WHERE
      id = __document_id;
END;
$$;


ALTER FUNCTION stride.get_gid_by_id(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 563 (class 1255 OID 368649)
-- Name: get_head(bigint); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION get_head(__document_id bigint) RETURNS common.stride_head
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  RETURN
    (definition.id, 
    definition.gid, 
    definition.display_name, 
    definition.version_num, 
    definition.published_date, 
    definition.curr_fsmt, 
    'STRIDE'::common.document_kind,
      (information.part_code, 
      information.version_num, 
      information.process_num, 
      information.segment_num,
      information.operation_code,
      1.0,
      'pcs',
      'PRODUCIBLE')::common.vertex_specification
    )::common.stride_head
  FROM
    stride.information, 
    stride.definition, 
    stride.descendant
  WHERE
    information.id = definition.information_id AND
    definition.id = descendant.definition_id AND
    definition.id = __document_id;
END;
$$;


ALTER FUNCTION stride.get_head(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 564 (class 1255 OID 368650)
-- Name: get_id_by_gid(uuid); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION get_id_by_gid(__document_gid uuid) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN id
    FROM
      stride.definition
    WHERE
      gid = __document_gid;
END;
$$;


ALTER FUNCTION stride.get_id_by_gid(__document_gid uuid) OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 379 (class 1259 OID 370275)
-- Name: t1; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE t1 (
    id bigint NOT NULL,
    s1 common.node[]
);


ALTER TABLE t1 OWNER TO postgres;

--
-- TOC entry 624 (class 1255 OID 370321)
-- Name: get_last(common.node); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION get_last(__last_in_path common.node) RETURNS SETOF t1
    LANGUAGE plpgsql
    AS $$
DECLARE
  _record record;
BEGIN


    for _record in
        select * from stride.t1
    loop
      if _record.s1[array_length(_record.s1, 1)] = __last_in_path then
        return next _record;
      end if;
    end loop;
  
END;
$$;


ALTER FUNCTION stride.get_last(__last_in_path common.node) OWNER TO postgres;

--
-- TOC entry 622 (class 1255 OID 370268)
-- Name: get_node_parents(character varying, integer, integer, integer); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION get_node_parents(__part_code character varying, __version_num integer, __process_num integer, __segment_num integer) RETURNS common.node[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY(
      SELECT 
        (definition_parent.gid, 
        facility.facility_code, 
        information_parent.part_code, 
        information_parent.version_num, 
        information_parent.process_num, 
        information_parent.segment_num)::common.node
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
$$;


ALTER FUNCTION stride.get_node_parents(__part_code character varying, __version_num integer, __process_num integer, __segment_num integer) OWNER TO postgres;

--
-- TOC entry 619 (class 1255 OID 370267)
-- Name: get_node_top(character varying, integer, integer); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION get_node_top(__part_code character varying, __version_num integer, __process_num integer) RETURNS common.node[]
    LANGUAGE plpgsql
    AS $$
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
$$;


ALTER FUNCTION stride.get_node_top(__part_code character varying, __version_num integer, __process_num integer) OWNER TO postgres;

--
-- TOC entry 628 (class 1255 OID 370269)
-- Name: get_path(); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION get_path() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _roots common.node[];
  _root common.node;
  _node common.node;
  _prev_node common.node;
  _curr_node common.node;
  _next_node common.node;
  _parents common.node[];
  _parent common.node;
  _new common.node[];
  _cnt int := 1;
  counter INTEGER := 0; 
  _BIG common.node[][];
  _element common.node[];
  _i int := 1;
  _a int := 1;
  _r record;
BEGIN

  _roots := stride.get_node_top('72.01.009-001', 1, 1);
  --RAISE NOTICE '_roots = %', _roots;


  _root := _roots[1];

  _parents := stride.get_node_parents(_root.part_code, _root.version_num, _root.process_num, _root.segment_num);

  while array_length(_parents, 1) > 0 loop

    if _prev_node is null then
      _prev_node := _root;
    end if;

    if _curr_node is null then
      _curr_node := _root;
    end if;

    foreach _node in array _parents loop
      RAISE NOTICE '_prev_node #%', _prev_node;
      RAISE NOTICE '_node #%', _node;
      RAISE NOTICE '_curr_node #%', _curr_node;
      _prev_node := _curr_node;
      _curr_node := _node; 
    end loop;


    _parents := stride.get_node_parents(_curr_node.part_code, _curr_node.version_num, _curr_node.process_num, _curr_node.segment_num);
  end loop;

/*
  foreach _root in array _roots loop

    _prev_node := _root;
    _curr_node := _root;
    _next_node := _root;
    RAISE NOTICE '_prev_node #%', _prev_node;
    RAISE NOTICE '_curr_node #%', _curr_node;
    RAISE NOTICE '_next_node #%', _next_node;

    insert into stride.t1 values (DEFAULT, ARRAY[(_root)]::common.node[]);

    _parents := stride.get_node_parents(_curr_node.part_code, _curr_node.version_num, _curr_node.process_num, _curr_node.segment_num);
    RAISE NOTICE '_parents #%', _parents;

    while array_length(_parents, 1) > 0 loop
      RAISE NOTICE 'LOOP #%', _cnt;
            
      foreach _node in array _parents loop
        
        RAISE NOTICE '_prev_node #%', _prev_node;
        RAISE NOTICE '_curr_node #%', _curr_node;
        _prev_node := _curr_node;
        _curr_node := _node; 
      end loop;


    _parents := stride.get_node_parents(_curr_node.part_code, _curr_node.version_num, _curr_node.process_num, _curr_node.segment_num);
    _cnt := _cnt + 1;
    end loop;

  end loop;
*/  
END;
$$;


ALTER FUNCTION stride.get_path() OWNER TO postgres;

--
-- TOC entry 623 (class 1255 OID 370320)
-- Name: get_path(common.node); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION get_path(__last_in_path common.node) RETURNS SETOF t1
    LANGUAGE plpgsql
    AS $$
DECLARE
  _record record;
BEGIN


    for _record in
        select * from stride.t1
    loop
      if _record.s1[array_length(_record.s1)] = __last_in_path then
        return next _record;
      end if;
    end loop;
  
END;
$$;


ALTER FUNCTION stride.get_path(__last_in_path common.node) OWNER TO postgres;

--
-- TOC entry 565 (class 1255 OID 368651)
-- Name: get_personnel_spec(bigint); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION get_personnel_spec(__document_id bigint) RETURNS common.personnel_specification[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (personnel.personnel_code, 
        personnel.version_num, 
        personnel.rationing_qty, 
        personnel.batch_qty, 
        personnel.workers_qty, 
        personnel.setup_time, 
        personnel.piece_time)::common.personnel_specification
      FROM 
        stride.personnel, 
        stride.definition
      WHERE 
        definition.information_id = personnel.information_id AND
        definition.id = __document_id
    );
END
$$;


ALTER FUNCTION stride.get_personnel_spec(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 566 (class 1255 OID 368652)
-- Name: get_tooling_spec(bigint); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION get_tooling_spec(__document_id bigint) RETURNS common.tooling_specification[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (tooling.tooling_code, 
        tooling.version_num, 
        tooling.quantity, 
        tooling.uom_code)::common.tooling_specification
      FROM 
        stride.tooling, 
        stride.definition
      WHERE 
        definition.information_id = tooling.information_id AND
        definition.id = __document_id
    );
END
$$;


ALTER FUNCTION stride.get_tooling_spec(__document_id bigint) OWNER TO postgres;

--
-- TOC entry 567 (class 1255 OID 368653)
-- Name: init(common.stride_head, common.process_segment, common.vertex_specification, common.facility_specification[]); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION init(__head common.stride_head, __body common.process_segment, __heir common.vertex_specification, __area common.facility_specification[]) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _information_id bigint;
  _definition_id bigint;
  _max_version_num integer;
BEGIN

  IF (__head.document_date IS NULL) THEN
    __head.document_date := now()::date;
  END IF;

  IF (__head.version_num IS NULL) THEN
    __head.version_num := 1;
  END IF;

  IF (__head.display_name IS NULL) THEN
    __head.display_name := 'NO-NAME';
  END IF;

  SELECT
    max(definition.version_num)
  FROM 
    stride.information, 
    stride.definition
  WHERE 
    information.id = definition.information_id AND
    information.part_code = (__head.ancestor_spec).part_code AND 
    information.version_num = (__head.ancestor_spec).version_num AND
    information.process_num = (__head.ancestor_spec).process_num AND
    information.segment_num = (__head.ancestor_spec).segment_num
  INTO
    _max_version_num;

  IF (_max_version_num IS NULL) THEN
    _max_version_num := 0;

    INSERT INTO
      stride.information (
        id,
        display_name,
        published_date,
        part_code,
        version_num,
        process_num,
        segment_num,
        operation_code)
    VALUES (
      DEFAULT,
      __head.display_name,
      __head.document_date,
      (__head.ancestor_spec).part_code,
      (__head.ancestor_spec).version_num,
      (__head.ancestor_spec).process_num,
      (__head.ancestor_spec).segment_num,
      (__head.ancestor_spec).operation_code)
    RETURNING id INTO _information_id;

    PERFORM stride.set_consumable_spec(_information_id, __body.consumable_spec);
    PERFORM stride.set_personnel_spec(_information_id, __body.personnel_spec);
    PERFORM stride.set_equipment_spec(_information_id, __body.equipmet_spec);
    PERFORM stride.set_tooling_spec(_information_id, __body.tooling_spec);

  ELSE
    SELECT
      id
    FROM
      stride.information
    WHERE
      information.part_code = (__head.ancestor_spec).part_code AND 
      information.version_num = (__head.ancestor_spec).version_num AND
      information.process_num = (__head.ancestor_spec).process_num AND
      information.segment_num = (__head.ancestor_spec).segment_num
    INTO
      _information_id;

  END IF;

  INSERT INTO
    stride.definition (
      id,
      display_name,
      version_num,
      published_date,
      information_id)
  VALUES (
    DEFAULT,
    __head.display_name,
    _max_version_num + 1,
    __head.document_date,
    _information_id)
  RETURNING id INTO _definition_id;

  INSERT INTO
    stride.descendant (
      definition_id,
      part_code,
      version_num,
      process_num,
      segment_num,
      operation_code)
  VALUES (
    _definition_id,
    __heir.part_code,
    __heir.version_num,
    __heir.process_num,
    __heir.segment_num,
    __heir.operation_code);

  PERFORM stride.set_facility_spec(_definition_id, __area);

  RETURN _definition_id;

END;
$$;


ALTER FUNCTION stride.init(__head common.stride_head, __body common.process_segment, __heir common.vertex_specification, __area common.facility_specification[]) OWNER TO postgres;

--
-- TOC entry 568 (class 1255 OID 368654)
-- Name: reinit(bigint, common.vertex_specification, common.facility_specification[]); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION reinit(__document_id bigint, __heir common.vertex_specification, __area common.facility_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN

  DELETE FROM
    stride.facility
  WHERE
    definition_id = __document_id;

  DELETE FROM
    stride.descendant
  WHERE
    definition_id = __document_id;

  INSERT INTO
    stride.descendant (
      definition_id,
      part_code,
      version_num,
      process_num,
      segment_num,
      operation_code)
  VALUES (
    __document_id,
    __heir.part_code,
    __heir.version_num,
    __heir.process_num,
    __heir.segment_num,
    __heir.operation_code);

  PERFORM stride.set_facility_spec(__document_id, __area);

END;
$$;


ALTER FUNCTION stride.reinit(__document_id bigint, __heir common.vertex_specification, __area common.facility_specification[]) OWNER TO postgres;

--
-- TOC entry 569 (class 1255 OID 368655)
-- Name: set_consumable_spec(bigint, common.consumable_specification[]); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION set_consumable_spec(__document_id bigint, __material common.consumable_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.consumable_specification;
  _information_id bigint;
BEGIN

  _information_id := information_id FROM stride.definition WHERE definition.id = __document_id;

  FOREACH _item IN
    ARRAY __material
  LOOP
    IF (_item.material_type = 'PRIMAL') THEN
      INSERT INTO
        stride.primal (
          information_id,
          part_code,
          version_num,
          quantity,
          uom_code,
          material_type,
          rationing_qty)
      VALUES (
        _information_id,
        _item.part_code,
        _item.version_num,
        _item.quantity,
        _item.uom_code,
        _item.material_type,
        _item.rationing_qty);

    ELSIF (_item.material_type = 'CONSUMABLE') THEN
      INSERT INTO
        stride.consumable (
          information_id,
          part_code,
          version_num,
          quantity,
          uom_code,
          material_type,
          rationing_qty)
      VALUES (
        _information_id,
        _item.part_code,
        _item.version_num,
        _item.quantity,
        _item.uom_code,
        _item.material_type,
        _item.rationing_qty);
      
    ELSE
      RAISE EXCEPTION '% unknown material_type', _item;
    END IF;
  END LOOP;

END;
$$;


ALTER FUNCTION stride.set_consumable_spec(__document_id bigint, __material common.consumable_specification[]) OWNER TO postgres;

--
-- TOC entry 570 (class 1255 OID 368656)
-- Name: set_equipment_spec(bigint, common.equipment_specification[]); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION set_equipment_spec(__document_id bigint, __equipment common.equipment_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.equipment_specification;
  _information_id bigint;
BEGIN

  _information_id := information_id FROM stride.definition WHERE definition.id = __document_id;

  FOREACH _item IN
    ARRAY __equipment
  LOOP
    INSERT INTO
      stride.equipment (
        information_id,
        equipment_code,
        version_num,
        quantity,
        uom_code)
    VALUES (
      _information_id,
      _item.equipment_code,
      _item.version_num,
      _item.quantity,
      _item.uom_code);
  END LOOP;

END;
$$;


ALTER FUNCTION stride.set_equipment_spec(__document_id bigint, __equipment common.equipment_specification[]) OWNER TO postgres;

--
-- TOC entry 571 (class 1255 OID 368657)
-- Name: set_facility_spec(bigint, common.facility_specification[]); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION set_facility_spec(__document_id bigint, __facility common.facility_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.facility_specification;
BEGIN

  FOREACH _item IN
    ARRAY __facility
  LOOP
    INSERT INTO
      stride.facility (
        definition_id,
        facility_code)
    VALUES (
      __document_id,
      _item.facility_code);
  END LOOP;

END;
$$;


ALTER FUNCTION stride.set_facility_spec(__document_id bigint, __facility common.facility_specification[]) OWNER TO postgres;

--
-- TOC entry 572 (class 1255 OID 368658)
-- Name: set_personnel_spec(bigint, common.personnel_specification[]); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION set_personnel_spec(__document_id bigint, __personnel common.personnel_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.personnel_specification;
  _information_id bigint;
BEGIN

  _information_id := information_id FROM stride.definition WHERE definition.id = __document_id;

  FOREACH _item IN
    ARRAY __personnel
  LOOP
    INSERT INTO
      stride.personnel (
        information_id,
        personnel_code,
        version_num,
        rationing_qty,
        batch_qty,
        workers_qty,
        setup_time,
        piece_time)
    VALUES (
      _information_id,
      _item.personnel_code,
      _item.version_num,
      _item.rationing_qty,
      _item.batch_qty,
      _item.worker_qty,
      _item.setup_time,
      _item.piece_time);
  END LOOP;

END;
$$;


ALTER FUNCTION stride.set_personnel_spec(__document_id bigint, __personnel common.personnel_specification[]) OWNER TO postgres;

--
-- TOC entry 573 (class 1255 OID 368659)
-- Name: set_tooling_spec(bigint, common.tooling_specification[]); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION set_tooling_spec(__document_id bigint, __tooling common.tooling_specification[]) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _item common.tooling_specification;
  _information_id bigint;
BEGIN

  _information_id := information_id FROM stride.definition WHERE definition.id = __document_id;

  FOREACH _item IN
    ARRAY __tooling
  LOOP
    INSERT INTO
      stride.tooling (
        information_id,
        tooling_code,
        version_num,
        quantity,
        uom_code)
    VALUES (
      _information_id,
      _item.tooling_code,
      _item.version_num,
      _item.quantity,
      _item.uom_code);
  END LOOP;

END;
$$;


ALTER FUNCTION stride.set_tooling_spec(__document_id bigint, __tooling common.tooling_specification[]) OWNER TO postgres;

--
-- TOC entry 620 (class 1255 OID 370272)
-- Name: test(); Type: FUNCTION; Schema: stride; Owner: postgres
--

CREATE FUNCTION test() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
_arr int[][];
_arr_unnest int[];
BEGIN

_arr = ARRAY[ ARRAY[ 21, 22, 23 ], ARRAY[ 11 ,12, 13 ] , ARRAY [ 31, 32, 33, 34 ] ];

RAISE NOTICE '_arr: %', _arr;
RAISE NOTICE '_arr[1:1]: %', _arr[1:1];
RAISE NOTICE '_arr[1:2]: %', _arr[1:2];
RAISE NOTICE '_arr[1:3]: %', _arr[1:3];
RAISE NOTICE '_arr[1:2][1:3]: %', _arr[1:2][1:3];
RAISE NOTICE '_arr[1:2][2:3]: %', _arr[1:2][2:3];
RAISE NOTICE '_arr[2:2][2:3]: %', _arr[2:2][2:3];
RAISE NOTICE '_arr[1:]: %', _arr[1:];
RAISE NOTICE '_arr[:1]: %', _arr[:1];
RAISE NOTICE '_arr[2:]: %', _arr[2:];
RAISE NOTICE '_arr[:2]: %', _arr[:2];
RAISE NOTICE '_arr[1]: %', _arr[1:1];
RAISE NOTICE '_arr[2]: %', _arr[2:2];
RAISE NOTICE '_arr[3]: %', _arr[3:3];
RAISE NOTICE 'array_ndims(_arr): %', array_ndims(_arr);
RAISE NOTICE 'array_dims(_arr): %', array_dims(_arr);



END;
$$;


ALTER FUNCTION stride.test() OWNER TO postgres;

--
-- TOC entry 349 (class 1259 OID 369338)
-- Name: material; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE material (
    information_id bigint NOT NULL,
    part_code character varying NOT NULL,
    version_num integer NOT NULL,
    quantity common.quantity,
    uom_code character varying DEFAULT 'pcs'::character varying NOT NULL,
    material_type common.material_kind,
    rationing_qty integer DEFAULT 1
);


ALTER TABLE material OWNER TO postgres;

--
-- TOC entry 350 (class 1259 OID 369346)
-- Name: consumable; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE consumable (
)
INHERITS (material);


ALTER TABLE consumable OWNER TO postgres;

--
-- TOC entry 351 (class 1259 OID 369354)
-- Name: definition; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE definition (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying NOT NULL,
    version_num integer DEFAULT 1 NOT NULL,
    published_date date DEFAULT now() NOT NULL,
    prev_fsmt common.document_fsmt,
    prev_fsmt_date time with time zone,
    curr_fsmt common.document_fsmt DEFAULT 'PROPOSED'::common.document_fsmt NOT NULL,
    curr_fsmt_date timestamp with time zone DEFAULT now() NOT NULL,
    information_id bigint,
    operation_code character varying
);


ALTER TABLE definition OWNER TO postgres;

--
-- TOC entry 352 (class 1259 OID 369365)
-- Name: definition_id_seq; Type: SEQUENCE; Schema: stride; Owner: postgres
--

CREATE SEQUENCE definition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE definition_id_seq OWNER TO postgres;

--
-- TOC entry 3058 (class 0 OID 0)
-- Dependencies: 352
-- Name: definition_id_seq; Type: SEQUENCE OWNED BY; Schema: stride; Owner: postgres
--

ALTER SEQUENCE definition_id_seq OWNED BY definition.id;


--
-- TOC entry 353 (class 1259 OID 369367)
-- Name: descendant; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE descendant (
    definition_id bigint NOT NULL,
    part_code character varying,
    version_num integer,
    process_num integer,
    segment_num integer,
    operation_code character varying
);


ALTER TABLE descendant OWNER TO postgres;

--
-- TOC entry 354 (class 1259 OID 369373)
-- Name: equipment; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE equipment (
    information_id bigint NOT NULL,
    equipment_code character varying NOT NULL,
    version_num integer,
    quantity common.quantity,
    uom_code character varying
);


ALTER TABLE equipment OWNER TO postgres;

--
-- TOC entry 355 (class 1259 OID 369379)
-- Name: facility; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE facility (
    definition_id bigint NOT NULL,
    facility_code character varying NOT NULL
);


ALTER TABLE facility OWNER TO postgres;

--
-- TOC entry 356 (class 1259 OID 369385)
-- Name: information; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE information (
    id bigint NOT NULL,
    gid uuid DEFAULT public.uuid_generate_v1() NOT NULL,
    display_name character varying,
    published_date date DEFAULT now() NOT NULL,
    part_code character varying,
    version_num integer,
    process_num integer,
    segment_num integer,
    operation_code character varying
);


ALTER TABLE information OWNER TO postgres;

--
-- TOC entry 357 (class 1259 OID 369393)
-- Name: information_id_seq; Type: SEQUENCE; Schema: stride; Owner: postgres
--

CREATE SEQUENCE information_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE information_id_seq OWNER TO postgres;

--
-- TOC entry 3059 (class 0 OID 0)
-- Dependencies: 357
-- Name: information_id_seq; Type: SEQUENCE OWNED BY; Schema: stride; Owner: postgres
--

ALTER SEQUENCE information_id_seq OWNED BY information.id;


--
-- TOC entry 358 (class 1259 OID 369395)
-- Name: personnel; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE personnel (
    information_id bigint NOT NULL,
    personnel_code character varying NOT NULL,
    version_num integer,
    rationing_qty integer DEFAULT 1 NOT NULL,
    batch_qty integer,
    workers_qty integer DEFAULT 1 NOT NULL,
    setup_time interval DEFAULT '00:01:00'::interval NOT NULL,
    piece_time interval DEFAULT '00:01:00'::interval NOT NULL
);


ALTER TABLE personnel OWNER TO postgres;

--
-- TOC entry 359 (class 1259 OID 369405)
-- Name: primal; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE primal (
)
INHERITS (material);


ALTER TABLE primal OWNER TO postgres;

--
-- TOC entry 378 (class 1259 OID 370273)
-- Name: t1_id_seq; Type: SEQUENCE; Schema: stride; Owner: postgres
--

CREATE SEQUENCE t1_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE t1_id_seq OWNER TO postgres;

--
-- TOC entry 3060 (class 0 OID 0)
-- Dependencies: 378
-- Name: t1_id_seq; Type: SEQUENCE OWNED BY; Schema: stride; Owner: postgres
--

ALTER SEQUENCE t1_id_seq OWNED BY t1.id;


--
-- TOC entry 360 (class 1259 OID 369413)
-- Name: tooling; Type: TABLE; Schema: stride; Owner: postgres
--

CREATE TABLE tooling (
    information_id bigint NOT NULL,
    tooling_code character varying NOT NULL,
    version_num integer,
    quantity common.quantity,
    uom_code character varying
);


ALTER TABLE tooling OWNER TO postgres;

--
-- TOC entry 2865 (class 2604 OID 369528)
-- Name: consumable uom_code; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 2866 (class 2604 OID 369529)
-- Name: consumable rationing_qty; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY consumable ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 2872 (class 2604 OID 369530)
-- Name: definition id; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY definition ALTER COLUMN id SET DEFAULT nextval('definition_id_seq'::regclass);


--
-- TOC entry 2875 (class 2604 OID 369531)
-- Name: information id; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY information ALTER COLUMN id SET DEFAULT nextval('information_id_seq'::regclass);


--
-- TOC entry 2880 (class 2604 OID 369532)
-- Name: primal uom_code; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN uom_code SET DEFAULT 'pcs'::character varying;


--
-- TOC entry 2881 (class 2604 OID 369533)
-- Name: primal rationing_qty; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY primal ALTER COLUMN rationing_qty SET DEFAULT 1;


--
-- TOC entry 2882 (class 2604 OID 370278)
-- Name: t1 id; Type: DEFAULT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY t1 ALTER COLUMN id SET DEFAULT nextval('t1_id_seq'::regclass);


--
-- TOC entry 3040 (class 0 OID 369346)
-- Dependencies: 350
-- Data for Name: consumable; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 3041 (class 0 OID 369354)
-- Dependencies: 351
-- Data for Name: definition; Type: TABLE DATA; Schema: stride; Owner: postgres
--

INSERT INTO definition VALUES (201, '10b6043c-455d-4644-8e5a-790d9ed36a86', '72.01.009-001 #01', 1, '2018-01-01', NULL, NULL, 'PROPOSED', '2018-01-01 00:00:00+02', 101, 'OPERATION-01');
INSERT INTO definition VALUES (202, 'a8627dc7-8584-4cc5-9e6d-4cf8594f23e0', '72.01.009-001 #02', 1, '2018-01-01', NULL, NULL, 'PROPOSED', '2018-01-01 00:00:00+02', 102, 'OPERATION-02');
INSERT INTO definition VALUES (203, '63a9f5a0-3a0c-4c50-b3d4-20d8bb62a17a', '72.01.009-001 #03', 1, '2018-01-01', NULL, NULL, 'PROPOSED', '2018-01-01 00:00:00+02', 103, 'OPERATION-03');
INSERT INTO definition VALUES (204, '3709941e-5878-4878-9711-68da8137185c', '72.01.009-001 #04', 1, '2018-01-01', NULL, NULL, 'PROPOSED', '2018-01-01 00:00:00+02', 104, 'OPERATION-04');
INSERT INTO definition VALUES (211, '5e6bfc1e-ada4-4148-a752-d08af11086fa', '72.01.009-001 #11', 1, '2018-01-01', NULL, NULL, 'PROPOSED', '2018-01-01 00:00:00+02', 111, 'OPERATION-11');
INSERT INTO definition VALUES (212, 'c38bef1b-1290-4562-be96-5b89af257887', '72.01.009-001 #12', 1, '2018-01-01', NULL, NULL, 'PROPOSED', '2018-01-01 00:00:00+02', 112, 'OPERATION-12');
INSERT INTO definition VALUES (213, '6b4159e1-e84d-454c-a2c4-daa438a643d1', '72.01.009-001 #13', 1, '2018-01-01', NULL, NULL, 'PROPOSED', '2018-01-01 00:00:00+02', 113, 'OPERATION-13');
INSERT INTO definition VALUES (214, '9752ad0a-1c4f-40d3-bffe-f78933ee0398', '72.01.009-001 #14', 1, '2018-01-01', NULL, NULL, 'PROPOSED', '2018-01-01 00:00:00+02', 114, 'OPERATION-14');


--
-- TOC entry 3061 (class 0 OID 0)
-- Dependencies: 352
-- Name: definition_id_seq; Type: SEQUENCE SET; Schema: stride; Owner: postgres
--

SELECT pg_catalog.setval('definition_id_seq', 1, false);


--
-- TOC entry 3043 (class 0 OID 369367)
-- Dependencies: 353
-- Data for Name: descendant; Type: TABLE DATA; Schema: stride; Owner: postgres
--

INSERT INTO descendant VALUES (201, '72.01.009-001', 1, 1, 2, 'OPERATION-02');
INSERT INTO descendant VALUES (202, '72.01.009-001', 1, 1, 3, 'OPERATION-03');
INSERT INTO descendant VALUES (203, '72.01.009-001', 1, 1, 4, 'OPERATION-04');
INSERT INTO descendant VALUES (211, '72.01.009-001', 1, 2, 2, 'OPERATION-12');
INSERT INTO descendant VALUES (212, '72.01.009-001', 1, 2, 3, 'OPERATION-13');
INSERT INTO descendant VALUES (213, '72.01.009-001', 1, 2, 4, 'OPERATION-14');


--
-- TOC entry 3044 (class 0 OID 369373)
-- Dependencies: 354
-- Data for Name: equipment; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 3045 (class 0 OID 369379)
-- Dependencies: 355
-- Data for Name: facility; Type: TABLE DATA; Schema: stride; Owner: postgres
--

INSERT INTO facility VALUES (201, 'F1-01');
INSERT INTO facility VALUES (202, 'F1-02');
INSERT INTO facility VALUES (203, 'F2-01');
INSERT INTO facility VALUES (204, 'F2-02');
INSERT INTO facility VALUES (211, 'F1-01');
INSERT INTO facility VALUES (212, 'F1-02');
INSERT INTO facility VALUES (213, 'F2-01');
INSERT INTO facility VALUES (214, 'F2-02');
INSERT INTO facility VALUES (211, 'F3-01');
INSERT INTO facility VALUES (202, 'G1-01');


--
-- TOC entry 3046 (class 0 OID 369385)
-- Dependencies: 356
-- Data for Name: information; Type: TABLE DATA; Schema: stride; Owner: postgres
--

INSERT INTO information VALUES (101, '0f443d56-61f4-4523-b7a8-21e805889817', '72.01.009-001 #01', '2018-01-01', '72.01.009-001', 1, 1, 1, 'OPERATION-01');
INSERT INTO information VALUES (102, 'cc93de3c-30d7-4435-b0f1-86ca4c4daf85', '72.01.009-001 #02', '2018-01-01', '72.01.009-001', 1, 1, 2, 'OPERATION-02');
INSERT INTO information VALUES (103, '55001d01-3994-4067-86ba-d2a04cceb952', '72.01.009-001 #03', '2018-01-01', '72.01.009-001', 1, 1, 3, 'OPERATION-03');
INSERT INTO information VALUES (104, 'e24df5fc-f439-455c-ab09-ad2f5f1095d2', '72.01.009-001 #04', '2018-01-01', '72.01.009-001', 1, 1, 4, 'OPERATION-04');
INSERT INTO information VALUES (111, '442cd231-dc69-46b0-b1d4-a1d0eeae7728', '72.01.009-001 #11', '2018-01-01', '72.01.009-001', 1, 2, 1, 'OPERATION-11');
INSERT INTO information VALUES (112, '9776e9da-7431-4019-8db3-62d5fa817ba8', '72.01.009-001 #12', '2018-01-01', '72.01.009-001', 1, 2, 2, 'OPERATION-12');
INSERT INTO information VALUES (113, '1c4bde5d-266b-4848-bb0b-3deb9c81b78e', '72.01.009-001 #13', '2018-01-01', '72.01.009-001', 1, 2, 3, 'OPERATION-13');
INSERT INTO information VALUES (114, 'ca7d9fcc-b494-4e0d-b180-d7241283bf0f', '72.01.009-001 #14', '2018-01-01', '72.01.009-001', 1, 2, 4, 'OPERATION-14');


--
-- TOC entry 3062 (class 0 OID 0)
-- Dependencies: 357
-- Name: information_id_seq; Type: SEQUENCE SET; Schema: stride; Owner: postgres
--

SELECT pg_catalog.setval('information_id_seq', 1, false);


--
-- TOC entry 3039 (class 0 OID 369338)
-- Dependencies: 349
-- Data for Name: material; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 3048 (class 0 OID 369395)
-- Dependencies: 358
-- Data for Name: personnel; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 3049 (class 0 OID 369405)
-- Dependencies: 359
-- Data for Name: primal; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 3052 (class 0 OID 370275)
-- Dependencies: 379
-- Data for Name: t1; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 3063 (class 0 OID 0)
-- Dependencies: 378
-- Name: t1_id_seq; Type: SEQUENCE SET; Schema: stride; Owner: postgres
--

SELECT pg_catalog.setval('t1_id_seq', 33, true);


--
-- TOC entry 3050 (class 0 OID 369413)
-- Dependencies: 360
-- Data for Name: tooling; Type: TABLE DATA; Schema: stride; Owner: postgres
--



--
-- TOC entry 2886 (class 2606 OID 369755)
-- Name: consumable consumable_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 2888 (class 2606 OID 369757)
-- Name: definition definition_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_pkey PRIMARY KEY (id);


--
-- TOC entry 2890 (class 2606 OID 369759)
-- Name: definition definition_version_num_information_id_key; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_version_num_information_id_key UNIQUE (version_num, information_id);


--
-- TOC entry 2892 (class 2606 OID 369761)
-- Name: descendant descendant_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY descendant
    ADD CONSTRAINT descendant_pkey PRIMARY KEY (definition_id);


--
-- TOC entry 2894 (class 2606 OID 369763)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (information_id, equipment_code);


--
-- TOC entry 2896 (class 2606 OID 369765)
-- Name: facility facility_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY facility
    ADD CONSTRAINT facility_pkey PRIMARY KEY (definition_id, facility_code);


--
-- TOC entry 2898 (class 2606 OID 369767)
-- Name: information information_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_pkey PRIMARY KEY (id);


--
-- TOC entry 2884 (class 2606 OID 369769)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY material
    ADD CONSTRAINT material_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 2900 (class 2606 OID 369771)
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (information_id, personnel_code);


--
-- TOC entry 2902 (class 2606 OID 369773)
-- Name: primal primal_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_pkey PRIMARY KEY (information_id, part_code);


--
-- TOC entry 2906 (class 2606 OID 370283)
-- Name: t1 t1_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY t1
    ADD CONSTRAINT t1_pkey PRIMARY KEY (id);


--
-- TOC entry 2904 (class 2606 OID 369775)
-- Name: tooling tooling_pkey; Type: CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY tooling
    ADD CONSTRAINT tooling_pkey PRIMARY KEY (information_id, tooling_code);


--
-- TOC entry 2907 (class 2606 OID 370102)
-- Name: consumable consumable_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2908 (class 2606 OID 370107)
-- Name: consumable consumable_part_code_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY consumable
    ADD CONSTRAINT consumable_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.consumable(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2909 (class 2606 OID 370112)
-- Name: definition definition_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY definition
    ADD CONSTRAINT definition_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2910 (class 2606 OID 370117)
-- Name: descendant descendant_definition_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY descendant
    ADD CONSTRAINT descendant_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2911 (class 2606 OID 370122)
-- Name: descendant descendant_part_code_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY descendant
    ADD CONSTRAINT descendant_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2912 (class 2606 OID 370127)
-- Name: equipment equipment_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY equipment
    ADD CONSTRAINT equipment_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2913 (class 2606 OID 370132)
-- Name: facility facility_definition_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY facility
    ADD CONSTRAINT facility_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES definition(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2914 (class 2606 OID 370137)
-- Name: information information_part_code_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY information
    ADD CONSTRAINT information_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.producible(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2915 (class 2606 OID 370142)
-- Name: personnel personnel_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY personnel
    ADD CONSTRAINT personnel_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2916 (class 2606 OID 370147)
-- Name: primal primal_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2917 (class 2606 OID 370152)
-- Name: primal primal_part_code_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY primal
    ADD CONSTRAINT primal_part_code_fkey FOREIGN KEY (part_code, version_num) REFERENCES inventory.primal(part_code, version_num) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2918 (class 2606 OID 370157)
-- Name: tooling tooling_information_id_fkey; Type: FK CONSTRAINT; Schema: stride; Owner: postgres
--

ALTER TABLE ONLY tooling
    ADD CONSTRAINT tooling_information_id_fkey FOREIGN KEY (information_id) REFERENCES information(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2018-06-29 19:17:07 EEST

--
-- PostgreSQL database dump complete
--

