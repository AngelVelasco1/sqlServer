/*Liste el nombre y el precio de los productos en c�ntinos (multiplicar por 100 el valor de precio), crear un alia para la comuna que se llame centinos.*/
SELECT nombre, Precio*100 'Centinos' FROM Producto;
/*Lista los nombre de los fabricantes cuya letra empiece por 'S'.*/
SELECT nombre FROM Fabricante
WHERE nombre LIKE 'S%';
/*Lista los nombre de los fabricantes cuyo nombre termine en 'E'.*/
SELECT nombre FROM Fabricante
WHERE nombre LIKE '%E';
/*Lista los nombres de los fabricantes cuyo nombre contenga la letras 'W'.*/
SELECT nombre FROM Fabricante
WHERE nombre LIKE '%W%';
/*Lista los nombres de los fabriantes cuyo nombre sea de 4 caracteres.*/
SELECT nombre FROM Fabricante
WHERE nombre LIKE '____';
/*Devuelve una lista con el nombre de todos los productos que tiene la cadena portatil en el nombre.*/
SELECT nombre FROM Producto
WHERE nombre LIKE 'Port_til%';
/*Devuelve una lista con el nombre de todos los productos que contienen la cadena monitor en el nombre y tienen un precio inferior a 215.*/
SELECT nombre FROM Producto
WHERE nombre LIKE 'Monitor%' AND Precio<215;
/*Lista el nombre y precio de todos los productos que tengan un precio mayor o igual a 180, ordene el resultado en primer lugar por el precio (descendente) y en segundo lugar por el nombre (ascendente).*/
SELECT nombre,Precio FROM Producto
WHERE Precio>=180
ORDER BY Precio DESC, nombre ASC;
/*Calcula el numero total de productos que hay en la tabla productos.*/
SELECT COUNT(*) 'Cantidad de productos' FROM Producto;
/*Calcula el numero total de fabricantes que hay en la tabla fabricante.*/
SELECT COUNT(*) 'Cantidad de fabricantes' FROM Fabricante;
--SELECT COUNT(id_Fabricante) FROM Fabricante--
/*Calcula el numero de valores distintos de identificador de fabricante que aparecen en la tabla producto.*/
SELECT COUNT (DISTINCT id_Fabricante) FROM Producto;
/*Calcula la media del precio de todos lso productos.*/
SELECT ROUND(AVG(Precio),4) 'Promedio de los precios' FROM Producto;
/*Calcula el precio m�s barato de todos los productos.*/
SELECT MIN(Precio) 'El precio mas barato de los productos' FROM Producto;
/*Calcula el precio mas caro de todos los productos.*/
SELECT MAX(Precio) 'El precio mas caro' FROM Producto;
/*Lista el nombre y el precio del producto mas barato.*/
SELECT TOP 1 id_Fabricante,MIN(Precio) 'Precio' FROM Producto
GROUP BY id_Fabricante
ORDER BY MIN(Precio);
/*Lista el nombre y el precio del producto mas caro.*/
SELECT TOP 1 id_Fabricante,MAX(Precio) 'Precio' FROM Producto
GROUP BY id_Fabricante
ORDER BY MAX(Precio);
/*Calcula la suma de todos los productos.*/
SELECT ROUND(SUM(Precio),1) 'Suma precio todos los productos' FROM Producto;
/*Calcula el numero de productos que tienen el fabricane 1.*/
SELECT COUNT(id_Fabricante) 'Numero de productos con id=1' FROM Producto
WHERE id_Fabricante=1;
/*Calcula la media del precio de todos los productos del fabricante 1.*/
SELECT AVG(Precio) 'Media de los prodcutos con id=1' FROM Producto
WHERE id_Fabricante=1
/*Calcula el precio mas barato de todos los productos del fabricante 1.*/
SELECT MIN(Precio) 'Precio mas barato con id=1' FROM Producto
WHERE id_Fabricante=1;
/*Calcula el precio mas caro de todos los productos del fabricante 1.*/
SELECT MAX(Precio) 'Precio mas caro con id=1' FROM Producto
WHERE id_Fabricante=1;
/*Calcula la suma de todos los productos del fabricante 1.*/
SELECT ROUND(SUM(Precio),1) 'Suma de precios con id=1' FROM Producto
WHERE id_Fabricante=1;
/*Muestra el precio maximo, minimo, medio y el numero total de productos que tienen el fabricante 6.*/
SELECT COUNT(id_Fabricante) 'Cantidad de productos con id=6', MAX(Precio) 'Valor maximo de productos con id=6',MIN(Precio) 'Valor minimo de productos con id=6',AVG(Precio) 'Valor promedio de productos con id=6' FROM Producto
WHERE id_Fabricante=6;


SELECT COUNT(*) FROM producto WHERE precio >=180 GROUP BY id_fabricante;

SELECT id_fabricante, avg(precio) AS promedio_productos FROM producto GROUP BY id_fabricante;
SELECT id_fabricante FROM producto WHERE precio >= 150 GROUP BY id_fabricante;

SELECT id_fabricante FROM producto GROUP BY id_fabricante HAVING count(id_fabricante) >= 2;

SELECT  id_fabricante, count(*) num_productos  FROM producto WHERE precio >= 220 GROUP BY id_fabricante;

SELECT (SELECT nombre from fabricante WHERE id_fabricante = id) AS nombre, count(*) num_productos  FROM producto WHERE precio >= 220 GROUP BY id_fabricante;

