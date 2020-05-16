-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 13 mai 2020 à 12:11
-- Version du serveur :  10.3.12-MariaDB
-- Version de PHP :  7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `planete`
--

-- --------------------------------------------------------

--
-- Structure de la table `planete`
--

DROP TABLE IF EXISTS `planete`;
CREATE TABLE IF NOT EXISTS `planete` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(500) NOT NULL,
  `Description` varchar(1000) NOT NULL,
  `NomImg` varchar(500) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `planete`
--

INSERT INTO `planete` (`Id`, `Nom`, `Description`, `NomImg`) VALUES
(1, 'pluton', 'Pluton, officiellement désignée par (134340) Pluton (désignation internationale (134340) Pluto)a, est la planète naine la plus volumineuse (2 372 km de diamètre, contre 2 326 km pour Éris) connue du Système solaire et la deuxième au niveau de la masse (après Éris). À ce titre, Pluton est donc le neuvième plus gros objet orbitant autour du Soleil (exception faite des lunes des géantes gazeuses) et le dixième au niveau de la masse. Premier objet transneptunien identifié, Pluton orbite autour du Soleil à une distance variant entre 30 et 49 unités astronomiques et appartient à la ceinture de Kuiper, ceinture dont il est (tant par la taille que par la masse) le plus grand membre connu.', 'img/pluton.jpg'),
(2, 'andromede', 'coucou pour le moment ^^ .', 'img/andromede.jpg'),
(3, 'terre', 'C\'est la terre... Là où vous vivez, si si.....', 'img/terre.jpg'),
(4, 'pandora', 'Pandora est l\'exo-lune de fiction où se déroule le film Avatar de James Cameron. C\'est un satellite d\'une géante gazeuse, Polyphème. Il ressemble beaucoup à la Terre mais l\'air y est irrespirable pour les humains, car son atmosphère est constituée en partie de dioxyde de carbone, d\'ammoniac et de cyanure d\'hydrogène. Lorsqu\'un humain respire cet air, il perd connaissance au bout de 20 secondes et meurt en 4 minutes. Pandora se situe dans le système d\'Alpha Centauri, à 4,4 années-lumière de la Terre. Sa gravité est légèrement plus faible que celle de la Terre, sa pression atmosphérique est équivalente (0,9 atm) mais la densité de l\'air est, quant à elle, plus forte (densité de 1,2).', 'img/pandora.jpg'),
(5, 'mars', 'C’est une planète tellurique, comme le sont Mercure, Vénus et la Terre, environ dix fois moins massive que la Terre mais dix fois plus massive que la Lune. Sa topographie présente des analogies aussi bien avec la Lune, à travers ses cratères et ses bassins d\'impact, qu\'avec la Terre, avec des formations d\'origine tectonique et climatique telles que des volcans, des rifts, des vallées, des mesas, des champs de dunes et des calottes polaires. La plus grande montagne du Système solaire, Olympus Mons (qui est aussi un volcan bouclier), et le plus grand canyon, Valles Marineris, se trouvent sur Mars.', 'img/mars.jpg'),
(6, 'terranova', 'bas ces la terre mais avec nova en plus ^^', 'img/terranova.jpg'),
(9, 'PizaTerra', 'Une tres belle et Bonne Planete', 'img/d.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
