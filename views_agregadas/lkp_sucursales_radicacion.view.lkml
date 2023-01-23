view: lkp_sucursales_radicacion {
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
    hidden: yes
    type: string
    sql: ${TABLE}.codigo_region_contable ;;
  }

  dimension: departamento {
    hidden: yes
    type: string
    sql: ${TABLE}.departamento ;;
  }

  dimension: dimension {
    type: string
    sql: ${TABLE}.dimension ;;
  }

  dimension: division_radicacion {
    drill_fields: [region_radicacion]
    group_label: "Sucursal Radicacion"
    type: string
    sql: ${TABLE}.division ;;
  }
  dimension: detalle_division {
    sql: ${division_radicacion} ;;
    html:<a href="https://bancomacro.cloud.looker.com/dashboards/74?Centralizado=&Periodo=&Tipo%20Ps=&Banca%20=&Sucursal=&&Region=&Oficial=&Estado%20Monitor%20Ps=&Division%20Radicacion={{value}}"><button>Detalle</button></a>;;
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
    hidden: yes
    type: string
    sql: ${TABLE}.localidad ;;
  }

  dimension: longitud {
    type: number
    sql: ${TABLE}.longitud ;;
  }
  dimension: location {
    type: location
    sql_latitude: ${latitud} ;;
    sql_longitude: ${longitud} ;;
  }

  dimension: provincia {
    type: string
    sql: ${TABLE}.provincia ;;
  }

  dimension: region_radicacion {
    drill_fields: [sucursal_radicacion]
    group_label: "Sucursal Radicacion"
    type: string
    sql: ${TABLE}.region ;;
  }
  dimension: detalle_region {
    sql: ${TABLE}.region ;;
    html: <a href="https://bancomacro.cloud.looker.com/dashboards/75?Centralizado=&Periodo=&Tipo+Ps=&Banca+=&Sucursal=&Oficial=&Estado+Monitor+Ps=&Division+Radicacion=&ampRegion+Radicacion={{value}}"><button>Detalle</button></a>;;
  }

  dimension: region_contable {
    hidden: yes
    type: string
    sql: ${TABLE}.region_contable ;;
  }

  dimension: nombre_sucursal_radicacion {
    type: string
    sql: ${TABLE}.sucursal ;;
  }

  dimension: sucursal_anterior {
    hidden: yes
    type: string
    sql: ${TABLE}.sucursal_anterior ;;
  }

  dimension: sucursal_radicacion_key {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.sucursal_cuenta_key ;;
  }

  dimension: sucursal_source_radicacion {
    type: number
    sql: ${TABLE}.sucursal_source ;;
  }

  dimension: sucursal_source_anterior {
    hidden: yes
    type: number
    sql: ${TABLE}.sucursal_source_anterior ;;
  }

  dimension: superficie_financiera {
    hidden: yes
    type: number
    sql: ${TABLE}.superficie_financiera ;;
  }

  dimension: tasa_comision_canje {
    hidden: yes
    type: number
    sql: ${TABLE}.tasa_comision_canje ;;
  }

  dimension: tipo_sucursal_radicacion {
    type: string
    sql: ${TABLE}.tipo_sucursal ;;
  }

  dimension: sucursal_radicacion {
    group_label: "Sucursal Radicacion"
    type: string
    sql: concat(cast(${sucursal_source_radicacion} AS string), " ", ${nombre_sucursal_radicacion}) ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
