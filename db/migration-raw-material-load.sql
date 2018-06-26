CREATE OR REPLACE FUNCTION tests._load_inventory()
  RETURNS void AS
$BODY$
BEGIN
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-022-ст20', 'Матеріал: Круг ГОСТ 2590 ст20 022', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-032-ст20', 'Матеріал: Круг ГОСТ 2590 ст20 032', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-016-ст20Х13', 'Матеріал: Круг ГОСТ 2590 ст20Х13 16', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-026-ст20Х13', 'Матеріал: Круг ГОСТ 2590 ст20Х13 26', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-030-ст20Х13', 'Матеріал: Круг ГОСТ 2590 ст20Х13 30', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-038-ст20Х13', 'Матеріал: Круг ГОСТ 2590 ст20Х13 38', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-065-ст20Х13', 'Матеріал: Круг ГОСТ 2590 ст20Х13 65', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-080-ст20Х13', 'Матеріал: Круг ГОСТ 2590 ст20Х13 80', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-056-ст20', 'Матеріал: Круг ГОСТ 2590 ст20 056', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'mm', 52.0000), ('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-036-ст20', 'Матеріал: Круг ГОСТ 2590 ст20 036', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-050-ст20', 'Матеріал: Круг ГОСТ 2590 ст20 050', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000), ('kg', 'mm', 65.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-004,0-ст45', 'Матеріал: Круг ГОСТ 2590 ст45 04,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-008,0-ст45', 'Матеріал: Круг ГОСТ 2590 ст45 08,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-010,0-ст45', 'Матеріал: Круг ГОСТ 2590 ст45 10,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-001,5-ст3', 'Матеріал: Лист ГОСТ 16523 ст3 1,5', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-003,0-ст3', 'Матеріал: Лист ГОСТ 16523 ст3 3,0', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-005,0-ст3', 'Матеріал: Лист ГОСТ 16523 ст3 5,0', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-000,8-ст65Г', 'Матеріал: Лист ГОСТ 19903 ст65Г 0,8', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-001,2-ст65Г', 'Матеріал: Лист ГОСТ 19903 ст65Г 1,2', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-001,5-ст65Г', 'Матеріал: Лист ГОСТ 19903 ст65Г 1,5', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-002,0-ст65Г', 'Матеріал: Лист ГОСТ 19903 ст65Г 2,0', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-002,5-ст65Г', 'Матеріал: Лист ГОСТ 19903 ст65Г 2,5', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-003,0-ст65Г', 'Матеріал: Лист ГОСТ 19903 ст65Г 3,0', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-004,0-ст65Г', 'Матеріал: Лист ГОСТ 19903 ст65Г 4,0', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-005,0-ст65Г', 'Матеріал: Лист ГОСТ 19903 ст65Г 5,0', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-001,0-ст08Х17', 'Матеріал: Лист ГОСТ 5582 ст08Х17 01,0', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-001,5-ст08Х17', 'Матеріал: Лист ГОСТ 5582 ст08Х17 01,5', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-002,0-ст08Х17', 'Матеріал: Лист ГОСТ 5582 ст08Х17 02,0', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-004,0-ст08Х17', 'Матеріал: Лист ГОСТ 5582 ст08Х17 04,0', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Плс-020х4-ст3', 'Матеріал: Полоса ГОСТ 103 ст3 20х4', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Плс-025х5-ст3', 'Матеріал: Полоса ГОСТ 103 ст3 25х5', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Плс-030х7-ст3', 'Матеріал: Полоса ГОСТ 103 ст3 30х7', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Плс-040х8-ст3', 'Матеріал: Полоса ГОСТ 103 ст3 40х8', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-024,0х04,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 024,0х4,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 1.9700)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-027,0х04,5-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 027,0х4,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 3.0002), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-033,7х03,2-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 033,7х3,2', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 2.6629), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-034,0х05,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 034,0х5,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 4.1978)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-034,0х06,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 034,0х6,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 5.0374)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-042,0х06,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 042,0х6,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 6.2226)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-042,3х03,2-ст20-В', 'Матеріал: Труба ГОСТ 3262 ст20 042,3х3,2', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 3.0900)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-048,0х07,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 048,0х7,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 8.2968)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-048,0х03,5-ст20-В', 'Матеріал: Труба ГОСТ 3262 ст20 048,0х3,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 3.8400), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-051,0х03,0-ст20-Ш', 'Матеріал: Труба ГОСТ 10705 ст20 051,0х3,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 3.7780), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-051,0х06,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 051,0х6,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 7.5560), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-057,0х03,5-ст20-Ш', 'Матеріал: Труба ГОСТ 10705 ст20 057,0х3,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 4.9262)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-057,0х06,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 057,0х6,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 8.4450), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-057,0х08,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 057,0х8,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 11.2600), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-068,0х06,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 068,0х6,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 10.0747)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-089,0х06,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 089,0х6,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 12.2800), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-076,0х03,5-ст20-Ш', 'Матеріал: Труба ГОСТ 10705 ст20 076,0х3,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 6.5683)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-102,0х06,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 102,0х6,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 14.2100)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-114,0х04,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 114,0х4,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 10.8500), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-089,0х03,5-ст20-Ш', 'Матеріал: Труба ГОСТ 10705 ст20 089,0х3,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 7.6918), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-095,0х06,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 095,0х6,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 14.0750), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-102,0х03,5-ст20-Ш', 'Матеріал: Труба ГОСТ 10705 ст20 102,0х3,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 8.8154)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-108,0х14,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 108,0х14,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 37.3357), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-108,0х04,0-ст20-Ш', 'Матеріал: Труба ГОСТ 10705 ст20 108,0х4,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 10.6673)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-127,0х16,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 127,0х16,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 50.1760)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-127,0х04,0-ст20-Ш', 'Матеріал: Труба ГОСТ 10705 ст20 127,0х4,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 12.5440), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-133,0х05,0-ст20-Ш', 'Матеріал: Труба ГОСТ 10705 ст20 133,0х5,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 16.4208)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-152,0х04,0-ст20-Ш', 'Матеріал: Труба ГОСТ 10705 ст20 152,0х4,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 15.0133)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-159,0х19,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 159,0х19,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 74.5973), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-159,0х05,0-ст20-Ш', 'Матеріал: Труба ГОСТ 10705 ст20 159,0х5,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 19.6309)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-063,0х04,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 063,0х4,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 5.8200)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-180,0х05,5-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 180,0х5,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 24.4460), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-057,0х03,0-ст20-Ш', 'Матеріал: Труба ГОСТ 10705 ст20 057,0х3,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 4.0000), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-219,0х14,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 219,0х14,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 70.7800)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-245,0х20,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 245,0х20,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 120.9953), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-245,0х06,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 245,0х6,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 36.2986), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-273,0х06,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 273,0х6,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 40.4470)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-089,0х03,0-ст20-Ш', 'Матеріал: Труба ГОСТ 10705 ст20 089,0х3,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 6.3600), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-102,0х03,0-ст20-Ш', 'Матеріал: Труба ГОСТ 10705 ст20 102,0х3,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 7.3200)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-350,0х21,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 350,0х21,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 181.4929)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-377,0х09,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 377,0х9,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 83.7831), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-426,0х09,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 426,0х9,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 94.6726)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-530,0х09,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 530,0х9,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 117.7852), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-020,0х03,5-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 020,0х3,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 1.7285)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-025,0х04,5-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 025,0х4,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 2.7780), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-038,0х07,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 038,0х7,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 6.5683), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-045,0х07,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 045,0х7,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 7.7783), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-076,0х14,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 076,0х14,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 26.2733)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-089,0х14,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 089,0х14,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 30.7674)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-025,0х02,0-ст20Х13', 'Матеріал: Труба ГОСТ 9940 ст20Х13 025,0х2,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 1.2346), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-036,0х03,5-ст20Х13', 'Матеріал: Труба ГОСТ 9940 ст20Х13 036,0х3,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 3.1113), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-045,0х03,5-ст20Х13', 'Матеріал: Труба ГОСТ 9940 ст20Х13 045,0х3,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 3.8891), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-057,0х04,0-ст20Х13', 'Матеріал: Труба ГОСТ 9940 ст20Х13 057,0х4,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 5.6300)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-068,0х04,0-ст20Х13', 'Матеріал: Труба ГОСТ 9940 ст20Х13 068,0х4,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 6.7165)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-080,0х04,0-ст20Х13', 'Матеріал: Труба ГОСТ 9940 ст20Х13 080,0х4,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 7.9017), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-083,0х04,0-ст20Х13', 'Матеріал: Труба ГОСТ 9940 ст20Х13 083,0х4,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 8.1980), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-102,0х04,5-ст20Х13', 'Матеріал: Труба ГОСТ 9940 ст20Х13 102,0х4,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 11.3340), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-121,0х04,5-ст20Х13', 'Матеріал: Труба ГОСТ 9940 ст20Х13 121,0х4,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 13.4453)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-127,0х04,5-ст20Х13', 'Матеріал: Труба ГОСТ 9940 ст20Х13 127,0х4,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 14.1120)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-168,0х06,0-ст20Х13', 'Матеріал: Труба ГОСТ 9940 ст20Х13 168,0х6,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 24.8905)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-190,0х07,0-ст20Х13', 'Матеріал: Труба ГОСТ 9940 ст20Х13 190,0х7,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 32.8416), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-219,0х08,0-ст20Х13', 'Матеріал: Труба ГОСТ 9940 ст20Х13 219,0х8,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 43.2620), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-305,0х14,5-ст20Х13', 'Матеріал: Труба ГОСТ 9940 ст20Х13 305,0х14,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 109.2044)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-375,0х15,0-ст20Х13', 'Матеріал: Труба ГОСТ 9940 ст20Х13 375,0х15,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 138.8977), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Квд-080х080-ст3ПС', 'Матеріал: Заготовка квадратна ст3пс 080х080', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Квд-100х100-ст3ПС', 'Матеріал: Заготовка квадратна ст3пс 100х100', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Квд-125х125-ст3ПС', 'Матеріал: Заготовка квадратна ст3пс 125х125', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-060-ст3ПС', 'Матеріал: Заготовка кругла ст3пс 060', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'ПЕ 15803-020', 'Матеріал: Поліетилен високого тиску ГОСТ16337-77 сорт 15803-020', 1, '2015-03-06', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Ф-4', 'Матеріал: Фторопласт Ф4 ГОСТ10007', 1, '2015-03-06', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-008,99-ст10', 'Матеріал: Круг ГОСТ 7417 ст10 08,99', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-010,83-ст10', 'Матеріал: Круг ГОСТ 7417 ст10 10,83', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-014,66-ст10', 'Матеріал: Круг ГОСТ 7417 ст10 14,66', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-018,34-ст10', 'Матеріал: Круг ГОСТ 7417 ст10 18,34', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Шст-S10-ст10', 'Матеріал: Шестигранник ГОСТ 8560 ст10 S10', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 0.6800)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Шст-S14-ст10', 'Матеріал: Шестигранник ГОСТ 8560 ст10 S14', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 1.3300), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Шст-S17-ст10', 'Матеріал: Шестигранник ГОСТ 8560 ст10 S17', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 1.9600)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Шст-S19-ст10', 'Матеріал: Шестигранник ГОСТ 8560 ст10 S19', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 2.4500)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-025-ст10', 'Матеріал: Круг ГОСТ 7417 ст10 25', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-133,0х05,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 133,0х5,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 16.4208)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-095,0х03,5-ст20-Ш', 'Матеріал: Труба ГОСТ 10705 ст20 095,0х3,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 8.2104)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-133,0х04,0-ст20-Ш', 'Матеріал: Труба ГОСТ 10705 ст20 133,0х4,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 13.1366), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-020,0х02,5-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 020,0х2,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 1.2346), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-025,0х03,0-ст20-К', 'Матеріал: Труба ГОСТ 8734 ст20 025,0х3,0', 1, '2014-10-08', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 1.8520)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-032,0х03,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 032,0х3,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 2.3705)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-038,0х03,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 038,0х3,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 2.8150)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-042,0х03,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 042,0х3,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 3.1113)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-045,0х03,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 045,0х3,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 3.3335), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-057,0х03,5-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 057,0х3,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 4.9262)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-068,0х03,2-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 068,0х3,2', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 5.3732), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-068,0х03,5-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 068,0х3,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 5.8769), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-076,0х03,5-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 076,0х3,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 6.5683), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-083,0х04,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 083,0х4,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 8.1980)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-083,0х06,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 083,0х6,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 12.2971), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-102,0х04,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 102,0х4,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 10.0747)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-102,0х05,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 102,0х5,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 12.5934)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-121,0х05,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 121,0х5,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 14.9392)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-168,0х06,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 168,0х6,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 24.8905), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-152,0х05,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 152,0х5,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 18.7666)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-089,0х03,5-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 089,0х3,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 7.6918)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-108,0х04,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 108,0х4,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 10.6673), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-219,0х06,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 219,0х6,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 32.4465), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-273,0х10,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 273,0х10,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 64.1161), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-325,0х09,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 325,0х9,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 69.3332)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-377,0х08,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 377,0х8,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 71.9661)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-426,0х08,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 426,0х8,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 81.5226)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-159,0х06,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 159,0х6,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 23.5570), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-180,0х07,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 180,0х7,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 31.1131), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-325,0х40,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 325,0х40,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 321.0079)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-245,0х22,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 245,0х22,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 133.0948), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-180,0х18,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 180,0х18,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 80.0051), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-021,3х02,8-ст20-В', 'Матеріал: Труба ГОСТ 3262 ст20 021,3х2,8', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 1.2800), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-026,8х02,8-ст20-В', 'Матеріал: Труба ГОСТ 3262 ст20 026,8х2,8', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 1.6600), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-033,5х03,2-ст20-В', 'Матеріал: Труба ГОСТ 3262 ст20 033,5х3,2', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 2.3900)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-168,0х08,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 168,0х8,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 33.1873), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-068,0х04,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 068,0х4,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 6.7165)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-020,0х03,0-ст20-К', 'Матеріал: Труба ГОСТ 8734 ст20 020,0х3,0', 1, '2014-10-08', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 1.4816)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-219,0х08,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 219,0х8,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 43.2620), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-219,0х07,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 219,0х7,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 37.8542), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-152,0х06,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 152,0х6,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 22.5199)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-121,0х04,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 121,0х4,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 11.9514)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-133,0х04,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 133,0х4,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 13.1366)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-089,0х04,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 089,0х4,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 8.7907)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-057,0х04,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 057,0х4,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 5.6300), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-020-ст3', 'Матеріал: Лист ГОСТ 16523 ст3 20', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-022-ст3', 'Матеріал: Лист ГОСТ 16523 ст3 22', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-024-ст3', 'Матеріал: Лист ГОСТ 16523 ст3 24', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-030-ст3', 'Матеріал: Лист ГОСТ 16523 ст3 30', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-032-ст3', 'Матеріал: Лист ГОСТ 16523 ст3 32', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-034-ст3', 'Матеріал: Лист ГОСТ 16523 ст3 34', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-036-ст3', 'Матеріал: Лист ГОСТ 16523 ст3 36', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-273,0х09,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 273,0х9,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 58.6704), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-273,0х12,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 273,0х12,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 77.3382), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-159,0х04,5-ст20-Ш', 'Матеріал: Труба ГОСТ 10705 ст20 159,0х4,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 17.1500)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-133,0х03,5-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 133,0х3,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 11.1921), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-245,0х08,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 245,0х8,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 46.8178), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-095,0х04,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 095,0х4,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 8.9882)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-068,0х03,5-ст20-Ш', 'Матеріал: Труба ГОСТ 10705 ст20 068,0х3,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 5.5744)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-095,0х04,0-ст20-Ш', 'Матеріал: Труба ГОСТ 10705 ст20 095,0х4,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 8.9882), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-108,0х06,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 108,0х6,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 15.9000), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-133,0х03,5-ст20-Ш', 'Матеріал: Труба ГОСТ 10705 ст20 133,0х3,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 11.1921), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-051,0х02,5-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 051,0х2,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 2.9900), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-273,0х08,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 273,0х8,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 52.2800), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-080,0х03,5-ст20Х13', 'Матеріал: Труба ГОСТ 9940 ст20Х13 080,0х3,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 6.5200)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-020,0х02,0-ст20Х13', 'Матеріал: Труба ГОСТ 9940 ст20Х13 020,0х2,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 0.8800)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-038,0х05,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 038,0х5,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 4.0743)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-073,0х14,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 073,0х14,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 20.3964), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-133,0х06,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 133,0х6,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 18.8160)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-076,0х06,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 076,0х6,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 10.3710)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-152,0х16,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 152,0х16,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 53.7318)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-060-ст3', 'Матеріал: Лист ГОСТ 16523 ст3 60', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-159,0х06,0-ст20Х13', 'Матеріал: Труба ГОСТ 9940 ст20Х13 159,0х6,0', 1, '2017-03-06', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 22.6681), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-000,8-ст08Х17', 'Матеріал: Лист ГОСТ 5582 ст08Х17 00,8', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-012-ст3', 'Матеріал: Лист ГОСТ 16523 ст3 12', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-040-ст3', 'Матеріал: Лист ГОСТ 16523 ст3 40', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-008,0-ст08Х17', 'Матеріал: Лист ГОСТ 5582 ст08Х17 08,0', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-010,0-ст08Х17', 'Матеріал: Лист ГОСТ 5582 ст08Х17 10,0', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-012,0-ст08Х17', 'Матеріал: Лист ГОСТ 5582 ст08Х17 12,0', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-014,0-ст08Х17', 'Матеріал: Лист ГОСТ 5582 ст08Х17 14,0', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-015,0-ст08Х17', 'Матеріал: Лист ГОСТ 5582 ст08Х17 15,0', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Шст-S27-ст10', 'Матеріал: Шестигранник ГОСТ 8560 ст10 S27', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 4.9400)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-000,7-ст08Х17', 'Матеріал: Лист ГОСТ 5582 ст08Х17 00,7', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-001,2-ст08Х17', 'Матеріал: Лист ГОСТ 5582 ст08Х17 01,2', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-001,8-ст08Х17', 'Матеріал: Лист ГОСТ 5582 ст08Х17 01,8', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-002,5-ст08Х17', 'Матеріал: Лист ГОСТ 5582 ст08Х17 02,5', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-002,8-ст08Х17', 'Матеріал: Лист ГОСТ 5582 ст08Х17 02,8', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-003,8-ст08Х17', 'Матеріал: Лист ГОСТ 5582 ст08Х17 03,8', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-004,4-ст08Х17', 'Матеріал: Лист ГОСТ 5582 ст08Х17 04,4', 1, '2016-12-21', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-005,0-ст08Х17', 'Матеріал: Лист ГОСТ 5582 ст08Х17 05,0', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-006,0-ст08Х17', 'Матеріал: Лист ГОСТ 5582 ст08Х17 06,0', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-020-ст20', 'Матеріал: Круг ГОСТ 2590 ст20 020', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-036,0х03,0-ст20Х13', 'Матеріал: Труба ГОСТ 9940 ст20Х13 036,0х3,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 2.4100)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-045,0х03,0-ст20Х13', 'Матеріал: Труба ГОСТ 9940 ст20Х13 045,0х3,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 3.0700), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-057,0х03,5-ст20Х13', 'Матеріал: Труба ГОСТ 9940 ст20Х13 057,0х3,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 4.5600)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-068,0х03,5-ст20Х13', 'Матеріал: Труба ГОСТ 9940 ст20Х13 068,0х3,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 5.5000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-102,0х04,0-ст20Х13', 'Матеріал: Труба ГОСТ 9940 ст20Х13 102,0х4,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 9.5400)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-038,0х06,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 038,0х6,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 4.7300)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-089,0х11,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 089,0х11,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 21.1600), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-102,0х12,5-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 102,0х12,5', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 27.5900), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-003,5-ст65Г', 'Матеріал: Лист ГОСТ 19903 ст65Г 3,5', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-003,8-ст65Г', 'Матеріал: Лист ГОСТ 19903 ст65Г 3,8', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-001,8-ст65Г', 'Матеріал: Лист ГОСТ 19903 ст65Г 1,8', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Шст-S12-ст10', 'Матеріал: Шестигранник ГОСТ 8560 ст10 S12', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 0.9700)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Шст-S15-ст10', 'Матеріал: Шестигранник ГОСТ 8560 ст10 S15', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 1.5200)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-219,0х10,0-ст20Х13', 'Матеріал: Труба ГОСТ 9940 ст20Х13 219,0х10,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 67.6800)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-076,0х03,0-ст20-Ш', 'Матеріал: Труба ГОСТ 10705 ст20 076,0х3,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 5.4000), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-530,0х11,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 530,0х11,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 140.7900)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-014-ст09Г2С', 'Матеріал: Лист ГОСТ 16523 ст09Г2С 14', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-075-ст09Г2С', 'Матеріал: Заготовка кругла ст09Г2С 075', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-080-ст09Г2С', 'Матеріал: Заготовка кругла ст09Г2С 080', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-100-ст09Г2С', 'Матеріал: Заготовка кругла ст09Г2С 100', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Квд-150х150-ст3ПС', 'Матеріал: Заготовка квадратна ст3пс 150х150', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-016,0-ст08Х17', 'Матеріал: Лист ГОСТ 5582 ст08Х17 16,0', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Квд-150х150-ст08Г2С', 'Матеріал: Заготовка квадратна ст08г2с 150х150', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-203,0х07,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 203,0х7,0', 1, '2014-08-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 33.8300), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-033,7х02,8-ст20-Ш', 'Матеріал: Труба ГОСТ 10705 ст20 033,7х2,8', 1, '2015-03-05', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 2.1300)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-001,0-ст65Г', 'Матеріал: Лист ГОСТ 19903 ст65Г 1,0', 1, '2014-08-30', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-108,0х03,0-ст20-Ш', 'Матеріал: Труба ГОСТ 10705 ст20 108,0х3,0', 1, '2015-03-05', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 7.7700)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-042,3х02,8-ст20-В', 'Матеріал: Труба ГОСТ 3262 ст20 042,3х2,8', 1, '2015-03-05', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 2.7300), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-025,0х02,0-ст20-К', 'Матеріал: Труба ГОСТ 8734 ст20 025,0х2,0', 1, '2015-03-05', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 1.1300)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-030,0х02,0-ст20-К', 'Матеріал: Труба ГОСТ 8734 ст20 030,0х2,0', 1, '2015-03-05', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-035,0х02,0-ст20-К', 'Матеріал: Труба ГОСТ 8734 ст20 035,0х2,0', 1, '2015-03-05', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-108,0х03,5-ст20-Ш', 'Матеріал: Труба ГОСТ 10705 ст20 108,0х3,5', 1, '2015-03-05', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000), ('m', 'kg', 9.0200)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-133,0х04,5-ст20-Ш', 'Матеріал: Труба ГОСТ 10705 ст20 133,0х4,5', 1, '2015-03-05', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 14.2600), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-014-ст20Х13', 'Матеріал: Круг ГОСТ 2590 ст20Х13 14', 1, '2015-03-05', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-159,0х04,0-ст20-Ш', 'Матеріал: Труба ГОСТ 10705 ст20 159,0х4,0', 1, '2015-03-16', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'kg', 15.2900), ('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-028-ст20', 'Матеріал: Круг ГОСТ 2590 ст20 028', 1, '2015-10-13', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-030-ст20', 'Матеріал: Круг ГОСТ 2590 ст20 030', 1, '2015-10-15', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-032,0х05,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 032,0х5,0', 1, '2015-10-19', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-025-ст20', 'Матеріал: Круг ГОСТ 2590 ст20 025', 1, '2015-10-20', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Плс-030х6-ст3', 'Матеріал: Полоса ГОСТ 103 ст3 30х6', 1, '2015-10-20', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-000,8-ст3', 'Матеріал: Лист ГОСТ 16523 ст3 0,8', 1, '2015-10-28', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-005-ст20Х13', 'Матеріал: Круг ГОСТ 2590 ст20Х13 05', 1, '2015-10-31', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-007,15-ст10', 'Матеріал: Круг ГОСТ 7417 ст10 07.15', 1, '2015-10-31', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-048,3х03,5-ст20-Ш', 'Матеріал: Труба ГОСТ 10704 ст20 048,3х3,5', 1, '2015-11-02', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-004,0-ст3', 'Матеріал: Лист ГОСТ 19903 ст3 4,0', 1, '2015-11-05', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-006,0-ст3', 'Матеріал: Лист ГОСТ 19903 ст3 6,0', 1, '2015-11-05', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-008,0-ст3', 'Матеріал: Лист ГОСТ 19903 ст3 8,0', 1, '2015-11-05', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Кв.Трб-60х60-ст3', 'Матеріал: Кв. труба ГОСТ 8639 ст3 60х60', 1, '2015-11-05', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Кв.Трб-80х80-ст3', 'Матеріал: Кв. труба ГОСТ 8639 ст3 80х80', 1, '2015-11-05', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-102,0х10,5-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 102,0х10,5', 1, '2015-11-11', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-022,0х03,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 022,0х3,0', 1, '2015-11-26', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-014-ст03', 'Матеріал: Круг ГОСТ2590 ст03 014', 1, '2015-12-28', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-039-ст03', 'Матеріал: Круг ГОСТ2590 ст03 039', 1, '2015-12-28', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-018-ст03', 'Матеріал: Круг ГОСТ 2590 ст03 018', 1, '2015-12-28', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-032,0х06,0-ст20Х13', 'Матеріал: Труба ГОСТ 9940 ст20Х13 032,0х6,0', 1, '2016-01-23', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-194,0х09,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 194,0х9,0', 1, '2016-01-23', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-045,0х03,5-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 045,0х03,5', 1, '2016-01-29', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-159,0х05,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 159,0х05,0', 1, '2016-01-29', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-168,0х10,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 168,0х10,0', 1, '2016-01-29', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-280,0х10,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 280,0х10,0', 1, '2016-01-29', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Квд-080х080-ст65Г', 'Матеріал: Заготовка квадратна ст65Г 080х080', 1, '2016-02-10', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-048,0х03,0-ст20-В', 'Матеріал: Труба ГОСТ 3262 ст20 048,0х3,0', 1, '2016-05-18', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-028,0х03,5-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 028,0х3,5', 1, '2016-05-21', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-036,0х06,0-ст20Х13', 'Матеріал: Труба ГОСТ 9940 ст20Х13 036,0х6,0', 1, '2016-09-30', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-127,0х03,5-ст20-Ш', 'Матеріал: Труба ГОСТ 10705 ст20 127х3,5', 1, '2016-12-20', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-024-ст20', 'Матеріал: Круг ГОСТ 2590 ст20 024', 1, '2016-12-16', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-127,0х06,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 127,0х06,0', 1, '2016-12-16', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-152,0х03,5-ст20-Ш', 'Матеріал: Труба ГОСТ 10704 ст20 152,0х3,5  ', 1, '2016-12-20', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-180,0х05,5-ст20-Ш', 'Матеріал: Труба ГОСТ 10704 ст20 152,0х4,0', 1, '2016-12-20', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-219,0х06,0-ст20-Ш', 'Матеріал: Труба ГОСТ 10704 ст20 219,0х6,0', 1, '2016-12-21', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-219,0х07,0-ст20-Ш', 'Матеріал: Труба ГОСТ 10704 ст20 219,0х7,0', 1, '2016-12-21', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-219,0х08,0-ст20-Ш', 'Матеріал: Труба ГОСТ 10704 ст20 219,0х8,0', 1, '2016-12-21', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-273,0х06,0-ст20-Ш', 'Матеріал: Труба ГОСТ 10704 ст20 273,0х6,0', 1, '2016-12-21', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-273,0х08,0-ст20-Ш', 'Матеріал: Труба ГОСТ 10704 ст20 273,0х8,0', 1, '2016-12-21', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-377,0х09,0-ст20-Ш', 'Матеріал: Труба ГОСТ 10704 ст20 377,0х9,0', 1, '2016-12-21', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-051,0х02,8-ст20-Ш', 'Матеріал: Труба ГОСТ 10704 ст20 51,0х2,8', 1, '2016-12-21', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-377,0х10,0-ст20-Ш', 'Матеріал: Труба ГОСТ 10704 ст20 377,0х10,0', 1, '2016-12-21', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-426,0х09,0-ст20-Ш', 'Матеріал: Труба ГОСТ 10704 ст20 426,0х9,0', 1, '2016-12-21', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-530,0х11,0-ст20-Ш', 'Матеріал: Труба ГОСТ 10704 ст20 530,0х11,0', 1, '2016-12-21', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-245,0х07,0-ст20-К', 'Матеріал: Труба ГОСТ 8734 ст20 245,0х7,0', 1, '2016-12-21', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-051,0х02,5-ст20-Ш', 'Матеріал: Труба ГОСТ 10704 ст20 51,0х2,5', 1, '2016-12-21', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Шст-S24-ст10', 'Матеріал: Шестигранник ГОСТ 8560 ст10 S24', 1, '2017-01-20', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Шст-S32-ст10', 'Матеріал: Шестигранник ГОСТ 8560 ст10 S32', 1, '2017-01-20', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Шст-S50-ст10', 'Матеріал: Шестигранник ГОСТ 8560 ст10 S50', 1, '2017-01-20', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-020,0х02,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 020,0х2,0', 1, '2017-01-20', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-048,0х08,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 048,0х8,0', 1, '2017-01-20', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-089,0х08,5-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 089,0х8,5', 1, '2017-01-20', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-096,0х06,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 096,0х6,0', 1, '2017-01-20', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-108,0х10,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 108,0х10,0', 1, '2017-01-20', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-128,0х17,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 128,0х17,0', 1, '2017-01-20', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-133,0х21,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 133,0х21,0', 1, '2017-01-20', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-140,0х06,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 140,0х6,0', 1, '2017-01-20', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-146,0х08,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 146,0х8,0', 1, '2017-01-20', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-152,0х13,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 152,0х13,0', 1, '2017-01-20', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-160,0х14,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 160,0х14,0', 1, '2017-01-20', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-164,0х17,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 164,0х17,0', 1, '2017-01-20', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-171,0х20,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 171,0х20,0', 1, '2017-01-20', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-140,0х06,0-ст20-Ш', 'Матеріал: Труба ГОСТ 10704 ст20 140,0х6,0', 1, '2017-02-10', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Лст-003,0-ст08Х17', 'Матеріал: Лист ГОСТ 5582 ст08Х17 03,0', 1, '2017-02-23', 'kg', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('kg', 'kg', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Трб-127,0х05,0-ст20-К', 'Матеріал: Труба ГОСТ 8733 ст20 127,0х05,0', 1, '2017-03-02', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-070-ст20', 'Матеріал: Круг ГОСТ 2590 ст20 070', 1, '2017-03-06', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, 'Крг-087-ст20', 'Матеріал: Круг ГОСТ 2590 ст20 087', 1, '2017-03-06', 'm', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('m', 'm', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('BUYABLE'), ('STORABLE'), ('PRIMAL')]::common.inventory_kind[]
  );

END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION tests._load_data()
  OWNER TO postgres;