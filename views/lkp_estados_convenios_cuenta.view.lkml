view: lkp_estados_convenios_cuenta {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_estados_convenios_cuenta`
    ;;

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: codigo_estado_convenio_cuenta {
    type: string
    sql: ${TABLE}.codigo_estado_convenio_cuenta ;;
  }

  dimension: descripcion_estado {
    type: string
    sql: ${TABLE}.descripcion_estado ;;
  }

  dimension: estado_convenio_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.estado_convenio_cuenta_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
