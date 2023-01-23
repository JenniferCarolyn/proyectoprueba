view: lkp_acuerdos {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_acuerdos`
    ;;

  dimension: acuerdo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.acuerdo_key ;;
  }

  dimension: codigo_acuerdo {
    type: string
    sql: ${TABLE}.codigo_acuerdo ;;
  }

  dimension: codigo_linea_credito {
    type: string
    sql: ${TABLE}.codigo_linea_credito ;;
  }

  dimension: con_acuerdo {
    type: string
    sql: ${TABLE}.con_acuerdo ;;
  }

  dimension: linea_credito {
    type: string
    sql: ${TABLE}.linea_credito ;;
  }

  dimension: tasa_fija {
    type: string
    sql: ${TABLE}.tasa_fija ;;
  }

  dimension: tasa_fija_por_periodo {
    type: string
    sql: ${TABLE}.tasa_fija_por_periodo ;;
  }

  dimension: tasa_variable {
    type: string
    sql: ${TABLE}.tasa_variable ;;
  }

  dimension: tipo_acuerdo {
    type: string
    sql: ${TABLE}.tipo_acuerdo ;;
  }

  dimension: tipo_tasa {
    type: string
    sql: ${TABLE}.tipo_tasa ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
