view: lkp_tipos_transferencia {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_tipos_transferencia`
    ;;

  dimension: tipo_transferencia {
    type: string
    sql: ${TABLE}.tipo_transferencia ;;
  }

  dimension: tipo_transferencia_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.tipo_transferencia_key ;;
  }

  dimension: tipo_transferencia_source {
    type: string
    sql: ${TABLE}.tipo_transferencia_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
