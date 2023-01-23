connection: "gcp-dw-desa"

include: "/views_dev/**/*.view"
include: "/views_agregadas/**/*.view"
include: "/views_pdt/**/*.view"

datagroup: plan_sueldo_datagroup {
  sql_trigger: SELECT MAX(fecha_key) FROM fct_situaciones_indicadores_plan_sueldos ;;
  max_cache_age: "24 hour"
}

datagroup: transacciones_y_acred_conv_datagroup {
  sql_trigger: SELECT MAX(fecha_key) FROM fct_transacciones ;;
  max_cache_age: "24 hour"
}

datagroup: relaciones_convenio_datagroup {
  sql_trigger: SELECT MAX(capita_key) FROM lkp_capitas_plan_sueldo ;;
  max_cache_age: "24 hour"
}

datagroup: cross_sell_datagroup {
  sql_trigger: SELECT MAX(fecha_key) FROM fct_situaciones_personas_fisicas ;;
  max_cache_age: "24 hour"
}

explore: Plan_Sueldo {
  persist_with: plan_sueldo_datagroup
  from: fct_situaciones_indicadores_plan_sueldos
  #sql_always_where: ${lkp_fechas.periodo} >= "2021-01" ;;
  sql_always_where: ${mayor_a_fecha_minima} AND {% if lkp_fechas.periodo_actual_versus_periodo_anterior._in_query %} ${lkp_fechas.periodo_actual_versus_periodo_anterior} is not null {% else %} 1=1 {% endif %} ;;
  join: lkp_fechas {
    type: inner
    sql_on: ${lkp_fechas.fecha_key} = ${fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${lkp_clientes_completa.cliente_key} = ${lkp_capitas_plan_sueldo.cliente_convenio_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas_cliente{
    type: inner
    sql_on: ${lkp_bancas_cliente.banca_key} = ${lkp_clientes_completa.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuenta {
    type:  inner
    sql_on: ${lkp_oficiales_cuenta.oficial_cuenta_key} = ${lkp_clientes_completa.oficial_cuenta_key};;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_sucursales_radicacion.sucursal_radicacion_key} = ${lkp_clientes_completa.sucursal_radicacion_key}  ;;
    relationship: many_to_one
  }
  join: fct_situaciones_estados_capita_ps {
    type: inner
    sql_on: ${fct_situaciones_estados_capita_ps.capita_key} = ${capita_key}
      and ${fct_situaciones_estados_capita_ps.fecha_key} = ${fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_capitas_plan_sueldo {
    type: inner
    sql_on: ${lkp_capitas_plan_sueldo.capita_key} = ${fct_situaciones_estados_capita_ps.capita_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_ps {
    type: inner
    sql_on: ${lkp_estados_ps.estado_monitor_ps_key} = ${fct_situaciones_estados_capita_ps.estado_monitor_ps_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa_convenio {
    from: lkp_clientes_completa
    type: inner
    sql_on: ${lkp_capitas_plan_sueldo.cliente_convenio_key} = ${lkp_clientes_completa_convenio.cliente_key};;
    relationship: many_to_one
  }
  join: lkp_clientes_completa_capita {
    from: lkp_clientes_completa
    type: inner
    sql_on: ${lkp_capitas_plan_sueldo.cliente_capita_key} = ${lkp_clientes_completa_capita.cliente_key} ;;
    relationship: many_to_one
  }
}

explore: transacciones {
  persist_with: transacciones_y_acred_conv_datagroup
  label: "Acreditaciones"
  from: fct_transacciones
  sql_always_where: ${lkp_fechas.periodo} >= "2021-01" ;;
  join: lkp_causales {
    type: inner
    sql_on: ${transacciones.causal_key} = ${lkp_causales.causal_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${transacciones.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_transferencia {
    type: inner
    sql_on: ${transacciones.tipo_transferencia_key} = ${lkp_tipos_transferencia.tipo_transferencia_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${transacciones.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${lkp_cuentas.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
}

explore: relaciones_convenios {
  persist_with: relaciones_convenio_datagroup
  from: lkp_capitas_plan_sueldo
  join: lkp_fechas_alta_capita_key {
    from: lkp_fechas
    type: inner
    sql_on: ${relaciones_convenios.fecha_alta_capita_key} = ${lkp_fechas_alta_capita_key.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa_convenio {
    from: lkp_clientes_completa
    type: inner
    sql_on: ${relaciones_convenios.cliente_convenio_key} = ${lkp_clientes_completa_convenio.cliente_key};;
    relationship: many_to_one
  }
  join: lkp_clientes_completa_capita {
    from: lkp_clientes_completa
    type: inner
    sql_on: ${relaciones_convenios.cliente_capita_key} = ${lkp_clientes_completa_capita.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_convenios_cuenta {
    type: inner
    sql_on: ${relaciones_convenios.capita_key} = ${lkp_convenios_cuenta.capita_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${lkp_convenios_cuenta.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_convenios {
    type: inner
    sql_on: ${lkp_convenios_cuenta.convenio_key} = ${lkp_convenios.convenio_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_convenios_cuenta {
    type: inner
    sql_on: ${lkp_convenios_cuenta.estado_convenio_cuenta_key} = ${lkp_convenios_cuenta.estado_convenio_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas_ultimo_estado_key {
    from: lkp_fechas
    type: inner
    sql_on: ${lkp_fechas_ultimo_estado_key.fecha_key} = ${lkp_convenios_cuenta.fecha_ultimo_estado_key} ;;
    relationship: many_to_one
  }
}

explore: acreditaciones_convenio {
  persist_with: transacciones_y_acred_conv_datagroup
}

explore: cross_sell_empleado {
  persist_with: cross_sell_datagroup
  sql_always_where: ${lkp_fechas.periodo} >= "2021-01" ;;
  join: lkp_fechas {
    type: left_outer
    sql_on: ${cross_sell_empleado.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
}

explore: cross_sell_empleador {
  persist_with: cross_sell_datagroup
  sql_always_where: ${lkp_fechas.periodo} >= "2021-01" ;;
  join: lkp_fechas {
    type: left_outer
    sql_on: ${cross_sell_empleador.fecha_key} = ${lkp_fechas.fecha_key};;
    relationship: many_to_one
  }
}

explore: lkp_convenios_cuenta {}
