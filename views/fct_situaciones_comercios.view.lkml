view: fct_situaciones_comercios {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.fct_situaciones_comercios`
    ;;

  dimension: arancel_banco_pagador {
    type: number
    sql: ${TABLE}.arancel_banco_pagador ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cantidad_consumos_tc_banco {
    type: number
    sql: ${TABLE}.cantidad_consumos_tc_banco ;;
  }

  dimension: cantidad_liquidaciones {
    type: number
    sql: ${TABLE}.cantidad_liquidaciones ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: comercio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.comercio_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: importe_bruto_liquidado {
    type: number
    sql: ${TABLE}.importe_bruto_liquidado ;;
  }

  dimension: importe_consumos_tc_banco {
    type: number
    sql: ${TABLE}.importe_consumos_tc_banco ;;
  }

  dimension: marca_key {
    hidden: yes
    type: number
    sql: ${TABLE}.marca_key ;;
  }

  dimension: mb_banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.mb_banco_key ;;
  }

  dimension: nir {
    type: number
    sql: ${TABLE}.nir ;;
  }

  dimension: rubro_key {
    hidden: yes
    type: number
    sql: ${TABLE}.rubro_key ;;
  }

  dimension: sucursal_comercio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_comercio_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
