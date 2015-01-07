-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Mer 07 Janvier 2015 à 14:40
-- Version du serveur: 5.1.36
-- Version de PHP: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de données: `flux_etu`
--

-- --------------------------------------------------------

--
-- Structure de la table `absences`
--

CREATE TABLE IF NOT EXISTS `absences` (
  `id_abs` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `id_etudiant` int(11) NOT NULL,
  PRIMARY KEY (`id_abs`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `absences`
--

INSERT INTO `absences` (`id_abs`, `date`, `id_etudiant`) VALUES
(1, '2015-01-07', 1),
(2, '2015-01-07', 1),
(3, '2015-01-07', 1),
(4, '2015-01-07', 1),
(5, '2015-01-07', 1);

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE IF NOT EXISTS `etudiant` (
  `id_etudiant` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(200) NOT NULL,
  `url_image` varchar(200) NOT NULL,
  PRIMARY KEY (`id_etudiant`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Contenu de la table `etudiant`
--

INSERT INTO `etudiant` (`id_etudiant`, `nom`, `url_image`) VALUES
(1, 'Zamel Mouhaned', 'https://lh3.googleusercontent.com/-MnAF4aJrRg0/VCwGWZJt-wI/AAAAAAAAAHo/c9nClqbu0LQ/CAM00043.jpg'),
(2, 'Boukella Rafik', 'https://lh6.googleusercontent.com/-az9FAvuhq70/VCwGWlnf1wI/AAAAAAAAAHo/9RSZxSOIK_Y/CAM00044.jpg'),
(3, 'Masseix KÃ©vin', 'https://lh6.googleusercontent.com/-tnUhI6yBXQc/VCwGd082elI/AAAAAAAAAHo/rZcPIhUnPBA/CAM00045.jpg'),
(4, 'Guemouri Aiman', 'https://lh4.googleusercontent.com/-wmLelenkdsU/VCwGXM2LBfI/AAAAAAAAAHo/tWsygPKEVxI/CAM00046.jpg'),
(5, 'Guellouz Moudhafer', 'https://lh5.googleusercontent.com/-huMBliWB-OI/VCwGXc4TWtI/AAAAAAAAAHo/IOdKlNcY9gA/CAM00047.jpg'),
(6, 'Ameur Saad Mansour', 'https://lh4.googleusercontent.com/-xUtwIV6uLxA/VCwGYmbpP0I/AAAAAAAAAHo/zGKXJ1MI3Jo/CAM00049.jpg'),
(7, 'Wafae Cherfaoui', 'https://lh3.googleusercontent.com/-xLjxxFWTxvE/VCwGYzuba0I/AAAAAAAAAHo/RgbiUC9DooI/CAM00050.jpg'),
(8, 'Nisrine Abbou', 'https://lh4.googleusercontent.com/-UW0qCZsrVWc/VCwGZ7VkI-I/AAAAAAAAAHo/tOn5kbvJ99o/CAM00051.jpg'),
(9, 'Lansari Achraf', 'https://lh3.googleusercontent.com/-1uFmLUoTjLk/VCwGaZa95sI/AAAAAAAAAHo/X8sVgaBPUJE/CAM00052.jpg'),
(10, 'Zineb Slaoui', 'https://lh3.googleusercontent.com/-zU-5rrnFrMw/VCwGa-ubwSI/AAAAAAAAAHo/3dBin1dGBnQ/CAM00053.jpg'),
(11, 'Anass Raiss', 'https://lh3.googleusercontent.com/-9ROGYQczvI0/VCwGbLICKOI/AAAAAAAAAHo/_1iapbzDeXQ/CAM00054.jpg'),
(12, 'Amaskane Mehdi', 'https://lh5.googleusercontent.com/-qr-wUPAtCXw/VCwGbmZmTEI/AAAAAAAAAHo/0YRFvhu-fFs/CAM00055.jpg'),
(13, 'Hajbelgacem Mahmoud', 'https://lh6.googleusercontent.com/-niOpN7CuI-c/VDU7CwVd5GI/AAAAAAAAAHo/5qk1Am7f_MI/CAM00056.jpg'),
(14, 'Abdelali Hmessar', 'https://lh4.googleusercontent.com/-qBAiZHHx2Zw/VDU7C-9DPiI/AAAAAAAAAHo/o411doLVRJo/CAM00058.jpg'),
(15, 'Lamlih Zakaria', 'https://lh4.googleusercontent.com/-dOUWRfrZHP0/VDU7D5hvwII/AAAAAAAAAHo/YW9eugKzaQI/CAM00060.jpg'),
(16, 'Saad Benmakhlouf', 'https://lh4.googleusercontent.com/-r65Lzw9gnyg/VDU7EAkGsKI/AAAAAAAAAHo/n6XOjyQkgjI/CAM00061.jpg'),
(17, 'Zamel Mouhaned', 'https://lh3.googleusercontent.com/-MnAF4aJrRg0/VCwGWZJt-wI/AAAAAAAAAHo/c9nClqbu0LQ/CAM00043.jpg'),
(18, 'Boukella Rafik', 'https://lh6.googleusercontent.com/-az9FAvuhq70/VCwGWlnf1wI/AAAAAAAAAHo/9RSZxSOIK_Y/CAM00044.jpg'),
(19, 'Masseix KÃ©vin', 'https://lh6.googleusercontent.com/-tnUhI6yBXQc/VCwGd082elI/AAAAAAAAAHo/rZcPIhUnPBA/CAM00045.jpg'),
(20, 'Guemouri Aiman', 'https://lh4.googleusercontent.com/-wmLelenkdsU/VCwGXM2LBfI/AAAAAAAAAHo/tWsygPKEVxI/CAM00046.jpg'),
(21, 'Guellouz Moudhafer', 'https://lh5.googleusercontent.com/-huMBliWB-OI/VCwGXc4TWtI/AAAAAAAAAHo/IOdKlNcY9gA/CAM00047.jpg'),
(22, 'Ameur Saad Mansour', 'https://lh4.googleusercontent.com/-xUtwIV6uLxA/VCwGYmbpP0I/AAAAAAAAAHo/zGKXJ1MI3Jo/CAM00049.jpg'),
(23, 'Wafae Cherfaoui', 'https://lh3.googleusercontent.com/-xLjxxFWTxvE/VCwGYzuba0I/AAAAAAAAAHo/RgbiUC9DooI/CAM00050.jpg'),
(24, 'Nisrine Abbou', 'https://lh4.googleusercontent.com/-UW0qCZsrVWc/VCwGZ7VkI-I/AAAAAAAAAHo/tOn5kbvJ99o/CAM00051.jpg'),
(25, 'Lansari Achraf', 'https://lh3.googleusercontent.com/-1uFmLUoTjLk/VCwGaZa95sI/AAAAAAAAAHo/X8sVgaBPUJE/CAM00052.jpg'),
(26, 'Zineb Slaoui', 'https://lh3.googleusercontent.com/-zU-5rrnFrMw/VCwGa-ubwSI/AAAAAAAAAHo/3dBin1dGBnQ/CAM00053.jpg'),
(27, 'Anass Raiss', 'https://lh3.googleusercontent.com/-9ROGYQczvI0/VCwGbLICKOI/AAAAAAAAAHo/_1iapbzDeXQ/CAM00054.jpg'),
(28, 'Amaskane Mehdi', 'https://lh5.googleusercontent.com/-qr-wUPAtCXw/VCwGbmZmTEI/AAAAAAAAAHo/0YRFvhu-fFs/CAM00055.jpg'),
(29, 'Hajbelgacem Mahmoud', 'https://lh6.googleusercontent.com/-niOpN7CuI-c/VDU7CwVd5GI/AAAAAAAAAHo/5qk1Am7f_MI/CAM00056.jpg'),
(30, 'Abdelali Hmessar', 'https://lh4.googleusercontent.com/-qBAiZHHx2Zw/VDU7C-9DPiI/AAAAAAAAAHo/o411doLVRJo/CAM00058.jpg'),
(31, 'Lamlih Zakaria', 'https://lh4.googleusercontent.com/-dOUWRfrZHP0/VDU7D5hvwII/AAAAAAAAAHo/YW9eugKzaQI/CAM00060.jpg'),
(32, 'Saad Benmakhlouf', 'https://lh4.googleusercontent.com/-r65Lzw9gnyg/VDU7EAkGsKI/AAAAAAAAAHo/n6XOjyQkgjI/CAM00061.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `presences`
--

CREATE TABLE IF NOT EXISTS `presences` (
  `id_pre` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `id_etudiant` int(11) NOT NULL,
  PRIMARY KEY (`id_pre`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `presences`
--

INSERT INTO `presences` (`id_pre`, `date`, `id_etudiant`) VALUES
(1, '0000-00-00', 1),
(2, '2015-01-07', 1),
(3, '2015-01-07', 1);