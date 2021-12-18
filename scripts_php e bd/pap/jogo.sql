-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09-Jul-2020 às 12:57
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jogo`
--
CREATE DATABASE IF NOT EXISTS `jogo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jogo`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogadores`
--

CREATE TABLE `jogadores` (
  `id` int(11) NOT NULL,
  `Nome` varchar(12) NOT NULL,
  `hash` varchar(100) NOT NULL,
  `salt` varchar(100) NOT NULL,
  `Nivel` int(11) NOT NULL DEFAULT '1',
  `xp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `jogadores`
--

INSERT INTO `jogadores` (`id`, `Nome`, `hash`, `salt`, `Nivel`, `xp`) VALUES
(1, 'xavier', '$5$rounds=5000$securityxavier$EtiFKqtw7Lc1EUa1hS8b6nxSXSvfqqGzkwUjj.ed43B', '$5$rounds=5000$securityxavier$', 20, 19055),
(2, 'Marcoo', '$5$rounds=5000$securityMarcoo$dt.D4GCpXteYk8ui.BF55WNSBrtLZElEKKZi.J7EIb2', '$5$rounds=5000$securityMarcoo$', 1, 200),
(3, 'Lucifer', '$5$rounds=5000$securityLucifer$4bN5qIAgsGNmZepn67FPUSZkEvZlyjq0yxP8gzNb/N.', '$5$rounds=5000$securityLucifer$', 15, 14230),
(4, 'EzPZGG', '$5$rounds=5000$securityEzPZGG$mZzboJgfWPAURpOf2AZYt/QukQ8uwXcwZdhEeHuOtw8', '$5$rounds=5000$securityEzPZGG$', 12, 11460),
(5, 'carlos', '$5$rounds=5000$securitycarlos$jZXLjoohQBRXPNa9dhWgsaN.4J6aclUmk5OyLY0cb66', '$5$rounds=5000$securitycarlos$', 8, 7340),
(6, 'Alex22', '$5$rounds=5000$securityAlex22$GfeH9/dvUAxJtjWd8ti5VobujVTEgee.Nq.t9Wu2Qh7', '$5$rounds=5000$securityAlex22$', 5, 4820),
(7, 'GlubGlub', '$5$rounds=5000$securityGlubGlub$daCod/6WIB3dBQdJZv3G995w5S3C4mL/Fxcmqy6.L13', '$5$rounds=5000$securityGlubGlub$', 3, 2500),
(8, 'salazar', '$5$rounds=5000$securitysalazar$rLiYUEBAIn1vovWqBY83Nd6Tso1T0HoGz34PUZ7bFO.', '$5$rounds=5000$securitysalazar$', 3, 2220),
(9, 'ahritonemai', '$5$rounds=5000$securityahritone$TwzQJuV0GZzGkTxCJE1oF79tDeSCfgEHvepubtpe8n3', '$5$rounds=5000$securityahritonemai$', 3, 2430),
(11, 'Kingof', '$5$rounds=5000$securityKingof$syoJgQxBjkDq3c/3OzIGXSoY5QQs7TS0TPt/LPrDHb2', '$5$rounds=5000$securityKingof$', 1, 230),
(12, 'random', '$5$rounds=5000$securityrandom$V/MEVp.0prhmS7tD4/eMfNT3/B9eUAU0T6QnKtFX8i9', '$5$rounds=5000$securityrandom$', 1, 0),
(13, 'Marcoola', '$5$rounds=5000$securityMarcoola$EfaXL3fDXrC/86TC1M8IzL7fFKj0n09LMztwnlmqdX/', '$5$rounds=5000$securityMarcoola$', 2, 1100),
(14, 'Marcola', '$5$rounds=5000$securityMarcola$2HoPPil2xzYPkeVWh0erFKbLo2A9pvkP978VKVCmne/', '$5$rounds=5000$securityMarcola$', 6, 7220),
(15, 'Xavi22', '$5$rounds=5000$securityXavi22$1GM3Gst8zdC.4dPXaLhb7XrxOOnyBRSNY5XY5fGDEkC', '$5$rounds=5000$securityXavi22$', 2, 1200),
(16, 'Marquitos', '$5$rounds=5000$securityMarquito$R6n2tXY7pEO5jaszKcViM3XnjSLOR.XUllk8z7xn/2B', '$5$rounds=5000$securityMarquitos$', 1, 0),
(17, 'kingvaxi', '$5$rounds=5000$securitykingvaxi$FuR7oG8zOXalTgohRL5S3tPB1dJCv38Fz2RPEoVeJZ0', '$5$rounds=5000$securitykingvaxi$', 1, 0),
(18, 'caralho2', '$5$rounds=5000$securitycaralho2$e3E6S.5rgVdkTrSEI4fihBHibjUo3mjgTJiuOWBg9lB', '$5$rounds=5000$securitycaralho2$', 1, 0),
(19, 'latom22', '$5$rounds=5000$securitylatom22$pv3rJ0yUFQ3S/rFbFKuy32ydQ/M4TEjipZx/X8gxNK3', '$5$rounds=5000$securitylatom22$', 2, 1320),
(20, 'Xaninho', '$5$rounds=5000$securityXaninho$XtCda9ca9ZFMQ67buVTg7iuPuK1QXl0cXMoeqPJHDB0', '$5$rounds=5000$securityXaninho$', 1, 0),
(21, 'Xaninho2', '$5$rounds=5000$securityXaninho2$gK4CxXdZQ5kaVALQQ50/Ci3lwbKgJIS9BdSxC/GQOJ4', '$5$rounds=5000$securityXaninho2$', 4, 4160),
(22, 'Pedro22', '$5$rounds=5000$securityPedro22$SdV4rVGk9JeP3Usqgj38.W1cIVjKQ7x0UevFH3bYBy7', '$5$rounds=5000$securityPedro22$', 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `somarniveis`
--

CREATE TABLE `somarniveis` (
  `idJogador` int(11) NOT NULL,
  `NomeJogador` varchar(12) NOT NULL,
  `Nivel1` int(11) NOT NULL,
  `Nivel2` int(11) NOT NULL,
  `Nivel3` int(11) NOT NULL,
  `Nivel4` int(11) NOT NULL,
  `Nivel5` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `somarniveis`
--

INSERT INTO `somarniveis` (`idJogador`, `NomeJogador`, `Nivel1`, `Nivel2`, `Nivel3`, `Nivel4`, `Nivel5`) VALUES
(1, 'xavier', 10, 8, 6, 4, 12),
(2, 'Marcoo', 0, 0, 0, 0, 0),
(3, 'Lucifer', 0, 0, 0, 0, 0),
(4, 'EzPZGG', 0, 0, 0, 0, 0),
(5, 'carlos', 0, 0, 0, 0, 0),
(6, 'Alex22', 0, 0, 0, 0, 0),
(7, 'GlubGlub', 0, 0, 0, 0, 0),
(8, 'salazar', 0, 13, 0, 0, 0),
(9, 'ahritonemai', 13, 0, 0, 0, 11),
(11, 'Kingof', 13, 0, 0, 0, 11),
(12, 'random', 0, 0, 0, 0, 0),
(13, 'Marcoola', 0, 0, 0, 0, 11),
(14, 'Marcola', 0, 0, 0, 10, 12),
(15, 'Xavi22', 0, 0, 0, 0, 12),
(16, 'Marquitos', 0, 0, 0, 0, 0),
(17, 'kingvaxi', 0, 0, 0, 0, 0),
(18, 'caralho2', 0, 0, 0, 0, 0),
(19, 'latom22', 0, 0, 0, 0, 0),
(20, 'Xaninho', 0, 0, 0, 0, 0),
(21, 'Xaninho2', 0, 0, 0, 0, 12),
(22, 'Pedro22', 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jogadores`
--
ALTER TABLE `jogadores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `somarniveis`
--
ALTER TABLE `somarniveis`
  ADD PRIMARY KEY (`idJogador`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jogadores`
--
ALTER TABLE `jogadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `somarniveis`
--
ALTER TABLE `somarniveis`
  MODIFY `idJogador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
