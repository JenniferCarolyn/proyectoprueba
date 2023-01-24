view: lkp_modelos_liquidacion_tc {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_modelos_liquidacion_tc`
    ;;

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: clase_producto {
    type: string
    sql: ${TABLE}.clase_producto ;;
  }

  dimension: estado_habilitacion {
    type: string
    sql: ${TABLE}.estado_habilitacion ;;
  }

  dimension: modelo_liquidacion_tc {
    type: string
    sql: ${TABLE}.modelo_liquidacion_tc ;;
  }

  dimension: modelo_liquidacion_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.modelo_liquidacion_tc_key ;;
  }

  dimension: modelo_liquidacion_tc_source {
    type: string
    sql: ${TABLE}.modelo_liquidacion_tc_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
