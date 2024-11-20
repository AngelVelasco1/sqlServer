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

SELECT nombre, gastos, presupuesto  FROM departamento
WHERE gastos < presupuesto;

SELECT nombre, gastos, presupuesto  FROM departamento
WHERE gastos = presupuesto;

SELECT  * FROM empleado WHERE apellido_2 IS NULL;

SELECT  * FROM empleado WHERE apellido_2 IS NOT NULL;

SELECT  * FROM empleado WHERE apellido_2 LIKE 'L_pez';

SELECT  * FROM empleado WHERE apellido_2 LIKE 'D_az' OR apellido_2 LIKE 'M%o';

SELECT  * FROM empleado WHERE apellido_2 IN ('Díaz','Moreno');

SELECT nombre, apellido_1, apellido_2, nif FROM empleado 
WHERE id_departamento = 3;

SELECT nombre, apellido_1, apellido_2, nif FROM empleado 
WHERE id_departamento IN(2, 4, 5);

SELECT * FROM empleado e
INNER JOIN departamento d ON d.id = e.id_departamento; 


