view: lkp_fechas {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_fechas`
    ;;

# PARÁMETROS



  parameter: select_timeframe {
    type: unquoted
    default_value: "month"
    allowed_value: {
      value: "year"
      label: "Years"
    }
    allowed_value: {
      value: "month"
      label: "Months"
    }
  }

  parameter: select_reference_date {
    type: date
    convert_tz: no
  }

  dimension_group: current_timestamp {
    hidden: yes
    type: time
    timeframes: [raw,date,hour_of_day,day_of_week_index,day_of_month,day_of_year]
    convert_tz: yes
    sql: CURRENT_TIMESTAMP() ;;
  }

  dimension: periodo_actual_versus_periodo_anterior {
    type: string
    sql:
    CASE
      WHEN DATE_TRUNC(${fecha_date}, month) = DATE_TRUNC(CAST({% if select_reference_date._is_filtered %}{% parameter select_reference_date %} {% else %} ${current_timestamp_date}{% endif %} as DATE), month)
        THEN '{% if select_reference_date._is_filtered %}Reference {% else %}Current {% endif %} {% parameter select_timeframe %}'
      WHEN DATE_TRUNC(${fecha_date},  month) = DATE_TRUNC(DATE_SUB(CAST({% if select_reference_date._is_filtered %}{% parameter select_reference_date %} {% else %} ${current_timestamp_date}{% endif %} as DATE), INTERVAL 1 {% parameter select_timeframe %}), month)
        THEN "Previous {% parameter select_timeframe %}"
      ELSE NULL
    END
    ;;
  }

  dimension: periodo_actual_versus_diciembre_anterior {
    type: string
    sql:
    CASE
      WHEN DATE_TRUNC(${fecha_date}, month) = DATE_TRUNC(CAST({% if select_reference_date._is_filtered %}{% parameter select_reference_date %} {% else %} ${current_timestamp_date}{% endif %} as DATE), month)
        THEN '{% if select_reference_date._is_filtered %}Reference {% else %}Current {% endif %} {% parameter select_timeframe %}'
      WHEN DATE_TRUNC(${fecha_date},  month) = DATE_TRUNC({% if select_reference_date._is_filtered %} (SELECT distinct f.fecha FROM fct_situaciones_indicadores_plan_sueldos ps LEFT JOIN lkp_fechas f ON ps.fecha_key = f.fecha_key WHERE f.n_mes = 12 AND anio = EXTRACT(YEAR FROM DATE_SUB(${fecha_date}, INTERVAL 1 YEAR))) {% else %} ${current_timestamp_date} {% endif %}, month)
        THEN "December"
      ELSE NULL
    END
    ;;
  }



# PARÁMETROS

  filter: periodo_actual_periodo_anterior_ps {
    sql: ${periodo} = CAST(FORMAT_DATE("%Y-%m", (SELECT MAX(f.fecha) FROM fct_situaciones_indicadores_plan_sueldos ps
         LEFT JOIN lkp_fechas f ON ps.fecha_key = f.fecha_key)) as STRING) OR ${periodo} = CAST(FORMAT_DATE("%Y-%m", DATE_SUB((SELECT CAST(MAX(f.fecha) AS DATETIME) FROM fct_situaciones_indicadores_plan_sueldos ps
         LEFT JOIN lkp_fechas f ON ps.fecha_key = f.fecha_key), INTERVAL 1 MONTH)) as STRING) ;;
  }

  filter: periodo_actual_mismo_periodo_anio_anterior_ps {
    sql: ${periodo} = CAST(FORMAT_DATE("%Y-%m", (SELECT MAX(f.fecha) FROM fct_situaciones_indicadores_plan_sueldos ps
         LEFT JOIN lkp_fechas f ON ps.fecha_key = f.fecha_key)) as STRING) OR ${periodo} = CAST(FORMAT_DATE("%Y-%m", DATE_SUB((SELECT CAST(MAX(f.fecha) AS DATETIME) FROM fct_situaciones_indicadores_plan_sueldos ps
         LEFT JOIN lkp_fechas f ON ps.fecha_key = f.fecha_key), INTERVAL 1 YEAR)) as STRING) ;;
  }

  filter: periodo_actual_ultimo_periodo_anio_anterior_ps {
    sql: ${periodo} = CAST(FORMAT_DATE("%Y-%m", (SELECT MAX(f.fecha) FROM fct_situaciones_indicadores_plan_sueldos ps
         LEFT JOIN lkp_fechas f ON ps.fecha_key = f.fecha_key)) as STRING) OR ${periodo} = (SELECT distinct f.periodo FROM fct_situaciones_indicadores_plan_sueldos ps
         LEFT JOIN lkp_fechas f ON ps.fecha_key = f.fecha_key
         WHERE f.n_mes = 12 AND anio = EXTRACT(YEAR FROM DATE_SUB(CURRENT_DATE, INTERVAL 1 YEAR))) ;;
  }

  filter: fecha_maxima {
    sql: ${fecha_key} = (SELECT MAX(f.fecha_key) FROM fct_situaciones_personas_fisicas cse
      LEFT JOIN lkp_fechas f ON cse.fecha_key = f.fecha_key) ;;
  }

  filter: fecha_maxima_cash_management {
    sql: ${periodo} = (SELECT MAX(f.periodo) FROM cash_management cse
      LEFT JOIN lkp_fechas f ON cse.fecha_key = f.fecha_key) ;;
  }

# (SELECT f.periodo FROM cash_management cse LEFT JOIN lkp_fechas f ON cse.fecha_key = f.fecha_key WHERE (f.anio = EXTRACT(YEAR FROM CURRENT_DATE() - 1) AND f.n_mes = 01) ;;

  filter: seis_meses_o_menos {
    sql: ${fecha_date} > ${fecha_6_meses_atras} ;;
  }

  filter: doce_meses_o_menos {
    sql: ${fecha_date} > ${fecha_12_meses_atras} ;;
  }

  filter: mes_actual {
    sql: ${fecha_month} = EXTRACT(MONTH FROM CURRENT_DATE()) ;;
  }

  dimension: anio {
    type: number
    sql: ${TABLE}.anio ;;
  }

  dimension: anio_presupuestario {
    type: string
    sql: ${TABLE}.anio_presupuestario ;;
  }

  dimension: dia_semana {
    type: string
    sql: ${TABLE}.dia_semana ;;
  }

  dimension_group: fecha {
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
    sql: ${TABLE}.fecha ;;
  }

  dimension_group: fecha_fin_anio_anterior {
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
    sql: ${TABLE}.fecha_fin_anio_anterior ;;
  }

  dimension: fecha_fin_anio_anterior_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_fin_anio_anterior_key ;;
  }

  dimension_group: fecha_fin_mes_anterior {
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
    sql: ${TABLE}.fecha_fin_mes_anterior ;;
  }

  dimension: fecha_fin_mes_anterior_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_fin_mes_anterior_key ;;
  }

  dimension_group: fecha_fin_trim_anterior {
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
    sql: ${TABLE}.fecha_fin_trim_anterior ;;
  }

  dimension: fecha_fin_trim_anterior_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_fin_trim_anterior_key ;;
  }

  dimension_group: fecha_habil_anterior {
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
    sql: ${TABLE}.fecha_habil_anterior ;;
  }

  dimension: fecha_habil_anterior_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_habil_anterior_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension_group: fin_anio_ant_de_mes_ant {
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
    sql: ${TABLE}.fin_anio_ant_de_mes_ant ;;
  }

  dimension: fin_anio_ant_de_mes_ant_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fin_anio_ant_de_mes_ant_key ;;
  }

  dimension: flag_fin_mes {
    type: string
    sql: ${TABLE}.flag_fin_mes ;;
  }

  dimension: mes {
    type: string
    sql: ${TABLE}.mes ;;
  }

  dimension: multiplicador {
    type: number
    sql: ${TABLE}.multiplicador ;;
  }

  dimension: n_dia {
    type: number
    sql: ${TABLE}.n_dia ;;
  }

  dimension: n_dia_semana {
    type: number
    sql: ${TABLE}.n_dia_semana ;;
  }

  dimension: n_mes {
    type: number
    sql: ${TABLE}.n_mes ;;
  }

  dimension: periodo {
    type: string
    sql: ${TABLE}.periodo ;;
  }

  dimension: periodo_anterior {
    type: string
    sql: DATE_SUB(${fecha_raw}, INTERVAL 1 MONTH) ;;
  }

  dimension: tipo_dia {
    type: string
    sql: ${TABLE}.tipo_dia ;;
  }

  dimension: trimestre {
    type: string
    sql: ${TABLE}.trimestre ;;
  }

  dimension: trimestre_generico {
    type: string
    sql: LEFT(${trimestre}, 2) ;;
  }

  dimension_group: viernes_anterior {
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
    sql: ${TABLE}.viernes_anterior ;;
  }

  dimension: viernes_anterior_key {
    hidden: yes
    type: number
    sql: ${TABLE}.viernes_anterior_key ;;
  }

  dimension: fecha_12_meses_atras {
    type: date
    sql: DATE_SUB((SELECT MAX(f.fecha) FROM fct_situacion_acumulada_valoracion v LEFT JOIN lkp_fechas f ON v.fecha_key = f.fecha_key), INTERVAL 12 MONTH) ;;
  }

  dimension: fecha_6_meses_atras {
    type: date
    sql: DATE_SUB((SELECT MAX(f.fecha) FROM fct_situacion_acumulada_valoracion v LEFT JOIN lkp_fechas f ON v.fecha_key = f.fecha_key), INTERVAL 6 MONTH) ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
