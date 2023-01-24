view: lkp_plan_cuentas {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_plan_cuentas`
    ;;

  dimension: agrupacion_1 {
    type: string
    sql: ${TABLE}.agrupacion_1 ;;
  }

  dimension: agrupacion_2 {
    type: string
    sql: ${TABLE}.agrupacion_2 ;;
  }

  dimension: agrupacion_3 {
    type: string
    sql: ${TABLE}.agrupacion_3 ;;
  }

  dimension: agrupacion_4 {
    type: string
    sql: ${TABLE}.agrupacion_4 ;;
  }

  dimension: agrupacion_comisiones_1 {
    type: string
    sql: ${TABLE}.agrupacion_comisiones_1 ;;
  }

  dimension: agrupacion_contabilidad_1 {
    type: string
    sql: ${TABLE}.agrupacion_contabilidad_1 ;;
  }

  dimension: agrupacion_contabilidad_2 {
    type: string
    sql: ${TABLE}.agrupacion_contabilidad_2 ;;
  }

  dimension: agrupacion_gastos_1 {
    type: string
    sql: ${TABLE}.agrupacion_gastos_1 ;;
  }

  dimension: agrupacion_gastos_2 {
    type: string
    sql: ${TABLE}.agrupacion_gastos_2 ;;
  }

  dimension: bloqueo {
    type: string
    sql: ${TABLE}.bloqueo ;;
  }

  dimension: capitulo {
    type: string
    sql: ${TABLE}.capitulo ;;
  }

  dimension: codigo_cuenta {
    type: string
    sql: ${TABLE}.codigo_cuenta ;;
  }

  dimension: codigo_moneda {
    type: number
    sql: ${TABLE}.codigo_moneda ;;
  }

  dimension: cuenta_contable {
    type: string
    sql: ${TABLE}.cuenta_contable ;;
  }

  dimension: inventario {
    type: string
    sql: ${TABLE}.inventario ;;
  }

  dimension: moneda_residencia {
    type: string
    sql: ${TABLE}.moneda_residencia ;;
  }

  dimension: movimiento {
    type: string
    sql: ${TABLE}.movimiento ;;
  }

  dimension: naturaleza_cuenta {
    type: string
    sql: ${TABLE}.naturaleza_cuenta ;;
  }

  dimension: nivel {
    type: number
    sql: ${TABLE}.nivel ;;
  }

  dimension: nombre_cuenta {
    type: string
    sql: ${TABLE}.nombre_cuenta ;;
  }

  dimension: otros_atributos {
    type: string
    sql: ${TABLE}.otros_atributos ;;
  }

  dimension: plan_cuentas_key {
    hidden: yes
    type: number
    sql: ${TABLE}.plan_cuentas_key ;;
  }

  dimension: publica {
    type: string
    sql: ${TABLE}.publica ;;
  }

  dimension: rubro {
    type: string
    sql: ${TABLE}.rubro ;;
  }

  dimension: sector_responsable_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sector_responsable_key ;;
  }

  dimension: uso_cuenta {
    type: string
    sql: ${TABLE}.uso_cuenta ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
