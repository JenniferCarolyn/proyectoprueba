view: lkp_actividades {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_actividades`
    ;;

  dimension: actividad {
    type: string
    sql: ${TABLE}.actividad ;;
  }

  dimension: actividad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.actividad_key ;;
  }

  dimension: actividad_source {
    type: number
    sql: ${TABLE}.actividad_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
