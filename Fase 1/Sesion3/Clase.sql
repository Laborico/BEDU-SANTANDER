USE tienda;

#WHERE >
SELECT sum(salario) 
FROM puesto 
WHERE id_puesto > (SELECT MAX(id_puesto) - 5 FROM puesto);

#WHERE IN
#Junior Executive
SELECT id_puesto FROM puesto WHERE nombre= 'Junior Executive';

SELECT * 
FROM empleado 
WHERE id_puesto 
IN (
	SELECT id_puesto 
    FROM puesto 
    WHERE nombre= 'Junior Executive'
);

#FROM
#Ahora queremos saber cuál es la menor y mayor cantidad de ventas de un artículo.
SELECT * FROM venta;

SELECT clave, id_articulo, COUNT(*) AS cantidad FROM venta GROUP BY clave, id_articulo ORDER BY cantidad DESC;

SELECT id_articulo, min(cantidad) AS 'Cantidad Minima', max(cantidad) AS 'Cantidad Maxima'  
FROM (
	SELECT clave, id_articulo, COUNT(*) AS cantidad 
    FROM venta 
    GROUP BY clave, id_articulo 
    ORDER BY cantidad DESC
) AS subconsulta 
GROUP BY id_articulo;


#JOIN
SHOW KEYS FROM venta;

SELECT * FROM puesto;
SELECT * FROM empleado;

SELECT * 
FROM empleado AS e
JOIN puesto AS p
ON e.id_puesto = p.id_puesto;

SELECT * 
FROM puesto AS p
LEFT JOIN empleado as e
ON p.id_puesto = e.id_puesto;

SELECT * 
FROM empleado AS e
RIGHT JOIN puesto as p
ON e.id_puesto = p.id_puesto;

#VISTAS
SELECT v.clave, v.fecha, a.nombre AS Producto, a.precio, CONCAT(e.nombre,' ',e.apellido_paterno) AS Empleado
FROM venta AS v
JOIN empleado AS e
ON v.id_empleado = e.id_empleado
JOIN articulo AS a
ON v.id_articulo = a.id_articulo;

CREATE VIEW tickets_032 AS
(SELECT v.clave, v.fecha, a.nombre AS Producto, a.precio, CONCAT(e.nombre,' ',e.apellido_paterno) AS Empleado
FROM venta AS v
JOIN empleado AS e
ON v.id_empleado = e.id_empleado
JOIN articulo AS a
ON v.id_articulo = a.id_articulo);

SELECT * FROM tickets_032;

SELECT clave, round(sum(precio),2) AS Total
FROM tickets_032
GROUP BY clave;