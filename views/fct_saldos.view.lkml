view: fct_saldos {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.fct_saldos`
    ;;

  dimension: abono_key {
    hidden: yes
    type: number
    sql: ${TABLE}.abono_key ;;
  }

  dimension: actividad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.actividad_key ;;
  }

  dimension: acuerdo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.acuerdo_key ;;
  }

  dimension: ajuste_devengado_dia {
    type: number
    sql: ${TABLE}.ajuste_devengado_dia ;;
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

  dimension: bloqueo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.bloqueo_key ;;
  }

  dimension: cantidad_cuentas {
    type: number
    sql: ${TABLE}.cantidad_cuentas ;;
  }

  dimension: categoria_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.categoria_cuenta_key ;;
  }

  dimension: clasificacion_contable_key {
    hidden: yes
    type: number
    sql: ${TABLE}.clasificacion_contable_key ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: cotizacion {
    type: number
    sql: ${TABLE}.cotizacion ;;
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

  dimension_group: etl_insertado {
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
    sql: ${TABLE}.etl_insertado ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension_group: fecha_ultimo_movim_cliente {
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
    sql: ${TABLE}.fecha_ultimo_movim_cliente ;;
  }

  dimension: fecha_vencimiento_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_vencimiento_key ;;
  }

  dimension: inactividad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.inactividad_key ;;
  }

  dimension: interes_devengado_dia {
    type: number
    sql: ${TABLE}.interes_devengado_dia ;;
  }

  dimension: nir {
    type: number
    sql: ${TABLE}.nir ;;
  }

  dimension: oficial_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cuenta_key ;;
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

  dimension: renta_amortizacion {
    type: number
    sql: ${TABLE}.renta_amortizacion ;;
  }

  dimension: residencia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.residencia_key ;;
  }

  dimension: saldo_dia {
    type: number
    sql: ${TABLE}.saldo_dia ;;
  }

  dimension: saldo_prom_contable_fin_mes {
    type: number
    sql: ${TABLE}.saldo_prom_contable_fin_mes ;;
  }

  dimension: saldo_promedio_mes {
    type: number
    sql: ${TABLE}.saldo_promedio_mes ;;
  }

  dimension: sector_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sector_key ;;
  }

  dimension: situacion_deudor_banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.situacion_deudor_banco_key ;;
  }

  dimension: situacion_deudor_bcra_key {
    hidden: yes
    type: number
    sql: ${TABLE}.situacion_deudor_bcra_key ;;
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

  dimension: tipo_cartera_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_cartera_key ;;
  }

  dimension: tipo_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_cuenta_key ;;
  }

  dimension: tipo_persona_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_persona_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
