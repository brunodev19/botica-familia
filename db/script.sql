-- 1. Crear la base de datos
create schema botica;
-- 2. usar la base de datos botica
use botica;
-- 3. Crear la tabla login
create table login(
usuario varchar(50),
clave varchar(50),
PRIMARY KEY (usuario)
);
-- 4. Crear la tabla inventario
create table inventario(
codigo_producto int NOT NULL,
descripcion varchar(50),
precio_costo float(10),
precio_venta float(10),
stock int (10),
laboratorio varchar(50),
PRIMARY KEY (codigo_producto)
);
-- 5. Ver tablas
show tables
