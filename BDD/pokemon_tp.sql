-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Ven 26 Juillet 2019 à 11:16
-- Version du serveur :  5.7.27-0ubuntu0.18.04.1
-- Version de PHP :  7.2.19-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pokemon_tp`
--

-- --------------------------------------------------------

--
-- Structure de la table `attack`
--

CREATE TABLE `attack` (
  `attack_id` int(11) NOT NULL,
  `attack_name` varchar(79) NOT NULL,
  `damages` smallint(6) DEFAULT NULL,
  `attack_accuracy` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `attack`
--

INSERT INTO `attack` (`attack_id`, `attack_name`, `damages`, `attack_accuracy`) VALUES
(2, 'karate-chop', 25, 100),
(3, 'double-slap', 10, 85),
(4, 'comet-punch', 15, 85),
(5, 'mega-punch', 20, 85),
(6, 'pay-day', 20, 100),
(7, 'fire-punch', 15, 100),
(8, 'ice-punch', 15, 100),
(9, 'thunder-punch', 15, 100),
(10, 'scratch', 35, 100),
(11, 'vice-grip', 30, 100),
(12, 'guillotine', 5, 30),
(13, 'razor-wind', 10, 100),
(14, 'swords-dance', 20, 30),
(15, 'cut', 30, 95);

-- --------------------------------------------------------

--
-- Structure de la table `join_attack_pokemon`
--

CREATE TABLE `join_attack_pokemon` (
  `fk_attack_id` int(11) DEFAULT NULL,
  `fk_pok_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `join_users_pokemon`
--

CREATE TABLE `join_users_pokemon` (
  `fk_id_user` int(11) DEFAULT NULL,
  `fk_pok_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pokemon`
--

CREATE TABLE `pokemon` (
  `pok_id` int(11) NOT NULL,
  `pok_name` varchar(79) NOT NULL,
  `pok_base_experience` int(11) DEFAULT NULL,
  `evolution` int(11) DEFAULT NULL,
  `urlimage` varchar(2083) DEFAULT NULL,
  `vie_base` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `pokemon`
--

INSERT INTO `pokemon` (`pok_id`, `pok_name`, `pok_base_experience`, `evolution`, `urlimage`, `vie_base`) VALUES
(1, 'axew', 64, 2, NULL, 0),
(2, 'fraxure', 144, 3, NULL, 0),
(3, 'haxorus', 243, NULL, NULL, 0),
(4, 'piplup', 63, 5, NULL, 0),
(5, 'prinplup', 142, 6, NULL, 0),
(6, 'empoleon', 239, NULL, NULL, 0),
(7, 'lillipup', 55, NULL, NULL, 0),
(8, 'herdier', 130, NULL, NULL, 0),
(9, 'stoutland', 225, NULL, NULL, 0),
(10, 'sandile', 58, NULL, NULL, 0),
(11, 'krokorok', 123, NULL, NULL, 0),
(12, 'krookodile', 234, NULL, NULL, 0),
(13, 'shinx', 53, NULL, NULL, 0),
(14, 'luxio', 127, NULL, NULL, 0),
(15, 'luxray', 235, NULL, NULL, 0),
(16, 'tepig', 62, NULL, NULL, 0),
(17, 'pignite', 146, NULL, NULL, 0),
(18, 'emboar', 238, NULL, NULL, 0),
(19, 'cranidos', 70, NULL, NULL, 0),
(20, 'rampardos', 173, NULL, NULL, 0),
(21, 'turtwig', 64, NULL, NULL, 0),
(22, 'grotle', 142, NULL, NULL, 0),
(23, 'torterra', 236, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passwd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `attack`
--
ALTER TABLE `attack`
  ADD PRIMARY KEY (`attack_id`);

--
-- Index pour la table `join_attack_pokemon`
--
ALTER TABLE `join_attack_pokemon`
  ADD KEY `fk_attack_id` (`fk_attack_id`),
  ADD KEY `fk_pok_id` (`fk_pok_id`);

--
-- Index pour la table `join_users_pokemon`
--
ALTER TABLE `join_users_pokemon`
  ADD KEY `fk_id_user` (`fk_id_user`),
  ADD KEY `fk_pok_id` (`fk_pok_id`);

--
-- Index pour la table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`pok_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `attack`
--
ALTER TABLE `attack`
  MODIFY `attack_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `pok_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `join_attack_pokemon`
--
ALTER TABLE `join_attack_pokemon`
  ADD CONSTRAINT `join_attack_pokemon_ibfk_1` FOREIGN KEY (`fk_attack_id`) REFERENCES `attack` (`attack_id`),
  ADD CONSTRAINT `join_attack_pokemon_ibfk_2` FOREIGN KEY (`fk_pok_id`) REFERENCES `pokemon` (`pok_id`);

--
-- Contraintes pour la table `join_users_pokemon`
--
ALTER TABLE `join_users_pokemon`
  ADD CONSTRAINT `join_users_pokemon_ibfk_1` FOREIGN KEY (`fk_id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `join_users_pokemon_ibfk_2` FOREIGN KEY (`fk_pok_id`) REFERENCES `pokemon` (`pok_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
