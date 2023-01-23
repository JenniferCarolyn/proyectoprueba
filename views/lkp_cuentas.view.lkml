view: lkp_cuentas {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_cuentas`
    ;;

  dimension: abono_key {
    hidden: yes
    type: number
    sql: ${TABLE}.abono_key ;;
  }

  dimension: actividad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.actividad_key ;;
  }

  dimension: acuerdo_key {
    hidden: yes
    type: number
    sql: ${TABLE}.acuerdo_key ;;
  }

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

  dimension: categoria_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.categoria_cuenta_key ;;
  }

  dimension: causa_cierre_key {
    hidden: yes
    type: number
    sql: ${TABLE}.causa_cierre_key ;;
  }

  dimension: cbu {
    type: string
    sql: ${TABLE}.cbu ;;
  }

  dimension: certificado {
    type: string
    sql: ${TABLE}.certificado ;;
  }

  dimension: cliente_key {
    hidden: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: codigo_cliente {
    type: number
    sql: ${TABLE}.codigo_cliente ;;
  }

  dimension: codigo_cuenta {
    type: string
    sql: ${TABLE}.codigo_cuenta ;;
  }

  dimension: compania_seguro_vida_key {
    hidden: yes
    type: number
    sql: ${TABLE}.compania_seguro_vida_key ;;
  }

  dimension: cuenta_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.cuenta_key ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension_group: fecha_alta {
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
    sql: ${TABLE}.fecha_alta ;;
  }

  dimension_group: fecha_baja {
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
    sql: ${TABLE}.fecha_baja ;;
  }

  dimension_group: fecha_ultimo_movimiento {
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
    sql: ${TABLE}.fecha_ultimo_movimiento ;;
  }

  dimension_group: fecha_vencimiento {
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
    sql: ${TABLE}.fecha_vencimiento ;;
  }

  dimension: inactividad_key {
    hidden: yes
    type: number
    sql: ${TABLE}.inactividad_key ;;
  }

  dimension: oficial_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.oficial_cuenta_key ;;
  }

  dimension: plazo {
    type: number
    sql: ${TABLE}.plazo ;;
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

  dimension: restringido {
    type: string
    sql: ${TABLE}.restringido ;;
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

  dimension: tasa {
    type: number
    sql: ${TABLE}.tasa ;;
  }

  dimension: tipo_cartera_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_cartera_key ;;
  }

  dimension: tipo_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.tipo_cuenta_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: count_cod_capita {
    type: count_distinct
    sql: ${codigo_cliente} ;;
  }
}
