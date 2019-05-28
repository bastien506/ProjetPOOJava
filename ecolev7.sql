-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 28 mai 2019 à 21:17
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
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `ID` varchar(255) NOT NULL,
  `Mdp` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`ID`, `Mdp`) VALUES
('17000', 'ece1998');

-- --------------------------------------------------------

--
-- Structure de la table `anneescolaire`
--

DROP TABLE IF EXISTS `anneescolaire`;
CREATE TABLE IF NOT EXISTS `anneescolaire` (
  `ID_anneescolaire` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID_anneescolaire`)
) ENGINE=MyISAM AUTO_INCREMENT=1013 DEFAULT CHARSET=latin1;

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
  PRIMARY KEY (`ID_bulletin`)
) ENGINE=MyISAM AUTO_INCREMENT=2013 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bulletin`
--

INSERT INTO `bulletin` (`ID_bulletin`, `Appreciation`, `ID_trimestre`, `ID_inscription`) VALUES
(2001, 'Peu mieux faire.', 11001, 8001),
(2002, 'Assez bien ', 11001, 8003),
(2003, 'Parle trop souvent ..', 11002, 8003),
(2004, 'Passable', 11001, 8004),
(2005, 'Felicitation du Jury !!', 11001, 8005),
(2006, 'Excellent', 11001, 8006),
(2007, '.', 11002, 8006),
(2008, 'Continue comme ça.', 11001, 8007),
(2009, 'Assez bien', 11001, 8008),
(2010, 'Tres bien', 11001, 8009),
(2011, 'Assez bien', 11001, 8010),
(2012, 'En amélioration', 11001, 8011);

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
  PRIMARY KEY (`ID_classe`)
) ENGINE=MyISAM AUTO_INCREMENT=3044 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`ID_classe`, `Nom`, `ID_niveau`, `ID_anneescolaire`) VALUES
(3001, 'A', 9006, 1001),
(3002, 'B', 9006, 1001),
(3003, 'C', 9006, 1001),
(3004, 'A', 9007, 1001),
(3005, 'B', 9007, 1001),
(3006, 'A', 9001, 1001),
(3007, 'A', 9002, 1001),
(3008, 'A', 9003, 1001),
(3009, 'A', 9004, 1001),
(3010, 'A', 9005, 1001),
(3011, 'A', 9008, 1001),
(3012, 'B', 9008, 1001),
(3013, 'S', 9012, 1001),
(3014, 'General', 9010, 1001),
(3015, 'Pro', 9010, 1001),
(3016, 'ES', 9011, 1001),
(3017, 'S', 9011, 1001),
(3018, 'L', 9011, 1001),
(3019, 'S', 9012, 1001),
(3020, 'B', 9009, 1001),
(3021, 'A', 9009, 1001),
(3022, 'L', 9012, 1001);

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
  PRIMARY KEY (`ID_detailbulletin`)
) ENGINE=MyISAM AUTO_INCREMENT=4011 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `detailbulletin`
--

INSERT INTO `detailbulletin` (`ID_detailbulletin`, `Appreciation`, `ID_bulletin`, `ID_enseignement`) VALUES
(4001, 'En progres ', 2001, 6001),
(4002, 'Poursuivez vos efforts ', 2002, 6002),
(4003, 'En progression', 2001, 6003),
(4004, 'Convenable', 2001, 6004),
(4005, 'mouais ..', 2001, 6005),
(4006, 'euh comment dire ', 2001, 6006),
(4007, 'peu mieux faire', 2001, 6007),
(4008, 'ne doit pas se decourager', 2001, 6008),
(4009, 'Convenable', 2002, 6005),
(4010, '', 2002, 6009);

-- --------------------------------------------------------

--
-- Structure de la table `discipline`
--

