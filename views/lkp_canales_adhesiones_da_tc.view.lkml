view: lkp_canales_adhesiones_da_tc {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_canales_adhesiones_da_tc`
    ;;

  dimension: canal_adhesion_da_descripcion {
    type: string
    sql: ${TABLE}.canal_adhesion_da_descripcion ;;
  }

  dimension: canal_adhesion_da_key {
    hidden: yes
    type: number
    sql: ${TABLE}.canal_adhesion_da_key ;;
  }

  dimension: canal_adhesion_da_source {
    type: number
    sql: ${TABLE}.canal_adhesion_da_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
