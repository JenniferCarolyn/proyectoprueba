view: lkp_tipos_liquidacion_intereses {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_tipos_liquidacion_intereses`
    ;;

  dimension: tipo_liquidacion_codigo {
    type: string
    sql: ${TABLE}.tipo_liquidacion_codigo ;;
  }

  dimension: tipo_liquidacion_descripcion {
    type: string
    sql: ${TABLE}.tipo_liquidacion_descripcion ;;
  }

  dimension: tipo_liquidacion_intereses_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_liquidacion_intereses_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
