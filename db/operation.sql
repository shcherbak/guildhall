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
