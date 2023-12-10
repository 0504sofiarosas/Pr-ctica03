--Ejercicio A
-- Bien
SELECT snombreproducto, nprecioproducto, scolorproducto, stamanoproducto
FROM productos;

--Ejercicio B
-- No era necesario agregar stamanoproducto a la consulta pero está bien
SELECT snombreproducto, nprecioproducto, scolorproducto, sdetallesproducto, stamanoproducto
FROM productos
WHERE stamanoproducto = 'Mediano';

--Ejercicio C
-- Bien
SELECT snombre, sgenero, nedad, susuario, scontrasena
FROM clientes;

--Ejercicio D
-- Bien
SELECT *
FROM clientes
WHERE nedad <> 24;

--Ejercicio E
-- Bien, pero poque la instrucción era muy ambigua. Era poner el producto y su despcripción (JOIN)
SELECT sdescripcion
FROM ccodigosproducto;

--Ejercicio F
-- En este caso sale bien, pero no era necesario agrupar. Porque no vamos a contra por ejemplo
-- el promedio de precios de cada color, ahí si agrupamos. Como sólo era uno, no era necesario.
SELECT scolorproducto, AVG(nprecioproducto) as promedio_precio
FROM productos
WHERE scolorproducto = 'Amarillo'
group by scolorproducto;

--Ejercicio G
-- Bien
SELECT count(nidorden) as Cantidad_de_ordenes_totales
FROM ordenes

--Ejercicio J
-- No
SELECT (SELECT count(nedad)
	FROM clientes
	WHERE (nedad != 20 and nedad != 25 and nedad != 40)) as Total
FROM clientes
group by Total

--Ejercicio K, versión uno
-- bien
SELECT snombre || ' ' || sapellidopaterno || ' ' || sapellidomaterno as nombre_completo, susuario 
FROM clientes 
WHERE (sapellidopaterno = 'Pérez') or (sapellidomaterno = 'Pérez');

--Ejercicio K, versión dos
-- bien
SELECT snombre, sapellidopaterno, sapellidomaterno, susuario 
FROM clientes 
WHERE (sapellidopaterno = 'Pérez') or (sapellidomaterno = 'Pérez');

--Ejercicio M
-- Bien
SELECT snombre, sapellidopaterno, scorreoelectronico, sgenero, snumerotelefonico
FROM clientes 
WHERE (sapellidoPaterno LIKE 'S%') and (sapellidomaterno LIKE '%a%');

--Ejercicio R
-- Bien, aunque lo sencillo era sólo distinct y ya
SELECT scolorproducto as Colores
FROM productos
group by Colores