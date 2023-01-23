view: fct_cambios_estado_td {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.fct_cambios_estado_td`
    ;;

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: estado_td_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_td_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: id_proceso {
    type: number
    sql: ${TABLE}.id_proceso ;;
  }

  dimension: numero_tarjeta {
    type: string
    sql: ${TABLE}.numero_tarjeta ;;
  }

  dimension: sucursal_estado_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_estado_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
