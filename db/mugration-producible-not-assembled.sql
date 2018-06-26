SELECT 
  'PERFORM inventory.init((NULL, NULL,' as c1,
  substance.code, 
  substance.name, 
  1 as c2,
  substance.log_editdate::date,
  measure_base.symbol_iso as main_measure,  
  '''PROPOSED'', ''INVENTORY'')::common.inventory_head,' as c3, 
  'ARRAY[',
  textcat_all('(''' || measure_base.symbol_iso || ''', ''' || measure.symbol_iso || ''', ' || measure_coeff.coeff::numeric(16,4) || ')'),
  ']::common.unit_conversion_type[],',
  'ARRAY[(''STORABLE''), (''PRODUCIBLE''), (''SALABLE'')]::common.inventory_kind[]);'
FROM 
  public.measure_coeff, 
  public.measure_base, 
  public.measure, 
  public.substance
WHERE 
  measure_base.id = substance.measure_base_id AND
  measure.id = measure_coeff.measure_id AND
  substance.id = measure_coeff.substance_id AND
  substance.is_process_in = false AND 
  substance.is_process_out = true AND 
  substance.is_warehouse_item = true AND 
  (substance.code NOT LIKE '1%' AND substance.code NOT LIKE '8%') AND
  measure_coeff.coeff <> 1000
GROUP BY
  substance.id,
  measure_base.symbol_iso
order by code asc
