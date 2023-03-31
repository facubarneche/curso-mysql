#Funcion de Agrupamiento Group By

create table visitantes(
	nombre varchar(30),
    edad tinyint unsigned,
    sexo char(1),
    domicilio varchar(30),
    ciudad varchar(20),
    telefono varchar(11),
    montocompra decimal (6,2) unsigned
);

insert into visitantes values ('Susana Molina', 28, 'f', 'Colon 123', 'Cordoba', null, 45.50);
insert into visitantes values ('Marcela Mercado', 36,'f','Avellaneda 345','Cordoba','45454545', 0);
insert into visitantes values ('Alberto Garcia', 35, 'm', 'Gral Paz 123', 'Alta Gracia', '03547018858',25);
insert into visitantes values ('Teresa Garcia', 33, 'f', 'Gral Paz 123', 'Alta Gracia', '03547018858',0);
insert into visitantes values ('Roberto Perez', 45, 'm', 'Urquiza 335', 'Cordoba', '4123456', 33.20);
insert into visitantes values ('Marina Torres', 22, 'f','Colon 222','Villa Dolores','03577778855',25);
insert into visitantes values ('Julieta Gomez', 24,'f','San Martin 333', 'Alta Gracia', '03546464646',53.50);
insert into visitantes values ('Roxana Lopez', 20, 'f', 'Triunvirato 354', 'Alta Gracia', null, 0);
insert into visitantes values ('Liliana Garcia',50,'f','Paso 999','Cordoba','45456565',48);
insert into visitantes values ('Juan Torres',43,'m', 'Sarmiento 876', 'Cordoba','49494949',15.30);


select count(*) from visitantes where ciudad = 'Cordoba';
select count(*) from visitantes where ciudad = 'Alta Gracia';

select ciudad, count(*) from visitantes group by ciudad; 
select sexo, sum(montocompra) from visitantes group by sexo;
select max(montocompra), min(montocompra) from visitantes group by sexo;
select ciudad, sexo, count(*) from visitantes group by ciudad, sexo;
select ciudad, count(*) from visitantes where ciudad <> 'Cordoba' group by ciudad;
select ciudad, count(*) from visitantes group by ciudad desc;

# Registros duplicados distinct
select * from productos;
select proveedor from productos;
select distinct proveedor from productos;
select distinct proveedor from productos group by proveedor asc;

#Indices

#Indice Primary
create table if not exists libro(
id int unsigned auto_increment not null,
titulo varchar(100),
autor varchar(50),
descripcion text,
editorial varchar(15),
primary key(id)
);

show index from libro;

#Tipo Index Comun
create table if not exists libros(
id int unsigned auto_increment not null,
titulo varchar(100),
autor varchar(50) not null,
descripcion text,
editorial varchar(15) not null,
primary key(id),
index i_autoreditorial (autor, editorial)
);

show index from libros;
drop table libros;

#Tipo Unique
create table if not exists libros(
id int unsigned auto_increment not null,
titulo varchar(100),
autor varchar(50) not null,
descripcion text,
editorial varchar(15) not null,
primary key(id),
index i_autor (autor),
unique uq_titulo (titulo)
);

insert into libros(titulo, autor, editorial) values('Java en 10 minutos', 'Alejandro', 'La maravilla');
insert into libros(titulo, autor, editorial) values('Java', 'Alejandro', 'La maravilla');
show index from libros;
select * from libros;

#Borrar Index
drop index i_autor on libros;
drop index uq_titulo on libros;

#Crear Index
create index i_editorial on libros (editorial);
create unique index uq_titulo on libros (titulo); 


















