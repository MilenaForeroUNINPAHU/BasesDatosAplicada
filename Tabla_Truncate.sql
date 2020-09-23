create database dbHistoriaClinica;

use dbHistoriaClinica;

create table Historiaclinica (
	idHistoriaClinica int primary key auto_increment,
    nombrePaciente varchar(40) not null,
    Edad int not null,
    FechadeNacimiento datetime not null
    
);
create table Especialidad (
	Especialidad int primary key auto_increment,
    CitaSolicitada datetime not null,
    FechadeCita int not null
   
    );



create table dbHistoriaClinica(
    id int primary key auto_increment not null,
    nombrePaciente varchar(20) not null
    );
    rename table BasePaciente to tabletestrenamed;
    truncate table tabletesttrenamed;
    drop table tabletesttrenamed;
    
    