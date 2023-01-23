view: lkp_categorias_cuenta {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_categorias_cuenta`
    ;;

  dimension: agrupacion_1 {
    type: string
    sql: ${TABLE}.agrupacion_1 ;;
  }

  dimension: agrupacion_2 {
    type: string
    sql: ${TABLE}.agrupacion_2 ;;
  }

  dimension: categoria_cuenta {
    type: string
    sql: ${TABLE}.categoria_cuenta ;;
  }

  dimension: categoria_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.categoria_cuenta_key ;;
  }

  dimension: categoria_cuenta_source {
    type: string
    sql: ${TABLE}.categoria_cuenta_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
