-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

CREATE DATABASE Livraria;
USE Livraria;

CREATE TABLE autor (
id_autor int PRIMARY KEY AUTO_INCREMENT,
livros varchar(255),
dataNasc varchar(255),
assinatura varchar(255)
);

CREATE TABLE editora (
cep varchar(255),
cnpj varchar(255),
complemento varchar(255),
bairro varchar(255),
estado varchar(255),
rua varchar(255),
id_editora int PRIMARY KEY AUTO_INCREMENT,
num varchar(255)
);

CREATE TABLE cliente (
telefone varchar(255),
email varchar(255),
dataNasc varchar(255),
estado varchar(255),
cidade varchar(255),
complemento varchar(255),
rua varchar(255),
num varchar(255),
cpf varchar(255),
bairro varchar(255),
cep varchar(255),
id_cliente int PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE livro (
id_livro int PRIMARY KEY AUTO_INCREMENT,
titulo varchar(255),
publicacao varchar(255),
classificação varchar(255),
gênero varchar(255),
preço decimal,
id_autor int,
id_editora int,
id_pedido int,
FOREIGN KEY(id_autor) REFERENCES autor (id_autor),
FOREIGN KEY(id_editora) REFERENCES editora (id_editora)
);

CREATE TABLE pedido (
id_pedido int PRIMARY KEY AUTO_INCREMENT,
data varchar(255),
id_cliente int,
FOREIGN KEY(id_cliente) REFERENCES cliente (id_cliente)
);

ALTER TABLE livro ADD FOREIGN KEY(id_pedido) REFERENCES pedido (id_pedido);
