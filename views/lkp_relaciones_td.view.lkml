view: lkp_relaciones_td {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_relaciones_td`
    ;;

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: cuenta_relacionada_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_relacionada_key ;;
  }

  dimension: cuenta_td_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_td_key ;;
  }

  dimension_group: vigencia_desde {
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
    sql: ${TABLE}.vigencia_desde ;;
  }

  dimension_group: vigencia_hasta {
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
    sql: ${TABLE}.vigencia_hasta ;;
  }

  dimension: vigente {
    type: number
    sql: ${TABLE}.vigente ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
