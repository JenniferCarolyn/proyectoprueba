view: lkp_estados_ps {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_estados_ps`
    ;;

  dimension: estado_monitor_ps {
    type: string
    sql: ${TABLE}.estado_monitor_ps ;;
  }

  dimension: estado_monitor_ps_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.estado_monitor_ps_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
