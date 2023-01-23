connection: "migracion_looker"
label: "Valoracion"

# include all the views
include: "/views/**/*.view"
include: "/views_agregadas/**/*.view"
include: "/views_pdt/**/*.view"


datagroup: dlw_bma_default_datagroup {
  sql_trigger: SELECT MAX(fecha_key) FROM fct_situacion_acumulada_valoracion;;
  max_cache_age: "24 hour"
}


persist_with: dlw_bma_default_datagroup


explore: valoracion_generico {
  from: fct_situacion_acumulada_valoracion
  sql_always_where: ${lkp_fechas.periodo} >= "2021-01" ;;
  always_filter: {
    filters: [lkp_clientes_completa.codigo_cliente: ""]
  }
  view_label: "Fct Situacion Acumulada Valoracion"
  join: lkp_bancas_cliente {
    view_label: "Situacion Acumulada Valoración"
    type: inner
    sql_on: ${banca_key} = ${lkp_bancas_cliente.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_conceptos_valoracion {
    view_label: "Conceptos Valoración"
    type: inner
    sql_on: ${concepto_valoracion_key} = ${lkp_conceptos_valoracion.concepto_valoracion_key} ;;
    relationship: many_to_one
  }
  join: lkp_conceptos_valoracion_agrupaciones {
    view_label: "Conceptos Agrupados Valoración"
    type: inner
    sql_on: ${concepto_valoracion_key} = ${lkp_conceptos_valoracion_agrupaciones.concepto_valoracion_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    view_label: "Datos Clientes"
    type: inner
    sql_on: ${cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    view_label: "Datos Tiempo"
    type: inner
    sql_on: ${fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuenta {
    view_label: "Datos Oficial"
    type: left_outer
    sql_on: ${oficial_cliente_key} = ${lkp_oficiales_cuenta.oficial_cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    view_label: "Datos Sucursal"
    type: inner
    sql_on: ${sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
}
