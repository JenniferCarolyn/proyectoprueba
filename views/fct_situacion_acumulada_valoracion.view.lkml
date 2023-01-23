view: fct_situacion_acumulada_valoracion {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.fct_situacion_acumulada_valoracion`
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

  dimension: cant_meses_anio {
    type: number
    sql: ${TABLE}.cant_meses_anio ;;
  }

  dimension: cant_meses_ultimos_12 {
    type: number
    sql: ${TABLE}.cant_meses_ultimos_12 ;;
  }

  dimension: cant_meses_ultimos_3 {
    type: number
    sql: ${TABLE}.cant_meses_ultimos_3 ;;
  }

  dimension: cant_meses_ultimos_6 {
    type: number
    sql: ${TABLE}.cant_meses_ultimos_6 ;;
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

  dimension: excluido {
    type: string
    sql: ${TABLE}.excluido ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: oficial_cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cliente_key ;;
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

  dimension: sucursal_radicacion_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_radicacion_key ;;
  }

  dimension: valor_convenio_anio {
    type: number
    sql: ${TABLE}.valor_convenio_anio ;;
  }

  dimension: valor_convenio_mes {
    type: number
    sql: ${TABLE}.valor_convenio_mes ;;
  }

  dimension: valor_convenio_ultimos_12 {
    type: number
    sql: ${TABLE}.valor_convenio_ultimos_12 ;;
  }

  dimension: valor_convenio_ultimos_3 {
    type: number
    sql: ${TABLE}.valor_convenio_ultimos_3 ;;
  }

  dimension: valor_convenio_ultimos_6 {
    type: number
    sql: ${TABLE}.valor_convenio_ultimos_6 ;;
  }

  dimension: valor_propio_anio {
    type: number
    sql: ${TABLE}.valor_propio_anio ;;
  }

  dimension: valor_propio_mes {
    type: number
    sql: ${TABLE}.valor_propio_mes ;;
  }

  dimension: valor_propio_ultimos_12 {
    type: number
    sql: ${TABLE}.valor_propio_ultimos_12 ;;
  }

  dimension: valor_propio_ultimos_3 {
    type: number
    sql: ${TABLE}.valor_propio_ultimos_3 ;;
  }

  dimension: valor_propio_ultimos_6 {
    type: number
    sql: ${TABLE}.valor_propio_ultimos_6 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
