view: fct_situaciones_cajas_ahorro {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.fct_situaciones_cajas_ahorro`
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

  dimension: cantidad_cuentas {
    type: number
    sql: ${TABLE}.cantidad_cuentas ;;
  }

  dimension: cantidad_debitos {
    type: number
    sql: ${TABLE}.cantidad_debitos ;;
  }

  dimension: cantidad_movimientos {
    type: number
    sql: ${TABLE}.cantidad_movimientos ;;
  }

  dimension: cantidad_paquetes {
    type: number
    sql: ${TABLE}.cantidad_paquetes ;;
  }

  dimension: cantidad_tarjetas_debito_asociadas {
    type: number
    sql: ${TABLE}.cantidad_tarjetas_debito_asociadas ;;
  }

  dimension: categoria_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.categoria_cuenta_key ;;
  }

  dimension: comisiones {
    type: number
    sql: ${TABLE}.comisiones ;;
  }

  dimension: cotizacion {
    type: number
    sql: ${TABLE}.cotizacion ;;
  }

  dimension: cuenta_con_bonificacion {
    type: string
    sql: ${TABLE}.cuenta_con_bonificacion ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: estado_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_cuenta_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension_group: fecha_ultima_acreditacion_sueldo {
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
    sql: ${TABLE}.fecha_ultima_acreditacion_sueldo ;;
  }

  dimension: importe_acreditacion_sueldo {
    type: number
    sql: ${TABLE}.importe_acreditacion_sueldo ;;
  }

  dimension: oficial_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cuenta_key ;;
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

  dimension: saldo_dia {
    type: number
    sql: ${TABLE}.saldo_dia ;;
  }

  dimension: saldo_promedio {
    type: number
    sql: ${TABLE}.saldo_promedio ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
