connection: "migracion_looker"

include: "/views/**/*.view"
#include: "/views_agregadas/**/*.view"
#include: "/views_pdt/**/*.view"

explore: clientes_activos_y_digitales {
  from: fct_situaciones_personas_fisicas
  sql_always_where: ${indice_cross_sell} > 0 ;;
  join: pdt_indicadores_digitales {
    view_label: "Indicadores Digitales"
    type: left_outer
    sql_on: ${clientes_activos_y_digitales.cliente_key} = ${pdt_indicadores_digitales.cliente_key} AND ${clientes_activos_y_digitales.fecha_key} = ${pdt_indicadores_digitales.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas{
    view_label: "Fechas"
    type: left_outer
    sql_on: ${lkp_fechas.fecha_key} = ${clientes_activos_y_digitales.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    view_label: "Sucursales Radicación"
    type: left_outer
    sql_on: ${lkp_sucursales_radicacion.sucursal_radicacion_key} = ${clientes_activos_y_digitales.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    view_label: "Clientes Completa"
    type: left_outer
    sql_on: ${lkp_clientes_completa.cliente_key} = ${clientes_activos_y_digitales.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas_cliente {
    view_label: "Bancas Cliente"
    type: left_outer
    sql_on: ${lkp_bancas_cliente.banca_key} = ${lkp_clientes_completa.banca_comite_key} ;;
    relationship: many_to_one
  }
}
