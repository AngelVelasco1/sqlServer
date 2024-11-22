USE Avianca;
ALTER TABLE clientes ALTER COLUMN apellidos VARCHAR(100) NOT NULL;
INSERT INTO clientes VALUES('Rodolfo', 'Alvarez Osorio', 'Medellin');
INSERT INTO clientes (nombres, apellidos) VALUES('Juan', 'Gutierrez');
UPDATE clientes SET apellidos = '' WHERE apellidos IS NULL;
select * from clientes;
ALTER TABLE clientes ADD municipio VARCHAR(100) NOT NULL DEFAULT 'Bucaramanga';

DELETE FROM clientes WHERE municipio = 'Medellin';

ALTER TABLE clientes ADD correo VARCHAR(50) UNIQUE;

