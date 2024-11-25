IF EXISTS (SELECT name FROM sys.databases WHERE name = 'ventas')
BEGIN
    DROP DATABASE NombreDeLaBaseDeDatos;
END;

CREATE DATABASE ventas;
USE ventas;

CREATE TABLE cliente (
    id INT IDENTITY PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido1 VARCHAR(100) NOT NULL,
    apellido2 VARCHAR(100),
    ciudad VARCHAR(100),
    categoria INT
);

CREATE TABLE comercial (
    id INT IDENTITY PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido1 VARCHAR(100) NOT NULL,
    apellido2 VARCHAR(100),
    comision FLOAT
);

CREATE TABLE pedido (
    id INT IDENTITY PRIMARY KEY,
    total VARCHAR(100) NOT NULL,
    fecha VARCHAR(100) NOT NULL,
    id_cliente INT REFERENCES cliente(id),
    id_comercial INT REFERENCES comercial(id)
);
