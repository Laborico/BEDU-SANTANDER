SHOW DATABASES;

USE tienda;

SHOW TABLES;

DESCRIBE empleado;

DESCRIBE venta;

DESCRIBE puesto;

DESCRIBE articulo;

SELECT * FROM empleado;

SELECT nombre FROM empleado;

SELECT nombre, apellido_paterno FROM empleado;

SELECT * FROM empleado WHERE apellido_paterno = 'Risom';

SELECT * FROM empleado WHERE id_empleado = 10;

SELECT * FROM empleado WHERE id_puesto > 100;

SELECT * FROM empleado WHERE id_puesto >= 100 AND id_puesto <= 200;

SELECT * FROM empleado WHERE id_puesto = 100 OR id_puesto = 200;

SELECT * FROM empleado WHERE id_puesto IN (100,200,300);

SELECT * FROM empleado ORDER BY apellido_paterno;
SELECT * FROM empleado ORDER BY apellido_paterno DESC;
SELECT * FROM articulo ORDER BY precio;
SELECT * FROM articulo ORDER BY precio  DESC LIMIT 10;