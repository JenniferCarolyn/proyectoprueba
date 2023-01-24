view: lkp_paises {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_paises`
    ;;

  dimension: pais {
    type: string
    sql: ${TABLE}.pais ;;
  }

  dimension: pais_key {
    hidden: yes
    type: number
    sql: ${TABLE}.pais_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
