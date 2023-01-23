view: lkp_convenios {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_convenios`
    ;;

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: calificacion {
    type: string
    sql: ${TABLE}.calificacion ;;
  }

  dimension: causal_caja_ahorro {
    type: string
    sql: ${TABLE}.causal_caja_ahorro ;;
  }

  dimension: causal_cuenta_corriente {
    type: number
    sql: ${TABLE}.causal_cuenta_corriente ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: comportamiento_caja_ahorro {
    type: string
    sql: ${TABLE}.comportamiento_caja_ahorro ;;
  }

  dimension: comportamiento_cuenta_corriente {
    type: string
    sql: ${TABLE}.comportamiento_cuenta_corriente ;;
  }

  dimension: convenio {
    type: string
    sql: ${TABLE}.convenio ;;
  }

  dimension: convenio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.convenio_key ;;
  }

  dimension: coparticipable {
    type: string
    sql: ${TABLE}.coparticipable ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: debita_comision {
    type: string
    sql: ${TABLE}.debita_comision ;;
  }

  dimension: debito_automatico {
    type: string
    sql: ${TABLE}.debito_automatico ;;
  }

  dimension: desplazamiento_central {
    type: number
    sql: ${TABLE}.desplazamiento_central ;;
  }

  dimension: desplazamiento_general {
    type: string
    sql: ${TABLE}.desplazamiento_general ;;
  }

  dimension: destino_fondos {
    type: string
    sql: ${TABLE}.destino_fondos ;;
  }

  dimension: distribucion_comision {
    type: string
    sql: ${TABLE}.distribucion_comision ;;
  }

  dimension: duracion_convenio {
    type: number
    sql: ${TABLE}.duracion_convenio ;;
  }

  dimension: especie_key {
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: esquema_comision {
    type: string
    sql: ${TABLE}.esquema_comision ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension_group: fecha_convenio {
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
    sql: ${TABLE}.fecha_convenio ;;
  }

  dimension_group: fecha_de_fin {
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
    sql: ${TABLE}.fecha_de_fin ;;
  }

  dimension_group: fecha_de_inicio {
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
    sql: ${TABLE}.fecha_de_inicio ;;
  }

  dimension: forma_distribucion {
    type: string
    sql: ${TABLE}.forma_distribucion ;;
  }

  dimension: grupo {
    type: string
    sql: ${TABLE}.grupo ;;
  }

  dimension: grupo_contable {
    type: string
    sql: ${TABLE}.grupo_contable ;;
  }

  dimension: grupo_convenio {
    type: string
    sql: ${TABLE}.grupo_convenio ;;
  }

  dimension: grupo_convenio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.grupo_convenio_key ;;
  }

  dimension: minimo_liquidacion {
    type: number
    sql: ${TABLE}.minimo_liquidacion ;;
  }

  dimension: minimo_mensual {
    type: number
    sql: ${TABLE}.minimo_mensual ;;
  }

  dimension: numero_convenio {
    type: string
    sql: ${TABLE}.numero_convenio ;;
  }

  dimension: peridiocidad_rendicion {
    type: string
    sql: ${TABLE}.peridiocidad_rendicion ;;
  }

  dimension: porcentaje_administradora {
    type: number
    sql: ${TABLE}.porcentaje_administradora ;;
  }

  dimension: porcentaje_sucursal_cobradoras {
    type: number
    sql: ${TABLE}.porcentaje_sucursal_cobradoras ;;
  }

  dimension: porcentaje_sucursal_convenio {
    type: number
    sql: ${TABLE}.porcentaje_sucursal_convenio ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: productos_asociados {
    type: string
    sql: ${TABLE}.productos_asociados ;;
  }

  dimension: renovacion_automatica {
    type: string
    sql: ${TABLE}.renovacion_automatica ;;
  }

  dimension: servicios_asociados {
    type: string
    sql: ${TABLE}.servicios_asociados ;;
  }

  dimension: sucursal_administradora {
    type: number
    sql: ${TABLE}.sucursal_administradora ;;
  }

  dimension: sucursal_convenio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_convenio_key ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }

  dimension: tipo_convenio {
    type: string
    sql: ${TABLE}.tipo_convenio ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
