view: lkp_etapas {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_etapas`
    ;;

  dimension: etapa {
    type: string
    sql: ${TABLE}.etapa ;;
  }

  dimension: etapa_key {
    hidden: yes
    type: number
    sql: ${TABLE}.etapa_key ;;
  }

  dimension: etapa_source {
    type: string
    sql: ${TABLE}.etapa_source ;;
  }

  dimension: modulo_origen {
    type: string
    sql: ${TABLE}.modulo_origen ;;
  }

  dimension: sistema_origen {
    type: string
    sql: ${TABLE}.sistema_origen ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
