view: fct_cotizaciones {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.fct_cotizaciones`
    ;;

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: valor_cierre {
    type: number
    sql: ${TABLE}.valor_cierre ;;
  }

  dimension: valor_compra {
    type: number
    sql: ${TABLE}.valor_compra ;;
  }

  dimension: valor_venta {
    type: number
    sql: ${TABLE}.valor_venta ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
