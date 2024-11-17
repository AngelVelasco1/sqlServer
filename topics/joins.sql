-- //? Joins  
SELECT fabricante.nombre AS fabricante, SUM(producto.precio) AS producto FROM fabricante
INNER JOIN producto ON  producto.id_fabricante =  fabricante.id GROUP BY fabricante.nombre;

SELECT fabricante.nombre AS fabricante, SUM(producto.precio) AS producto FROM fabricante
LEFT JOIN producto ON  producto.id_fabricante =  fabricante.id GROUP BY fabricante.nombre;

SELECT fabricante.nombre AS fabricante, SUM(producto.precio) AS producto FROM fabricante
RIGHT JOIN producto ON  producto.id_fabricante =  fabricante.id GROUP BY fabricante.nombre;

SELECT fabricante.nombre AS fabricante, SUM(producto.precio) AS producto FROM fabricante 
FULL JOIN producto ON  producto.id_fabricante =  fabricante.id GROUP BY fabricante.nombre;


SELECT f.nombre AS fabricante, p.nombre AS producto
FROM fabricante f
CROSS JOIN producto p;


SELECT f.nombre AS nombre_fabricante, COUNT(p.id) AS num_productos FROM fabricante f 
INNER JOIN producto p ON f.id = p.id_fabricante WHERE p.precio >= 220 GROUP BY f.nombre;

SELECT f.nombre AS nombre_fabricante, SUM(p.precio) AS suma_precios FROM fabricante f 
INNER JOIN producto p  ON f.id = p.id_fabricante GROUP BY f.nombre HAVING SUM(p.precio) > 1000;

SELECT p.nombre, f.nombre, p.precio FROM producto p
INNER JOIN fabricante f ON p.id_fabricante = f.id 
WHERE p.precio= (SELECT MAX(precio) FROM producto WHERE id_fabricante = p.id_fabricante) 
ORDER BY f.nombre;

-- //? Ejercicios  
-- 1. Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos.
SELECT p.nombre, p.precio, f.nombre FROM producto p
LEFT JOIN fabricante f ON p.id_fabricante = f.id;

-- 2. Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos. Ordene el resultado por el nombre del fabricante, por orden alfab�tico.
SELECT p.nombre, p.precio, f.nombre FROM producto p
LEFT JOIN fabricante f ON p.id_fabricante = f.id ORDER BY f.nombre;
-- 3. Devuelve una lista con el identificador del producto, nombre del producto, identificador del fabricante y nombre del fabricante, de todos los productos de la base de datos.
SELECT p.id, p.nombre, f.id, f.nombre FROM producto p
INNER JOIN fabricante f ON p.id_fabricante = f.id;
-- 4. Devuelve el nombre del producto, su precio y el nombre de su fabricante. del producto m�s barato.
SELECT TOP 1 p.nombre, p.precio, f.nombre FROM producto p
INNER JOIN fabricante f ON p.id_fabricante = f.id ORDER BY p.precio;
-- 5. Devuelve el nombre del producto, su precio y el nombre de su fabricante. del producto m�s caro.
SELECT TOP 1 p.nombre, p.precio, f.nombre FROM producto p
INNER JOIN fabricante f ON p.id_fabricante = f.id ORDER BY p.precio DESC;
-- 6. Devuelve una lista de todos los productos del fabricante Lenovo.
SELECT p.nombre FROM producto p
INNER JOIN fabricante f 
ON p.id_fabricante = f.id AND f.nombre = 'Lenovo';
-- 7. Devuelve una lista de todos los productos del fabricante Crucial que tengan un precio mayor que 200�.
SELECT p.nombre FROM producto p
INNER JOIN fabricante f 
ON p.id_fabricante = f.id AND f.nombre = 'Crucial ';
-- 8. Devuelve un listado con todos los productos de los fabricantes Asus. Hewlett-Packardy Seagate. Sin utilizar el operador IN.

-- 9. Devuelve un listado con todos los productos de los fabricantes Asus. Hewlett-Packardy Seagate. Utilizando el operador IN.

-- 10. Devuelve un listado con el nombre y el precio de todos los productos de los fabricantes cuyo nombre termine por la vocal e.

-- 11. Devuelve un listado con el nombre y el precio de todos los productos cuyo nombre de fabricante contenga el car�cter w en su nombre.

-- 12. Devuelve un listado con el nombre de producto, precio y nombre de fabricante, de todos los productos que tengan un precio mayor o igual a 180�. Ordene el resultado en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente)

-- 13. Devuelve un listado con el identificador y el nombre de fabricante. solamente de aquellos fabricantes que tienen productos asociados en la base de datos.