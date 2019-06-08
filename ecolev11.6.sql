-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 08 juin 2019 à 12:28
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
) ENGINE=InnoDB AUTO_INCREMENT=2250 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bulletin`
--

INSERT INTO `bulletin` (`ID_bulletin`, `Appreciation`, `ID_trimestre`, `ID_inscription`) VALUES
(2001, 'Assez bien', 11001, 8001),
(2002, 'Peu mieux faire.', 11002, 8001),
(2003, '', 11003, 8001),
(2004, '', 11001, 8002),
(2005, '', 11002, 8002),
(2006, '', 11003, 8002),
(2007, '', 11001, 8003),
(2008, '', 11002, 8003),
(2009, '', 11003, 8003),
(2010, 'Continue comme ça.', 11001, 8004),
(2011, 'Tres bien', 11002, 8004),
(2012, 'Assez bien', 11003, 8004),
(2013, '', 11001, 8005),
(2014, 'Peu mieux faire.', 11002, 8005),
(2015, '', 11003, 8005),
(2016, '', 11001, 8006),
(2017, '', 11002, 8006),
(2018, 'Excellent', 11003, 8006),
(2019, '.', 11001, 8007),
(2020, 'Peu mieux faire.', 11002, 8007),
(2021, '', 11003, 8007),
(2022, '', 11001, 8008),
(2023, '', 11002, 8008),
(2024, '', 11003, 8008),
(2025, '', 11001, 8009),
(2026, '', 11002, 8009),
(2027, 'Assez bien ', 11003, 8009),
(2028, 'Excellent', 11001, 8010),
(2029, '.', 11002, 8010),
(2030, 'Continue comme ça.', 11003, 8010),
(2031, 'Assez bien', 11001, 8011),
(2032, 'Tres bien', 11002, 8011),
(2033, 'Peu mieux faire.', 11003, 8011),
(2034, '', 11001, 8012),
(2035, '', 11002, 8012),
(2036, '', 11003, 8012),
(2037, '', 11001, 8013),
(2038, '', 11002, 8013),
(2039, '', 11003, 8013),
(2040, 'Assez bien ', 11001, 8014),
(2041, 'Assez bien', 11002, 8014),
(2042, 'Tres bien', 11003, 8014),
(2043, '', 11001, 8015),
(2044, '', 11002, 8015),
(2045, 'Assez bien', 11003, 8015),
(2046, 'Peu mieux faire.', 11001, 8016),
(2047, '', 11002, 8016),
(2048, '', 11003, 8016),
(2049, '', 11001, 8017),
(2050, '', 11002, 8017),
(2051, '', 11003, 8017),
(2052, '', 11001, 8018),
(2053, '', 11002, 8018),
(2054, 'Continue comme ça.', 11003, 8018),
(2055, 'Tres bien', 11001, 8019),
(2056, 'Assez bien', 11002, 8019),
(2057, '', 11003, 8019),
(2058, 'Peu mieux faire.', 11001, 8020),
(2059, '', 11002, 8020),
(2060, '', 11003, 8020),
(2061, '', 11001, 8021),
(2062, 'Excellent', 11002, 8021),
(2063, '.', 11003, 8021),
(2064, 'Peu mieux faire.', 11001, 8022),
(2065, '', 11002, 8022),
(2066, '', 11003, 8022),
(2067, '', 11001, 8023),
(2068, '', 11002, 8023),
(2069, '', 11003, 8023),
(2070, '', 11001, 8024),
(2071, 'Assez bien ', 11002, 8024),
(2072, 'Excellent', 11003, 8024),
(2073, '.', 11001, 8025),
(2074, 'Continue comme ça.', 11002, 8025),
(2075, 'Assez bien', 11003, 8025),
(2076, 'Tres bien', 11001, 8026),
(2077, 'Peu mieux faire.', 11002, 8026),
(2078, '', 11003, 8026),
(2079, '', 11001, 8027),
(2080, '', 11002, 8027),
(2081, '', 11003, 8027),
(2082, '', 11001, 8028),
(2083, '', 11002, 8028),
(2084, 'Assez bien ', 11003, 8028),
(2085, 'Assez bien', 11001, 8029),
(2086, 'Tres bien', 11002, 8029),
(2087, '', 11003, 8029),
(2088, '', 11001, 8030),
(2089, 'Assez bien', 11002, 8030),
(2090, 'Peu mieux faire.', 11003, 8030),
(2091, '', 11001, 8031),
(2092, '', 11002, 8031),
(2093, '', 11003, 8031),
(2094, '', 11001, 8032),
(2095, '', 11002, 8032),
(2096, '', 11003, 8032),
(2097, '', 11001, 8033),
(2098, 'Continue comme ça.', 11002, 8033),
(2099, 'Tres bien', 11003, 8033),
(2100, 'Assez bien', 11001, 8034),
(2101, '', 11002, 8034),
(2102, 'Peu mieux faire.', 11003, 8034),
(2103, '', 11001, 8035),
(2104, '', 11002, 8035),
(2105, '', 11003, 8035),
(2106, 'Excellent', 11001, 8036),
(2107, '.', 11002, 8036),
(2108, 'Peu mieux faire.', 11003, 8036),
(2109, '', 11001, 8037),
(2110, '', 11002, 8037),
(2111, '', 11003, 8037),
(2112, '', 11001, 8038),
(2113, '', 11002, 8038),
(2114, '', 11003, 8038),
(2115, 'Assez bien ', 11001, 8039),
(2116, 'Excellent', 11002, 8039),
(2117, '.', 11003, 8039),
(2118, 'Continue comme ça.', 11001, 8040),
(2119, 'Assez bien', 11002, 8040),
(2120, 'Tres bien', 11003, 8040),
(2121, 'Peu mieux faire.', 11004, 8041),
(2122, '', 11005, 8041),
(2123, '', 11006, 8041),
(2124, '', 11004, 8042),
(2125, '', 11005, 8042),
(2126, '', 11006, 8042),
(2127, '', 11004, 8043),
(2128, 'Assez bien ', 11005, 8043),
(2129, 'Assez bien', 11006, 8043),
(2130, 'Tres bien', 11004, 8044),
(2131, '', 11005, 8044),
(2132, '', 11006, 8044),
(2133, 'Assez bien', 11004, 8045),
(2134, 'Peu mieux faire.', 11005, 8045),
(2135, '', 11006, 8045),
(2136, '', 11004, 8046),
(2137, '', 11005, 8046),
(2138, '', 11006, 8046),
(2139, '', 11004, 8047),
(2140, '', 11005, 8047),
(2141, '', 11006, 8047),
(2142, 'Continue comme ça.', 11004, 8048),
(2143, 'Tres bien', 11005, 8048),
(2144, 'Assez bien', 11006, 8048),
(2145, '', 11004, 8049),
(2146, 'Peu mieux faire.', 11005, 8049),
(2147, '', 11006, 8049),
(2148, '', 11004, 8050),
(2149, '', 11005, 8050),
(2150, 'Excellent', 11006, 8050);

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
) ENGINE=InnoDB AUTO_INCREMENT=4489 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `detailbulletin`
--

INSERT INTO `detailbulletin` (`ID_detailbulletin`, `Appreciation`, `ID_bulletin`, `ID_enseignement`) VALUES
(4001, '', 2001, 6001),
(4002, '', 2001, 6009),
(4003, '', 2001, 6017),
(4004, '', 2001, 6027),
(4005, '', 2001, 6032),
(4006, '', 2001, 6035),
(4007, '', 2001, 6037),
(4008, '', 2001, 6046),
(4009, '', 2001, 6056),
(4010, '', 2001, 6061),
(4011, '', 2001, 6071),
(4012, '', 2002, 6001),
(4013, '', 2002, 6009),
(4014, '', 2002, 6017),
(4015, '', 2002, 6027),
(4016, '', 2002, 6032),
(4017, '', 2002, 6035),
(4018, '', 2002, 6037),
(4019, '', 2002, 6046),
(4020, '', 2002, 6056),
(4021, '', 2002, 6061),
(4022, '', 2002, 6071),
(4023, '', 2003, 6001),
(4024, '', 2003, 6009),
(4025, '', 2003, 6017),
(4026, '', 2003, 6027),
(4027, '', 2003, 6032),
(4028, '', 2003, 6035),
(4029, '', 2003, 6037),
(4030, '', 2003, 6046),
(4031, '', 2003, 6056),
(4032, '', 2003, 6061),
(4033, '', 2003, 6071),
(4213, '', 2004, 6001),
(4214, '', 2004, 6009),
(4215, '', 2004, 6017),
(4216, '', 2004, 6027),
(4217, '', 2004, 6032),
(4218, '', 2004, 6035),
(4219, '', 2004, 6037),
(4220, '', 2004, 6046),
(4221, '', 2004, 6056),
(4222, '', 2004, 6061),
(4223, '', 2004, 6071),
(4224, '', 2005, 6001),
(4225, '', 2005, 6009),
(4226, '', 2005, 6017),
(4227, '', 2005, 6027),
(4228, '', 2005, 6032),
(4229, '', 2005, 6035),
(4230, '', 2005, 6037),
(4231, '', 2005, 6046),
(4232, '', 2005, 6056),
(4233, '', 2005, 6061),
(4234, '', 2005, 6071),
(4235, '', 2006, 6001),
(4236, '', 2006, 6009),
(4237, '', 2006, 6017),
(4238, '', 2006, 6027),
(4239, '', 2006, 6032),
(4240, '', 2006, 6035),
(4241, '', 2006, 6037),
(4242, '', 2006, 6046),
(4243, '', 2006, 6056),
(4244, '', 2006, 6061),
(4245, '', 2006, 6071),
(4246, '', 2007, 6001),
(4247, '', 2007, 6009),
(4248, '', 2007, 6017),
(4249, '', 2007, 6027),
(4250, '', 2007, 6032),
(4251, '', 2007, 6035),
(4252, '', 2007, 6037),
(4253, '', 2007, 6046),
(4254, '', 2007, 6056),
(4255, '', 2007, 6061),
(4256, '', 2007, 6071),
(4257, '', 2008, 6001),
(4258, '', 2008, 6009),
(4259, '', 2008, 6017),
(4260, '', 2008, 6027),
(4261, '', 2008, 6032),
(4262, '', 2008, 6035),
(4263, '', 2008, 6037),
(4264, '', 2008, 6046),
(4265, '', 2008, 6056),
(4266, '', 2008, 6061),
(4267, '', 2008, 6071),
(4268, '', 2009, 6001),
(4269, '', 2009, 6009),
(4270, '', 2009, 6017),
(4271, '', 2009, 6027),
(4272, '', 2009, 6032),
(4273, '', 2009, 6035),
(4274, '', 2009, 6037),
(4275, '', 2009, 6046),
(4276, '', 2009, 6056),
(4277, '', 2009, 6061),
(4278, '', 2009, 6071),
(4279, '', 2010, 6001),
(4280, '', 2010, 6009),
(4281, '', 2010, 6017),
(4282, '', 2010, 6027),
(4283, '', 2010, 6032),
(4284, '', 2010, 6035),
(4285, '', 2010, 6037),
(4286, '', 2010, 6046),
(4287, '', 2010, 6056),
(4288, '', 2010, 6061),
(4289, '', 2010, 6071),
(4290, '', 2011, 6001),
(4291, '', 2011, 6009),
(4292, '', 2011, 6017),
(4293, '', 2011, 6027),
(4294, '', 2011, 6032),
(4295, '', 2011, 6035),
(4296, '', 2011, 6037),
(4297, '', 2011, 6046),
(4298, '', 2011, 6056),
(4299, '', 2011, 6061),
(4300, '', 2011, 6071),
(4301, '', 2012, 6001),
(4302, '', 2012, 6009),
(4303, '', 2012, 6017),
(4304, '', 2012, 6027),
(4305, '', 2012, 6032),
(4306, '', 2012, 6035),
(4307, '', 2012, 6037),
(4308, '', 2012, 6046),
(4309, '', 2012, 6056),
(4310, '', 2012, 6061),
(4311, '', 2012, 6071),
(4312, '', 2013, 6002),
(4313, '', 2013, 6010),
(4314, '', 2013, 6018),
(4315, '', 2013, 6028),
(4316, '', 2013, 6033),
(4317, '', 2013, 6036),
(4318, '', 2013, 6038),
(4319, '', 2013, 6047),
(4320, '', 2013, 6057),
(4321, '', 2013, 6062),
(4322, '', 2013, 6072),
(4323, '', 2014, 6002),
(4324, '', 2014, 6010),
(4325, '', 2014, 6018),
(4326, '', 2014, 6028),
(4327, '', 2014, 6033),
(4328, '', 2014, 6036),
(4329, '', 2014, 6038),
(4330, '', 2014, 6047),
(4331, '', 2014, 6057),
(4332, '', 2014, 6062),
(4333, '', 2014, 6072),
(4334, '', 2015, 6002),
(4335, '', 2015, 6010),
(4336, '', 2015, 6018),
(4337, '', 2015, 6028),
(4338, '', 2015, 6033),
(4339, '', 2015, 6036),
(4340, '', 2015, 6038),
(4341, '', 2015, 6047),
(4342, '', 2015, 6057),
(4343, '', 2015, 6062),
(4344, '', 2015, 6072),
(4345, '', 2016, 6002),
(4346, '', 2016, 6010),
(4347, '', 2016, 6018),
(4348, '', 2016, 6028),
(4349, '', 2016, 6033),
(4350, '', 2016, 6036),
(4351, '', 2016, 6038),
(4352, '', 2016, 6047),
(4353, '', 2016, 6057),
(4354, '', 2016, 6062),
(4355, '', 2016, 6072),
(4356, '', 2017, 6071),
(4357, '', 2017, 6002),
(4358, '', 2017, 6010),
(4359, '', 2017, 6018),
(4360, '', 2017, 6028),
(4361, '', 2017, 6033),
(4362, '', 2017, 6036),
(4363, '', 2017, 6038),
(4364, '', 2017, 6047),
(4365, '', 2017, 6057),
(4366, '', 2017, 6062),
(4367, '', 2017, 6072),
(4368, '', 2018, 6002),
(4369, '', 2018, 6010),
(4370, '', 2018, 6018),
(4371, '', 2018, 6028),
(4372, '', 2018, 6033),
(4373, '', 2018, 6036),
(4374, '', 2018, 6038),
(4375, '', 2018, 6047),
(4376, '', 2018, 6057),
(4377, '', 2018, 6062),
(4378, '', 2018, 6072),
(4379, '', 2019, 6002),
(4380, '', 2019, 6010),
(4381, '', 2019, 6018),
(4382, '', 2019, 6028),
(4383, '', 2019, 6033),
(4384, '', 2019, 6036),
(4385, '', 2019, 6038),
(4386, '', 2019, 6047),
(4387, '', 2019, 6057),
(4388, '', 2019, 6062),
(4389, '', 2019, 6072),
(4390, '', 2020, 6002),
(4391, '', 2020, 6010),
(4392, '', 2020, 6018),
(4393, '', 2020, 6028),
(4394, '', 2020, 6033),
(4395, '', 2020, 6036),
(4396, '', 2020, 6038),
(4397, '', 2020, 6047),
(4398, '', 2020, 6057),
(4399, '', 2020, 6062),
(4400, '', 2020, 6072),
(4401, '', 2021, 6002),
(4402, '', 2021, 6010),
(4403, '', 2021, 6018),
(4404, '', 2021, 6028),
(4405, '', 2021, 6033),
(4406, '', 2021, 6036),
(4407, '', 2021, 6038),
(4408, '', 2021, 6047),
(4409, '', 2021, 6057),
(4410, '', 2021, 6062),
(4411, '', 2021, 6072),
(4412, '', 2022, 6002),
(4413, '', 2022, 6010),
(4414, '', 2022, 6018),
(4415, '', 2022, 6028),
(4416, '', 2022, 6033),
(4417, '', 2022, 6036),
(4418, '', 2022, 6038),
(4419, '', 2022, 6047),
(4420, '', 2022, 6057),
(4421, '', 2022, 6062),
(4422, '', 2022, 6072),
(4423, '', 2023, 6071),
(4424, '', 2023, 6002),
(4425, '', 2023, 6010),
(4426, '', 2023, 6018),
(4427, '', 2023, 6028),
(4428, '', 2023, 6033),
(4429, '', 2023, 6036),
(4430, '', 2023, 6038),
(4431, '', 2023, 6047),
(4432, '', 2023, 6057),
(4433, '', 2023, 6062),
(4434, '', 2023, 6072),
(4435, '', 2024, 6002),
(4436, '', 2024, 6010),
(4437, '', 2024, 6018),
(4438, '', 2024, 6028),
(4439, '', 2024, 6033),
(4440, '', 2024, 6036),
(4441, '', 2024, 6038),
(4442, '', 2024, 6047),
(4443, '', 2024, 6057),
(4444, '', 2024, 6062),
(4445, '', 2024, 6072),
(4468, '', 2025, 6003),
(4469, '', 2025, 6011),
(4470, '', 2025, 6019),
(4471, '', 2025, 6034),
(4472, '', 2025, 6055),
(4473, '', 2025, 6063),
(4474, '', 2025, 6073),
(4475, '', 2026, 6003),
(4476, '', 2026, 6011),
(4477, '', 2026, 6019),
(4478, '', 2026, 6034),
(4479, '', 2026, 6055),
(4480, '', 2026, 6063),
(4481, '', 2026, 6073),
(4482, '', 2027, 6003),
(4483, '', 2027, 6011),
(4484, '', 2027, 6019),
(4485, '', 2027, 6034),
(4486, '', 2027, 6055),
(4487, '', 2027, 6063),
(4488, '', 2027, 6073);

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
(7116, '', 9, 4001),
(7117, 'Excellent', 9, 4002),
(7118, 'Passable', 18, 4002),
(7119, '', 16, 4003),
(7120, '', 19, 4004),
(7121, 'Excellent', 11, 4004),
(7122, 'Passable', 16, 4005),
(7123, '', 13, 4005),
(7124, '', 10, 4006),
(7125, 'Excellent', 11, 4006),
(7129, '', 13, 4007),
(7130, '', 14, 4007),
(7131, '', 16, 4007);

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
