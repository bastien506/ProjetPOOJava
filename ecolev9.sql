-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 30 mai 2019 à 12:02
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
(2101, 'Peu mieux faire.', 11001, 8301);

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
) ENGINE=InnoDB AUTO_INCREMENT=3023 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`ID_classe`, `Nom`, `ID_niveau`, `ID_anneescolaire`) VALUES
(3001, 'A', 9001, 1001),
(3002, 'B', 9001, 1001),
(3003, 'C', 9001, 1001),
(3004, 'A', 9002, 1001),
(3005, 'B', 9002, 1001),
(3011, 'A', 9003, 1001),
(3012, 'B', 9003, 1001),
(3013, 'S', 9007, 1001),
(3014, 'General', 9005, 1001),
(3015, 'Pro', 9005, 1001),
(3016, 'ES', 9006, 1001),
(3017, 'S', 9006, 1001),
(3018, 'L', 9006, 1001),
(3019, 'S', 9007, 1001),
(3020, 'B', 9004, 1001),
(3021, 'A', 9004, 1001),
(3022, 'L', 9007, 1001);

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
(4008, 'ne doit pas se decourager', 2101, 6008),
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
) ENGINE=InnoDB AUTO_INCREMENT=5013 DEFAULT CHARSET=latin1;

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
(5012, 'Histoire');

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

