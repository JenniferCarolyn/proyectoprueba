view: lkp_motivos_reversa {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_motivos_reversa`
    ;;

  dimension: motivo_reversa {
    type: string
    sql: ${TABLE}.motivo_reversa ;;
  }

  dimension: motivo_reversa_key {
    hidden: yes
    type: number
    sql: ${TABLE}.motivo_reversa_key ;;
  }

  dimension: motivo_reversa_source {
    type: string
    sql: ${TABLE}.motivo_reversa_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
