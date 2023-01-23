view: lkp_estados_cheque {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_estados_cheque`
    ;;

  dimension: cancela {
    type: string
    sql: ${TABLE}.cancela ;;
  }

  dimension: estado_cheque_agrupamiento {
    type: string
    sql: ${TABLE}.estado_cheque_agrupamiento ;;
  }

  dimension: estado_cheque_descripcion {
    type: string
    sql: ${TABLE}.estado_cheque_descripcion ;;
  }

  dimension: estado_cheque_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_cheque_key ;;
  }

  dimension: estado_cheque_source {
    type: string
    sql: ${TABLE}.estado_cheque_source ;;
  }

  dimension: origen_dato {
    type: string
    sql: ${TABLE}.origen_dato ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
