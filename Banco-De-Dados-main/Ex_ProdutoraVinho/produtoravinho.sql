-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/06/2024 às 17:48
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `produtoravinho`
--
CREATE DATABASE IF NOT EXISTS `produtoravinho` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `produtoravinho`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `casta`
--

CREATE TABLE `casta` (
  `casta_id` int(11) NOT NULL,
  `casta` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `casta`
--

INSERT INTO `casta` (`casta_id`, `casta`) VALUES
(1, 'Touriga Nacional'),
(2, 'Tinta Roriz'),
(3, 'Tinta Barroca'),
(4, 'Baga'),
(5, 'Alfrocheiro'),
(6, 'Jaen');

-- --------------------------------------------------------

--
-- Estrutura para tabela `casta_vinho`
--

CREATE TABLE `casta_vinho` (
  `codVinho` int(11) DEFAULT NULL,
  `codCasta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `casta_vinho`
--

INSERT INTO `casta_vinho` (`codVinho`, `codCasta`) VALUES
(6, 1),
(5, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtor`
--

CREATE TABLE `produtor` (
  `produtor_id` int(11) NOT NULL,
  `produtor` varchar(50) DEFAULT NULL,
  `moradaProdutor` varchar(50) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `codregiao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtor`
--

INSERT INTO `produtor` (`produtor_id`, `produtor`, `moradaProdutor`, `telefone`, `email`, `codregiao`) VALUES
(1, 'Qt.Vallado', 'Régua', '+351254323147', 'vallado@mail.telepac.pt', 1),
(2, 'Produtos Bertoldo', 'Colinas Verdes', '+351786543235', 'bertoldo@mail.com', 2),
(3, 'Finagra', 'Reguengos', '+351759365784', 'finagra@mail.com', 3),
(4, 'Vinhos Lindos', 'Ribeirão Ripes', '+351759365784', 'lindos@mail.com', 4),
(5, 'Vinhos Lindos e Baratos', 'André Santo', '+351123456789', 'baratos@mail.com', 5),
(6, 'Vinhos Sensacionais', 'Áuam', '+351259351835', 'sensacionais@mail.com', 6);

-- --------------------------------------------------------

--
-- Estrutura para tabela `regiao`
--

CREATE TABLE `regiao` (
  `idregiao` int(11) NOT NULL,
  `regiao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `regiao`
--

INSERT INTO `regiao` (`idregiao`, `regiao`) VALUES
(1, 'Dão'),
(2, 'Douro'),
(3, 'Alenteijo'),
(4, 'ETECMCM'),
(5, 'Fazenda da Etec'),
(6, 'Campos Anor Londo');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vinho`
--

CREATE TABLE `vinho` (
  `vinho_id` int(11) NOT NULL,
  `vinho` varchar(30) DEFAULT NULL,
  `ano_vinho` int(11) DEFAULT NULL,
  `cor` varchar(15) DEFAULT NULL,
  `grau` decimal(7,2) DEFAULT NULL,
  `preco` decimal(7,2) DEFAULT NULL,
  `codProdutor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `vinho`
--

INSERT INTO `vinho` (`vinho_id`, `vinho`, `ano_vinho`, `cor`, `grau`, `preco`, `codProdutor`) VALUES
(1, 'Esporão Reserva', 2004, 'Tinto', 14.50, 18.50, 3),
(2, 'Quinta do Vallado', 2004, 'Tinto', 14.00, 6.50, 1),
(3, 'Muros Antigos', 2006, 'Branco', 13.00, 7.50, 2),
(4, 'Carignan', 2002, 'Doce', 10.00, 8.50, 4),
(5, 'Petrus', 1945, 'Tinto', 9.00, 8000.00, 5),
(6, 'Catena', 2007, 'Seco', 9.50, 20.00, 6);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `casta`
--
ALTER TABLE `casta`
  ADD PRIMARY KEY (`casta_id`);

--
-- Índices de tabela `casta_vinho`
--
ALTER TABLE `casta_vinho`
  ADD KEY `codVinho` (`codVinho`),
  ADD KEY `codCasta` (`codCasta`);

--
-- Índices de tabela `produtor`
--
ALTER TABLE `produtor`
  ADD PRIMARY KEY (`produtor_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `codregiao` (`codregiao`);

--
-- Índices de tabela `regiao`
--
ALTER TABLE `regiao`
  ADD PRIMARY KEY (`idregiao`);

--
-- Índices de tabela `vinho`
--
ALTER TABLE `vinho`
  ADD PRIMARY KEY (`vinho_id`),
  ADD KEY `codProdutor` (`codProdutor`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `casta`
--
ALTER TABLE `casta`
  MODIFY `casta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `produtor`
--
ALTER TABLE `produtor`
  MODIFY `produtor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `regiao`
--
ALTER TABLE `regiao`
  MODIFY `idregiao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `vinho`
--
ALTER TABLE `vinho`
  MODIFY `vinho_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `casta_vinho`
--
ALTER TABLE `casta_vinho`
  ADD CONSTRAINT `casta_vinho_ibfk_1` FOREIGN KEY (`codVinho`) REFERENCES `vinho` (`vinho_id`),
  ADD CONSTRAINT `casta_vinho_ibfk_2` FOREIGN KEY (`codCasta`) REFERENCES `casta` (`casta_id`);

--
-- Restrições para tabelas `produtor`
--
ALTER TABLE `produtor`
  ADD CONSTRAINT `produtor_ibfk_1` FOREIGN KEY (`codregiao`) REFERENCES `regiao` (`idregiao`);

--
-- Restrições para tabelas `vinho`
--
ALTER TABLE `vinho`
  ADD CONSTRAINT `vinho_ibfk_1` FOREIGN KEY (`codProdutor`) REFERENCES `produtor` (`produtor_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
