USE tienda;

SHOW TABLES;

SELECT * FROM empleado;

SELECT * FROM empleado WHERE nombre LIKE 'M%';

SELECT * FROM empleado WHERE nombre LIKE '%a';

SELECT * FROM empleado WHERE nombre LIKE 'M%a';

SELECT * FROM empleado WHERE nombre LIKE 'M_losa';

#Funciones de agregacion o agrupamiento

SELECT * FROM articulo;

SELECT AVG(precio) AS 'Promedio' FROM articulo;

SELECT count(*) AS conteo_articulos FROM articulo;
SELECT MAX(precio) AS precio_maximo FROM articulo;
SELECT MIN(precio) AS precio_minimo FROM articulo;
SELECT SUM(precio) AS suma FROM articulo;

# GROUP BY
SELECT * FROM articulo;

SELECT nombre,sum(precio) as 'Precio Total' FROM articulo GROUP BY(nombre);

SELECT nombre,COUNT(*) AS Cantidad FROM articulo GROUP BY (nombre) ORDER BY Cantidad DESC;

SELECT * FROM puesto;

SELECT nombre,min(salario) AS 'Salario Minimo', max(salario) AS 'Salario Maximo' FROM puesto GROUP BY(nombre);