view: lkp_inactividad {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_inactividad`
    ;;

  dimension: inactiva {
    type: string
    sql: ${TABLE}.inactiva ;;
  }

  dimension: inactividad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.inactividad_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
