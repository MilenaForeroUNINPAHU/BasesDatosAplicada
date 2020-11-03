create table userFarmacia(
	id int not null auto_increment,
	userName varchar(60) not null,
    age int not null,
    bloodType varchar(4),
    weight int not null,
    size int not null,
    primary key(id)
);
    
insert into userFarmacia
value(0,"Camilo Monsalve",23,"A+",70,186);
    
insert into userFarmacia
value(0,"Karen Sanchez",27,"AB-",67,166);
    
insert into userFarmacia
value(0,"Prisila Gomez",35,"B+",55,150);
    
insert into userFarmacia
value(0,"Santiago Zapata",29,"O+",79,183);
    
insert into userFarmacia
value(0,"Maria Lopez",41,"O-",60,160);
    
select * from userFarmacia;

select userName,bloodType
from userFarmacia;

select id,userName,bloodType
from userFarmacia
order by userName asc;

select id,userName,bloodType
from userFarmacia
order by userName desc;

select id,userName,bloodType
from userFarmacia
where bloodType="A+"
order by userName asc;