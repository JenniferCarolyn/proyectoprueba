view: lkp_estados_td {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_estados_td`
    ;;

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension: estado_td_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_td_key ;;
  }

  dimension: estado_td_source {
    type: string
    sql: ${TABLE}.estado_td_source ;;
  }

  dimension: motivo {
    type: string
    sql: ${TABLE}.motivo ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
