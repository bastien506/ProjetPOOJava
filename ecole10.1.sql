-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 30 mai 2019 à 20:58
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
(1002),
(1003),
(1004),
(1005),
(1006),
(1007),
(1008),
(1009),
(1010),
(1011),
(1012);

-- --------------------------------------------------------

--
-- Structure de la table `bulletin`
--

DROP TABLE IF EXISTS `bulletin`;
CREATE TABLE IF NOT EXISTS `bulletin` (
  `ID_bulletin` int(11) NOT NULL AUTO_INCREMENT,
  `Appreciation` varchar(255) NOT NULL,
  `ID_trimestre` int(11) NOT NULL,
  `ID_inscription` int(11) NOT NULL,
  PRIMARY KEY (`ID_bulletin`),
  KEY `ID_trimestre` (`ID_trimestre`),
  KEY `ID_inscription` (`ID_inscription`)
) ENGINE=InnoDB AUTO_INCREMENT=2102 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bulletin`
--

INSERT INTO `bulletin` (`ID_bulletin`, `Appreciation`, `ID_trimestre`, `ID_inscription`) VALUES
(2002, 'Assez bien ', 11001, 8003),
(2006, 'Excellent', 11001, 8006),
(2007, '.', 11002, 8006),
(2008, 'Continue comme ça.', 11001, 8007),
(2009, 'Assez bien', 11001, 8008),
(2010, 'Tres bien', 11001, 8009),
(2011, 'Assez bien', 11001, 8010),
(2101, 'Peu mieux faire.', 11001, 8001);

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

DROP TABLE IF EXISTS `classe`;
CREATE TABLE IF NOT EXISTS `classe` (
  `ID_classe` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) NOT NULL,
  `ID_niveau` int(11) NOT NULL,
  `ID_anneescolaire` int(11) NOT NULL,
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
  `ID_bulletin` int(11) NOT NULL,
  `ID_enseignement` int(11) NOT NULL,
  PRIMARY KEY (`ID_detailbulletin`),
  KEY `ID_bulletin` (`ID_bulletin`),
  KEY `ID_enseignement` (`ID_enseignement`)
) ENGINE=InnoDB AUTO_INCREMENT=4010 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `detailbulletin`
--

INSERT INTO `detailbulletin` (`ID_detailbulletin`, `Appreciation`, `ID_bulletin`, `ID_enseignement`) VALUES
(4001, 'En progres ', 2101, 6001),
(4002, 'Poursuivez vos efforts ', 2002, 6002),
(4005, 'mouais ..', 2101, 6005),
(4006, 'euh comment dire ', 2101, 6006),
(4007, 'peu mieux faire', 2101, 6007),
(4009, 'Convenable', 2002, 6005);

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
(5015, 'Sciences ');

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
  `ID_classe` int(11) NOT NULL,
  `ID_discipline` int(11) NOT NULL,
  `ID_enseignant` int(11) NOT NULL,
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
(6011, 3001, 5011, 12009),
(6012, 3002, 5001, 12002),
(6013, 3002, 5002, 12006),
(6014, 3002, 5003, 12001),
(6015, 3002, 5004, 12005),
(6016, 3002, 5006, 12011),
(6017, 3002, 5010, 12010),
(6018, 3002, 5012, 12009),
(6019, 3002, 5011, 12009),
(6020, 3003, 5001, 12002),
(6021, 3003, 5002, 12006),
(6022, 3003, 5003, 12001),
(6023, 3003, 5004, 12005),
(6024, 3003, 5006, 12011),
(6025, 3003, 5010, 12010),
(6026, 3003, 5012, 12009),
(6027, 3003, 5011, 12009),
(6028, 3004, 5001, 12002),
(6029, 3004, 5002, 12006),
(6030, 3004, 5003, 12001),
(6031, 3004, 5004, 12005),
(6032, 3004, 5006, 12011),
(6033, 3004, 5010, 12010),
(6034, 3004, 5012, 12009),
(6035, 3004, 5011, 12009),
(6036, 3005, 5001, 12002),
(6037, 3005, 5002, 12006),
(6038, 3005, 5003, 12003),
(6039, 3005, 5004, 12005),
(6040, 3005, 5006, 12011),
(6041, 3005, 5010, 12010),
(6042, 3005, 5012, 12009),
(6043, 3005, 5011, 12009),
(6044, 3006, 5001, 12002),
(6045, 3006, 5002, 12010),
(6046, 3006, 5003, 12001),
(6047, 3006, 5004, 12005),
(6048, 3006, 5006, 12011),
(6049, 3006, 5010, 12010),
(6050, 3006, 5012, 12009),
(6051, 3006, 5011, 12009),
(6052, 3007, 5001, 12002),
(6053, 3007, 5002, 12010),
(6054, 3007, 5003, 12001),
(6055, 3007, 5004, 12005),
(6056, 3007, 5006, 12011),
(6057, 3007, 5010, 12010),
(6058, 3007, 5012, 12009),
(6059, 3007, 5011, 12009),
(6060, 3008, 5001, 12002),
(6061, 3008, 5002, 12010),
(6062, 3008, 5003, 12001),
(6063, 3008, 5004, 12005),
(6064, 3008, 5006, 12011),
(6065, 3008, 5010, 12010),
(6066, 3008, 5012, 12009),
(6067, 3008, 5011, 12009),
(6068, 3009, 5001, 12002),
(6069, 3009, 5002, 12010),
(6070, 3009, 5003, 12001),
(6071, 3009, 5004, 12005),
(6072, 3009, 5006, 12011),
(6073, 3009, 5010, 12010),
(6074, 3009, 5012, 12009),
(6075, 3009, 5011, 12009),
(6076, 3010, 5001, 12002),
(6077, 3010, 5002, 12010),
(6078, 3010, 5003, 12003),
(6079, 3010, 5004, 12002),
(6080, 3010, 5005, 12008),
(6081, 3010, 5010, 12016),
(6082, 3010, 5009, 12008),
(6083, 3010, 5011, 12015),
(6084, 3011, 5001, 12002),
(6085, 3011, 5002, 12006),
(6086, 3011, 5003, 12003),
(6087, 3011, 5004, 12002),
(6088, 3011, 5008, 12013),
(6089, 3011, 5010, 12016),
(6090, 3010, 5007, 12012),
(6091, 3010, 5011, 12015),
(6092, 3012, 5001, 12007),
(6093, 3012, 5013, 12006),
(6094, 3012, 5003, 12003),
(6095, 3012, 5004, 12016),
(6096, 3012, 5007, 12012),
(6097, 3012, 5010, 12010),
(6098, 3012, 5012, 12009),
(6099, 3012, 5011, 12009),
(6100, 3012, 5008, 12013),
(6119, 3013, 5002, 12006),
(6120, 3013, 5013, 12014),
(6121, 3013, 5003, 12003),
(6122, 3013, 5004, 12016),
(6123, 3013, 5007, 12012),
(6124, 3013, 5006, 12010),
(6125, 3013, 5012, 12009),
(6126, 3013, 5011, 12009),
(6127, 3013, 5008, 12013),
(6128, 3013, 5015, 12016),
(6129, 3014, 5001, 12004),
(6130, 3014, 5013, 12006),
(6131, 3014, 5003, 12003),
(6132, 3014, 5015, 12016),
(6133, 3014, 5007, 12012),
(6134, 3014, 5014, 12004),
(6135, 3014, 5012, 12014),
(6136, 3014, 5011, 12009),
(6137, 3014, 5008, 12013),
(6138, 3015, 5001, 12007),
(6139, 3015, 5013, 12006),
(6140, 3015, 5003, 12003),
(6141, 3015, 5004, 12016),
(6142, 3015, 5007, 12012),
(6143, 3015, 5010, 12010),
(6144, 3015, 5012, 12009),
(6145, 3015, 5011, 12009),
(6146, 3015, 5008, 12013),
(6147, 3016, 5002, 12006),
(6148, 3016, 5013, 12014),
(6149, 3016, 5003, 12003),
(6151, 3016, 5007, 12012),
(6153, 3016, 5012, 12009),
(6154, 3016, 5011, 12009),
(6155, 3016, 5008, 12013),
(6156, 3017, 5001, 12004),
(6157, 3017, 5013, 12014),
(6158, 3017, 5003, 12001),
(6159, 3017, 5007, 12012),
(6160, 3017, 5012, 12009),
(6161, 3017, 5011, 12009),
(6162, 3017, 5008, 12013),
(6163, 3017, 5014, 12004);

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
(13004, 'Marchand', 'Jules', 'M'),
(13005, 'Roemer', 'Faustine', 'F'),
(13006, 'Lashermes', 'Cecile', 'F'),
(13007, 'Cesarini', 'Rachelle', 'F'),
(13008, 'Logan ', 'Paul', 'M'),
(13009, 'Venuti', 'Thibault', 'M'),
(13010, 'Ontario', 'Vincent', 'M'),
(13011, 'Dupond', 'Pierre', 'M'),
(13012, 'Lamarc', 'Michel', 'M'),
(13013, 'Dupuis', 'Paul', 'M'),
(13014, 'Dragin', 'Constantin', 'M'),
(13015, 'Torbal', 'Etienne', 'M'),
(13016, 'Klark', 'Emilie', 'F'),
(13017, 'Azar', 'Louis', 'M'),
(13018, 'Adibu', 'Mohamed', 'M'),
(13019, 'Mercier', 'Adrien', 'M'),
(13020, 'Rebaud', 'Margaux', 'F'),
(13021, 'Sanchez', 'Pedro', 'M'),
(13022, 'Mendossa', 'Pedro', 'M'),
(13023, 'Frattachi', 'Amaia', 'F'),
(13024, 'Fracchia', 'Shannon', 'F'),
(13025, 'Sestier', 'Charlotte', 'F'),
(13026, 'Seree', 'Thomas', 'M'),
(13027, 'Nevado', 'Marine', 'F'),
(13028, 'Poplimont', 'Lucas', 'M'),
(13029, 'Chen', 'Thibault', 'M'),
(13030, 'Witz ', 'Theo ', 'M'),
(13031, 'Sinclair', 'Anne', 'F'),
(13032, 'Roberts', 'Margot', 'F'),
(13033, 'Vanin', 'Florian', 'M'),
(13034, 'Motte', 'Jean Baptiste', 'M'),
(13035, 'Lecause', 'Lucas', 'M'),
(13036, 'Perrier', 'Jean ', 'M'),
(13037, 'Chiez', 'Julien', 'M'),
(13038, 'Natlio', 'Nathan', 'M'),
(13039, 'Xilouz', 'Olivier', 'M'),
(13040, 'Detzi', 'Lorenzo', 'M'),
(13041, 'Ethilp', 'Tatiana', 'F'),
(13042, 'Lajeune', 'Myriam', 'F'),
(13043, 'Jourdan', 'Michele', 'F'),
(13044, 'Paoli', 'Alain', 'M'),
(13045, 'Paoli', 'Claude', 'M'),
(13046, 'McQueen', 'Alexander', 'M'),
(13047, 'Awarel', 'Tyfannie', 'F'),
(13048, 'Trouve', 'Jade', 'F'),
(13049, 'Greko', 'Jade', 'F'),
(13050, 'Barthe', 'Murielle', 'F'),
(13051, 'Atlana', 'Stellie', 'F'),
(13052, 'Oliwav', 'Daneel', 'M'),
(13053, 'Parfait', 'Alain', 'M'),
(13054, 'Bros', 'Mario', 'M'),
(13055, 'Bros', 'Luigi', 'M'),
(13056, 'Teachy', 'Xavier', 'M'),
(13057, 'Rico', 'Johnny', 'M'),
(13058, 'Ilbanez', 'Carmen', 'M'),
(13059, 'Flores', 'Dizzy', 'M'),
(13060, 'Jenkins', 'Carl', 'M'),
(13061, 'Connor', 'Sarah', 'F'),
(13062, 'Connor', 'John', 'M'),
(13063, 'Angel', 'Nicolas', 'M'),
(13064, 'Skinner', 'Simon', 'M'),
(13065, 'King', 'Gary', 'M'),
(13066, 'Pilgrim', 'Scott', 'M'),
(13067, 'Rambo', 'John', 'M'),
(13068, 'Joestar', 'Jonathan', 'M'),
(13069, 'Joestar', 'Joseph', 'M'),
(13070, 'Anderson', 'Thomas', 'M'),
(13071, 'Rippley', 'Helene', 'F'),
(13072, 'McClane', 'John', 'M'),
(13073, 'Durden', 'Tyler', 'M'),
(13074, 'McFly', 'Marty', 'M'),
(13075, 'Burgundy ', 'Ron', 'M'),
(13076, 'Venkman', 'Peter', 'M'),
(13077, 'Balboa', 'Rocky', 'M'),
(13078, 'Bueller', 'Ferris', 'M'),
(13079, 'Deckard', 'Rick', 'M'),
(13080, 'Riley', 'Shaun', 'M'),
(13081, 'Poulain', 'Amelie', 'F'),
(13082, 'Foley', 'Axel', 'M'),
(13083, 'Darko', 'Donnie', 'M'),
(13084, 'Drebin', 'Frank', 'M'),
(13085, 'Bates', 'Norman', 'M'),
(13086, 'Doe', 'John', 'M'),
(13087, 'Doe', 'Jane', 'F'),
(13088, 'Smithee', 'Alan', 'M'),
(13089, 'Perrez', 'Alex', 'M'),
(13090, 'Jil', 'Sandra', 'F'),
(13091, 'Jil', 'Sasha', 'F'),
(13092, 'Ketchum', 'Sasha', 'M'),
(13093, 'Sun', 'Esteban', 'M'),
(13094, 'Kent', 'Clark', 'M'),
(13095, 'Parker', 'Peter', 'M'),
(13096, 'Wayne', 'Bruce', 'M'),
(13097, 'Wensten', 'Michael', 'M'),
(13098, 'Glenanne', 'Fiona', 'F'),
(13099, 'Wensten', 'Madeline', 'F'),
(13100, 'Burke', 'Elizabeth', 'F');

-- --------------------------------------------------------

--
-- Structure de la table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
CREATE TABLE IF NOT EXISTS `evaluation` (
  `ID_evaluation` int(11) NOT NULL AUTO_INCREMENT,
  `Appreciation` varchar(255) NOT NULL,
  `Note` int(11) NOT NULL,
  `ID_detailbulletin` int(11) NOT NULL,
  PRIMARY KEY (`ID_evaluation`),
  KEY `ID_detailbulletin` (`ID_detailbulletin`)
) ENGINE=InnoDB AUTO_INCREMENT=7017 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `evaluation`
--

INSERT INTO `evaluation` (`ID_evaluation`, `Appreciation`, `Note`, `ID_detailbulletin`) VALUES
(7001, 'Excellent', 19, 4001),
(7002, 'Passable', 16, 4001),
(7004, '.', 20, 4002),
(7007, '', 7, 4005),
(7010, '', 10, 4006),
(7011, '', 15, 4006),
(7012, '', 17, 4006),
(7013, '', 18, 4007),
(7014, 'on va dire ok ', 10, 4002),
(7015, 'mediocre !!!!', 0, 4002),
(7016, '', 15, 4009);

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

DROP TABLE IF EXISTS `inscription`;
CREATE TABLE IF NOT EXISTS `inscription` (
  `ID_inscription` int(11) NOT NULL AUTO_INCREMENT,
  `ID_classe` int(11) NOT NULL,
  `ID_etudiant` int(11) NOT NULL,
  PRIMARY KEY (`ID_inscription`),
  KEY `FOREIGN` (`ID_etudiant`) USING BTREE,
  KEY `ID_classe` (`ID_classe`)
) ENGINE=InnoDB AUTO_INCREMENT=8037 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`ID_inscription`, `ID_classe`, `ID_etudiant`) VALUES
(8001, 3015, 13001),
(8002, 3015, 13002),
(8003, 3015, 13003),
(8006, 3010, 13004),
(8007, 3016, 13005),
(8008, 3012, 13006),
(8009, 3013, 13007),
(8010, 3001, 13008),
(8011, 3001, 13008),
(8012, 3001, 13008),
(8013, 3001, 13009),
(8014, 3001, 13010),
(8015, 3001, 13011),
(8016, 3002, 13012),
(8017, 3002, 13013),
(8018, 3002, 13014),
(8019, 3002, 13015),
(8020, 3002, 13016),
(8021, 3002, 13017),
(8022, 3003, 13018),
(8023, 3003, 13019),
(8024, 3003, 13020),
(8025, 3003, 13021),
(8026, 3003, 13022),
(8027, 3004, 13023),
(8028, 3004, 13024),
(8029, 3004, 13024),
(8030, 3004, 13024),
(8031, 3005, 13025),
(8032, 3005, 13026),
(8033, 3005, 13027),
(8034, 3006, 13028),
(8035, 3006, 13029),
(8036, 3006, 13030);

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
(9001, 'sixieme'),
(9002, 'cinquieme'),
(9003, 'quatrieme'),
(9004, 'troisieme'),
(9005, 'seconde'),
(9006, 'premiere '),
(9007, 'terminale');

-- --------------------------------------------------------

--
-- Structure de la table `trimestre`
--

DROP TABLE IF EXISTS `trimestre`;
CREATE TABLE IF NOT EXISTS `trimestre` (
  `ID_trimestre` int(11) NOT NULL AUTO_INCREMENT,
  `Numero` int(11) NOT NULL,
  `ID_anneescolaire` int(11) NOT NULL,
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
(11001, 1, 1001, 10, 9, 2018, 15, 12, 2018),
(11002, 2, 1001, 7, 1, 2019, 1, 3, 2019),
(11003, 3, 1001, 4, 3, 2019, 7, 6, 2019),
(11004, 1, 1002, 2, 9, 2017, 20, 12, 2017),
(11005, 2, 1002, 1, 1, 2018, 10, 3, 2018),
(11006, 3, 1002, 11, 3, 2018, 19, 6, 2018);

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
  ADD CONSTRAINT `classe_ibfk_2` FOREIGN KEY (`ID_anneescolaire`) REFERENCES `anneescolaire` (`ID_anneescolaire`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `detailbulletin`
--
ALTER TABLE `detailbulletin`
  ADD CONSTRAINT `detailbulletin_ibfk_1` FOREIGN KEY (`ID_bulletin`) REFERENCES `bulletin` (`ID_bulletin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detailbulletin_ibfk_2` FOREIGN KEY (`ID_enseignement`) REFERENCES `enseignement` (`ID_enseignement`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `enseignement`
--
ALTER TABLE `enseignement`
  ADD CONSTRAINT `enseignement_ibfk_1` FOREIGN KEY (`ID_discipline`) REFERENCES `discipline` (`ID_discipline`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `enseignement_ibfk_2` FOREIGN KEY (`ID_classe`) REFERENCES `classe` (`ID_classe`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `enseignement_ibfk_3` FOREIGN KEY (`ID_enseignant`) REFERENCES `enseignant` (`ID_enseignant`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `evaluation`
--
ALTER TABLE `evaluation`
  ADD CONSTRAINT `evaluation_ibfk_1` FOREIGN KEY (`ID_detailbulletin`) REFERENCES `detailbulletin` (`ID_detailbulletin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD CONSTRAINT `inscription_ibfk_1` FOREIGN KEY (`ID_classe`) REFERENCES `classe` (`ID_classe`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inscription_ibfk_2` FOREIGN KEY (`ID_etudiant`) REFERENCES `etudiant` (`ID_etudiant`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `trimestre`
--
ALTER TABLE `trimestre`
  ADD CONSTRAINT `trimestre_ibfk_1` FOREIGN KEY (`ID_anneescolaire`) REFERENCES `anneescolaire` (`ID_anneescolaire`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
