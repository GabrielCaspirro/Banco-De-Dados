-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

CREATE DATABASE Banco;
USE Banco;

CREATE TABLE agencia (
telefone varchar(255),
num varchar(255),
bairro varchar(255),
rua varchar(255),
complemento varchar(255),
cidade varchar(255),
cep varchar(255),
id_agencia int PRIMARY KEY AUTO_IMPLEMENT
);

CREATE TABLE cliente+contacorrente+contapoup (
telefone varchar(255),
id_cliente int PRIMARY KEY AUTO_IMPLEMENT,
datanasc varchar(255),
email varchar(255),
num varchar(255),
renda decimal,
complemento varchar(255),
rg varchar(255),
profissao varchar(255),
cep varchar(255),
cidade varchar(255),
rua varchar(255),
cpf varchar(255),
bairro varchar(255),
id_agencia int,
FOREIGN KEY(id_agencia) REFERENCES agencia (id_agencia)
);

