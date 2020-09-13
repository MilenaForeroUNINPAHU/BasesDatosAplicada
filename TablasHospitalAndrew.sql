create database dbcitashospital;

use dbcitashospital;

create table Doctor (
	idDoctor int auto_increment,
    nombreDoctor varchar(50),
    apellidoDoctor varchar(50),
    idCitaDoctor int,
    idPacienteDoctor int,
    constraint PKDoctor primary key(idDoctor),
    constraint FKidCita foreign key(idCitaDoctor) references cita(idCita),
    constraint FKidPaciente foreign key(idPacienteDoctor) references paciente(idPaciente)
);

create table Paciente (
	idPaciente int auto_increment,
    nombrePaciente varchar(50),
    apellidoPaciente varchar(50),
    constraint PKDoctor primary key(idPaciente)
);

create table Cita (
	idCita int auto_increment,
    idPacienteCita int,
    idDoctorCita int,
    constraint PKidCita primary key(idCita),
    constraint FKidPaciente foreign key(idPacienteCita) references doctor(idDoctor),
    constraint FKidDoctor foreign key(idDoctorCita) references paciente(idPaciente)
)