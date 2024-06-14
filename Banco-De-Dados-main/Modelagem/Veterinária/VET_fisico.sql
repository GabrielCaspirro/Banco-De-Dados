-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

CREATE DATABASE Veterinaria;
USE Veterinaria;

CREATE TABLE Dono (
id_dono int PRIMARY KEY AUTO_IMPLEMENT,
telefone varchar(255),
número varchar(255),
bairro varchar(255),
rua varchar(255),
cpf varchar(255),
cep varchar(255),
complemento varchar(255),
RG varchar(255),
nome varchar(255)
);

CREATE TABLE Animal (
espécie varchar(50),
nome varchar(50),
id_animal int PRIMARY KEY AUTO_IMPLEMENT,
vacinação varchar(255),
raça varchar(50),
idade int,
porte varchar(255),
id_dono int,
FOREIGN KEY(id_dono) REFERENCES Dono (id_dono)
);

CREATE TABLE Veterinário (
id_veterinario int PRIMARY KEY AUTO_IMPLEMENT,
nome varchar(255),
RG varchar(255),
rua varchar(255),
bairro varchar(255),
número varchar(255),
cep varchar(255),
cpf varchar(255),
complemento varchar(255),
telefone varchar(255)
);

CREATE TABLE Consulta (
id_consulta int PRIMARY KEY AUTO_IMPLEMENT,
data varchar(255),
horário varchar(255),
preço decimal,
Resultado varchar(255),
id_animal int,
id_veterinario int,
FOREIGN KEY(id_animal) REFERENCES Animal (id_animal),
FOREIGN KEY(id_veterinario) REFERENCES Veterinário (id_veterinario)
);

