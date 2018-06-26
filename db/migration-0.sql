CREATE OR REPLACE FUNCTION tests._load_inventory()
  RETURNS void AS
$BODY$
BEGIN
  -- material ++
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
  -- material --
  -- products ++
  PERFORM inventory.init(
    (NULL, NULL, '11.01.025-100', 'Кран 11с031п DN25x20', 1, '2015-11-03', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.01.032-100', 'Кран 11с031п DN32х25', 1, '2015-11-03', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.01.040-100', 'Кран 11с031п DN40х32', 1, '2015-11-03', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.01.050-100', 'Кран 11с031п DN50х40', 1, '2015-11-03', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.01.065-100', 'Кран 11с031п DN65х50', 1, '2015-11-03', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.01.080-100', 'Кран 11с031п DN80х65', 1, '2015-11-03', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.01.100-100', 'Кран 11с031п DN100х80', 1, '2015-11-03', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.01.125-100', 'Кран 11с031п DN125х100', 1, '2015-11-03', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.01.150-100', 'Кран 11с031п DN150х125', 1, '2015-11-03', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.01.200-100', 'Кран 11с031п DN200х150', 1, '2015-11-03', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.02.020-100', 'Кран 11с037п DN20х20', 1, '2015-11-03', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.02.025-100', 'Кран 11с037п DN25х25', 1, '2015-11-03', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.02.032-100', 'Кран 11с037п DN32х32', 1, '2015-11-03', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.02.040-100', 'Кран 11с037п DN40х40', 1, '2015-11-03', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.02.050-100', 'Кран 11с037п DN50х50', 1, '2015-11-03', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.02.065-100', 'Кран 11с037п DN65х65', 1, '2015-11-03', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.02.080-100', 'Кран 11с037п DN80х80', 1, '2015-11-03', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.02.100-100', 'Кран 11с037п DN100х100', 1, '2015-11-03', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.02.125-100', 'Кран 11с037п DN125х125', 1, '2015-11-03', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.02.150-100', 'Кран 11с037п DN150х150', 1, '2015-11-03', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.21.015-001', 'Кран 11с21п DN15х10', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.21.020-001', 'Кран 11с21п DN20х15', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.21.025-001', 'Кран 11с21п DN25х20', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.21.032-001', 'Кран 11с21п DN32х25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.21.040-001', 'Кран 11с21п DN40х32', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.21.050-001', 'Кран 11с21п DN50х40', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.21.065-001', 'Кран 11с21п DN65х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.21.080-001', 'Кран 11с21п DN80х65', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.21.100-001', 'Кран 11с21п DN100х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.21.125-001', 'Кран 11с21п DN125х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.21.150-001', 'Кран 11с21п DN150х125', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.21.200-001', 'Кран 11с21п DN200х150', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.22.015-001', 'Кран 11с22п DN15х10', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.22.020-001', 'Кран 11с22п DN20х15', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.22.025-001', 'Кран 11с22п DN25х20', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.22.032-001', 'Кран 11с22п DN32х25', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.22.040-001', 'Кран 11с22п DN40х32', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.22.050-001', 'Кран 11с22п DN50х40', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.22.065-001', 'Кран 11с22п DN65х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.22.080-001', 'Кран 11с22п DN80х65', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.22.100-001', 'Кран 11с22п DN100х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.22.125-001', 'Кран 11с22п DN125х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.22.150-001', 'Кран 11с22п DN150х125', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.22.200-001', 'Кран 11с22п DN200х150', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.23.025-001', 'Кран 11с31п1 DN25х20', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.23.032-001', 'Кран 11с31п1 DN32х25', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.23.040-001', 'Кран 11с31п1 DN40х32', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.23.050-001', 'Кран 11с31п1 DN50х40', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.23.065-001', 'Кран 11с31п1 DN65х50', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.23.080-001', 'Кран 11с31п1 DN80х65', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.23.100-001', 'Кран 11с31п1 DN100х80', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.23.125-001', 'Кран 11с31п1 DN125х100', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.23.150-001', 'Кран 11с31п1 DN150х125', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.23.200-001', 'Кран 11с931п1 DN200x150', 1, '2016-02-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.23.200-002', 'Кран 11с331п1 DN200x150', 1, '2016-02-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.23.200-003', 'Кран 11с31п1 DN200х150', 1, '2016-02-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.24.025-001', 'Кран 11с32п1 DNх25х20', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.24.032-001', 'Кран 11с32п1 DN32х25', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.24.040-001', 'Кран 11с32п1 DN40х32', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.24.050-001', 'Кран 11с32п1 DN50х40', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.24.065-001', 'Кран 11с32п1 DN65х50', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.24.080-001', 'Кран 11с32п1 DN80х65', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.24.100-001', 'Кран 11с32п1 DN100х80', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.24.125-001', 'Кран 11с32п1 DN125х100', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.24.150-001', 'Кран 11с32п1 DN150х125', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.24.200-001', 'Кран 11с932п1 DN200x150', 1, '2016-02-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.24.200-002', 'Кран 11с332п1 DN200x150', 1, '2016-02-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.24.200-003', 'Кран 11с32п1 DN200х150', 1, '2016-02-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.25.020-001', 'Кран 11с37п1 DN20х20', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.25.025-001', 'Кран 11с37п1 DN25х25', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.25.032-001', 'Кран 11с37п1 DN32х32', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.25.040-001', 'Кран 11с37п1 DN40х40', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.25.050-001', 'Кран 11с37п1 DN50х50', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.25.065-001', 'Кран 11с37п1 DN65х65', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.25.080-001', 'Кран 11с37п1 DN80х80', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.25.100-001', 'Кран 11с37п1 DN100х100', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.25.125-001', 'Кран 11с37п1 DN125х125', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.25.150-001', 'Кран 11с937п1 DN150x150', 1, '2016-02-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.25.150-002', 'Кран 11с337п1 DN150x150', 1, '2016-02-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.25.150-003', 'Кран 11с37п1 DN150х150', 1, '2016-02-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.26.020-001', 'Кран 11с38п1 DN20х20', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.26.025-001', 'Кран 11с38п1 DN25х25', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.26.032-001', 'Кран 11с38п1 DN32х32', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.26.040-001', 'Кран 11с38п1 DN40х40', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.26.050-001', 'Кран 11с38п1 DN50х50', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.26.065-001', 'Кран 11с38п1 DN65х65', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.26.080-001', 'Кран 11с38п1 DN80х80', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.26.100-001', 'Кран 11с38п1 DN100х100', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.26.125-001', 'Кран 11с38п1 DN125х125', 1, '2016-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.26.150-001', 'Кран 11с938п1 DN150x150', 1, '2016-02-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.26.150-002', 'Кран 11с337п1 DN150x150', 1, '2016-02-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.26.150-003', 'Кран 11с38п1 DN150х150', 1, '2016-02-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.27.015-001', 'Кран 11с27п DN15x10', 1, '2016-05-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.27.020-001', 'Кран 11с27п DN20х15', 1, '2016-05-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.27.025-001', 'Кран 11с27п DN25х20', 1, '2016-05-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.27.032-001', 'Кран 11с27п DN32х25', 1, '2016-05-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.27.040-001', 'Кран 11с27п DN40х32', 1, '2016-05-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.27.050-001', 'Кран 11с27п DN50х40', 1, '2016-05-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.27.065-001', 'Кран 11с27п DN65х50', 1, '2016-05-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.27.080-001', 'Кран 11с27п DN80х65', 1, '2016-05-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.27.100-001', 'Кран 11с27п DN100х80', 1, '2016-05-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.27.125-001', 'Кран 11с27п DN125х100', 1, '2016-05-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.27.150-001', 'Кран 11с27п DN150х125', 1, '2016-05-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.27.200-001', 'Кран 11с27п DN200х150', 1, '2016-05-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.28.015-001', 'Кран 11с28п DN15х10', 1, '2016-05-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.28.020-001', 'Кран 11с28п DN20х15', 1, '2016-05-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.28.025-001', 'Кран 11с28п DN25х20', 1, '2016-05-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.28.032-001', 'Кран 11с28п DN32х25', 1, '2016-05-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.28.040-001', 'Кран 11с28п DN40х32', 1, '2016-05-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.28.050-001', 'Кран 11с28п DN50х40', 1, '2016-05-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.28.065-001', 'Кран 11с28п DN65х50', 1, '2016-05-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.28.080-001', 'Кран 11с28п DN80х65', 1, '2016-05-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.28.100-001', 'Кран 11с28п DN100х80', 1, '2016-05-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.28.125-001', 'Кран 11с28п DN125х100', 1, '2016-05-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.28.150-001', 'Кран 11с28п DN150х125', 1, '2016-05-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.28.200-001', 'Кран 11с28п DN200х150', 1, '2016-05-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.30.015-001', 'Кран 11с39п1 DN15х10', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.30.020-001', 'Кран 11с39п1 DN20х15', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.30.020-002', 'Кран 11с939п1 DN20х15', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.30.025-001', 'Кран 11с39п1 DN25х20', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.30.025-002', 'Кран 11с939п1 DN25х20', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.30.032-001', 'Кран 11с39п1 DN32х25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.30.032-002', 'Кран 11с939п1 DN32х25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.30.040-001', 'Кран 11с39п1 DN40х32', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.30.040-002', 'Кран 11с939п1 DN40х32', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.30.050-001', 'Кран 11с39п1 DN50х40', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.30.050-002', 'Кран 11с939п1 DN50х40', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.30.065-001', 'Кран 11с39п1 DN65х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.30.065-002', 'Кран 11с939п1 DN65х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.30.080-001', 'Кран 11с39п1 DN80х65', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.30.080-002', 'Кран 11с939п1 DN80х65', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.015-001', 'Кран 11с31п DN15х10', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.020-001', 'Кран 11с31п DN20х15', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.020-002', 'Кран 11с931п DN20х15', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.025-001', 'Кран 11с31п DN25х20', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.025-002', 'Кран 11с931п DN25х20', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.032-001', 'Кран 11с31п DN32х25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.032-002', 'Кран 11с931п DN32х25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.040-001', 'Кран 11с31п DN40х32', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.040-002', 'Кран 11с931п DN40х32', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.050-001', 'Кран 11с31п DN50х40', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.050-002', 'Кран 11с931п DN50х40', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.065-001', 'Кран 11с31п DN65х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.065-002', 'Кран 11с931п DN65х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.080-001', 'Кран 11с31п DN80х65', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.080-002', 'Кран 11с931п DN80х65', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.100-001', 'Кран 11с31п DN100х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.100-002', 'Кран 11с931п DN100х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.125-001', 'Кран 11с31п DN125х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.125-002', 'Кран 11с931п DN125х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.125-003', 'Кран 11с331п DN125х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.150-001', 'Кран 11с31п DN150х125', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.150-002', 'Кран 11с931п DN150х125', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.150-003', 'Кран 11с331п DN150х125', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.200-001', 'Кран 11с931п DN200х150', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.200-002', 'Кран 11с331п DN200х150', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.200-003', 'Кран 11с31п DN200х150', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.250-001', 'Кран 11с931п DN250х200', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.250-002', 'Кран 11с331п DN250х200', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.300-001', 'Кран 11с931п DN300х250', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.300-002', 'Кран 11с331п DN300х250', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.350-001', 'Кран 11с931п DN350х300', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.350-002', 'Кран 11с331п DN350х300', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.400-001', 'Кран 11с931п DN400х300', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.31.400-002', 'Кран 11с331п DN400х300', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.015-001', 'Кран 11с32п DN15х10', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.020-001', 'Кран 11с32п DN20х15', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.020-002', 'Кран 11с932п DN20х15', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.025-001', 'Кран 11с32п DN25х20', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.025-002', 'Кран 11с932п DN25х20', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.032-001', 'Кран 11с32п DN32х25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.032-002', 'Кран 11с932п DN32х25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.040-001', 'Кран 11с32п DN40х32', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.040-002', 'Кран 11с932п DN40х32', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.050-001', 'Кран 11с32п DN50х40', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.050-002', 'Кран 11с932п DN50х40', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.065-001', 'Кран 11с32п DN65х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.065-002', 'Кран 11с932п DN65х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.080-001', 'Кран 11с32п DN80х65', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.080-002', 'Кран 11с932п DN80х65', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.100-001', 'Кран 11с32п DN100х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.100-002', 'Кран 11с932п DN100х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.125-001', 'Кран 11с32п DN125х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.125-002', 'Кран 11с932п DN125х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.125-003', 'Кран 11с332п DN125х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.150-001', 'Кран 11с32п DN150х125', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.150-002', 'Кран 11с932п DN150х125', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.150-003', 'Кран 11с332п DN150х125', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.200-001', 'Кран 11с932п DN200х150', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.200-002', 'Кран 11с332п DN200х150', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.200-003', 'Кран 11с32п DN200х150', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.250-001', 'Кран 11с932п DN250х200', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.250-002', 'Кран 11с332п DN250х200', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.300-001', 'Кран 11с932п DN300х250', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.32.300-002', 'Кран 11с332п DN300х250', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.050-001', 'Кран 11с33п DN50х40', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.050-002', 'Кран 11с933п DN50х40', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.065-001', 'Кран 11с33п DN65х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.065-002', 'Кран 11с933п DN65х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.080-001', 'Кран 11с33п DN80х65', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.080-002', 'Кран 11с933п DN80х65', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.100-001', 'Кран 11с33п DN100х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.100-002', 'Кран 11с933п DN100х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.125-001', 'Кран 11с33п DN125х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.125-002', 'Кран 11с933п DN125х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.125-003', 'Кран 11с333п DN125х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.150-001', 'Кран 11с33п DN150х125', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.150-002', 'Кран 11с33п DN150х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.150-003', 'Кран 11с933п DN150х125', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.150-004', 'Кран 11с933п DN150х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.150-005', 'Кран 11с333п DN150х125', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.150-006', 'Кран 11с333п DN150х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.200-001', 'Кран 11с933п DN200х150', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.200-002', 'Кран 11с333п DN200х150', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.200-003', 'Кран 11с33п DN200х150', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.250-001', 'Кран 11с933п DN250х200', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.250-002', 'Кран 11с333п DN250х200', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.300-001', 'Кран 11с933п DN300х250', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.300-002', 'Кран 11с333п DN300х250', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.350-001', 'Кран 11с933п DN350х300', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.350-002', 'Кран 11с333п DN350х300', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.400-001', 'Кран 11с933п DN400х300', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.33.400-002', 'Кран 11с333п DN400х300', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.015-001', 'Кран 11с34п DN15х10', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.015-003', 'Кран 11с34п1 DN15х10', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.020-001', 'Кран 11с34п DN20х15', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.020-002', 'Кран 11с934п DN20х15', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.020-003', 'Кран 11с34п1 DN20х15', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.025-001', 'Кран 11с34п DN25х20', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.025-002', 'Кран 11с934п DN25х20', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.025-003', 'Кран 11с34п1 DN25х20', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.032-001', 'Кран 11с34п DN32х25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.032-002', 'Кран 11с934п DN32х25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.032-003', 'Кран 11с34п1 DN32х25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.040-001', 'Кран 11с34п DN40х32', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.040-002', 'Кран 11с934п DN40х32', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.040-003', 'Кран 11с34п1 DN40х32', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.050-001', 'Кран 11с34п DN50х40', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.050-002', 'Кран 11с934п DN50х40', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.050-003', 'Кран 11с34п1 DN50х40', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.065-001', 'Кран 11с34п DN65х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.065-002', 'Кран 11с934п DN65х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.080-001', 'Кран 11с34п DN80х65', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.080-002', 'Кран 11с934п DN80х65', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.100-001', 'Кран 11с34п DN100х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.100-002', 'Кран 11с934п DN100х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.125-001', 'Кран 11с34п DN125х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.125-002', 'Кран 11с934п DN125х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.150-001', 'Кран 11с34п DN150х125', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.150-002', 'Кран 11с934п DN150х125', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.200-001', 'Кран 11с934п DN200х150', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.200-002', 'Кран 11с334п DN200х150', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.34.200-003', 'Кран 11с34п DN200х150', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.35.025-001', 'Кран 11с35п DN25х25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.35.032-001', 'Кран 11с35п DN32х32', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.35.040-001', 'Кран 11с35п DN40х40', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.35.050-001', 'Кран 11с35п DN50х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.35.065-001', 'Кран 11с35п DN65х65', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.35.080-001', 'Кран 11с35п DN80х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.35.100-001', 'Кран 11с35п DN100х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.35.125-001', 'Кран 11с35п DN125х125', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.36.015-001', 'Кран 11с36п DN15x15', 1, '2016-02-01', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.36.020-001', 'Кран 11с36п DN20х20', 1, '2016-02-01', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.36.025-001', 'Кран 11с36п DN25х25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.36.032-001', 'Кран 11с36п DN32х32', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.36.040-001', 'Кран 11с36п DN40х40', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.36.050-001', 'Кран 11с36п DN50х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.36.065-001', 'Кран 11с36п DN65х65', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.36.080-001', 'Кран 11с36п DN80х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.36.100-001', 'Кран 11с36п DN100х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.36.125-001', 'Кран 11с36п DN125х125', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.36.150-001', 'Кран 11с936п DN150х150', 1, '2016-12-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.36.150-002', 'Кран 11с336п DN150х150', 1, '2016-12-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.36.150-003', 'Кран 11с36п DN150х150', 1, '2016-12-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.36.200-002', 'Кран 11с336п DN200х200 PN16', 1, '2017-01-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.36.250-002', 'Кран 11с336п DN250х250 PN16', 1, '2017-01-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.36.300-002', 'Кран 11с336п DN300х300', 1, '2017-01-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.015-001', 'Кран 11с37п DN15х15', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.015-002', 'Кран 11с937п DN15х15', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.020-001', 'Кран 11с37п DN20х20', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.020-002', 'Кран 11с937п DN20х20', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.025-001', 'Кран 11с37п DN25х25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.025-002', 'Кран 11с937п DN25х25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.032-001', 'Кран 11с37п DN32х32', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.032-002', 'Кран 11с937п DN32х32', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.040-001', 'Кран 11с37п DN40х40', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.040-002', 'Кран 11с937п DN40х40', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.050-001', 'Кран 11с37п DN50х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.050-002', 'Кран 11с937п DN50х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.065-001', 'Кран 11с37п DN65х65', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.065-002', 'Кран 11с937п DN65х65', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.080-001', 'Кран 11с37п DN80х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.080-002', 'Кран 11с937п DN80х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.100-001', 'Кран 11с37п DN100х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.100-002', 'Кран 11с937п DN100х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.100-003', 'Кран 11с337п DN100х100', 1, '2015-04-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.125-001', 'Кран 11с37п DN125х125', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.125-002', 'Кран 11с937п DN125х125', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.125-003', 'Кран 11с337п DN125х125', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.150-001', 'Кран 11с937п DN150х150', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.150-002', 'Кран 11с337п DN150х150', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.150-003', 'Кран 11с37п DN150х150', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.200-001', 'Кран 11с937п DN200х200', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.200-002', 'Кран 11с337п DN200х200', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.250-001', 'Кран 11с937п DN250х250', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.250-002', 'Кран 11с337п DN250х250', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.300-001', 'Кран 11с937п DN300х300', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.37.300-002', 'Кран 11с337п DN300х300', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.015-001', 'Кран 11с38п DN15х15', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.015-002', 'Кран 11с938п DN15х15', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.020-001', 'Кран 11с38п DN20х20', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.020-002', 'Кран 11с938п DN20х20', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.025-001', 'Кран 11с38п DN25х25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.025-002', 'Кран 11с938п DN25х25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.032-001', 'Кран 11с38п DN32х32', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.032-002', 'Кран 11с938п DN32х32', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.040-001', 'Кран 11с38п DN40х40', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.040-002', 'Кран 11с938п DN40х40', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.050-001', 'Кран 11с38п DN50х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.050-002', 'Кран 11с938п DN50х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.065-001', 'Кран 11с38п DN65х65', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.065-002', 'Кран 11с938п DN65х65', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.080-001', 'Кран 11с38п DN80х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.080-002', 'Кран 11с938п DN80х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.100-001', 'Кран 11с38п DN100х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.100-002', 'Кран 11с938п DN100х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.100-003', 'Кран 11с338п DN100х100', 1, '2015-04-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.125-001', 'Кран 11с38п DN125х125', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.125-002', 'Кран 11с938п DN125х125', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.125-003', 'Кран 11с338п DN125х125', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.150-001', 'Кран 11с938п DN150х150', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.150-002', 'Кран 11с338п DN150х150', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.150-003', 'Кран 11с38п DN150х150', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.200-001', 'Кран 11с938п DN200х200 PN25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.200-002', 'Кран 11с938п DN200х200 PN16', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.200-003', 'Кран 11с338п DN200х200 PN25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.250-001', 'Кран 11с938п DN250х250 PN25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.250-002', 'Кран 11с938п DN250х250 PN16', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.250-003', 'Кран 11с338п DN250х250 PN25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.38.300-001', 'Кран 11с938п DN300х300', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.39.015-001', 'Кран 11с39п DN15х15', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.39.015-002', 'Кран 11с939п DN15х15', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.39.020-001', 'Кран 11с39п DN20х20', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.39.020-002', 'Кран 11с939п DN20х20', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.39.025-001', 'Кран 11с39п DN25х25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.39.025-002', 'Кран 11с939п DN25х25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.39.032-001', 'Кран 11с39п DN32х32', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.39.032-002', 'Кран 11с939п DN32х32', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.39.040-001', 'Кран 11с39п DN40х40', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.39.040-002', 'Кран 11с939п DN40х40', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.39.050-001', 'Кран 11с39п DN50х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.39.050-002', 'Кран 11с939п DN50х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.39.065-001', 'Кран 11с39п DN65х65', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.39.065-002', 'Кран 11с939п DN65х65', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.39.080-001', 'Кран 11с39п DN80х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.39.080-002', 'Кран 11с939п DN80х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.39.100-001', 'Кран 11с39п DN100х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.39.100-002', 'Кран 11с939п DN100х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.050-001', 'Кран 11с41п DN50х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.050-002', 'Кран 11с941п DN50х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.065-001', 'Кран 11с41п DN65х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.065-002', 'Кран 11с41п DN65х65', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.065-003', 'Кран 11с941п DN65х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.065-004', 'Кран 11с941п DN65х65', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.080-001', 'Кран 11с41п DN80х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.080-002', 'Кран 11с941п DN80х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.100-001', 'Кран 11с41п DN100х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.100-002', 'Кран 11с41п DN100х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.100-003', 'Кран 11с941п DN100х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.100-004', 'Кран 11с941п DN100х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.100-005', 'Кран 11с341п DN100х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.125-001', 'Кран 11с41п DN125х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.125-002', 'Кран 11с941п DN125х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.125-003', 'Кран 11с341п DN125х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.125-004', 'Кран 11с41п DN125x125', 1, '2015-12-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.150-001', 'Кран 11с41п DN150х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.150-002', 'Кран 11с941п DN150х150', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.150-003', 'Кран 11с941п DN150х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.150-004', 'Кран 11с341п DN150х150', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.150-005', 'Кран 11с341п DN150х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.200-001', 'Кран 11с941п DN200х150', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.200-002', 'Кран 11с941п DN200х200', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.200-003', 'Кран 11с341п DN200х150', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.200-004', 'Кран 11с341п DN200х200', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.250-001', 'Кран 11с941п DN250х200', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.250-002', 'Кран 11с941п DN250х250', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.250-003', 'Кран 11с341п DN250х200', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.250-004', 'Кран 11с341п DN250х250', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.300-001', 'Кран 11с341п DN300х250', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.300-002', 'Кран 11с941п DN300х250', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.300-003', 'Кран 11с341п DN300х300', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.300-004', 'Кран 11с941п DN300х300', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.350-001', 'Кран 11с941п DN350х300', 1, '2015-01-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.350-002', 'Кран 11с341п DN350х300', 1, '2015-01-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.400-001', 'Кран 11с341п DN400х300', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.41.400-002', 'Кран 11с941п DN400х300', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.42.025-001', 'Кран 11с42п DN25х25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.42.025-002', 'Кран 11с942п DN25х25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.42.032-001', 'Кран 11с42п DN32х32', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.42.032-002', 'Кран 11с942п DN32х32', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.42.040-001', 'Кран 11с42п DN40х40', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.42.040-002', 'Кран 11с942п DN40х40', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.42.050-001', 'Кран 11с42п DN50х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.42.050-002', 'Кран 11с942п DN50х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.42.065-001', 'Кран 11с42п DN65х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.42.065-002', 'Кран 11с42п DN65х65', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.42.065-003', 'Кран 11с942п DN65х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.42.065-004', 'Кран 11с942п DN65х65', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.42.080-001', 'Кран 11с42п DN80х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.42.080-002', 'Кран 11с942п DN80х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.42.100-001', 'Кран 11с42п DN100х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.42.100-002', 'Кран 11с942п DN100х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.42.125-001', 'Кран 11с42п DN125х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.42.125-002', 'Кран 11с942п DN125х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.42.125-003', 'Кран 11с342п DN125х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.42.150-001', 'Кран 11с42п DN150х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.42.150-002', 'Кран 11с942п DN150х100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.42.200-001', 'Кран 11с942п DN200х150', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.42.200-002', 'Кран 11с342п DN200х150', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.51.015-001', 'Кран 11с51п DN15x15', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.51.020-001', 'Кран 11с51п DN20x20', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.51.025-001', 'Кран 11с51п DN25x25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.51.032-001', 'Кран 11с51п DN32x32', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.51.040-001', 'Кран 11с51п DN40x40', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.51.050-001', 'Кран 11с51п DN50x50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.51.065-001', 'Кран 11с51п DN65x65', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.51.080-001', 'Кран 11с51п DN80x80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.51.100-001', 'Кран 11с51п DN100x100', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.52.015-001', 'Кран 11с52п DN15x10', 1, '2015-10-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.52.015-001.', 'Кран 11с52п DN15х15', 1, '2015-10-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.52.020-001', 'Кран 11с52п DN20х15', 1, '2015-01-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.52.025-001', 'Кран 11с52п DN25х20', 1, '2015-01-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.52.025-002', 'Кран 11с52п DN25х20', 1, '2016-12-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.52.032-001', 'Кран 11с52п DN32х25', 1, '2015-01-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.52.040-001', 'Кран 11с52п DN40х32', 1, '2015-01-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.52.050-001', 'Кран 11с52п DN50х40', 1, '2015-01-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.52.065-001', 'Кран 11с52п DN65х50', 1, '2015-01-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.52.080-001', 'Кран 11с52п DN80х65', 1, '2015-01-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.52.100-001', 'Кран 11с52п DN100х80', 1, '2015-01-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.52.125-001', 'Кран 11с52п DN125х80', 1, '2015-01-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.52.150-001', 'Кран 11с52п DN150х100', 1, '2015-01-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.52.200-002', 'Кран 11с352п DN200х150', 1, '2017-01-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.52.200-003', 'Кран 11с52п DN200х150', 1, '2017-01-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.64.025-001', 'Кран 11с64п DN25х25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.64.025-002', 'Кран 11с964п DN25х25', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.64.032-001', 'Кран 11с64п DN32х32', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.64.032-002', 'Кран 11с964п DN32х32', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.64.040-001', 'Кран 11с64п DN40х40', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.64.040-002', 'Кран 11с964п DN40х40', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.64.050-001', 'Кран 11с64п DN50х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.64.050-002', 'Кран 11с964п DN50х50', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.64.080-001', 'Кран 11с64п DN80х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.64.080-002', 'Кран 11с964п DN80х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.64.100-001', 'Кран 11с64п DN100х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '11.64.100-002', 'Кран 11с964п DN100х80', 1, '2015-01-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '15.01.050-001', 'Затвор 32с60р DN50х50', 1, '2015-03-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '15.01.065-001', 'Затвор 32с60р DN65х65', 1, '2015-03-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '15.01.080-001', 'Затвор 32с60р DN80х80', 1, '2015-03-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '15.01.100-001', 'Затвор 32с60р DN100х100', 1, '2015-03-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '15.01.125-001', 'Затвор 32с60р DN125х125', 1, '2015-03-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '15.01.150-001', 'Затвор 32с60р DN150х150', 1, '2015-03-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '16.01.001-001', 'Елеватор 40с10бк 1', 1, '2014-06-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '16.01.002-001', 'Елеватор 40с10бк 2', 1, '2014-06-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '16.01.003-001', 'Елеватор 40с10бк 3', 1, '2014-06-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '16.01.004-001', 'Елеватор 40с10бк 4', 1, '2014-06-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.16.008-021', 'РВТ-08 2SN М16х1,5 S19 L210', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.16.008-031', 'РВТ-08 2SN М16х1,5 S19 L310', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.16.008-041', 'РВТ-08 2SN М16х1,5 S19 L410', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.16.008-051', 'РВТ-08 2SN М16х1,5 S19 L510', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.16.008-061', 'РВТ-08 2SN М16х1,5 S19 L610', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.16.008-065', 'РВТ-08 2SN М16х1,5 S19 L650', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.16.008-071', 'РВТ-08 2SN М16х1,5 S19 L710', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.16.008-076', 'РВТ-08 2SN М16х1,5 S19 L760', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.16.008-081', 'РВТ-08 2SN М16х1,5 S19 L810', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.16.008-091', 'РВТ-08 2SN М16х1,5 S19 L910', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.16.008-101', 'РВТ-08 2SN М16х1,5 S19 L1010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.16.008-111', 'РВТ-08 2SN М16х1,5 S19 L1110', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.16.008-121', 'РВТ-08 2SN М16х1,5 S19 L1210', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.16.008-131', 'РВТ-08 2SN М16х1,5 S19 L1310', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.16.008-141', 'РВТ-08 2SN М16х1,5 S19 L1410', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.16.008-151', 'РВТ-08 2SN М16х1,5 S19 L1510', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.16.008-161', 'РВТ-08 2SN М16х1,5 S19 L1610', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.16.008-171', 'РВТ-08 2SN М16х1,5 S19 L1710', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.16.008-181', 'РВТ-08 2SN М16х1,5 S19 L1810', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.16.008-191', 'РВТ-08 2SN М16х1,5 S19 L1910', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.16.008-201', 'РВТ-08 2SN М16х1,5 S19 L2010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.16.008-301', 'РВТ-08 2SN М16х1,5 S19 L3010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.008-021', 'РВТ-08 2SN М18х1,5 S22 L210', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.008-031', 'РВТ-08 2SN М18х1,5 S22 L310', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.008-041', 'РВТ-08 2SN М18х1,5 S22 L410', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.008-051', 'РВТ-08 2SN М18х1,5 S22 L510', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.008-061', 'РВТ-08 2SN М18х1,5 S22 L610', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.008-065', 'РВТ-08 2SN М18х1,5 S22 L650', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.008-071', 'РВТ-08 2SN М18х1,5 S22 L710', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.008-076', 'РВТ-08 2SN М18х1,5 S22 L760', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.008-081', 'РВТ-08 2SN М18х1,5 S22 L810', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.008-091', 'РВТ-08 2SN М18х1,5 S22 L910', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.008-101', 'РВТ-08 2SN М18х1,5 S22 L1010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.008-111', 'РВТ-08 2SN М18х1,5 S22 L1110', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.008-121', 'РВТ-08 2SN М18х1,5 S22 L1210', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.008-131', 'РВТ-08 2SN М18х1,5 S22 L1310', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.008-141', 'РВТ-08 2SN М18х1,5 S22 L1410', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.008-151', 'РВТ-08 2SN М18х1,5 S22 L1510', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.008-161', 'РВТ-08 2SN М18х1,5 S22 L1610', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.008-171', 'РВТ-08 2SN М18х1,5 S22 L1710', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.008-181', 'РВТ-08 2SN М18х1,5 S22 L1810', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.008-191', 'РВТ-08 2SN М18х1,5 S22 L1910', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.008-201', 'РВТ-08 2SN М18х1,5 S22 L2010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.008-301', 'РВТ-08 2SN М18х1,5 S22 L3010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.010-021', 'РВТ-10 2SN М18х1,5 S22 L210', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.010-031', 'РВТ-10 2SN М18х1,5 S22 L310', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.010-041', 'РВТ-10 2SN М18х1,5 S22 L410', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.010-051', 'РВТ-10 2SN М18х1,5 S22 L510', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.010-061', 'РВТ-10 2SN М18х1,5 S22 L610', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.010-065', 'РВТ-10 2SN М18х1,5 S22 L650', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.010-071', 'РВТ-10 2SN М18х1,5 S22 L710', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.010-076', 'РВТ-10 2SN М18х1,5 S22 L760', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.010-081', 'РВТ-10 2SN М18х1,5 S22 L810', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.010-091', 'РВТ-10 2SN М18х1,5 S22 L910', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.010-101', 'РВТ-10 2SN М18х1,5 S22 L1010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.010-111', 'РВТ-10 2SN М18х1,5 S22 L1110', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.010-121', 'РВТ-10 2SN М18х1,5 S22 L1210', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.010-131', 'РВТ-10 2SN М18х1,5 S22 L1310', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.010-141', 'РВТ-10 2SN М18х1,5 S22 L1410', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.010-151', 'РВТ-10 2SN М18х1,5 S22 L1510', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.010-161', 'РВТ-10 2SN М18х1,5 S22 L1610', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.010-171', 'РВТ-10 2SN М18х1,5 S22 L1710', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.010-181', 'РВТ-10 2SN М18х1,5 S22 L1810', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.010-191', 'РВТ-10 2SN М18х1,5 S22 L1910', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.010-201', 'РВТ-10 2SN М18х1,5 S22 L2010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.18.010-301', 'РВТ-10 2SN М18х1,5 S22 L3010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.010-021', 'РВТ-10 2SN М20х1,5 S24 L210', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.010-031', 'РВТ-10 2SN М20х1,5 S24 L310', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.010-041', 'РВТ-10 2SN М20х1,5 S24 L410', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.010-051', 'РВТ-10 2SN М20х1,5 S24 L510', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.010-061', 'РВТ-10 2SN М20х1,5 S24 L610', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.010-065', 'РВТ-10 2SN М20х1,5 S24 L650', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.010-071', 'РВТ-10 2SN М20х1,5 S24 L710', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.010-076', 'РВТ-10 2SN М20х1,5 S24 L760', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.010-081', 'РВТ-10 2SN М20х1,5 S24 L810', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.010-091', 'РВТ-10 2SN М20х1,5 S24 L910', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.010-101', 'РВТ-10 2SN М20х1,5 S24 L1010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.010-111', 'РВТ-10 2SN М20х1,5 S24 L1110', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.010-121', 'РВТ-10 2SN М20х1,5 S24 L1210', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.010-131', 'РВТ-10 2SN М20х1,5 S24 L1310', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.010-141', 'РВТ-10 2SN М20х1,5 S24 L1410', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.010-151', 'РВТ-10 2SN М20х1,5 S24 L1510', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.010-161', 'РВТ-10 2SN М20х1,5 S24 L1610', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.010-171', 'РВТ-10 2SN М20х1,5 S24 L1710', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.010-181', 'РВТ-10 2SN М20х1,5 S24 L1810', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.010-191', 'РВТ-10 2SN М20х1,5 S24 L1910', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.010-201', 'РВТ-10 2SN М20х1,5 S24 L2010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.010-301', 'РВТ-10 2SN М20х1,5 S24 L3010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.012-021', 'РВТ-12 2SN М20х1,5 S24 L210', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.012-031', 'РВТ-12 2SN М20х1,5 S24 L310', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.012-041', 'РВТ-12 2SN М20х1,5 S24 L410', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.012-051', 'РВТ-12 2SN М20х1,5 S24 L510', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.012-061', 'РВТ-12 2SN М20х1,5 S24 L610', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.012-065', 'РВТ-12 2SN М20х1,5 S24 L650', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.012-071', 'РВТ-12 2SN М20х1,5 S24 L710', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.012-076', 'РВТ-12 2SN М20х1,5 S24 L760', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.012-081', 'РВТ-12 2SN М20х1,5 S24 L810', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.012-091', 'РВТ-12 2SN М20х1,5 S24 L910', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.012-101', 'РВТ-12 2SN М20х1,5 S24 L1010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.012-111', 'РВТ-12 2SN М20х1,5 S24 L1110', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.012-121', 'РВТ-12 2SN М20х1,5 S24 L1210', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.012-131', 'РВТ-12 2SN М20х1,5 S24 L1310', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.012-141', 'РВТ-12 2SN М20х1,5 S24 L1410', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.012-151', 'РВТ-12 2SN М20х1,5 S24 L1510', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.012-161', 'РВТ-12 2SN М20х1,5 S24 L1610', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.012-171', 'РВТ-12 2SN М20х1,5 S24 L1710', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.012-181', 'РВТ-12 2SN М20х1,5 S24 L1810', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.012-191', 'РВТ-12 2SN М20х1,5 S24 L1910', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.012-201', 'РВТ-12 2SN М20х1,5 S24 L2010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.20.012-301', 'РВТ-12 2SN М20х1,5 S24 L3010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.22.012-021', 'РВТ-12 2SN М22х1,5 S27 L210', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.22.012-031', 'РВТ-12 2SN М22х1,5 S27 L310', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.22.012-041', 'РВТ-12 2SN М22х1,5 S27 L410', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.22.012-051', 'РВТ-12 2SN М22х1,5 S27 L510', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.22.012-061', 'РВТ-12 2SN М22х1,5 S27 L610', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.22.012-065', 'РВТ-12 2SN М22х1,5 S27 L650', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.22.012-071', 'РВТ-12 2SN М22х1,5 S27 L710', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.22.012-076', 'РВТ-12 2SN М22х1,5 S27 L760', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.22.012-081', 'РВТ-12 2SN М22х1,5 S27 L810', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.22.012-091', 'РВТ-12 2SN М22х1,5 S27 L910', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.22.012-101', 'РВТ-12 2SN М22х1,5 S27 L1010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.22.012-111', 'РВТ-12 2SN М22х1,5 S27 L1110', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.22.012-121', 'РВТ-12 2SN М22х1,5 S27 L1210', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.22.012-131', 'РВТ-12 2SN М22х1,5 S27 L1310', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.22.012-141', 'РВТ-12 2SN М22х1,5 S27 L1410', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.22.012-151', 'РВТ-12 2SN М22х1,5 S27 L1510', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.22.012-161', 'РВТ-12 2SN М22х1,5 S27 L1610', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.22.012-171', 'РВТ-12 2SN М22х1,5 S27 L1710', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.22.012-181', 'РВТ-12 2SN М22х1,5 S27 L1810', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.22.012-191', 'РВТ-12 2SN М22х1,5 S27 L1910', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.22.012-201', 'РВТ-12 2SN М22х1,5 S27 L2010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.22.012-301', 'РВТ-12 2SN М22х1,5 S27 L3010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.27.016-021', 'РВТ-16 2SN М27х1,5 S32 L210', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.27.016-031', 'РВТ-16 2SN М27х1,5 S32 L310', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.27.016-041', 'РВТ-16 2SN М27х1,5 S32 L410', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.27.016-051', 'РВТ-16 2SN М27х1,5 S32 L510', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.27.016-061', 'РВТ-16 2SN М27х1,5 S32 L610', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.27.016-065', 'РВТ-16 2SN М27х1,5 S32 L650', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.27.016-071', 'РВТ-16 2SN М27х1,5 S32 L710', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.27.016-076', 'РВТ-16 2SN М27х1,5 S32 L760', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.27.016-081', 'РВТ-16 2SN М27х1,5 S32 L810', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.27.016-091', 'РВТ-16 2SN М27х1,5 S32 L910', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.27.016-101', 'РВТ-16 2SN М27х1,5 S32 L1010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.27.016-111', 'РВТ-16 2SN М27х1,5 S32 L1110', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.27.016-121', 'РВТ-16 2SN М27х1,5 S32 L1210', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.27.016-131', 'РВТ-16 2SN М27х1,5 S32 L1310', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.27.016-141', 'РВТ-16 2SN М27х1,5 S32 L1410', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.27.016-151', 'РВТ-16 2SN М27х1,5 S32 L1510', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.27.016-161', 'РВТ-16 2SN М27х1,5 S32 L1610', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.27.016-171', 'РВТ-16 2SN М27х1,5 S32 L1710', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.27.016-181', 'РВТ-16 2SN М27х1,5 S32 L1810', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.27.016-191', 'РВТ-16 2SN М27х1,5 S32 L1910', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.27.016-201', 'РВТ-16 2SN М27х1,5 S32 L2010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.27.016-301', 'РВТ-16 2SN М27х1,5 S32 L3010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.30.020-021', 'РВТ-20 2SN М30х1,5 S36 L210', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.30.020-031', 'РВТ-20 2SN М30х1,5 S36 L310', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.30.020-041', 'РВТ-20 2SN М30х1,5 S36 L410', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.30.020-051', 'РВТ-20 2SN М30х1,5 S36 L510', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.30.020-061', 'РВТ-20 2SN М30х1,5 S36 L610', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.30.020-065', 'РВТ-20 2SN М30х1,5 S36 L650', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.30.020-071', 'РВТ-20 2SN М30х1,5 S36 L710', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.30.020-076', 'РВТ-20 2SN М30х1,5 S36 L760', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.30.020-081', 'РВТ-20 2SN М30х1,5 S36 L810', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.30.020-091', 'РВТ-20 2SN М30х1,5 S36 L910', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.30.020-101', 'РВТ-20 2SN М30х1,5 S36 L1010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.30.020-111', 'РВТ-20 2SN М30х1,5 S36 L1110', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.30.020-121', 'РВТ-20 2SN М30х1,5 S36 L1210', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.30.020-131', 'РВТ-20 2SN М30х1,5 S36 L1310', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.30.020-141', 'РВТ-20 2SN М30х1,5 S36 L1410', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.30.020-151', 'РВТ-20 2SN М30х1,5 S36 L1510', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.30.020-161', 'РВТ-20 2SN М30х1,5 S36 L1610', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.30.020-171', 'РВТ-20 2SN М30х1,5 S36 L1710', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.30.020-181', 'РВТ-20 2SN М30х1,5 S36 L1810', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.30.020-191', 'РВТ-20 2SN М30х1,5 S36 L1910', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.30.020-201', 'РВТ-20 2SN М30х1,5 S36 L2010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.30.020-301', 'РВТ-20 2SN М30х1,5 S36 L3010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.33.020-021', 'РВТ-20 2SN М33х2,0 S41 L210', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.33.020-031', 'РВТ-20 2SN М33х2,0 S41 L310', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.33.020-041', 'РВТ-20 2SN М33х2,0 S41 L410', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.33.020-051', 'РВТ-20 2SN М33х2,0 S41 L510', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.33.020-061', 'РВТ-20 2SN М33х2,0 S41 L610', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.33.020-065', 'РВТ-20 2SN М33х2,0 S41 L650', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.33.020-071', 'РВТ-20 2SN М33х2,0 S41 L710', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.33.020-076', 'РВТ-20 2SN М33х2,0 S41 L760', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.33.020-081', 'РВТ-20 2SN М33х2,0 S41 L810', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.33.020-091', 'РВТ-20 2SN М33х2,0 S41 L910', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.33.020-101', 'РВТ-20 2SN М33х2,0 S41 L1010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.33.020-111', 'РВТ-20 2SN М33х2,0 S41 L1110', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.33.020-121', 'РВТ-20 2SN М33х2,0 S41 L1210', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.33.020-131', 'РВТ-20 2SN М33х2,0 S41 L1310', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.33.020-141', 'РВТ-20 2SN М33х2,0 S41 L1410', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.33.020-151', 'РВТ-20 2SN М33х2,0 S41 L1510', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.33.020-161', 'РВТ-20 2SN М33х2,0 S41 L1610', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.33.020-171', 'РВТ-20 2SN М33х2,0 S41 L1710', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.33.020-181', 'РВТ-20 2SN М33х2,0 S41 L1810', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.33.020-191', 'РВТ-20 2SN М33х2,0 S41 L1910', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.33.020-201', 'РВТ-20 2SN М33х2,0 S41 L2010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.33.020-301', 'РВТ-20 2SN М33х2,0 S41 L3010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.42.025-021', 'РВТ-25 2SN М42х2,0 S50 L210', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.42.025-031', 'РВТ-25 2SN М42х2,0 S50 L310', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.42.025-041', 'РВТ-25 2SN М42х2,0 S50 L410', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.42.025-051', 'РВТ-25 2SN М42х2,0 S50 L510', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.42.025-061', 'РВТ-25 2SN М42х2,0 S50 L610', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.42.025-065', 'РВТ-25 2SN М42х2,0 S50 L650', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.42.025-071', 'РВТ-25 2SN М42х2,0 S50 L710', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.42.025-076', 'РВТ-25 2SN М42х2,0 S50 L760', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.42.025-081', 'РВТ-25 2SN М42х2,0 S50 L810', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.42.025-091', 'РВТ-25 2SN М42х2,0 S50 L910', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.42.025-101', 'РВТ-25 2SN М42х2,0 S50 L1010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.42.025-111', 'РВТ-25 2SN М42х2,0 S50 L1110', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.42.025-121', 'РВТ-25 2SN М42х2,0 S50 L1210', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.42.025-131', 'РВТ-25 2SN М42х2,0 S50 L1310', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.42.025-141', 'РВТ-25 2SN М42х2,0 S50 L1410', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.42.025-151', 'РВТ-25 2SN М42х2,0 S50 L1510', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.42.025-161', 'РВТ-25 2SN М42х2,0 S50 L1610', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.42.025-171', 'РВТ-25 2SN М42х2,0 S50 L1710', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.42.025-181', 'РВТ-25 2SN М42х2,0 S50 L1810', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.42.025-191', 'РВТ-25 2SN М42х2,0 S50 L1910', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.42.025-201', 'РВТ-25 2SN М42х2,0 S50 L2010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '17.42.025-301', 'РВТ-25 2SN М42х2,0 S50 L3010', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.01.015-001', 'Т-ключ DN15', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.01.040-001', 'Т-ключ DN40', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.01.080-001', 'Т-ключ DN80', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.01.200-001', 'Т-ключ DN200', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.10.015-001', 'Фланець ГОСТ12820 PN10 DN15', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.10.020-001', 'Фланець ГОСТ12820 PN10 DN20', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.10.025-001', 'Фланець ГОСТ12820 PN10 DN25', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.10.032-001', 'Фланець ГОСТ12820 PN10 DN32', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.10.040-001', 'Фланець ГОСТ12820 PN10 DN40', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.10.050-001', 'Фланець ГОСТ12820 PN10 DN50', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.10.065-001', 'Фланець ГОСТ12820 PN10 DN65', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.10.080-001', 'Фланець ГОСТ12820 PN10 DN80 (8 отв.)', 1, '2014-11-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.10.080-002', 'Фланець ГОСТ12820 PN10 DN80 (4 отв.)', 1, '2014-12-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.10.100-001', 'Фланець ГОСТ12820 PN10 DN100', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.10.125-001', 'Фланець ГОСТ12820 PN10 DN125', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.10.150-001', 'Фланець ГОСТ12820 PN10 DN150', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.10.200-001', 'Фланець ГОСТ12820 PN10 DN200', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.16.015-001', 'Фланець ГОСТ12820 PN16 DN15', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.16.020-001', 'Фланець ГОСТ12820 PN16 DN20', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.16.025-001', 'Фланець ГОСТ12820 PN16 DN25', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.16.032-001', 'Фланець ГОСТ12820 PN16 DN32', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.16.040-001', 'Фланець ГОСТ12820 PN16 DN40', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.16.050-001', 'Фланець ГОСТ12820 PN16 DN50', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.16.065-001', 'Фланець ГОСТ12820 PN16 DN65', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.16.080-001', 'Фланець ГОСТ12820 PN16 DN80', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.16.100-001', 'Фланець ГОСТ12820 PN16 DN100', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.16.125-001', 'Фланець ГОСТ12820 PN16 DN125', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.16.150-001', 'Фланець ГОСТ12820 PN16 DN150', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.16.200-001', 'Фланець ГОСТ12820 PN16 DN200', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.25.015-001', 'Фланець ГОСТ12820 PN25 DN15', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.25.020-001', 'Фланець ГОСТ12820 PN25 DN20', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.25.025-001', 'Фланець ГОСТ12820 PN25 DN25', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.25.032-001', 'Фланець ГОСТ12820 PN25 DN32', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.25.040-001', 'Фланець ГОСТ12820 PN25 DN40', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.25.050-001', 'Фланець ГОСТ12820 PN25 DN50', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.25.065-001', 'Фланець ГОСТ12820 PN25 DN65', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.25.080-001', 'Фланець ГОСТ12820 PN25 DN80', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.25.100-001', 'Фланець ГОСТ12820 PN25 DN100', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.25.125-001', 'Фланець ГОСТ12820 PN25 DN125', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.25.150-001', 'Фланець ГОСТ12820 PN25 DN150', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '20.25.200-001', 'Фланець ГОСТ12820 PN25 DN200', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.015-001', 'Фланець ГОСТ12821 PN16 DN15', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.015-101', 'Фланець EN1092-1 Тип-11 PN16 DN15/21,3', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.015-201', 'Фланець EN1092-1 Тип-13 PN16 DN15', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.020-001', 'Фланець ГОСТ12821 PN16 DN20', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.020-101', 'Фланець EN1092-1 Тип-11 PN16 DN20/26,9', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.020-201', 'Фланець EN1092-1 Тип-13 PN16 DN20', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.025-101', 'Фланець EN1092-1 Тип-11 PN16 DN25/33,7', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.025-201', 'Фланець EN1092-1 Тип-13 PN16 DN25', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.032-101', 'Фланець EN1092-1 Тип-11 PN16 DN32/42,4', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.032-201', 'Фланець EN1092-1 Тип-13 PN16 DN32', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.040-101', 'Фланець EN1092-1 Тип-11 PN16 DN40/48,3', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.040-201', 'Фланець EN1092-1 Тип-13 PN16 DN40', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.050-001', 'Фланець ГОСТ12821 PN16 DN50', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.050-101', 'Фланець EN1092-1 Тип-11 PN16 DN50/60,3', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.050-201', 'Фланець EN1092-1 Тип-13 PN16 DN50', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.065-001', 'Фланець ГОСТ12821 PN16 DN65', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.065-101', 'Фланець EN1092-1 Тип-11 PN16 DN65/76,1 8отв', 1, '2015-07-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.065-102', 'Фланець EN1092-1 Тип-11 PN16 DN65/76,1 4отв', 1, '2015-07-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.065-201', 'Фланець EN1092-1 Тип-13 PN16 DN65 8отв.', 1, '2015-07-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.065-202', 'Фланець EN1092-1 Тип-13 PN16 DN65 4отв.', 1, '2015-07-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.080-001', 'Фланець ГОСТ12821 PN16 DN80', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.080-101', 'Фланець EN1092-1 Тип-11 PN16 DN80/88,9', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.080-201', 'Фланець EN1092-1 Тип-13 PN16 DN80', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.100-001', 'Фланець ГОСТ12821 PN16 DN100', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.100-101', 'Фланець EN1092-1 Тип-11 PN16 DN100/114,3', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.100-102', 'Фланець EN1092-1 Тип-11 PN16 DN100/108', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.100-201', 'Фланець EN1092-1 Тип-13 PN16 DN100', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.125-001', 'Фланець ГОСТ12821 PN16 DN125', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.125-101', 'Фланець EN1092-1 Тип-11 PN16 DN125/139,7', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.125-102', 'Фланець EN1092-1 Тип-11 PN16 DN125/133', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.125-201', 'Фланець EN1092-1 Тип-13 PN16 DN125', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.150-001', 'Фланець ГОСТ12821 PN16 DN150', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.150-101', 'Фланець EN1092-1 Тип-11 PN16 DN150/168,3', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.150-102', 'Фланець EN1092-1 Тип-11 PN16 DN150/159', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.150-201', 'Фланець EN1092-1 Тип-13 PN16 DN150', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.200-001', 'Фланець ГОСТ12821 PN16 DN200', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.200-101', 'Фланець EN1092-1 Тип-11 PN16 DN200/219,1', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.25.020-001', 'Фланець ГОСТ12821 PN25 DN20', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.25.025-001', 'Фланець ГОСТ12821 PN25 DN25', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.25.032-001', 'Фланець ГОСТ12821 PN25 DN32', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.25.040-001', 'Фланець ГОСТ12821 PN25 DN40', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.25.050-001', 'Фланець ГОСТ12821 PN25 DN50', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.25.065-001', 'Фланець ГОСТ12821 PN25 DN65', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.25.080-001', 'Фланець ГОСТ12821 PN25 DN80', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.25.100-001', 'Фланець ГОСТ12821 PN25 DN100', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.25.125-001', 'Фланець ГОСТ12821 PN25 DN125', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.25.150-001', 'Фланець ГОСТ12821 PN25 DN150', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.25.200-001', 'Фланець ГОСТ12821 PN25 DN200', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.40.015-101', 'Фланець EN1092-1 Тип-11 PN40 DN15/21,3', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.40.020-101', 'Фланець EN1092-1 Тип-11 PN40 DN20/26,9', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.40.025-101', 'Фланець EN1092-1 Тип-11 PN40 DN25/33,7', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.40.032-101', 'Фланець EN1092-1 Тип-11 PN40 DN32/42,4', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.40.040-101', 'Фланець EN1092-1 Тип-11 PN40 DN40/48,3', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.40.050-001', 'Фланець ГОСТ12821 PN40 DN50', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.40.050-101', 'Фланець EN1092-1 Тип-11 PN40 DN50/60,3', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.40.065-001', 'Фланець ГОСТ12821 PN40 DN65', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.40.065-101', 'Фланець EN1092-1 Тип-11 PN40 DN65/76,1', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.40.080-001', 'Фланець ГОСТ12821 PN40 DN80', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.40.080-101', 'Фланець EN1092-1 Тип-11 PN40 DN80/88,9', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.40.100-001', 'Фланець ГОСТ12821 PN40 DN100', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.40.100-101', 'Фланець EN1092-1 Тип-11 PN40 DN100/114,3', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.40.100-102', 'Фланець EN1092-1 Тип-11 PN40 DN100/108', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.40.125-001', 'Фланець ГОСТ12821 PN40 DN125', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.40.125-101', 'Фланець EN1092-1 Тип-11 PN40 DN125/139,7', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.40.125-102', 'Фланець EN1092-1 Тип-11 PN40 DN125/133', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.40.150-001', 'Фланець ГОСТ12821 PN40 DN150', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.40.150-101', 'Фланець EN1092-1 Тип-11 PN40 DN150/168,3', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.40.150-102', 'Фланець EN1092-1 Тип-11 PN40 DN150/159', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.40.200-101', 'Фланець EN1092-1 Тип-11 PN40 DN200/219,1', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.01.015-001', 'Відвід ГОСТ 3262 DN15', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.01.020-001', 'Відвід ГОСТ 3262 DN15', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.02.057-003', 'Відвід 2D 57х3,0', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.02.076-003', 'Відвід 2D 76х3,5', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.02.089-003', 'Відвід 2D 89х3,5', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.02.089-004', 'Відвід 2D 89х4,0', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.02.108-004', 'Відвід 2D 108х4,0', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.02.133-004', 'Відвід 2D 133х4,0', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.02.159-005', 'Відвід 2D 159х5,0', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.03.028-002', 'Відвід 3D 26,9х2,5', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.03.028-102', 'Відвід 3D 26,9х2,5 ВГП', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.03.032-002', 'Відвід 3D 33,7х2,0', 1, '2015-03-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.03.032-003', 'Відвід 3D 33,7х3,0', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.03.032-103', 'Відвід 3D 33,7х3,0 ВГП', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.03.042-003', 'Відвід 3D 42,4х3,0', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.03.042-103', 'Відвід 3D 42,4х3,0 ВГП', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.03.045-003', 'Відвід 3D 45х3,0', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.03.048-003', 'Відвід 3D 48,3х3,0', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.03.048-103', 'Відвід 3D 48,3х3,0 ВГП', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.03.057-003', 'Відвід 3D 57х3,0', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.03.076-003', 'Відвід 3D 76х3,5', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.03.089-003', 'Відвід 3D 89х3,5', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.03.108-004', 'Відвід 3D 108х4,0', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.03.114-004', 'Відвід 3D 114х4,0', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.03.133-004', 'Відвід 3D 133х4,0', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.03.159-005', 'Відвід 3D 159х5,0', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.03.219-006', 'Відвід 3D 219х6,0', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '30.03.219-008', 'Відвід 3D 219х8,0', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '31.01.025-021', 'Перехід 25х21', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '31.01.032-021', 'Перехід 32х21', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '31.01.032-025', 'Перехід 32х25', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '31.01.038-021', 'Перехід 38х21', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '31.01.038-025', 'Перехід 38х25', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '31.01.038-032', 'Перехід 38х32', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '31.01.045-025', 'Перехід 45х25', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '31.01.045-032', 'Перехід 45х32', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '31.01.045-038', 'Перехід 45х38', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '31.01.057-032', 'Перехід 57х32', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '31.01.057-038', 'Перехід 57х38', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '31.01.057-045', 'Перехід 57х45', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '31.01.076-045', 'Перехід 76х45', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '31.01.076-057', 'Перехід 76х57', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '31.01.089-045', 'Перехід 89х45', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '31.01.089-057', 'Перехід 89х57', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '31.01.089-076', 'Перехід 89х76', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '31.01.108-057', 'Перехід 108х57', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '31.01.108-076', 'Перехід 108х76', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '31.01.108-089', 'Перехід 108х89', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '31.01.133-076', 'Перехід 133х76', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '31.01.133-089', 'Перехід 133х89', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '31.01.133-108', 'Перехід 133х108', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '31.01.159-108', 'Перехід 159х108', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '31.01.159-133', 'Перехід 159х133', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '31.01.219-159', 'Перехід 219х159', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '32.01.015-001', 'Згін DN15', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '32.01.020-001', 'Згін DN20', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '32.01.025-001', 'Згін DN25', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '32.01.032-001', 'Згін DN32', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '32.01.040-001', 'Згін DN40', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '32.01.050-001', 'Згін DN50', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '32.01.065-001', 'Згін DN65', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '32.01.080-001', 'Згін DN80', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '32.01.100-001', 'Згін DN100', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '33.01.015-001', 'Різьба DN15', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '33.01.020-001', 'Різьба DN20', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '33.01.025-001', 'Різьба DN25', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '33.01.032-001', 'Різьба DN32', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '33.01.040-001', 'Різьба DN40', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '33.01.050-001', 'Різьба DN50', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '33.01.065-001', 'Різьба DN65', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '33.01.080-001', 'Різьба DN80', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '33.01.100-001', 'Різьба DN100', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '34.01.015-001', 'Бочонок ГОСТ 6357 DN15', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '34.01.020-001', 'Бочонок ГОСТ 6357 DN20', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '34.01.025-001', 'Бочонок ГОСТ 6357 DN25', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '34.01.032-001', 'Бочонок ГОСТ 6357 DN32', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '34.01.040-001', 'Бочонок ГОСТ 6357 DN40', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '34.01.050-001', 'Бочонок ГОСТ 6357 DN50', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '34.01.065-001', 'Бочонок ГОСТ 6357 DN65', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '34.01.080-001', 'Бочонок ГОСТ 6357 DN80', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '34.01.100-001', 'Бочонок ГОСТ 6357 DN100', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '35.01.015-001', 'Муфта ГОСТ 8966 DN15', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '35.01.015-002', 'Муфта DN15', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '35.01.020-001', 'Муфта ГОСТ 8966 DN20', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '35.01.025-001', 'Муфта ГОСТ 8966 DN25', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '35.01.032-001', 'Муфта ГОСТ 8966 DN32', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '35.01.040-001', 'Муфта ГОСТ 8966 DN40', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '35.01.050-001', 'Муфта ГОСТ 8966 DN50', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '35.01.065-001', 'Муфта ГОСТ 8966 DN65', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '35.01.065-002', 'Муфта DN65', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '35.01.080-001', 'Муфта ГОСТ 8966 DN80', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '35.01.100-001', 'Муфта ГОСТ 8966 DN100', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.01.015-001', 'Контргайка ГОСТ 8968 DN15', 1, '2014-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.01.020-001', 'Контргайка ГОСТ 8968 DN20', 1, '2014-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.01.025-001', 'Контргайка ГОСТ 8968 DN25', 1, '2014-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.01.032-001', 'Контргайка ГОСТ 8968 DN32', 1, '2014-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.01.040-001', 'Контргайка ГОСТ 8968 DN40', 1, '2014-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.01.050-001', 'Контргайка ГОСТ 8968 DN50', 1, '2014-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.01.065-001', 'Контргайка ГОСТ 8968 DN65', 1, '2014-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.01.080-001', 'Контргайка ГОСТ 8968 DN80', 1, '2014-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.01.100-001', 'Контргайка ГОСТ 8968 DN100', 1, '2014-02-15', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.04.032-001', 'Футорка DN32', 1, '2016-02-10', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.04.032-002', 'Футорка DN32 LH', 1, '2016-02-10', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.04.032-003', 'Футорка DN32x10', 1, '2016-02-10', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.04.032-004', 'Футорка DN32x10 LH', 1, '2016-02-10', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.04.032-005', 'Футорка DN32x15', 1, '2016-02-10', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.04.032-006', 'Футорка DN32x15 LH', 1, '2016-02-10', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.04.032-007', 'Футорка DN32x20', 1, '2016-02-10', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.04.032-008', 'Футорка DN32x20 LH', 1, '2016-02-10', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.016-009', 'Шпилька кругла 16х80 (D=14,66)', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.016-010', 'Шпилька кругла 16х100 (D=14,66)', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.016-011', 'Шпилька кругла 16х120 (D=14,66)', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.016-012', 'Шпилька кругла 16х140 (D=14,66)', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.016-013', 'Шпилька кругла 16х160 (D=14,66)', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.020-003', 'Шпилька кругла 20х100 (D=18,34)', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.020-004', 'Шпилька кругла 20х110 (D=18,34)', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.020-005', 'Шпилька кругла 20х160 (D=18,34)', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.020-006', 'Шпилька кругла 20х170 (D=18,34)', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('SALABLE')]::common.inventory_kind[]
  );
  -- products --
  -- assembly ++
  PERFORM inventory.init(
    (NULL, NULL, '80.01.025-001', 'Котушка КС64 DN25х25', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.01.032-001', 'Котушка КС64 DN32х32', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.01.040-001', 'Котушка КС64 DN40х40', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.01.050-001', 'Котушка КС64 DN50х50', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.01.080-001', 'Котушка КС64 DN80х80', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.01.100-001', 'Котушка КС64 DN100х80', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.02.050-001', 'Котушка КС41 DN50х50', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.02.065-001', 'Котушка КС41 DN65х50', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.02.065-002', 'Котушка КС41 DN65х65', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.02.080-001', 'Котушка КС41 DN80х80', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.02.100-001', 'Котушка КС41 DN100х80', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.02.100-002', 'Котушка КС41 DN100х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.02.125-001', 'Котушка КС41 DN125х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.02.125-002', 'Котушка КС41 DN125х125', 1, '2015-12-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.02.150-001', 'Котушка КС41 DN150х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.02.150-002', 'Котушка КС41 DN150х150', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.02.200-001', 'Котушка КС41 DN200х150', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.02.200-002', 'Котушка КС41 DN200х200', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.02.250-001', 'Котушка КС41 DN250х200', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.02.250-002', 'Котушка КС41 DN250х250', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.02.300-001', 'Котушка КС41 DN300х250', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.02.300-002', 'Котушка КС41 DN300х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.02.350-001', 'Котушка КС41 DN350х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.02.400-001', 'Котушка КС41 DN400х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.04.050-001', 'Корпус в зборі БФ60 DN50х50', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.04.065-001', 'Корпус в зборі БФ60 DN65х65', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.04.080-001', 'Корпус в зборі БФ60 DN80х80', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.04.100-001', 'Корпус в зборі БФ60 DN100х100', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.04.125-001', 'Корпус в зборі БФ60 DN125х125', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.04.150-001', 'Корпус в зборі БФ60 DN150х150', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.23.025-001.010', 'Корпус КТ31п1 DN25x20', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.23.025-002.010', 'Корпус КТ31п1 DN25x20', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.23.032-001.010', 'Корпус КТ31п1 DN32x25', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.23.040-001.010', 'Корпус КТ31п1 DN40x32', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.23.050-001.010', 'Корпус КТ31п1 DN50x40', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.23.065-001.010', 'Корпус КТ31п1 DN65x50', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.23.080-001.010', 'Корпус КТ31п1 DN80x65', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.23.100-001.010', 'Корпус КТ31п1 DN100x80', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.23.125-001.010', 'Корпус КТ31п1 DN125x100', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.23.150-001.010', 'Корпус КТ31п1 DN150x125', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.23.200-001.010', 'Корпус КТ31п1 DN200x150', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.25.100-001.010', 'Корпус КТ37п1 DN100x100', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.25.150-001.010', 'Корпус КТ37п1 DN150x150', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.27.015-001', 'Корпус КТ27 DN15x10', 1, '2016-05-13', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.27.015-101', 'Корпус в зборі КТ27п DN15x10', 1, '2016-05-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.27.020-001', 'Корпус КТ27 DN20x15', 1, '2016-05-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.27.020-101', 'Корпус в зборі КТ27 DN20х15', 1, '2016-05-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.27.025-001', 'Корпус КТ27 DN25х20', 1, '2016-05-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.27.025-101', 'Корпус в зборі КТ27 DN25х20', 1, '2016-05-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.27.032-001', 'Корпус КТ27 DN32х25', 1, '2016-05-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.27.032-101', 'Корпус в зборі КТ27 DN32х25', 1, '2016-05-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.27.040-001', 'Корпус КТ27 DN40х32', 1, '2016-05-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.27.040-101', 'Корпус в зборі КТ27 DN40х32', 1, '2016-05-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.27.050-001', 'Корпус КТ27 DN50х40', 1, '2016-05-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.27.050-101', 'Корпус в зборі КТ27 DN50х40', 1, '2016-05-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.27.065-001', 'Корпус КТ27 DN65х50', 1, '2016-05-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.27.065-101', 'Корпус в зборі КТ27 DN65х50', 1, '2016-05-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.27.080-001', 'Корпус КТ27 DN80х65', 1, '2016-05-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.27.080-101', 'Корпус в зборі КТ27 DN80х65', 1, '2016-05-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.27.100-001', 'Корпус КТ27 DN100х80', 1, '2016-05-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.27.100-101', 'Корпус в зборі КТ27 DN100х80', 1, '2016-05-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.27.125-001', 'Корпус КТ27 DN125х100', 1, '2016-05-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.27.125-101', 'Корпус в зборі КТ27 DN125х100', 1, '2016-05-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.27.150-001', 'Корпус КТ27 DN150х125', 1, '2016-05-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.27.150-101', 'Корпус в зборі КТ27 DN150х125', 1, '2016-05-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.27.200-001', 'Корпус КТ27 DN200х150', 1, '2016-05-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.27.200-002', 'Корпус КТ27 DN200х150', 1, '2016-05-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.27.200-101', 'Корпус в зборі КТ27 DN200х150', 1, '2016-06-08', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.28.015-001', 'Корпус КТ28 DN15х10', 1, '2016-05-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.28.015-101', 'Корпус в зборі КТ28 DN15х10', 1, '2016-06-07', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.31.015-001.010', 'Корпус КТ31 DN15х10', 1, '2016-12-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.31.020-001.010', 'Корпус КТ31 DN20х15', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.31.025-001.010', 'Корпус КТ31 DN25х20', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.31.032-001.010', 'Корпус КТ31 DN32х25', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.31.040-001.010', 'Корпус КТ31 DN40х32', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.31.050-001.010', 'Корпус КТ31 DN50х40', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.31.065-001.010', 'Корпус КТ31 DN65х50', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.31.080-001.010', 'Корпус КТ31 DN80х65', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.31.100-001.010', 'Корпус КТ31 DN100х80', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.31.125-001.010', 'Корпус КТ31 DN125x100', 1, '2015-12-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.31.125-002.010', 'Корпус КТ31 DN125х100', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.31.150-001.010', 'Корпус КТ31 DN150x125', 1, '2015-12-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.31.150-002.010', 'Корпус КТ31 DN150х125', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.31.200-001.010', 'Корпус КТ31 DN200х150', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.32.015-001.010', 'Корпус КТ32 DN15х10', 1, '2016-12-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.37.150-001.010', 'Корпус КТ37 DN150х150', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.41.025-001', 'Корпус КС41 DN25х25', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.41.032-001', 'Корпус КС41 DN32х32', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.41.040-001', 'Корпус КС41 DN40х40', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.41.065-001', 'Корпус КС41 DN65х50', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.41.065-002', 'Корпус КС41 DN65х65', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.41.100-001', 'Корпус КС41 DN100х80', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.41.125-001', 'Корпус КС41 DN125х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.41.125-003', 'Корпус КС41 DN125х125', 1, '2015-12-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.52.015-001', 'Корпус КТ52 DN15x10', 1, '2015-10-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.52.015-001.', 'Корпус КТ52 DN15х15', 1, '2015-10-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.52.020-001', 'Корпус КТ52 DN20х20', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.52.025-001', 'Корпус КТ52 DN25х20', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.52.025-002', 'Корпус КТ52 DN25х20', 1, '2016-12-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.52.032-001', 'Корпус КТ52 DN32х25', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.52.040-001', 'Корпус КТ52 DN40х32', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.52.050-001', 'Корпус КТ52 DN50х40', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.52.065-001', 'Корпус КТ52 DN65х50', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.52.080-001', 'Корпус КТ52 DN80х65', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.52.125-001', 'Корпус КТ52 DN125х80', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.52.150-001', 'Корпус КТ52 DN150х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '80.52.200-001', 'Корпус КТ52 DN200х150', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '81.01.050-001', 'Перехід П-С ДСТУ Б В.2.7-177 DN50', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '81.01.080-001', 'Перехід П-С ДСТУ Б В.2.7-177 DN80', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '81.01.100-001', 'Перехід П-С ДСТУ Б В.2.7-177 DN100', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.23.025-001', 'Ручка КТ31п1 DN25', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.23.025-001.010', 'Ручка КТ31п1 DN25 без покриття', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.23.040-001', 'Ручка КТ31п1 DN40', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.23.040-001.010', 'Ручка КТ31п1 DN40 без покриття', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.23.065-001', 'Ручка КТ31п1 DN65', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.23.065-001.010', 'Ручка КТ31п1 DN65 без покриття', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.23.100-001', 'Ручка КТ31п1 DN100', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.23.100-001.010', 'Ручка КТ31п1 DN100 без покриття', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.23.125-001', 'Ручка КТ31п1 DN125', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.23.125-001.010', 'Ручка КТ31п1 DN125 без покриття', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.23.200-001', 'Ручка КТ31п1 DN200', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.23.200-001.010', 'Ручка КТ31п1 DN200 без покриття', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.27.015-001', 'Ручка КТ27 DN15х10', 1, '2016-04-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.27.025-001', 'Ручка КТ27 DN25', 1, '2016-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.27.040-001', 'Ручка КТ27 DN40', 1, '2016-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.27.065-001', 'Ручка КТ27 DN65', 1, '2016-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.27.100-001', 'Ручка КТ27 DN100', 1, '2016-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.27.125-001', 'Ручка КТ27 DN125', 1, '2016-05-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.27.125-001.010', 'Ручка КТ27 DN125 без покриття', 1, '2016-05-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.31.015-001', 'Ручка КТ31 DN15х10 чорна', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.31.025-001', 'Ручка КТ31 DN25х20 чорна', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.31.025-002', 'Ручка КТ31 DN25х20 сіра', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.31.040-001', 'Ручка КТ31 DN40х32 чорна', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.31.050-001', 'Ручка КТ31 DN50х40 чорна', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.31.050-001.010', 'Ручка КТ31 DN50х40 без покриття', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.31.050-002', 'Ручка КТ31 DN50х40 сіра', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.31.065-001', 'Ручка КТ31 DN65х50 чорна', 1, '2015-10-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.31.065-001.010', 'Ручка КТ31 DN65х50 без покриття', 1, '2015-10-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.31.065-002', 'Ручка КТ31 DN65х50 сіра', 1, '2015-10-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.31.100-001', 'Ручка КТ31 DN100х80 чорна', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.31.100-001.010', 'Ручка КТ31 DN100х80 без покриття', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.31.125-001', 'Ручка КТ31 DN125х100 чорна', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.31.125-001.010', 'Ручка КТ31 DN125х100 без покриття', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.31.125-002', 'Ручка КТ31 DN125х100 сіра', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.31.200-001', 'Ручка КТ31 DN200х150 чорна', 1, '2014-09-25', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.31.200-001.010', 'Ручка КТ31 DN200х150 без покриття', 1, '2014-09-25', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.51.015-001', 'Ручка КМ51 DN15х15 жовта', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.51.020-001', 'Ручка КМ51 DN20х20 жовта', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.51.032-001', 'Ручка КМ51 DN32х32 жовта', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.51.040-001', 'Ручка КМ51 DN40х40 жовта', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.51.065-001', 'Ручка КМ51 DN65х65 жовта', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.52.100-001', 'Ручка КТ52 DN100x80', 1, '2015-12-08', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.52.100-001.010', 'Ручка КТ52 DN100х80 без покриття', 1, '2015-12-08', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.60.050-001', 'Ручка БФ60 DN50', 1, '2015-10-31', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.60.050-001.010', 'Ручка БФ60 DN50 без покриття', 1, '2015-10-31', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.60.100-001', 'Ручка БФ60 DN100', 1, '2015-10-31', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.60.100-001.010', 'Ручка БФ60 DN100 без покриття', 1, '2015-10-31', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.60.125-001', 'Ручка БФ60 DN125', 1, '2016-01-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '82.60.125-001.010', 'Ручка БФ60 DN125 без покриття', 1, '2016-01-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '83.01.050-001', 'Сідло БФ60 DN50х50', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '83.01.065-001', 'Сідло БФ60 DN65х65', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '83.01.080-001', 'Сідло БФ60 DN80х80', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '83.01.100-001', 'Сідло БФ60 DN100х100', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '83.01.125-001', 'Сідло БФ60 DN125х125', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '83.01.150-001', 'Сідло БФ60 DN150х150', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '84.31.350-001', 'Патрубок КТ31 DN350х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '84.31.400-001', 'Патрубок КТ31 DN400х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '84.33.350-001', 'Патрубок КТ33 DN350х300', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '84.33.400-001', 'Патрубок КТ33 DN400х300', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '84.37.300-001', 'Патрубок КТ37 DN300х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '84.38.300-001', 'Патрубок КТ38 DN300х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '85.01.008-001', 'Фіксатор М8 ручки БФ60 DN50х50', 1, '2015-10-31', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '87.01.300-001', 'Шток перехідний 11с31п DN300x250', 1, '2017-03-06', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '87.31.300-002', 'Котушка перехідна 11с31п DN300x250', 1, '2017-03-06', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.23.200-001.010', 'Корпус КТ931п1 DN200x150', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.25.150-001.010', 'Корпус КТ937п1 DN150x150', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.30.020-001.010', 'Корпус КТ930 DN20х15', 1, '2015-01-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.30.025-001.010', 'Корпус КТ930 DN25х20', 1, '2015-01-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.30.032-001.010', 'Корпус КТ930 DN32х25', 1, '2015-01-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.31.020-001.010', 'Корпус КТ931 DN20х15', 1, '2015-01-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.31.025-001.010', 'Корпус КТ931 DN25х20', 1, '2015-01-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.31.032-001.010', 'Корпус КТ931 DN32х25', 1, '2015-01-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.31.040-001.010', 'Корпус КТ931 DN40х32', 1, '2015-01-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.31.050-001.010', 'Корпус КТ931 DN50х40', 1, '2015-01-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.31.065-001.010', 'Корпус КТ931 DN65х50', 1, '2015-01-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.31.080-001.010', 'Корпус КТ931 DN80х65', 1, '2015-01-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.31.100-001.010', 'Корпус КТ931 DN100х80', 1, '2015-01-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.31.125-001.010', 'Корпус КТ931 DN125х100', 1, '2015-01-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.31.125-003.010', 'Корпус КТ331 DN125х100', 1, '2015-02-04', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.31.150-001.010', 'Корпус КТ931 DN150х125', 1, '2015-01-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.31.150-003.010', 'Корпус КТ331 DN150х125', 1, '2015-02-04', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.31.200-001.010', 'Корпус КТ931 DN200х150', 1, '2014-09-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.31.250-001.010', 'Корпус КТ931 DN250х200', 1, '2014-09-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.31.300-001.010', 'Корпус КТ931 DN300х250', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.31.350-001.010', 'Корпус КТ931 DN350х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.31.400-001.010', 'Корпус КТ931 DN400х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.32.020-001.010', 'Корпус КТ932 DN20х15', 1, '2016-12-20', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.37.150-001.010', 'Корпус КТ937 DN150х150', 1, '2014-09-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.41.025-001', 'Корпус КС941 DN25х25', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.41.032-001', 'Корпус КС941 DN32х32', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.41.040-001', 'Корпус КС941 DN40х32', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.41.065-001', 'Корпус КС941 DN65х50', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.41.065-002', 'Корпус КС941 DN65х65', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.41.100-001', 'Корпус КС941 DN100х80', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.41.125-001', 'Корпус КС941 DN150х100', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.41.125-002', 'Корпус КС941 DN150х100', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.41.125-003', 'Корпус КС341 DN150х100', 1, '2015-01-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.41.150-001', 'Корпус КС941 DN150х150', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.41.200-001', 'Корпус КС941 DN200х150', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.41.250-001', 'Корпус КС941 DN250х200', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.41.300-001', 'Корпус КС941 DN300х250', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.41.350-001', 'Корпус КС941 DN350х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '89.52.200-001', 'Корпус КТ952 DN200х150', 1, '2015-01-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('ASSEMBLY'), ('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  -- assembly --
  /*
  PERFORM inventory.init(
    (NULL, NULL, '21.16.025-001', 'Фланець ГОСТ12821 PN16 DN25', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.032-001', 'Фланець ГОСТ12821 PN16 DN32', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '21.16.040-001', 'Фланець ГОСТ12821 PN16 DN40', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );*/
  -- consumable ++
  PERFORM inventory.init(
    (NULL, NULL, '22.16.015-001', 'Фланець 11с36п DN15х15', 1, '2016-02-01', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.015-101', 'Фланець 11с22п DN15x10', 1, '2015-11-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.020-001', 'Фланець 11с36п DN20х20', 1, '2016-02-01', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.020-101', 'Фланець 11с22п DN20х15', 1, '2015-11-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.025-001', 'Фланець 11с36п DN25х25', 1, '2016-02-01', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.025-101', 'Фланець 11с22п DN25х20', 1, '2015-11-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.032-001', 'Фланець 11с36п DN32х32', 1, '2016-02-01', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.032-101', 'Фланець 11с22п DN32х25', 1, '2015-11-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.040-001', 'Фланець 11с36п DN40х40', 1, '2016-02-01', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.040-101', 'Фланець 11с22п DN40х32', 1, '2015-11-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.050-001', 'Фланець 11с33п DN50x40', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.050-002', 'Фланець 11с36п DN50x50', 1, '2016-10-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.050-101', 'Фланець 11с22п DN50х40', 1, '2015-11-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.065-001', 'Фланець 11с33п DN65x50', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.065-101', 'Фланець 11с22п DN65х50', 1, '2015-11-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.080-001', 'Фланець 11с33п DN80x65', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.080-101', 'Фланець 11с22п DN80х65', 1, '2015-11-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.100-001', 'Фланець 11с33п DN100x80', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.100-002', 'Фланець 11с36п DN100x100', 1, '2016-02-01', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.100-101', 'Фланець 11с22п DN100х80', 1, '2015-11-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.125-001', 'Фланець 11с33п DN125x100', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.125-002', 'Фланець 11с36п DN125x125', 1, '2016-02-01', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.125-101', 'Фланець 11с22п DN125х100', 1, '2015-11-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.150-001', 'Фланець 11с33п DN150x125', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.150-002', 'Фланець 11с33п DN150х100', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.150-101', 'Фланець 11с22п DN150х125', 1, '2015-11-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.200-001', 'Фланець 11с33п DN200х150', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.200-002', 'Фланець 11с38п DN200х200 PN16', 1, '2014-09-09', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.200-101', 'Фланець 11с22п DN200х150', 1, '2015-11-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.250-001', 'Фланець 11с33п DN250х200', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.300-001', 'Фланець 11с33п DN300х250', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.350-001', 'Фланець 11с33п DN350х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.16.400-001', 'Фланець 11с33п DN400х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.25.015-001', 'Фланець 11с38п DN15х15', 1, '2016-02-06', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.25.015-002', 'Фланець 11с32п DN15х10', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.25.020-001', 'Фланець 11с32п DN20х15', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.25.025-001', 'Фланець 11с32п DN25х20', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.25.025-002', 'Фланець 11с38п DN25х25', 1, '2014-09-09', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.25.032-001', 'Фланець 11с32п DN32х25', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '_-22.25.032-002', 'Фланець 11с38п DN32х32', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.25.040-001', 'Фланець 11с32п DN40х32', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.25.040-002', 'Фланець 11с38п DN40х40', 1, '2014-09-09', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.25.050-001', 'Фланець 11с32п DN50х40', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.25.050-002', 'Фланець 11с38п DN50х50', 1, '2014-09-09', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.25.065-001', 'Фланець 11с32п DN65х50', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.25.065-002', 'Фланець 11с38п DN65х65', 1, '2014-09-09', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.25.080-001', 'Фланець 11с32п DN80х65', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.25.080-002', 'Фланець 11с38п DN80х80', 1, '2014-09-09', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.25.100-001', 'Фланець 11с32п DN100х80', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.25.100-002', 'Фланець 11с38п DN100х100', 1, '2014-09-09', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.25.125-001', 'Фланець 11с32п DN125х100', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.25.125-002', 'Фланець 11с38п DN125х125', 1, '2014-09-09', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.25.150-001', 'Фланець 11с32п DN150х125', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.25.200-001', 'Фланець 11с32п DN200х150', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.25.250-001', 'Фланець 11с32п DN250х200', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '22.25.300-001', 'Фланець 11с32п DN300х250', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.01.025-001', 'Фланець 11с42п DN25х25', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.01.025-002', 'Фланець 11с42п DN25х25 LH', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.01.032-001', 'Фланець 11с42п DN32х32', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.01.032-002', 'Фланець 11с42п DN32х32 LH', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.01.040-001', 'Фланець 11с42п DN40х40', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.01.040-002', 'Фланець 11с42п DN40х40 LH', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.01.050-001', 'Фланець 11с42п DN50х50', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.01.050-002', 'Фланець 11с42п DN50х50 LH', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.01.065-001', 'Фланець 11с42п DN65х50', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.01.065-002', 'Фланець 11с42п DN65х50 LH', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.01.065-003', 'Фланець 11с42п DN65х65', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.01.065-004', 'Фланець 11с42п DN65х65 LH', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.01.080-001', 'Фланець 11с42п DN80х80', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.01.080-002', 'Фланець 11с42п DN80х80 LH', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.01.100-001', 'Фланець 11с42п DN100х80', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.01.100-002', 'Фланець 11с42п DN100х80 LH', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.01.125-001', 'Фланець 11с42п DN125х100', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.01.125-002', 'Фланець 11с42п DN125х100 LH', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.01.150-001', 'Фланець 11с42п DN150х100', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.01.150-002', 'Фланець 11с42п DN150х100 LH', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.01.200-001', 'Фланець 11с42п DN200х150', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.01.200-002', 'Фланець 11с42п DN200х150 LH', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.01.250-001', 'Фланець 11с42п DN250х200', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.01.300-001', 'Фланець 11с42п DN300х250', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.01.400-001', 'Фланець 11с42п DN400х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.02.080-001', 'Фланець 11с64п DN80х80', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.02.125-001', 'Фланець 11с41п DN125х100', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.02.125-002', 'Фланець 11с41п DN125х125', 1, '2015-12-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.02.150-001', 'Фланець 11с41п DN150х100', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.02.200-001', 'Фланець 11с41п DN200х150', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.02.250-001', 'Фланець 11с41п DN250х200', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.02.300-001', 'Фланець 11с41п DN300х250', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.02.350-001', 'Фланець 11с41п DN350х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.02.400-001', 'Фланець 11с41п DN400х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.03.150-001', 'Фланець 11с41п DN150х150', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.03.200-001', 'Фланець 11с41п DN200х150', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.04.100-001', 'Фланець котушки 11с41п DN100х100', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.04.125-001', 'Фланець котушки 11с41п DN125х100', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.04.125-002', 'Фланець котушки 11с41п DN125x125', 1, '2015-12-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.04.150-001', 'Фланець котушки 11с41п DN150х100', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.04.200-001', 'Фланець котушки 11с41п DN200х150', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.04.200-002', 'Фланець котушки 11с41п DN200х200', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.04.250-001', 'Фланець котушки 11с41п DN250х250', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '23.05.100-001', 'Фланець котушки 11с64п DN100х80', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.01.025-001', 'Фланець зовнішній 11с64п DN25х25', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.01.032-001', 'Фланець зовнішній 11с64п DN32х32', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.01.040-001', 'Фланець зовнішній 11с64п DN40х40', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.01.050-001', 'Фланець зовнішній 11с41п DN50х50', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.01.050-002', 'Фланець зовнішній 11с64п DN50х50', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.01.065-001', 'Фланець зовнішній 11с41п DN65х50', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.01.065-002', 'Фланець зовнішній 11с41п DN65х65', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.01.080-001', 'Фланець зовнішній 11с41п DN80х80', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.01.080-002', 'Фланець зовнішній 11с64п DN80х80', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.01.100-001', 'Фланець зовнішній 11с41п DN100х80', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.02.025-001', 'Фланець внтурішній 11с64п DN25х25', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.02.032-001', 'Фланець внтурішній 11с64п DN32х32', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.02.040-001', 'Фланець внтурішній 11с64п DN40х40', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.02.050-001', 'Фланець внтурішній 11с41п DN50х50', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.02.050-002', 'Фланець внтурішній 11с64п DN50х50', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.02.065-001', 'Фланець внтурішній 11с41п DN65х50', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.02.065-002', 'Фланець внтурішній 11с41п DN65х65', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.02.080-001', 'Фланець внтурішній 11с41п DN80х80', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.02.080-002', 'Фланець внтурішній 11с64п DN80х80', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.03.015-001', 'Фланець 11с52п DN15х15', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.03.020-001', 'Фланець 11с52п DN20х15', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.03.025-001', 'Фланець 11с52п DN25х20', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.03.025-002', 'Фланець 11с52п DN25х20', 1, '2016-12-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.03.032-001', 'Фланець 11с52п DN32х25', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.03.040-001', 'Фланець 11с52п DN40х32', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.03.050-001', 'Фланець 11с52п DN50х40', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.03.065-001', 'Фланець 11с52п DN65х50', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.03.080-001', 'Фланець 11с52п DN80х65', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.03.100-001', 'Фланець 11с52п DN100х80', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.03.125-001', 'Фланець 11с52п DN125х80', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.03.150-001', 'Фланець 11с52п DN150х100', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '24.03.200-001', 'Фланець 11с52п DN200х150', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '25.01.040-001', 'Фланець 40с10бк Ру10 DN40', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '25.01.050-001', 'Фланець 40с10бк Ру10 DN50', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '25.01.080-001', 'Фланець 40с10бк Ру10 DN80', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '25.03.005-001', 'Фланець ISO5211 F05  (d=22)', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '25.03.007-001', 'Фланець ISO5211 F07  (d=22)', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '25.03.007-002', 'Фланець ISO5211 F07  (d=32)', 1, '2015-01-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '25.03.010-001', 'Фланець ISO5211 F10 (d=38)', 1, '2014-09-25', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '25.03.010-002', 'Фланець ISO5211 F10 (d=35)', 1, '2014-09-25', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '25.03.012-001', 'Фланець ISO5211 F12', 1, '2014-09-25', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '25.03.012-002', 'Фланець F12 EN ISO 5211', 1, '2016-02-11', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '25.03.014-001', 'Фланець ISO5211 F14 ', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '25.03.014-003', 'Фланець ISO5211 F14 ', 1, '2017-03-06', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '25.03.016-001', 'Фланець ISO5211 F16 ', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '25.03.016-003', 'Фланець ISO5211 F16', 1, '2017-03-06', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '25.04.050-001', 'Фланець БФ60 DN50', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '25.04.100-001', 'Фланець БФ60 DN100', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '25.04.125-001', 'Фланець БФ60 DN125', 1, '2016-01-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '25.06.200-001', 'Фланець пожежної підставки', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '25.07.015-001', 'Фланець 11лс51п DN15х15', 1, '2016-02-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '25.08.025-001', 'Фланець обмежувача 11с31п1 DN25', 1, '2016-02-11', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '25.08.040-001', 'Фланець обмежувача 11с31п1 DN40', 1, '2016-02-11', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '25.08.065-001', 'Фланець обмежувача 11с31п1 DN65', 1, '2016-02-11', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '25.08.125-001', 'Фланець обмежувача 11с31п1 DN125', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '25.08.200-001', 'Фланець обмежувача 11с31п1 DN200', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '32.02.050-001', 'Втулка компресійна БГК DN50', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '32.02.080-001', 'Втулка компресійна БГК DN80', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '32.02.100-001', 'Втулка компресійна БГК DN100', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '35.02.008-001', 'Муфта РВТ-08', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '35.02.010-001', 'Муфта РВТ-10', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '35.02.012-001', 'Муфта РВТ-12', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '35.02.016-001', 'Муфта РВТ-16', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '35.02.020-001', 'Муфта РВТ-20', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '35.02.025-001', 'Муфта РВТ-25', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.01.015-002', 'Гайка М22х1,5 ручки', 1, '2015-01-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.02.016-001', 'Гайка РВТ-08 М16х1,5 S19', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.02.018-001', 'Гайка РВТ-08 М18х1,5 S22', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.02.018-002', 'Гайка РВТ-10 М18х1,5 S22', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.02.020-001', 'Гайка РВТ-10 М20х1,5 S24', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.02.020-002', 'Гайка РВТ-12 М20х1,5 S24', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.02.022-001', 'Гайка РВТ-12 М22х1,5 S27', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.02.027-001', 'Гайка РВТ-16 М27х1,5 S32', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.02.030-001', 'Гайка РВТ-20 М30х1,5 S36', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.02.033-001', 'Гайка РВТ-20 М33х2,0 S41', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.02.042-001', 'Гайка РВТ-25 М42х2,0 S50', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.03.018-001', 'Гайка М18х1,5 упора', 1, '2015-01-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.05.025-001', 'Гайка піджимна верхня 11с31п1 DN25', 1, '2016-02-11', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.05.065-001', 'Гайка піджимна верхня 11с31п1 DN65', 1, '2016-02-11', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.05.125-001', 'Гайка піджимна верхня 11с31п1 DN125', 1, '2016-02-11', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '36.05.200-001', 'Гайка піджимна верхня 11с31п1 DN200', 1, '2016-02-11', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '37.01.008-001', 'Ніпель РВТ-08', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '37.01.010-001', 'Ніпель РВТ-10', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '37.01.012-001', 'Ніпель РВТ-12', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '37.01.016-001', 'Ніпель РВТ-16', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '37.01.020-001', 'Ніпель РВТ-20', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '37.01.025-001', 'Ніпель РВТ-25', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.01.050-001', 'Патрубок БГК DN50', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.01.080-001', 'Патрубок БГК DN80', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.01.100-001', 'Патрубок БГК DN100', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.21.015-001', 'Патрубок КТ21 DN15х10', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.21.020-001', 'Патрубок КТ21 DN20х15', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.21.032-001', 'Патрубок КТ21 DN32х25', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.21.040-001', 'Патрубок КТ21 DN40х32', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.21.050-001', 'Патрубок КТ21 DN50х40', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.21.065-001', 'Патрубок КТ21 DN65х50', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.21.080-001', 'Патрубок КТ21 DN80х65', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.21.100-001', 'Патрубок КТ21 DN100х80', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.21.125-001', 'Патрубок КТ21 DN125х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.21.150-001', 'Патрубок КТ21 DN150х125', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.22.015-001', 'Патрубок КТ22 DN15х10', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.22.020-001', 'Патрубок КТ22 DN20х15', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.22.025-001', 'Патрубок КТ22 DN25х20', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.22.032-001', 'Патрубок КТ22 DN32х25', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.22.040-001', 'Патрубок КТ22 DN40х32', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.22.050-001', 'Патрубок КТ22 DN50х40', 1, '2015-11-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.22.065-001', 'Патрубок КТ22 DN65х50', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.22.080-001', 'Патрубок КТ22 DN80х65', 1, '2015-11-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.22.100-001', 'Патрубок КТ22 DN100х80', 1, '2015-11-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.22.125-001', 'Патрубок КТ22 DN125х100', 1, '2015-11-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.22.150-001', 'Патрубок КТ22 DN150х125', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.27.200-001', 'Патрубок 11с27п DN200x150', 1, '2016-04-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.30.015-001', 'Патрубок КТ30 DN15х10', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.30.020-001', 'Патрубок КТ30 DN20х15', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.30.025-001', 'Патрубок КТ30 DN25х20', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.30.032-001', 'Патрубок КТ30 DN32х25', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.30.040-001', 'Патрубок КТ30 DN40х32', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.30.050-001', 'Патрубок КТ30 DN50х40', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.30.065-001', 'Патрубок КТ30 DN65х50', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.30.080-001', 'Патрубок КТ30 DN80х65', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.31.015-001', 'Патрубок КТ31 DN15х10', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.31.015-002', 'Патрубок КТ31 DN15х15', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.31.020-001', 'Патрубок КТ31 DN20х15', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.31.025-001', 'Патрубок КТ31 DN25х20', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.31.032-001', 'Патрубок КТ31 DN32х25', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.31.040-001', 'Патрубок КТ31 DN40х32', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.31.050-001', 'Патрубок КТ31 DN50х40', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.31.065-001', 'Патрубок КТ31 DN65х50', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.31.080-001', 'Патрубок КТ31 DN80х65', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.31.100-001', 'Патрубок КТ31 DN100х80', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.31.125-001', 'Патрубок КТ31 DN125х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.31.150-001', 'Патрубок КТ31 DN150х125', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.31.200-001', 'Патрубок КТ31 DN200х150', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.31.250-001', 'Патрубок КТ31 DN250х200', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.31.300-001', 'Патрубок КТ31 DN300х250', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.31.350-001', 'Патрубок-сегмент КТ31 DN350х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.31.400-001', 'Патрубок-сегмент КТ31 DN400х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.32.015-001', 'Патрубок КТ32 DN15х10', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.32.015-002', 'Патрубок КТ32 DN15х15', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.32.020-001', 'Патрубок КТ32 DN20х15', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.32.025-001', 'Патрубок КТ32 DN25х20', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.32.032-001', 'Патрубок КТ32 DN32х25', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.32.040-001', 'Патрубок КТ32 DN40х32', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.32.050-001', 'Патрубок КТ32 DN50х40', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.32.065-001', 'Патрубок КТ32 DN65х50', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.32.080-001', 'Патрубок КТ32 DN80х65', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.32.100-001', 'Патрубок КТ32 DN100х80', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.32.125-001', 'Патрубок КТ32 DN125х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.32.150-001', 'Патрубок КТ32 DN150х125', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.32.200-001', 'Патрубок КТ32 DN200х150', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.32.250-001', 'Патрубок КТ32 DN250х200', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.32.300-001', 'Патрубок КТ32 DN300х250', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.32.350-001', 'Патрубок-сегмент КТ32 DN350х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.32.400-001', 'Патрубок-сегмент КТ32 DN400х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.33.050-001', 'Патрубок КТ33 DN50х40', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.33.065-001', 'Патрубок КТ33 DN65х50', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.33.080-001', 'Патрубок КТ33 DN80х65', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.33.100-001', 'Патрубок КТ33 DN100х80', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.33.150-001', 'Патрубок КТ33 DN150х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.34.125-001', 'Патрубок КТ34 DN125х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.35.025-001', 'Патрубок КТ35 DN25х25', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.35.032-001', 'Патрубок КТ35 DN32х32', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.35.040-001', 'Патрубок КТ35 DN40х40', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.35.050-001', 'Патрубок КТ35 DN50х50', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.35.065-001', 'Патрубок КТ35 DN65х65', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.35.080-001', 'Патрубок КТ35 DN80х80', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.35.100-001', 'Патрубок КТ35 DN100х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.35.125-001', 'Патрубок КТ35 DN125х125', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.36.025-001', 'Патрубок 11с36п DN25x25', 1, '2016-02-01', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.36.050-001', 'Патрубок КТ36 DN50х50', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.36.065-001', 'Патрубок КТ36 DN65х65', 1, '2016-02-01', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.36.080-001', 'Патрубок КТ36 DN80х80', 1, '2016-02-01', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.36.100-001', 'Патрубок КТ36 DN100х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.36.125-001', 'Патрубок КТ36 DN125х125', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.37.015-001', 'Патрубок КТ37 DN15х15', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.37.015-002', 'Патрубок КТ37 DN15х15', 1, '2016-10-04', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.37.020-001', 'Патрубок КТ37 DN20х20', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.37.025-001', 'Патрубок КТ37 DN25х25', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.37.032-001', 'Патрубок КТ37 DN32х32', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.37.040-001', 'Патрубок КТ37 DN40х40', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.37.050-001', 'Патрубок КТ37 DN50х50', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.37.065-001', 'Патрубок КТ37 DN65х65', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.37.080-001', 'Патрубок КТ37 DN80х80', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.37.100-001', 'Патрубок КТ37 DN100х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.37.125-001', 'Патрубок КТ37 DN125х125', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.37.150-001', 'Патрубок КТ37 DN150х150', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.37.200-001', 'Патрубок КТ37 DN200х200', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.37.250-001', 'Патрубок КТ37 DN250х250', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.37.300-001', 'Патрубок КТ37 DN300х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.38.015-001', 'Патрубок КТ38 DN15х15', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.38.100-001', 'Патрубок КТ38 DN100х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.38.125-001', 'Патрубок КТ38 DN125х125', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.38.150-001', 'Патрубок КТ38 DN150х150', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.38.200-001', 'Патрубок КТ38 DN200х200', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.38.250-001', 'Патрубок КТ38 DN250х250', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.38.300-001', 'Патрубок КТ38 DN300х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.39.015-001', 'Патрубок КТ39 DN15х15', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.39.020-001', 'Патрубок КТ39 DN20х20', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.39.025-001', 'Патрубок КТ39 DN25х25', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.39.032-001', 'Патрубок КТ39 DN32х32', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.39.040-001', 'Патрубок КТ39 DN40х40', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.39.050-001', 'Патрубок КТ39 DN50х50', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.39.065-001', 'Патрубок КТ39 DN65х65', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.39.080-001', 'Патрубок КТ39 DN80х80', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '40.39.100-001', 'Патрубок КТ39 DN100х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.01.100-001', 'Патрубок КС64 DN100х80', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.01.100-002', 'Патрубок КС41 DN100х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.01.125-001', 'Патрубок КС41 DN125х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.01.125-002', 'Патрубок КС41 DN125x125', 1, '2015-12-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.01.150-001', 'Патрубок КС41 DN150х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.01.150-002', 'Патрубок КС41 DN150х150', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.01.200-001', 'Патрубок КС41 DN200х150', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.01.200-002', 'Патрубок КС41 DN200х200', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.01.250-001', 'Патрубок КС41 DN250х200', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.01.250-002', 'Патрубок КС41 DN250х250', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.01.300-001', 'Патрубок КС41 DN300х250', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.01.300-002', 'Патрубок КС41 DN300х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.01.300-003', 'Патрубок котушки 11с31п DN300x250', 1, '2017-03-06', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.01.350-001', 'Патрубок КС41 DN350х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.01.400-001', 'Патрубок КС41 DN400х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.02.025-001', 'Патрубок БГК DN25', 1, '2015-01-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.02.032-001', 'Патрубок БГК DN32', 1, '2015-01-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.02.040-001', 'Патрубок БГК DN40', 1, '2015-01-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.02.050-001', 'Патрубок БГК DN50', 1, '2015-01-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.02.065-001', 'Патрубок БГК DN65', 1, '2015-01-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.02.080-001', 'Патрубок БГК DN80', 1, '2015-01-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.02.100-001', 'Патрубок БГК DN100', 1, '2015-01-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.02.125-001', 'Патрубок БГК DN125', 1, '2015-01-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.02.150-001', 'Патрубок БГК DN150', 1, '2015-01-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.02.200-001', 'Патрубок БГК DN200', 1, '2015-01-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.02.200-002', 'Патрубок БГК DN200', 1, '2015-01-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.02.200-003', 'Патрубок БГК DN200', 1, '2015-01-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.03.025-001', 'Стійка ПК DN25', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.03.040-001', 'Стійка ПК DN40', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.03.050-001', 'Стійка ПК DN50', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.03.065-001', 'Стійка ПК DN65', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.03.080-001', 'Стійка ПК DN80', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.03.100-001', 'Стійка ПК DN100', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.03.125-001', 'Стійка ПК DN125', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.03.150-001', 'Стійка ПК DN150', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.03.200-001', 'Стійка ПК DN200', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.04.221-001', 'Корпус пожежної підставки (L=420)', 1, '2014-09-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.31.200-001', 'Патрубок корпуса КТ31 DN200х150', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.41.025-001', 'Патрубок корпуса КС41 DN25х25', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.41.032-001', 'Патрубок корпуса КС41 DN32х32', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.41.040-001', 'Патрубок корпуса КС41 DN40х40', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.41.065-001', 'Патрубок корпуса КС41 DN65х50', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.41.065-002', 'Патрубок корпуса КС41 DN65х65', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.41.100-001', 'Патрубок корпуса КС41 DN100х80', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.41.125-001', 'Патрубок корпуса КС41 DN125х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.41.125-004', 'Патрубок корпуса КС41п DN125x125', 1, '2015-12-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.41.150-001', 'Патрубок корпуса КС41 DN150х150', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.41.200-001', 'Патрубок корпуса КС41 DN200х150', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.41.250-001', 'Патрубок корпуса КС41 DN250х200', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.41.300-001', 'Патрубок корпуса КС41 DN300х250', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.41.350-001', 'Патрубок корпуса КС41 DN350х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.51.015-001', 'Корпус КМ51 DN15х15', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.51.020-001', 'Корпус КМ51 DN20х20', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.51.025-001', 'Корпус КМ51 DN25х25', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.51.032-001', 'Корпус КМ51 DN32х32', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.51.040-001', 'Корпус КМ51 DN40х40', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.51.050-001', 'Корпус КМ51 DN50х50', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.51.065-001', 'Корпус КМ51 DN65х65', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.51.080-001', 'Корпус КМ51 DN80х80', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.51.100-001', 'Корпус КМ51 DN100х100', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.52.015-001', 'Патрубок корпуса КТ52 DN15x10', 1, '2015-10-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.52.020-001', 'Патрубок корпуса КТ52 DN20х15', 1, '2015-01-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.52.025-001', 'Патрубок корпуса КТ52 DN25х20', 1, '2015-01-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.52.025-002', 'Патрубок корпуса КТ52 DN25х20', 1, '2016-12-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.52.032-001', 'Патрубок корпуса КТ52 DN32х25', 1, '2015-01-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.52.040-001', 'Патрубок корпуса КТ52 DN40х32', 1, '2015-01-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.52.050-001', 'Патрубок корпуса КТ52 DN50х40', 1, '2016-02-04', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.52.065-001', 'Патрубок корпуса КТ52 DN65х50', 1, '2015-01-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.52.080-001', 'Патрубок корпуса КТ52 DN80х65', 1, '2015-01-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.52.100-001', 'Патрубок корпуса КТ52 DN100x80', 1, '2015-11-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.52.125-001', 'Патрубок корпуса КТ52 DN125х80', 1, '2015-01-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.52.150-001', 'Патрубок корпуса КТ52 DN150х100', 1, '2015-01-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.52.200-001', 'Патрубок корпуса КТ52 DN200х150', 1, '2015-01-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.60.050-001', 'Корпус БФ60 DN50х50 ', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.60.065-001', 'Корпус БФ60 DN65х65 ', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.60.080-001', 'Корпус БФ60 DN80х80 ', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.60.100-001', 'Корпус БФ60 DN100х100 ', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.60.125-001', 'Корпус БФ60 DN125х125 ', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '41.60.150-001', 'Корпус БФ60 DN150х150 ', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.01.015-001', 'Бобишка КТ31 DN15х10', 1, '2014-09-09', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.01.015-002', 'Бобишка КТ52 DN15х10', 1, '2016-12-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.01.020-001', 'Бобишка КТ31 DN20х15', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.01.020-002', 'Бобишка КТ31 DN20х15', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.01.050-001', 'Бобишка КТ31 DN50х40', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.01.065-001', 'Бобишка КТ31 DN65х50', 1, '2015-10-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.01.125-001', 'Бобишка КТ31 DN125х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.01.125-002', 'Бобишка КТ31 DN125х100 (38х71)', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.01.200-001', 'Бобишка КТ31 DN200х150', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.02.022-001', 'Втулка ручки КТ31 DN50х40 (S=12)', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.02.032-001', 'Втулка ручки КТ31 DN100х80 (S=19)', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.02.036-001', 'Втулка ручки КТ31 DN125х100 (S=22)', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.02.036-002', 'Втулка ручки 36х16 (Sq=19)', 1, '2016-05-13', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.02.050-001', 'Втулка ручки КТ31 DN200х150', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.03.015-001', 'Втулка Т-ключа DN15', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.03.040-001', 'Втулка Т-ключа DN40', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.03.080-001', 'Втулка Т-ключа DN80', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.03.200-001', 'Втулка Т-ключа DN200', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.04.020-001', 'Бобишка опорна КС341 М20', 1, '2014-09-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.05.050-001', 'Стійка БФ60 DN50', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.05.065-001', 'Стійка БФ60 DN65', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.05.080-001', 'Стійка БФ60 DN80', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.05.100-001', 'Стійка БФ60 DN100', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.05.125-001', 'Стійка БФ60 DN125', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.05.150-001', 'Стійка БФ60 DN150', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.06.050-001', 'Втулка ручки БФ60 DN50', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.06.100-001', 'Втулка ручки БФ60 DN100', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.06.125-001', 'Втулка ручки БФ60 DN125', 1, '2016-01-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.07.025-001', 'Бобишка БГК нижня DN25', 1, '2015-01-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.07.040-001', 'Бобишка БГК нижня DN40', 1, '2015-01-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.07.065-001', 'Бобишка БГК нижня DN65', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.07.125-001', 'Бобишка БГК нижня DN125', 1, '2015-01-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.07.200-001', 'Бобишка БГК нижня DN200', 1, '2015-01-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.08.025-001', 'Бобишка БГК верхня DN25', 1, '2015-01-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.08.040-001', 'Бобишка БГК верхня DN40', 1, '2015-01-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.08.065-001', 'Бобишка БГК верхня DN65', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.08.125-001', 'Бобишка БГК верхня DN125', 1, '2015-01-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.08.200-001', 'Бобишка БГК верхня DN200', 1, '2015-01-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.09.020-001', 'Бобишка КТ931 DN20х15', 1, '2014-09-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.09.040-001', 'Бобишка КТ931 DN40х32', 1, '2014-09-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.09.065-001', 'Бобишка КТ931 DN65х50', 1, '2015-10-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.09.125-001', 'Бобишка КТ931 DN125х100', 1, '2014-09-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.09.125-002', 'Бобишка КТ931 DN125х100', 1, '2014-09-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.09.200-001', 'Бобишка КТ331 DN200х150', 1, '2014-08-28', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.09.200-002', 'Бобишка КС341 DN200х150', 1, '2014-09-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.09.250-001', 'Бобишка КТ331 DN250х200', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.09.250-002', 'Бобишка КС341 DN250х200', 1, '2014-09-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.09.250-003', 'Бобишка КТ331 DN250х200', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.09.250-004', 'Бобишка КС341 DN250х200', 1, '2014-09-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.09.300-001', 'Бобишка КТ331 DN300х250', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.10.207-001', 'Заглушка до пожежної підставки 207х6', 1, '2015-01-14', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.11.025-001', 'Бобишка КТ31п1 DN25', 1, '2016-02-11', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.11.025-002', 'Бобишка КТ31п1 DN25', 1, '2016-02-11', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.11.040-001', 'Бобишка КТ31п1 DN40', 1, '2016-02-11', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.11.065-001', 'Бобишка КТ31п1 DN65', 1, '2016-02-11', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.11.125-001', 'Бобишка КТ31п1 DN125', 1, '2016-02-11', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.11.150-001', 'Бобишка КТ31п1 DN150', 1, '2016-02-11', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.11.200-001', 'Бобишка КТ31п1 DN200', 1, '2016-02-11', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.12.300-001', 'Втулка перехідна DN300', 1, '2017-03-06', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.13.015-001', 'Бобишка КТ27 DN15', 1, '2016-03-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.13.020-001', 'Бобишка КТ27 DN20', 1, '2016-03-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.13.025-001', 'Бобишка КТ27 DN25', 1, '2016-03-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.13.032-001', 'Бобишка КТ27 DN32', 1, '2016-03-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.13.040-001', 'Бобишка КТ27 DN40', 1, '2016-03-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.13.050-001', 'Бобишка КТ27 DN50', 1, '2016-03-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.13.065-001', 'Бобишка КТ27 DN65', 1, '2016-03-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.13.080-001', 'Бобишка КТ27 DN80', 1, '2016-03-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.13.100-001', 'Бобишка КТ27 DN100', 1, '2016-03-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.13.125-001', 'Бобишка КТ27 DN125', 1, '2016-03-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.13.150-001', 'Бобишка КТ27 DN150', 1, '2016-03-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '42.13.200-001', 'Бобишка КТ27 DN200', 1, '2016-03-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '43.01.048-001', 'Патрубок ЕВС №1', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '43.01.057-001', 'Патрубок ЕВС №3', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '43.02.057-001', 'Патрубок боковий ЕВС №1', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '43.02.089-001', 'Патрубок боковий ЕВС №3', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '43.03.057-001', 'Патрубок конусний ЕВС №1', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '43.03.089-001', 'Патрубок конусний ЕВС №3', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '43.04.015-001', 'Дифузор ЕВС №1', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '43.04.020-001', 'Дифузор ЕВС №2', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '43.04.025-001', 'Дифузор ЕВС №3', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '43.04.030-001', 'Дифузор ЕВС №4', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '43.05.048-001', 'Сопло ЕВС №1', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '43.05.057-001', 'Сопло ЕВС №3', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '43.06.048-001', 'Корпус сопла ЕВС №1', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '43.06.057-001', 'Корпус сопла ЕВС №3', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '43.07.018-001', 'Втулка сопла ЕВС №1', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '43.07.018-002', 'Втулка сопла ЕВС №3', 1, '2014-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '50.01.015-001', 'Втулка КТ31 DN15х10', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '50.01.020-001', 'Втулка КТ31 DN20х15', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '50.01.025-001', 'Втулка КТ31 DN25х20', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '50.01.032-001', 'Втулка КТ31 DN32х25', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '50.01.040-001', 'Втулка КТ31 DN40х32', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '50.01.050-001', 'Втулка КТ31 DN50х40', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '50.01.065-001', 'Втулка КТ31 DN65х50', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '50.01.080-001', 'Втулка КТ31 DN80х65', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '50.01.100-001', 'Втулка КТ31 DN100х80', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '50.01.125-001', 'Втулка КТ31 DN125х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '50.01.150-001', 'Втулка КТ31 DN150х125', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '50.01.200-001', 'Втулка КТ31 DN200х150', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '50.01.250-001', 'Втулка КТ31 DN250х200', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '50.01.300-001', 'Втулка КТ31 DN300х250', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '50.01.350-001', 'Втулка КТ31 DN350х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '51.01.015-001', 'Пружина КТ31 DN15х10', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '51.01.020-001', 'Пружина КТ31 DN20х15', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '51.01.025-001', 'Пружина КТ31 DN25х20', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '51.01.032-001', 'Пружина КТ31 DN32х25', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '51.01.040-001', 'Пружина КТ31 DN40х32', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '51.01.050-001', 'Пружина КТ31 DN50х40', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '51.01.065-001', 'Пружина КТ31 DN65х50', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '51.01.080-001', 'Пружина КТ31 DN80х65', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '51.01.100-001', 'Пружина КТ31 DN100х80', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '51.01.125-001', 'Пружина КТ31 DN125х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '51.01.150-001', 'Пружина КТ31 DN150х125', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '51.01.200-001', 'Пружина КТ31 DN200х150', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '51.01.250-001', 'Пружина КТ31 DN250х200', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '51.01.300-001', 'Пружина КТ31 DN300х250', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '51.01.350-001', 'Пружина КТ31 DN350х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '52.01.015-001', 'Шайба КТ31 DN15х10', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '52.01.020-001', 'Шайба КТ31 DN20х15', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '52.01.025-001', 'Шайба КТ31 DN25х20', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '52.01.032-001', 'Шайба КТ31 DN32х25', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '52.01.040-001', 'Шайба КТ31 DN40х32', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '52.01.050-001', 'Шайба КТ31 DN50х40', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '52.01.065-001', 'Шайба КТ31 DN65х50', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '52.01.080-001', 'Шайба КТ31 DN80х65', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '52.01.100-001', 'Шайба КТ31 DN100х80', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '52.01.125-001', 'Шайба КТ31 DN125х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '52.01.150-001', 'Шайба КТ31 DN150х125', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '52.01.200-001', 'Шайба КТ31 DN200х150', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '52.01.250-001', 'Шайба КТ31 DN250х200', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '52.01.300-001', 'Шайба КТ31 DN300х250', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '52.02.350-001', 'Шайба патрубка КТ31 DN350х300', 1, '2015-01-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '52.02.400-001', 'Шайба патрубка КТ31 DN400х300', 1, '2015-01-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '52.03.250-001', 'Монтажна петля КТ DN250', 1, '2017-01-20', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '52.04.200-001', 'Монтажна петля КС DN200х200', 1, '2017-01-20', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '52.04.250-001', 'Монтажна петля КС DN250х250', 1, '2017-01-20', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '53.01.004-001', 'Штифт 4х12', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '53.01.004-002', 'Штифт 4х35', 1, '2016-01-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '53.01.004-003', 'Штифт 4х40', 1, '2016-01-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '53.01.008-001', 'Штифт 8х20', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '53.01.010-001', 'Штифт 10х20', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '53.02.006-001', 'Штифт різьбовий М6', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '53.02.008-001', 'Штифт різьбовий М8', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '53.03.020-001', 'Штифт опорний М20', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '53.04.050-001', 'Упор БФ60 DN50х50', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '53.05.050-001', 'Штифт БФ60 DN50х50', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '53.05.100-001', 'Штифт БФ60 DN100х100', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '53.05.125-001', 'Штифт БФ60 DN15x125', 1, '2016-01-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '53.06.050-001', 'Заглушка БФ60 DN50х50', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '53.06.100-001', 'Заглушка БФ60 DN100х100', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '53.06.125-001', 'Заглушка БФ60 DN125x125', 1, '2016-01-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '53.06.150-001', 'Заглушка БФ60 DN150x150', 1, '2016-01-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '53.07.015-001', 'Фіксатор 11с27п DN15', 1, '2016-04-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '53.07.040-001', 'Фіксатор 11с27п DN40', 1, '2016-04-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '53.07.065-001', 'Фіксатор 11с27п DN65', 1, '2016-04-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '53.07.125-001', 'Фіксатор 11с27п DN125', 1, '2016-04-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '53.07.200-001', 'Фіксатор 11с27п DN200', 1, '2016-04-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '53.08.015-001', 'Штифт 11с31п1 DN15', 1, '2016-02-11', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '53.08.065-001', 'Штифт 11с31п1 DN65', 1, '2016-02-11', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '53.08.125-001', 'Штифт 11с31п1 DN125', 1, '2016-02-11', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.010-001', 'Шпилька кругла 10х105 (D=8,97)', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.010-002', 'Шпилька кругла 10х125 (D=8,97)', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.010-003', 'Шпилька кругла 10х100 (D=8,97)', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.012-001', 'Шпилька кругла 12х100 (D=10,83)', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.012-002', 'Шпилька кругла 12х105 (D=10,83)', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.012-003', 'Шпилька кругла 12х115 (D=10,83)', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.016-001', 'Шпилька кругла 16х110 (D=14,66)', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.016-002', 'Шпилька кругла 16х133 (D=14,66)', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.016-003', 'Шпилька кругла 16х143 (D=14,66)', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.016-004', 'Шпилька кругла 16х170 (D=14,66)', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.016-005', 'Шпилька кругла 16х185 (D=14,66)', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.016-006', 'Шпилька кругла 16х210 (D=14,66)', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.016-007', 'Шпилька кругла 16х113 (D=14,66)', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.016-008', 'Шпилька кругла 16х58 (D=14,66)', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.016-014', 'Шпилька кругла 16х225', 1, '2015-12-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.020-001', 'Шпилька кругла 20х244 (D=18,34)', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.020-002', 'Шпилька кругла 20х250 (D=18,34)', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.020-007', 'Шпилька кругла 20х80 (D=18,34)', 1, '2014-09-11', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.024-001', 'Шпилька кругла 24х345 (D=22)', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.027-001', 'Шпилька кругла 27х397 (D=25)', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.01.027-002', 'Шпилька кругла 27х465 (D=25)', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.02.010-001', 'Шпилька шестигранна 10х58 (S=10)', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.02.010-002', 'Шпилька шестигранна 10х65 (S=10)', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.02.010-003', 'Шпилька шестигранна 10х75 (S=10)', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.02.010-004', 'Шпилька шестигранна 10х86 (S=10)', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.02.010-005', 'Шпилька шестигранна 10х88 (S=10)', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.02.010-006', 'Шпилька шестигранна 10х110 (S=10)', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.02.012-001', 'Шпилька шестигранна 12х58 (S=12)', 1, '2016-03-04', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.02.012-002', 'Шпилька шестигранна 12х65 (S=12)', 1, '2016-03-04', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.02.012-003', 'Шпилька шестигранна 12х75 (S=12)', 1, '2016-03-04', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.02.016-001', 'Шпилька шестигранна 16х86 (S=15)', 1, '2016-03-04', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.02.016-002', 'Шпилька шестигранна 16х88 (S=15)', 1, '2016-03-04', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.02.016-003', 'Шпилька шестигранна 16х116 (S=15)', 1, '2016-03-04', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.02.016-004', 'Шпилька шестигранна 16х163 (S=15)', 1, '2016-03-04', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.02.016-005', 'Шпилька шестигранна 16х110 (S=15)', 1, '2016-03-04', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.02.020-001', 'Шпилька шестигранна 20х220 (S=19)', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '54.03.008-001', 'Шпилька спеціальна М8', 1, '2015-10-31', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.01.015-001', 'Вороток Т-ключа DN15', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.01.040-001', 'Вороток Т-ключа DN40', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.01.080-001', 'Вороток Т-ключа DN80', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.01.200-001', 'Вороток Т-ключа DN200', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.02.015-001', 'Труба Т-ключа DN15', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.02.040-001', 'Труба Т-ключа DN40', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.02.080-001', 'Труба Т-ключа DN80', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.02.200-001', 'Труба Т-ключа DN200', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.23.025-001', 'Полоса ручки 11с31п1 DN25', 1, '2016-02-11', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.23.040-001', 'Полоса ручки 11с31п1 DN40', 1, '2016-02-11', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.23.065-001', 'Полоса ручки 11с31п1 DN65', 1, '2016-02-11', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.23.100-001', 'Полоса ручки 11с31п1 DN100', 1, '2016-02-11', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.23.125-001', 'Полоса ручки 11с31п1 DN125', 1, '2016-02-11', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.23.200-001', 'Полоса ручки 11с31п1 DN200', 1, '2016-02-11', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.27.015-001', 'Полоса ручки КТ27 DN15', 1, '2016-04-18', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.27.025-001', 'Полоса ручки КТ27 DN25', 1, '2016-04-20', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.27.040-001', 'Полоса ручки КТ27 DN40', 1, '2016-04-20', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.27.065-001', 'Полоса ручки КТ27 DN65', 1, '2016-04-20', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.27.100-001', 'Полоса ручки КТ27 DN100', 1, '2016-04-20', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.31.015-001', 'Полоса ручки КТ31 DN15х10', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.31.025-001', 'Полоса ручки КТ31 DN25х20', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.31.040-001', 'Полоса ручки КТ31 DN40х32', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.31.050-001', 'Полоса ручки КТ31 DN50х40', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.31.065-001', 'Полоса ручки КТ31 DN65х50', 1, '2015-10-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.31.100-001', 'Полоса ручки КТ31 DN100х80', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '_55.31.125-001', 'Полоса ручки КТ31 DN125х100', 1, '2015-12-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.31.125-001', 'Труба ручки КТ31 DN125', 1, '2015-12-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.31.200-001', 'Труба ручки КТ31 DN200х150', 1, '2016-11-03', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.51.015-001', 'Полоса ручки КМ51 DN15х15', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.51.020-001', 'Полоса ручки КМ51 DN20х20', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.51.032-001', 'Полоса ручки КМ51 DN32х32', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.51.040-001', 'Полоса ручки КМ51 DN40х40', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.51.065-001', 'Полоса ручки КМ51 DN65х65', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.52.100-001', 'Полоса ручки КТ52 DN100x80', 1, '2015-12-08', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.60.050-001', 'Полоса ручки БФ60 DN50', 1, '2015-10-31', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '55.60.125-001', 'Полоса ручки БФ60 DN125', 1, '2016-01-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '56.01.015-001', 'Кришка КМ51 DN15х15', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '56.01.020-001', 'Кришка КМ51 DN20х20', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '56.01.025-001', 'Кришка КМ51 DN25х25', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '56.01.032-001', 'Кришка КМ51 DN32х32', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '56.01.040-001', 'Кришка КМ51 DN40х40', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '56.01.050-001', 'Кришка КМ51 DN50х50', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '56.01.065-001', 'Кришка КМ51 DN65х65', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '56.01.080-001', 'Кришка КМ51 DN80х80', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '56.01.100-001', 'Кришка КМ51 DN100х100', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.01.015-001', 'Куля КТ31 DN15х10', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.01.020-001', 'Куля КТ31 DN20х15', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.01.025-001', 'Куля КТ31 DN25х20', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.01.032-001', 'Куля КТ31 DN32х25', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.01.040-001', 'Куля КТ31 DN40х32', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.01.040-002', 'Куля КС41 DN40х40', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.01.050-001', 'Куля КТ31 DN50х40', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.01.050-002', 'Куля КТ22 DN50x40', 1, '2015-11-24', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.01.065-001', 'Куля КС41 DN65х50', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.01.065-002', 'Куля КТ31 DN65х50', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.01.080-001', 'Куля КТ31 DN80х65', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.01.080-002', 'Куля КМ51 DN80х80', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.01.100-001', 'Куля КТ31 DN100х80', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.01.100-002', 'Куля КС41 DN100х80', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.01.100-003', 'Куля КМ51 DN100х100', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.01.125-001', 'Куля КТ31 DN125х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.01.125-002', 'Куля КС41 DN150х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.01.150-001', 'Куля КТ31 DN150х125', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.01.200-001', 'Куля КТ31 DN200х150', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.01.250-001', 'Куля КТ31 DN250х200', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.01.250-002', 'Куля КТ41 DN250х200', 1, '2014-09-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.01.300-001', 'Куля КТ31 DN300х250', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.01.300-002', 'Куля КС41 DN300х250', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.01.350-001', 'Куля КТ31 DN350х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.02.050-001', 'Диск БФ60 DN50х50', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.02.065-001', 'Диск БФ60 DN65х65', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.02.080-001', 'Диск БФ60 DN80х80', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.02.100-001', 'Диск БФ60 DN100х100', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.02.125-001', 'Диск БФ60 DN125х125', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '60.02.150-001', 'Диск БФ60 DN150х150', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.01.015-001', 'Шток КТ31 DN15х10', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.01.015-002', 'Шток КМ51 DN15х15', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.01.015-003', 'Шток КТ52 DN15х10', 1, '2016-12-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.01.020-001', 'Шток КТ31 DN20х15', 1, '2014-08-28', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.01.020-002', 'Шток КМ51 DN20х20', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.01.025-001', 'Шток КТ31 DN25х20', 1, '2014-08-28', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.01.025-002', 'Шток КМ51 DN25х25', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.01.025-100', 'Шток КТ031 DN25', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.01.032-001', 'Шток КМ51 DN32х32', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.01.040-001', 'Шток КМ51 DN40х40', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.01.050-001', 'Шток КТ31 DN50х40', 1, '2014-08-28', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.01.050-100', 'Шток КТ031 DN50', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.01.065-001', 'Шток КТ31 DN65х50', 1, '2016-07-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.01.065-002', 'Шток КМ51 DN65х65', 1, '2015-10-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.01.065-100', 'Шток КТ031 DN65', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.01.080-100', 'Шток КТ031 DN80', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.01.100-001', 'Шток КМ51 DN100х100', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.01.125-001', 'Шток КТ31 DN125х100', 1, '2014-08-28', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.01.125-100', 'Шток КТ031 DN125', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.01.200-001', 'Шток КТ31 DN200х150', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.02.050-001', 'Шток БФ60 DN50х50', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.02.065-001', 'Шток БФ60 DN65х65', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.02.080-001', 'Шток БФ60 DN80х80', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.02.100-001', 'Шток БФ60 DN100х100', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.02.125-001', 'Шток БФ60 DN125х125', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.02.150-001', 'Шток БФ60 DN150х150', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.03.025-001', 'Шток БГК DN25', 1, '2016-10-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.03.040-001', 'Шток БГК DN40', 1, '2015-01-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.03.065-001', 'Шток БГК DN65', 1, '2016-12-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.03.125-001', 'Шток БГК DN125', 1, '2015-01-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.03.200-001', 'Шток БГК DN200', 1, '2015-01-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.04.025-001', 'Шток ПК перехідний DN25', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.04.032-001', 'Шток ПК перехідний DN32', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.04.040-001', 'Шток ПК перехідний DN40', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.04.050-001', 'Шток ПК перехідний DN50', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.04.065-001', 'Шток ПК перехідний DN65', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.04.080-001', 'Шток ПК перехідний DN80', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.04.100-001', 'Шток ПК перехідний DN100', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.04.125-001', 'Шток ПК перехідний DN125', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.04.150-001', 'Шток ПК перехідний DN150', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.04.200-001', 'Шток ПК перехідний DN200', 1, '2015-11-02', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.05.025-001', 'Шток 11с31п1 DN25', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.05.050-001', 'Шток 11с31п1 DN50', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.05.065-001', 'Шток 11с31п1 DN65', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.05.125-001', 'Шток 11с31п1 DN125', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.05.200-001', 'Шток 11с31п1 DN200', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.06.015-001', 'Шток КТ27 DN15', 1, '2016-03-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.06.020-001', 'Шток КТ27 DN20', 1, '2016-03-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.06.025-001', 'Шток КТ27 DN25', 1, '2016-03-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.06.040-001', 'Шток КТ27 DN40', 1, '2016-03-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.06.050-001', 'Шток КТ27 DN50', 1, '2016-03-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.06.065-001', 'Шток КТ27 DN65', 1, '2016-03-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.06.125-001', 'Шток КТ27 DN125', 1, '2016-03-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.06.200-001', 'Шток КТ27 DN200', 1, '2016-03-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.07.300-001', 'Шток пеерхідний DN300', 1, '2017-03-06', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.09.020-001', 'Шток КТ931 DN32х25', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.09.032-001', 'Шток КС942 DN32х32', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.09.050-001', 'Шток КТ931 DN50х40', 1, '2016-10-06', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.09.065-001', 'Шток КТ931 DN65х50', 1, '2015-10-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.09.125-001', 'Шток КТ931 DN125х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.09.200-001', 'Шток КТ931 DN200х150', 1, '2014-09-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.09.200-002', 'Шток КТ342 DN200х150', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.09.250-001', 'Шток КТ331 DN250х200', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.09.250-002', 'Шток КТ341 DN250х200', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.09.300-001', 'Шток КТ331 DN300х250', 1, '2016-10-19', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '61.09.350-001', 'Шток КС941 DN350x300', 1, '2015-10-30', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.01.015-001', 'Сідло КТ31 DN15х10', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.01.015-002', 'Сідло КМ51 DN15х15', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.01.020-001', 'Сідло КТ31 DN20х15', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.01.025-001', 'Сідло КТ31 DN25х20', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.01.032-001', 'Сідло КТ31 DN32х25', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.01.032-002', 'Сідло КТ52 DN32х25', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.01.040-001', 'Сідло КТ31 DN40х32', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.01.040-002', 'Сідло КТ52 DN40х32', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.01.050-001', 'Сідло КТ31 DN50х40', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.01.065-001', 'Сідло КТ31 DN65х50', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.01.065-002', 'Сідло КТ52 DN65х50', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.01.080-001', 'Сідло КТ31 DN80х65', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.01.100-001', 'Сідло КТ31 DN100х80', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.01.100-002', 'Сідло КТ52 DN100х80', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.01.100-003', 'Сідло КМ51 DN100х100', 1, '2016-12-23', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.01.125-001', 'Сідло КТ31 DN125х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.01.150-001', 'Сідло КТ31 DN150х125', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.01.200-001', 'Сідло КТ31 DN200х150', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.01.250-001', 'Сідло КТ31 DN250х200', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.01.300-001', 'Сідло КТ31 DN300х250', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.01.350-001', 'Сідло КТ31 DN350х300', 1, '2016-10-01', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.02.025-001', 'Сідло КС41 DN25х25', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.02.032-001', 'Сідло КС41 DN32х32', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.02.040-001', 'Сідло КС41 DN40х40', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.02.065-001', 'Сідло КС41 DN50х50', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.02.065-002', 'Сідло КС41 DN65х65', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.02.100-001', 'Сідло КС41 DN80х80', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.02.125-001', 'Сідло КС41 DN125х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.02.125-002', 'Сідло КС41 DN125x125', 1, '2015-12-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.02.200-001', 'Сідло КС41 DN200х150', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.02.250-001', 'Сідло КС41 DN250х200', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.02.300-001', 'Сідло КС41 DN250х250', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.03.025-001', 'Ущільнення корпуса КС41 DN25х25', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.03.032-001', 'Ущільнення корпуса КС41 DN32х32', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.03.040-001', 'Ущільнення корпуса КС41 DN40х40', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.03.065-001', 'Ущільнення корпуса КС41 DN65х50', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.03.065-002', 'Ущільнення корпуса КС41 DN65х65', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.03.100-001', 'Ущільнення корпуса КС41 DN100х80', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.03.125-001', 'Ущільнення корпуса КС41 DN150х100', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.03.125-003', 'Ущільнення корпуса КС41 DN125x125', 1, '2015-12-21', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.03.200-001', 'Ущільнення корпуса КС41 DN200х150', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.03.250-001', 'Ущільнення корпуса КС41 DN250х200', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.03.300-001', 'Ущільнення корпуса КС41 DN300х250', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.03.350-001', 'Ущільнення корпуса КС41 DN350х300', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.04.015-001', 'Ущільнення штока КТ31 DN15х10', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.04.020-001', 'Ущільнення штока КТ31 DN20х15', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.04.025-001', 'Ущільнення штока КТ31п1 DN25', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.04.065-001', 'Ущільнення штока КТ31 DN65х50', 1, '2015-10-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.04.065-002', 'Ущільнення штока КТ31п1 DN65', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.04.125-001', 'Ущільнення штока КТ31 DN150х125', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.04.125-002', 'Ущільнення штока КТ31п1 DN125', 1, '2016-02-12', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.04.200-001', 'Ущільнення штока КТ31 DN200х150', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.04.250-001', 'Ущільнення штока КТ31 DN250х200', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.04.300-001', 'Ущільнення штока КТ31 DN300х250', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.05.015-001', 'Ущільнення кришки КМ51 DN15х15', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.05.020-001', 'Ущільнення кришки КМ51 DN20х20', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.05.065-001', 'Ущільнення кришки КМ51 DN65х65', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.05.080-001', 'Ущільнення кришки КМ51 DN80х80', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.05.100-001', 'Ущільнення кришки КМ51 DN100х100', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.06.015-001', 'Ущільнення фланця КМ51 DN15х15', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.07.050-001', 'Сальник нижній БФ60 DN50х50', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.07.100-001', 'Сальник нижній БФ60 DN100х100', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.07.125-001', 'Сальник нижній БФ60 DN125x125', 1, '2016-01-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.08.050-001', 'Сальник верхній БФ60 DN50х50', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.08.100-001', 'Сальник верхній БФ60 DN100х100', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '70.08.125-001', 'Сальник верхній БФ60 DN125x125', 1, '2016-01-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.01.020-001', 'Насадка ручки КТ31 DN25х20 жовта', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.01.020-002', 'Насадка ручки КТ31 DN15х10 жовта', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.01.020-101', 'Насадка ручки КТ21 DN25x20 синя', 1, '2016-10-06', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.01.020-201', 'Насадка ручки КТ27 DN20x15 біла', 1, '2016-10-06', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.01.025-001', 'Насадка ручки КТ31 DN80 жовта', 1, '2016-10-06', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.01.025-101', 'Насадка ручки КТ21 DN80 синя', 1, '2016-10-06', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.01.030-001', 'Насадка ручки КТ31 DN125 жовта', 1, '2016-10-06', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.01.030-101', 'Насадка ручки КТ21 DN125 синя', 1, '2016-10-06', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.01.030-201', 'Насадка ручки КТ27 DN40 біла', 1, '2016-10-06', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.01.040-001', 'Насадка ручки КМ51 DN65 жовта ', 1, '2016-10-06', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.01.040-201', 'Насадка ручки КТ27 DN65 біла', 1, '2016-10-06', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.02.015-001', 'Заглушка патрубка DN15 жовта', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.02.015-002', 'Заглушка патрубка DN15 синя', 1, '2015-12-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.02.020-001', 'Заглушка патрубка DN20 жовта', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.02.020-002', 'Заглушка патрубка DN20 синя', 1, '2015-12-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.02.025-001', 'Заглушка патрубка DN25 жовта', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.02.025-002', 'Заглушка патрубка DN25 синя', 1, '2015-12-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.02.032-001', 'Заглушка патрубка DN32 жовта', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.02.032-002', 'Заглушка патрубка DN32 синя', 1, '2015-12-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.02.040-001', 'Заглушка патрубка DN40 жовта', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.02.040-002', 'Заглушка патрубка DN40 синя', 1, '2015-12-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.02.050-001', 'Заглушка патрубка DN50 жовта', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.02.050-002', 'Заглушка патрубка DN50 синя', 1, '2015-12-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.02.065-001', 'Заглушка патрубка DN65 жовта', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.02.065-002', 'Заглушка патрубка DN65 синя', 1, '2015-12-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.02.080-001', 'Заглушка патрубка DN80 жовта', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.02.080-002', 'Заглушка патрубка DN80 синя', 1, '2015-12-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.02.100-001', 'Заглушка патрубка DN100 жовта', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.02.100-002', 'Заглушка патрубка DN100 синя', 1, '2015-12-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.03.025-001', 'Заглушка фланця DN25 жовта', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.03.032-001', 'Заглушка фланця DN32 жовта', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.03.040-001', 'Заглушка фланця DN40 жовта', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.03.050-001', 'Заглушка фланця DN50 жовта', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.03.065-001', 'Заглушка фланця DN65 жовта', 1, '2016-08-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.03.080-001', 'Заглушка фланця DN80 жовта', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.03.150-001', 'Заглушка фланця DN150 жовта', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.03.150-002', 'Заглушка фланця DN150 жовта', 1, '2016-08-16', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.04.050-001', 'Патрубок ПЕ SDR11 БГК DN50', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.04.080-001', 'Патрубок ПЕ SDR11 БГК DN80', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '71.04.100-001', 'Патрубок ПЕ SDR11 БГК DN100', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '72.01.009-001', 'Гумове кільце 09,0-14,0-25', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '72.01.012-001', 'Гумове кільце 12,6-17,6-25', 1, '2016-02-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '72.01.013-001', 'Гумове кільце 13,0-17,0-25', 1, '2015-04-17', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '72.01.015-001', 'Гумове кільце 15,0-20,0-30', 1, '2015-04-17', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '72.01.016-001', 'Гумове кільце 16,0-22,0-30', 1, '2014-08-29', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '72.01.020-001', 'Гумове кільце 20,8-26,8-30', 1, '2015-11-10', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '72.01.028-001', 'Гумове кільце 28,5-34,5-30', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '72.01.045-001', 'Гумове кільце 45,5-51,5-30', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '72.01.057-001', 'Гумове кільце 57,5-63,5-30', 1, '2014-08-27', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '72.02.350-001', 'Гумове ущільнення DN350', 1, '2015-03-05', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '72.03.050-001', 'Втулка ебонітова БФ60 DN50', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '72.03.065-001', 'Втулка ебонітова БФ60 DN65', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '72.03.080-001', 'Втулка ебонітова БФ60 DN80', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '72.03.100-001', 'Втулка ебонітова БФ60 DN100', 1, '2015-04-22', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '72.03.125-001', 'Втулка ебонітова БФ60 DN125', 1, '2016-01-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  PERFORM inventory.init(
    (NULL, NULL, '72.03.150-001', 'Втулка ебонітова БФ60 DN150', 1, '2016-01-26', 'pc', 'PROPOSED', 'INVENTORY')::common.inventory_head, 
    ARRAY[('pc', 'pc', 1.0000)]::common.unit_conversion_type[], 
    ARRAY[('STORABLE'), ('PRODUCIBLE'), ('CONSUMABLE')]::common.inventory_kind[]
  );
  -- consumable --
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION tests._load_inventory()
  OWNER TO postgres;