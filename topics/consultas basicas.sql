SELECT nombre FROM producto;

SELECT nombre, precio FROM producto;

SELECT * FROM producto;

SELECT nombre, precio * 4448 AS COP, precio AS dolares FROM producto;

SELECT UPPER(nombre) AS nombre, precio FROM producto;
SELECT LOWER(nombre) AS nombre, precio FROM producto;

SELECT nombre, UPPER(SUBSTRING(nombre, 1, 2))  FROM fabricante;

SELECT nombre, ROUND(precio, 1) FROM producto;

SELECT  id_fabricante FROM producto;

SELECT distinct id_fabricante FROM producto;

SELECT nombre FROM fabricante ORDER BY nombre ASC;

SELECT nombre FROM fabricante ORDER BY nombre DESC;

SELECT id_fabricante, precio FROM producto ORDER BY id_fabricante, precio DESC;


SELECT TOP(5) * FROM fabricante;

SELECT TOP(1) nombre, precio FROM producto ORDER BY precio;

SELECT TOP(1) nombre, precio FROM producto ORDER BY precio DESC;

SELECT nombre FROM producto WHERE id_fabricante = 2;

SELECT nombre FROM producto WHERE precio <= 120;

SELECT nombre FROM producto WHERE precio <= 400;

SELECT nombre FROM producto WHERE NOT precio >= 400;

SELECT nombre FROM producto WHERE precio >= 80 AND precio <= 300;

SELECT nombre FROM producto WHERE precio BETWEEN 60 AND 200;

SELECT nombre FROM producto WHERE precio > 200 AND id_fabricante = 6;

SELECT nombre FROM producto WHERE  id_fabricante = 1 OR id_fabricante = 3 OR id_fabricante = 5;

SELECT nombre FROM producto WHERE id_fabricante IN(1, 3, 5);