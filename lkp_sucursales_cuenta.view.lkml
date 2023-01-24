view: lkp_sucursales_cuenta {
  sql_table_name: `bm-gcp-d1-dw.sigma_raw.lkp_sucursales_cuenta`
    ;;

  dimension: agente_financiero {
    type: string
    sql: ${TABLE}.agente_financiero ;;
  }

  dimension: banco_key {
    hidden: yes
    type: number
    sql: ${TABLE}.banco_key ;;
  }

  dimension: categoria_bcra {
    type: string
    sql: ${TABLE}.categoria_bcra ;;
  }

  dimension: codigo_region_contable {
    type: string
    sql: ${TABLE}.codigo_region_contable ;;
  }

  dimension: departamento {
    type: string
    sql: ${TABLE}.departamento ;;
  }

  dimension: dimension {
    type: string
    sql: ${TABLE}.dimension ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: inactiva {
    type: string
    sql: ${TABLE}.inactiva ;;
  }

  dimension: latitud {
    type: number
    sql: ${TABLE}.latitud ;;
  }

  dimension: localidad {
    type: string
    sql: ${TABLE}.localidad ;;
  }

  dimension: longitud {
    type: number
    sql: ${TABLE}.longitud ;;
  }

  dimension: provincia {
    type: string
    sql: ${TABLE}.provincia ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: region_contable {
    type: string
    sql: ${TABLE}.region_contable ;;
  }

  dimension: sucursal {
    type: string
    sql: ${TABLE}.sucursal ;;
  }

  dimension: sucursal_anterior {
    type: string
    sql: ${TABLE}.sucursal_anterior ;;
  }

  dimension: sucursal_cuenta_key {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: sucursal_source {
    type: number
    sql: ${TABLE}.sucursal_source ;;
  }

  dimension: sucursal_source_anterior {
    type: number
    sql: ${TABLE}.sucursal_source_anterior ;;
  }

  dimension: superficie_financiera {
    type: number
    sql: ${TABLE}.superficie_financiera ;;
  }

  dimension: tasa_comision_canje {
    type: number
    sql: ${TABLE}.tasa_comision_canje ;;
  }

  dimension: tipo_sucursal {
    type: string
    sql: ${TABLE}.tipo_sucursal ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
