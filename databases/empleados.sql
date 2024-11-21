use empleados;
CREATE DATABASE empleados;
use empleados;

CREATE TABLE empleado (
    id INT IDENTITY PRIMARY KEY,
    nif VARCHAR(10) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    apellido_1 VARCHAR(100) NOT NULL,
    apellido_2 VARCHAR(100),
    id_departamento INT REFERENCES departamento(id)
);
DROP table empleado;
DROP table departamento;
CREATE TABLE departamento (
    id INT IDENTITY PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    presupuesto FLOAT NOT NULL,
    gastos FLOAT NOT NULL
);

INSERT INTO departamento VALUES('Desarrollo', 120000, 6000);
INSERT INTO departamento VALUES('Sistemas', 150000, 21000);
INSERT INTO departamento VALUES('Recursos Humanos', 280000, 25000);
INSERT INTO departamento VALUES('Contabilidad', 110000, 3000);
INSERT INTO departamento VALUES('I+D', 375000, 380000);
INSERT INTO departamento VALUES('Proyectos', 0, 0);
INSERT INTO departamento VALUES('Publicidad', 0, 1000);
INSERT INTO empleado VALUES('32481596F', 'Aarón', 'Rivero', 'Gómez', 1);
INSERT INTO empleado VALUES('Y5575632D', 'Adela', 'Salas', 'Díaz', 2);
INSERT INTO empleado VALUES('R6970642B', 'Adolfo', 'Rubio', 'Flores', 3);
INSERT INTO empleado VALUES('77705545E', 'Adrián', 'Suárez', NULL, 4);
INSERT INTO empleado VALUES('17087203C', 'Marcos', 'Loyola', 'Méndez', 5);
INSERT INTO empleado VALUES('38382980M', 'María', 'Santana', 'Moreno', 1);
INSERT INTO empleado VALUES('80576669X', 'Pilar', 'Ruiz', NULL, 2);
INSERT INTO empleado VALUES('71651431Z', 'Pepe', 'Ruiz', 'Santana', 3);
INSERT INTO empleado VALUES('56399183D', 'Juan', 'Gómez', 'López', 2);
INSERT INTO empleado VALUES('46384486H', 'Diego','Flores', 'Salas', 5);
INSERT INTO empleado VALUES('67389283A', 'Marta','Herrera', 'Gil', 1);
INSERT INTO empleado VALUES('41234836R', 'Irene','Salas', 'Flores', NULL);
INSERT INTO empleado VALUES('82635162B', 'Juan Antonio','Sáez', 'Guerrero', NULL);
INSERT INTO empleado VALUES('12345678A', 'Laura', 'López', 'Martínez', 1);
INSERT INTO empleado VALUES('23456789B', 'Carlos', 'Martín', 'Sánchez', 2);
INSERT INTO empleado VALUES('34567890C', 'Ana', 'Pérez', 'García', 3);
INSERT INTO empleado VALUES('45678901D', 'Luis', 'Rodríguez', 'Fernández', 4);
INSERT INTO empleado VALUES('56789012E', 'Elena', 'González', 'Torres', 5);
INSERT INTO empleado VALUES('67890123F', 'José', 'Hernández', 'Ramírez', 1);
INSERT INTO empleado VALUES('78901234G', 'Mónica', 'Jiménez', 'Flores', 2);
INSERT INTO empleado VALUES('89012345H', 'Alberto', 'García', 'López', 3);
INSERT INTO empleado VALUES('90123456I', 'Isabel', 'Martínez', 'González', 4);
INSERT INTO empleado VALUES('01234567J', 'Ricardo', 'Sánchez', 'Pérez', 5);
INSERT INTO empleado VALUES('11234568K', 'Sara', 'Fernández', 'Rodríguez', 1);
INSERT INTO empleado VALUES('21234569L', 'Tomás', 'Torres', 'Hernández', NULL);
INSERT INTO empleado VALUES('31234560M', 'Paula', 'Ramírez', 'Jiménez', 3);
INSERT INTO empleado VALUES('41234561N', 'Javier', 'Flores', 'García', 4);
INSERT INTO empleado VALUES('51234562O', 'Rosa', 'López', 'Martínez', NULL);
INSERT INTO empleado VALUES('61234563P', 'Francisco', 'Martín', 'Sánchez', 1);
INSERT INTO empleado VALUES('71234564Q', 'Eva', 'Pérez', 'García', 2);
INSERT INTO empleado VALUES('81234565R', 'Antonio', 'Rodríguez', 'Fernández', 3);
INSERT INTO empleado VALUES('91234566S', 'Beatriz', 'González', 'Torres', 4);
INSERT INTO empleado VALUES('10234567T', 'Cristina', 'Hernández', 'Ramírez', 5);
INSERT INTO empleado VALUES('20234568U', 'Miguel', 'Jiménez', 'Flores', 1);
INSERT INTO empleado VALUES('30234569V', 'Nuria', 'García', 'López', 2);
INSERT INTO empleado VALUES('40234560W', 'Sergio', 'Martínez', 'González', 3);
INSERT INTO empleado VALUES('50234561X', 'Ángel', 'Sánchez', 'Pérez', 4);
INSERT INTO empleado VALUES('60234562Y', 'Pablo', 'Fernández', 'Rodríguez', 5);
INSERT INTO empleado VALUES('70234563Z', 'Alicia', 'Torres', 'NULL', NULL);
INSERT INTO empleado VALUES('80234564A', 'Raúl', 'Ramírez', 'Jiménez', 2);
INSERT INTO empleado VALUES('90234565B', 'Clara', 'Flores', 'NULL', 3);
INSERT INTO empleado VALUES('11234566C', 'Julio', 'López', 'Martínez', 4);
INSERT INTO empleado VALUES('21234567D', 'Berta', 'Martín', 'Sánchez', 5);
INSERT INTO empleado VALUES('31234568E', 'Patricia', 'Pérez', 'García', 1);
INSERT INTO empleado VALUES('41234569F', 'Gonzalo', 'Rodríguez', 'Fernández', 2);
INSERT INTO empleado VALUES('51234560G', 'Silvia', 'González', 'Torres', 3);
INSERT INTO empleado VALUES('61234561H', 'Ignacio', 'Hernández', 'Ramírez', 4);
INSERT INTO empleado VALUES('71234562I', 'Fátima', 'Jiménez', 'Flores', 5);
INSERT INTO empleado VALUES('81234563J', 'Victor', 'García', 'López', 1);
INSERT INTO empleado VALUES('91234564K', 'Ainhoa', 'Martínez', 'González', NULL);
INSERT INTO empleado VALUES('10234565L', 'David', 'Sánchez', 'Pérez', 3);
INSERT INTO empleado VALUES('20234566M', 'Natalia', 'Fernández', 'NULL', 4);
INSERT INTO empleado VALUES('30234567N', 'Alba', 'Torres', 'Hernández', 5);
INSERT INTO empleado VALUES('40234568O', 'Enrique', 'Ramírez', 'Jiménez', 1);
INSERT INTO empleado VALUES('50234569P', 'Andrea', 'Flores', 'García', 2);
INSERT INTO empleado VALUES('60234560Q', 'Esteban', 'López', 'Martínez', 3);
INSERT INTO empleado VALUES('70234561R', 'Sofía', 'Martín', 'Sánchez', 4);
INSERT INTO empleado VALUES('80234562S', 'Pedro', 'Pérez', 'García', 5);
INSERT INTO empleado VALUES('90234563T', 'Iker', 'Rodríguez', NULL, 1);
INSERT INTO empleado VALUES('10234564U', 'Lidia', 'González', NULL, 2);
INSERT INTO empleado VALUES('20234565V', 'Emilio', 'Hernández', NULL, 3);
INSERT INTO empleado VALUES('30234566W', 'Lorena', 'Jiménez', NULL, 4);
INSERT INTO empleado VALUES('40234567X', 'Hugo', 'García', NULL, 5);