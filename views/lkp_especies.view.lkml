view: lkp_especies {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_especies`
    ;;

  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension: especie {
    type: string
    sql: ${TABLE}.especie ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: subespecie {
    type: string
    sql: ${TABLE}.subespecie ;;
  }

  dimension: subtipo_especie {
    type: string
    sql: ${TABLE}.subtipo_especie ;;
  }

  dimension: tipo_especie {
    type: string
    sql: ${TABLE}.tipo_especie ;;
  }

  dimension: tipo_valor_residual {
    type: number
    sql: ${TABLE}.tipo_valor_residual ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
