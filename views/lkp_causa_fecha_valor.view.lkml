view: lkp_causa_fecha_valor {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_causa_fecha_valor`
    ;;

  dimension: causa_fecha_valor {
    type: string
    sql: ${TABLE}.causa_fecha_valor ;;
  }

  dimension: causa_fecha_valor_key {
    hidden: yes
    type: number
    sql: ${TABLE}.causa_fecha_valor_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
