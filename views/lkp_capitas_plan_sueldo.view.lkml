view: lkp_capitas_plan_sueldo {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_capitas_plan_sueldo`
    ;;

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: capita_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.capita_key ;;
  }

  dimension: cliente_capita_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_capita_key ;;
  }

  dimension: cliente_convenio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_convenio_key ;;
  }

  dimension: estado_capita {
    type: string
    sql: ${TABLE}.estado_capita ;;
  }

  dimension: fecha_alta_capita_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_alta_capita_key ;;
  }

  dimension: fecha_ultimo_estado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_ultimo_estado_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
