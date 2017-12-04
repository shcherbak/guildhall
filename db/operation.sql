CREATE TYPE common.operation_document AS (
  head common.operation_head (
    document_id bigint,
    gid uuid,
    display_name character varying,
    version_num integer,
    document_date date,
    curr_fsmt common.document_fsmt,
    document_type common.document_kind,
    producible_spec common.material_specification[] (
      part_code   character varying,
      version_num integer,
      quantity    common.quantity,
      uom_code    character varying,
      material_type common.material_kind
    )
  ),
  body common.operation_segment[] (
    gid uuid,
    operation_code character varying,
    material_spec  common.material_specification[], (
      part_code   character varying,
      version_num integer,
      quantity    common.quantity,
      uom_code    character varying,
      material_type common.material_kind,
      rationing_qty integer -- единица нормарования (на сколько операций задана норма)
      )
    ),
    personnel_spec common.personnel_specification[] (
      personnel_code character varying,
      version_num integer,
      rationing_qty integer,              -- единица нормирования (на сколько операций задана норма)
      batch_qty integer,                  -- ОП, объем партии
      worker_qty integer,                 -- количество рабочих, занятых в операции
      setup_time interval,                -- норма подготовительно-заключительного времени
      piece_time interval,                -- норма штучного времени
      -- simultaneously_qty integer,         -- количество одновременно изготавливаемых изделий при выполнении одной операции
      -- simultaneously_factor numeric(3,2)  -- коеффициент штучного времени при многостаночном обслуживании unit time factor for multi-maintenance
    ),
    equipmet_spec  common.equipment_specification[] (
      equipment_code  character varying,
      version_num     integer,
      quantity        common.quantity,
      uom_code        character varying
    ),
    tooling_spec   common.tooling_specification[] (
      tooling_code  character varying,
      version_num   integer,
      quantity      common.quantity,
      uom_code      character varying
    )
  ),
  deps common.dependency_specification[] (
    ancestor uuid,
    descendant uuid,
    depth int
  )
);


CREATE TYPE common.dependency_specification AS (
  ancestor bigint,
  descendant bigint,
  depth int
);


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


-- for producible
CREATE TYPE common.material_specification AS (
  part_code   character varying,
  version_num integer,
  quantity    common.quantity,
  uom_code    character varying,
  material_type common.material_kind
);

CREATE TYPE common.consumable_specification AS (
  part_code   character varying,
  version_num integer,
  quantity    common.quantity,
  uom_code    character varying,
  material_type common.material_kind,
  rationing_qty integer -- единица нормарования (на сколько операций задана норма)
);

CREATE TYPE common.personnel_specification AS (
  personnel_code character varying,
  version_num integer,
  rationing_qty integer,              -- единица нормирования (на сколько операций задана норма)
  batch_qty integer,                  -- ОП, объем партии
  worker_qty integer,                 -- количество рабочих, занятых в операции
  setup_time interval,                -- норма подготовительно-заключительного времени
  piece_time interval                 -- норма штучного времени
  -- simultaneously_qty integer,         -- количество одновременно изготавливаемых изделий при выполнении одной операции
  -- simultaneously_factor numeric(3,2)  -- коеффициент штучного времени при многостаночном обслуживании unit time factor for multi-maintenance
);

-- Table: operation.tooling




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


CREATE TYPE common.operation_segment AS (
  gid uuid,
  operation_code character varying,
  consumable_spec  common.consumable_specification[],
  personnel_spec common.personnel_specification[],
  equipmet_spec  common.equipment_specification[],
  tooling_spec   common.tooling_specification[]
);


CREATE TYPE common.operation_document AS (
  head common.operation_head,
  body common.operation_segment[],
  deps common.dependency_specification[]
);


/*
CREATE TYPE common.operation_material AS (
  part_code character varying,
  version_num integer,
  quantity common.quantity, -- consumption_rate
  uom_code character varying, -- measure_EV
  --workpiece_weight common.quantity,
  material_type common.material_kind,
  rationing_qty integer, -- единица нормарования (на сколько операций задана норма)
   
  -- part_weight common.quantity,    -- дублирует значение из operation_head.producible_spec.weight
  -- part_count integer,             -- дублирует значение из operation_head.producible_spec.quantity для всех записей 
  -- utilisation_ratio numeric(3,2)  -- отношение material_specification.weight operation_head.producible_spec.weight
);
*/

/*
CREATE TYPE common.operation_material AS (
  rationing_qty integer, -- единица нормарования (на сколько операций задана норма)
  material_spec common.material_specification
);

CREATE TYPE common.operation_personnel AS (
  personnel_code character varying,
  version_num integer,
  rationing_qty integer,              -- единица нормирования (на сколько операций задана норма)
  batch_qty integer,                  -- ОП, объем партии
  worker_qty integer,                 -- количество рабочих, занятых в операции
  setup_time interval,                -- норма подготовительно-заключительного времени
  piece_time interval,                -- норма штучного времени
  simultaneously_qty integer,         -- количество одновременно изготавливаемых изделий при выполнении одной операции
  simultaneously_factor numeric(3,2)  -- коеффициент штучного времени при многостаночном обслуживании unit time factor for multi-maintenance
);
*/

