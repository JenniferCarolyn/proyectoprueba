view: lkp_estudios_externos_cobranza {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_estudios_externos_cobranza`
    ;;

  dimension: estudio_externo {
    type: string
    sql: ${TABLE}.estudio_externo ;;
  }

  dimension: estudio_externo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estudio_externo_key ;;
  }

  dimension: estudio_externo_nombre {
    type: string
    sql: ${TABLE}.estudio_externo_nombre ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
