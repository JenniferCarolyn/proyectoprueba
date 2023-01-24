view: lkp_mezcla_productos {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_mezcla_productos`
    ;;

  dimension: acuerdo {
    type: number
    sql: ${TABLE}.acuerdo ;;
  }

  dimension: caja_ahorro {
    type: number
    sql: ${TABLE}.caja_ahorro ;;
  }

  dimension: caja_seguridad {
    type: number
    sql: ${TABLE}.caja_seguridad ;;
  }

  dimension: cuenta_corriente {
    type: number
    sql: ${TABLE}.cuenta_corriente ;;
  }

  dimension: macroadelanto {
    type: number
    sql: ${TABLE}.macroadelanto ;;
  }

  dimension: macrocuenta {
    type: number
    sql: ${TABLE}.macrocuenta ;;
  }

  dimension: mezcla_productos_key {
    hidden: yes
    type: number
    sql: ${TABLE}.mezcla_productos_key ;;
  }

  dimension: otros_prestamos {
    type: number
    sql: ${TABLE}.otros_prestamos ;;
  }

  dimension: plazo_fijo {
    type: number
    sql: ${TABLE}.plazo_fijo ;;
  }

  dimension: prestamos {
    type: number
    sql: ${TABLE}.prestamos ;;
  }

  dimension: prestamos_personales {
    type: number
    sql: ${TABLE}.prestamos_personales ;;
  }

  dimension: seguros {
    type: number
    sql: ${TABLE}.seguros ;;
  }

  dimension: seguros_acc_per {
    type: number
    sql: ${TABLE}.seguros_acc_per ;;
  }

  dimension: seguros_acc_per_jub {
    type: number
    sql: ${TABLE}.seguros_acc_per_jub ;;
  }

  dimension: seguros_atm {
    type: number
    sql: ${TABLE}.seguros_atm ;;
  }

  dimension: seguros_auto {
    type: number
    sql: ${TABLE}.seguros_auto ;;
  }

  dimension: seguros_cons_garan {
    type: number
    sql: ${TABLE}.seguros_cons_garan ;;
  }

  dimension: seguros_desemp_prest {
    type: number
    sql: ${TABLE}.seguros_desemp_prest ;;
  }

  dimension: seguros_desempleo {
    type: number
    sql: ${TABLE}.seguros_desempleo ;;
  }

  dimension: seguros_hogar {
    type: number
    sql: ${TABLE}.seguros_hogar ;;
  }

  dimension: seguros_macro_edu {
    type: number
    sql: ${TABLE}.seguros_macro_edu ;;
  }

  dimension: seguros_macro_protec {
    type: number
    sql: ${TABLE}.seguros_macro_protec ;;
  }

  dimension: seguros_otros {
    type: number
    sql: ${TABLE}.seguros_otros ;;
  }

  dimension: seguros_otros_seg {
    type: number
    sql: ${TABLE}.seguros_otros_seg ;;
  }

  dimension: seguros_otrosvida {
    type: number
    sql: ${TABLE}.seguros_otrosvida ;;
  }

  dimension: seguros_pagos_proteg {
    type: number
    sql: ${TABLE}.seguros_pagos_proteg ;;
  }

  dimension: seguros_patrimoniales {
    type: number
    sql: ${TABLE}.seguros_patrimoniales ;;
  }

  dimension: seguros_sepelio {
    type: number
    sql: ${TABLE}.seguros_sepelio ;;
  }

  dimension: seguros_serv_asist {
    type: number
    sql: ${TABLE}.seguros_serv_asist ;;
  }

  dimension: seguros_via_publica {
    type: number
    sql: ${TABLE}.seguros_via_publica ;;
  }

  dimension: seguros_vida {
    type: number
    sql: ${TABLE}.seguros_vida ;;
  }

  dimension: tarjeta_credito {
    type: number
    sql: ${TABLE}.tarjeta_credito ;;
  }

  dimension: tarjeta_debito {
    type: number
    sql: ${TABLE}.tarjeta_debito ;;
  }

  dimension: tc_amex {
    type: number
    sql: ${TABLE}.tc_amex ;;
  }

  dimension: tc_makro {
    type: number
    sql: ${TABLE}.tc_makro ;;
  }

  dimension: tc_master {
    type: number
    sql: ${TABLE}.tc_master ;;
  }

  dimension: tc_visa {
    type: number
    sql: ${TABLE}.tc_visa ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
