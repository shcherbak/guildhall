-- Function: operation.init(common.operation_head, common.operation_segment[], common.dependency_specification[])

-- DROP FUNCTION operation.init(common.operation_head, common.operation_segment[], common.dependency_specification[]);

CREATE OR REPLACE FUNCTION operation.init(
    __head common.operation_head,
    __body common.operation_segment[],
    __deps common.dependency_specification[])
  RETURNS bigint AS
$BODY$
DECLARE
  _information_id bigint;
  _definition_id bigint;
  _max_version_num integer;
  _segment_id bigint;
  _seg common.operation_segment;
  _dep common.dependency_specification;
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
    information.part_code = (__head.producible_spec).part_code AND 
    information.version_num = (__head.producible_spec).version_num
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
      (__head.producible_spec).part_code,
      (__head.producible_spec).version_num)
    RETURNING id INTO _information_id;
  ELSE
    SELECT
      id
    FROM
      operation.information
    WHERE
      information.part_code = (__head.producible_spec).part_code AND 
      information.version_num = (__head.producible_spec).version_num
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
      _definition_id,
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

  RETURN _definition_id;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION operation.init(common.operation_head, common.operation_segment[], common.dependency_specification[])
  OWNER TO postgres;
