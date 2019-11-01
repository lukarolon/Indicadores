"BS_REPORTE_PAROS"."NAME" IN 
('TI MST Hand Held','TI MST Smartphone','TI MST Business Mail','TI MST Ediwin','TI MST Pac','TI MST Signature','TI MST Comunicaciones',
	'TI MST SIO Liquidaciones','TI MST SIO Base De Datos','TI MST SIO Rh','TI MST SIO Despacho','TI MST SIO Apt','TI MST SIO Productos',
	'TI MST SIO Interfaces','TI MST SIO Bitacoras Y Parches','TI MST SIO Saldos','TI MST SIO Adc','TI MST SIO Clientes','TI MST MSIO Despacho',
	'TI MST MSIO Fecha Operacion','TI MST MSIO Televenta','TI MST MSIO Precios Y Descuentos','TI MST MSIO Usuarios','TI MST MSIO Performance',
	'TI MST MSIO Configuracion','TI MST Cas','TI MST Pepsi Si','TI MST Monitoreo','TI SC Operacion','TI MST Tibco')




--dia especifico
CAST("BS_REPORTE_PAROS"."CREATION_DATE" as date) = CURRENT_DATE - 1 CAST (timestamp '2019-10-02 00:00:00' as date)

--DIA ANTERIOR
CAST("BS_REPORTE_PAROS"."CREATION_DATE" as date) = CURRENT_DATE - 1

--RESUMEN MES ANTERIOR
MONTH(CAST("BS_REPORTE_PAROS"."CREATION_DATE" as date)) = MONTH(CURRENT_DATE) - 1
--RESUMEN SEMANA ANTERIOR
WEEK(CAST("BS_REPORTE_PAROS"."CREATION_DATE" as date)) = WEEK(CURRENT_DATE) - 1
--RESUMEN DIARIO DIA ANTERIOR HASTA ULTIMA SINCRONIZACION
CAST("BS_REPORTE_PAROS"."CREATION_DATE" as date) BETWEEN CURRENT_DATE - 1 AND CURRENT_DATE




