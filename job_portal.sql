-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 02 fév. 2022 à 18:42
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `job_portal`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_pass` varchar(100) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `admin_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admin_login`
--

INSERT INTO `admin_login` (`id`, `admin_email`, `admin_pass`, `admin_username`, `first_name`, `last_name`, `admin_type`) VALUES
(1, 'studidevoir@gmail.com', '123456', 'studi', 'John', 'Doe', '1'),
(2, 'carolinearnoult@hotmail.fr', '12345678', 'caro', 'caroline', 'arnoult', '2'),
(9, 'studi@gmail.com', 'studiconsultant', '123456', 'paul', 'studi', '2');

-- --------------------------------------------------------

--
-- Structure de la table `admin_type`
--

CREATE TABLE `admin_type` (
  `id` int(100) NOT NULL,
  `admin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admin_type`
--

INSERT INTO `admin_type` (`id`, `admin`) VALUES
(1, 'administrateur'),
(2, 'recruteur'),
(3, 'candidat'),
(4, 'consultant');

-- --------------------------------------------------------

--
-- Structure de la table `all_jobs`
--

CREATE TABLE `all_jobs` (
  `job_id` int(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `des` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `all_jobs`
--

INSERT INTO `all_jobs` (`job_id`, `customer_email`, `job_title`, `des`, `country`, `state`, `city`, `keyword`, `category`) VALUES
(1, 'chezjean@gmail.com', 'chef de rang', 'service brasserie', 'France', 'Nouvelle Aquitaine', 'Bordeaux', '', ''),
(2, 'carolinearnoult@hotmail.fr', 'réceptionniste', 'accueil et standard', 'France', 'landes', 'Hossegor', '', ''),
(3, 'studidevoir@gmail.com', 'cuisiner', 'commis de cuisisne', 'France', 'ile de france', 'Paris', '', ''),
(4, 'studidevoir@gmail.com', 'commis', 'commis de cuisine', 'France', 'Ile-de-France', 'Paris', '', ''),
(5, 'studidevoir@gmail.com', 'Cuisinier', 'cafétéria', 'France', 'Ile-de-France', 'Antony', 'cuisinier', '1');

-- --------------------------------------------------------

--
-- Structure de la table `company`
--

CREATE TABLE `company` (
  `company_id` int(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `des` varchar(100) NOT NULL,
  `admin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `company`
--

INSERT INTO `company` (`company_id`, `company`, `des`, `admin`) VALUES
(1, 'thalazur', 'hotellerie', ''),
(5, 'soledad', 'hotellerie', ''),
(9, 'restauration', 'Commis', '');

-- --------------------------------------------------------

--
-- Structure de la table `jobskeer`
--

CREATE TABLE `jobskeer` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `mobile_number` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `jobskeer`
--

INSERT INTO `jobskeer` (`id`, `email`, `password`, `first_name`, `last_name`, `mobile_number`, `dob`) VALUES
(1, 'eric@hotmail.com', '1234', 'eric', 'leroi', '0657655434', '1993-06-16'),
(2, 'studidevoir@gmail.com', '123456', 'paul', 'studi', '0654787970', '1980-10-22'),
(3, 'studi@gmail.com', '123456', 'studi', 'Paul', '0765789878', '1998-12-29'),
(4, 'eric@hotmail.com', '12344', 'eric', 'loriu', '0656543212', '1997-02-05'),
(5, 'luc@hotmail.fr', '223344', 'luc', 'renon', '0765765434', '2001-05-08');

-- --------------------------------------------------------

--
-- Structure de la table `job_category`
--

CREATE TABLE `job_category` (
  `id` int(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `des` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `job_category`
--

INSERT INTO `job_category` (`id`, `category`, `des`) VALUES
(1, 'Restauration', 'serveur '),
(2, 'Hotellerie', 'réceptionniste');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `all_jobs`
--
ALTER TABLE `all_jobs`
  ADD PRIMARY KEY (`job_id`);

--
-- Index pour la table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Index pour la table `jobskeer`
--
ALTER TABLE `jobskeer`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `job_category`
--
ALTER TABLE `job_category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `all_jobs`
--
ALTER TABLE `all_jobs`
  MODIFY `job_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `jobskeer`
--
ALTER TABLE `jobskeer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `job_category`
--
ALTER TABLE `job_category`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
