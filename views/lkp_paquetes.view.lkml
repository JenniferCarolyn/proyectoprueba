view: lkp_paquetes {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_paquetes`
    ;;

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: canal_venta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.canal_venta_key ;;
  }

  dimension: causa_cierre_key {
    hidden: yes
    type: number
    sql: ${TABLE}.causa_cierre_key ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: estado_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_cuenta_key ;;
  }

  dimension: estado_paquete_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_paquete_key ;;
  }

  dimension_group: fecha_alta {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.fecha_alta ;;
  }

  dimension_group: fecha_baja {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.fecha_baja ;;
  }

  dimension: paquete_id {
    type: string
    sql: ${TABLE}.paquete_id ;;
  }

  dimension: paquete_key {
    hidden: yes
    type: number
    sql: ${TABLE}.paquete_key ;;
  }

  dimension: personal_cierre_key {
    hidden: yes
    type: number
    sql: ${TABLE}.personal_cierre_key ;;
  }

  dimension: producto_2_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_2_key ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: sucursal_cierre_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cierre_key ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: vendedor_key {
    hidden: yes
    type: number
    sql: ${TABLE}.vendedor_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
