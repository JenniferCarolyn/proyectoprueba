view: lkp_canales_venta {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_canales_venta`
    ;;

  dimension: canal {
    type: string
    sql: ${TABLE}.canal ;;
  }

  dimension: canal_source {
    type: string
    sql: ${TABLE}.canal_source ;;
  }

  dimension: canal_venta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.canal_venta_key ;;
  }

  dimension: subcanal {
    type: string
    sql: ${TABLE}.subcanal ;;
  }

  dimension: subcanal_source {
    type: string
    sql: ${TABLE}.subcanal_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
