USE Avianca;

-- Alterar Columna 
ALTER TABLE clientes ALTER COLUMN apellidos VARCHAR(100) NOT NULL;

-- Actualizar campo
UPDATE clientes SET apellidos = '' WHERE apellidos IS NULL;

/* Añadir Columna */
ALTER TABLE clientes ADD municipio VARCHAR(100) NOT NULL DEFAULT 'Bucaramanga';
ALTER TABLE clientes ADD correo VARCHAR(50) UNIQUE;

