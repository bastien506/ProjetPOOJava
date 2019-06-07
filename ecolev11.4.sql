-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 07 juin 2019 à 23:46
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ecole`
--

-- --------------------------------------------------------

--
-- Structure de la table `anneescolaire`
--

DROP TABLE IF EXISTS `anneescolaire`;
CREATE TABLE IF NOT EXISTS `anneescolaire` (
  `ID_anneescolaire` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID_anneescolaire`)
) ENGINE=InnoDB AUTO_INCREMENT=1013 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `anneescolaire`
--

INSERT INTO `anneescolaire` (`ID_anneescolaire`) VALUES
(1001),
(1002);

-- --------------------------------------------------------

--
-- Structure de la table `bulletin`
--

DROP TABLE IF EXISTS `bulletin`;
CREATE TABLE IF NOT EXISTS `bulletin` (
  `ID_bulletin` int(11) NOT NULL AUTO_INCREMENT,
  `Appreciation` varchar(255) NOT NULL,
  `ID_trimestre` int(11) DEFAULT NULL,
  `ID_inscription` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_bulletin`),
  KEY `ID_trimestre` (`ID_trimestre`),
  KEY `ID_inscription` (`ID_inscription`)
) ENGINE=InnoDB AUTO_INCREMENT=2118 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bulletin`
--

INSERT INTO `bulletin` (`ID_bulletin`, `Appreciation`, `ID_trimestre`, `ID_inscription`) VALUES
(2007, 'Assez bien', 11004, 8003),
(2008, 'Peu mieux faire.', 11005, 8003),
(2009, '', 11006, 8003),
(2013, '', 11004, 8004),
(2014, '', 11005, 8004),
(2015, '', 11006, 8004),
(2016, '', 11004, 8005),
(2017, '', 11005, 8005),
(2018, '', 11006, 8005),
(2034, 'Continue comme ça.', 11004, 8006),
(2037, 'Tres bien', 11006, 8007),
(2040, 'Assez bien', 11004, 8008),
(2041, '', 11006, 8009),
(2042, 'Peu mieux faire.', 11005, 8010),
(2043, '', 11004, 8011),
(2046, '', 11006, 8012),
(2062, '', 11004, 8013),
(2064, 'Excellent', 11005, 8014),
(2065, '.', 11006, 8015),
(2070, 'Peu mieux faire.', 11005, 8016),
(2073, '', 11005, 8017),
(2074, '', 11006, 8018),
(2075, '', 11004, 8019),
(2077, '', 11006, 8020),
(2078, '', 11004, 8021),
(2079, '', 11005, 8022),
(2082, 'Assez bien ', 11004, 8023),
(2083, 'Excellent', 11005, 8024),
(2084, '.', 11006, 8025),
(2085, 'Continue comme ça.', 11004, 8026),
(2086, 'Assez bien', 11005, 8026),
(2087, 'Tres bien', 11006, 8027),
(2089, 'Peu mieux faire.', 11005, 8028),
(2090, '', 11006, 8029),
(2091, '', 11004, 8030),
(2095, '', 11005, 8031),
(2096, '', 11006, 8032),
(2098, '', 11005, 8033),
(2099, '', 11006, 8034),
(2100, 'Assez bien ', 11004, 8035),
(2104, 'Assez bien', 11005, 8036),
(2105, 'Tres bien', 11006, 8037),
(2112, '', 11004, 8038),
(2113, '', 11005, 8039);

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

DROP TABLE IF EXISTS `classe`;
CREATE TABLE IF NOT EXISTS `classe` (
  `ID_classe` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) NOT NULL,
  `ID_niveau` int(11) DEFAULT NULL,
  `ID_anneescolaire` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_classe`),
  KEY `ID_niveau` (`ID_niveau`),
  KEY `ID_anneescolaire` (`ID_anneescolaire`)
) ENGINE=InnoDB AUTO_INCREMENT=3028 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`ID_classe`, `Nom`, `ID_niveau`, `ID_anneescolaire`) VALUES
(3001, 'A', 9001, 1001),
(3002, 'B', 9001, 1001),
(3003, 'Pro', 9002, 1001),
(3004, 'General', 9002, 1001),
(3005, 'S', 9003, 1001),
(3006, 'L', 9003, 1001),
(3007, 'ES', 9003, 1001),
(3008, 'S', 9004, 1001),
(3009, 'L', 9004, 1001),
(3010, 'ES', 9004, 1001),
(3011, 'A', 9001, 1002),
(3012, 'B', 9001, 1002),
(3013, 'Pro', 9002, 1002),
(3014, 'General', 9002, 1002),
(3015, 'S', 9003, 1002),
(3016, 'L', 9003, 1002),
(3017, 'ES', 9003, 1002),
(3018, 'S', 9004, 1002),
(3019, 'L', 9004, 1002),
(3020, 'ES', 9004, 1002);

-- --------------------------------------------------------

--
-- Structure de la table `detailbulletin`
--

DROP TABLE IF EXISTS `detailbulletin`;
CREATE TABLE IF NOT EXISTS `detailbulletin` (
  `ID_detailbulletin` int(11) NOT NULL AUTO_INCREMENT,
  `Appreciation` varchar(255) NOT NULL,
  `ID_bulletin` int(11) DEFAULT NULL,
  `ID_enseignement` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_detailbulletin`),
  KEY `ID_bulletin` (`ID_bulletin`),
  KEY `ID_enseignement` (`ID_enseignement`)
) ENGINE=InnoDB AUTO_INCREMENT=4083 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `detailbulletin`
--

