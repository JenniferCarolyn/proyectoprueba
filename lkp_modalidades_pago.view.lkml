view: lkp_modalidades_pago {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_modalidades_pago`
    ;;

  dimension: modalidad_pago {
    type: string
    sql: ${TABLE}.modalidad_pago ;;
  }

  dimension: modalidad_pago_key {
    hidden: yes
    type: number
    sql: ${TABLE}.modalidad_pago_key ;;
  }

  dimension: modalidad_pago_source {
    type: number
    sql: ${TABLE}.modalidad_pago_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
