view: lkp_origenes_captura {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_origenes_captura`
    ;;

  dimension: origen_captura_agrupamiento {
    type: string
    sql: ${TABLE}.origen_captura_agrupamiento ;;
  }

  dimension: origen_captura_descripcion {
    type: string
    sql: ${TABLE}.origen_captura_descripcion ;;
  }

  dimension: origen_captura_key {
    hidden: yes
    type: number
    sql: ${TABLE}.origen_captura_key ;;
  }

  dimension: origen_captura_source {
    type: string
    sql: ${TABLE}.origen_captura_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