INSERT INTO `detailbulletin` (`ID_detailbulletin`, `Appreciation`, `ID_bulletin`, `ID_enseignement`) VALUES
(4073, '', 2034, 6003),
(4074, '', 2034, NULL),
(4075, '', 2034, NULL),
(4076, '', 2034, NULL),
(4077, '', 2034, NULL),
(4078, '', 2034, NULL),
(4079, '', 2034, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `discipline`
--

DROP TABLE IF EXISTS `discipline`;
CREATE TABLE IF NOT EXISTS `discipline` (
  `ID_discipline` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_discipline`)
) ENGINE=InnoDB AUTO_INCREMENT=5016 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `discipline`
--

INSERT INTO `discipline` (`ID_discipline`, `Nom`) VALUES
(5001, 'Maths'),
(5002, 'Francais'),
(5003, 'Anglais'),
(5004, 'SVT'),
(5005, 'Technologie'),
(5006, 'Musique'),
(5007, 'Espagnol'),
(5008, 'Russe'),
(5009, 'Informatique'),
(5010, 'Physique'),
(5011, 'EPS'),
(5012, 'Histoire'),
(5013, 'Philosophie'),
(5014, 'Economie'),
(5015, 'Sciences');

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

DROP TABLE IF EXISTS `enseignant`;
CREATE TABLE IF NOT EXISTS `enseignant` (
  `ID_enseignant` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  `Sexe` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_enseignant`)
) ENGINE=InnoDB AUTO_INCREMENT=12017 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `enseignant`
--

INSERT INTO `enseignant` (`ID_enseignant`, `Nom`, `Prenom`, `Sexe`) VALUES
(12001, 'Bruna', 'Charlotte', 'F'),
(12002, 'Borell', 'Axell', 'M'),
(12003, 'Goupil', 'Pierre', 'M'),
(12004, 'Carmona', 'Paula', 'F'),
(12005, 'Putz', 'Dimitri', 'M'),
(12006, 'Duderan', 'Pierre', 'M'),
(12007, 'Dutoit', 'Alice', 'F'),
(12008, 'Leopola', 'Anne', 'F'),
(12009, 'Moloartu', 'Sophie', 'F'),
(12010, 'Sybeth', 'Kristina', 'F'),
(12011, 'Artipo', 'Leo', 'M'),
(12012, 'Qiryoli', 'Celine', 'F'),
(12013, 'Qwartz', 'Solange', 'F'),
(12014, 'Djibouti', 'Kamel', 'M'),
(12015, 'Zulman', 'Paul', 'M'),
(12016, 'Charie', 'Benoit', 'M');

-- --------------------------------------------------------

--
-- Structure de la table `enseignement`
--

