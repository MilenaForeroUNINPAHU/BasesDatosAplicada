use dbfarmacia;

alter table aplicaciones
add caducidadOrden datetime;

alter table medicamentos
add proveedor varchar(20);

alter table stock
drop column cantidad;

alter table medicamentos 
change vencimiento fechaVencimiento datetime;

alter table aplicaciones
add proximaApli datetime
