view: lkp_marcas {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_marcas`
    ;;

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: marca_key {
    hidden: yes
    type: number
    sql: ${TABLE}.marca_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
