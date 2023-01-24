view: lkp_sectores {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_sectores`
    ;;

  dimension: jurisdiccion {
    type: string
    sql: ${TABLE}.jurisdiccion ;;
  }

  dimension: sector {
    type: string
    sql: ${TABLE}.sector ;;
  }

  dimension: sector_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sector_key ;;
  }

  dimension: sector_source {
    type: number
    sql: ${TABLE}.sector_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
