#Elimina una base de datos ya existente
#drop database if exists fbarneche_mysql;


#Crea una base de datos si no existe
create database if not exists fbarneche_mysql;

drop table if exists usuario;

create table if not exists usuario(
nombre varchar (50),
apellido varchar(50),
correo varchar (100),
primary key(nombre)
);

describe usuario;
select * from usuario;

#Error cuando se ingresa una misma primary key
insert into usuario values('Juan', 'De la Mateico', 'juancen@gmail.com.ar');
insert into usuario values('Juan', 'papu', 'papu@gmail.com');


create table if not exists producto(
id int(11) auto_increment,
producto varchar(50),
descripcion text,
precio float(11,3),
primary key(id)
);

insert into producto values (null, 'Auriculares', 'Auriculares inalambricos Sony', 5043.1);
insert into producto values (null, 'Mouse', 'Mause inalambricos Genius', 1900);
insert into producto (producto, precio) values ('PC', 123040.543);
insert into producto (producto, precio) values ('Silla', 23040.12312);

#Elimina toda la tabla pero desde 0, vuelven los ids a empezar tambien
#truncate table producto;

#El Unsigned se usa para valores enteros positivos
create table persona(
id integer unsigned not null,
nombre varchar(50),
edad integer unsigned,
primary key(id)
);

#Enteros
#UNSIGNED #se le puede especificar que solo sea positivo a todas las variables numericas
#TINYINT, SMALLINT, MEDIUMINT, INT, BIGINT

#Decimales
#FLOAT, DOUBLE, DECIMAL

#Cadenas
#CHAR, VARCHAR, BINARY, VARBINARY, TEXT, BLOB, TINYBLOB, MEDIUMBLOB, LONGBLOB, ENUM, SET

#Fechas
#DATE, DATETIME, TIME, TIMESTAMP, ON UPDATE CURRENT_TIMESTAMP, YEAR


