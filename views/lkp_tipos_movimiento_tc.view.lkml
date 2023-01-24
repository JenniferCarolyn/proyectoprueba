view: lkp_tipos_movimiento_tc {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_tipos_movimiento_tc`
    ;;

  dimension: ajuste {
    type: string
    sql: ${TABLE}.ajuste ;;
  }

  dimension: grupo_movimiento_tc {
    type: string
    sql: ${TABLE}.grupo_movimiento_tc ;;
  }

  dimension: tipo_movimiento_tc {
    type: string
    sql: ${TABLE}.tipo_movimiento_tc ;;
  }

  dimension: tipo_movimiento_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_movimiento_tc_key ;;
  }

  dimension: tipo_movimiento_tc_source {
    type: string
    sql: ${TABLE}.tipo_movimiento_tc_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
