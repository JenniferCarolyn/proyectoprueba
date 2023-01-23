view: lkp_bancas {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_bancas`
    ;;

  dimension: agrupacion_segmento_comite {
    type: string
    sql: ${TABLE}.agrupacion_segmento_comite ;;
  }

  dimension: banca {
    type: string
    sql: ${TABLE}.banca ;;
  }

  dimension: banca_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banca_key ;;
  }

  dimension: banca_original_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banca_original_key ;;
  }

  dimension: banca_source {
    type: string
    sql: ${TABLE}.banca_source ;;
  }

  dimension: cambio_segmento_cobis {
    type: string
    sql: ${TABLE}.cambio_segmento_cobis ;;
  }

  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
  }

  dimension: categoria_source {
    type: string
    sql: ${TABLE}.categoria_source ;;
  }

  dimension_group: fecha_alta {
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
    sql: ${TABLE}.fecha_alta ;;
  }

  dimension_group: fecha_modificacion {
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
    sql: ${TABLE}.fecha_modificacion ;;
  }

  dimension: segmento {
    type: string
    sql: ${TABLE}.segmento ;;
  }

  dimension: segmento_comercial {
    type: string
    sql: ${TABLE}.segmento_comercial ;;
  }

  dimension: segmento_comercial_key {
    hidden: yes
    type: number
    sql: ${TABLE}.segmento_comercial_key ;;
  }

  dimension: segmento_source {
    type: string
    sql: ${TABLE}.segmento_source ;;
  }

  dimension: subsegmento {
    type: string
    sql: ${TABLE}.subsegmento ;;
  }

  dimension: subsegmento_comercial {
    type: string
    sql: ${TABLE}.subsegmento_comercial ;;
  }

  dimension: subsegmento_source {
    type: string
    sql: ${TABLE}.subsegmento_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
