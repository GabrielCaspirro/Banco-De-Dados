-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Set-2024 às 14:00
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estacionamento`
--
CREATE DATABASE IF NOT EXISTS `estacionamento` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `estacionamento`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `andar`
--

CREATE TABLE `andar` (
  `codLugar` int(11) NOT NULL,
  `capacidade` int(11) DEFAULT NULL,
  `andar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `andar`
--

INSERT INTO `andar` (`codLugar`, `capacidade`, `andar`) VALUES
(1, 50, 'Térreo'),
(2, 60, 'Primeiro'),
(3, 45, 'Segundo'),
(4, 70, 'Terceiro'),
(5, 55, 'Quarto'),
(6, 65, 'Quinto'),
(7, 40, 'Sexto'),
(8, 80, 'Sétimo'),
(9, 90, 'Oitavo'),
(10, 30, 'Nono'),
(11, 50, 'Décimo'),
(12, 75, 'Décimo Primeiro'),
(13, 85, 'Décimo Segundo'),
(14, 60, 'Décimo Terceiro'),
(15, 100, 'Décimo Quarto'),
(16, 55, 'Décimo Quinto'),
(17, 65, 'Décimo Sexto'),
(18, 45, 'Décimo Sétimo'),
(19, 70, 'Décimo Oitavo'),
(20, 50, 'Décimo Nono');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` varchar(20) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `dtnasc` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `nome`, `dtnasc`) VALUES
('01928374655', 'Camila Ribeiro', '1990-03-07 00:00:00'),
('09876543211', 'Gabriel Santos', '1997-09-25 00:00:00'),
('10293847566', 'Jéssica Vieira', '1983-11-09 00:00:00'),
('11111111111', 'João Silva', '1985-05-21 00:00:00'),
('12345678900', 'Roberta Carvalho', '1991-04-30 00:00:00'),
('19283746521', 'Rodrigo Nunes', '1987-07-16 00:00:00'),
('19283746522', 'Patrícia Rocha', '1986-03-25 00:00:00'),
('22222222222', 'Maria Souza', '1990-09-11 00:00:00'),
('23847654129', 'Marina Castro', '1990-12-03 00:00:00'),
('33333333333', 'Carlos Santos', '1987-03-15 00:00:00'),
('33333333334', 'João da Silva', '1985-05-10 00:00:00'),
('44444444444', 'Ana Paula', '1995-07-19 00:00:00'),
('55555555555', 'Pedro Almeida', '1992-01-29 00:00:00'),
('56473829100', 'Lucas Correia', '1994-06-18 00:00:00'),
('56473829199', 'Bruna Mendes', '1989-11-21 00:00:00'),
('66666666666', 'Luciana Costa', '1989-06-12 00:00:00'),
('77777777777', 'Ricardo Pereira', '1993-08-23 00:00:00'),
('82736491820', 'Rafael Duarte', '1988-02-05 00:00:00'),
('88888888888', 'Fernanda Oliveira', '1986-12-02 00:00:00'),
('98273645123', 'Thiago Ferreira', '1992-10-13 00:00:00'),
('99999999999', 'Paulo Lima', '1988-10-14 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estaciona`
--

