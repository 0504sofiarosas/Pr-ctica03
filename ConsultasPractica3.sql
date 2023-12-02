select snombreproducto, nprecioproducto, scolorproducto, stamanoproducto
from productos;

select snombreproducto, nprecioproducto, scolorproducto, sdetallesproducto, stamanoproducto
from productos
where stamanoproducto = 'Mediano';

SELECT scolorproducto, AVG(nprecioproducto) as promedio_precio
FROM productos
WHERE scolorproducto = 'Amarillo'
GROUP BY scolorproducto;

select snombre, sgenero, nedad, susuario, scontrasena
from clientes;

select sdescripcion
from ccodigosproducto;

select *
from clientes
where nedad <> 24;