use empleados;

-- 1. 
SELECT nombre, presupuesto FROM departamento ORDER BY presupuesto;

-- 2.
SELECT nombre, gastos from departamento
where gastos<5000;

-- 3.

SELECT nombre, presupuesto FROM departamento WHERE presupuesto >= ALL (SELECT presupuesto FROM departamento);

--4
SELECT top 1 nombre, presupuesto from departamento 
order by presupuesto desc;

-- 5

SELECT e.nombre FROM empleado e
INNER JOIN departamento d ON d.id = e.id_departamento
WHERE d.presupuesto NOT IN 
(SELECT presupuesto FROM departamento WHERE presupuesto BETWEEN 100000 AND 200000);

--6
SELECT nombre FROM empleado
WHERE apellido_2 IS NULL

--7
SELECT * FROM empleado
where id_departamento=(SELECT id  FROM departamento where nombre='Sistemas');

--8
SELECT apellido_1 FROM empleado 

--9
SELECT DISTINCT apellido_1 from empleado 

--10
SELECT * FROM empleado

--11
SELECT id_departamento FROM empleado

--12
SELECT DISTINCT id_departamento FROM empleado

--13 
SELECT nombre + ' ' + apellido_1 'nombre y apellido'FROM empleado;

--14
SELECT UPPER(nombre)+' '+UPPER(apellido_1)+' '+UPPER(apellido_2) 'nombre y apellidos'FROM empleado