CREATE TABLE `estaciona` (
  `codEstaciona` int(11) NOT NULL,
  `horSaida` datetime DEFAULT NULL,
  `dtEntrada` datetime DEFAULT NULL,
  `horEntrada` datetime DEFAULT NULL,
  `dtSaida` datetime DEFAULT NULL,
  `placa` varchar(20) DEFAULT NULL,
  `codLugar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `estaciona`
--

INSERT INTO `estaciona` (`codEstaciona`, `horSaida`, `dtEntrada`, `horEntrada`, `dtSaida`, `placa`, `codLugar`) VALUES
(1, '2024-09-15 18:00:00', '2024-09-15 09:00:00', '2024-09-15 09:00:00', '2024-09-15 18:00:00', 'ABC1234', 1),
(2, '2024-09-15 19:00:00', '2024-09-15 10:00:00', '2024-09-15 10:00:00', '2024-09-15 19:00:00', 'DEF5678', 2),
(3, '2024-09-15 20:00:00', '2024-09-15 11:00:00', '2024-09-15 11:00:00', '2024-09-15 20:00:00', 'GHI9012', 3),
(4, '2024-09-15 21:00:00', '2024-09-15 12:00:00', '2024-09-15 12:00:00', '2024-09-15 21:00:00', 'JKL3456', 4),
(5, '2024-09-15 22:00:00', '2024-09-15 13:00:00', '2024-09-15 13:00:00', '2024-09-15 22:00:00', 'MNO7890', 5),
(6, '2024-09-15 18:30:00', '2024-09-15 09:30:00', '2024-09-15 09:30:00', '2024-09-15 18:30:00', 'PQR1234', 6),
(7, '2024-09-15 19:30:00', '2024-09-15 10:30:00', '2024-09-15 10:30:00', '2024-09-15 19:30:00', 'STU5678', 7),
(8, '2024-09-15 20:30:00', '2024-09-15 11:30:00', '2024-09-15 11:30:00', '2024-09-15 20:30:00', 'VWX9012', 8),
(9, '2024-09-15 21:30:00', '2024-09-15 12:30:00', '2024-09-15 12:30:00', '2024-09-15 21:30:00', 'YZA3456', 9),
(10, '2024-09-15 22:30:00', '2024-09-15 13:30:00', '2024-09-15 13:30:00', '2024-09-15 22:30:00', 'BCD7890', 10),
(11, '2024-09-15 18:45:00', '2024-09-15 09:45:00', '2024-09-15 09:45:00', '2024-09-15 18:45:00', 'CDE1234', 11),
(12, '2024-09-15 19:45:00', '2024-09-15 10:45:00', '2024-09-15 10:45:00', '2024-09-15 19:45:00', 'EFG5678', 12),
(13, '2024-09-15 20:45:00', '2024-09-15 11:45:00', '2024-09-15 11:45:00', '2024-09-15 20:45:00', 'HIJ9012', 13),
(14, '2024-09-15 21:45:00', '2024-09-15 12:45:00', '2024-09-15 12:45:00', '2024-09-15 21:45:00', 'KLM3456', 14),
(15, '2024-09-15 22:45:00', '2024-09-15 13:45:00', '2024-09-15 13:45:00', '2024-09-15 22:45:00', 'NOP7890', 15),
(16, '2024-09-15 23:00:00', '2024-09-15 14:00:00', '2024-09-15 14:00:00', '2024-09-15 23:00:00', 'QRS1234', 16),
(17, '2024-09-15 23:30:00', '2024-09-15 14:30:00', '2024-09-15 14:30:00', '2024-09-15 23:30:00', 'TUV5678', 17),
(18, '2024-09-16 00:00:00', '2024-09-15 15:00:00', '2024-09-15 15:00:00', '2024-09-16 00:00:00', 'WXY9012', 18),
(19, '2024-09-16 00:30:00', '2024-09-15 15:30:00', '2024-09-15 15:30:00', '2024-09-16 00:30:00', 'ZAB3456', 19),
(20, '2024-09-16 01:00:00', '2024-09-15 16:00:00', '2024-09-15 16:00:00', '2024-09-16 01:00:00', 'CDE7890', 20),
(21, '2024-09-16 18:00:00', '2024-09-16 09:00:00', '2024-09-16 09:00:00', '2024-09-16 18:00:00', 'JJJ2020', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `codModelo` int(11) NOT NULL,
  `modelo` varchar(30) DEFAULT NULL,
  `ano_fabricacao` varchar(10) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`codModelo`, `modelo`, `ano_fabricacao`, `descricao`) VALUES
(1, 'Honda Civic', '2020', 'Sedan compacto'),
(2, 'Toyota Corolla', '2019', 'Sedan médio'),
(3, 'Chevrolet Onix', '2018', 'Hatch compacto'),
(4, 'Fiat Uno', '2021', 'Hatch popular'),
(5, 'Volkswagen Golf', '2022', 'Hatch premium'),
(6, 'Renault Kwid', '2017', 'Mini SUV'),
(7, 'Hyundai HB20', '2016', 'Hatch compacto'),
(8, 'Ford Ka', '2015', 'Hatch popular'),
(9, 'Nissan Versa', '2014', 'Sedan compacto'),
(10, 'Peugeot 208', '2013', 'Hatch compacto'),
(11, 'Chevrolet Cruze', '2023', 'Sedan médio'),
(12, 'Jeep Renegade', '2012', 'SUV compacto'),
(13, 'BMW X1', '2011', 'SUV premium'),
(14, 'Mercedes-Benz C200', '2010', 'Sedan executivo'),
(15, 'Audi A3', '2009', 'Hatch premium'),
(16, 'Toyota Hilux', '2008', 'Picape média'),
(17, 'Ford Ranger', '2007', 'Picape média'),
(18, 'Volkswagen Tiguan', '2006', 'SUV médio'),
(19, 'Kia Sportage', '2005', 'SUV compacto'),
(20, 'Hyundai Tucson', '2004', 'SUV médio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` varchar(20) NOT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `codModelo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `cor`, `cpf`, `codModelo`) VALUES
('ABC1234', 'Vermelho', '11111111111', 1),
('BCD7890', 'Rosa', '12345678900', 10),
('CDE1234', 'Laranja', '09876543211', 11),
('CDE7890', 'Cinza', '19283746522', 20),
('DEF5678', 'Azul', '22222222222', 2),
('EFG5678', 'Bege', '10293847566', 12),
('GHI9012', 'Preto', '33333333333', 3),
('HIJ9012', 'Roxo', '56473829100', 13),
('JJJ2020', 'Preto', '33333333334', 5),
('JKL3456', 'Branco', '44444444444', 4),
('KLM3456', 'Dourado', '01928374655', 14),
('MNO7890', 'Prata', '55555555555', 5),
('NOP7890', 'Prata', '82736491820', 15),
('PQR1234', 'Cinza', '66666666666', 6),
('QRS1234', 'Branco', '56473829199', 16),
('STU5678', 'Verde', '77777777777', 7),
('TUV5678', 'Vermelho', '98273645123', 17),
('VWX9012', 'Amarelo', '88888888888', 8),
('WXY9012', 'Azul', '23847654129', 18),
('YZA3456', 'Marrom', '99999999999', 9),
('ZAB3456', 'Preto', '19283746521', 19);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`codLugar`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices para tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`codEstaciona`),
  ADD KEY `placa` (`placa`),
  ADD KEY `codLugar` (`codLugar`);

--
-- Índices para tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codModelo`);

--
-- Índices para tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`),
  ADD KEY `cpf` (`cpf`),
  ADD KEY `codModelo` (`codModelo`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `estaciona_ibfk_1` FOREIGN KEY (`placa`) REFERENCES `veiculo` (`placa`),
  ADD CONSTRAINT `estaciona_ibfk_2` FOREIGN KEY (`codLugar`) REFERENCES `andar` (`codLugar`);

--
-- Limitadores para a tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `cliente` (`cpf`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`codModelo`) REFERENCES `modelo` (`codModelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
