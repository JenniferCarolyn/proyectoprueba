view: fct_transacciones_diferidas_tc {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.fct_transacciones_diferidas_tc`
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

  dimension: cantidad_cuotas {
    type: number
    sql: ${TABLE}.cantidad_cuotas ;;
  }

  dimension: comercio_key {
    hidden: yes
    type: number
    sql: ${TABLE}.comercio_key ;;
  }

  dimension: cotizacion_banco {
    type: number
    sql: ${TABLE}.cotizacion_banco ;;
  }

  dimension: cuenta_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cuenta_tc_key ;;
  }

  dimension: debito_automatico {
    type: string
    sql: ${TABLE}.debito_automatico ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: fecha_cierre_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_cierre_key ;;
  }

  dimension: fecha_evento_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_evento_key ;;
  }

  dimension: fecha_generacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_generacion_key ;;
  }

  dimension: fecha_pago_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_pago_key ;;
  }

  dimension: flag_en_mes {
    type: string
    sql: ${TABLE}.flag_en_mes ;;
  }

  dimension: forma_cobro_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.forma_cobro_tc_key ;;
  }

  dimension: importe {
    type: number
    sql: ${TABLE}.importe ;;
  }

  dimension: marca_key {
    hidden: yes
    type: number
    sql: ${TABLE}.marca_key ;;
  }

  dimension: numero_operacion {
    type: number
    sql: ${TABLE}.numero_operacion ;;
  }

  dimension: producto_key {
    hidden: yes
    type: number
    sql: ${TABLE}.producto_key ;;
  }

  dimension: rubro_key {
    hidden: yes
    type: number
    sql: ${TABLE}.rubro_key ;;
  }

  dimension: tarjeta_credito_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tarjeta_credito_key ;;
  }

  dimension: tipo_movimiento_tc_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_movimiento_tc_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
