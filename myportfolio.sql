-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 16 jan. 2023 à 12:33
-- Version du serveur : 10.5.17-MariaDB-cll-lve
-- Version de PHP : 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `u988716521_myportfolio`
--

CREATE DATABASE IF NOT EXISTS `u988716521_myportfolio`;
USE `u988716521_myportfolio`;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -- --------------------------------------------------------

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `content`, `created_at`) VALUES
(1, 'Nicat', 'nicatmecid@gmail.com', 'Salam dostum', 'Salam. Necesen? Mesaj geldi?', '2022-11-08 16:18:26'),
(2, 'Mecid', 'nicatmecidli@mail.ru', 'Salam', 'Salam dostum Nicat.', '2022-11-08 16:26:34'),
(3, 'Nijat', 'nijat@rambler.ru', 'Hello', 'Hello friend', '2022-11-08 16:33:39'),
(4, 'Majid', 'majid@hotmail.com', 'salut', 'salut mon ami', '2022-11-08 18:05:55'),
(5, 'nicat', 'nicat@mail.ru', 'Salam dostum', 'salam Nicat', '2022-12-02 08:55:52'),
(6, 'nicat', 'nicat@rambler.ru', 'Salam', 'Salam dostum', '2022-12-04 15:18:56');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `technologies` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

---- --------------------------------------------------------

INSERT INTO `project` (`id`, `name`, `description`, `technologies`, `photo`, `link`, `date`) VALUES
(0, 'Peluche World', 'Il s’agit d\'un magasin de vente des peluches', 'React JS', 'PelucheWorld.jpg', 'https://peluche-world.nijatmajidli.eu', '2023-02-02'),
(1, 'Fil Rouge', 'L\'idée générale de ce projet consistait à écrire des scripts front-end et back-end afin de créer différents pages du site web (e-commerce) de la société Village Green spécialisée dans le domaine de la distribution du matériel musical. \r\n\r\n\r\n', 'HTML5, CSS3, Javascript, Symfony5, Twig, phpMyAdmin, Looping, draw.io, Visual Studio Code\r\n', 'Fil Rouge.jpg', 'https:///filrouge.nijatmajidli.eu', '2022-10-01'),
(2, 'Acoteq', 'Pendant mon stage j’ai travaillé sur le projet « Acoteq » qui m’a permis d’enrichir mes compétences. L’objectif principal du projet consistait à développer une plateforme d\'appel d\'offres en ligne dans le domaine de l\'isolation thermique dans le but de mettre en relation les clients et fournisseurs. ', 'HTML5, CSS3, Javascript, Bootstrap4, jQuery, PHP, MySQL, Looping, Visual Studio Code', 'Acoteq.jpg', 'https://acoteq.nijatmajidli.eu', '2021-07-04'),
(3, 'Jarditou', 'L\'idée générale de ce projet consistait à écrire des scripts front-end et back-end afin de créer différents pages web du site internet de la société Jarditou spécialisée dans le domaine du jardin et paysagisme. \r\n\r\n  ', 'HTML5, CSS3, Bootstrap, Javascript, jQuery, PHP, MySQL, phpMyAdmin, Visual Studio Code', 'Jarditou.jpg', 'https://jarditou.nijatmajidli.eu', '2020-12-01'),
(4, 'API-REST', 'Il s’agit de développer une petite application permettant d’accéder à l’application LMB par API.\r\nLes fonctions attendues sont les suivantes :\r\n- rechercher des clients\r\n- ouvrir une fiche client\r\n- éditer une fiche client', 'PHP', 'ApiRest.jpg', 'https://apirest.nijatmajidli.eu', '2022-10-16');


