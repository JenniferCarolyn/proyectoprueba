view: lkp_estados_tarjetas {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_estados_tarjetas`
    ;;

  dimension: estado_tarjeta {
    type: string
    sql: ${TABLE}.estado_tarjeta ;;
  }

  dimension: estado_tarjeta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_tarjeta_key ;;
  }

  dimension: estado_tarjeta_source {
    type: string
    sql: ${TABLE}.estado_tarjeta_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
