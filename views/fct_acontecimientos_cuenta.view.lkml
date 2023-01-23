view: fct_acontecimientos_cuenta {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.fct_acontecimientos_cuenta`
    ;;

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension_group: etl_insertado {
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
    sql: ${TABLE}.etl_insertado ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: variacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.variacion_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
