view: lkp_debitos_tc {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_debitos_tc`
    ;;

  dimension: debitos_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.debitos_tc_key ;;
  }

  dimension: debitos_tc_source {
    type: string
    sql: ${TABLE}.debitos_tc_source ;;
  }

  dimension: forma_pago {
    type: string
    sql: ${TABLE}.forma_pago ;;
  }

  dimension: tipo_debito {
    type: string
    sql: ${TABLE}.tipo_debito ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
