
CREATE DATABASE exercicio02;

CREATE TABLE produtos(
	id bigint auto_increment,
	Nomeproduto varchar(255) not null,
    Preco decimal not null,
    Quantidade int,
	Fabricante varchar (255) not null,
	Anofabricacao int,
	PRIMARY KEY (id)
);

INSERT INTO produtos(Nomeproduto, Preco, Quantidade, Fabricante, Anofabricacao)
values ("Bolsa Andresa", 1000 , 50, "Santa Lolla" , 2015 );

INSERT INTO produtos(Nomeproduto, Preco, Quantidade, Fabricante, Anofabricacao)
values ("Bolsa Jamille", 800 , 100, "Colcci" , 2019 );

INSERT INTO produtos(Nomeproduto, Preco, Quantidade, Fabricante, Anofabricacao)
values ("Bolsa Bianca", 1200 , 60, "Gucci" , 2020 );

INSERT INTO produtos(Nomeproduto, Preco, Quantidade, Fabricante, Anofabricacao)
values ("Bolsa Deiziane", 2000 , 40, "Channel" , 2018 );

INSERT INTO produtos(Nomeproduto, Preco, Quantidade, Fabricante, Anofabricacao)
values ("Bolsa Heimy", 1300, 200, "Farm" , 2017 );

INSERT INTO produtos(Nomeproduto, Preco, Quantidade, Fabricante, Anofabricacao)
values ("Bolsa Yngrid", 1500 , 70, "Bagaggio" , 2021 );

INSERT INTO produtos(Nomeproduto, Preco, Quantidade, Fabricante, Anofabricacao)
values ("Bolsa Camille", 1600 , 250, "Petite Jolie" , 2016);

INSERT INTO produtos(Nomeproduto, Preco, Quantidade, Fabricante, Anofabricacao)
values ("Bolsa Liza", 1800 , 30, "Zattini" , 2013 );

SELECT * FROM produtos WHERE Preco < 500;

SELECT * FROM produtos WHERE Preco > 500;

SELECT * FROM produtos;

UPDATE produtos SET Preco = 1850 WHERE id = 2;

