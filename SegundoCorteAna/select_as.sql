create table stockPrincipal(
	id int not null auto_increment,
	nameMed varchar(60) not null,
    proveedor varchar(50) not null,
    lote varchar(10) not null,
    fechaVencimiento date not null,
    cantidad int not null,
    unidad varchar(10) not null,
    equivalencia float not null,
    primary key(id)
);

insert into stockPrincipal
value(0,"Simvastatina","Facmed","FAC-S1","2023-05-16 00:00:00",100,"mg",20);

insert into stockPrincipal
value(0,"Paracetamol","Cima","Ci-83","2021-04-23 00:00:00",100,"mg",500);

insert into stockPrincipal
value(0,"Amlodipino","Facmed","EFG4576","2022-05-16 00:00:00",100,"g",10);

select cantidad, equivalencia, cantidad*equivalencia as cantTotal
from stockPrincipal;

select concat(cantidad," ",unidad) as inventario
from stockPrincipal;