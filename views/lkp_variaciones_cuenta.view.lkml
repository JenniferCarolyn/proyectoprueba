view: lkp_variaciones_cuenta {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_variaciones_cuenta`
    ;;

  dimension: variacion {
    type: string
    sql: ${TABLE}.variacion ;;
  }

  dimension: variacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.variacion_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
