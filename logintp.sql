-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 08 avr. 2019 à 18:39
-- Version du serveur :  10.1.37-MariaDB
-- Version de PHP :  7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `logintp`
--

-- --------------------------------------------------------

--
-- Structure de la table `account`
--

CREATE TABLE `account` (
  `username` varchar(20) NOT NULL,
  `pass` varchar(42) NOT NULL,
  `kind` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `account`
--

INSERT INTO `account` (`username`, `pass`, `kind`) VALUES
('adminSMI', 'b858cb282617fb0956d960215c8e84d1ccf909c6', 'Admin'),
('Abdo', 'b6589fc6ab0dc82cf12099d1c2d40ab994e8410c', 'Prof');

-- --------------------------------------------------------

--
-- Structure de la table `administrator`
--

CREATE TABLE `administrator` (
  `adminID` int(3) NOT NULL,
  `name` varchar(10) NOT NULL,
  `prenom` varchar(10) NOT NULL,
  `codeF` varchar(6) NOT NULL,
  `userName` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `administrator`
--

INSERT INTO `administrator` (`adminID`, `name`, `prenom`, `codeF`, `userName`) VALUES
(1, 'El Adnani', 'Mohamed', 'SMI', 'adminSMI');

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `codeC` varchar(6) NOT NULL,
  `codeF` varchar(6) NOT NULL,
  `semester` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`codeC`, `codeF`, `semester`) VALUES
('smi4', 'SMI', 4),
('smi6', 'SMI', 6);

-- --------------------------------------------------------

--
-- Structure de la table `filiere`
--

CREATE TABLE `filiere` (
  `codeF` varchar(6) NOT NULL,
  `nomF` varchar(40) NOT NULL,
  `Departement` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `filiere`
--

INSERT INTO `filiere` (`codeF`, `nomF`, `Departement`) VALUES
('SMA', 'Science Mathematiique Applique', 'Mathematique'),
('SMI', 'Sicence Mathematique et Informatique', 'Informatique'),
('SMP', 'Science de la Matiere Physique', 'Physique');

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE `module` (
  `codeM` varchar(5) NOT NULL,
  `nomM` varchar(30) NOT NULL,
  `matricule` int(11) NOT NULL,
  `codeC` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `module`
--

INSERT INTO `module` (`codeM`, `nomM`, `matricule`, `codeC`) VALUES
('ALG', 'Algorithme', 121, 'smi4'),
('CP', 'Compilation', 121, 'smi6'),
('ET2', 'Electricite 2', 703, 'smi4'),
('IA', 'Intelligence Artificielle', 354, 'smi6'),
('PC', 'Programmation en C', 121, 'smi4'),
('POO', 'Programmation Oriente Objet', 145, 'smi6'),
('RX', 'Reseaux', 263, 'smi4'),
('SE', 'Systeme d Exploitation', 354, 'smi4'),
('UML', 'UML', 263, 'smi6');

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE `note` (
  `CNE` int(11) NOT NULL,
  `codeM` varchar(5) NOT NULL,
  `note` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `note`
--

INSERT INTO `note` (`CNE`, `codeM`, `note`) VALUES
(1105424, 'ALG', 0),
(1105424, 'ET2', 0),
(1105424, 'PC', 0),
(1105424, 'RX', 0),
(1105424, 'SE', 0),
(1303091, 'ALG', 0),
(1303091, 'CP', 0),
(1303091, 'IA', 0),
(1303091, 'PC', 0),
(1303091, 'POO', 0),
(1303091, 'UML', 0),
(1447733, 'ALG', 0),
(1447733, 'CP', 4),
(1447733, 'IA', 0),
(1447733, 'POO', 0),
(1447733, 'UML', 0),
(1447751, 'CP', 0),
(1447751, 'IA', 0),
(1447751, 'POO', 0),
(1447751, 'UML', 0),
(1447754, 'ALG', 0),
(1447754, 'CP', 12),
(1447754, 'IA', 0),
(1447754, 'POO', 0),
(1447754, 'UML', 0),
(1447772, 'CP', 0),
(1447772, 'IA', 0),
(1447772, 'POO', 0),
(1447772, 'UML', 0),
(1447773, 'CP', 0),
(1447773, 'IA', 0),
(1447773, 'POO', 0),
(1447773, 'UML', 0),
(1447784, 'CP', 0),
(1447784, 'IA', 0),
(1447784, 'POO', 0),
(1447784, 'UML', 0),
(1447926, 'CP', 0),
(1447926, 'IA', 0),
(1447926, 'POO', 0),
(1447926, 'UML', 0),
(1447992, 'CP', 0),
(1447992, 'IA', 0),
(1447992, 'POO', 0),
(1447992, 'UML', 0),
(1458069, 'ALG', 0),
(1458069, 'ET2', 0),
(1458069, 'PC', 0),
(1458069, 'RX', 0),
(1458069, 'SE', 0),
(1458878, 'ALG', 0),
(1458878, 'ET2', 0),
(1458878, 'PC', 0),
(1458878, 'RX', 0),
(1458878, 'SE', 0),
(1558050, 'ALG', 0),
(1558050, 'ET2', 0),
(1558050, 'PC', 0),
(1558050, 'RX', 0),
(1558050, 'SE', 0),
(1558070, 'CP', 0),
(1558070, 'IA', 0),
(1558070, 'POO', 0),
(1558070, 'UML', 0),
(1558072, 'CP', 0),
(1558072, 'IA', 0),
(1558072, 'POO', 0),
(1558072, 'UML', 0),
(1558075, 'ALG', 0),
(1558075, 'ET2', 0),
(1558075, 'PC', 0),
(1558075, 'RX', 0),
(1558075, 'SE', 0),
(1558086, 'ALG', 0),
(1558086, 'ET2', 0),
(1558086, 'PC', 0),
(1558086, 'RX', 0),
(1558086, 'SE', 0),
(1558091, 'ALG', 0),
(1558091, 'ET2', 0),
(1558091, 'PC', 0),
(1558091, 'RX', 0),
(1558091, 'SE', 0),
(1558099, 'ALG', 0),
(1558099, 'ET2', 0),
(1558099, 'PC', 0),
(1558099, 'RX', 0),
(1558099, 'SE', 0),
(1558100, 'CP', 0),
(1558100, 'IA', 0),
(1558100, 'POO', 0),
(1558100, 'UML', 0),
(1558104, 'CP', 0),
(1558104, 'IA', 0),
(1558104, 'POO', 0),
(1558104, 'UML', 0),
(1558106, 'CP', 0),
(1558106, 'IA', 0),
(1558106, 'POO', 0),
(1558106, 'UML', 0),
(1563000, 'ALG', 0),
(1563000, 'ET2', 0),
(1563000, 'PC', 0),
(1563000, 'RX', 0),
(1563000, 'SE', 0),
(1563007, 'ALG', 0),
(1563007, 'ET2', 0),
(1563007, 'PC', 0),
(1563007, 'RX', 0),
(1563007, 'SE', 0),
(1563008, 'ALG', 0),
(1563008, 'ET2', 0),
(1563008, 'PC', 0),
(1563008, 'RX', 0),
(1563008, 'SE', 0),
(1563010, 'ALG', 0),
(1563010, 'ET2', 0),
(1563010, 'PC', 0),
(1563010, 'RX', 0),
(1563010, 'SE', 0),
(1563020, 'ALG', 0),
(1563020, 'ET2', 0),
(1563020, 'PC', 0),
(1563020, 'RX', 0),
(1563020, 'SE', 0),
(1563033, 'ALG', 0),
(1563033, 'ET2', 0),
(1563033, 'PC', 0),
(1563033, 'RX', 0),
(1563033, 'SE', 0),
(1563041, 'CP', 0),
(1563041, 'IA', 0),
(1563041, 'POO', 0),
(1563041, 'UML', 0),
(1563048, 'CP', 0),
(1563048, 'IA', 0),
(1563048, 'POO', 0),
(1563048, 'UML', 0),
(1563050, 'ALG', 0),
(1563050, 'ET2', 0),
(1563050, 'PC', 0),
(1563050, 'RX', 0),
(1563050, 'SE', 0),
(1563056, 'CP', 0),
(1563056, 'IA', 0),
(1563056, 'POO', 0),
(1563056, 'UML', 0),
(1563062, 'CP', 0),
(1563062, 'IA', 0),
(1563062, 'POO', 0),
(1563062, 'UML', 0),
(1563068, 'CP', 0),
(1563068, 'IA', 0),
(1563068, 'POO', 0),
(1563068, 'UML', 0),
(1563069, 'CP', 0),
(1563069, 'IA', 0),
(1563069, 'POO', 0),
(1563069, 'UML', 0),
(1563077, 'CP', 0),
(1563077, 'IA', 0),
(1563077, 'POO', 0),
(1563077, 'UML', 0),
(1563082, 'ALG', 0),
(1563082, 'CP', 0),
(1563082, 'IA', 0),
(1563082, 'POO', 0),
(1563082, 'UML', 0),
(1563086, 'CP', 0),
(1563086, 'IA', 0),
(1563086, 'POO', 0),
(1563086, 'UML', 0),
(1563087, 'CP', 0),
(1563087, 'IA', 0),
(1563087, 'POO', 0),
(1563087, 'UML', 0),
(1572458, 'CP', 0),
(1572458, 'IA', 0),
(1572458, 'POO', 0),
(1572458, 'UML', 0),
(1572509, 'ALG', 0),
(1572509, 'ET2', 0),
(1572509, 'PC', 0),
(1572509, 'RX', 0),
(1572509, 'SE', 0),
(1576361, 'ALG', 0),
(1576361, 'ET2', 0),
(1576361, 'PC', 0),
(1576361, 'RX', 0),
(1576361, 'SE', 0),
(1576621, 'CP', 0),
(1576621, 'IA', 0),
(1576621, 'POO', 0),
(1576621, 'UML', 0),
(1615500, 'ALG', 0),
(1615500, 'ET2', 0),
(1615500, 'PC', 0),
(1615500, 'RX', 0),
(1615500, 'SE', 0),
(1615517, 'ALG', 0),
(1615517, 'ET2', 0),
(1615517, 'PC', 0),
(1615517, 'RX', 0),
(1615517, 'SE', 0),
(1615560, 'ALG', 0),
(1615560, 'ET2', 0),
(1615560, 'PC', 0),
(1615560, 'RX', 0),
(1615560, 'SE', 0),
(1616102, 'ALG', 0),
(1616102, 'ET2', 0),
(1616102, 'PC', 0),
(1616102, 'RX', 0),
(1616102, 'SE', 0),
(1616115, 'CP', 12.75),
(1616115, 'IA', 0),
(1616115, 'POO', 0),
(1616115, 'UML', 0),
(1616121, 'CP', 18),
(1616121, 'IA', 0),
(1616121, 'POO', 0),
(1616121, 'UML', 0),
(1616125, 'ALG', 0),
(1616125, 'ET2', 0),
(1616125, 'PC', 0),
(1616125, 'RX', 0),
(1616125, 'SE', 0),
(1616145, 'ALG', 0),
(1616145, 'ET2', 0),
(1616145, 'PC', 0),
(1616145, 'RX', 0),
(1616145, 'SE', 0),
(1616149, 'ALG', 0),
(1616149, 'ET2', 0),
(1616149, 'PC', 0),
(1616149, 'RX', 0),
(1616149, 'SE', 0),
(1616154, 'CP', 0),
(1616154, 'IA', 0),
(1616154, 'POO', 0),
(1616154, 'UML', 0),
(1616156, 'ALG', 0),
(1616156, 'ET2', 0),
(1616156, 'PC', 0),
(1616156, 'RX', 0),
(1616156, 'SE', 0),
(1616162, 'ALG', 0),
(1616162, 'ET2', 0),
(1616162, 'PC', 0),
(1616162, 'RX', 0),
(1616162, 'SE', 0),
(1616167, 'ALG', 0),
(1616167, 'ET2', 0),
(1616167, 'PC', 0),
(1616167, 'RX', 0),
(1616167, 'SE', 0),
(1616175, 'CP', 0),
(1616175, 'IA', 0),
(1616175, 'POO', 0),
(1616175, 'UML', 0),
(1616177, 'ALG', 0),
(1616177, 'ET2', 0),
(1616177, 'PC', 0),
(1616177, 'RX', 0),
(1616177, 'SE', 0),
(1616182, 'CP', 0),
(1616182, 'IA', 0),
(1616182, 'POO', 0),
(1616182, 'UML', 0),
(1616196, 'CP', 0),
(1616196, 'IA', 0),
(1616196, 'POO', 0),
(1616196, 'UML', 0),
(1714346, 'ALG', 0),
(1714346, 'ET2', 0),
(1714346, 'PC', 0),
(1714346, 'RX', 0),
(1714346, 'SE', 0),
(1714357, 'ALG', 0),
(1714357, 'ET2', 0),
(1714357, 'PC', 0),
(1714357, 'RX', 0),
(1714357, 'SE', 0),
(1714362, 'ALG', 0),
(1714362, 'ET2', 0),
(1714362, 'PC', 0),
(1714362, 'RX', 0),
(1714362, 'SE', 0),
(1714389, 'ALG', 0),
(1714389, 'ET2', 0),
(1714389, 'PC', 0),
(1714389, 'RX', 0),
(1714389, 'SE', 0),
(1714863, 'ALG', 0),
(1714863, 'ET2', 0),
(1714863, 'PC', 0),
(1714863, 'RX', 0),
(1714863, 'SE', 0),
(1714897, 'ALG', 0),
(1714897, 'ET2', 0),
(1714897, 'PC', 0),
(1714897, 'RX', 0),
(1714897, 'SE', 0),
(1714902, 'ALG', 0),
(1714902, 'ET2', 0),
(1714902, 'PC', 0),
(1714902, 'RX', 0),
(1714902, 'SE', 0),
(1714903, 'ALG', 0),
(1714903, 'ET2', 0),
(1714903, 'PC', 0),
(1714903, 'RX', 0),
(1714903, 'SE', 0),
(1714908, 'ALG', 0),
(1714908, 'ET2', 0),
(1714908, 'PC', 0),
(1714908, 'RX', 0),
(1714908, 'SE', 0),
(1714922, 'ALG', 0),
(1714922, 'ET2', 0),
(1714922, 'PC', 0),
(1714922, 'RX', 0),
(1714922, 'SE', 0),
(1714924, 'ALG', 0),
(1714924, 'ET2', 0),
(1714924, 'PC', 0),
(1714924, 'RX', 0),
(1714924, 'SE', 0),
(1720496, 'CP', 0),
(1720496, 'IA', 0),
(1720496, 'POO', 0),
(1720496, 'UML', 0),
(1720498, 'CP', 0),
(1720498, 'IA', 0),
(1720498, 'POO', 0),
(1720498, 'UML', 0),
(1720606, 'ALG', 0),
(1720606, 'ET2', 0),
(1720606, 'PC', 0),
(1720606, 'RX', 0),
(1720606, 'SE', 0),
(1720667, 'ALG', 0),
(1720667, 'ET2', 0),
(1720667, 'PC', 0),
(1720667, 'RX', 0),
(1720667, 'SE', 0),
(1823887, 'ALG', 0),
(1823887, 'ET2', 0),
(1823887, 'PC', 0),
(1823887, 'RX', 0),
(1823887, 'SE', 0),
(1823892, 'CP', 0),
(1823892, 'IA', 0),
(1823892, 'POO', 0),
(1823892, 'UML', 0),
(1823923, 'ALG', 0),
(1823923, 'ET2', 0),
(1823923, 'PC', 0),
(1823923, 'RX', 0),
(1823923, 'SE', 0);

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

CREATE TABLE `professeur` (
  `Matricule` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `professeur`
--

INSERT INTO `professeur` (`Matricule`, `nom`, `prenom`, `email`, `tel`, `userName`) VALUES
(121, 'CHRAIBI', 'SOUAD ', 'chraibi@uca.ac.ma', '000000', 'MmeCh'),
(145, 'ABDELWAHED', 'EL HASSAN', NULL, NULL, NULL),
(263, 'AGOUTI', 'TARIK', NULL, NULL, NULL),
(354, 'LAZREK', 'AZZEDDINE', NULL, NULL, NULL),
(703, 'BOUSTANI', 'MALIKA', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `student`
--

CREATE TABLE `student` (
  `CNE` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `codeF` varchar(6) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `student`
--

INSERT INTO `student` (`CNE`, `nom`, `prenom`, `email`, `tel`, `codeF`, `userName`) VALUES
(1105424, 'JOUGHA', 'ASMA', NULL, NULL, 'SMI', NULL),
(1303091, 'BOUAYAD', 'IMANE', NULL, NULL, 'SMI', NULL),
(1447733, 'ABOUELHASSAN', 'MAJDA', NULL, NULL, 'SMI', NULL),
(1447751, 'AL MOUATAMID', 'YOUSSEF', NULL, NULL, 'SMI', NULL),
(1447754, 'ALLA', 'RABAB', NULL, NULL, 'SMI', NULL),
(1447772, 'BENHIRT', 'FATIMA ZAHRA', NULL, NULL, 'SMI', NULL),
(1447773, 'BENIDER', 'ISSAM', NULL, NULL, 'SMI', NULL),
(1447784, 'BOUDARBALA', 'ACHREF', NULL, NULL, 'SMI', NULL),
(1447926, 'MOUCHTABIH', 'KHALID', NULL, NULL, 'SMI', NULL),
(1447992, 'ZAHID', 'YASSINE', NULL, NULL, 'SMI', NULL),
(1458069, 'DEBBAGH', 'MOHAMEDTAHA', NULL, NULL, 'SMI', NULL),
(1458878, 'AIT RAHHO', 'AHMED', NULL, NULL, 'SMI', NULL),
(1558050, 'ELGALLAF', 'YOUSSEF', NULL, NULL, 'SMI', NULL),
(1558070, 'HIDAWI', 'KHAOULA', NULL, NULL, 'SMI', NULL),
(1558072, 'ISMGH', 'HATIM', NULL, NULL, 'SMI', NULL),
(1558075, 'KANADI', 'SARA', NULL, NULL, 'SMI', NULL),
(1558086, 'LMATI', 'FATIMA-ZAHRA', NULL, NULL, 'SMI', NULL),
(1558091, 'MANNASAF', 'SARA', NULL, NULL, 'SMI', NULL),
(1558099, 'OUAARA', 'SARA', NULL, NULL, 'SMI', NULL),
(1558100, 'OUALYALI', 'HOUSSNI', NULL, NULL, 'SMI', NULL),
(1558104, 'EL MESTEM', 'OUMAYMA', NULL, NULL, 'SMI', NULL),
(1558106, 'SABOUR', 'AIMAD', NULL, NULL, 'SMI', NULL),
(1563000, 'AALLOUL', 'OUTMANE', NULL, NULL, 'SMI', NULL),
(1563007, 'AKHMAJ', 'LHOUCINE', NULL, NULL, 'SMI', NULL),
(1563008, 'AMAACH', 'AMINE', NULL, NULL, 'SMI', NULL),
(1563010, 'ANEFLAS', 'WAFA', NULL, NULL, 'SMI', NULL),
(1563020, 'BAKKAS', 'BRAHIM', NULL, NULL, 'SMI', NULL),
(1563033, 'EDRIOUICH', 'KARIMA', NULL, NULL, 'SMI', NULL),
(1563041, 'EL MIAYAR', 'OUMAIMA', NULL, NULL, 'SMI', NULL),
(1563048, 'ES-SAADY', 'HAMZA', NULL, NULL, 'SMI', NULL),
(1563050, 'HADDI', 'NAFAI', NULL, NULL, 'SMI', NULL),
(1563056, 'JOUMAIL', 'HESSAM', NULL, NULL, 'SMI', NULL),
(1563062, 'LAGSOUN', 'ABDELMOTALIB', NULL, NULL, 'SMI', NULL),
(1563068, 'NACIRI', 'HAKIMA', NULL, NULL, 'SMI', NULL),
(1563069, 'NAHIM', 'ANISS', NULL, NULL, 'SMI', NULL),
(1563077, 'RHAYOU', 'IBTISSAM', NULL, NULL, 'SMI', NULL),
(1563082, 'TAHIRI', 'FATIMA', NULL, NULL, 'SMI', NULL),
(1563086, 'ZAHIR', 'AYOUB', NULL, NULL, 'SMI', NULL),
(1563087, 'ZAHIRI', 'KHADIJA', NULL, NULL, 'SMI', NULL),
(1572458, 'GARBAZ', 'ANASS', NULL, NULL, 'SMI', NULL),
(1572509, 'MAHAMATSALEH', 'ABAKARHAMIT', NULL, NULL, 'SMI', NULL),
(1576361, 'FAHMI', 'MAROUANE', NULL, NULL, 'SMI', NULL),
(1576621, 'ESSADIQI', 'MOHAMED AMINE', NULL, NULL, 'SMI', NULL),
(1615500, 'BOURHIM', 'ABDERRAHMANE', NULL, NULL, 'SMI', NULL),
(1615517, 'OUHASSOU', 'ABDELKEBIR', NULL, NULL, 'SMI', NULL),
(1615560, 'ER-RAHMOUNY', 'HAMZA', NULL, NULL, 'SMI', NULL),
(1616102, 'AIT BEN LMADANI', 'MANAL', NULL, NULL, 'SMI', NULL),
(1616115, 'BENYAS', 'AYOUB', , NULL, NULL, 'SMI', NULL),
(1616121, 'BOUJOU', 'EL MEHDI', NULL, NULL, 'SMI', NULL),
(1616125, 'CHEGRI', 'MOHAMED', NULL, NULL, 'SMI', NULL),
(1616145, 'ELOUARDY', 'JAMALEDDIN', NULL, NULL, 'SMI', NULL),
(1616149, 'EZ-ZAKKAR', 'MOHAMMED', NULL, NULL, 'SMI', NULL),
(1616154, 'FOMBA', 'MARIAM MAC', NULL, NULL, 'SMI', NULL),
(1616156, 'GOLOMANTA', 'MAHAMADOU', NULL, NULL, 'SMI', NULL),
(1616162, 'IHDA', 'MOHAMED', NULL, NULL, 'SMI', NULL),
(1616167, 'KASSI', 'HASSAN', NULL, NULL, 'SMI', NULL),
(1616175, 'LAHMIMSI', 'MOHAMED ANAS', NULL, NULL, 'SMI', NULL),
(1616177, 'MBARKI', 'HIBA', NULL, NULL, 'SMI', NULL),
(1616182, 'OULAMINE', 'YOUNESS', 'a07@a.a', '0659465465', 'SMI', NULL),
(1616196, 'TARYQ', 'ZAKARIA', NULL, NULL, 'SMI', NULL),
(1714346, 'BABA', 'NAIMA', NULL, NULL, 'SMI', NULL),
(1714357, 'CHERADI', 'YOUNESS', NULL, NULL, 'SMI', NULL),
(1714362, 'ELBARAGHI', 'ABDESSAMAD', NULL, NULL, 'SMI', NULL),
(1714389, 'LAAOUINI', 'ANAS', NULL, NULL, 'SMI', NULL),
(1714863, 'AIT OUFQIR', 'AHMED', NULL, NULL, 'SMI', NULL),
(1714897, 'ELMOUMNY', 'AZDDINE', NULL, NULL, 'SMI', NULL),
(1714902, 'HADDANI', 'ABDELHAKIM', NULL, NULL, 'SMI', NULL),
(1714903, 'HANNANI', 'MOHAMED', NULL, NULL, 'SMI', NULL),
(1714908, 'LABIAD', 'SALAHEDDINE', NULL, NULL, 'SMI', NULL),
(1714922, 'OUASSINE', 'YOUNES', NULL, NULL, 'SMI', NULL),
(1714924, 'OULARBI', 'YOUSSEF', NULL, NULL, 'SMI', NULL),
(1720496, 'CHOUKRY', 'SAAD', NULL, NULL, 'SMI', NULL),
(1720498, 'BOUGADRE', 'ACHRAF', NULL, NULL, 'SMI', NULL),
(1720606, 'MARTINSBARBOSA', 'SANTOVANDA', NULL, NULL, 'SMI', NULL),
(1720667, 'OUMAACHA', 'ANOUAR', NULL, NULL, 'SMI', NULL),
(1823887, 'ETTUIJER', 'ABDENNOUR', NULL, NULL, 'SMI', NULL),
(1823892, 'BAHIJ', 'DIYAE-ELHAQ', NULL, NULL, 'SMI', NULL),
(1823923, 'JAGNE', 'ALIEU', NULL, NULL, 'SMI', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`adminID`),
  ADD UNIQUE KEY `userName` (`userName`),
  ADD KEY `codeF` (`codeF`);

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`codeC`),
  ADD KEY `codeF` (`codeF`);

--
-- Index pour la table `filiere`
--
ALTER TABLE `filiere`
  ADD PRIMARY KEY (`codeF`);

--
-- Index pour la table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`codeM`),
  ADD KEY `matricule` (`matricule`),
  ADD KEY `codeF` (`codeC`);

--
-- Index pour la table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`CNE`,`codeM`),
  ADD KEY `codeM` (`codeM`);

--
-- Index pour la table `professeur`
--
ALTER TABLE `professeur`
  ADD PRIMARY KEY (`Matricule`),
  ADD UNIQUE KEY `userName` (`userName`),
  ADD UNIQUE KEY `tel` (`tel`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`CNE`),
  ADD UNIQUE KEY `userName` (`userName`),
  ADD UNIQUE KEY `tel` (`tel`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `filiere` (`codeF`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `adminID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `administrator`
--
ALTER TABLE `administrator`
  ADD CONSTRAINT `administrator_ibfk_1` FOREIGN KEY (`codeF`) REFERENCES `filiere` (`codeF`),
  ADD CONSTRAINT `administrator_ibfk_2` FOREIGN KEY (`userName`) REFERENCES `account` (`username`);

--
-- Contraintes pour la table `classe`
--
ALTER TABLE `classe`
  ADD CONSTRAINT `classe_ibfk_1` FOREIGN KEY (`codeF`) REFERENCES `filiere` (`codeF`);

--
-- Contraintes pour la table `module`
--
ALTER TABLE `module`
  ADD CONSTRAINT `module_ibfk_1` FOREIGN KEY (`matricule`) REFERENCES `professeur` (`Matricule`),
  ADD CONSTRAINT `module_ibfk_2` FOREIGN KEY (`codeC`) REFERENCES `classe` (`codeC`);

--
-- Contraintes pour la table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_ibfk_1` FOREIGN KEY (`CNE`) REFERENCES `student` (`CNE`),
  ADD CONSTRAINT `note_ibfk_2` FOREIGN KEY (`codeM`) REFERENCES `module` (`codeM`);

--
-- Contraintes pour la table `professeur`
--
ALTER TABLE `professeur`
  ADD CONSTRAINT `professeur_ibfk_1` FOREIGN KEY (`userName`) REFERENCES `account` (`username`);

--
-- Contraintes pour la table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`userName`) REFERENCES `account` (`username`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`codeF`) REFERENCES `filiere` (`codeF`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
