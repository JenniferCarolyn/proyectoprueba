view: lkp_habilitaciones_atm {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_habilitaciones_atm`
    ;;

  dimension: cargo_uso_atm {
    type: string
    sql: ${TABLE}.cargo_uso_atm ;;
  }

  dimension: habilitacion_atm {
    type: string
    sql: ${TABLE}.habilitacion_atm ;;
  }

  dimension: habilitacion_atm_key {
    hidden: yes
    type: number
    sql: ${TABLE}.habilitacion_atm_key ;;
  }

  dimension: habilitacion_atm_source {
    type: string
    sql: ${TABLE}.habilitacion_atm_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
