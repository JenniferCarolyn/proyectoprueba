view: lkp_conceptos_valoracion {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_conceptos_valoracion`
    ;;

  dimension: concepto_valoracion_descripcion {
    type: string
    sql: ${TABLE}.concepto_valoracion_descripcion ;;
  }

  dimension_group: concepto_valoracion_fecha_alta {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.concepto_valoracion_fecha_alta ;;
  }

  dimension: concepto_valoracion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.concepto_valoracion_key ;;
  }

  dimension: concepto_valoracion_marca_ing_egr {
    type: string
    sql: ${TABLE}.concepto_valoracion_marca_ing_egr ;;
  }

  dimension: concepto_valoracion_source {
    type: string
    sql: ${TABLE}.concepto_valoracion_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
