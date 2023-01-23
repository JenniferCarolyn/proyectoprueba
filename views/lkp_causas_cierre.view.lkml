view: lkp_causas_cierre {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_causas_cierre`
    ;;

  dimension: causa_cierre_key {
    hidden: yes
    type: number
    sql: ${TABLE}.causa_cierre_key ;;
  }

  dimension: causa_cierre_source {
    type: number
    sql: ${TABLE}.causa_cierre_source ;;
  }

  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension: origen {
    type: number
    sql: ${TABLE}.origen ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
