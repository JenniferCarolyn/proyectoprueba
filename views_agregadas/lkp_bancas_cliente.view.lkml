view: lkp_bancas_cliente {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_bancas`
    ;;
  dimension: agrupacion_segmento_comite {
    type: string
    sql: ${TABLE}.agrupacion_segmento_comite ;;
  }

  dimension: banca_comite {
    suggestions: ["Individuos", "Empresas", "Agro", "Megra", "Corporativa"]
    type: string
    sql: ${TABLE}.banca ;;
  }

  dimension: tipo_ps {
    type: string
    sql: CASE WHEN ${segmento_comite} LIKE "Estado%" THEN "PS PUBLICO" ELSE "PS PRIVADO" END ;;
  }

  dimension: banca_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.banca_key ;;
  }

  dimension: banca_original_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banca_original_key ;;
  }

  dimension: banca_comite_source {
    type: string
    sql: ${TABLE}.banca_source ;;
  }

  dimension: cambio_segmento_cobis {
    type: string
    sql: ${TABLE}.cambio_segmento_cobis ;;
  }

  dimension: categoria_comite {
    suggestions: ["Premium", "Selecta", "Selecta Privado"]
    type: string
    sql: ${TABLE}.categoria ;;
  }

  dimension: categoria_comite_source {
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
    datatype: datetime
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
    datatype: datetime
    sql: ${TABLE}.fecha_modificacion ;;
  }

  dimension: segmento_comite {
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

  dimension: segmento_comite_source {
    type: string
    sql: ${TABLE}.segmento_source ;;
  }

  dimension: subsegmento_comite {
    type: string
    sql: ${TABLE}.subsegmento ;;
  }

  dimension: subsegmento_comite_comercial {
    type: string
    sql: ${TABLE}.subsegmento_comercial ;;
  }

  dimension: subsegmento_comite_source {
    type: string
    sql: ${TABLE}.subsegmento_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
