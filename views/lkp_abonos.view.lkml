view: lkp_abonos {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_abonos`
    ;;

  dimension: abono_key {
    hidden: yes
    type: number
    sql: ${TABLE}.abono_key ;;
  }

  dimension: con_abono {
    type: string
    sql: ${TABLE}.con_abono ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
