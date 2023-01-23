view: lkp_codigos_inhabilitacion_tc {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_codigos_inhabilitacion_tc`
    ;;

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: codigo_inhabilitacion_tc {
    type: string
    sql: ${TABLE}.codigo_inhabilitacion_tc ;;
  }

  dimension: codigo_inhabilitacion_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.codigo_inhabilitacion_tc_key ;;
  }

  dimension: codigo_inhabilitacion_tc_source {
    type: string
    sql: ${TABLE}.codigo_inhabilitacion_tc_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
