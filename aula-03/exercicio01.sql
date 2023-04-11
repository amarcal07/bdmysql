
CREATE DATABASE db_generation_game_online;

CREATE TABLE tb_classes (
Id BIGINT AUTO_INCREMENT,
Descricao varchar (255) not null,
Grupos varchar (255) not null,
PRIMARY KEY (Id)
);


INSERT INTO Tb_classes (Descricao, Grupos )
VALUES ("Fada", "Herói" );

INSERT INTO tb_classes (descricao, Grupos )
VALUES ("Bruxa", "Vilão");

INSERT INTO tb_classes (descricao, Grupos )
VALUES ("Princesas", "Herói");

INSERT INTO tb_classes (descricao, Grupos )
VALUES ("Herói", "Herói");

INSERT INTO tb_classes (descricao, Grupos )
VALUES ("Magico", "Herói");

INSERT INTO tb_classes (descricao, Grupos)
VALUES ("Principe", "Herói");

SELECT * FROM tb_personagens;

CREATE TABLE Tb_personagens (
Id BIGINT AUTO_INCREMENT,
Nome varchar (255) not null,
Poder int,
Defesa int,
cidade varchar (255) not null,
classes_id  bigint,
PRIMARY KEY (Id),
FOREIGN KEY (classes_id) REFERENCES tb_classes (Id)
);

INSERT INTO tb_personagens (nome, poder, defesa, cidade, classes_id)
	Values ("Ariel", 3000, 1200, "Castelo do Reino de Atlantida", 3);
	INSERT INTO tb_personagens (nome, poder, defesa, cidade, classes_id)
Values ("Ursúla", 1000, 700, "Castelo do Reino de Atlantida", 2);
	INSERT INTO tb_personagens (nome, poder, defesa, cidade, classes_id)
Values ("Eric", 2000, 2500, "Castelo de Atlantida",6);
	INSERT INTO tb_personagens (nome, poder, defesa, cidade, classes_id)
Values ("Tinker Bell", 5000, 7000, "Refúgio das Fadas",1);
	INSERT INTO tb_personagens (nome, poder, defesa, cidade, classes_id)
Values ("Harry Potter", 10000, 15000, "Hogwarts", 5);
	INSERT INTO tb_personagens (nome, poder, defesa, cidade, classes_id)
Values ("Homem de ferro", 25000, 50000, "New York",4);

SELECT * FROM tb_personagens WHERE poder > 2000;
SELECT * FROM tb_personagens WHERE defesa > 1000 and defesa < 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classes_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classes_id = tb_classes.id WHERE tb_classes.grupos = "Herói";