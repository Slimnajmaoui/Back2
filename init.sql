-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 19 nov. 2024 à 16:53
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `agiledb`
--

-- --------------------------------------------------------

--
-- Structure de la table `absence`
--

DROP TABLE IF EXISTS `absence`;
CREATE TABLE IF NOT EXISTS `absence` (
  `id` bigint(20) NOT NULL,
  `datecreation` varchar(255) DEFAULT NULL,
  `datedebut` varchar(255) DEFAULT NULL,
  `datefin` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `motdepasse` varchar(255) DEFAULT NULL,
  `permissions` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `affectationgroupe`
--

DROP TABLE IF EXISTS `affectationgroupe`;
CREATE TABLE IF NOT EXISTS `affectationgroupe` (
  `id` bigint(20) NOT NULL,
  `datecreation` varchar(255) DEFAULT NULL,
  `datemodification` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `groupe_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4ktgh0g0va684isnuvyo6bmas` (`groupe_id`),
  KEY `FKhj1d29uq6adkgfim3il74x99l` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `affectationprojet`
--

DROP TABLE IF EXISTS `affectationprojet`;
CREATE TABLE IF NOT EXISTS `affectationprojet` (
  `id` bigint(20) NOT NULL,
  `datecreation` varchar(255) DEFAULT NULL,
  `datemodification` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `projet_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6f9de2l0h65mjys13qwytn2s5` (`projet_id`),
  KEY `FKpg4wfhvmxydaal347bdd70ece` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `affectationtache`
--

DROP TABLE IF EXISTS `affectationtache`;
CREATE TABLE IF NOT EXISTS `affectationtache` (
  `id` bigint(20) NOT NULL,
  `datecreation` varchar(255) DEFAULT NULL,
  `datedebut` varchar(255) DEFAULT NULL,
  `datefin` varchar(255) DEFAULT NULL,
  `datemodification` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `tache_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkfv77jdqtfawbo7oo5wbla1fc` (`tache_id`),
  KEY `FKkobanont2ywf2iln1ksj04bpk` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `avancementprojet`
--

DROP TABLE IF EXISTS `avancementprojet`;
CREATE TABLE IF NOT EXISTS `avancementprojet` (
  `id` bigint(20) NOT NULL,
  `avancement` varchar(255) DEFAULT NULL,
  `datecreation` varchar(255) DEFAULT NULL,
  `datedebut` varchar(255) DEFAULT NULL,
  `datefin` varchar(255) DEFAULT NULL,
  `datemodification` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `affectationprojet_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdq6au6kcxurv33xg4x1x7t9va` (`affectationprojet_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `avancementtache`
--

DROP TABLE IF EXISTS `avancementtache`;
CREATE TABLE IF NOT EXISTS `avancementtache` (
  `id` bigint(20) NOT NULL,
  `avancement` varchar(255) DEFAULT NULL,
  `datecreation` varchar(255) DEFAULT NULL,
  `datedebut` varchar(255) DEFAULT NULL,
  `datefin` varchar(255) DEFAULT NULL,
  `datemodification` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `idprojet_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpxuuxxb4pm8i8w29ol2sj1dig` (`idprojet_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `competence`
--

DROP TABLE IF EXISTS `competence`;
CREATE TABLE IF NOT EXISTS `competence` (
  `id` bigint(20) NOT NULL,
  `datecreation` varchar(255) DEFAULT NULL,
  `datemodification` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `conge`
--

DROP TABLE IF EXISTS `conge`;
CREATE TABLE IF NOT EXISTS `conge` (
  `id` bigint(20) NOT NULL,
  `datecreation` varchar(255) DEFAULT NULL,
  `datedebut` varchar(255) DEFAULT NULL,
  `datefin` varchar(255) DEFAULT NULL,
  `datemodification` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6o6vqireuyid38d9ywuse7saw` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

DROP TABLE IF EXISTS `groupe`;
CREATE TABLE IF NOT EXISTS `groupe` (
  `id` bigint(20) NOT NULL,
  `datecreation` varchar(255) DEFAULT NULL,
  `datemodifcation` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(4),
(4),
(4),
(4),
(4),
(4),
(4),
(4),
(4),
(4),
(4),
(4),
(4),
(4),
(4),
(4),
(4);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` bigint(20) NOT NULL,
  `datecreationmessage` varchar(255) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `idenvoie` varchar(255) DEFAULT NULL,
  `idreception` varchar(255) DEFAULT NULL,
  `sujet` varchar(255) DEFAULT NULL,
  `texte` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `notification`
--

DROP TABLE IF EXISTS `notification`;
CREATE TABLE IF NOT EXISTS `notification` (
  `id` bigint(20) NOT NULL,
  `datecreation` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sujet` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `profil`
--

DROP TABLE IF EXISTS `profil`;
CREATE TABLE IF NOT EXISTS `profil` (
  `id` bigint(20) NOT NULL,
  `datecreation` varchar(255) DEFAULT NULL,
  `datemodification` varchar(255) DEFAULT NULL,
  `diplome` varchar(255) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `niveau` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

DROP TABLE IF EXISTS `projet`;
CREATE TABLE IF NOT EXISTS `projet` (
  `id` bigint(20) NOT NULL,
  `datecreation` varchar(255) DEFAULT NULL,
  `datedebut` varchar(255) DEFAULT NULL,
  `datefin` varchar(255) DEFAULT NULL,
  `datemodification` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` bigint(20) NOT NULL,
  `profil` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id`, `profil`) VALUES
(1, 'Admin'),
(2, 'Utilisateur'),
(3, 'Chef');

-- --------------------------------------------------------

--
-- Structure de la table `tache`
--

DROP TABLE IF EXISTS `tache`;
CREATE TABLE IF NOT EXISTS `tache` (
  `id` bigint(20) NOT NULL,
  `datecreation` varchar(255) DEFAULT NULL,
  `datedebut` varchar(255) DEFAULT NULL,
  `datefin` varchar(255) DEFAULT NULL,
  `datemodification` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `idprojet_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1h9a5go2sv3yj6iq30c6jrnj1` (`idprojet_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL,
  `datecreation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mdp` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `statut` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKn82ha3ccdebhokx3a8fgdqeyy` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `datecreation`, `email`, `mdp`, `nom`, `prenom`, `statut`, `role_id`) VALUES
(1, 'string', 'admin@gmail.com', '$2a$10$zNT0H0YqKHMq7agPPvaeQ.iMcGqhTchqOp5pRZPl3WrHkYeHW5RQa', 'string', 'string', 'string', 1),
(2, 'string', 'utilisateur@gmail.com', '$2a$10$3o4fUyxoj34C2WdHgiTGe.j720vB8IIPfMt5GaDM7oYtaO35UonXq', 'string', 'string', 'string', 2),
(3, 'string', 'chef@gmail.com', '$2a$10$UNZnmodrfkq1UNbOenWs1e7mbMe4ucDT6wN8YgAcFXy/tJd8rzz6S', 'string', 'string', 'string', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
