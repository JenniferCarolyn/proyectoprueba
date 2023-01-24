view: lkp_tipos_cuenta {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_tipos_cuenta`
    ;;

  dimension: tipo_cuenta {
    type: string
    sql: ${TABLE}.tipo_cuenta ;;
  }

  dimension: tipo_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_cuenta_key ;;
  }

  dimension: tipo_cuenta_source {
    type: string
    sql: ${TABLE}.tipo_cuenta_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
