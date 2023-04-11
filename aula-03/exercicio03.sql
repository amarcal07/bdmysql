
CREATE DATABASE farmacia_bem_estar;

CREATE TABLE categorias(
	id bigint auto_increment,
	nome varchar(255) not null,
    descricao varchar(255) not null,
	PRIMARY KEY (id)
);

INSERT INTO categorias (nome, descricao) VALUES ("Medicamentos", "Dores e tratamento de doenças");

INSERT INTO categorias (nome, descricao) VALUES ("Dermocosméticos", "Cuidados Faciais e Corporais");

INSERT INTO categorias (nome, descricao) VALUES ("Higiene", "Produtos para higiene pessoal");

INSERT INTO categorias (nome, descricao) VALUES ("Perfumaria", "Nacionais e Importados");

INSERT INTO categorias (nome, descricao) VALUES ("Testes", "Testes em geral");

SELECT * FROM categorias;

CREATE TABLE produtos(
	id bigint auto_increment,
	nome varchar(255) not null,
    descricao varchar(255) not null,
    preco decimal (6,2) not null,
    estoque int,
    categoria_id bigint,
	PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

INSERT INTO produtos (nome, descricao, preco, estoque, categoria_id) VALUES ("Dipirona", "analgésico", 10.90 , 90, 1);

INSERT INTO produtos (nome, descricao, preco, estoque, categoria_id) VALUES ("Amoxilina", "antibiótico", 15.90 , 50, 1);

INSERT INTO produtos (nome, descricao, preco, estoque, categoria_id) VALUES ("Hidratante", "corporal", 35.90 , 70, 2);

INSERT INTO produtos (nome, descricao, preco, estoque, categoria_id) VALUES ("Esfoliante", "facial", 40.90 , 30, 2);

INSERT INTO produtos (nome, descricao, preco, estoque, categoria_id) VALUES ("Desodorante", "spray", 10.90 , 30, 3);

INSERT INTO produtos (nome, descricao, preco, estoque, categoria_id) VALUES ("Sabonete", "líquido", 16.90 , 20, 3);

INSERT INTO produtos (nome, descricao, preco, estoque, categoria_id) VALUES ("Colônia", "body splash", 70.90 , 200, 4);

INSERT INTO produtos (nome, descricao, preco, estoque, categoria_id) VALUES ("Perfume", "nacional", 89.90 , 150, 4);

INSERT INTO produtos (nome, descricao, preco, estoque, categoria_id) VALUES ("Teste", "gravidez", 10.90 , 10, 5);

INSERT INTO produtos (nome, descricao, preco, estoque, categoria_id) VALUES ("Teste", "covid", 15.90 , 60, 5);

SELECT * FROM produtos;

SELECT * FROM produtos WHERE preco > 50.00;

SELECT * FROM produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM produtos WHERE nome LIKE "%c%";

SELECT p.*, c.nome AS categoria_nome FROM produtos p INNER JOIN categorias c ON p.categoria_id = c.id;

SELECT p.*, c.nome AS categoria_nome FROM produtos p INNER JOIN categorias c ON p.categoria_id = c.id WHERE c.nome = 'Dermocosméticos';






