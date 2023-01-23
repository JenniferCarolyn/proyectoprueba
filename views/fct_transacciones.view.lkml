view: fct_transacciones {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.fct_transacciones`
    ;;

  filter: filtro_flag_reversa {
    sql: ${flag_reversa} != "9" ;;
  }

  filter: causal_tipo_transferencia {
    label: "Causales PS"
    sql: (${lkp_causales.causal} in (303, 1001, 1004, 1304, 1501, 1780, 1783, 1935, 2028, 4068) or (${lkp_causales.causal} = 1444 and ${lkp_tipos_transferencia.tipo_transferencia} = "Sueldos")) ;;
  }
  filter: causal_tipo_transferencia_convenio {
    label: "Causales PS convenio"
    sql: (${lkp_causales.causal} in (303, 1001, 1004, 1304, 1501, 1780, 1783, 1935, 2028) or (${lkp_causales.causal} = 1444 and ${lkp_tipos_transferencia.tipo_transferencia} = "Sueldos")) ;;
  }
  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: banco_originante_trf_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_originante_trf_key ;;
  }

  dimension: banco_receptor_trf_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_receptor_trf_key ;;
  }

  dimension: canal_key {
    hidden: yes
    type: number
    sql: ${TABLE}.canal_key ;;
  }

  dimension: cantidad_transacciones {
    type: number
    sql: ${TABLE}.cantidad_transacciones ;;
  }

  dimension: categoria_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.categoria_cuenta_key ;;
  }

  dimension: causal_key {
    hidden: yes
    type: number
    sql: ${TABLE}.causal_key ;;
  }

  dimension: concepto_transaccion {
    type: string
    sql: ${TABLE}.concepto_transaccion ;;
  }

  dimension: contabiliza {
    type: string
    sql: ${TABLE}.contabiliza ;;
  }

  dimension: convenio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.convenio_key ;;
  }

  dimension: cotizacion {
    type: number
    sql: ${TABLE}.cotizacion ;;
  }

  dimension: cuenta_contable_credito {
    type: string
    sql: ${TABLE}.cuenta_contable_credito ;;
  }

  dimension: cuenta_contable_debito {
    type: string
    sql: ${TABLE}.cuenta_contable_debito ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: debito_credito {
    type: string
    sql: ${TABLE}.debito_credito ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension_group: fecha_transaccion {
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
    datatype: datetime
    sql: ${TABLE}.fecha_transaccion ;;
  }

  dimension: flag_reversa {
    type: string
    sql: ${TABLE}.flag_reversa ;;
  }

  dimension: hora_transaccion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.hora_transaccion_key ;;
  }

  dimension: id_proceso {
    type: number
    sql: ${TABLE}.id_proceso ;;
  }

  dimension: importe_transaccion {
    type: number
    sql: ${TABLE}.importe_transaccion ;;
  }

  dimension: importe_transaccion_mn {
    type: number
    sql: ${TABLE}.importe_transaccion_mn ;;
  }

  dimension: monto_transferencia {
    type: number
    sql: ${TABLE}.monto_transferencia ;;
  }

  dimension: numero_operacion_reclamo {
    type: number
    sql: ${TABLE}.numero_operacion_reclamo ;;
  }

  dimension: numero_transaccion {
    type: number
    sql: ${TABLE}.numero_transaccion ;;
  }

  dimension: producto_cobis {
    type: string
    sql: ${TABLE}.producto_cobis ;;
  }

  dimension: producto_key {
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: residencia_key {
    type: number
    sql: ${TABLE}.residencia_key ;;
  }

  dimension: saldo_disponible {
    type: number
    sql: ${TABLE}.saldo_disponible ;;
  }

  dimension: saldo_disponible_mn {
    type: number
    sql: ${TABLE}.saldo_disponible_mn ;;
  }

  dimension: sector_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sector_key ;;
  }

  dimension: secuencial_transaccion {
    type: number
    sql: ${TABLE}.secuencial_transaccion ;;
  }

  dimension: subsecuencial_transaccion {
    type: string
    sql: ${TABLE}.subsecuencial_transaccion ;;
  }

  dimension: sucursal_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_key ;;
  }

  dimension: sucursal_origen_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_origen_key ;;
  }

  dimension: terminal_transaccion {
    type: string
    sql: ${TABLE}.terminal_transaccion ;;
  }

  dimension: tipo_cuenta_credito {
    type: string
    sql: ${TABLE}.tipo_cuenta_credito ;;
  }

  dimension: tipo_cuenta_debito {
    type: string
    sql: ${TABLE}.tipo_cuenta_debito ;;
  }

  dimension: tipo_transaccion {
    type: number
    sql: ${TABLE}.tipo_transaccion ;;
  }

  dimension: tipo_transferencia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_transferencia_key ;;
  }

  dimension: usuario_transaccion {
    type: string
    sql: ${TABLE}.usuario_transaccion ;;
  }

  dimension: min_fecha_key_dim {
    type: number
    sql: (SELECT MIN(f.fecha_key) FROM fct_transacciones t left join lkp_fechas f ON t.fecha_key = f.fecha_key) ;;
  }

  dimension: min_fecha_date_dim {
    type: number
    sql: (SELECT LEFT(CAST(MIN(f.fecha) AS STRING), 10) FROM fct_transacciones t left join lkp_fechas f ON t.fecha_key = f.fecha_key) ;;
  }

  measure: sum_importe_transaccion_mn {
    type: sum
    sql: ${importe_transaccion_mn} ;;
  }

  measure: sum_cantidad_transacciones {
    type: sum
    sql: ${cantidad_transacciones} ;;
  }

  measure: min_fecha_key {
    type: min
    sql: ${lkp_fechas.fecha_key} ;;
  }

  measure: min_fecha_date {
    type: min
    sql: ${lkp_fechas.fecha_date} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
