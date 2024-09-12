-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/09/2024 às 02:46
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `imobiliaria`
--
CREATE DATABASE IF NOT EXISTS `imobiliaria` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `imobiliaria`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluguel`
--

CREATE TABLE `aluguel` (
  `id_aluguel` int(11) NOT NULL,
  `prazo` date DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `id_imovel` int(11) DEFAULT NULL,
  `id_corretor` int(11) DEFAULT NULL,
  `id_inquilino` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `aluguel`
--

INSERT INTO `aluguel` (`id_aluguel`, `prazo`, `data_inicio`, `preco`, `id_imovel`, `id_corretor`, `id_inquilino`) VALUES
(1, '2025-01-15', '2024-10-01', 1800.75, 1, 1, 1),
(2, '2024-11-30', '2024-09-15', 1250.00, 2, 2, 2),
(3, '2025-03-10', '2024-12-01', 2000.25, 3, 3, 3),
(4, '2024-12-20', '2024-09-20', 1750.50, 4, 4, 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `corretor`
--

CREATE TABLE `corretor` (
  `id_corretor` int(11) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `rg` varchar(30) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `corretor`
--

INSERT INTO `corretor` (`id_corretor`, `email`, `telefone`, `rg`, `nome`, `cpf`) VALUES
(1, 'joao.silva@gmail.com', '1234-5678', '12.345.678-9', 'João Silva', '123.456.789-00'),
(2, 'maria.santos@example.com', '2345-6789', '98.765.432-1', 'Maria Santos', '987.654.321-00'),
(3, 'pedro.oliveira@example.com', '3456-7890', '23.456.789-0', 'Pedro Oliveira', '234.567.890-12'),
(4, 'ana.pereira@example.com', '4567-8901', '34.567.890-1', 'Ana Pereira', '345.678.901-23'),
(5, 'lucas.martins@example.com', '5678-9012', '45.678.901-2', 'Lucas Martins', '456.789.012-34');

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereco`
--

