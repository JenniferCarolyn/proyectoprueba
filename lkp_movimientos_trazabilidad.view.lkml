view: lkp_movimientos_trazabilidad {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_movimientos_trazabilidad`
    ;;

  dimension: agrupacion {
    type: string
    sql: ${TABLE}.agrupacion ;;
  }

  dimension: codigo_destino {
    type: string
    sql: ${TABLE}.codigo_destino ;;
  }

  dimension: codigo_movimiento {
    type: string
    sql: ${TABLE}.codigo_movimiento ;;
  }

  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension: entidad_source {
    type: number
    sql: ${TABLE}.entidad_source ;;
  }

  dimension_group: fecha_baja {
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
    sql: ${TABLE}.fecha_baja ;;
  }

  dimension: marca_key {
    hidden: yes
    type: number
    sql: ${TABLE}.marca_key ;;
  }

  dimension: movimiento_trazabilidad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.movimiento_trazabilidad_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
