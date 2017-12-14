CREATE OR REPLACE FUNCTION product.init(
    __head common.product_head,
    __body common.product_segment[],
    __deps common.dependency_specification[])
  RETURNS bigint AS
$BODY$
DECLARE
  _item common.product_segment;
BEGIN

  /*
  if body is null, then generate body
  1) собрать список вариантов маршрута
  2) проверить есть ли уже определение продукта, испоьзующее маршрут

  */

  IF (__body IS NULL) THEN
    __body := product.generate(__part_code, __version_num);
  RETURN 1::bigint;

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;


CREATE OR REPLACE FUNCTION product.reinit(
    __document_id bigint,
    __body common.product_segment[],
    __deps common.dependency_specification[])
  RETURNS void AS
$BODY$
DECLARE
  _item common.product_segment;
BEGIN


END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;



-- Function: operation.get_head(bigint)

-- DROP FUNCTION operation.get_head(bigint);

CREATE OR REPLACE FUNCTION product.get_head(__document_id bigint)
  RETURNS common.product_head AS
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
    'PRODUCT'::common.document_kind,
      (information.part_code, 
      information.version_num, 
      1.0::common.quantity, 
      'pcs', 
      'SALABLE')::common.inventory_specification
    )::common.product_head
  FROM
    product.information, 
    product.definition
  WHERE
    information.id = definition.information_id AND
    definition.id = __document_id;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION product.get_head(bigint)
  OWNER TO postgres;



CREATE TYPE common.product_segment AS
   (gid uuid,
    duration interval,
    consumable_spec common.consumable_specification[],
    personnel_spec common.personnel_specification[],
    equipmet_spec common.equipment_specification[],
    tooling_spec common.tooling_specification[]);
ALTER TYPE common.product_segment
  OWNER TO postgres;



CREATE TYPE TYPE common.hop_specification AS 
(
  gid uuid,
  location_spec character varying[],
  outcome_spec  common.material_specification,
  income_spec  common.material_specification[]
);