use dbcitashospital;

select cantidadCitas from paciente order by cantidadCitas desc;

insert into paciente(nombrePaciente, apellidoPaciente, cantidadCitas) value('Ricardo', 'Gomez', 4), ('Daniela', 'Pardo', 10);

update paciente set cantidadCitas = 6 where cantidadCitas > 4;

delete from paciente where idPaciente=1;

/*alter table paciente add cantidadCitas int;*/