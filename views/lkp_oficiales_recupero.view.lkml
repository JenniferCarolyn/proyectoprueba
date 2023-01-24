view: lkp_oficiales_recupero {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_oficiales_recupero`
    ;;

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: oficial_recupero {
    type: string
    sql: ${TABLE}.oficial_recupero ;;
  }

  dimension: oficial_recupero_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_recupero_key ;;
  }

  dimension: oficial_recupero_nombre {
    type: string
    sql: ${TABLE}.oficial_recupero_nombre ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
