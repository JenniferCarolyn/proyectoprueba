view: lkp_estados_adhesion_da_tc {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_estados_adhesion_da_tc`
    ;;

  dimension: estado_adhesion_da_descripcion {
    type: string
    sql: ${TABLE}.estado_adhesion_da_descripcion ;;
  }

  dimension: estado_adhesion_da_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_adhesion_da_key ;;
  }

  dimension: estado_adhesion_da_source {
    type: number
    sql: ${TABLE}.estado_adhesion_da_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
