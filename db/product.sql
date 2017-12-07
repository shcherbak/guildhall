CREATE OR REPLACE FUNCTION product.init(
    __head common.product_head,
    __body common.product_body[] DEFAULT NULL)
  RETURNS bigint AS
$BODY$
DECLARE
  _item common.product_body;
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
    __body common.product_body[] DEFAULT NULL)
  RETURNS void AS
$BODY$
DECLARE
  _item common.product_body;
BEGIN


END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
