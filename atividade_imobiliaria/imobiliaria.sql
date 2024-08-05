-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE proprietario (
id_proprietario int PRIMARY KEY AUTO_INCREMENT,
nome varchar(200),
email varchar(200) unique,
telefone varchar(30),
cpf varchar(30) unique,
rg varchar(20) unique
);

CREATE TABLE corretor (
id_corretor int PRIMARY KEY AUTO_INCREMENT,
email varchar(200) unique,
telefone varchar(20),
rg varchar(30) unique,
nome varchar(100),
cpf varchar(20) unique
);

CREATE TABLE imovel (
id_imovel int PRIMARY KEY AUTO_INCREMENT,
lavanderia bit,
alugado bit,
area varchar(30),
comodos int,
quintal bit,
suite bit,
piscina bit,
id_proprietario int,
FOREIGN KEY(id_proprietario) REFERENCES proprietario (id_proprietario)
);

CREATE TABLE fiador (
id_fiador int PRIMARY KEY AUTO_INCREMENT, 
email varchar(100) unique,
rg varchar(30) unique,
cpf varchar(100) unique,
telefone varchar(100),
nome varchar(100)
);

CREATE TABLE endereço (
numero varchar(20),
cep varchar(30),
estado varchar(100),
bairro varchar(100),
rua varchar(100),
id_endereco int PRIMARY KEY,
complemento varchar(200),
id_fiador int,
id_corretor int,
id_imovel int,
id_proprietario int,
FOREIGN KEY(id_proprietario) REFERENCES proprietario (id_proprietario),
FOREIGN KEY(id_fiador) REFERENCES fiador (id_fiador),
FOREIGN KEY(id_corretor) REFERENCES corretor (id_corretor),
FOREIGN KEY(id_imovel) REFERENCES imovel (id_imovel)
);

CREATE TABLE inquilino (
id_inquilino int PRIMARY KEY AUTO_INCREMENT,
cpf varchar(20) unique,
email varchar(100) unique,
telefone varchar(20),
nome varchar(100),
rg varchar(30) unique,
id_fiador int,
ADD FOREIGN KEY(id_fiador) REFERENCES fiador (id_fiador)
);

CREATE TABLE midia (
id_midia int PRIMARY KEY,
midia varchar(255),
id_imovel int,
FOREIGN KEY(id_imovel) REFERENCES imovel (id_imovel)
)

CREATE TABLE aluguel (
id_aluguel int PRIMARY KEY AUTO_INCREMENT,
prazo date,
data_inicio date,
preco decimal(4,2),
id_imovel int,
id_corretor int,
id_inquilino int,
FOREIGN KEY(id_imovel) REFERENCES imovel (id_imovel),
FOREIGN KEY(id_corretor) REFERENCES corretor (id_corretor),
FOREIGN KEY(id_inquilino) REFERENCES inquilino (id_inquilino)
);


