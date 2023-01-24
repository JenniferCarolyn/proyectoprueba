view: pdt_indicadores_digitales {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.pdt_indicadores_digitales`
    ;;

  dimension: banca_comite_key {
    type: number
    sql: ${TABLE}.banca_comite_key ;;
  }

  dimension: banca_key {
    type: number
    sql: ${TABLE}.banca_key ;;
  }

  dimension: banco_key {
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: cliente_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.cliente_key ;;
  }

  dimension: codigo_cliente {
    type: number
    sql: ${TABLE}.codigo_cliente ;;
  }

  dimension: fecha_key {
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: flag_activa_token_12m {
    type: string
    sql: ${TABLE}.flag_activa_token_12m ;;
  }

  dimension: flag_cliente_digital {
    description: "Clientes que accedieron a Banca Digital (App y/o Bca Internet) en los ultimos 90 días"
    type: number
    sql: ${TABLE}.flag_cliente_digital ;;
  }

  dimension: flag_cliente_digital_activo {
    description: "Clientes que accedieron a Banca Digital (App y/o Bca Internet) en los ultimos 30 días"
    type: number
    sql: ${TABLE}.flag_cliente_digital_activo ;;
  }

  dimension: flag_cliente_digital_activo_nuevo {
    description: "Clientes que accedieron a Banca Digital (App y/o Bca Internet) por primera vez en el mes de análisis"
    type: string
    sql: ${TABLE}.flag_cliente_digital_activo_nuevo ;;
  }

  dimension: flag_cliente_digital_inactivo {
    description: "Clientes que no accedieron a Banca Digital (App y/o Bca Internet) en el mes de análisis"
    type: number
    sql: ${TABLE}.flag_cliente_digital_inactivo ;;
  }

  dimension: flag_hb_activa_token_12m {
    type: number
    sql: ${TABLE}.flag_hb_activa_token_12m ;;
  }

  dimension: flag_hb_cliente_digital_activo_nuevo {
    type: number
    sql: ${TABLE}.flag_hb_cliente_digital_activo_nuevo ;;
  }

  dimension: flag_hb_logueo_1m {
    type: number
    sql: ${TABLE}.flag_hb_logueo_1m ;;
  }

  dimension: flag_hb_logueo_3m {
    type: number
    sql: ${TABLE}.flag_hb_logueo_3m ;;
  }

  dimension: flag_hb_tx_consultas_12m {
    type: number
    sql: ${TABLE}.flag_hb_tx_consultas_12m ;;
  }

  dimension: flag_hb_tx_consultas_1m {
    type: number
    sql: ${TABLE}.flag_hb_tx_consultas_1m ;;
  }

  dimension: flag_hb_tx_consultas_3m {
    type: number
    sql: ${TABLE}.flag_hb_tx_consultas_3m ;;
  }

  dimension: flag_hb_tx_gestiones_12m {
    type: number
    sql: ${TABLE}.flag_hb_tx_gestiones_12m ;;
  }

  dimension: flag_hb_tx_gestiones_1m {
    type: number
    sql: ${TABLE}.flag_hb_tx_gestiones_1m ;;
  }

  dimension: flag_hb_tx_gestiones_3m {
    type: number
    sql: ${TABLE}.flag_hb_tx_gestiones_3m ;;
  }

  dimension: flag_hb_tx_monetaria_12m {
    type: number
    sql: ${TABLE}.flag_hb_tx_monetaria_12m ;;
  }

  dimension: flag_hb_tx_monetaria_1m {
    type: number
    sql: ${TABLE}.flag_hb_tx_monetaria_1m ;;
  }

  dimension: flag_hb_tx_monetaria_3m {
    type: number
    sql: ${TABLE}.flag_hb_tx_monetaria_3m ;;
  }

  dimension: flag_hb_utiliza_token_12m {
    type: number
    sql: ${TABLE}.flag_hb_utiliza_token_12m ;;
  }

  dimension: flag_mb_activa_token_12m {
    type: number
    sql: ${TABLE}.flag_mb_activa_token_12m ;;
  }

  dimension: flag_mb_cliente_digital_activo_nuevo {
    type: number
    sql: ${TABLE}.flag_mb_cliente_digital_activo_nuevo ;;
  }

  dimension: flag_mb_logueo_1m {
    type: number
    sql: ${TABLE}.flag_mb_logueo_1m ;;
  }

  dimension: flag_mb_logueo_3m {
    type: number
    sql: ${TABLE}.flag_mb_logueo_3m ;;
  }

  dimension: flag_mb_tx_consultas_12m {
    type: number
    sql: ${TABLE}.flag_mb_tx_consultas_12m ;;
  }

  dimension: flag_mb_tx_consultas_1m {
    type: number
    sql: ${TABLE}.flag_mb_tx_consultas_1m ;;
  }

  dimension: flag_mb_tx_consultas_3m {
    type: number
    sql: ${TABLE}.flag_mb_tx_consultas_3m ;;
  }

  dimension: flag_mb_tx_gestiones_12m {
    type: number
    sql: ${TABLE}.flag_mb_tx_gestiones_12m ;;
  }

  dimension: flag_mb_tx_gestiones_1m {
    type: number
    sql: ${TABLE}.flag_mb_tx_gestiones_1m ;;
  }

  dimension: flag_mb_tx_gestiones_3m {
    type: number
    sql: ${TABLE}.flag_mb_tx_gestiones_3m ;;
  }

  dimension: flag_mb_tx_monetaria_12m {
    type: number
    sql: ${TABLE}.flag_mb_tx_monetaria_12m ;;
  }

  dimension: flag_mb_tx_monetaria_1m {
    type: number
    sql: ${TABLE}.flag_mb_tx_monetaria_1m ;;
  }

  dimension: flag_mb_tx_monetaria_3m {
    type: number
    sql: ${TABLE}.flag_mb_tx_monetaria_3m ;;
  }

  dimension: flag_mb_utiliza_token_12m {
    type: number
    sql: ${TABLE}.flag_mb_utiliza_token_12m ;;
  }

  dimension: flag_mm_activa_token_12m {
    type: number
    sql: ${TABLE}.flag_mm_activa_token_12m ;;
  }

  dimension: flag_mm_cliente_digital_activo_nuevo {
    type: number
    sql: ${TABLE}.flag_mm_cliente_digital_activo_nuevo ;;
  }

  dimension: flag_mm_logueo_1m {
    type: number
    sql: ${TABLE}.flag_mm_logueo_1m ;;
  }

  dimension: flag_mm_logueo_3m {
    type: number
    sql: ${TABLE}.flag_mm_logueo_3m ;;
  }

  dimension: flag_mm_tx_consultas_12m {
    type: number
    sql: ${TABLE}.flag_mm_tx_consultas_12m ;;
  }

  dimension: flag_mm_tx_consultas_1m {
    type: number
    sql: ${TABLE}.flag_mm_tx_consultas_1m ;;
  }

  dimension: flag_mm_tx_consultas_3m {
    type: number
    sql: ${TABLE}.flag_mm_tx_consultas_3m ;;
  }

  dimension: flag_mm_tx_gestiones_12m {
    type: number
    sql: ${TABLE}.flag_mm_tx_gestiones_12m ;;
  }

  dimension: flag_mm_tx_gestiones_1m {
    type: number
    sql: ${TABLE}.flag_mm_tx_gestiones_1m ;;
  }

  dimension: flag_mm_tx_gestiones_3m {
    type: number
    sql: ${TABLE}.flag_mm_tx_gestiones_3m ;;
  }

  dimension: flag_mm_tx_monetaria_12m {
    type: number
    sql: ${TABLE}.flag_mm_tx_monetaria_12m ;;
  }

  dimension: flag_mm_tx_monetaria_1m {
    type: number
    sql: ${TABLE}.flag_mm_tx_monetaria_1m ;;
  }

  dimension: flag_mm_tx_monetaria_3m {
    type: number
    sql: ${TABLE}.flag_mm_tx_monetaria_3m ;;
  }

  dimension: flag_mm_utiliza_token_12m {
    type: number
    sql: ${TABLE}.flag_mm_utiliza_token_12m ;;
  }

  dimension: flag_onb_1m {
    type: number
    sql: ${TABLE}.flag_onb_1m ;;
  }

  dimension: flag_onb_3m {
    type: number
    sql: ${TABLE}.flag_onb_3m ;;
  }

  dimension: flag_tx_blanqueo_1m {
    type: number
    sql: ${TABLE}.flag_tx_blanqueo_1m ;;
  }

  dimension: flag_tx_blanqueo_3m {
    type: number
    sql: ${TABLE}.flag_tx_blanqueo_3m ;;
  }

  dimension: flag_tx_consultas_12m {
    type: number
    sql: ${TABLE}.flag_tx_consultas_12m ;;
  }

  dimension: flag_tx_consultas_1m {
    type: number
    sql: ${TABLE}.flag_tx_consultas_1m ;;
  }

  dimension: flag_tx_consultas_3m {
    type: number
    sql: ${TABLE}.flag_tx_consultas_3m ;;
  }

  dimension: flag_tx_gestiones_12m {
    type: number
    sql: ${TABLE}.flag_tx_gestiones_12m ;;
  }

  dimension: flag_tx_gestiones_1m {
    type: number
    sql: ${TABLE}.flag_tx_gestiones_1m ;;
  }

  dimension: flag_tx_gestiones_3m {
    type: number
    sql: ${TABLE}.flag_tx_gestiones_3m ;;
  }

  dimension: flag_tx_mandato_1m {
    type: number
    sql: ${TABLE}.flag_tx_mandato_1m ;;
  }

  dimension: flag_tx_mandato_3m {
    type: number
    sql: ${TABLE}.flag_tx_mandato_3m ;;
  }

  dimension: flag_tx_monetaria_12m {
    type: number
    sql: ${TABLE}.flag_tx_monetaria_12m ;;
  }

  dimension: flag_tx_monetaria_1m {
    type: number
    sql: ${TABLE}.flag_tx_monetaria_1m ;;
  }

  dimension: flag_tx_monetaria_3m {
    type: number
    sql: ${TABLE}.flag_tx_monetaria_3m ;;
  }

  dimension: flag_utiliza_token_12m {
    type: string
    sql: ${TABLE}.flag_utiliza_token_12m ;;
  }

  dimension: q_hb_logueo_1m {
    type: number
    sql: ${TABLE}.q_hb_logueo_1m ;;
  }

  dimension: q_hb_logueo_3m {
    type: number
    sql: ${TABLE}.q_hb_logueo_3m ;;
  }

  dimension: q_hb_tx_consultas_12m {
    type: number
    sql: ${TABLE}.q_hb_tx_consultas_12m ;;
  }

  dimension: q_hb_tx_consultas_1m {
    type: number
    sql: ${TABLE}.q_hb_tx_consultas_1m ;;
  }

  dimension: q_hb_tx_consultas_3m {
    type: number
    sql: ${TABLE}.q_hb_tx_consultas_3m ;;
  }

  dimension: q_hb_tx_gestiones_12m {
    type: number
    sql: ${TABLE}.q_hb_tx_gestiones_12m ;;
  }

  dimension: q_hb_tx_gestiones_1m {
    type: number
    sql: ${TABLE}.q_hb_tx_gestiones_1m ;;
  }

  dimension: q_hb_tx_gestiones_3m {
    type: number
    sql: ${TABLE}.q_hb_tx_gestiones_3m ;;
  }

  dimension: q_hb_tx_monetaria_12m {
    type: number
    sql: ${TABLE}.q_hb_tx_monetaria_12m ;;
  }

  dimension: q_hb_tx_monetaria_1m {
    type: number
    sql: ${TABLE}.q_hb_tx_monetaria_1m ;;
  }

  dimension: q_hb_tx_monetaria_3m {
    type: number
    sql: ${TABLE}.q_hb_tx_monetaria_3m ;;
  }

  dimension: q_logueos_cliente_digital {
    type: number
    sql: ${TABLE}.q_logueos_cliente_digital ;;
  }

  dimension: q_logueos_digital_activo {
    type: number
    sql: ${TABLE}.q_logueos_digital_activo ;;
  }

  dimension: q_mb_logueo_1m {
    type: number
    sql: ${TABLE}.q_mb_logueo_1m ;;
  }

  dimension: q_mb_logueo_3m {
    type: number
    sql: ${TABLE}.q_mb_logueo_3m ;;
  }

  dimension: q_mb_tx_consultas_12m {
    type: number
    sql: ${TABLE}.q_mb_tx_consultas_12m ;;
  }

  dimension: q_mb_tx_consultas_1m {
    type: number
    sql: ${TABLE}.q_mb_tx_consultas_1m ;;
  }

  dimension: q_mb_tx_consultas_3m {
    type: number
    sql: ${TABLE}.q_mb_tx_consultas_3m ;;
  }

  dimension: q_mb_tx_gestiones_12m {
    type: number
    sql: ${TABLE}.q_mb_tx_gestiones_12m ;;
  }

  dimension: q_mb_tx_gestiones_1m {
    type: number
    sql: ${TABLE}.q_mb_tx_gestiones_1m ;;
  }

  dimension: q_mb_tx_gestiones_3m {
    type: number
    sql: ${TABLE}.q_mb_tx_gestiones_3m ;;
  }

  dimension: q_mb_tx_monetaria_12m {
    type: number
    sql: ${TABLE}.q_mb_tx_monetaria_12m ;;
  }

  dimension: q_mb_tx_monetaria_1m {
    type: number
    sql: ${TABLE}.q_mb_tx_monetaria_1m ;;
  }

  dimension: q_mb_tx_monetaria_3m {
    type: number
    sql: ${TABLE}.q_mb_tx_monetaria_3m ;;
  }

  dimension: q_mm_logueo_1m {
    type: number
    sql: ${TABLE}.q_mm_logueo_1m ;;
  }

  dimension: q_mm_logueo_3m {
    type: number
    sql: ${TABLE}.q_mm_logueo_3m ;;
  }

  dimension: q_mm_tx_consultas_12m {
    type: number
    sql: ${TABLE}.q_mm_tx_consultas_12m ;;
  }

  dimension: q_mm_tx_consultas_1m {
    type: number
    sql: ${TABLE}.q_mm_tx_consultas_1m ;;
  }

  dimension: q_mm_tx_consultas_3m {
    type: number
    sql: ${TABLE}.q_mm_tx_consultas_3m ;;
  }

  dimension: q_mm_tx_gestiones_12m {
    type: number
    sql: ${TABLE}.q_mm_tx_gestiones_12m ;;
  }

  dimension: q_mm_tx_gestiones_1m {
    type: number
    sql: ${TABLE}.q_mm_tx_gestiones_1m ;;
  }

  dimension: q_mm_tx_gestiones_3m {
    type: number
    sql: ${TABLE}.q_mm_tx_gestiones_3m ;;
  }

  dimension: q_mm_tx_monetaria_12m {
    type: number
    sql: ${TABLE}.q_mm_tx_monetaria_12m ;;
  }

  dimension: q_mm_tx_monetaria_1m {
    type: number
    sql: ${TABLE}.q_mm_tx_monetaria_1m ;;
  }

  dimension: q_mm_tx_monetaria_3m {
    type: number
    sql: ${TABLE}.q_mm_tx_monetaria_3m ;;
  }

  dimension: q_tx_blanqueo_1m {
    type: number
    sql: ${TABLE}.q_tx_blanqueo_1m ;;
  }

  dimension: q_tx_blanqueo_3m {
    type: number
    sql: ${TABLE}.q_tx_blanqueo_3m ;;
  }

  dimension: q_tx_consultas_12m {
    type: number
    sql: ${TABLE}.q_tx_consultas_12m ;;
  }

  dimension: q_tx_consultas_1m {
    type: number
    sql: ${TABLE}.q_tx_consultas_1m ;;
  }

  dimension: q_tx_consultas_3m {
    type: number
    sql: ${TABLE}.q_tx_consultas_3m ;;
  }

  dimension: q_tx_gestiones_12m {
    type: number
    sql: ${TABLE}.q_tx_gestiones_12m ;;
  }

  dimension: q_tx_gestiones_1m {
    type: number
    sql: ${TABLE}.q_tx_gestiones_1m ;;
  }

  dimension: q_tx_gestiones_3m {
    type: number
    sql: ${TABLE}.q_tx_gestiones_3m ;;
  }

  dimension: q_tx_mandato_1m {
    type: number
    sql: ${TABLE}.q_tx_mandato_1m ;;
  }

  dimension: q_tx_mandato_3m {
    type: number
    sql: ${TABLE}.q_tx_mandato_3m ;;
  }

  dimension: q_tx_monetaria_12m {
    type: number
    sql: ${TABLE}.q_tx_monetaria_12m ;;
  }

  dimension: q_tx_monetaria_1m {
    type: number
    sql: ${TABLE}.q_tx_monetaria_1m ;;
  }

  dimension: q_tx_monetaria_3m {
    type: number
    sql: ${TABLE}.q_tx_monetaria_3m ;;
  }

  dimension: sucursal_radicacion_key {
    type: number
    sql: ${TABLE}.sucursal_radicacion_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
