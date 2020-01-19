-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 18 jan. 2020 à 18:56
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestiondep`
--

-- --------------------------------------------------------

--
-- Structure de la table `depense`
--

DROP TABLE IF EXISTS `depense`;
CREATE TABLE IF NOT EXISTS `depense` (
  `id_dep` int(11) NOT NULL AUTO_INCREMENT,
  `depense` float NOT NULL,
  `cat` varchar(25) COLLATE utf8_bin NOT NULL,
  `desc` text COLLATE utf8_bin NOT NULL,
  `date` datetime NOT NULL,
  `id_pers` int(11) NOT NULL,
  PRIMARY KEY (`id_dep`),
  KEY `id_pers_dep` (`id_pers`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `depense`
--

INSERT INTO `depense` (`id_dep`, `depense`, `cat`, `desc`, `date`, `id_pers`) VALUES
(10, 400, 'transport', '				\r\n			', '2020-01-18 06:56:00', 7),
(11, 200, 'transport', '				\r\n			', '2020-01-18 06:57:06', 7),
(12, 495, 'restaurant', '				\r\n			', '2020-01-18 07:02:47', 9),
(13, 2000, 'facture', '				\r\n			', '2020-01-18 07:03:33', 9),
(14, 9000, 'restaurant', '				\r\n			', '2020-01-18 07:03:49', 9),
(15, 31000, 'transport', '				\r\n		cc	', '2020-01-18 07:06:19', 9),
(16, 1000, 'transport', '		uhug		\r\n			', '2020-01-18 07:10:12', 12),
(17, 500, 'transport', '		jgg		\r\n			', '2020-01-18 07:10:38', 12);

-- --------------------------------------------------------

--
-- Structure de la table `revenu`
--

DROP TABLE IF EXISTS `revenu`;
CREATE TABLE IF NOT EXISTS `revenu` (
  `id_revnu` int(11) NOT NULL AUTO_INCREMENT,
  `depense` float NOT NULL,
  `cat` varchar(25) COLLATE utf8_bin NOT NULL,
  `desc` text COLLATE utf8_bin NOT NULL,
  `date` datetime NOT NULL,
  `id_pers` int(11) NOT NULL,
  PRIMARY KEY (`id_revnu`),
  KEY `id_pers` (`id_pers`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `revenu`
--

INSERT INTO `revenu` (`id_revnu`, `depense`, `cat`, `desc`, `date`, `id_pers`) VALUES
(17, 200, '', '				\r\n			', '2020-01-18 06:55:53', 7),
(18, 600, '', '				\r\n			', '2020-01-18 06:56:05', 7),
(19, 6986, 'restaurant', '		cc		\r\n			', '2020-01-18 07:03:18', 9),
(20, 35533, 'restaurant', '				\r\n		ccc	', '2020-01-18 07:04:41', 9),
(21, 200, 'transport', '				\r\n	b		', '2020-01-18 07:06:31', 9),
(22, 2000, 'restaurant', '				\r\n		jgjg	', '2020-01-18 07:10:24', 12),
(23, 700, 'transport', '		jghg		\r\n			', '2020-01-18 07:10:50', 12);

-- --------------------------------------------------------

--
-- Structure de la table `utilistateur`
--

DROP TABLE IF EXISTS `utilistateur`;
CREATE TABLE IF NOT EXISTS `utilistateur` (
  `id_pers` int(11) NOT NULL AUTO_INCREMENT,
  `nompre` varchar(25) COLLATE utf8_bin NOT NULL,
  `email` varchar(25) COLLATE utf8_bin NOT NULL,
  `mdp` varchar(25) COLLATE utf8_bin NOT NULL,
  `date` date NOT NULL,
  `sexe` varchar(25) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_pers`),
  KEY `id_pers` (`id_pers`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `utilistateur`
--

INSERT INTO `utilistateur` (`id_pers`, `nompre`, `email`, `mdp`, `date`, `sexe`) VALUES
(3, 'fdefefe', 'zrzrzer@ddd', 'cc', '2020-01-10', 'M'),
(7, '', 'ayoub@gmail.com', 'momo', '2020-01-07', ''),
(8, 'ccc', 'oumaima@gmail.com', 'cc', '2020-01-15', 'M'),
(9, 'ccc', 'oumaima@gmail.com', 'cc', '2020-01-15', 'M'),
(10, 'cc', 'momo@gmail.com', 'cc', '2020-01-21', 'F'),
(11, 'cc', 'abbflex@gmail.com', 'cc', '2020-01-23', 'F'),
(12, 'cc', '12@gmail.com', 'cc', '2020-01-22', 'M');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
