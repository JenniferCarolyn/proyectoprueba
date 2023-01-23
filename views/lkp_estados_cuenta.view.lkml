view: lkp_estados_cuenta {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_estados_cuenta`
    ;;

  dimension: estado_cuenta {
    type: string
    sql: ${TABLE}.estado_cuenta ;;
  }

  dimension: estado_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_cuenta_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
