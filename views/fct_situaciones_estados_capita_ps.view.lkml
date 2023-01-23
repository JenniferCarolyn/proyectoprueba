view: fct_situaciones_estados_capita_ps {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.fct_situaciones_estados_capita_ps`
    ;;

  dimension: capita_key {
    hidden: yes
    type: number
    sql: ${TABLE}.capita_key ;;
  }

  dimension: con_acreditacion {
    type: string
    sql: ${TABLE}.con_acreditacion ;;
  }

  dimension: estado_monitor_ps_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_monitor_ps_key ;;
  }

  dimension: estado_monitor_ps_sin_ajuste_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_monitor_ps_sin_ajuste_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: fecha_version_estado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_version_estado_key ;;
  }

  dimension: piso {
    type: number
    sql: ${TABLE}.piso ;;
  }

  dimension: secuencia_ps_key {
    hidden: yes
    type: number
    sql: ${TABLE}.secuencia_ps_key ;;
  }

  dimension: vigente {
    type: string
    sql: ${TABLE}.vigente ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
