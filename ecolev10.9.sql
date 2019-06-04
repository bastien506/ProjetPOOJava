-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 04 juin 2019 à 11:38
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
) ENGINE=InnoDB AUTO_INCREMENT=2118 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bulletin`
--

INSERT INTO `bulletin` (`ID_bulletin`, `Appreciation`, `ID_trimestre`, `ID_inscription`) VALUES
(2001, 'Assez bien ', 11001, 8001),
(2002, 'Excellent', 11002, 8001),
(2003, '.', 11003, 8001),
(2004, 'Continue comme ça.', 11001, 8002),
(2005, 'Assez bien', 11002, 8002),
(2006, 'Tres bien', 11003, 8002),
(2007, 'Assez bien', 11001, 8003),
(2008, 'Peu mieux faire.', 11002, 8003),
(2009, '', 11003, 8003),
(2010, '', 11001, 8004),
(2011, '', 11002, 8004),
(2012, '', 11003, 8004),
(2013, '', 11001, 8005),
(2014, '', 11002, 8005),
(2015, '', 11003, 8005),
(2016, '', 11001, 8006),
(2017, '', 11002, 8006),
(2018, '', 11003, 8006),
(2019, '', 11001, 8007),
(2020, '', 11002, 8007),
(2021, '', 11003, 8007),
(2022, '', 11001, 8008),
(2023, '', 11002, 8008),
(2024, '', 11003, 8008),
(2025, '', 11001, 8009),
(2026, 'Assez bien ', 11001, 8010),
(2027, 'Excellent', 11002, 8011),
(2028, '', 11001, 8012),
(2029, '', 11002, 8013),
(2030, '', 11003, 8014),
(2031, '.', 11003, 8015),
(2032, '', 11001, 8016),
(2033, '', 11002, 8017),
(2034, 'Continue comme ça.', 11001, 8018),
(2035, 'Assez bien', 11002, 8019),
(2036, '', 11003, 8020),
(2037, 'Tres bien', 11003, 8021),
(2038, '', 11001, 8022),
(2039, '', 11002, 8023),
(2040, 'Assez bien', 11001, 8024),
(2041, '', 11003, 8025),
(2042, 'Peu mieux faire.', 11002, 8026),
(2043, '', 11001, 8027),
(2044, '', 11002, 8028),
(2045, '', 11003, 8029),
(2046, '', 11003, 8030),
(2047, '', 11001, 8031),
(2048, '', 11002, 8032),
(2049, '', 11003, 8033),
(2050, '', 11001, 8034),
(2051, '', 11002, 8035),
(2052, '', 11003, 8036),
(2053, '', 11001, 8037),
(2054, '', 11002, 8038),
(2055, '', 11003, 8039),
(2056, '', 11001, 8040),
(2057, '', 11002, 8041),
(2058, '', 11003, 8042),
(2059, '', 11001, 8043),
(2060, '', 11002, 8044),
(2061, '', 11003, 8045),
(2062, '', 11001, 8046),
(2063, 'Assez bien ', 11001, 8047),
(2064, 'Excellent', 11002, 8048),
(2065, '.', 11003, 8049),
(2066, 'Continue comme ça.', 11001, 8050),
(2067, 'Assez bien', 11002, 8051),
(2068, 'Tres bien', 11003, 8052),
(2069, 'Assez bien', 11001, 8053),
(2070, 'Peu mieux faire.', 11002, 8054),
(2071, '', 11003, 8055),
(2072, '', 11001, 8056),
(2073, '', 11002, 8057),
(2074, '', 11003, 8058),
(2075, '', 11001, 8059),
(2076, '', 11002, 8060),
(2077, '', 11003, 8061),
(2078, '', 11001, 8062),
(2079, '', 11002, 8063),
(2080, '', 11003, 8064),
(2081, '', 11001, 8065),
(2082, 'Assez bien ', 11001, 8066),
(2083, 'Excellent', 11002, 8067),
(2084, '.', 11003, 8068),
(2085, 'Continue comme ça.', 11001, 8069),
(2086, 'Assez bien', 11002, 8069),
(2087, 'Tres bien', 11003, 8070),
(2088, 'Assez bien', 11001, 8071),
(2089, 'Peu mieux faire.', 11002, 8072),
(2090, '', 11003, 8073),
(2091, '', 11001, 8074),
(2092, '', 11002, 8075),
(2093, '', 11003, 8076),
(2094, '', 11001, 8077),
(2095, '', 11002, 8078),
(2096, '', 11003, 8079),
(2097, '', 11001, 8080),
(2098, '', 11002, 8081),
(2099, '', 11003, 8082),
(2100, 'Assez bien ', 11001, 8083),
(2101, 'Excellent', 11002, 8084),
(2102, '.', 11003, 8085),
(2103, 'Continue comme ça.', 11001, 8086),
(2104, 'Assez bien', 11002, 8087),
(2105, 'Tres bien', 11003, 8088),
(2106, 'Assez bien', 11001, 8089),
(2107, 'Peu mieux faire.', 11002, 8090),
(2108, '', 11003, 8091),
(2109, '', 11001, 8092),
(2110, '', 11002, 8093),
(2111, '', 11003, 8094),
(2112, '', 11001, 8095),
(2113, '', 11002, 8096),
(2114, '', 11003, 8097),
(2115, '', 11001, 8098),
(2116, '', 11002, 8099),
(2117, '', 11003, 8100);

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
) ENGINE=InnoDB AUTO_INCREMENT=4083 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `detailbulletin`
--

INSERT INTO `detailbulletin` (`ID_detailbulletin`, `Appreciation`, `ID_bulletin`, `ID_enseignement`) VALUES
(4001, 'En progres ', 2022, 6001),
(4002, '', 2022, 6002),
(4003, '', 2022, 6003),
(4004, 'En progres ', 2022, 6004),
(4005, '', 2022, 6005),
(4006, '', 2022, 6006),
(4007, '', 2022, 6007),
(4008, '', 2022, 6008),
(4009, 'En progres ', 2023, 6001),
(4010, '', 2023, 6002),
(4011, '', 2023, 6003),
(4012, 'En progres ', 2023, 6004),
(4013, '', 2023, 6005),
(4014, '', 2023, 6006),
(4015, '', 2023, 6007),
(4016, '', 2023, 6008),
(4017, 'En progres ', 2024, 6001),
(4018, '', 2024, 6002),
(4019, '', 2024, 6003),
(4020, 'En progres ', 2024, 6004),
(4021, '', 2024, 6005),
(4022, '', 2024, 6006),
(4023, '', 2024, 6007),
(4024, '', 2024, 6008),
(4025, 'En progres ', 2025, 6001),
(4026, '', 2025, 6002),
(4027, '', 2025, 6003),
(4028, 'En progres ', 2025, 6004),
(4029, '', 2025, 6005),
(4030, '', 2025, 6006),
(4031, '', 2025, 6007),
(4032, '', 2025, 6008),
(4033, '', 2026, 6002),
(4034, '', 2026, 6003),
(4035, 'En progres ', 2026, 6004),
(4036, '', 2026, 6005),
(4037, '', 2026, 6006),
(4038, '', 2026, 6007),
(4039, 'En progres ', 2026, 6001),
(4040, '', 2026, 6008),
(4041, 'En progres ', 2027, 6001),
(4042, '', 2027, 6002),
(4043, '', 2027, 6003),
(4044, 'En progres ', 2027, 6004),
(4045, '', 2027, 6005),
(4046, '', 2027, 6006),
(4047, '', 2027, 6007),
(4048, '', 2027, 6008),
(4049, '', 2028, 6009),
(4050, '', 2028, 6010),
(4051, '', 2028, 6011),
(4052, '', 2028, 6012),
(4053, '', 2028, 6013),
(4054, '', 2028, 6014),
(4055, '', 2028, 6015),
(4056, '', 2028, 6016),
(4057, '', 2029, 6009),
(4058, '', 2029, 6010),
(4059, '', 2029, 6011),
(4060, '', 2029, 6012),
(4061, '', 2029, 6013),
(4062, '', 2029, 6014),
(4063, '', 2029, 6015),
(4064, '', 2029, 6016),
(4065, '', 2030, 6009),
(4066, '', 2030, 6010),
(4067, '', 2030, 6011),
(4068, '', 2030, 6012),
(4069, '', 2030, 6013),
(4070, '', 2030, 6014),
(4071, '', 2030, 6015),
(4072, '', 2030, 6016),
(4073, '', 2034, 6017),
(4074, '', 2034, 6018),
(4075, '', 2034, 6019),
(4076, '', 2034, 6020),
(4077, '', 2034, 6021),
(4078, '', 2034, 6022),
(4079, '', 2034, 6023),
(4080, '', 2030, 6024);

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
) ENGINE=InnoDB AUTO_INCREMENT=7194 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `evaluation`
--

INSERT INTO `evaluation` (`ID_evaluation`, `Appreciation`, `Note`, `ID_detailbulletin`) VALUES
(7001, 'Excellent', 19, 4001),
(7002, 'Passable', 16, 4001),
(7003, '', 13, 4001),
(7004, '', 14, 4001),
(7005, 'Excellent', 1, 4002),
(7006, 'Passable', 15, 4003),
(7007, '', 16, 4003),
(7008, '', 19, 4004),
(7009, 'Excellent', 11, 4005),
(7010, 'Passable', 16, 4006),
(7011, '', 13, 4006),
(7012, '', 10, 4007),
(7013, 'Excellent', 3, 4008),
(7014, 'Passable', 15, 4008),
(7015, '', 20, 4008),
(7016, '', 4, 4009),
(7017, 'Excellent', 15, 4010),
(7018, 'Passable', 13, 4010),
(7019, '', 6, 4011),
(7020, '', 9, 4011),
(7021, 'Excellent', 9, 4012),
(7022, 'Passable', 18, 4013),
(7023, '', 16, 4014),
(7024, '', 19, 4015),
(7025, 'Excellent', 11, 4015),
(7026, 'Passable', 16, 4016),
(7027, '', 13, 4016),
(7028, '', 10, 4017),
(7029, 'Excellent', 11, 4018),
(7030, 'Passable', 15, 4018),
(7031, '', 20, 4019),
(7032, '', 4, 4019),
(7033, '', 13, 4019),
(7034, '', 14, 4020),
(7035, '', 16, 4020),
(7036, '', 19, 4021),
(7037, '', 13, 4021),
(7038, '', 10, 4022),
(7039, '', 20, 4023),
(7040, '', 4, 4024),
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
(7057, 'Passable', 16, 4033),
(7058, 'Passable', 15, 4034),
(7059, 'Passable', 16, 4035),
(7060, 'Passable', 15, 4036),
(7061, 'Passable', 13, 4037),
(7062, 'Passable', 18, 4038),
(7063, 'Passable', 16, 4039),
(7064, 'Passable', 15, 4039),
(7065, 'Excellent', 19, 4040),
(7066, 'Passable', 16, 4040),
(7067, '', 13, 4041),
(7068, '', 14, 4042),
(7069, 'Excellent', 1, 4042),
(7070, 'Passable', 15, 4043),
(7071, '', 16, 4044),
(7072, '', 19, 4044),
(7073, 'Excellent', 11, 4044),
(7074, 'Passable', 16, 4045),
(7075, '', 13, 4046),
(7076, '', 10, 4047),
(7077, 'Excellent', 3, 4048),
(7078, 'Passable', 15, 4048),
(7079, '', 20, 4049),
(7080, '', 4, 4050),
(7081, 'Excellent', 15, 4051),
(7082, 'Passable', 13, 4051),
(7083, '', 6, 4051),
(7084, '', 9, 4052),
(7085, 'Excellent', 9, 4053),
(7086, 'Passable', 18, 4053),
(7087, '', 16, 4054),
(7088, '', 19, 4054),
(7089, 'Excellent', 11, 4055),
(7090, 'Passable', 16, 4056),
(7091, '', 13, 4057),
(7092, '', 10, 4058),
(7093, 'Excellent', 11, 4058),
(7094, 'Passable', 15, 4058),
(7095, '', 20, 4059),
(7096, '', 4, 4060),
(7097, 'Excellent', 19, 4060),
(7098, 'Passable', 16, 4060),
(7099, '', 13, 4061),
(7100, '', 14, 4062),
(7101, 'Excellent', 1, 4062),
(7102, 'Passable', 15, 4062),
(7103, '', 16, 4063),
(7104, '', 19, 4064),
(7105, 'Excellent', 11, 4064),
(7106, 'Passable', 16, 4065),
(7107, '', 13, 4066),
(7108, '', 10, 4067),
(7109, 'Excellent', 3, 4068),
(7110, 'Passable', 15, 4068),
(7111, '', 20, 4068),
(7112, '', 4, 4069),
(7113, 'Excellent', 15, 4070),
(7114, 'Passable', 13, 4071),
(7115, '', 6, 4072),
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
(7126, 'Passable', 15, 4018),
(7129, '', 13, 4079),
(7130, '', 14, 4079),
(7131, '', 16, 4079),
(7132, '', 19, 4080),
(7133, '', 13, 4080),
(7134, '', 10, 4080);

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
) ENGINE=InnoDB AUTO_INCREMENT=8101 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`ID_inscription`, `ID_classe`, `ID_etudiant`) VALUES
(8001, 3015, 13001),
(8002, 3015, 13002),
(8003, 3015, 13003),
(8004, 3010, 13004),
(8005, 3016, 13005),
(8006, 3012, 13006),
(8007, 3013, 13007),
(8008, 3001, 13008),
(8009, 3001, 13009),
(8010, 3001, 13010),
(8011, 3001, 13011),
(8012, 3002, 13012),
(8013, 3002, 13013),
(8014, 3002, 13014),
(8015, 3002, 13015),
(8016, 3002, 13016),
(8017, 3002, 13017),
(8018, 3003, 13018),
(8019, 3003, 13019),
(8020, 3003, 13020),
(8021, 3003, 13021),
(8022, 3003, 13022),
(8023, 3004, 13023),
(8024, 3004, 13024),
(8025, 3005, 13025),
(8026, 3005, 13026),
(8027, 3005, 13027),
(8028, 3006, 13028),
(8029, 3006, 13029),
(8030, 3006, 13030),
(8031, 3006, 13031),
(8032, 3005, 13032),
(8033, 3005, 13033),
(8034, 3005, 13034),
(8035, 3005, 13035),
(8036, 3005, 13036),
(8037, 3006, 13037),
(8038, 3006, 13038),
(8039, 3006, 13039),
(8040, 3006, 13040),
(8041, 3006, 13041),
(8042, 3007, 13042),
(8043, 3007, 13043),
(8044, 3007, 13044),
(8045, 3007, 13045),
(8046, 3007, 13046),
(8047, 3007, 13047),
(8048, 3007, 13048),
(8049, 3008, 13049),
(8050, 3008, 13050),
(8051, 3008, 13051),
(8052, 3008, 13052),
(8053, 3008, 13053),
(8054, 3008, 13054),
(8055, 3009, 13055),
(8056, 3009, 13056),
(8057, 3009, 13057),
(8058, 3009, 13058),
(8059, 3010, 13059),
(8060, 3010, 13060),
(8061, 3010, 13061),
(8062, 3010, 13062),
(8063, 3010, 13063),
(8064, 3011, 13064),
(8065, 3011, 13065),
(8066, 3011, 13066),
(8067, 3011, 13067),
(8068, 3011, 13068),
(8069, 3011, 13069),
(8070, 3012, 13070),
(8071, 3012, 13071),
(8072, 3012, 13072),
(8073, 3012, 13073),
(8074, 3012, 13074),
(8075, 3012, 13075),
(8076, 3012, 13076),
(8077, 3012, 13077),
(8078, 3012, 13078),
(8079, 3013, 13079),
(8080, 3013, 13080),
(8081, 3013, 13081),
(8082, 3014, 13082),
(8083, 3014, 13083),
(8084, 3014, 13084),
(8085, 3014, 13085),
(8086, 3014, 13086),
(8087, 3014, 13087),
(8088, 3015, 13088),
(8089, 3015, 13089),
(8090, 3016, 13090),
(8091, 3016, 13091),
(8092, 3016, 13092),
(8093, 3016, 13093),
(8094, 3016, 13094),
(8095, 3017, 13095),
(8096, 3017, 13096),
(8097, 3017, 13097),
(8098, 3017, 13098),
(8099, 3017, 13099),
(8100, 3017, 13100);

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
