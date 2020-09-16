create database dbfarmacia;

use dbfarmacia;

create table Medicamentos (
	idMedicamentos int primary key auto_increment,
    nombreMed varchar(50) not null,
    lote int not null,
    vencimiento datetime not null
    
);
create table Aplicaciones (
	idAplicaciones int primary key auto_increment,
    fechaApli datetime not null,
    dosis int not null
   
    );

create table Stock (
	idStock int primary key auto_increment,
    cargaMed boolean,
    salidaMed boolean,
    cantidad int not null,
    
    constraint tS_tM 
    foreign key(idStock) 
    references Medicamentos(idMedicamentos),
    
    constraint tS_tA 
    foreign key(idStock) 
    references Aplicaciones(idAplicaciones)
)