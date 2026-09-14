-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/09/2026 às 21:27
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
-- Banco de dados: `bd1`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tabela clientes`
--

CREATE TABLE `tabela clientes` (
  `cod-cliente` int(11) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `nome_completo` varchar(100) NOT NULL,
  `data_nascimento` date NOT NULL,
  `sexo` varchar(15) NOT NULL,
  `telefone` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `estado` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tabela clientes`
--

INSERT INTO `tabela clientes` (`cod-cliente`, `cpf`, `nome_completo`, `data_nascimento`, `sexo`, `telefone`, `email`, `endereco`, `cidade`, `estado`) VALUES
(1, '286.555.789-11', 'Cleverson da Silva dos Santos', '2017-09-22', 'masculino', '11 996766767', 'cleversonsilva123@gmail.com', 'rua avestruz 291 jardim flores', 'São Paulo', 'sp'),
(2, '292.222.333-12', 'Peterson Oliveira', '2026-09-01', 'masculino', '14 981999999', 'peter@gmail.com', 'rua são lucas 70', 'Rio de Janeiro', 'rj'),
(3, '999.999.777.13', 'Mario Junior', '2018-09-24', 'masculino', '14 55588877', 'marinho@hotmail.com', 'rua Walter 22', 'Gália  ', 'sp'),
(4, '222.222.222-22', 'Joao Bruxelas', '2020-09-30', 'masculino', '14 9819993456', 'joaozinho@gmail.com', 'rua Toronto 331', 'Florianópolis', 'sc'),
(5, '111.111.445-88', 'Lucas Almeida dos Santos', '2016-09-18', 'masculino', '14 981712425', 'ben10@gmail.com', 'rua B 22 santa maria', 'Garça', 'sp');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tabela clientes`
--
ALTER TABLE `tabela clientes`
  ADD PRIMARY KEY (`cod-cliente`),
  ADD UNIQUE KEY `cpf` (`cpf`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
