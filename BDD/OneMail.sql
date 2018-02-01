
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Jeu 18 Mai 2017 à 02:31
-- Version du serveur: 10.1.22-MariaDB
-- Version de PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `u985871883_mysup`
--

-- --------------------------------------------------------

--
-- Structure de la table `OneMail`
--

CREATE TABLE IF NOT EXISTS `OneMail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nbSent` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=131 ;

--
-- Contenu de la table `OneMail`
--

INSERT INTO `OneMail` (`id`, `email`, `nbSent`) VALUES
(1, 'julien.gadea@yahoo.fr', 7),
(2, 'julien.ngadea@yahoo.fr', 2),
(3, 'julien@haoo.fr', 5),
(4, 'kartori@yahoo.fr', 7),
(5, 'natissea@voila.fr', 5),
(6, 'lydiereynaud@yahoo.fr', 5),
(7, 'rmedicac@hotmail.com', 5),
(8, 'fortinpatricia0783@orange.fr', 5),
(9, 'chahrazad1980@yahoo.fr', 5),
(10, 'bouuu@hotmail.fr', 5),
(11, 'ptitepuce_caro@hotmail.com', 5),
(12, 'alixfdx.tosolini@orange.fr', 5),
(13, 'afloyer@yucatan.tm.fr', 5),
(14, 'jouenne_emilie@yahoo.fr', 5),
(15, 's.jalek@laposte.net', 5),
(16, 'mathildenussbaum@me.com', 5),
(17, 'ahmed_rzn@hotmail.com', 5),
(18, 'sandra.parets@free.fr', 5),
(19, 'laurence.boutal-rouaux@wanadoo.fr', 5),
(20, 'blandsyrie@yahoo.fr', 5),
(21, 'marianne419@laposte.net', 5),
(22, 'veroniquehoerter@orange.fr', 5),
(23, 'egerha10@caledonian.ac.uk', 5),
(24, 'tess.dasilva@hotmail.fr', 5),
(25, 'stegednt@hotmail.fr', 5),
(26, 'famillegaffet@yahoo.fr', 5),
(27, 'sexyangel54000@hotmail.com', 5),
(28, 'benjamin.nicolas@tlb.sympatico.ca', 5),
(29, 'aurecat25@hotmail.com', 5),
(30, 'sylhagens@yahoo.fr', 5),
(31, 'caroelmamouni@hotmail.fr', 5),
(32, 'cecele43@hotmail.com', 5),
(33, 'sanat.pmi94@yahoo.fr', 5),
(34, 'mariedupierris@neuf.fr', 5),
(35, 'e.mafalda@hotmail.fr', 5),
(36, 'cancatsf@live.fr', 5),
(37, 'gillesvalerie.vincent@neuf.fr', 5),
(38, 'gigi2006jo@yahoo.fr', 5),
(39, 'mlbittar@free.fr', 5),
(40, 'sophiebilaey@orange.fr', 5),
(41, 'cfmt.duhamel@orange.fr', 5),
(42, 'isabelle.ensminger@laposte.net', 5),
(43, 'mariepierre.badia@free.fr', 5),
(44, 'carpentier.p@neuf.fr', 5),
(45, 'audreydac@hotmail.com', 5),
(46, 'helenepayeur04@yahoo.de', 10),
(47, 'leonor@bebeguide.com', 5),
(48, 'mariedard@yahoo.fr', 5),
(49, 'isylvabell@yahoo.fr', 5),
(50, 'louise.ndiaye@yahoo.fr', 5),
(51, 'jums2@hotmail.com', 5),
(52, 'kathycluseau@free.fr', 5),
(53, 'sophie.danguy@gmail.com', 5),
(54, 'christine.aubry@cg60.fr', 5),
(55, 'mariedaban@hotmail.com', 5),
(56, 'carolinethebault@free.fr', 5),
(57, 'vannss@hotmail.fr', 5),
(58, 'babyphat63@hotmail.fr', 5),
(59, 'agnesvigouroux@gmail.com', 5),
(60, 'valeriedupin3@aol.com', 5),
(61, 'jalm81@free.fr', 5),
(62, 'sanpee@voila.fr', 5),
(63, 'deborah.salfati@free.fr', 5),
(64, 'et.spadone@aliceposta.it', 5),
(65, 'tuypens.sandrine@orange.fr', 5),
(66, 'sonia.elhani@gmail.com', 5),
(67, 'abclement@club-internet.fr', 5),
(68, 'docksylvie@yahoo.fr', 5),
(69, 'chouchoune_54@hotmail.com', 5),
(70, 's_sarra@voila.fr', 5),
(71, 'verohoerter@hotmail.fr', 5),
(72, 'naz@maroc.lesaffre.com', 5),
(73, 'elisa.guises@dfc.aphp.fr', 5),
(74, 'vassailly@laposte.net', 5),
(75, 'cemu.sf@free.fr', 5),
(76, 'chamalauMM@wanadoo.fr', 5),
(77, 'fannyjlg@hotmail.fr', 5),
(78, 'bernard.combot@libertysurf.fr', 5),
(79, 'rallye.xs@hotmail.fr', 5),
(80, 'alamiabla@yahoo.fr', 5),
(81, 'charlottemarais0320@orange.fr', 5),
(82, 'pharmaciejeanpetit@wanadoo.fr', 5),
(83, 'helenesautriau@club.fr', 5),
(84, 'bekkarkarate@yahoo.fr', 5),
(85, 'cilou.marion@wanadoo.fr', 5),
(86, 'aurelie.carias@bbox.fr', 5),
(87, 'marie.resistance@yahoo.fr', 5),
(88, 'jp_banea@yahoo.fr', 5),
(89, 'cattarina@cegetel.net', 5),
(90, 'dralaingbogou@yahoo.fr', 5),
(91, 'carine.prunet@culture.gouv.fr', 5),
(92, 'codebarre@noos.fr', 5),
(93, 'ccalvez@ehesp.fr', 5),
(94, 'verolauro@yahoo.fr', 5),
(95, 'makinagoya@yahoo.co.uk', 5),
(96, 'mimiode@wanadoo.fr', 5),
(97, 'bernier.carine@neuf.fr', 5),
(98, 'magi_malo@hotmail.com', 5),
(99, 'ghislain.christel@voila.fr', 5),
(100, 'jocelyne.beaudoin@gmail.com', 5),
(101, 'clairelefebvre@neuf.fr', 5),
(102, 'do.monvoisin@wanadoo.fr', 5),
(103, 'Cindy.daniz@gmail.com', 5),
(104, 'vanillette.blog@gmail.com', 5),
(105, 'celinegerard@hotmail.com', 5),
(106, 'maryjane1979@hotmail.com', 10),
(107, 'Aupal@hotmail.fr', 5),
(108, 'mmarquet@cg91.fr', 5),
(109, '| bprunget@sfr.fr', 5),
(110, 'nora_zemmal@yahoo.fr', 5),
(111, 'doroth50@hotmail.com', 5),
(112, 'documentation@info-allaitement.org', 5),
(113, 'amelie.pierrel@orange.fr', 5),
(114, 'nourel.jessy@hotmail.fr', 5),
(115, 'eds.patricia@wanadoo.fr', 10),
(116, 'g.laurentsagefemme@gmail.com', 5),
(117, 'armand-melanie72@live.fr', 5),
(118, 'f.ribet@orange.fr', 5),
(119, 'kt-973@hotmail.fr', 5),
(120, 'fabiennegilles@valdemarne.fr', 5),
(121, 'celine.buhler@info-allaitement.org', 5),
(122, 'alizeta.saga@yahoo.fr', 5),
(123, 'lae.ballesteros@gmail.com', 5),
(124, 'sabine.cascarre@valdoise.fr', 5),
(125, 'tiphaineb2008@yahoo.fr', 5),
(126, 'chouraminiar@gmail.com', 5),
(127, 'johanna.vermet@bbox.fr', 5),
(128, 'losseff.stephane@orange.fr', 5),
(129, 'melania.dediu@yahoo.fr', 5),
(130, 'julien_g_377@yahoo.fr', 11);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
