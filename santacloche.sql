-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : ven. 17 déc. 2021 à 07:44
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `santacloche`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `idClient` int(11) NOT NULL AUTO_INCREMENT,
  `nomClient` varchar(100) NOT NULL,
  `prenomCLient` varchar(100) NOT NULL,
  `telClient` varchar(10) NOT NULL,
  `villeClient` varchar(100) NOT NULL,
  `rueClient` varchar(100) NOT NULL,
  `cpClient` varchar(5) NOT NULL,
  PRIMARY KEY (`idClient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

DROP TABLE IF EXISTS `compte`;
CREATE TABLE IF NOT EXISTS `compte` (
  `numeroCompte` varchar(100) NOT NULL,
  `somme` int(11) NOT NULL,
  `dateOuverture` date NOT NULL,
  `idClient` int(11) NOT NULL,
  `idType` int(11) NOT NULL,
  PRIMARY KEY (`numeroCompte`),
  KEY `fk_idClient` (`idClient`),
  KEY `fk_idType` (`idType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

DROP TABLE IF EXISTS `employe`;
CREATE TABLE IF NOT EXISTS `employe` (
  `login` varchar(100) NOT NULL,
  `mdp` varchar(100) NOT NULL,
  `nomEmploye` varchar(100) NOT NULL,
  `prenomEmploye` varchar(100) NOT NULL,
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `numero` varchar(100) NOT NULL,
  `libelle` varchar(100) NOT NULL,
  `montant` int(11) NOT NULL,
  `date` date NOT NULL,
  `numCompte` varchar(100) NOT NULL,
  `loginEmploye` varchar(100) NOT NULL,
  PRIMARY KEY (`numero`),
  KEY `fk_numCompte` (`numCompte`),
  KEY `fk_loginEmplye` (`loginEmploye`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `typecompte`
--

DROP TABLE IF EXISTS `typecompte`;
CREATE TABLE IF NOT EXISTS `typecompte` (
  `idType` int(11) NOT NULL AUTO_INCREMENT,
  `nomType` varchar(100) NOT NULL,
  `tauxInteret` int(11) NOT NULL,
  PRIMARY KEY (`idType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `compte`
--
ALTER TABLE `compte`
  ADD CONSTRAINT `fk_idClient` FOREIGN KEY (`idClient`) REFERENCES `client` (`idClient`),
  ADD CONSTRAINT `fk_idType` FOREIGN KEY (`idType`) REFERENCES `typecompte` (`idType`);

--
-- Contraintes pour la table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `fk_loginEmplye` FOREIGN KEY (`loginEmploye`) REFERENCES `employe` (`login`),
  ADD CONSTRAINT `fk_numCompte` FOREIGN KEY (`numCompte`) REFERENCES `compte` (`numeroCompte`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
