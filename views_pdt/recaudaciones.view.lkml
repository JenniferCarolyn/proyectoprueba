view: recaudaciones {
  derived_table: {
    datagroup_trigger: recaudaciones_datagroup
    sql: SELECT
      A.fecha_key,
      A.periodo,
      A.codigo_cliente,
      A.nombre,
      A.banca,
      A.segmento,
      A.subsegmento,
      A.categoria,
      A.descripcion forma_pago,
      "Cobranzas" grupo,
      "Recaudaciones" concepto,
      CASE WHEN A.descripcion like '%ELECTRONICO%' OR A.descripcion like '%ECHEQ%' THEN 'Recaudaciones Cheque Electronico' ELSE 'Recaudaciones Cheque Fisico' END as subconcepto,
      A.oficial_cuenta,
      A.division,
      A.region,
      A.sucursal,
      A.sucursal_source,
      0 as cantidad,
      SUM(A.importe_recaudado) importe
      FROM
      (SELECT
      fe.fecha_key,
      fe.periodo,
      fe.fecha,
      fct.numero_cheque_remesas,
      cc.codigo_cliente,
      cc.nombre,
      b.banca,
      b.categoria,
      b.segmento,
      b.subsegmento,
      ofi.oficial_cuenta,
      sr.division,
      sr.region,
      sr.sucursal,
      sr.sucursal_source,
      re.descripcion,
      fct.numero_cheque,
      fct.importe_recaudado
      FROM fct_recaudaciones fct
      LEFT JOIN lkp_convenios co ON fct.convenio_key = co.convenio_key
      INNER JOIN lkp_clientes_completa cc ON fct.cliente_convenio_key = cc.cliente_key
      INNER JOIN lkp_bancas b ON cc.banca_comite_key = b.banca_key
      INNER JOIN lkp_fechas fe ON fct.fecha_pago_key = fe.fecha_key
      INNER JOIN lkp_formas_pago_recaudacion re ON re.forma_pago_recaudacion_key = fct.forma_pago_recaudacion_key
      LEFT JOIN lkp_oficiales_cuenta ofi ON cc.oficial_cuenta_key = ofi.oficial_cuenta_key
      LEFT JOIN lkp_sucursales_cuenta sr ON cc.sucursal_radicacion_key = sr.sucursal_cuenta_key
      WHERE
        fe.anio >= EXTRACT(YEAR FROM CURRENT_DATE()) -1
        and b.banca in ("Gobierno", "Empresas", "Corporativa", "Megra", "Agro")
        and re.descripcion NOT in ("DEBITO EN CUENTA", "EFECTIVO", "TRANSFERENCIA POR CANAL")) A
      JOIN
      (SELECT
      f.fecha,
      sc.cheque_source,
      cc2.codigo_cliente,
      cc2.nombre,
      sc.numero_cheque,
      sc.importe,
      1 flag_conforme
      FROM fct_seguimiento_cheques sc
      LEFT JOIN lkp_clientes_completa cc ON sc.cliente_key = cc.cliente_key
      LEFT JOIN lkp_bancas b ON cc.banca_comite_key = b.banca_key
      LEFT JOIN lkp_origenes_captura oc ON sc.origen_captura_key = oc.origen_captura_key
      LEFT JOIN lkp_fechas f ON sc.fecha_cancelacion_key = f.fecha_key
      LEFT JOIN lkp_sucursales_cuenta suc ON sc.sucursal_cuenta_key = suc.sucursal_cuenta_key
      LEFT JOIN lkp_estados_cheque ch ON sc.estado_cheque_key = ch.estado_cheque_key
      LEFT JOIN lkp_entidades_pagadoras ep ON sc.entidad_pagadora_key = ep.entidad_pagadora_key
      LEFT JOIN lkp_cuentas c ON sc.cuenta_aviso = c.codigo_cuenta
      LEFT JOIN lkp_clientes_completa cc2 ON c.cliente_key = cc2.cliente_key
      WHERE
        f.anio >= EXTRACT(YEAR FROM CURRENT_DATE()) -1
        and (ch.estado_cheque_descripcion is null or ch.estado_cheque_descripcion in ("Conforme"))
        and oc.origen_captura_descripcion in ("RECA-DEPOSITOREMOTO", "RECA-SUCURSALES", "VALDIMOR-RECA", "DESCUENTO-RECA-REMOTO", "REDEPOSITO-DEPOSITOREMOTO", "REDEPOSITO-RECASUCURSALES", "RECA GESTION AL COBRO DE ECHEQS INGRESADOS POR RECA", "REDEPOSITO-DESC-RECA-REMOTO", "RECAUDACIONES", "REDEPOSITO_VALDIMOR-RECA", "RECA RE DEPOSITO DE ECHEQS POR RECA")) B ON (A.numero_cheque_remesas = CAST(B.cheque_source AS INT))
      GROUP BY
      A.fecha_key,
      A.periodo,
      A.codigo_cliente,
      A.nombre,
      A.banca,
      A.segmento,
      A.subsegmento,
      A.categoria,
      forma_pago,
      grupo,
      concepto,
      subconcepto,
      A.oficial_cuenta,
      A.division,
      A.region,
      A.sucursal,
      A.sucursal_source,
      cantidad
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: fecha_key {
    type: number
    sql: ${TABLE}.fecha_key ;;
  }

  dimension: periodo {
    type: string
    sql: ${TABLE}.periodo ;;
  }

  dimension: codigo_cliente {
    type: number
    sql: ${TABLE}.codigo_cliente ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }

  dimension: banca {
    type: string
    sql: ${TABLE}.banca ;;
  }

  dimension: segmento {
    type: string
    sql: ${TABLE}.segmento ;;
  }

  dimension: subsegmento {
    type: string
    sql: ${TABLE}.subsegmento ;;
  }

  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
  }

  dimension: forma_pago {
    type: string
    sql: ${TABLE}.forma_pago ;;
  }

  dimension: grupo {
    type: string
    sql: ${TABLE}.grupo ;;
  }

  dimension: concepto {
    type: string
    sql: ${TABLE}.concepto ;;
  }

  dimension: subconcepto {
    type: string
    sql: ${TABLE}.subconcepto ;;
  }

  dimension: oficial_cuenta {
    type: string
    sql: ${TABLE}.oficial_cuenta ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.division ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sucursal {
    type: string
    sql: ${TABLE}.sucursal ;;
  }

  dimension: sucursal_source {
    type: number
    sql: ${TABLE}.sucursal_source ;;
  }

  dimension: cantidad {
    type: number
    sql: ${TABLE}.cantidad ;;
  }

  dimension: importe {
    type: number
    sql: ${TABLE}.importe ;;
  }

  set: detail {
    fields: [
      periodo,
      codigo_cliente,
      nombre,
      banca,
      segmento,
      subsegmento,
      categoria,
      forma_pago,
      grupo,
      concepto,
      subconcepto,
      oficial_cuenta,
      division,
      region,
      sucursal,
      sucursal_source,
      importe
    ]
  }
}
