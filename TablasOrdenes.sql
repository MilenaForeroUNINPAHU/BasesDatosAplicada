create database dbordenesmedicas;

use dbordenesmedicas;

create table OrdenEspecialidad (
	idOrdenEspecialidad int auto_increment,
    TipodeExamen varchar(50),
    DepartamentodeEspecialidad varchar(50),
    idTipodeExamen int,
    idPacienteaExaminar int,
    constraint KPOrdenEspecialidad primary key(idOrdenEspecialidad),
    constraint KFidTipodeExamen foreign key(idTipodeExamen) references cita(idTipodeExamen),
    constraint KFidPaciente foreign key(idPacienteaExaminar) references paciente(idPaciente)
);

create table Paciente (
	idPaciente int auto_increment,
    nombrePaciente varchar(50),
    apellidoPaciente varchar(50),
    constraint PKOrdenEspecialidad primary key(idPaciente)
);

create table TipodeExamen (
	idOrdenEspecialidad int auto_increment,
    idPacienteTipodeExamen int,
    idPacienteaExaminar int,
    constraint KPidOrdenEspecialidad primary key(idOrdenEspecialidad),
    constraint KFidPaciente foreign key(idPacienteaExaminar) references doctor(idOrdenEspecialidad),
    constraint KFidOrdenEspacialidad foreign key(idTipodeExamen) references paciente(idPaciente)
)
