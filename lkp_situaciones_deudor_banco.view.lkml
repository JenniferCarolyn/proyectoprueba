view: lkp_situaciones_deudor_banco {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_situaciones_deudor_banco`
    ;;

  dimension: clasificacion_situacion {
    type: string
    sql: ${TABLE}.clasificacion_situacion ;;
  }

  dimension: situacion {
    type: string
    sql: ${TABLE}.situacion ;;
  }

  dimension: situacion_bcra {
    type: string
    sql: ${TABLE}.situacion_bcra ;;
  }

  dimension: situacion_deudor_banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.situacion_deudor_banco_key ;;
  }

  dimension: situacion_deudor_banco_source {
    type: number
    sql: ${TABLE}.situacion_deudor_banco_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