DROP TABLE IF EXISTS `enseignement`;
CREATE TABLE IF NOT EXISTS `enseignement` (
  `ID_enseignement` int(11) NOT NULL AUTO_INCREMENT,
  `ID_classe` int(11) DEFAULT NULL,
  `ID_discipline` int(11) DEFAULT NULL,
  `ID_enseignant` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_enseignement`),
  KEY `ID_classe` (`ID_classe`),
  KEY `ID_discipline` (`ID_discipline`),
  KEY `ID_enseignant` (`ID_enseignant`)
) ENGINE=InnoDB AUTO_INCREMENT=6898 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `enseignement`
--

INSERT INTO `enseignement` (`ID_enseignement`, `ID_classe`, `ID_discipline`, `ID_enseignant`) VALUES
(6001, 3001, 5001, 12002),
(6002, 3002, 5001, 12002),
(6003, 3003, 5001, 12002),
(6004, 3004, 5001, 12002),
(6005, 3005, 5001, 12007),
(6006, 3007, 5001, 12002),
(6007, 3008, 5001, 12007),
(6008, 3010, 5001, 12007),
(6009, 3001, 5002, 12010),
(6010, 3002, 5002, 12006),
(6011, 3003, 5002, 12010),
(6012, 3004, 5002, 12010),
(6013, 3005, 5002, 12006),
(6014, 3006, 5002, 12006),
(6015, 3007, 5002, 12010),
(6016, 3009, 5002, 12010),
(6017, 3001, 5003, 12003),
(6018, 3002, 5003, 12003),
(6019, 3003, 5003, 12003),
(6020, 3004, 5003, 12001),
(6021, 3005, 5003, 12001),
(6022, 3006, 5003, 12001),
(6023, 3007, 5003, 12001),
(6024, 3008, 5003, 12003),
(6025, 3009, 5003, 12003),
(6026, 3010, 5003, 12001),
(6027, 3001, 5004, 12002),
(6028, 3002, 5004, 12002),
(6029, 3004, 5004, 12005),
(6030, 3005, 5004, 12005),
(6031, 3008, 5004, 12016),
(6032, 3001, 5005, 12008),
(6033, 3002, 5005, 12008),
(6034, 3003, 5005, 12008),
(6035, 3001, 5006, 12011),
(6036, 3002, 5006, 12011),
(6037, 3001, 5007, 12012),
(6038, 3002, 5007, 12012),
(6039, 3004, 5007, 12012),
(6040, 3005, 5007, 12012),
(6041, 3006, 5007, 12012),
(6042, 3007, 5007, 12012),
(6043, 3008, 5007, 12012),
(6044, 3009, 5007, 12012),
(6045, 3010, 5007, 12012),
(6046, 3001, 5008, 12013),
(6047, 3002, 5008, 12013),
(6048, 3004, 5008, 12013),
(6049, 3005, 5008, 12013),
(6050, 3006, 5008, 12013),
(6051, 3007, 5008, 12013),
(6052, 3008, 5008, 12013),
(6053, 3009, 5008, 12013),
(6054, 3010, 5008, 12013),
(6055, 3003, 5009, 12008),
(6056, 3001, 5010, 12010),
(6057, 3002, 5010, 12010),
(6058, 3004, 5010, 12010),
(6059, 3005, 5010, 12010),
(6060, 3008, 5010, 12010),
(6061, 3001, 5011, 12015),
(6062, 3002, 5011, 12015),
(6063, 3003, 5011, 12015),
(6064, 3004, 5011, 12015),
(6065, 3005, 5011, 12015),
(6066, 3006, 5011, 12015),
(6067, 3007, 5011, 12015),
(6068, 3008, 5011, 12015),
(6069, 3009, 5011, 12015),
(6070, 3010, 5011, 12015),
(6071, 3001, 5012, 12009),
(6072, 3002, 5012, 12009),
(6073, 3003, 5012, 12009),
(6074, 3004, 5012, 12009),
(6075, 3005, 5012, 12009),
(6076, 3006, 5012, 12009),
(6077, 3007, 5012, 12009),
(6078, 3008, 5012, 12009),
(6079, 3009, 5012, 12009),
(6080, 3010, 5012, 12009),
(6081, 3008, 5013, 12014),
(6082, 3009, 5013, 12014),
(6083, 3010, 5013, 12014),
(6084, 3007, 5014, 12004),
(6085, 3010, 5014, 12004),
(6086, 3009, 5015, 12016),
(6087, 3011, 5001, 12002),
(6088, 3012, 5001, 12002),
(6089, 3013, 5001, 12002),
(6090, 3014, 5001, 12002),
(6091, 3015, 5001, 12007),
(6092, 3017, 5001, 12002),
(6093, 3018, 5001, 12007),
(6094, 3020, 5001, 12007),
(6095, 3011, 5002, 12010),
(6096, 3012, 5002, 12006),
(6097, 3013, 5002, 12010),
(6098, 3014, 5002, 12010),
(6099, 3015, 5002, 12006),
(6100, 3016, 5002, 12006),
(6101, 3017, 5002, 12010),
(6102, 3019, 5002, 12010),
(6103, 3011, 5003, 12003),
(6104, 3012, 5003, 12003),
(6105, 3013, 5003, 12003),
(6106, 3014, 5003, 12001),
(6107, 3015, 5003, 12001),
(6108, 3016, 5003, 12001),
(6109, 3017, 5003, 12001),
(6110, 3018, 5003, 12003),
(6111, 3019, 5003, 12003),
(6112, 3020, 5003, 12001),
(6113, 3011, 5004, 12002),
(6114, 3012, 5004, 12002),
(6115, 3014, 5004, 12005),
(6116, 3015, 5004, 12005),
(6117, 3018, 5004, 12016),
(6118, 3011, 5005, 12008),
(6119, 3012, 5005, 12008),
(6120, 3013, 5005, 12008),
(6121, 3011, 5006, 12011),
(6122, 3012, 5006, 12011),
(6123, 3011, 5007, 12012),
(6124, 3012, 5007, 12012),
(6125, 3014, 5007, 12012),
(6126, 3015, 5007, 12012),
(6127, 3016, 5007, 12012),
(6128, 3017, 5007, 12012),
(6129, 3018, 5007, 12012),
(6130, 3019, 5007, 12012),
(6131, 3020, 5007, 12012),
(6132, 3011, 5008, 12013),
(6133, 3012, 5008, 12013),
(6134, 3014, 5008, 12013),
(6135, 3015, 5008, 12013),
(6136, 3016, 5008, 12013),
(6137, 3017, 5008, 12013),
(6138, 3018, 5008, 12013),
(6139, 3019, 5008, 12013),
(6140, 3020, 5008, 12013),
(6141, 3013, 5009, 12008),
(6142, 3011, 5010, 12010),
(6143, 3012, 5010, 12010),
(6144, 3014, 5010, 12010),
(6145, 3015, 5010, 12010),
(6146, 3018, 5010, 12010),
(6147, 3011, 5011, 12015),
(6148, 3012, 5011, 12015),
(6149, 3013, 5011, 12015),
(6150, 3014, 5011, 12015),
(6151, 3015, 5011, 12015),
(6152, 3016, 5011, 12015),
(6153, 3017, 5011, 12015),
(6154, 3018, 5011, 12015),
(6155, 3019, 5011, 12015),
(6156, 3020, 5011, 12015),
(6157, 3011, 5012, 12009),
(6158, 3012, 5012, 12009),
(6159, 3013, 5012, 12009),
(6160, 3014, 5012, 12009),
(6161, 3015, 5012, 12009),
(6162, 3016, 5012, 12009),
(6163, 3017, 5012, 12009),
(6164, 3018, 5012, 12009),
(6165, 3019, 5012, 12009),
(6166, 3020, 5012, 12009),
(6167, 3018, 5013, 12014),
(6168, 3019, 5013, 12014),
(6169, 3020, 5013, 12014),
(6170, 3017, 5014, 12004),
(6171, 3020, 5014, 12004),
(6172, 3019, 5015, 12016);

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE IF NOT EXISTS `etudiant` (
  `ID_etudiant` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  `Sexe` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_etudiant`)
) ENGINE=InnoDB AUTO_INCREMENT=13101 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`ID_etudiant`, `Nom`, `Prenom`, `Sexe`) VALUES
(13001, 'Borie', 'Alice', 'F'),
(13002, 'Lajeune', 'Gaétan', 'M'),
(13003, 'Le_guern', 'Bastien', 'M'),
(13004, 'Roemer', 'Faustine', 'F'),
(13005, 'Lashermes', 'Cecile', 'F'),
(13006, 'Venuti', 'Thibault', 'M'),
(13007, 'Adibu', 'Mohamed', 'M'),
(13008, 'Sanchez', 'Pedro', 'M'),
(13009, 'Fracchia', 'Shannon', 'F'),
(13010, 'Sestier', 'Charlotte', 'F'),
(13011, 'Seree', 'Thomas', 'M'),
(13012, 'Nevado', 'Marine', 'F'),
(13013, 'Witz ', 'Theo ', 'M'),
(13014, 'McQueen', 'Alexander', 'M'),
(13015, 'Trouve', 'Jade', 'F'),
(13016, 'Greko', 'Jade', 'F'),
(13017, 'Bros', 'Mario', 'M'),
(13018, 'Rico', 'Johnny', 'M'),
(13019, 'Ilbanez', 'Carmen', 'F'),
(13020, 'Flores', 'Dizzy', 'F'),
(13021, 'Connor', 'Sarah', 'F'),
(13022, 'Connor', 'John', 'M'),
(13023, 'Angel', 'Nicolas', 'M'),
(13024, 'Pilgrim', 'Scott', 'M'),
(13025, 'Rambo', 'John', 'M'),
(13026, 'Joestar', 'Jonathan', 'M'),
(13027, 'Joestar', 'Joseph', 'M'),
(13028, 'Anderson', 'Thomas', 'M'),
(13029, 'McClane', 'John', 'M'),
(13030, 'Durden', 'Tyler', 'M'),
(13031, 'McFly', 'Marty', 'M'),
(13032, 'Bueller', 'Ferris', 'M'),
(13033, 'Deckard', 'Rick', 'M'),
(13034, 'Poulain', 'Amelie', 'F'),
(13035, 'Foley', 'Axel', 'M'),
(13036, 'Darko', 'Donnie', 'M'),
(13037, 'Doe', 'Jane', 'F'),
(13038, 'Smithee', 'Alan', 'M'),
(13039, 'Parker', 'Peter', 'M'),
(13040, 'Wayne', 'Bruce', 'M');

