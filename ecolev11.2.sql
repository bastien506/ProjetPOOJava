-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 07 juin 2019 à 18:36
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
(2004, 'Continue comme ça.', 11004, 8002),
(2005, 'Assez bien', 11005, 8002),
(2006, 'Tres bien', 11006, 8002),
(2007, 'Assez bien', 11004, 8003),
(2008, 'Peu mieux faire.', 11005, 8003),
(2009, '', 11006, 8003),
(2013, '', 11004, 8005),
(2014, '', 11005, 8005),
(2015, '', 11006, 8005),
(2016, '', 11004, 8006),
(2017, '', 11005, 8006),
(2018, '', 11006, 8006),
(2025, '', 11004, 8009),
(2034, 'Continue comme ça.', 11004, 8018),
(2037, 'Tres bien', 11006, 8021),
(2040, 'Assez bien', 11004, 8024),
(2041, '', 11006, 8025),
(2042, 'Peu mieux faire.', 11005, 8026),
(2043, '', 11004, 8027),
(2046, '', 11006, 8030),
(2062, '', 11004, 8046),
(2064, 'Excellent', 11005, 8048),
(2065, '.', 11006, 8049),
(2070, 'Peu mieux faire.', 11005, 8054),
(2073, '', 11005, 8057),
(2074, '', 11006, 8058),
(2075, '', 11004, 8059),
(2077, '', 11006, 8061),
(2078, '', 11004, 8062),
(2079, '', 11005, 8063),
(2082, 'Assez bien ', 11004, 8066),
(2083, 'Excellent', 11005, 8067),
(2084, '.', 11006, 8068),
(2085, 'Continue comme ça.', 11004, 8069),
(2086, 'Assez bien', 11005, 8069),
(2087, 'Tres bien', 11006, 8070),
(2089, 'Peu mieux faire.', 11005, 8072),
(2090, '', 11006, 8073),
(2091, '', 11004, 8074),
(2095, '', 11005, 8078),
(2096, '', 11006, 8079),
(2098, '', 11005, 8081),
(2099, '', 11006, 8082),
(2100, 'Assez bien ', 11004, 8083),
(2104, 'Assez bien', 11005, 8087),
(2105, 'Tres bien', 11006, 8088),
(2112, '', 11004, 8095),
(2113, '', 11005, 8096);

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
) ENGINE=InnoDB AUTO_INCREMENT=3018 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`ID_classe`, `Nom`, `ID_niveau`, `ID_anneescolaire`) VALUES
(3001, 'A', 9001, 1001),
(3002, 'B', 9001, 1001),
(3003, 'C', 9001, 1001),
(3004, 'A', 9002, 1001),
(3005, 'B', 9002, 1001),
(3006, 'A', 9003, 1001),
(3007, 'B', 9003, 1001),
(3008, 'A', 9004, 1001),
(3009, 'B', 9004, 1001),
(3010, 'Pro', 9005, 1001),
(3011, 'General', 9005, 1001),
(3012, 'S', 9006, 1001),
(3013, 'L', 9006, 1001),
(3014, 'ES', 9006, 1001),
(3015, 'S', 9007, 1001),
(3016, 'L', 9007, 1001),
(3017, 'ES', 9007, 1001);

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
(4025, 'En progres ', 2025, 6001),
(4026, '', 2025, 6002),
(4027, '', 2025, 6003),
(4028, 'En progres ', 2025, 6004),
(4029, '', 2025, 6005),
(4030, '', 2025, 6006),
(4031, '', 2025, 6007),
(4032, '', 2025, 6008),
(4073, '', 2034, 6017),
(4074, '', 2034, 6018),
(4075, '', 2034, 6019),
(4076, '', 2034, 6020),
(4077, '', 2034, 6021),
(4078, '', 2034, 6022),
(4079, '', 2034, 6023);

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
(5001, 'Math'),
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
(12001, 'Bruna ', 'Charlotte', 'F'),
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
) ENGINE=InnoDB AUTO_INCREMENT=6164 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `enseignement`
--

