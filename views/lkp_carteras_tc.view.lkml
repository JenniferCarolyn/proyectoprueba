view: lkp_carteras_tc {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_carteras_tc`
    ;;

  dimension: cartera_tc {
    type: string
    sql: ${TABLE}.cartera_tc ;;
  }

  dimension: cartera_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cartera_tc_key ;;
  }

  dimension: cartera_tc_source {
    type: string
    sql: ${TABLE}.cartera_tc_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