-- --------------------------------------------------------

--
-- Structure de la table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
CREATE TABLE IF NOT EXISTS `evaluation` (
  `ID_evaluation` int(11) NOT NULL AUTO_INCREMENT,
  `Appreciation` varchar(255) NOT NULL,
  `Note` int(11) NOT NULL,
  `ID_detailbulletin` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_evaluation`),
  KEY `ID_detailbulletin` (`ID_detailbulletin`)
) ENGINE=InnoDB AUTO_INCREMENT=7194 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `evaluation`
--

INSERT INTO `evaluation` (`ID_evaluation`, `Appreciation`, `Note`, `ID_detailbulletin`) VALUES
(7116, '', 9, 4073),
(7117, 'Excellent', 9, 4074),
(7118, 'Passable', 18, 4074),
(7119, '', 16, 4075),
(7120, '', 19, 4076),
(7121, 'Excellent', 11, 4076),
(7122, 'Passable', 16, 4077),
(7123, '', 13, 4077),
(7124, '', 10, 4078),
(7125, 'Excellent', 11, 4078),
(7129, '', 13, 4079),
(7130, '', 14, 4079),
(7131, '', 16, 4079);

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

DROP TABLE IF EXISTS `inscription`;
CREATE TABLE IF NOT EXISTS `inscription` (
  `ID_inscription` int(11) NOT NULL AUTO_INCREMENT,
  `ID_classe` int(11) DEFAULT NULL,
  `ID_etudiant` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_inscription`),
  KEY `FOREIGN` (`ID_etudiant`) USING BTREE,
  KEY `ID_classe` (`ID_classe`)
) ENGINE=InnoDB AUTO_INCREMENT=1000000002 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`ID_inscription`, `ID_classe`, `ID_etudiant`) VALUES
(8001, 3001, 13001),
(8002, 3001, 13002),
(8003, 3001, 13003),
(8004, 3001, 13004),
(8005, 3002, 13005),
(8006, 3002, 13006),
(8007, 3002, 13007),
(8008, 3002, 13008),
(8009, 3003, 13009),
(8010, 3003, 13010),
(8011, 3003, 13011),
(8012, 3003, 13012),
(8013, 3004, 13013),
(8014, 3004, 13014),
(8015, 3004, 13015),
(8016, 3004, 13016),
(8017, 3005, 13017),
(8018, 3005, 13018),
(8019, 3005, 13019),
(8020, 3005, 13020),
(8021, 3006, 13021),
(8022, 3006, 13022),
(8023, 3006, 13023),
(8024, 3006, 13024),
(8025, 3007, 13025),
(8026, 3007, 13026),
(8027, 3007, 13027),
(8028, 3007, 13028),
(8029, 3008, 13029),
(8030, 3008, 13030),
(8031, 3008, 13031),
(8032, 3008, 13032),
(8033, 3009, 13033),
(8034, 3009, 13034),
(8035, 3009, 13035),
(8036, 3009, 13036),
(8037, 3010, 13037),
(8038, 3010, 13038),
(8039, 3010, 13039),
(8040, 3010, 13040),
(8041, 3013, 13001),
(8042, 3013, 13002),
(8043, 3013, 13003),
(8044, 3013, 13004),
(8045, 3014, 13005),
(8046, 3014, 13006),
(8047, 3014, 13007),
(8048, 3014, 13008),
(8049, 3015, 13013),
(8050, 3016, 13014);

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

