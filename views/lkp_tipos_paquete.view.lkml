view: lkp_tipos_paquete {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_tipos_paquete`
    ;;

  dimension: nombre_paquete {
    type: string
    sql: ${TABLE}.nombre_paquete ;;
  }

  dimension: otros_atributos_paquete {
    type: string
    sql: ${TABLE}.otros_atributos_paquete ;;
  }

  dimension: tipos_paquete_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipos_paquete_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
