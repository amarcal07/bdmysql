-- Query para criação de banco de dados
CREATE DATABASE db_quitanda;

-- Começar a a usar o banco de dados
USE db_quitanda;

-- Criar tabela e popular
CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int,
    preco decimal not null,
    primary key(id)
    ); 
    
-- Visualizar a tabela
SELECT * FROM tb_produtos;

-- Popular tabela
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("tomate", 50 , 10.00);
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("banana", 200 , 12.00);
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("uva", 1200 , 30.00);
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("pera", 500 , 2.99);

-- Buscas específicas
SELECT nome, quantidade FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 5;

SELECT * FROM tb_produtos WHERE preco > 5.00 AND quantidade < 100;

-- Desabilitar nossa segurança do sql
SET SQL_SAFE_UPDATES = 0;

-- Atualizar colunas da tabela
UPDATE tb_produtos SET preco = 5.00  WHERE id = 2;

-- DELETE apaga dados
DELETE FROM tb_produtos WHERE id = 2 OR id = 3; 

-- Atualizar coluna
ALTER TABLE tb_produtos MODIFY preco decimal(6,2);

ALTER TABLE tb_produtos ADD descricao varchar(255);

-- DROP apaga estrutura
ALTER TABLE tb_produtos DROP descricao;

ALTER TABLE tb_produtos CHANGE nome nomedoproduto varchar(255);


