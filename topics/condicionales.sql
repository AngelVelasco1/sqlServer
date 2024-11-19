
USE tienda;
SELECT * FROM producto;

-- //? Case basico 
SELECT nombre,
    CASE nombre
        WHEN 'Samsung' THEN 'Fabricante Coreano'
        WHEN 'Asus' THEN 'Fabricante Americano'
        WHEN 'Xiaomi' THEN 'Fabricante Chino'
        ELSE 'Fabricante Desconocido'
    END AS origen
FROM fabricante;

-- //? Case con operadores de comparacion */
SELECT f.nombre nombre_fab, p.nombre nombre_prod, p.precio,
CASE 
    WHEN p.precio < 100 THEN 'Economico'
    WHEN p.precio BETWEEN 100 AND 500 THEN 'Gama Media'
    WHEN p.precio BETWEEN 501 AND 700 THEN 'Gama Alta'
    ELSE 'Premium'
END AS categoria
FROM producto p
INNER JOIN fabricante f ON f.id = p.id_fabricante;

-- //? Case anidado (Especificar la categoria de los productos del fabricante crucial) */
SELECT p.nombre, p.precio, f.nombre fabricante,
CASE 
    WHEN p.precio < 200 THEN 
        CASE f.nombre
            WHEN 'Crucial' THEN 'Gama Economica Crucial'
            ELSE 'Economica otros'
        END
    ELSE 
        CASE f.nombre       
             WHEN 'Crucial' THEN 'Gama Premium Crucial'
             ELSE 'Premium otros'
        END
END AS categoria_detallada 
FROM producto p
INNER JOIN fabricante f ON f.id = p.id_fabricante;

--//? Ejercicios 

--//* Determinar fabricantes con productos costosos 
SELECT f.nombre,
    CASE
        WHEN MAX(p.precio) > 500 THEN 'Si'
        ELSE 'No'
    END AS tiene_produtos_costosos 
FROM fabricante f
INNER JOIN producto p ON p.id_fabricante = f.id
GROUP BY f.nombre;

--//* Identificar fabricantes por nivel de produccion 
SELECT f.nombre,
    CASE 
        WHEN COUNT(id_fabricante) > 5 THEN 'Alto'
        WHEN COUNT(id_fabricante) BETWEEN 3 AND 5 THEN 'Moderado'
        WHEN COUNT(id_fabricante) BETWEEN 1 AND 2 THEN 'Bajo'
        ELSE 'Sin produccion'
    END AS nivel_produccion
FROM fabricante f
LEFT JOIN producto p ON p.id_fabricante = f.id
GROUP BY f.nombre;


