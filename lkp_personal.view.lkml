view: lkp_personal {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_personal`
    ;;

  dimension: clasificacion_puesto {
    type: string
    sql: ${TABLE}.clasificacion_puesto ;;
  }

  dimension: correo_electronico {
    type: string
    sql: ${TABLE}.correo_electronico ;;
  }

  dimension: cuil {
    type: string
    sql: ${TABLE}.cuil ;;
  }

  dimension: dominio {
    type: string
    sql: ${TABLE}.dominio ;;
  }

  dimension_group: fecha_alta_banco {
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
    sql: ${TABLE}.fecha_alta_banco ;;
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
    sql: ${TABLE}.fecha_baja ;;
  }

  dimension_group: fecha_inicio_puesto {
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
    sql: ${TABLE}.fecha_inicio_puesto ;;
  }

  dimension_group: fecha_inicio_sector {
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
    sql: ${TABLE}.fecha_inicio_sector ;;
  }

  dimension: funcionario_restringido {
    type: string
    sql: ${TABLE}.funcionario_restringido ;;
  }

  dimension: legajo {
    type: string
    sql: ${TABLE}.legajo ;;
  }

  dimension: localidad_source {
    type: string
    sql: ${TABLE}.localidad_source ;;
  }

  dimension: login_usuario {
    type: string
    sql: ${TABLE}.login_usuario ;;
  }

  dimension: nombre_empleado {
    type: string
    sql: ${TABLE}.nombre_empleado ;;
  }

  dimension: personal_key {
    hidden: yes
    type: number
    sql: ${TABLE}.personal_key ;;
  }

  dimension: provincia_key {
    hidden: yes
    type: number
    sql: ${TABLE}.provincia_key ;;
  }

  dimension: puesto {
    type: string
    sql: ${TABLE}.puesto ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
