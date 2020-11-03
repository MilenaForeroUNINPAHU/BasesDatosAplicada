use registropaciente;

/* Query para insertar un registro*/
insert into pacientes(nombre, tipodocumento, numdocumento, eps, direccion, telefono, email, edad, fecha) values("Ana Guzman", "CC", 1151958723, "Medimas", "calle 72", 310634, "ana@mail.com", 35, "1995-10-12");

/* Query para actualizar el valor de una columna*/
update pacientes set tipodocumento = "TI" where id = 1;

/* Query para borrar un registro*/
delete from pacientes where id = 3;

/* Query para concatenar los valores de dos columnas*/
select concat("Nombres: ", nombre, " - Su Eps: ", eps) As Pacientes from pacientes;

/* Querys de operadores logicos*/
select * from pacientes where (nombre = "Ricardo Ramirez") and (edad = 35);

select * from pacientes where (nombre = "Ricardo Ramirez") or (edad = 30);

select * from pacientes where (nombre = "Ricardo Ramirez") xor (edad = 30);

select * from pacientes where not (nombre = "Ricardo Ramirez");

/* Query de formato de fecha*/
select Nombre, date_format(fecha, "%d-%m-%Y") from pacientes;

/* Query de operador matematico*/
select edad * 2 As Edad from pacientes;

/* Query de operador de comparación*/
select nombre, eps from pacientes where edad < 35;

/* Query de selección multiple*/
select * from pacientes where id in(5,7);