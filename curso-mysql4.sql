create table if not exists productos(
id integer unsigned not null auto_increment,
nombre varchar(50),
proveedor varchar(50),
descripcion text,
precio decimal(5,2) unsigned,
cantidad smallint unsigned,
primary key(id)
);

insert into productos values (NULL,'Teclado','Logitech','Los mejores teclados',80.12,100);
insert into productos values (NULL,'Laptop','Dell','Las mejores laptops',200.8,15);
insert into productos values (NULL,'Pantalla','HP','Las mejores pantalla',155.69,50);
insert into productos values (NULL,'Impresora','HP','Los mejores teclados',155,70);
insert into productos values (NULL,'Camaras','Logitech','Las mejores camaras',500,20);
insert into productos values (NULL,'Xbox 360','Xbox Microsoft','Las mejores consolas',103,60);
insert into productos values (NULL,'PlayStation 4','Sony','Las mejores play',15.69,50);
insert into productos values (NULL,'Lenovo 310','Lenovo','Las mejores laptop',155.69,50);

#Columnas calculadas
select nombre, precio, cantidad from productos;
select nombre, precio, cantidad, precio * cantidad from productos;
select nombre, precio, precio * 0.1, precio - (precio * 0.1) from productos;

#Funciones de manejo de cadenas
select concat('Hola,', ' ', 'como estas?');
select concat_ws('/', 'Miguel', 'Lopez', 'Martinez');
select length('Hola Mundo');
select left('Buenas Noches', 8);
select right('Buenas Tardes', 10);
select ltrim ('            Hola Mundo                   ');
select rtrim ('            Hola Mundo                   ');
select trim ('            Hola Mundo                   ');
select replace ('xxx.udemy.com', 'x', 'w');
select repeat('SQL', 5);
select reverse('Hola');
select lower('Hola Como esTAS?');
select lcase('Hola Como esTAS?');
select upper('Hola Como esTAS?');
select ucase('Hola Como esTAS?');

select concat_ws('/', nombre, precio) from productos;
select left (nombre, 5) from productos; 
select lower(nombre), upper(descripcion) from productos;

#Funciones Matematicas
select ceiling(12.1); #Redondea hacia arriba
select ceiling(precio) from productos;
select floor(12.1); #Redondea hacia abajo
select floor(precio) from productos;
select round(20.60); #Redondea con el menor error
select mod (10,3 ); #Resto de la division
select power (2, 3); #x a la y

#Order By
select nombre, descripcion, precio, cantidad from productos order by nombre;
select nombre, precio, cantidad from productos order by nombre desc;

#Operadores Logicos
select * from productos;
select * from productos where (proveedor = 'HP') and (precio <= 200);
select * from productos where (proveedor = 'HP') or (precio <= 200);
select * from productos where (proveedor = 'HP') xor (precio <= 200);
select * from productos where not (proveedor = 'HP');

#Operadores Relacionales Between - in
select * from productos where (precio >= 100) and (precio <= 160);
select * from productos where precio between 100 and 160;
select * from productos where not precio between 100 and 160;
select * from productos where (proveedor = 'HP') or (descripcion = 'Las mejores laptops');
select * from productos where proveedor in ('HP') or descripcion in ('Las mejores laptops');

#Busqueda de patrones like - not like
select * from productos where descripcion like '%laptop%';
select * from productos where descripcion not like '%laptop%';
select * from productos where nombre like 'l%';
select * from productos where nombre not like 'l%';

# Patron de busqueda Regexp - not Regexp
select * from productos where proveedor regexp 'logit'; #Que contengan logit
select * from productos where proveedor regexp '[hi]';	# Que contenga la h y la i
select * from productos where proveedor regexp '[a-c]'; # Que contenga alguna de la a a la c
select * from productos where proveedor regexp '^D'; # Que empiece con la D
select * from productos where proveedor regexp 'o.i'; # Las que tienen una o, luego cualquier caracter seguido de una i 
select * from productos where proveedor regexp 'a.*a'; # Las que tienen una a, luego cualquier/es caracter/es y otra a

#Funcion count
select count(*) from productos;
select count(*) from productos where proveedor = 'HP';
select count(*) from productos where descripcion like '%laptop%';

#Funciones de Agrupamientos
select sum(cantidad) from productos;
select sum(cantidad) from productos where proveedor = 'HP';
select max(precio) from productos;
select min(precio) from productos;
select min(precio) from productos where nombre like '%Laptop%';
select avg(precio) from productos where nombre like '%Laptop%';

























