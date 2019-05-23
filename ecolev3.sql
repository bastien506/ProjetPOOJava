-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 23 mai 2019 à 16:29
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
  `Login` int(11) NOT NULL,
  `Mdp` varchar(255) NOT NULL,
  PRIMARY KEY (`Login`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`Login`, `Mdp`) VALUES
(17000, 'ece1998'),
(17001, 'ece'),
(17002, 'bddece');

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
(2002, 'Assez bien ', 11001, 8002),
(2003, 'Parle trop souvent ..', 11001, 8003),
(2004, 'Passable', 11001, 8004),
(2005, 'Felicitation du Jury !!', 11001, 8005),
(2006, 'Excellent', 11001, 8006),
(2007, '.', 11001, 8006),
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
(3001, 'siexemeA', 9006, 1001),
(3002, 'siexemeB', 9006, 1001),
(3003, 'sixiemeC', 9006, 1001),
(3004, 'cinquiemeA', 9007, 1001),
(3005, 'cinquiemeB', 9007, 1001),
(3006, 'CP', 9001, 1001),
(3007, 'CE1', 9002, 1001),
(3008, 'CE2', 9003, 1001),
(3009, 'CM1', 9004, 1001),
(3010, 'CM2', 9005, 1001),
(3011, 'quatriemeA', 9008, 1001),
(3012, 'quatriemeB', 9008, 1001),
(3013, 'terminaleES', 9012, 1001),
(3014, 'secondeGeneral', 9010, 1001),
(3015, 'secondePro', 9010, 1001),
(3016, 'premiereES', 9011, 1001),
(3017, 'premiereS', 9011, 1001),
(3018, 'premiereL', 9011, 1001),
(3019, 'terminaleS', 9012, 1001),
(3022, 'troisiemeB', 9009, 1001),
(3021, 'troisiemeA', 9009, 1001),
(3020, 'terminaleL', 9012, 1001);

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
) ENGINE=MyISAM AUTO_INCREMENT=4004 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `detailbulletin`
--

INSERT INTO `detailbulletin` (`ID_detailbulletin`, `Appreciation`, `ID_bulletin`, `ID_enseignement`) VALUES
(4001, 'En progres ', 2001, 6001),
(4002, 'Poursuivez vos efforts ', 2001, 6002),
(4003, 'En progression', 2001, 6003);

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
-- Structure de la table `enseignement`
--

DROP TABLE IF EXISTS `enseignement`;
CREATE TABLE IF NOT EXISTS `enseignement` (
  `ID_enseignement` int(11) NOT NULL AUTO_INCREMENT,
  `ID_classe` int(11) NOT NULL,
  `ID_discipline` int(11) NOT NULL,
  `ID_personne` int(11) NOT NULL,
  PRIMARY KEY (`ID_enseignement`)
) ENGINE=MyISAM AUTO_INCREMENT=6011 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `enseignement`
--

INSERT INTO `enseignement` (`ID_enseignement`, `ID_classe`, `ID_discipline`, `ID_personne`) VALUES
(6001, 3001, 5001, 10002),
(6002, 3002, 5001, 10002),
(6003, 3003, 5001, 10002),
(6004, 3014, 5002, 10009),
(6005, 3018, 5002, 10009),
(6006, 3015, 5002, 10009),
(6007, 3020, 5002, 10009),
(6008, 3014, 5005, 10006),
(6009, 3019, 5004, 10007),
(6010, 3017, 5004, 10007);

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
) ENGINE=MyISAM AUTO_INCREMENT=7003 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `evaluation`
--

INSERT INTO `evaluation` (`ID_evaluation`, `Appreciation`, `Note`, `ID_detailbulletin`) VALUES
(7001, 'Excellent', 19, 4001),
(7002, 'Passable', 16, 4001);

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

DROP TABLE IF EXISTS `inscription`;
CREATE TABLE IF NOT EXISTS `inscription` (
  `ID_inscription` int(11) NOT NULL AUTO_INCREMENT,
  `ID_classe` int(11) NOT NULL,
  `ID_personne` int(11) NOT NULL,
  PRIMARY KEY (`ID_inscription`)
) ENGINE=MyISAM AUTO_INCREMENT=8012 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`ID_inscription`, `ID_classe`, `ID_personne`) VALUES
(8001, 3019, 10003),
(8002, 3019, 10004),
(8003, 3019, 10005),
(8004, 3006, 10010),
(8005, 3010, 10011),
(8006, 3017, 10012),
(8007, 3020, 10013),
(8008, 3016, 10014),
(8009, 3018, 10015),
(8010, 3017, 10016),
(8011, 3015, 10017);

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
-- Structure de la table `personne`
--

DROP TABLE IF EXISTS `personne`;
CREATE TABLE IF NOT EXISTS `personne` (
  `ID_personne` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_personne`)
) ENGINE=MyISAM AUTO_INCREMENT=12018 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`ID_personne`, `Nom`, `Prenom`, `Type`) VALUES
(12001, 'Bruna', 'Charlotte', 'Enseignant'),
(12002, 'Borell', 'Axelle', 'Enseignant'),
(10003, 'Borie', 'Alice', 'Etudiant'),
(10004, 'Le-guern', 'Bastien', 'Etudiant'),
(10005, 'Lajeune', 'Gaetan', 'Etudiant'),
(12006, 'Goupil', 'Albert', 'Enseignant'),
(12007, 'Carmona', 'Paula', 'Enseignant'),
(12008, 'Putz', 'Dimitri', 'Enseignant'),
(12009, 'Duderan', 'Pierre', 'Enseignant'),
(10010, 'Logan', 'Paul', 'Etudiant'),
(10011, 'Ontario', 'Vincent', 'Etudiant'),
(10012, 'Lashermes', 'Cecile', 'Etudiant'),
(10013, 'Roemer', 'Faustine', 'Etudiant'),
(10014, 'Matthieu', 'Venuti', 'Etudiant'),
(10015, 'Cesarini', 'Rachel', 'Etudiant'),
(10016, 'Paoli', 'Fabien', 'Etudiant'),
(10017, 'Marchand', 'Jules', 'Etudiant');

-- --------------------------------------------------------

--
-- Structure de la table `trimestre`
--

DROP TABLE IF EXISTS `trimestre`;
CREATE TABLE IF NOT EXISTS `trimestre` (
  `ID_trimestre` int(11) NOT NULL AUTO_INCREMENT,
  `Numero` int(11) NOT NULL,
  `Debut` date NOT NULL,
  `Fin` date NOT NULL,
  `ID_anneescolaire` int(11) NOT NULL,
  PRIMARY KEY (`ID_trimestre`)
) ENGINE=MyISAM AUTO_INCREMENT=11007 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `trimestre`
--

INSERT INTO `trimestre` (`ID_trimestre`, `Numero`, `Debut`, `Fin`, `ID_anneescolaire`) VALUES
(11001, 1, '2018-09-10', '2018-12-15', 1001),
(11002, 2, '2019-01-07', '2019-03-01', 1001),
(11003, 3, '2019-03-04', '2019-06-07', 1001),
(11004, 1, '2017-09-02', '2017-12-20', 1002),
(11005, 2, '2018-01-01', '2018-03-10', 1002),
(11006, 3, '2018-03-11', '2018-06-19', 1002);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
