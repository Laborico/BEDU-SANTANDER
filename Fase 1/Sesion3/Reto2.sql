USE tienda;

#¿Cuál es el nombre de los empleados que realizaron cada venta?
SELECT clave as Clave,CONCAT(nombre,' ',apellido_paterno) AS 'Nombre Completo' FROM empleado AS e JOIN  venta AS v ON e.id_empleado = v.id_empleado;

#¿Cuál es el nombre de los artículos que se han vendido?
SELECT clave as Clave,nombre AS Nombre FROM articulo AS a JOIN venta AS v on a.id_articulo = v.id_articulo;

#¿Cuál es el total de cada venta?
SELECT clave as Clave, sum(precio) as Total FROM venta as v JOIN articulo as a ON v.id_articulo = a.id_articulo GROUP BY clave;