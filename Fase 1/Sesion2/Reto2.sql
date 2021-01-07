USE tienda;

#¿Cuál es el promedio de salario de los puestos?
SELECT AVG(salario) as Promedio FROM puesto;

#¿Cuántos artículos incluyen la palabra Pasta en su nombre?
SELECT COUNT(*) FROM articulo WHERE nombre LIKE '%Pasta%';

#¿Cuál es el salario mínimo y máximo?
SELECT MIN(salario) AS 'Salario Minimo', MAX(salario) AS 'Salario Maximo' FROM puesto;

#¿Cuál es la suma del salario de los últimos cinco puestos agregados?
SELECT SUM(salario) AS Promedio FROM puesto WHERE id_puesto > (SELECT MAX(id_puesto)-5 FROM puesto);