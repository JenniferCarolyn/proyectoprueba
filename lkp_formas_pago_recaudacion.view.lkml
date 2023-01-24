view: lkp_formas_pago_recaudacion {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_formas_pago_recaudacion`
    ;;

  dimension: agrupacion_forma_pago_recaudacion {
    type: string
    sql: ${TABLE}.agrupacion_forma_pago_recaudacion ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension: forma_pago_recaudacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.forma_pago_recaudacion_key ;;
  }

  dimension: forma_pago_recaudacion_source {
    type: string
    sql: ${TABLE}.forma_pago_recaudacion_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
