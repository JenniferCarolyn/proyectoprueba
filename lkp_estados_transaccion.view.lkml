view: lkp_estados_transaccion {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_estados_transaccion`
    ;;

  dimension: estado_transaccion {
    type: string
    sql: ${TABLE}.estado_transaccion ;;
  }

  dimension: estado_transaccion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_transaccion_key ;;
  }

  dimension: estado_transaccion_source {
    type: string
    sql: ${TABLE}.estado_transaccion_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
