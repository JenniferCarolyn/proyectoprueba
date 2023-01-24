view: lkp_grupos_convenio {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_grupos_convenio`
    ;;

  dimension: agrupacion_cash_nivel_1 {
    type: string
    sql: ${TABLE}.agrupacion_cash_nivel_1 ;;
  }

  dimension: agrupacion_cash_nivel_2 {
    type: string
    sql: ${TABLE}.agrupacion_cash_nivel_2 ;;
  }

  dimension: agrupacion_cash_nivel_3 {
    type: string
    sql: ${TABLE}.agrupacion_cash_nivel_3 ;;
  }

  dimension: grupo_convenio {
    type: string
    sql: ${TABLE}.grupo_convenio ;;
  }

  dimension: grupo_convenio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.grupo_convenio_key ;;
  }

  dimension: grupo_convenio_source {
    type: string
    sql: ${TABLE}.grupo_convenio_source ;;
  }

  dimension: tipo_convenio {
    type: string
    sql: ${TABLE}.tipo_convenio ;;
  }

  dimension: tipo_convenio_source {
    type: string
    sql: ${TABLE}.tipo_convenio_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
