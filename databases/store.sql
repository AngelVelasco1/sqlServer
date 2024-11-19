CREATE DATABASE store;
USE store;

CREATE TABLE fabricante (
	id INT IDENTITY PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL
);

CREATE TABLE producto (
	id INT IDENTITY PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	precio float NOT NULL,
	id_fabricante INT NOT NULL REFERENCES fabricante(id)
);

INSERT INTO fabricante VALUES('ASUS'), 
('Lenovo'),
('Hewlett-Packard'),
('Samsung'),
('Seagate'),
('Crucial'),
('Huawei'),
('Xiaomi');

INSERT INTO producto VALUES('Disco duro SATA3 1TB', 86.99, 5), 
('Memoria RAM DDR4 8GB' , 120, 6),
('Disco SSD 1TB', 150.99, 4),
('GeForce GTX 1050Ti', 185, 7),
('GeForce GTX 1080 Extreme', 755, 6),
('Monitor 24 LED Full HD', 202, 1),
('Monitor 27 LED Full HD', 245.99, 1),
('Port�til Yoga 520', 559, 2),
('Port�til Ideapad 320', 444, 2),
('Impresora HP Deskjet 3720', 59.99, 3),
('Impresora HP Laserjet Pro M26nw', 180, 3);
INSERT INTO producto VALUES('Computador HP nvida plus', 600, 3);