

create database Hospital

create table Paciente 
(
	cedula varchar(14) primary key,
	nombre varchar(50) not null, --Por fuerza se debe poner el nombre
	genero char(1),
	provincia varchar (15),
	canton varchar (30),
	ciudad varchar(30),
	telefono varchar(12),
	seguro bit,
	edad varchar(2)
)

--insert into Paciente values ('1', 'Marta Sánchez', 'M'...)
