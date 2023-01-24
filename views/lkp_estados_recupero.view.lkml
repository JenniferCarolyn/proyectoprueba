view: lkp_estados_recupero {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_estados_recupero`
    ;;

  dimension: estado_recupero {
    type: string
    sql: ${TABLE}.estado_recupero ;;
  }

  dimension: estado_recupero_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_recupero_key ;;
  }

  dimension: estado_recupero_nombre {
    type: string
    sql: ${TABLE}.estado_recupero_nombre ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
