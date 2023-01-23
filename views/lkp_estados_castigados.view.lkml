view: lkp_estados_castigados {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_estados_castigados`
    ;;

  dimension: estado_castigado {
    type: string
    sql: ${TABLE}.estado_castigado ;;
  }

  dimension: estado_castigado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_castigado_key ;;
  }

  dimension: estado_castigado_nombre {
    type: string
    sql: ${TABLE}.estado_castigado_nombre ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
