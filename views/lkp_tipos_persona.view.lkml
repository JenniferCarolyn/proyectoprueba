view: lkp_tipos_persona {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_tipos_persona`
    ;;

  dimension: tipo_persona {
    type: string
    sql: ${TABLE}.tipo_persona ;;
  }

  dimension: tipo_persona_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_persona_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
