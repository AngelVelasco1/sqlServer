USE ventas;
-- Consultas sobre una tabla

-- 1
SELECT * FROM pedido ORDER BY fecha DESC;
-- 2
SELECT TOP 2 * FROM pedido ORDER BY total DESC;
-- 3
SELECT c.id FROM cliente c
JOIN pedido p ON c.id = p.id_cliente
GROUP BY c.id;
-- 4
SELECT * FROM pedido 
WHERE fecha BETWEEN '2017-01-01' AND '2017-12-31' AND total > 500;
-- 5
SELECT nombre, apellido1, apellido2 FROM comercial 
WHERE comision BETWEEN 0.05 AND 0.11;
-- 6
SELECT MAX(comision) FROM comercial;
-- 7
SELECT id, nombre, apellido1 FROM cliente
WHERE apellido2 IS NOT NULL
ORDER BY apellido1, apellido2, nombre;
-- 8
SELECT nombre FROM cliente 
WHERE nombre LIKE 'A%N' OR nombre LIKE 'P%'
ORDER BY nombre;
-- 9
SELECT nombre FROM cliente
WHERE nombre NOT LIKE 'A%'
ORDER BY nombre;
-- 10
SELECT DISTINCT nombre FROM comercial 
WHERE nombre LIKE '%O' OR nombre LIKE '%EL';

-- Consultas multitabla (Composicion Interna)

-- 1
SELECT DISTINCT c.id, c.nombre, c.apellido1, c.apellido2 FROM cliente c
JOIN pedido p ON p.id_cliente = c.id
ORDER BY c.nombre;
-- 2
SELECT * FROM pedido p
JOIN cliente c ON p.id_cliente = c.id
ORDER BY c.nombre, c.apellido1, c.apellido2;
-- 3
SELECT * FROM pedido p 
JOIN comercial c ON c.id = p.id_comercial
ORDER BY c.nombre, c.apellido1, c.apellido2;
-- 4
SELECT * FROM cliente c 
JOIN pedido p ON p.id_cliente = c.id 
JOIN comercial co ON p.id_comercial = co.id;
-- 5
SELECT * FROM cliente WHERE id = 
(SELECT id_cliente FROM pedido WHERE fecha BETWEEN '2017-01-01' AND '2017-12-31' AND total BETWEEN 300 AND 1000);
-- 6
SELECT c.nombre, c.apellido1, c.apellido2 FROM comercial c
JOIN pedido p ON p.id_comercial = c.id 
JOIN cliente cl ON cl.id = p.id_cliente
WHERE cl.nombre LIKE 'Mar_a' AND cl.apellido1 LIKE 'Santa_a';
-- 7
SELECT c.nombre, co.nombre FROM cliente c 
JOIN pedido p ON p.id_cliente = c.id
JOIN comercial co ON p.id_comercial = co.id
WHERE co.nombre LIKE 'D%L';

-- Consultas Multitabla (LEFT JOIN y RIGHT JOIN)
-- 1
SELECT * FROM cliente c 
LEFT JOIN pedido p ON p.id_cliente = c.id
ORDER BY apellido1, apellido2, nombre;
-- 2
SELECT * FROM comercial c 
LEFT JOIN pedido p ON p.id_cliente = c.id
ORDER BY apellido1, apellido2, nombre;
-- 3
SELECT * FROM cliente c 
LEFT JOIN pedido p ON p.id_cliente = c.id
WHERE p.id_cliente IS NULL;
--4
SELECT * FROM comercial c 
LEFT JOIN pedido p ON p.id_comercial = c.id
WHERE p.id_comercial IS NULL;
-- 5
SELECT * FROM cliente c 
FULL JOIN pedido p ON  p.id_cliente = c.id 
FULL JOIN comercial co ON  p.id_comercial = co.id
WHERE p.id IS NULL;

-- 6. NO SE PUEDE, SE NECESITA USAR FULL JOIN O SUBCONSULTAS

-- Consultas Resumen

-- 1
SELECT SUM(total) AS suma_total FROM pedido;

-- 2
SELECT ROUND(AVG(total), 2) AS promedio_total FROM pedido;

-- 3
SELECT COUNT(id) AS total_comerciales FROM comercial;

-- 4
SELECT COUNT(id) AS total_clientes FROM cliente;

-- 5
SELECT MAX(total) AS cantitad_maxima FROM pedido;

-- 6
SELECT MIN(total) AS cantidad_minima FROM pedido;

-- 7
SELECT ciudad,
CASE 
    WHEN MAX(categoria) IS NULL THEN 0
    ELSE MAX(categoria)
END AS Valor_maximo
FROM cliente
GROUP BY ciudad;

-- 8
SELECT c.id, c.nombre, c.apellido1, c.apellido2, p.fecha, MAX(p.total) AS maximo_por_dia FROM cliente c
JOIN pedido p ON p.id_cliente = c.id
GROUP BY c.id, c.nombre, c.apellido1, c.apellido2, p.fecha;

-- 9
SELECT c.id, c.nombre, c.apellido1, c.apellido2, p.fecha, MAX(p.total) AS maximo_por_dia FROM cliente c
JOIN pedido p ON p.id_cliente = c.id
WHERE p.total > 2000
GROUP BY c.id, c.nombre, c.apellido1, c.apellido2, p.fecha;

-- 10
SELECT c.id, c.apellido1, c.apellido2, MAX(p.total) AS maximo FROM comercial c
JOIN pedido p ON p.id_comercial = c.id
WHERE p.fecha = '2016-08-17'
GROUP BY c.id, c.apellido1, c.apellido2;

-- 11
SELECT c.id, c.nombre, c.apellido1, c.apellido2, COUNT(p.id_cliente) AS numero_pedidos
FROM cliente c
LEFT JOIN pedido p ON p.id_cliente = c.id
GROUP BY c.id, c.nombre, c.apellido1, c.apellido2;

-- 12
SELECT c.id, c.nombre, c.apellido1, c.apellido2, COUNT(p.id_cliente) AS numero_pedidos FROM cliente c
JOIN pedido p ON p.id_cliente = c.id
WHERE fecha BETWEEN '2017-01-01' AND '2017-12-31'
GROUP BY c.id, c.nombre, c.apellido1, c.apellido2;

-- 13
SELECT c.id, c.nombre, c.apellido1, c.apellido2, 
    CASE
        WHEN MAX(p.total) IS NULL THEN 0
        ELSE MAX(p.total)
    END AS maximo_pedido
FROM cliente c
LEFT JOIN pedido p ON p.id_cliente = c.id
GROUP BY c.id, c.nombre, c.apellido1, c.apellido2;

-- 13 (CON ISNULL)
SELECT c.id, c.nombre, c.apellido1, c.apellido2, ISNULL(MAX(p.total), 0)
FROM cliente c
LEFT JOIN pedido p ON p.id_cliente = c.id
GROUP BY c.id, c.nombre, c.apellido1, c.apellido2;

-- 14
SELECT LEFT(fecha, 4) AS año, MAX(total) as valor_maximo FROM pedido
GROUP BY LEFT(fecha, 4);

-- 15
SELECT LEFT(fecha, 4), COUNT(id) as numero_pedidos  FROM pedido
GROUP BY LEFT(fecha, 4);

-- Subconsultas




