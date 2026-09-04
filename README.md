sql-select-fundamentals

Consultas SQL básicas sobre la tabla sales de TechStore, escritas para tres reportes solicitados por el equipo de finanzas: exploración general, selección de columnas específicas y renombrado con alias en español.

¿Por qué es mala práctica usar SELECT * en producción?

Rendimiento: SELECT * trae todas las columnas de la tabla, se usen o no. En sales no se nota tanto con 10 filas, pero en una tabla real de muchos registros implica procesar mucha más información de la necesaria, lo que hace la consulta más lenta y consume más recursos del servidor.
Mantenimiento: Si en algún momento se agrega una columna nueva a sales, todas las consultas con SELECT * empiezan a devolver esa columna también, sin ningún aviso. Cualquier reporte, script o integración que dependía de un orden o cantidad de columnas específico puede romperse sin que el cambio se haya hecho ahí.
Seguridad: SELECT * expone todas las columnas de la tabla, incluidas las que el que consulta no necesita ver. Si sales tuviera un campo sensible, cualquier consulta exploratoria con SELECT * lo expondría igual, aunque el reporte solo necesitara por ejemplo el monto de la venta.

¿Por qué son importantes los alias para un stakeholder no técnico?

Un alias reemplaza el nombre de la columna por un nombre que cualquier persona del negocio entiende sin necesitar contexto técnico o conocimientos de idiomas. 
Por ejemplo: reemplazar en nombre de la columna total_amount por monto_total 

SELECT total_amount AS monto_total
FROM sales;

Sin el alias, alguien de finanzas que abre el resultado ve una columna llamada total_amount que está en inglés, que no es como esa persona habla del dato en su trabajo diario. Con AS monto_total, la misma columna aparece con el nombre que finanzas ya usa internamente. 
