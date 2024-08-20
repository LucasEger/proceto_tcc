-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 20-Ago-2024 às 17:26
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projeto_tcc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `baixa`
--

DROP TABLE IF EXISTS `baixa`;
CREATE TABLE IF NOT EXISTS `baixa` (
  `id_baixa` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `data_hora` datetime NOT NULL,
  PRIMARY KEY (`id_baixa`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_produtos` (`id_produto`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `baixa`
--

INSERT INTO `baixa` (`id_baixa`, `id_usuario`, `id_produto`, `quantidade`, `data_hora`) VALUES
(1, 5, 2, 2, '2023-05-16 18:58:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login2`
--

DROP TABLE IF EXISTS `login2`;
CREATE TABLE IF NOT EXISTS `login2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `login2`
--

INSERT INTO `login2` (`id`, `nome`, `email`, `senha`) VALUES
(51, '1', '1', 'e10adc3949ba59abbe56e057f20f883e'),
(56, '2', '2', 'c81e728d9d4c2f636f067f89cc14862c'),
(57, '3', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `validade` date NOT NULL,
  `quantidade` int(11) NOT NULL,
  `peso` decimal(10,3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `validade`, `quantidade`, `peso`) VALUES
(58, 'Cenoura', '2023-06-10', 80, '0.400'),
(56, 'Queijo Mussarela', '2023-06-30', 150, '0.500'),
(17, 'Cafe Alvez', '2023-06-03', 245, '0.300'),
(57, 'Sardinha em Lata', '2023-09-15', 120, '0.300'),
(42, 'Arroz Integral', '2023-08-15', 150, '1.000'),
(43, 'Azeite de Oliva', '2023-10-31', 80, '0.500'),
(44, 'Chocolate Amargo', '2023-07-20', 200, '0.200'),
(45, 'Leite Integral', '2023-06-30', 120, '1.500'),
(46, 'Pão Francês', '2023-06-05', 300, '0.100'),
(47, 'Açúcar Mascavo', '2023-09-25', 180, '0.500'),
(48, 'Feijão Preto', '2023-07-10', 250, '1.000'),
(49, 'Óleo de Soja', '2023-12-31', 100, '1.500'),
(50, 'Manteiga Sem Sal', '2023-06-15', 90, '0.200'),
(51, 'Sal Rosa do Himalaia', '2023-09-30', 120, '0.300'),
(52, 'Macarrão Espaguete', '2023-08-20', 180, '0.500'),
(53, 'Leite Condensado', '2023-07-25', 150, '0.400'),
(54, 'Farinha de Trigo', '2023-11-30', 200, '1.000'),
(55, 'Creme de Leite', '2023-08-10', 100, '0.200'),
(59, 'Batata Inglesa', '2023-08-31', 100, '0.500'),
(60, 'sdd', '2026-11-18', 600, '1.000'),
(64, 'Novo', '2023-06-01', 20, '0.800');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
