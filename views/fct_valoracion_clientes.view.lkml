view: fct_valoracion_clientes {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.fct_valoracion_clientes`
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

  dimension: concepto_valoracion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.concepto_valoracion_key ;;
  }

  dimension: cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: cuenta_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_tc_key ;;
  }

  dimension: excluido {
    type: string
    sql: ${TABLE}.excluido ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: fuente_valor_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fuente_valor_key ;;
  }

  dimension: motivo_exclusion {
    type: string
    sql: ${TABLE}.motivo_exclusion ;;
  }

  dimension: oficial_cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cliente_key ;;
  }

  dimension: paquete_id {
    type: string
    sql: ${TABLE}.paquete_id ;;
  }

  dimension: plan_cuentas_key {
    hidden: yes
    type: number
    sql: ${TABLE}.plan_cuentas_key ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: residencia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.residencia_key ;;
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

  dimension: sucursal_radicacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_radicacion_key ;;
  }

  dimension: tipo_valor_relacional_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_valor_relacional_key ;;
  }

  dimension: valor_convenio {
    type: number
    sql: ${TABLE}.valor_convenio ;;
  }

  dimension: valor_cuenta {
    type: number
    sql: ${TABLE}.valor_cuenta ;;
  }

  dimension: valor_propio {
    type: number
    sql: ${TABLE}.valor_propio ;;
  }

  dimension: valor_titular {
    type: number
    sql: ${TABLE}.valor_titular ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
