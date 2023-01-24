view: lkp_oficiales_cobranza {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_oficiales_cobranza`
    ;;

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: descripcion_oficial_cobro {
    type: string
    sql: ${TABLE}.descripcion_oficial_cobro ;;
  }

  dimension: oficial_cobranza {
    type: string
    sql: ${TABLE}.oficial_cobranza ;;
  }

  dimension: oficial_cobranza_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cobranza_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
