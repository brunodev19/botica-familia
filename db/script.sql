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
--6. insertar valor  3 valores a tabla login
insert into login values ('fabi123', 'elizabethcg');
insert into login values ('miguel', '123');
insert into login values ('bruno','345');
--7. insertar valor a tabla inventario
insert into inventario values (00001, 'amoxicilina', 'FarmaIndustria', 0.20, 020, 1000);
