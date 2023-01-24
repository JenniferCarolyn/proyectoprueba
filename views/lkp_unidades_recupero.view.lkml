view: lkp_unidades_recupero {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_unidades_recupero`
    ;;

  dimension: unidad_recupero {
    type: string
    sql: ${TABLE}.unidad_recupero ;;
  }

  dimension: unidad_recupero_key {
    hidden: yes
    type: number
    sql: ${TABLE}.unidad_recupero_key ;;
  }

  dimension: unidad_recupero_nombre {
    type: string
    sql: ${TABLE}.unidad_recupero_nombre ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