/*
CREATE TYPE common.personnel_specification AS (
  personnel_code  character varying,
  version_num     integer,
  quantity        common.quantity,
  uom_code        character varying
);
*/

-- DROP FUNCTION operation.get_gid_by_id(bigint);

CREATE OR REPLACE FUNCTION operation.get_gid_by_id(__document_id bigint)
  RETURNS uuid AS
$BODY$
BEGIN
  RETURN gid
    FROM
      operation.definition
    WHERE
      id = __document_id;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION operation.get_gid_by_id(bigint)
  OWNER TO postgres;


-- DROP FUNCTION operation.get_id_by_gid(uuid);

CREATE OR REPLACE FUNCTION operation.get_id_by_gid(__document_gid uuid)
  RETURNS bigint AS
$BODY$
BEGIN
  RETURN id
    FROM
      operation.definition
    WHERE
      gid = __document_gid;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION operation.get_id_by_gid(uuid)
  OWNER TO postgres;


-- DROP FUNCTION operation.destroy(bigint);

CREATE OR REPLACE FUNCTION operation.destroy(__document_id bigint)
  RETURNS void AS
$BODY$
BEGIN
  DELETE FROM operation.definition WHERE id = __document_id;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION operation.destroy(bigint)
  OWNER TO postgres;


CREATE OR REPLACE FUNCTION operation.get_head(__document_id bigint)
  RETURNS common.operation_head AS
$BODY$
DECLARE
BEGIN
  RETURN
    (definition.id,
    definition.gid,
    definition.display_name,
    definition.version_num,
    definition.published_date,
    definition.curr_fsmt,
    'OPERATION'::common.document_kind,
      (information.part_code, 
      information.version_num, 
      1.0::common.quantity, 
      'pcs', 
      'PRODUCIBLE')::common.material_specification
    )::common.operation_head
  FROM
    operation.information, 
    operation.definition
  WHERE
    information.id = definition.information_id AND
    definition.id = __document_id;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION operation.get_head(bigint)
  OWNER TO postgres;


CREATE OR REPLACE FUNCTION operation.get_deps(__document_id bigint)
  RETURNS common.dependency_specification[] AS
$BODY$
BEGIN
  RETURN
    ARRAY(
      SELECT 
        (dependency.ancestor, 
        dependency.descendant, 
        dependency.depth)::common.dependency_specification
      FROM 
        operation.dependency, 
        operation.segment
      WHERE 
        segment.id = dependency.ancestor AND
        segment.definition_id = __document_id
    );
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION operation.get_deps(bigint)
  OWNER TO postgres;


/*
gid uuid,
operation_code character varying,
consumable_spec  common.consumable_specification[],
personnel_spec common.personnel_specification[],
equipmet_spec  common.equipment_specification[],
tooling_spec   common.tooling_specification[]
*/

CREATE OR REPLACE FUNCTION operation.get_consumable_spec(__segment_id bigint)
  RETURNS common.consumable_specification[] AS
$BODY$
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
        operation.material
      WHERE 
        material.segment_id = __segment_id
    );
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION operation.get_consumable_spec(bigint)
  OWNER TO postgres;


CREATE OR REPLACE FUNCTION operation.get_personnel_spec(__segment_id bigint)
  RETURNS common.personnel_specification[] AS
$BODY$
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
        operation.personnel
      WHERE 
        personnel.segment_id = __segment_id
    );
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION operation.get_personnel_spec(bigint)
  OWNER TO postgres;


CREATE OR REPLACE FUNCTION operation.get_equipment_spec(__segment_id bigint)
  RETURNS common.equipment_specification[] AS
$BODY$
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (equipment.equipment_code, 
        equipment.version_num, 
        equipment.quantity, 
        equipment.uom_code)::common.equipment_specification
      FROM 
        operation.equipment
      WHERE 
        equipment.segment_id = __segment_id
    );
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION operation.get_equipment_spec(bigint)
  OWNER TO postgres;


CREATE OR REPLACE FUNCTION operation.get_tooling_spec(__segment_id bigint)
  RETURNS common.tooling_specification[] AS
$BODY$
BEGIN
  RETURN
    ARRAY (
      SELECT 
        (tooling.tooling_code, 
        tooling.version_num, 
        tooling.quantity, 
        tooling.uom_code)::common.tooling_specification
      FROM 
        operation.tooling
      WHERE 
        tooling.segment_id = __segment_id
    );
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION operation.get_tooling_spec(bigint)
  OWNER TO postgres;



CREATE OR REPLACE FUNCTION operation.get_segment(__segment_id bigint)
  RETURNS common.operation_segment AS