--15
SELECT LOWER(nombre)+' '+LOWER(apellido_1)+' '+LOWER(apellido_2) 'nombre y apellidos'FROM empleado
select nif from empleado;
--16
SELECT id,
    REPLACE(
        TRANSLATE(nif, '0123456789', REPLICATE(' ', 10)),
        ' ', ''
    ) AS solo_letras,
       REPLACE(
        TRANSLATE(nif, 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz', REPLICATE(' ', 52)),
        ' ', ''
    ) AS solo_numeros
FROM empleado;
--17
SELECT nombre,presupuesto AS presupuesto_inicial,
case 
    when presupuesto-gastos<0 then 0
    when presupuesto-gastos>0 then presupuesto-gastos
    else ''
end as presupuesto_actual
 FROM departamento;
--18
SELECT nombre, presupuesto FROM departamento
ORDER BY presupuesto ASC

--19
SELECT nombre FROM departamento
ORDER BY nombre;

--20
SELECT nombre FROM departamento
ORDER BY nombre DESC

--21
SELECT apellido_1, nombre FROM empleado
ORDER BY apellido_1, nombre ASC

--22
SELECT TOP 3 nombre, presupuesto FROM departamento
ORDER BY presupuesto DESC;

--23
SELECT TOP 3 nombre, presupuesto FROM departamento
ORDER BY presupuesto;

--24
SELECT TOP 2 nombre, gastos FROM departamento
ORDER BY gastos DESC;

--25
SELECT TOP 2 nombre, gastos FROM departamento
ORDER BY gastos;

--26 
SELECT * FROM empleado
WHERE id IN(3, 4, 5, 6, 7);

-- 27 
SELECT nombre, presupuesto FROM departamento
WHERE presupuesto >= 150000;

-- 28
SELECT nombre, gastos FROM departamento
WHERE gastos < 5000;

-- 29
SELECT nombre, presupuesto FROM departamento
WHERE presupuesto >= 100000 AND presupuesto <= 200000;

-- 30
SELECT nombre, presupuesto FROM departamento
WHERE presupuesto NOT IN 
(SELECT presupuesto FROM departamento WHERE presupuesto >= 100000 AND presupuesto <= 200000);

-- 31
SELECT nombre, presupuesto FROM departamento
WHERE presupuesto BETWEEN 100000 AND 200000;

-- 32
SELECT nombre, presupuesto FROM departamento
WHERE presupuesto NOT IN 
(SELECT presupuesto FROM departamento WHERE presupuesto BETWEEN 100000 AND 200000);

-- 33
SELECT nombre, gastos, presupuesto  FROM departamento
WHERE gastos > presupuesto;

-- 34
SELECT nombre, gastos, presupuesto  FROM departamento
WHERE gastos < presupuesto;
-- 35
SELECT nombre, gastos, presupuesto  FROM departamento
WHERE gastos = presupuesto;

-- 36
SELECT  * FROM empleado WHERE apellido_2 IS NULL;

-- 37
SELECT  * FROM empleado WHERE apellido_2 != 'NULL' OR apellido_2 != NULL; 

-- 38
SELECT  * FROM empleado WHERE apellido_2 LIKE 'L_pez';

-- 39
SELECT  * FROM empleado WHERE apellido_2 LIKE 'D_az' OR apellido_2 LIKE 'M%o';

-- 40
SELECT  * FROM empleado WHERE apellido_2 IN ('Díaz','Moreno');

-- 41
SELECT nombre, apellido_1, apellido_2, nif FROM empleado 
WHERE id_departamento = 3;

-- 42
SELECT nombre, apellido_1, apellido_2, nif FROM empleado 
WHERE id_departamento IN(2, 4, 5);

-- 43
SELECT * FROM empleado e
INNER JOIN departamento d ON d.id = e.id_departamento; 

-- 44
SELECT * FROM empleado e
INNER JOIN departamento d ON d.id = e.id_departamento
ORDER BY d.nombre, e.apellido_1, e.apellido_2, e.nombre; 

-- 45
SELECT id,nombre,
case 
    when presupuesto-gastos<0 then 0
    when presupuesto-gastos>0 then presupuesto-gastos
    else ''
end as presupuesto_actual
FROM departamento;

-- 46
SELECT d.nombre FROM departamento d
INNER JOIN empleado e ON d.id = e.id_departamento
WHERE e.nif = '38382980M';

-- 47
SELECT d.nombre FROM departamento d
INNER JOIN empleado e ON d.id = e.id_departamento
WHERE e.nombre LIKE 'Pep_';

-- 48
SELECT * FROM empleado WHERE id_departamento = 
(SELECT id FROM departamento WHERE nombre LIKE 'I%D');

-- 49
SELECT DISTINCT d.nombre  FROM departamento d
INNER JOIN empleado e ON e.id_departamento = d.id
WHERE e.apellido_2 IS NULL;

-- 50
SELECT * FROM empleado e
FULL JOIN departamento d ON d.id = e.id_departamento;

-- 51
SELECT * FROM empleado WHERE id_departamento IS NULL;

-- 52
SELECT * FROM departamento d WHERE NOT EXISTS
(SELECT * FROM empleado e WHERE d.id = e.id_departamento);

-- 53
SELECT * FROM empleado e 
FULL JOIN departamento d ON e.id_departamento = d.id
ORDER BY d.nombre;

-- 54
SELECT * FROM empleado e 
FULL JOIN departamento d ON e.id_departamento = d.id
WHERE NOT EXISTS (SELECT * FROM departamento WHERE d.id = e.id_departamento)
ORDER BY d.nombre;

-- 55 
SELECT SUM(presupuesto) suma_presupuesto FROM departamento;

--56
SELECT ROUND(AVG(presupuesto), 2) promedio_presupuesto FROM departamento;

-- 57
SELECT MIN(presupuesto) minimo_presupuesto FROM departamento;

-- 58
SELECT nombre, presupuesto FROM departamento WHERE presupuesto = 
(SELECT MIN(presupuesto) FROM departamento);

-- 59
SELECT MAX(presupuesto) maximo_presupuesto FROM departamento;

-- 60
SELECT nombre, presupuesto FROM departamento WHERE presupuesto = 
(SELECT MAX(presupuesto) FROM departamento);

--61
SELECT COUNT(id) FROM empleado;

--62
SELECT COUNT(id) FROM empleado WHERE apellido_2 != 'NULL';

-- 63
SELECT d.nombre, COUNT(e.id_departamento) AS numero_empleados FROM departamento d
INNER JOIN empleado e ON e.id_departamento = d.id
GROUP BY d.nombre;

