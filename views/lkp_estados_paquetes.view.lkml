view: lkp_estados_paquetes {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_estados_paquetes`
    ;;

  dimension: estado_paquete {
    type: string
    sql: ${TABLE}.estado_paquete ;;
  }

  dimension: estado_paquete_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_paquete_key ;;
  }

  dimension: estado_paquete_source {
    type: string
    sql: ${TABLE}.estado_paquete_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
