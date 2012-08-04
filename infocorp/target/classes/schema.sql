drop table clientes if exists;

create table clientes(dni varchar(8) primary key,
	nombres varchar(150),
	situacion varchar(150)
);