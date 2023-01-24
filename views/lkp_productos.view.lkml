view: lkp_productos {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_productos`
    ;;

  dimension: cartera {
    type: string
    sql: ${TABLE}.cartera ;;
  }

  dimension: familia_productos {
    type: string
    sql: ${TABLE}.familia_productos ;;
  }

  dimension: paquete {
    type: string
    sql: ${TABLE}.paquete ;;
  }

  dimension: precancelable {
    type: string
    sql: ${TABLE}.precancelable ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.producto ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: producto_source {
    type: string
    sql: ${TABLE}.producto_source ;;
  }

  dimension: subproducto {
    type: string
    sql: ${TABLE}.subproducto ;;
  }

  dimension: tipo_producto {
    type: string
    sql: ${TABLE}.tipo_producto ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
