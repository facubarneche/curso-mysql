
create table if not exists productos3(
id int unsigned not null auto_increment,
nombre varchar(50),
descripcion text,
proveedorid int unsigned not null,
precio decimal(5,2),
cantidad smallint unsigned default 0,
primary key(id),
unique index(nombre),
foreign key(proveedorid) references proveedor(id)
);

create table if not exists proveedor(
id int unsigned not null auto_increment,
nombre varchar(50),
primary key(id),
unique index(nombre)
);

insert into proveedor (nombre) values ('Lenovo');
insert into proveedor (nombre) values ('Logitech');
insert into proveedor (nombre) values ('Microsoft');
insert into proveedor (nombre) values ('HP');

insert into productos3(nombre, descripcion, proveedorid, precio, cantidad) values ('Lenovo 310', 'La mejor laptop', 1, 100,50);
insert into productos3(nombre, descripcion, proveedorid, precio, cantidad) values ('Mouse', 'Mouse inalambrico',2,15.96,5);
insert into productos3(nombre, descripcion, proveedorid, precio, cantidad) values ('Office 360', 'Paquete de office',3,150.69,30);
insert into productos3(nombre, descripcion, proveedorid, precio, cantidad) values ('HP Y700', 'La mejor laptop del mercado',4,10,15);
insert into productos3(nombre, descripcion, proveedorid, precio, cantidad) values ('Alfombra Lenovo', 'Alfombra Asombrosas',1,300,40);
insert into productos3(nombre, descripcion, proveedorid, precio, cantidad) values ('Laptop HP 1000', 'No funciona muy bien',4,500,3);
insert into productos3(nombre, descripcion, proveedorid, precio, cantidad) values ('Volante Gamer', 'El mejor volante',2,800,5);
insert into productos3(nombre, descripcion, proveedorid, precio, cantidad) values ('Disco Duro', 'Obten mas capacidad',3,70,80);

#Estructuras del Join
select * from productos3 join proveedor on productos3.proveedorid=proveedor.id;

select p.nombre, descripcion, precio, pro.nombre from productos3 as p
join proveedor as pro
on p.proveedorid=pro.id;

#Left Join
select * from productos3
left join proveedor
on proveedor.id=productos3.proveedorid;

#Right Join
select * from productos3
right join proveedor
on proveedor.id=productos3.proveedorid;

#Inner Join
select p.nombre, p.descripcion, p.precio from proveedor as pro
inner join productos3 as p
on pro.id=p.proveerdorid;

#Straight Join
select p.nombre, p.descripcion, p.precio from proveedor as pro
straight_join productos3 as p
on pro.id=p.proveerdorid;