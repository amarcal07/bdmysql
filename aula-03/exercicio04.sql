
CREATE DATABASE cidade_das_carnes;

CREATE TABLE categorias (
Id BIGINT AUTO_INCREMENT,
nome varchar(255) not null,
descricao varchar(255) not null,
PRIMARY KEY (Id)
);

INSERT INTO categorias (nome, descricao) VALUES ("Carne", "suína");

INSERT INTO categorias (nome, descricao) VALUES ("Carne", "bovina");

INSERT INTO categorias (nome, descricao) VALUES ("Linguiça", "suína");

INSERT INTO categorias (nome, descricao) VALUES ("Linguiça", "pernil");

INSERT INTO categorias (nome, descricao) VALUES ("Peixe", "fresco");

SELECT * FROM categorias;

CREATE TABLE produtos(
	id bigint auto_increment,
	nome varchar(255) not null,
    descricao varchar(255) not null,
    preco decimal (6,2) not null,
    peso varchar(255) not null,
    categoria_id bigint,
	PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

INSERT INTO produtos (nome, descricao, preco, peso, categoria_id) VALUES ("Carré", "suíno", 12.90 , "1kg", 1);

INSERT INTO produtos (nome, descricao, preco, peso, categoria_id) VALUES ("Pernil", "defumado", 75.90 , "5kg", 1);

INSERT INTO produtos (nome, descricao, preco, peso, categoria_id) VALUES ("Contra-filé", "bovino", 37.90 , "1kg", 2);

INSERT INTO produtos (nome, descricao, preco, peso, categoria_id) VALUES ("Fillet Mignon", "maturatta", 49.90 , "1kg", 2);

INSERT INTO produtos (nome, descricao, preco, peso, categoria_id) VALUES ("Linguiça", "defumada", 12.90 , "1kg", 3);

INSERT INTO produtos (nome, descricao, preco, peso, categoria_id) VALUES ("Linguiça", "p/ churrascco", 80.90 , "5kg", 3);

INSERT INTO produtos (nome, descricao, preco, peso, categoria_id) VALUES ("Peixe", "sardinha", 29.90 , "2kg", 5);

INSERT INTO produtos (nome, descricao, preco, peso, categoria_id) VALUES ("Camarão", "cinza", 45.90 , "1kg", 5);

SELECT * FROM produtos;

SELECT * FROM produtos WHERE preco > 50.00;

SELECT * FROM produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM produtos WHERE nome LIKE "%c%";

SELECT * FROM produtos INNER JOIN categorias ON produtos.categoria_id = categorias.id;

SELECT * FROM produtos INNER JOIN categorias ON produtos.categoria_id = categorias.id WHERE categorias.descricao = "suína" ;