DROP TABLE IF EXISTS `niveau`;
CREATE TABLE IF NOT EXISTS `niveau` (
  `ID_niveau` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_niveau`)
) ENGINE=InnoDB AUTO_INCREMENT=9008 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `niveau`
--

INSERT INTO `niveau` (`ID_niveau`, `Nom`) VALUES
(9001, '3eme'),
(9002, '2nd'),
(9003, '1ere'),
(9004, 'T');

-- --------------------------------------------------------

--
-- Structure de la table `trimestre`
--

DROP TABLE IF EXISTS `trimestre`;
CREATE TABLE IF NOT EXISTS `trimestre` (
  `ID_trimestre` int(11) NOT NULL AUTO_INCREMENT,
  `Numero` int(11) NOT NULL,
  `ID_anneescolaire` int(11) DEFAULT NULL,
  `Jour_Debut` int(11) NOT NULL,
  `Mois_Debut` int(11) NOT NULL,
  `Annee_Debut` int(11) NOT NULL,
  `Jour_Fin` int(11) NOT NULL,
  `Mois_Fin` int(11) NOT NULL,
  `Annee_Fin` int(11) NOT NULL,
  PRIMARY KEY (`ID_trimestre`),
  KEY `ID_anneescolaire` (`ID_anneescolaire`)
) ENGINE=InnoDB AUTO_INCREMENT=11007 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `trimestre`
--

INSERT INTO `trimestre` (`ID_trimestre`, `Numero`, `ID_anneescolaire`, `Jour_Debut`, `Mois_Debut`, `Annee_Debut`, `Jour_Fin`, `Mois_Fin`, `Annee_Fin`) VALUES
(11001, 1, 1001, 2, 9, 2017, 20, 12, 2017),
(11002, 2, 1001, 1, 1, 2018, 10, 3, 2018),
(11003, 3, 1001, 11, 3, 2018, 19, 6, 2018),
(11004, 1, 1002, 10, 9, 2018, 15, 12, 2018),
(11005, 2, 1002, 7, 1, 2019, 1, 3, 2019),
(11006, 3, 1002, 4, 3, 2019, 7, 6, 2019);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bulletin`
--
ALTER TABLE `bulletin`
  ADD CONSTRAINT `bulletin_ibfk_1` FOREIGN KEY (`ID_trimestre`) REFERENCES `trimestre` (`ID_trimestre`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bulletin_ibfk_2` FOREIGN KEY (`ID_inscription`) REFERENCES `inscription` (`ID_inscription`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `classe`
--
ALTER TABLE `classe`
  ADD CONSTRAINT `classe_ibfk_1` FOREIGN KEY (`ID_niveau`) REFERENCES `niveau` (`ID_niveau`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `classe_ibfk_2` FOREIGN KEY (`ID_anneescolaire`) REFERENCES `anneescolaire` (`ID_anneescolaire`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `detailbulletin`
--
ALTER TABLE `detailbulletin`
  ADD CONSTRAINT `detailbulletin_ibfk_1` FOREIGN KEY (`ID_bulletin`) REFERENCES `bulletin` (`ID_bulletin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detailbulletin_ibfk_2` FOREIGN KEY (`ID_enseignement`) REFERENCES `enseignement` (`ID_enseignement`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `enseignement`
--
ALTER TABLE `enseignement`
  ADD CONSTRAINT `enseignement_ibfk_1` FOREIGN KEY (`ID_discipline`) REFERENCES `discipline` (`ID_discipline`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `enseignement_ibfk_2` FOREIGN KEY (`ID_classe`) REFERENCES `classe` (`ID_classe`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `enseignement_ibfk_3` FOREIGN KEY (`ID_enseignant`) REFERENCES `enseignant` (`ID_enseignant`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `evaluation`
--
ALTER TABLE `evaluation`
  ADD CONSTRAINT `evaluation_ibfk_1` FOREIGN KEY (`ID_detailbulletin`) REFERENCES `detailbulletin` (`ID_detailbulletin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD CONSTRAINT `inscription_ibfk_1` FOREIGN KEY (`ID_classe`) REFERENCES `classe` (`ID_classe`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `inscription_ibfk_2` FOREIGN KEY (`ID_etudiant`) REFERENCES `etudiant` (`ID_etudiant`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `trimestre`
--
ALTER TABLE `trimestre`
  ADD CONSTRAINT `trimestre_ibfk_1` FOREIGN KEY (`ID_anneescolaire`) REFERENCES `anneescolaire` (`ID_anneescolaire`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
