view: lkp_entidades_pagadoras {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_entidades_pagadoras`
    ;;

  dimension: codigo_entidad_source {
    type: string
    sql: ${TABLE}.codigo_entidad_source ;;
  }

  dimension: codigo_sucursal_entidad_source {
    type: string
    sql: ${TABLE}.codigo_sucursal_entidad_source ;;
  }

  dimension: cp_localidad {
    type: string
    sql: ${TABLE}.cp_localidad ;;
  }

  dimension: cp_provincia {
    type: string
    sql: ${TABLE}.cp_provincia ;;
  }

  dimension: cp_sucursal_entidad_source {
    type: string
    sql: ${TABLE}.cp_sucursal_entidad_source ;;
  }

  dimension: entidad_pagadora {
    type: string
    sql: ${TABLE}.entidad_pagadora ;;
  }

  dimension: entidad_pagadora_key {
    hidden: yes
    type: number
    sql: ${TABLE}.entidad_pagadora_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
