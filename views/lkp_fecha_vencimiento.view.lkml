view: lkp_fecha_vencimiento {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_fecha_vencimiento`
    ;;

  dimension: anio {
    type: number
    sql: ${TABLE}.anio ;;
  }

  dimension: dia_semana {
    type: string
    sql: ${TABLE}.dia_semana ;;
  }

  dimension_group: fecha {
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
    sql: ${TABLE}.fecha ;;
  }

  dimension: fecha_vencimiento_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_vencimiento_key ;;
  }

  dimension: flag_fin_mes {
    type: string
    sql: ${TABLE}.flag_fin_mes ;;
  }

  dimension: mes {
    type: string
    sql: ${TABLE}.mes ;;
  }

  dimension: multiplicador {
    type: number
    sql: ${TABLE}.multiplicador ;;
  }

  dimension: n_dia {
    type: number
    sql: ${TABLE}.n_dia ;;
  }

  dimension: n_dia_semana {
    type: number
    sql: ${TABLE}.n_dia_semana ;;
  }

  dimension: n_mes {
    type: number
    sql: ${TABLE}.n_mes ;;
  }

  dimension: tipo_dia {
    type: string
    sql: ${TABLE}.tipo_dia ;;
  }

  dimension: trimestre {
    type: string
    sql: ${TABLE}.trimestre ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
