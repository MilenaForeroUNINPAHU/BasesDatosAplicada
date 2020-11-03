create database usersFarmacia;

use usersFarmacia;

create table emailUser(
	id int not null auto_increment,
    email varchar(50) not null,
    statusEmail boolean not null,
    primary key(id)
);

create table ipsUser(
	id int not null auto_increment,
    userFarmacia varchar(50) not null,
    statusF boolean not null,
    idEmailUser int not null,
    primary key(id),
    constraint fk_emailUser foreign key(idEmailUser)
    references emailUser(id)
);

insert into emailUser
	value(0,"usuario1@gmail.com",true);
insert into emailUser
	value(0,"usuario2@gmail.com",true);
insert into emailUser
	value(0,"usuario3@gmail.com",true);
insert into emailUser
	value(0,"usuario4@gmail.com",true);
    
insert into ipsUser
	value(0,"usuario1",true,1);
insert into ipsUser
	value(0,"usuario2",true,2);
insert into ipsUser
	value(0,"usuario3",true,3);
insert into ipsUser
	value(0,"usuario4",true,4);
    
update ipsUser
set statusF=false
where id=2;

update ipsUser
set userFarmacia="usuario4-1@gmail.com"
where id=4;