INSERT INTO `enseignement` (`ID_enseignement`, `ID_classe`, `ID_discipline`, `ID_enseignant`) VALUES
(6001, 3001, 5001, 12002),
(6002, 3001, 5002, 12006),
(6003, 3001, 5003, 12001),
(6004, 3001, 5004, 12005),
(6005, 3001, 5006, 12011),
(6006, 3001, 5010, 12010),
(6007, 3001, 5012, 12009),
(6008, 3001, 5011, 12009),
(6009, 3002, 5001, 12002),
(6010, 3002, 5002, 12006),
(6011, 3002, 5003, 12001),
(6012, 3002, 5004, 12005),
(6013, 3002, 5006, 12011),
(6014, 3002, 5010, 12010),
(6015, 3002, 5012, 12009),
(6016, 3002, 5011, 12009),
(6017, 3003, 5001, 12002),
(6018, 3003, 5002, 12006),
(6019, 3003, 5003, 12001),
(6020, 3003, 5004, 12005),
(6021, 3003, 5006, 12011),
(6022, 3003, 5010, 12010),
(6023, 3003, 5012, 12009),
(6024, 3003, 5011, 12009),
(6025, 3004, 5001, 12002),
(6026, 3004, 5002, 12006),
(6027, 3004, 5003, 12001),
(6028, 3004, 5004, 12005),
(6029, 3004, 5006, 12011),
(6030, 3004, 5010, 12010),
(6031, 3004, 5012, 12009),
(6032, 3004, 5011, 12009),
(6033, 3005, 5001, 12002),
(6034, 3005, 5002, 12006),
(6035, 3005, 5003, 12003),
(6036, 3005, 5004, 12005),
(6037, 3005, 5006, 12011),
(6038, 3005, 5010, 12010),
(6039, 3005, 5012, 12009),
(6040, 3005, 5011, 12009),
(6041, 3006, 5001, 12002),
(6042, 3006, 5002, 12010),
(6043, 3006, 5003, 12001),
(6044, 3006, 5004, 12005),
(6045, 3006, 5006, 12011),
(6046, 3006, 5010, 12010),
(6047, 3006, 5012, 12009),
(6048, 3006, 5011, 12009),
(6049, 3007, 5001, 12002),
(6050, 3007, 5002, 12010),
(6051, 3007, 5003, 12001),
(6052, 3007, 5004, 12005),
(6053, 3007, 5006, 12011),
(6054, 3007, 5010, 12010),
(6055, 3007, 5012, 12009),
(6056, 3007, 5011, 12009),
(6057, 3008, 5001, 12002),
(6058, 3008, 5002, 12010),
(6059, 3008, 5003, 12001),
(6060, 3008, 5004, 12005),
(6061, 3008, 5006, 12011),
(6062, 3008, 5010, 12010),
(6063, 3008, 5012, 12009),
(6064, 3008, 5011, 12009),
(6065, 3009, 5001, 12002),
(6066, 3009, 5002, 12010),
(6067, 3009, 5003, 12001),
(6068, 3009, 5004, 12005),
(6069, 3009, 5006, 12011),
(6070, 3009, 5010, 12010),
(6071, 3009, 5012, 12009),
(6072, 3009, 5011, 12009),
(6073, 3010, 5001, 12002),
(6074, 3010, 5002, 12010),
(6075, 3010, 5003, 12003),
(6076, 3010, 5004, 12002),
(6077, 3010, 5005, 12008),
(6078, 3010, 5010, 12016),
(6079, 3010, 5009, 12008),
(6080, 3010, 5011, 12015),
(6081, 3011, 5001, 12002),
(6082, 3011, 5002, 12006),
(6083, 3011, 5003, 12003),
(6084, 3011, 5004, 12002),
(6085, 3011, 5008, 12013),
(6086, 3011, 5010, 12016),
(6087, 3010, 5007, 12012),
(6088, 3010, 5011, 12015),
(6089, 3012, 5001, 12007),
(6090, 3012, 5013, 12006),
(6091, 3012, 5003, 12003),
(6092, 3012, 5004, 12016),
(6093, 3012, 5007, 12012),
(6094, 3012, 5010, 12010),
(6095, 3012, 5012, 12009),
(6096, 3012, 5011, 12009),
(6097, 3012, 5008, 12013),
(6098, 3013, 5002, 12006),
(6099, 3013, 5013, 12014),
(6100, 3013, 5003, 12003),
(6101, 3013, 5004, 12016),
(6102, 3013, 5007, 12012),
(6103, 3013, 5006, 12011),
(6104, 3013, 5012, 12009),
(6105, 3013, 5011, 12009),
(6106, 3013, 5008, 12013),
(6107, 3013, 5015, 12016),
(6108, 3014, 5001, 12004),
(6109, 3014, 5013, 12006),
(6110, 3014, 5003, 12003),
(6111, 3014, 5015, 12016),
(6112, 3014, 5007, 12012),
(6113, 3014, 5014, 12004),
(6114, 3014, 5012, 12014),
(6115, 3014, 5011, 12009),
(6116, 3014, 5008, 12013),
(6117, 3015, 5001, 12007),
(6118, 3015, 5013, 12006),
(6119, 3015, 5003, 12003),
(6120, 3015, 5004, 12016),
(6121, 3015, 5007, 12012),
(6122, 3015, 5010, 12010),
(6123, 3015, 5012, 12009),
(6124, 3015, 5011, 12009),
(6125, 3015, 5008, 12013),
(6126, 3016, 5002, 12006),
(6127, 3016, 5013, 12014),
(6128, 3016, 5003, 12003),
(6129, 3016, 5007, 12012),
(6130, 3016, 5012, 12009),
(6131, 3016, 5011, 12009),
(6132, 3016, 5008, 12013),
(6133, 3017, 5001, 12004),
(6134, 3017, 5013, 12014),
(6135, 3017, 5003, 12001),
(6136, 3017, 5007, 12012),
(6137, 3017, 5012, 12009),
(6138, 3017, 5011, 12009),
(6139, 3017, 5008, 12013),
(6140, 3017, 5014, 12004);

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
(13002, 'Lajeune', 'Gaetan', 'M'),
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
(13081, 'Poulain', 'Amelie', 'F'),
(13082, 'Foley', 'Axel', 'M'),
(13083, 'Darko', 'Donnie', 'M'),
(13087, 'Doe', 'Jane', 'F'),
(13088, 'Smithee', 'Alan', 'M'),
(13095, 'Parker', 'Peter', 'M'),
(13096, 'Wayne', 'Bruce', 'M');

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
(7041, '', 6, 4025),
(7042, '', 9, 4025),
(7043, '', 16, 4026),
(7044, '', 19, 4027),
(7045, '', 13, 4027),
(7046, '', 10, 4028),
(7047, '', 20, 4028),
(7048, '', 4, 4029),
(7049, 'Excellent', 19, 4029),
(7050, 'Excellent', 1, 4030),
(7051, 'Excellent', 11, 4030),
(7052, 'Excellent', 3, 4031),
(7053, 'Excellent', 15, 4031),
(7054, 'Excellent', 9, 4031),
(7055, 'Excellent', 11, 4032),
(7056, 'Excellent', 11, 4032),
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
) ENGINE=InnoDB AUTO_INCREMENT=8101 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`ID_inscription`, `ID_classe`, `ID_etudiant`) VALUES
(8002, 3015, 13002),
(8003, 3015, 13003),
(8005, 3016, 13004),
(8006, 3012, 13005),
(8009, 3001, 13006),
(8018, 3003, 13007),
(8021, 3003, 13008),
(8024, 3004, 13009),
(8025, 3005, 13010),
(8026, 3005, 13011),
(8027, 3005, 13012),
(8030, 3006, 13013),
(8046, 3007, 13014),
(8048, 3007, 13015),
(8049, 3008, 13016),
(8054, 3008, 13017),
(8057, 3009, 13018),
(8058, 3009, 13019),
(8059, 3010, 13020),
(8061, 3010, 13021),
(8062, 3010, 13022),
(8063, 3010, 13023),
(8066, 3011, 13024),
(8067, 3011, 13025),
(8068, 3011, 13026),
(8069, 3011, 13027),
(8070, 3012, 13028),
(8072, 3012, 13029),
(8073, 3012, 13030),
(8074, 3012, 13031),
(8078, 3012, 13032),
(8079, 3013, 13033),
(8081, 3013, 13081),
(8082, 3014, 13082),
(8083, 3014, 13083),
(8087, 3014, 13087),
(8088, 3015, 13088),
(8095, 3017, 13095),
(8096, 3017, 13096);

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
(9001, '6eme'),
(9002, '5eme'),
(9003, '4eme'),
(9004, '3eme'),
(9005, '2nd'),
(9006, '1ere'),
(9007, 'T');

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
(11001, 1, 1002, 2, 9, 2017, 20, 12, 2017),
(11002, 2, 1002, 1, 1, 2018, 10, 3, 2018),
(11003, 3, 1002, 11, 3, 2018, 19, 6, 2018),
(11004, 1, 1001, 10, 9, 2018, 15, 12, 2018),
(11005, 2, 1001, 7, 1, 2019, 1, 3, 2019),
(11006, 3, 1001, 4, 3, 2019, 7, 6, 2019);

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
