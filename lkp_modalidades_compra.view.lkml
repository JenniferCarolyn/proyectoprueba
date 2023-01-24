view: lkp_modalidades_compra {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_modalidades_compra`
    ;;

  dimension: cantidad_cuotas {
    type: number
    sql: ${TABLE}.cantidad_cuotas ;;
  }

  dimension: modalidad_compra {
    type: string
    sql: ${TABLE}.modalidad_compra ;;
  }

  dimension: modalidad_compra_key {
    hidden: yes
    type: number
    sql: ${TABLE}.modalidad_compra_key ;;
  }

  dimension: modalidad_compra_source {
    type: string
    sql: ${TABLE}.modalidad_compra_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
