#Usar una base de datos
use fbarneche_mysql;

#Crear tablas
create table usuario(
nombre varchar(50),
edad int(15)
);

create table alumnos(
nombre varchar(50),
apellido varchar(50),
direccion varchar(100),
telefono varchar(15),
edad int(11)
);

#Muestra todas las tablas
show tables;

#Describe la tabla
describe usuario;

#Borra una tabla
drop table usuario;

#Insertar valores dentro de la tabla
insert into alumnos (nombre, apellido, direccion, telefono, edad) values ('Juan', 'De la Mata', 'Virreyes', '12312312', 31);
insert into alumnos values ('Pedro', 'Montero', '27 de febrero', '47513311', 15);
insert into alumnos values('Samuel', 'Medrano', 'Calle marzo', '12341234', 28);
insert into alumnos values('Cachito', 'Castaño', 'Palermo', '44448998', 60);
insert into alumnos (nombre, telefono, edad) values ('Miguel', '45454545', 36);

#Selecciona ciertos valores de la tabla
select * from alumnos; #Selecciona todos los alumnos
select nombre, edad, direccion from alumnos;
select nombre, telefono from alumnos;

#Selecciona ciertos valores con filtro de la tabla
select * from alumnos where nombre = 'Juan';
select nombre, edad from alumnos where nombre = 'Juan';

#Operadores Relacionales (=, <>, <, >, <=, >=)
select * from alumnos where nombre = 'Samuel';
select nombre, edad from alumnos where nombre <> 'Juan';
select nombre, apellido, edad from alumnos where edad > 15;
select nombre, apellido, edad from alumnos where edad < 36;
select * from alumnos where edad >= 15;
select * from alumnos where edad <= 36;

#Borra valores (Workbench pide desmarca una opción para ejecutar este comando ya que preferentemente es mejor no borrar datos de la bbdd)
delete from alumnos; #Borra todas las filas 
delete from alumnos where nombre = 'Juan';

#Edita Valores
update alumnos set edad = 33;
update alumnos set edad = 15 where nombre = 'Miguel';
update alumnos set apellido = 'Gonzalez', direccion = 'Virrey del pino' where nombre = 'Juan';
