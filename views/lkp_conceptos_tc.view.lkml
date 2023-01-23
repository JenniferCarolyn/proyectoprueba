view: lkp_conceptos_tc {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_conceptos_tc`
    ;;

  dimension: concepto_tc {
    type: string
    sql: ${TABLE}.concepto_tc ;;
  }

  dimension: concepto_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.concepto_tc_key ;;
  }

  dimension: tipo_concepto_tc {
    type: string
    sql: ${TABLE}.tipo_concepto_tc ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
