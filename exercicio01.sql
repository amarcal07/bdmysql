
CREATE TABLE colaboradores(
	id bigint auto_increment,
	Nome varchar(255) not null,
    Sobrenome varchar(255) not null,
	Cargo varchar (255) not null,
	Departamento varchar (255) not null,
	Salario decimal not null,
	PRIMARY KEY (id)
);

INSERT INTO colaboradores(Nome, Sobrenome, Cargo, Departamento, Salario)
values ("Andresa", "Marçal" , "Desenvolvedora Junior", "COE" , 7500);
INSERT INTO colaboradores(Nome, Sobrenome, Cargo, Departamento, Salario)
values ("Bia", "Luna" , "Desenvolvedora Pleno", "COE" , 9500);
INSERT INTO colaboradores(Nome, Sobrenome, Cargo, Departamento, Salario)
values ("Deiziane", "Rodrigues" , "Desenvolvedora Sênior", "COE" , 12500);
INSERT INTO colaboradores(Nome, Sobrenome, Cargo, Departamento, Salario)
values ("Heimy", "Dias" , "Coordenadora", "COE" , 13500);
INSERT INTO colaboradores(Nome, Sobrenome, Cargo, Departamento, Salario)
values ("Jamile", "Farias" , "Tech Lead", "COE" , 10500);
INSERT INTO colaboradores(Nome, Sobrenome, Cargo, Departamento, Salario)
values ("Yngrid", "Padilha" , "PO", "COE" , 14500);

SELECT * FROM colaboradores;

ALTER TABLE colaboradores MODIFY Salario decimal(6,3);

SELECT * FROM colaboradores WHERE Salario > 2000;

SELECT * FROM colaboradores WHERE Salario < 2000;