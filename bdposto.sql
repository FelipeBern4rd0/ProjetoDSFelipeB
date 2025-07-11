-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Abr-2025 às 16:35
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdposto`
--
CREATE DATABASE IF NOT EXISTS `bdposto` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bdposto`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `CPF` varchar(15) NOT NULL,
  `Nome` varchar(40) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Idade` int NOT NULL,
  `Endereco` varchar(35) NOT NULL,
  `Telefone` varchar(15) NOT NULL,
  `Profissao` varchar(30) NOT NULL
  `Cidade` varchar(30) NOT NULL
  `Estado` char(02) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------
-- [CORREÇÃO TABELA DE CLIENTE:, 
--
-- Estrutura da tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE `produtos` (
  `cod_produto` int NOT NULL auto_increment,
  `Validade` varchar(35) NOT NULL,
  `Combustivel` varchar(30) NOT NULL,
  `Quantidade` double(5,2) NOT NULL,
  `Valor` double(5,2) NOT NULL,
  `Unidade_medida` varchar(15) NOT NULL,
  `Nome` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- [ CORREÇÃO TABELA PRODUTOS: alterar para int e autoincrement o cod_produto, quantidade e valor deixar como double (5,2. No campo combustível mudar para tipo] ----
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`CPF`) USING BTREE;

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`cod_produto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
