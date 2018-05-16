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
