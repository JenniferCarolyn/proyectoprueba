connection: "gcp-dw-desa"

include: "/views/**/*.view"
include: "/views_agregadas/**/*.view"
include: "/views_pdt/**/*.view"

datagroup: plan_sueldo_datagroup {
  sql_trigger: SELECT MAX(fecha_key) FROM fct_situaciones_indicadores_plan_sueldos;;
  max_cache_age: "24 hour"
}

datagroup: pago_a_proveedores_datagroup {
  sql_trigger: SELECT MAX(fecha_pago) FROM fct_ordenes_pago_proveedores;;
  max_cache_age: "24 hour"
}

datagroup: recaudaciones_datagroup {
  sql_trigger: SELECT MAX(fecha_pago_key) FROM fct_recaudaciones;;
  max_cache_age: "24 hour"
}

datagroup: recaudaciones_acreditaciones_dia_datagroup {
  sql_trigger: SELECT MAX(fecha_pago_key) FROM fct_recaudaciones;;
  max_cache_age: "24 hour"
}

datagroup: situaciones_convenio_datagroup {
  sql_trigger: SELECT MAX(fecha_key) FROM fct_situaciones_convenios;;
  max_cache_age: "24 hour"
}

datagroup: trx_causal_datagroup {
  sql_trigger: SELECT MAX(fecha_key) FROM fct_transacciones;;
  max_cache_age: "24 hour"
}

datagroup: valores_al_cobro_datagroup {
  sql_trigger: SELECT MAX(fecha_cancelacion_key) FROM fct_seguimiento_cheques;;
  max_cache_age: "24 hour"
}

explore: cash_management {
  query: prueba_quick_start {
    dimensions: [lkp_fechas.periodo, cash_management.grupo]
    measures: [cash_management.sum_importe]
    pivots: [grupo]
    sorts: [lkp_fechas.periodo: asc]
    limit: 500
  }
  join: lkp_fechas {
    type: left_outer
    sql_on: ${cash_management.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
}
