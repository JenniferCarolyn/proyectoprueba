view: lkp_horas {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_horas`
    ;;

  dimension: decena_minutos {
    type: number
    sql: ${TABLE}.decena_minutos ;;
  }

  dimension: hora {
    type: number
    sql: ${TABLE}.hora ;;
  }

  dimension: hora_key {
    hidden: yes
    type: number
    sql: ${TABLE}.hora_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
