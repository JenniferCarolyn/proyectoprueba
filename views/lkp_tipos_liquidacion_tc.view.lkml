view: lkp_tipos_liquidacion_tc {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_tipos_liquidacion_tc`
    ;;

  dimension: tipo_liquidacion_tc {
    type: string
    sql: ${TABLE}.tipo_liquidacion_tc ;;
  }

  dimension: tipo_liquidacion_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_liquidacion_tc_key ;;
  }

  dimension: tipo_liquidacion_tc_source {
    type: string
    sql: ${TABLE}.tipo_liquidacion_tc_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
