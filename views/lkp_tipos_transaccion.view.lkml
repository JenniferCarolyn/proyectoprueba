view: lkp_tipos_transaccion {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_tipos_transaccion`
    ;;

  dimension: tipo_transaccion {
    type: string
    sql: ${TABLE}.tipo_transaccion ;;
  }

  dimension: tipo_transaccion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_transaccion_key ;;
  }

  dimension: tipo_transaccion_source {
    type: string
    sql: ${TABLE}.tipo_transaccion_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
