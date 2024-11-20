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