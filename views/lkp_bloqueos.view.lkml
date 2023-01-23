view: lkp_bloqueos {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_bloqueos`
    ;;

  dimension: bloqueo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.bloqueo_key ;;
  }

  dimension: bloqueo_source {
    type: number
    sql: ${TABLE}.bloqueo_source ;;
  }

  dimension: tipo_bloqueo {
    type: string
    sql: ${TABLE}.tipo_bloqueo ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