DROP TABLE IF EXISTS `enseignant`;
CREATE TABLE IF NOT EXISTS `enseignant` (
  `ID_enseignant` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_enseignant`)
) ENGINE=InnoDB AUTO_INCREMENT=12007 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `enseignant`
--

INSERT INTO `enseignant` (`ID_enseignant`, `Nom`, `Prenom`) VALUES
(12001, 'Bruna ', 'Charlotte'),
(12002, 'Borell', 'Axell'),
(12003, 'Goupil', 'Pierre'),
(12004, 'Carmona', 'Paula'),
(12005, 'Putz', 'Dimitri'),
(12006, 'Duderan', 'Pierre');

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
) ENGINE=InnoDB AUTO_INCREMENT=6011 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `enseignement`
--

INSERT INTO `enseignement` (`ID_enseignement`, `ID_classe`, `ID_discipline`, `ID_enseignant`) VALUES
(6001, 3019, 5001, 12001),
(6002, 3019, 5002, 12002),
(6003, 3019, 5003, 12003),
(6004, 3003, 5003, 12003),
(6005, 3018, 5002, 12005),
(6006, 3015, 5002, 12006),
(6007, 3020, 5002, 12006),
(6008, 3014, 5005, 12006),
(6009, 3019, 5004, 12001),
(6010, 3017, 5004, 12002);

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE IF NOT EXISTS `etudiant` (
  `ID_etudiant` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_etudiant`)
) ENGINE=InnoDB AUTO_INCREMENT=13102 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`ID_etudiant`, `Nom`, `Prenom`) VALUES
(13001, 'Borie', 'Alice'),
(13003, 'Le_guern', 'Bastien'),
(13004, 'Marchand', 'Jules'),
(13005, 'Roemer', 'Faustine'),
(13006, 'Lashermes', 'Cecile'),
(13007, 'Cesarini', 'Rachelle'),
(13008, 'Logan ', 'Paul'),
(13009, 'Venuti', 'Thibault'),
(13010, 'Ontario', 'Vincent'),
(13011, 'Dupond', 'Pierre'),
(13012, 'Lamarc', 'Michel'),
(13013, 'Dupuis', 'Paul'),
(13014, 'Dragin', 'Constantin'),
(13015, 'Torbal', 'Etienne'),
(13016, 'Klark', 'Emilie'),
(13017, 'Azar', 'Louis'),
(13018, 'Adibu', 'Mohamed'),
(13019, 'Mercier', 'Adrien'),
(13020, 'Rebaud', 'Margaux'),
(13021, 'Sanchez', 'Pedro'),
(13022, 'Mendossa', 'Pedro'),
(13023, 'Frattachi', 'Amaia'),
(13024, 'Fracchia', 'Shannon'),
(13025, 'Sestier', 'Charlotte'),
(13026, 'Seree', 'Thomas'),
(13027, 'Nevado', 'Marine'),
(13028, 'Poplimont', 'Lucas'),
(13029, 'Chen', 'Thibault'),
(13030, 'Witz ', 'Theo '),
(13031, 'Sinclair', 'Anne'),
(13032, 'Roberts', 'Margot'),
(13033, 'Vanin', 'Florian'),
(13034, 'Motte', 'Jean Baptiste'),
(13035, 'Lecause', 'Lucas'),
(13036, 'Perrier', 'Jean '),
(13037, 'Chiez', 'Julien'),
(13038, 'Natlio', 'Nathan'),
(13039, 'Xilouz', 'Olivier'),
(13040, 'Detzi', 'Lorenzo'),
(13041, 'Ethilp', 'Tatiana'),
(13042, 'Lajeune', 'Myriam'),
(13043, 'Jourdan', 'Michele'),
(13044, 'Paoli', 'Alain'),
(13045, 'Paoli', 'Claude'),
(13046, 'McQueen', 'Alexander'),
(13047, 'Awarel', 'Tyfannie'),
(13048, 'Trouve', 'Jade'),
(13049, 'Greko', 'Jade'),
(13050, 'Barthe', 'Murielle'),
(13051, 'Atlana', 'Stellie'),
(13052, 'Oliwav', 'Daneel'),
(13053, 'Parfait', 'Alain'),
(13054, 'Bros', 'Mario'),
(13055, 'Bros', 'Luigi'),
(13056, 'Teachy', 'Xavier'),
(13057, 'Rico', 'Johnny'),
(13058, 'Ilbanez', 'Carmen'),
(13059, 'Flores', 'Dizzy'),
(13060, 'Jenkins', 'Carl'),
(13061, 'Connor', 'Sarah'),
(13062, 'Connor', 'John'),
(13063, 'Angel', 'Nicolas'),
(13064, 'Skinner', 'Simon'),
(13065, 'King', 'Gary'),
(13066, 'Pilgrim', 'Scott'),
(13067, 'Rambo', 'John'),
(13068, 'Joestar', 'Jonathan'),
(13069, 'Joestar', 'Joseph'),
(13070, 'Anderson', 'Thomas'),
(13071, 'Rippley', 'Helene'),
(13072, 'McClane', 'John'),
(13073, 'Durden', 'Tyler'),
(13074, 'McFly', 'Marty'),
(13075, 'Burgundy ', 'Ron'),
(13076, 'Venkman', 'Peter'),
(13077, 'Balboa', 'Rocky'),
(13078, 'Bueller', 'Ferris'),
(13079, 'Deckard', 'Rick'),
(13080, 'Riley', 'Shaun'),
(13081, 'Poulain', 'Amelie'),
(13082, 'Foley', 'Axel'),
(13083, 'Darko', 'Donnie'),
(13084, 'Drebin', 'Frank'),
(13085, 'Bates', 'Norman'),
(13086, 'Doe', 'John'),
(13087, 'Don', 'Jane'),
(13088, 'Smithee', 'Alan'),
(13089, 'Perrez', 'Alex'),
(13090, 'Jil', 'Sandra'),
(13091, 'Jil', 'Sasha'),
(13092, 'Ketchum', 'Sasha'),
(13093, 'Sun', 'Esteban'),
(13094, 'Kent', 'Clark'),
(13095, 'Parker', 'Peter'),
(13096, 'Wayne', 'Bruce'),
(13097, 'Wensten', 'Michael'),
(13098, 'Glenanne', 'Fiona'),
(13099, 'Wensten', 'Madeline'),
(13100, 'Burke', 'Elizabeth'),
(13101, 'Caffrey', 'Neal');

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
) ENGINE=InnoDB AUTO_INCREMENT=8302 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`ID_inscription`, `ID_classe`, `ID_etudiant`) VALUES
(8003, 3019, 13003),
(8006, 3017, 13006),
(8007, 3020, 13005),
(8008, 3016, 13008),
(8009, 3018, 13009),
(8010, 3017, 13010),
(8301, 3019, 13001);

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
