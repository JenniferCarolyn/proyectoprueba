view: lkp_unidades_cobranza {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_unidades_cobranza`
    ;;

  dimension: descripcion_unidad_cobro {
    type: string
    sql: ${TABLE}.descripcion_unidad_cobro ;;
  }

  dimension: unidad_cobranza {
    type: string
    sql: ${TABLE}.unidad_cobranza ;;
  }

  dimension: unidad_cobranza_key {
    hidden: yes
    type: number
    sql: ${TABLE}.unidad_cobranza_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
