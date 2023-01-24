view: lkp_rubros {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_rubros`
    ;;

  dimension: rubro {
    type: string
    sql: ${TABLE}.rubro ;;
  }

  dimension: rubro_agrupado {
    type: string
    sql: ${TABLE}.rubro_agrupado ;;
  }

  dimension: rubro_agrupado_cyberbank {
    type: string
    sql: ${TABLE}.rubro_agrupado_cyberbank ;;
  }

  dimension: rubro_key {
    hidden: yes
    type: number
    sql: ${TABLE}.rubro_key ;;
  }

  dimension: rubro_source {
    type: string
    sql: ${TABLE}.rubro_source ;;
  }

  dimension: sub_rubro_agrupado {
    type: string
    sql: ${TABLE}.sub_rubro_agrupado ;;
  }

  dimension: tipo_de_rubro {
    type: string
    sql: ${TABLE}.tipo_de_rubro ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
