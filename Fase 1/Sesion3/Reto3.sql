USE tienda;

#Obtener el puesto de un empleado.
CREATE VIEW puesto_empleado_032 AS
(SELECT CONCAT(e.nombre,' ',e.apellido_paterno) AS Empleado, p.nombre AS Puesto
FROM empleado AS e 
JOIN puesto AS p
ON e.id_puesto = p.id_puesto);

SELECT * FROM puesto_empleado_032;

#Saber qué artículos ha vendido cada empleado.
CREATE VIEW articulo_empleado_032 AS
(SELECT clave As Clave,CONCAT(e.nombre,' ',e.apellido_paterno) AS Empleado, a.nombre AS Articulo
FROM empleado AS e
JOIN venta AS v
ON e.id_empleado = v.id_empleado
JOIN articulo AS a
ON v.id_articulo = a.id_articulo);

SELECT * FROM articulo_empleado_032;

#Saber qué puesto ha tenido más ventas.
CREATE VIEW puesto_venta_032 AS
(SELECT p.nombre AS Nombre, count(*) AS Total
FROM venta AS v
JOIN empleado AS e
ON v.id_empleado = e.id_empleado
JOIN puesto AS p
ON e.id_puesto = p.id_puesto
GROUP BY p.nombre);

SELECT * FROM puesto_venta_032 ORDER BY Total DESC LIMIT 1;