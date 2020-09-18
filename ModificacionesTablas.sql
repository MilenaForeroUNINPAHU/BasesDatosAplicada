use dbcitashospital;

ALTER TABLE cita ADD cantidadCitas int;

ALTER TABLE paciente ADD edad int not null;

ALTER TABLE paciente DROP column apellidoPaciente;

ALTER TABLE paciente modify nombrePaciente varchar(30);

ALTER TABLE paciente change nombrePaciente namePaciente varchar(30);

ALTER TABLE paciente DROP CONSTRAINT FKidPaciente;

ALTER TABLE paciente 
	change nombrePaciente patientName varchar(30),
    add patientLastName varchar(30)
