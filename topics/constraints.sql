USE Avianca;

ALTER TABLE clientes DROP CONSTRAINT uq_nombres;
ALTER TABLE clientes ADD CONSTRAINT uq_nombres UNIQUE (nombres);

ALTER TABLE empleado NOCHECK CONSTRAINT chk_salario;
