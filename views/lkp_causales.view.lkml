view: lkp_causales {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_causales`
    ;;

  dimension: agrupacion_1 {
    type: string
    sql: ${TABLE}.agrupacion_1 ;;
  }

  dimension: agrupacion_2 {
    type: string
    sql: ${TABLE}.agrupacion_2 ;;
  }

  dimension: agrupacion_3 {
    type: string
    sql: ${TABLE}.agrupacion_3 ;;
  }

  dimension: agrupacion_4 {
    type: string
    sql: ${TABLE}.agrupacion_4 ;;
  }

  dimension: agrupacion_cash_nivel_1 {
    type: string
    sql: ${TABLE}.agrupacion_cash_nivel_1 ;;
  }

  dimension: agrupacion_cash_nivel_2 {
    type: string
    sql: ${TABLE}.agrupacion_cash_nivel_2 ;;
  }

  dimension: agrupacion_cash_nivel_3 {
    type: string
    sql: ${TABLE}.agrupacion_cash_nivel_3 ;;
  }

  dimension: causal {
    type: number
    sql: ${TABLE}.causal ;;
  }

  dimension: causal_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.causal_key ;;
  }

  dimension: descripcion_causal {
    type: string
    sql: ${TABLE}.descripcion_causal ;;
  }

  dimension: subtema_1 {
    type: string
    sql: ${TABLE}.subtema_1 ;;
  }

  dimension: subtema_2 {
    type: string
    sql: ${TABLE}.subtema_2 ;;
  }

  dimension: tema_principal {
    type: string
    sql: ${TABLE}.tema_principal ;;
  }

  dimension: tipo_transaccion {
    type: number
    sql: ${TABLE}.tipo_transaccion ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
