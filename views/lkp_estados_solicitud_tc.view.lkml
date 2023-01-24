view: lkp_estados_solicitud_tc {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_estados_solicitud_tc`
    ;;

  dimension: estado_solicitud_descripcion {
    type: string
    sql: ${TABLE}.estado_solicitud_descripcion ;;
  }

  dimension: estado_solicitud_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_solicitud_key ;;
  }

  dimension: estado_solicitud_source {
    type: number
    sql: ${TABLE}.estado_solicitud_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
