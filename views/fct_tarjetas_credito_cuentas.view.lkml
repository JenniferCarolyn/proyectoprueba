view: fct_tarjetas_credito_cuentas {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.fct_tarjetas_credito_cuentas`
    ;;

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: campania_key {
    hidden: yes
    type: number
    sql: ${TABLE}.campania_key ;;
  }

  dimension: cantidad_tarjetas {
    type: number
    sql: ${TABLE}.cantidad_tarjetas ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: codigo_inhabilitacion_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.codigo_inhabilitacion_tc_key ;;
  }

  dimension: cuenta_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_tc_key ;;
  }

  dimension: estado_tarjeta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_tarjeta_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: habilitacion_atm_key {
    hidden: yes
    type: number
    sql: ${TABLE}.habilitacion_atm_key ;;
  }

  dimension: nir {
    type: number
    sql: ${TABLE}.nir ;;
  }

  dimension: porc_limite_adelantos {
    type: number
    sql: ${TABLE}.porc_limite_adelantos ;;
  }

  dimension: porc_limite_compra {
    type: number
    sql: ${TABLE}.porc_limite_compra ;;
  }

  dimension: porc_limite_compra_cuotas {
    type: number
    sql: ${TABLE}.porc_limite_compra_cuotas ;;
  }

  dimension: porc_limite_cuenta {
    type: number
    sql: ${TABLE}.porc_limite_cuenta ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: tarjeta_credito_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tarjeta_credito_key ;;
  }

  dimension: tipo_relacion {
    type: string
    sql: ${TABLE}.tipo_relacion ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
