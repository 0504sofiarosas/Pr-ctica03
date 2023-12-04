--Ejercicio A
select snombreproducto, nprecioproducto, scolorproducto, stamanoproducto
from productos;

--Ejercicio B
select snombreproducto, nprecioproducto, scolorproducto, sdetallesproducto, stamanoproducto
from productos
where stamanoproducto = 'Mediano';

--Ejercicio C
select snombre, sgenero, nedad, susuario, scontrasena
from clientes;

--Ejercicio D
select *
from clientes
where nedad <> 24;

--Ejercicio E
select sdescripcion
from ccodigosproducto;

--Ejercicio F
SELECT scolorproducto, AVG(nprecioproducto) as promedio_precio
FROM productos
WHERE scolorproducto = 'Amarillo'
GROUP BY scolorproducto;

--Ejercicio G
select count(nidorden) as Cantidad_de_ordenes_totales
from ordenes

--Ejercicio J

select (select count(nedad)
	from clientes
	where (nedad != 20 and nedad != 25 and nedad != 40)) as Total
from clientes
group by Total

--Ejercicio K
SELECT sNombre, nEdad
FROM Clientes 
WHERE (sApellidoPaterno = 'Pérez') or (sApellidoMaterno = 'Pérez');

--Ejercicio M
SELECT sNombre, sApellidoPaterno, sCorreoElectronico, sGenero, sNumeroTelefonico
FROM Clientes 
WHERE (sApellidoPaterno LIKE 'S%') and (sApellidoMaterno LIKE '%a%');

--Ejercicio R
select scolorproducto as Colores
from productos
group by Colores