CREATE TABLE `endereco` (
  `numero` varchar(20) DEFAULT NULL,
  `cep` varchar(30) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `id_endereco` int(11) NOT NULL,
  `complemento` varchar(200) DEFAULT NULL,
  `id_fiador` int(11) DEFAULT NULL,
  `id_corretor` int(11) DEFAULT NULL,
  `id_imovel` int(11) DEFAULT NULL,
  `id_proprietario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `endereco`
--

INSERT INTO `endereco` (`numero`, `cep`, `cidade`, `estado`, `bairro`, `rua`, `id_endereco`, `complemento`, `id_fiador`, `id_corretor`, `id_imovel`, `id_proprietario`) VALUES
('123', '12345-678', 'São Paulo', 'SP', 'Centro', 'Rua A', 1, 'Apto 101', 1, 1, 1, 1),
('456', '98765-432', 'Rio de Janeiro', 'RJ', 'Copacabana', 'Avenida B', 2, 'Casa 2', 2, 2, 2, 2),
('789', '45678-123', 'Belo Horizonte', 'MG', 'Savassi', 'Rua C', 3, 'Cobertura', 3, 3, 3, 3),
('101', '65432-876', 'Curitiba', 'PR', 'Água Verde', 'Rua D', 4, NULL, 4, 4, 4, 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `fiador`
--

CREATE TABLE `fiador` (
  `id_fiador` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `rg` varchar(30) DEFAULT NULL,
  `cpf` varchar(100) DEFAULT NULL,
  `telefone` varchar(100) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `fiador`
--

INSERT INTO `fiador` (`id_fiador`, `email`, `rg`, `cpf`, `telefone`, `nome`) VALUES
(1, 'carla.martins@example.com', '12.345.678-9', '123.456.789-00', '1111-2222', 'Carla Martins'),
(2, 'eduardo.souza@example.com', '98.765.432-1', '987.654.321-00', '3333-4444', 'Eduardo Souza'),
(3, 'fernanda.alves@example.com', '23.456.789-0', '234.567.890-12', '5555-6666', 'Fernanda Alves'),
(4, 'gabriel.silva@example.com', '34.567.890-1', '345.678.901-23', '7777-8888', 'Gabriel Silva');

-- --------------------------------------------------------

--
-- Estrutura para tabela `imovel`
--

CREATE TABLE `imovel` (
  `id_imovel` int(11) NOT NULL,
  `lavanderia` tinyint(1) DEFAULT NULL,
  `alugado` tinyint(1) DEFAULT NULL,
  `area` varchar(30) DEFAULT NULL,
  `comodos` int(11) DEFAULT NULL,
  `quintal` tinyint(1) DEFAULT NULL,
  `suite` tinyint(1) DEFAULT NULL,
  `piscina` tinyint(1) DEFAULT NULL,
  `id_proprietario` int(11) DEFAULT NULL,
  `QtBanheiros` int(11) DEFAULT NULL,
  `Garagem` bit(1) NOT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `preco` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `imovel`
--

INSERT INTO `imovel` (`id_imovel`, `lavanderia`, `alugado`, `area`, `comodos`, `quintal`, `suite`, `piscina`, `id_proprietario`, `QtBanheiros`, `Garagem`, `bairro`, `cidade`, `preco`) VALUES
(1, 1, 0, '100m²', 4, 1, 0, 1, 1, 1, b'1', 'Jardim das Flores', 'Ribeirão Pires', 2468.70),
(2, 1, 1, '80m²', 6, 0, 1, 0, 2, 2, b'1', 'Jardim Bom e Bonito', 'Ribeirão Pires', 468.00),
(3, 1, 0, '120m²', 2, 1, 1, 1, 3, 1, b'0', 'Bairro Um Dois Três', 'Mauá', 1626.30),
(4, 1, 1, '90m²', 4, 1, 0, 0, 4, 1, b'0', 'Bairro Barros', 'Mauá', 2796.30);

-- --------------------------------------------------------

--
-- Estrutura para tabela `inquilino`
--

CREATE TABLE `inquilino` (
  `id_inquilino` int(11) NOT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `rg` varchar(30) DEFAULT NULL,
  `id_fiador` int(11) DEFAULT NULL,
  `salario` decimal(7,2) NOT NULL,
  `dataNasc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `inquilino`
--

INSERT INTO `inquilino` (`id_inquilino`, `cpf`, `email`, `telefone`, `nome`, `rg`, `id_fiador`, `salario`, `dataNasc`) VALUES
(1, '123.456.789-00', 'joao.silva@example.com', '8765-4321', 'João Silva', 'MG-12.345.678', 1, 2500.00, '1985-06-15'),
(2, '234.567.890-11', 'maria.santos@example.com', '9876-5432', 'Maria Santos', 'SP-23.456.789', 2, 3200.50, '1990-11-22'),
(3, '345.678.901-22', 'pedro.alves@example.com', '1234-5678', 'Pedro Alves', 'RJ-34.567.890', 3, 2700.75, '1982-03-10'),
(4, '456.789.012-33', 'ana.pereira@example.com', '2345-6789', 'Ana Pereira', 'RS-45.678.901', 4, 3100.00, '1995-08-05');

-- --------------------------------------------------------

--
-- Estrutura para tabela `midia`
--

CREATE TABLE `midia` (
  `id_midia` int(11) NOT NULL,
  `midia` varchar(255) DEFAULT NULL,
  `id_imovel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `proprietario`
--

CREATE TABLE `proprietario` (
  `id_proprietario` int(11) NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  `cpf` varchar(30) DEFAULT NULL,
  `rg` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `proprietario`
--

INSERT INTO `proprietario` (`id_proprietario`, `nome`, `email`, `telefone`, `cpf`, `rg`) VALUES
(1, 'Everton Olhos', 'everton.olhos@example.com', '118765-4321', '123.456.789-00', '12.345.678-9'),
(2, ' João Paulo', ' joao.paulo@example.com', '119876-5432', '234.567.890-34', '23.456.719-0'),
(3, ' Maria Mariana', 'maria.oliveira@example.com', '118765-4321', '545.678.901-02', '14.267.852-1'),
(4, ' Paulo Silva', 'paulo.silva@example.com', '111234-5678', '456.568.561-45', '11.457.843-0'),
(5, 'Marcos Araújo', 'marcos@email.com', '112345-6789', '541.232.242-32', '54.233.323-5');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD PRIMARY KEY (`id_aluguel`),
  ADD KEY `id_imovel` (`id_imovel`),
  ADD KEY `id_corretor` (`id_corretor`),
  ADD KEY `id_inquilino` (`id_inquilino`);

--
-- Índices de tabela `corretor`
--
ALTER TABLE `corretor`
  ADD PRIMARY KEY (`id_corretor`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `rg` (`rg`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices de tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`id_endereco`),
  ADD KEY `id_proprietario` (`id_proprietario`),
  ADD KEY `id_fiador` (`id_fiador`),
  ADD KEY `id_corretor` (`id_corretor`),
  ADD KEY `id_imovel` (`id_imovel`);

--
-- Índices de tabela `fiador`
--
ALTER TABLE `fiador`
  ADD PRIMARY KEY (`id_fiador`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `rg` (`rg`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices de tabela `imovel`
--
ALTER TABLE `imovel`
  ADD PRIMARY KEY (`id_imovel`),
  ADD KEY `id_proprietario` (`id_proprietario`);

--
-- Índices de tabela `inquilino`
--
ALTER TABLE `inquilino`
  ADD PRIMARY KEY (`id_inquilino`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `rg` (`rg`),
  ADD KEY `id_fiador` (`id_fiador`);

--
-- Índices de tabela `midia`
--
ALTER TABLE `midia`
  ADD PRIMARY KEY (`id_midia`),
  ADD KEY `id_imovel` (`id_imovel`);

--
-- Índices de tabela `proprietario`
--
ALTER TABLE `proprietario`
  ADD PRIMARY KEY (`id_proprietario`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `rg` (`rg`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluguel`
--
ALTER TABLE `aluguel`
  MODIFY `id_aluguel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `corretor`
--
ALTER TABLE `corretor`
  MODIFY `id_corretor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `fiador`
--
ALTER TABLE `fiador`
  MODIFY `id_fiador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `imovel`
--
ALTER TABLE `imovel`
  MODIFY `id_imovel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `inquilino`
--
ALTER TABLE `inquilino`
  MODIFY `id_inquilino` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `midia`
--
ALTER TABLE `midia`
  MODIFY `id_midia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `proprietario`
--
ALTER TABLE `proprietario`
  MODIFY `id_proprietario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `aluguel`
--
ALTER TABLE `aluguel`
  ADD CONSTRAINT `aluguel_ibfk_1` FOREIGN KEY (`id_imovel`) REFERENCES `imovel` (`id_imovel`),
  ADD CONSTRAINT `aluguel_ibfk_2` FOREIGN KEY (`id_corretor`) REFERENCES `corretor` (`id_corretor`),
  ADD CONSTRAINT `aluguel_ibfk_3` FOREIGN KEY (`id_inquilino`) REFERENCES `inquilino` (`id_inquilino`);

--
-- Restrições para tabelas `endereco`
--
ALTER TABLE `endereco`
  ADD CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`id_proprietario`) REFERENCES `proprietario` (`id_proprietario`),
  ADD CONSTRAINT `endereco_ibfk_2` FOREIGN KEY (`id_fiador`) REFERENCES `fiador` (`id_fiador`),
  ADD CONSTRAINT `endereco_ibfk_3` FOREIGN KEY (`id_corretor`) REFERENCES `corretor` (`id_corretor`),
  ADD CONSTRAINT `endereco_ibfk_4` FOREIGN KEY (`id_imovel`) REFERENCES `imovel` (`id_imovel`);

--
-- Restrições para tabelas `imovel`
--
ALTER TABLE `imovel`
  ADD CONSTRAINT `imovel_ibfk_1` FOREIGN KEY (`id_proprietario`) REFERENCES `proprietario` (`id_proprietario`);

--
-- Restrições para tabelas `inquilino`
--
ALTER TABLE `inquilino`
  ADD CONSTRAINT `inquilino_ibfk_1` FOREIGN KEY (`id_fiador`) REFERENCES `fiador` (`id_fiador`);

--
-- Restrições para tabelas `midia`
--
ALTER TABLE `midia`
  ADD CONSTRAINT `midia_ibfk_1` FOREIGN KEY (`id_imovel`) REFERENCES `imovel` (`id_imovel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
