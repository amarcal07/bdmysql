
CREATE DATABASE exercicio03;

CREATE TABLE estudantes(
	id bigint auto_increment,
    Nome varchar(255) not null,
    Sobrenome varchar(255) not null,
    Idade int,
    Sexo varchar (255) not null,
	Turma int,
	Curso varchar (255) not null,
    Nota int,
	PRIMARY KEY (id)
);

INSERT INTO estudantes(Nome, Sobrenome, Idade, Sexo, Turma, Curso, Nota)
values ("Andresa", "Marçal" , 26,  "Feminino", 62 , "Java", 5);

INSERT INTO estudantes(Nome, Sobrenome, Idade, Sexo, Turma, Curso, Nota)
values ("Deiziane", "Rodrigues" , 21, "Feminino", 64 , "JavaScript" , 7);

INSERT INTO estudantes(Nome, Sobrenome, Idade, Sexo, Turma, Curso, Nota)
values ("Jamile", "Farias" , 18, "Feminino", 67 , "Full Stack" , 6);

INSERT INTO estudantes(Nome, Sobrenome, Idade, Sexo, Turma, Curso, Nota)
values ("Heimy", "Dias" , 19, "Feminino", 61 , "Phyton" , 5);

INSERT INTO estudantes(Nome, Sobrenome, Idade, Sexo, Turma, Curso, Nota)
values ("Bianca", "Luna" , 26, "Feminino", 65 , "Sql" , 7);

INSERT INTO estudantes(Nome, Sobrenome, Idade, Sexo, Turma, Curso, Nota)
values ("Camille", "Bueno" , 19, "Feminino", 60 , "C#" , 6);

INSERT INTO estudantes(Nome, Sobrenome, Idade, Sexo, Turma, Curso, Nota)
values ("Yngrid", "Padilha" , 20, "Feminino", 67 , "PHP", 9);

INSERT INTO estudantes(Nome, Sobrenome, Idade, Sexo, Turma, Curso, Nota)
values ("Liza", "Haina" , 28, "Feminino", 62 , "FrontEnd", 7);

INSERT INTO estudantes(Nome, Sobrenome, Idade, Sexo, Turma, Curso, Nota)
values ("Rafael", "Queiroz" , 30, "Masculino", 63 , "BackEnd", 9);

SELECT * FROM estudantes;

SELECT * FROM estudantes WHERE Nota > 7;

SELECT * FROM estudantes WHERE Nota < 7;

UPDATE estudantes SET Turma = 68 WHERE id = 2;

