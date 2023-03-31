create table productos2(
id int unsigned not null auto_increment,
nombre varchar(50),
primary key(id)
);

#Agregando un campo ADD
alter table productos2 add precio int;
alter table productos2 add cantidad smallint unsigned not null;

#Eliminando un campo DROP
alter table productos2 drop precio;
alter table productos2 drop precio, drop cantidad;

#Modificar campos de las tablas MODIFY
alter table productos2 modify nombre varchar(100);
alter table productos2 modify precio decimal(5,2) not null;

#Cambiar el nombre de un campo CHANGE
alter table productos2 change cantidad stock int;
alter table productos2 change nombre titulop varchar(50) not null;


create table productos2(
id int unsigned not null,
nombre varchar(50)
);

#Agregando y eliminando clave Primaria
alter table productos2 add primary key(id);
alter table productos2 modify id int unsigned auto_increment not null;

#Antes de borrar la clave primaria hay que borrar el auto_increment
alter table productos2 modify id int unsigned not null;
alter table productos2 drop primary key;

#Agregar Indices ADD-DROP-INDEX
alter table productos2 add index i_precio (precio);#(precio, cantidad) tambien se puede
alter table productoss drop index i_precio;

#Renombrar una tabla RENAME-TO
alter table productos2 rename cliente;
rename table cliente to productos2;
rename table productos to auxiliar, clientes to productos, auxiliar to clientes;


show tables;
describe productos2;
