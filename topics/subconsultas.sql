-- //? Con Operadores Basicos de Comparacion 

-- //* Devuelve todos los productos del fabricante lenovo
SELECT nombre FROM producto WHERE id_fabricante = (SELECT id FROM fabricante WHERE nombre = 'Lenovo');
-- //* Devuelve todos los datos de los productos que tienen el mismo precio que el producto mas caro de Lenovo
SELECT * FROM producto WHERE precio = 
(SELECT MAX(precio) FROM producto WHERE id_fabricante = 
(SELECT id FROM fabricante WHERE nombre = 'Lenovo')) AND id_fabricante !=
(SELECT id FROM fabricante WHERE nombre = 'Lenovo');
-- //* Lista el nombre del producto mas caro de Lenovo
SELECT nombre FROM producto WHERE precio = 
(SELECT MAX(precio) FROM producto WHERE id_fabricante = 
(SELECT id FROM fabricante WHERE nombre = 'Lenovo'));
-- //* Lista el nombre del producto mas barato de Hewlett-Packard
SELECT nombre FROM producto WHERE precio = 
(SELECT MIN(precio) FROM producto WHERE id_fabricante = 
(SELECT id FROM fabricante WHERE nombre LIKE 'h%d'))
-- //* Devuelve todos los datos de los productos de la DB que tienen un precio mayor o igual al producto mas caro de Lenovo
SELECT * FROM producto WHERE precio >= 
(SELECT MAX(precio) FROM producto WHERE id_fabricante =
(SELECT id FROM fabricante WHERE nombre = 'Lenovo')) AND id_fabricante !=
(SELECT id FROM fabricante WHERE nombre = 'Lenovo');
-- //* Lista los productos del Fabricante Asus que tienen un precio superior al precio medio de todos sus productos 
SELECT * FROM producto WHERE precio > 
(SELECT AVG(precio) FROM producto WHERE id_fabricante = 
(SELECT id FROM fabricante WHERE nombre = 'Asus')) AND id_fabricante = 
(SELECT id FROM fabricante WHERE nombre = 'Asus');

-- //? Con ALL y ANY

-- //* Devuelve el producto mas caro sin usar MAX, ORDER BY ni TOP/LIMIT
SELECT * FROM producto WHERE precio >= ALL 
(SELECT precio FROM producto);
-- //* Devuelve el producto mas barato sin usar MAX, ORDER BY ni TOP/LIMIT
SELECT * FROM producto WHERE precio <= ALL 
(SELECT precio FROM producto);
-- //* Devuelve los nombres de los fabricantes que tienen de productos asociados
SELECT nombre FROM fabricante WHERE id = ANY 
(SELECT id_fabricante from producto WHERE nombre IS NOT NULL);
-- //* Devuelve los nombres de los fabricantes sin productos
SELECT nombre FROM fabricante WHERE id != ALL 
(SELECT id_fabricante from producto WHERE nombre IS NOT NULL);

-- //? Con IN y NOT IN

-- //* Devuelve los nombres de los fabricantes que tienen productos asociados
SELECT nombre FROM fabricante WHERE id IN 
(SELECT id_fabricante FROM producto);
-- //* Devuelve los nombres de los fabricantes sin productos
SELECT nombre FROM fabricante WHERE id NOT IN 
(SELECT id_fabricante FROM producto);

-- //? Con EXISTS y NOT NOT EXISTS

-- //* Devuelve los nombres de los fabricantes que tienen productos asociados
SELECT nombre FROM fabricante WHERE EXISTS 
(SELECT * FROM producto WHERE id_fabricante = fabricante.id);
-- //* Devuelve los nombres de los fabricantes sin productos

SELECT nombre FROM fabricante WHERE NOT EXISTS 
(SELECT * FROM producto WHERE id_fabricante = fabricante.id);