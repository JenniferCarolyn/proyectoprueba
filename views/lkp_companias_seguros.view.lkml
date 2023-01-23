view: lkp_companias_seguros {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_companias_seguros`
    ;;

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: codigo_cliente {
    type: number
    sql: ${TABLE}.codigo_cliente ;;
  }

  dimension: compania {
    type: string
    sql: ${TABLE}.compania ;;
  }

  dimension: compania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.compania_key ;;
  }

  dimension: compania_source {
    type: number
    sql: ${TABLE}.compania_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