DROP TABLE IF EXISTS `discipline`;
CREATE TABLE IF NOT EXISTS `discipline` (
  `ID_discipline` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_discipline`)
) ENGINE=MyISAM AUTO_INCREMENT=5013 DEFAULT CHARSET=latin1;

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
(5012, 'Theologie');

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
) ENGINE=MyISAM AUTO_INCREMENT=12007 DEFAULT CHARSET=latin1;

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
  PRIMARY KEY (`ID_enseignement`)
) ENGINE=MyISAM AUTO_INCREMENT=6011 DEFAULT CHARSET=latin1;

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
(6007, 3020, 5002, 12007),
(6008, 3014, 5005, 12008),
(6009, 3019, 5004, 12009),
(6010, 3017, 5004, 12010);

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
) ENGINE=MyISAM AUTO_INCREMENT=13012 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`ID_etudiant`, `Nom`, `Prenom`) VALUES
(13001, 'Borie', 'Alice'),
(13002, 'Lajeune', 'Gaétan'),
(13003, 'Le_guern', 'Bastien'),
(13004, 'Marchand', 'Jules'),
(13005, 'Roemer', 'Faustine'),
(13006, 'Lashermes', 'Cecile'),
(13007, 'Cesarini', 'Rachelle'),
(13008, 'Logan ', 'Paul'),
(13009, 'Venuti', 'Thibault'),
(13010, 'Ontario', 'Vincent'),
(13011, 'Paoli', 'Fabien');

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
  PRIMARY KEY (`ID_evaluation`)
) ENGINE=MyISAM AUTO_INCREMENT=7019 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `evaluation`
--

INSERT INTO `evaluation` (`ID_evaluation`, `Appreciation`, `Note`, `ID_detailbulletin`) VALUES
(7001, 'Excellent', 19, 4001),
(7002, 'Passable', 16, 4001),
(7003, 'Bof bof', 8, 4003),
(7004, '.', 20, 4002),
(7005, '', 3, 4003),
(7006, '', 15, 4003),
(7007, '', 7, 4003),
(7008, '', 11, 4004),
(7009, '', 10, 4005),
(7010, '', 10, 4006),
(7011, '', 15, 4006),
(7012, '', 17, 4006),
(7013, '', 18, 4007),
(7014, 'on va dire ok ', 10, 4002),
(7015, 'mediocre !!!!', 0, 4002),
(7016, '', 15, 4009),
(7017, '', 20, 4010),
(7018, '', 0, 4010);

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

DROP TABLE IF EXISTS `inscription`;
CREATE TABLE IF NOT EXISTS `inscription` (
  `ID_inscription` int(11) NOT NULL AUTO_INCREMENT,
  `ID_classe` int(11) NOT NULL,
  `ID_etudiant` int(11) NOT NULL,
  PRIMARY KEY (`ID_inscription`)
) ENGINE=MyISAM AUTO_INCREMENT=8012 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`ID_inscription`, `ID_classe`, `ID_etudiant`) VALUES
(8001, 3019, 13001),
(8002, 3019, 13002),
(8003, 3019, 13003),
(8004, 3006, 13004),
(8005, 3010, 13005),
(8006, 3017, 13006),
(8007, 3020, 13007),
(8008, 3016, 13008),
(8009, 3018, 13009),
(8010, 3017, 13010),
(8011, 3015, 13011);

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

DROP TABLE IF EXISTS `niveau`;
CREATE TABLE IF NOT EXISTS `niveau` (
  `ID_niveau` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_niveau`)
) ENGINE=MyISAM AUTO_INCREMENT=11013 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `niveau`
--

INSERT INTO `niveau` (`ID_niveau`, `Nom`) VALUES
(9001, 'CP'),
(9002, 'CE1'),
(9003, 'CE2'),
(9004, 'CM1'),
(9005, 'CM2'),
(9006, 'sixieme'),
(9007, 'cinquieme'),
(9008, 'quatrieme'),
(9009, 'troisieme'),
(9010, 'seconde'),
(9011, 'premiere '),
(9012, 'terminale');

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
  `Mois_fin` int(11) NOT NULL,
  `Annee_fin` int(11) NOT NULL,
  PRIMARY KEY (`ID_trimestre`)
) ENGINE=MyISAM AUTO_INCREMENT=11007 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `trimestre`
--

INSERT INTO `trimestre` (`ID_trimestre`, `Numero`, `ID_anneescolaire`, `Jour_Debut`, `Mois_Debut`, `Annee_Debut`, `Jour_Fin`, `Mois_fin`, `Annee_fin`) VALUES
(11001, 1, 1001, 10, 9, 2018, 15, 12, 2018),
(11002, 2, 1001, 7, 1, 2019, 1, 3, 2019),
(11003, 3, 1001, 4, 3, 2019, 7, 6, 2019),
(11004, 1, 1002, 2, 9, 2017, 20, 12, 2017),
(11005, 2, 1002, 1, 1, 2018, 10, 3, 2018),
(11006, 3, 1002, 11, 3, 2018, 19, 6, 2018);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
