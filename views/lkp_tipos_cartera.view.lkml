view: lkp_tipos_cartera {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_tipos_cartera`
    ;;

  dimension: tipo_cartera {
    type: string
    sql: ${TABLE}.tipo_cartera ;;
  }

  dimension: tipo_cartera_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_cartera_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
