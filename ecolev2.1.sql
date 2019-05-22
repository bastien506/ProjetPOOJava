-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 22 mai 2019 à 22:04
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
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=1013 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `anneescolaire`
--

INSERT INTO `anneescolaire` (`ID`) VALUES
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
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Appreciation` varchar(255) NOT NULL,
  `ID_trimestre` int(11) NOT NULL,
  `ID_inscription` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

DROP TABLE IF EXISTS `classe`;
CREATE TABLE IF NOT EXISTS `classe` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) NOT NULL,
  `ID_niveau` int(11) NOT NULL,
  `ID_anneescolaire` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3044 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`ID`, `Nom`, `ID_niveau`, `ID_anneescolaire`) VALUES
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
  `ID` int(11) NOT NULL,
  `Appreciation` varchar(255) NOT NULL,
  `ID_bulletin` int(11) NOT NULL,
  `ID_enseignement` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `discipline`
--

DROP TABLE IF EXISTS `discipline`;
CREATE TABLE IF NOT EXISTS `discipline` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5013 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `discipline`
--

INSERT INTO `discipline` (`ID`, `Nom`) VALUES
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
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_classe` int(11) NOT NULL,
  `ID_discipline` int(11) NOT NULL,
  `ID_personne` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6011 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `enseignement`
--

INSERT INTO `enseignement` (`ID`, `ID_classe`, `ID_discipline`, `ID_personne`) VALUES
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
  `ID` int(11) NOT NULL,
  `Appreciation` varchar(255) NOT NULL,
  `Note` int(11) NOT NULL,
  `ID_bulletin` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

DROP TABLE IF EXISTS `inscription`;
CREATE TABLE IF NOT EXISTS `inscription` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_classe` int(11) NOT NULL,
  `ID_personne` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=8012 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`ID`, `ID_classe`, `ID_personne`) VALUES
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
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11013 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `niveau`
--

INSERT INTO `niveau` (`ID`, `Nom`) VALUES
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
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(255) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12018 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`ID`, `Nom`, `Prenom`, `Type`) VALUES
(10001, 'Bruna', 'Charlotte', 'Enseignant'),
(10002, 'Borell', 'Axelle', 'Enseignant'),
(10003, 'Borie', 'Alice', 'Etudiant'),
(10004, 'Le-guern', 'Bastien', 'Etudiant'),
(10005, 'Lajeune', 'Gaetan', 'Etudiant'),
(10006, 'Goupil', 'Albert', 'Enseignant'),
(10007, 'Carmona', 'Paula', 'Enseignant'),
(10008, 'Putz', 'Dimitri', 'Enseignant'),
(10009, 'Duderan', 'Pierre', 'Enseignant'),
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
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Numero` int(11) NOT NULL,
  `Debut` date NOT NULL,
  `Fin` date NOT NULL,
  `ID_anneescolaire` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11007 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `trimestre`
--

INSERT INTO `trimestre` (`ID`, `Numero`, `Debut`, `Fin`, `ID_anneescolaire`) VALUES
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
