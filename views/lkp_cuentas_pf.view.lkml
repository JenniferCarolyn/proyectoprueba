view: lkp_cuentas_pf {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_cuentas_pf`
    ;;

  dimension: actividad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.actividad_key ;;
  }

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

  dimension: canal_venta_pf {
    type: string
    sql: ${TABLE}.canal_venta_pf ;;
  }

  dimension: capital {
    type: number
    sql: ${TABLE}.capital ;;
  }

  dimension: certificado {
    type: string
    sql: ${TABLE}.certificado ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: codigo_cliente {
    type: number
    sql: ${TABLE}.codigo_cliente ;;
  }

  dimension: cuenta_anterior_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_anterior_key ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: cuenta_padre_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_padre_key ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
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

  dimension_group: fecha_base_indice {
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
    sql: ${TABLE}.fecha_base_indice ;;
  }

  dimension_group: fecha_cancelacion {
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
    sql: ${TABLE}.fecha_cancelacion ;;
  }

  dimension_group: fecha_inmovilizacion {
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
    sql: ${TABLE}.fecha_inmovilizacion ;;
  }

  dimension_group: fecha_precancelable {
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
    sql: ${TABLE}.fecha_precancelable ;;
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

  dimension: flag_maximo_renovaciones_pactadas {
    type: string
    sql: ${TABLE}.flag_maximo_renovaciones_pactadas ;;
  }

  dimension: flag_renovaciones_automaticas {
    type: string
    sql: ${TABLE}.flag_renovaciones_automaticas ;;
  }

  dimension: indice_key {
    hidden: yes
    type: number
    sql: ${TABLE}.indice_key ;;
  }

  dimension: instruccion {
    type: string
    sql: ${TABLE}.instruccion ;;
  }

  dimension: marca_renovado {
    type: string
    sql: ${TABLE}.marca_renovado ;;
  }

  dimension: modalidad {
    type: string
    sql: ${TABLE}.modalidad ;;
  }

  dimension: oficial_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cuenta_key ;;
  }

  dimension: oficial_pf_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_pf_key ;;
  }

  dimension: pago_periodico {
    type: string
    sql: ${TABLE}.pago_periodico ;;
  }

  dimension: plazo {
    type: number
    sql: ${TABLE}.plazo ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: producto_origen_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_origen_key ;;
  }

  dimension: renueva_ajustes {
    type: string
    sql: ${TABLE}.renueva_ajustes ;;
  }

  dimension: renueva_capital {
    type: string
    sql: ${TABLE}.renueva_capital ;;
  }

  dimension: renueva_intereses {
    type: string
    sql: ${TABLE}.renueva_intereses ;;
  }

  dimension: residencia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.residencia_key ;;
  }

  dimension: restringido {
    type: string
    sql: ${TABLE}.restringido ;;
  }

  dimension: sector_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sector_key ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: tasa {
    type: number
    sql: ${TABLE}.tasa ;;
  }

  dimension: tasa_pagada {
    type: number
    sql: ${TABLE}.tasa_pagada ;;
  }

  dimension: tipo_cliente_pf {
    type: string
    sql: ${TABLE}.tipo_cliente_pf ;;
  }

  dimension: tipo_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_cuenta_key ;;
  }

  dimension: variacion {
    type: number
    sql: ${TABLE}.variacion ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
