view: lkp_residencias {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_residencias`
    ;;

  dimension: residencia {
    type: string
    sql: ${TABLE}.residencia ;;
  }

  dimension: residencia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.residencia_key ;;
  }

  dimension: residencia_source {
    type: string
    sql: ${TABLE}.residencia_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
