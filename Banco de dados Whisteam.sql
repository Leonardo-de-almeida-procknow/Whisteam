-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.32-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para whisteambd
CREATE DATABASE IF NOT EXISTS `whisteambd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `whisteambd`;

-- Copiando estrutura para tabela whisteambd.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text NOT NULL,
  `senha` text NOT NULL,
  `email` text NOT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `data_d_ncm` date NOT NULL,
  `endereco` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela whisteambd.clientes: ~1 rows (aproximadamente)
INSERT INTO `clientes` (`id`, `nome`, `senha`, `email`, `telefone`, `data_d_ncm`, `endereco`) VALUES
	(1, 'Le00zin', 'Fuckrussians!', 'gamerprock@gmail.com', NULL, '2007-06-03', NULL),
	(9, 'LEONARDO DE ALMEIDA PROCKNOW', 'asdaw', 'gamerprock@gmail.com', NULL, '2009-03-22', NULL);

-- Copiando estrutura para tabela whisteambd.jogos
CREATE TABLE IF NOT EXISTS `jogos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text NOT NULL,
  `cria_destr` text NOT NULL,
  `desc` longtext NOT NULL,
  `avali` decimal(20,6) NOT NULL,
  `preco` decimal(20,6) DEFAULT 0.000000,
  `ida_rec` text DEFAULT NULL,
  `dt_lc` date NOT NULL,
  `categoria` varchar(50) NOT NULL DEFAULT '',
  `img` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela whisteambd.jogos: ~10 rows (aproximadamente)
INSERT INTO `jogos` (`id`, `nome`, `cria_destr`, `desc`, `avali`, `preco`, `ida_rec`, `dt_lc`, `categoria`, `img`) VALUES
	(1, 'Fortnite', 'Epic Games', 'jogo battle royale', 3.900000, NULL, '12', '2017-07-21', 'Battle Royale', 'https://assets.nintendo.com/image/upload/ar_16:9,c_lpad,w_1240/b_white/f_auto/q_auto/ncom/software/switch/70010000010192/c7d855443d9ed9d8aa7638f548044a2987c7f22a6dab3136916fcc811039a64b'),
	(2, 'Elden ring:Shadow of The Erdtree', 'Fromsoftware', 'Souls like mundo aberto', 4.700000, 229.900000, '16', '2022-02-25', 'RPG', 'https://image.api.playstation.com/vulcan/ap/rnd/202402/0817/48330e9df5755a91ae1ff7626e07c398ffd9e0afce393e34.png'),
	(3, 'League of Legends', 'Riot Games', 'Moba competitivo', 3.400000, NULL, '14', '2009-10-27', 'MOBA', 'https://cdn1.epicgames.com/offer/24b9b5e323bc40eea252a10cdd3b2f10/EGS_LeagueofLegends_RiotGames_S1_2560x1440-80471666c140f790f28dff68d72c384b'),
	(4, 'Roblox', 'Roblox Corporation', 'Plataforma para jogar video jogos', 4.450000, NULL, '13', '2006-09-01', 'Plataforma', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlj8qmaVaEqrLcYum4xYfGfyglCYYM4Y7a7A&s'),
	(5, 'Farming Simulator 19', 'GIANTS Software', 'Jogo de fazendinha hiperealista', 4.500000, 76.990000, '1', '2018-11-20', 'Simulação', 'https://image.api.playstation.com/vulcan/ap/rnd/202112/2013/jKH9FdvrIK71Dvg3WRnmMbBI.jpg'),
	(6, 'Bloons TD 6', 'Ninja Kiwi', 'Tower defense de baões e macacos', 5.000000, 27.890000, '1', '2018-06-14', 'Estratégia', 'https://cdn.nkstatic.com/videos-screenshots/BTD6/6.jpg'),
	(7, 'Minecraft', 'Mojang', 'Jogo mundo aberto ', 5.000000, 100.000000, '1', '2011-11-18', 'Simulação', 'https://assets.nintendo.com/image/upload/ar_16:9,c_lpad,w_1240/b_white/f_auto/q_auto/ncom/software/switch/70010000000964/a28a81253e919298beab2295e39a56b7a5140ef15abdb56135655e5c221b2a3a'),
	(8, 'Lost Ark', 'Smilegate', 'MMO RPG Massivo', 4.200000, NULL, '16', '2019-12-04', 'RPG', 'https://images.ctfassets.net/umhrp0op95v1/4q7wjQPbWPFCuZn3kqAHNU/8b94344d4305c23864620a9e52acf99b/gfn-spotlight-lost-ark-1920x1080.jpg'),
	(9, 'Stardew Valley', ' The Secret Police Limited', 'Jogo de fazendinha mto bala', 4.800000, 24.990000, '1', '2016-02-26', 'Simulação', 'https://assets.nintendo.com/image/upload/ar_16:9,c_lpad,w_1240/b_white/f_auto/q_auto/ncom/software/switch/70010000001801/7aa9c6cf5e7d4cecf481f18b1d7a9d79e7aab85045b22203effb2dda409bc5b7'),
	(10, 'Hollow Knight', 'Team Cherry', 'Plataforma foda pra krllll', 5.000000, 46.990000, '1', '0000-00-00', 'Plataforma', 'https://assets.nintendo.com/image/upload/ar_16:9,c_lpad,w_1240/b_white/f_auto/q_auto/ncom/software/switch/70010000003208/4643fb058642335c523910f3a7910575f56372f612f7c0c9a497aaae978d3e51');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
