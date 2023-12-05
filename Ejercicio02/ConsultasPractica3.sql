--Ejercicio A
SELECT snombreproducto, nprecioproducto, scolorproducto, stamanoproducto
FROM productos;

--Ejercicio B
SELECT snombreproducto, nprecioproducto, scolorproducto, sdetallesproducto, stamanoproducto
FROM productos
WHERE stamanoproducto = 'Mediano';

--Ejercicio C
SELECT snombre, sgenero, nedad, susuario, scontrasena
FROM clientes;

--Ejercicio D
SELECT *
FROM clientes
WHERE nedad <> 24;

--Ejercicio E
SELECT sdescripcion
FROM ccodigosproducto;

--Ejercicio F
SELECT scolorproducto, AVG(nprecioproducto) as promedio_precio
FROM productos
WHERE scolorproducto = 'Amarillo'
group by scolorproducto;

--Ejercicio G
SELECT count(nidorden) as Cantidad_de_ordenes_totales
FROM ordenes

--Ejercicio J
SELECT (SELECT count(nedad)
	FROM clientes
	WHERE (nedad != 20 and nedad != 25 and nedad != 40)) as Total
FROM clientes
group by Total

--Ejercicio K
SELECT snombre || ' ' || sapellidopaterno || ' ' || sapellidomaterno, susuario
FROM clientes 
WHERE (sapellidopaterno = 'Pérez') or (sapellidomaterno = 'Pérez');

--Ejercicio M
SELECT snombre, sapellidopaterno, scorreoelectronico, sgenero, snumerotelefonico
FROM clientes 
WHERE (sapellidoPaterno LIKE 'S%') and (sapellidomaterno LIKE '%a%');

--Ejercicio R
SELECT scolorproducto as Colores
FROM productos
group by Colores