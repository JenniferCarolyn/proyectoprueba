view: lkp_emision_distribucion_td {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_emision_distribucion_td`
    ;;

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension: emision_distribucion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.emision_distribucion_key ;;
  }

  dimension: source_codigo_distribucion {
    type: string
    sql: ${TABLE}.source_codigo_distribucion ;;
  }

  dimension: source_codigo_emision {
    type: string
    sql: ${TABLE}.source_codigo_emision ;;
  }

  dimension: vigencia {
    type: string
    sql: ${TABLE}.vigencia ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
