view: lkp_situaciones_deudor_bcra {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_situaciones_deudor_bcra`
    ;;

  dimension: situacion {
    type: string
    sql: ${TABLE}.situacion ;;
  }

  dimension: situacion_bcra {
    type: string
    sql: ${TABLE}.situacion_bcra ;;
  }

  dimension: situacion_deudor_bcra_key {
    hidden: yes
    type: number
    sql: ${TABLE}.situacion_deudor_bcra_key ;;
  }

  dimension: situacion_deudor_bcra_source {
    type: number
    sql: ${TABLE}.situacion_deudor_bcra_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
