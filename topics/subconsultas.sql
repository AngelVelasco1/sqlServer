USE store;
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
/* Lista los productos del Fabricante Asus que tienen un precio superior
al precio medio de todos sus productos */
SELECT * FROM producto WHERE precio > 
(SELECT AVG(precio) FROM producto WHERE id_fabricante = 
(SELECT id FROM fabricante WHERE nombre = 'Asus')) AND id_fabricante = 
(SELECT id FROM fabricante WHERE nombre = 'Asus');
