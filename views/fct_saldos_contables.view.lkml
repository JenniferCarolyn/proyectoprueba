view: fct_saldos_contables {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.fct_saldos_contables`
    ;;

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: especie_key {
    hidden: yes
    type: number
    sql: ${TABLE}.especie_key ;;
  }

  dimension: fecha_key {
    hidden: yes
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: neto_mes_me {
    type: number
    sql: ${TABLE}.neto_mes_me ;;
  }

  dimension: neto_mes_mn {
    type: number
    sql: ${TABLE}.neto_mes_mn ;;
  }

  dimension: plan_cuentas_key {
    hidden: yes
    type: number
    sql: ${TABLE}.plan_cuentas_key ;;
  }

  dimension: promedio_me {
    type: number
    sql: ${TABLE}.promedio_me ;;
  }

  dimension: promedio_mn {
    type: number
    sql: ${TABLE}.promedio_mn ;;
  }

  dimension: saldo_me {
    type: number
    sql: ${TABLE}.saldo_me ;;
  }

  dimension: saldo_mn {
    type: number
    sql: ${TABLE}.saldo_mn ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
