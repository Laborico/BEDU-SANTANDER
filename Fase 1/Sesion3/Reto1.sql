USE tienda;

#¿Cuál es el nombre de los empleados cuyo sueldo es menor a $10,000?
#Si es menor a 10,000
SELECT nombre FROM empleado WHERE id_puesto IN (SELECT id_puesto FROM puesto WHERE salario < 10000);
#Si es mayor a 10,000
SELECT nombre FROM empleado WHERE id_puesto IN (SELECT id_puesto FROM puesto WHERE salario > 10000);

#¿Cuál es la cantidad mínima y máxima de ventas de cada empleado?
SELECT id_empleado, min(cantidad) AS 'Cantidad Minima', max(cantidad) AS 'Cantidad Maxima' FROM (SELECT clave, id_empleado, COUNT(*) AS cantidad FROM venta GROUP BY clave, id_empleado) AS subconsulta GROUP BY id_empleado;

#¿Cuáles claves de venta incluyen artículos cuyos precios son mayores a $5,000?
SELECT clave, id_articulo FROM venta WHERE id_articulo IN (SELECT id_articulo FROM articulo WHERE precio > 5000);