view: lkp_bancos {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_bancos`
    ;;

  dimension: agrupamiento_institucional {
    type: string
    sql: ${TABLE}.agrupamiento_institucional ;;
  }

  dimension: agrupamiento_institucional_source {
    type: string
    sql: ${TABLE}.agrupamiento_institucional_source ;;
  }

  dimension: banco {
    type: string
    sql: ${TABLE}.banco ;;
  }

  dimension: banco_abreviado {
    type: string
    sql: ${TABLE}.banco_abreviado ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: camara {
    type: string
    sql: ${TABLE}.camara ;;
  }

  dimension: codigo_banco {
    type: string
    sql: ${TABLE}.codigo_banco ;;
  }

  dimension: cuit {
    type: number
    sql: ${TABLE}.cuit ;;
  }

  dimension: grupo_bancario {
    type: string
    sql: ${TABLE}.grupo_bancario ;;
  }

  dimension: origen {
    type: string
    sql: ${TABLE}.origen ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
