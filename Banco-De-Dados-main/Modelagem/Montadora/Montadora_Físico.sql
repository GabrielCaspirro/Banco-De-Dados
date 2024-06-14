-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

CREATE DATABASE Montadora;
USE Montadora;

CREATE TABLE empregado (
cpf varchar(255),
rg varchar(255),
id_empregado int PRIMARY KEY AUTO_IMPLEMEMENT,
cep varchar(255),
rua varchar(255),
cidade varchar(255),
estado varchar(255),
bairro varchar(255),
id_departamento int
);

CREATE TABLE departamento (
id_departamento int PRIMARY KEY AUTO_IMPLEMENT,
rua varchar(255),
bairro varchar(255),
cidade varchar(255),
estado varchar(255),
complemento varchar(255),
cep varchar(255)
);

CREATE TABLE produto (
id_produto int PRIMARY KEY AUTO_IMPLEMENT,
preço decimal,
marca varchar(255),
modelo varchar(255),
id_empregado int,
id_estoque int,
FOREIGN KEY(id_empregado) REFERENCES empregado (id_empregado)
);

CREATE TABLE estoque (
id_estoque int PRIMARY KEY AUTO_IMPLEMENT,
cep varchar(255),
rua varchar(255),
bairro varchar(255),
cidade varchar(255),
estado varchar(255),
complemento varchar(255)
);

ALTER TABLE empregado ADD FOREIGN KEY(id_departamento) REFERENCES departamento (id_departamento);
ALTER TABLE produto ADD FOREIGN KEY(id_estoque) REFERENCES estoque (id_estoque);
