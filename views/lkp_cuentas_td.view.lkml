view: lkp_cuentas_td {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_cuentas_td`
    ;;

  dimension: banca_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banca_key ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: cuenta_comisiones_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_comisiones_key ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: cuenta_tarjeta {
    type: string
    sql: ${TABLE}.cuenta_tarjeta ;;
  }

  dimension: estado_tarjeta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_tarjeta_key ;;
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

  dimension_group: fecha_primera_compra {
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
    sql: ${TABLE}.fecha_primera_compra ;;
  }

  dimension_group: fecha_vencimiento {
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
    sql: ${TABLE}.fecha_vencimiento ;;
  }

  dimension: flag_titular {
    type: string
    sql: ${TABLE}.flag_titular ;;
  }

  dimension: limite_compra {
    type: number
    sql: ${TABLE}.limite_compra ;;
  }

  dimension: numero_tarjeta {
    type: string
    sql: ${TABLE}.numero_tarjeta ;;
  }

  dimension: paquete_id {
    type: number
    sql: ${TABLE}.paquete_id ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: tipo_entrega {
    type: string
    sql: ${TABLE}.tipo_entrega ;;
  }

  dimension: tipo_solicitud {
    type: string
    sql: ${TABLE}.tipo_solicitud ;;
  }

  dimension: tipo_tarjeta {
    type: string
    sql: ${TABLE}.tipo_tarjeta ;;
  }

  dimension: tipo_tarjeta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_tarjeta_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
