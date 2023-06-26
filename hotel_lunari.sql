-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Jun-2023 às 21:20
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `hotel_lunari`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `email` varchar(300) NOT NULL,
  `senha` varchar(80) NOT NULL,
  `telefone` int(11) NOT NULL,
  `cpf` int(11) NOT NULL,
  `sexo` varchar(90) NOT NULL,
  `data_nasc` date NOT NULL,
  `cidade` varchar(90) NOT NULL,
  `estado` varchar(90) NOT NULL,
  `endereco` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`id`, `nome`, `email`, `senha`, `telefone`, `cpf`, `sexo`, `data_nasc`, `cidade`, `estado`, `endereco`) VALUES
(1, '', '', '', 0, 0, '', '0000-00-00', '', '', ''),
(2, '', '', '', 0, 0, '', '0000-00-00', '', '', ''),
(3, 'asdwajdtuas', 'dasdasjdyj@asdjka.haystrdyj', '', 345345, 35435, '', '0000-00-00', '57rer7e', 'rterit78', 'eotet78y'),
(4, 'qwe', 'qwe@qjwe.qkw', '', 912843, 1023984, '', '0000-00-00', 'qwe', 'qwe', 'uqwejhy'),
(5, 'qwe', 'qwe@qjwe.qkw', '', 912843, 1023984, '', '0000-00-00', 'qwe', 'qwe', 'uqwejhy'),
(6, 'qwe', 'qwe@kqwe.kqwe', '12037', 1029737, 129783, 'masculino', '2023-06-21', 'qwe', 'qwe', 'qwe');

-- --------------------------------------------------------

--
-- Estrutura da tabela `resereva`
--

CREATE TABLE `resereva` (
  `id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `adulto` int(11) NOT NULL,
  `crianca` int(11) NOT NULL,
  `quarto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `resereva`
--
ALTER TABLE `resereva`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `resereva`
--
ALTER TABLE `resereva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
