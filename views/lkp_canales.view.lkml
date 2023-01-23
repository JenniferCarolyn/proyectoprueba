view: lkp_canales {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_canales`
    ;;

  dimension: canal {
    type: string
    sql: ${TABLE}.canal ;;
  }

  dimension: canal_key {
    hidden: yes
    type: number
    sql: ${TABLE}.canal_key ;;
  }

  dimension: canal_source {
    type: string
    sql: ${TABLE}.canal_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
