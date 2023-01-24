view: lkp_vendedores {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_vendedores`
    ;;

  dimension: login_vendedor {
    type: string
    sql: ${TABLE}.login_vendedor ;;
  }

  dimension: sistema_origen {
    type: string
    sql: ${TABLE}.sistema_origen ;;
  }

  dimension: vendedor {
    type: string
    sql: ${TABLE}.vendedor ;;
  }

  dimension: vendedor_key {
    hidden: yes
    type: number
    sql: ${TABLE}.vendedor_key ;;
  }

  dimension: vendedor_source {
    type: string
    sql: ${TABLE}.vendedor_source ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