$BODY$
BEGIN
  RETURN

      --SELECT 
        (segment.gid,
        segment.operation_code,
        operation.get_consumable_spec(__segment_id := __segment_id),
        operation.get_personnel_spec(__segment_id := __segment_id),
        operation.get_equipment_spec(__segment_id := __segment_id),
        operation.get_tooling_spec(__segment_id := __segment_id))::common.operation_segment
      FROM 
        operation.segment
      WHERE 
        segment.id = __segment_id;
    --;
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION operation.get_segment(bigint)
  OWNER TO postgres;


CREATE OR REPLACE FUNCTION operation.get_body(__document_id bigint)
  RETURNS common.operation_segment[] AS
$BODY$
BEGIN
  RETURN
    ARRAY(
      SELECT 
        operation.get_segment(segment.id)
      FROM 
        operation.segment
      WHERE 
        segment.definition_id = __document_id
    );
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION operation.get_body(bigint)
  OWNER TO postgres;





-- DROP FUNCTION operation.init(common.operation_head, common.material_specification[]);

CREATE OR REPLACE FUNCTION operation.init(
    __head common.operation_head,
    __body common.operation_segment[],
    __deps dependency_specification[])
  RETURNS bigint AS
$BODY$
DECLARE
  _item common.material_specification;
  _definition_id bigint;
  _information_id bigint;
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
    operation.information, 
    operation.definition
  WHERE 
    information.id = definition.information_id AND
    information.part_code = (__head.material_spec).part_code AND 
    information.version_num = (__head.material_spec).version_num
  INTO
    _max_version_num;

  IF (_max_version_num IS NULL) THEN
    _max_version_num := 0;

    INSERT INTO
      operation.information (
        id,
        display_name,
        published_date,
        part_code,
        version_num)
    VALUES (
      DEFAULT,
      __head.display_name,
      __head.document_date,
      (__head.material_spec).part_code,
      (__head.material_spec).version_num)
    RETURNING id INTO _information_id;
  ELSE
    SELECT
      id
    FROM
      operation.information
    WHERE
      information.part_code = (__head.material_spec).part_code AND 
      information.version_num = (__head.material_spec).version_num
    INTO
      _information_id;

  END IF;

  INSERT INTO
    operation.definition (
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

  FOREACH _item IN
    ARRAY __body
  LOOP
    IF (_item.material_type = 'CONSUMABLE') THEN
      INSERT INTO
        operation.consumable (
          definition_id,
          part_code,
          version_num,
          quantity,
          uom_code,
          material_type)
      VALUES (
        _definition_id,
        _item.part_code,
        _item.version_num,
        _item.quantity,
        _item.uom_code,
        _item.material_type);
    ELSIF (_item.material_type = 'PRIMAL') THEN
      INSERT INTO
        operation.primal (
          definition_id,
          part_code,
          version_num,
          quantity,
          uom_code,
          material_type)
      VALUES (
        _definition_id,
        _item.part_code,
        _item.version_num,
        _item.quantity,
        _item.uom_code,
        _item.material_type);
    ELSE
      RAISE '% unknown material_type', _item;
    END IF;
  END LOOP;

  RETURN _definition_id;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION operation.init(common.operation_head, common.material_specification[], dependency_specification[])
  OWNER TO postgres;


-- Function: operation.reinit(bigint, common.operation_segment[], common.dependency_specification[])

-- DROP FUNCTION operation.reinit(bigint, common.operation_segment[], common.dependency_specification[]);

CREATE OR REPLACE FUNCTION operation.reinit(
    __document_id bigint,
    __body common.operation_segment[],
    __deps common.dependency_specification[])
  RETURNS void AS
$BODY$
DECLARE
  _segment_id bigint;
  _seg common.operation_segment;
  _dep common.dependency_specification;
BEGIN

  DELETE FROM
    operation.segment
  WHERE
    definition_id = __document_id;

  FOREACH _seg IN
    ARRAY __body
  LOOP
    INSERT INTO
      operation.segment (
        id,
        gid,
        definition_id,
        operation_code)
    VALUES (
      DEFAULT,
      _seg.gid,
      __document_id,
      _seg.operation_code)
    RETURNING id INTO _segment_id;
    PERFORM operation.set_consumable_spec(_segment_id, _seg.consumable_spec);
    PERFORM operation.set_personnel_spec(_segment_id, _seg.personnel_spec);
    PERFORM operation.set_equipment_spec(_segment_id, _seg.equipmet_spec);
    PERFORM operation.set_tooling_spec(_segment_id, _seg.tooling_spec);
  END LOOP;

  FOREACH _dep IN
    ARRAY __deps
  LOOP
    INSERT INTO
      operation.dependency (
        ancestor,
        descendant,
        depth)
    VALUES (
      _item.ancestor,
      _item.descendant,
      _item.depth);
  END LOOP;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION operation.reinit(bigint, common.operation_segment[], common.dependency_specification[])
  OWNER TO postgres;
