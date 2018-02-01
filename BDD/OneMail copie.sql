
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Jeu 03 Août 2017 à 15:06
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=134 ;

--
-- Contenu de la table `OneMail`
--

INSERT INTO `OneMail` (`id`, `email`, `nbSent`) VALUES
(1, 'julien.gadea@yahoo.fr', 17),
(2, 'julien.ngadea@yahoo.fr', 2),
(3, 'julien@haoo.fr', 11),
(4, 'kartori@yahoo.fr', 18),
(5, 'natissea@voila.fr', 11),
(6, 'lydiereynaud@yahoo.fr', 11),
(7, 'rmedicac@hotmail.com', 11),
(8, 'fortinpatricia0783@orange.fr', 11),
(9, 'chahrazad1980@yahoo.fr', 11),
(10, 'bouuu@hotmail.fr', 11),
(11, 'ptitepuce_caro@hotmail.com', 11),
(12, 'alixfdx.tosolini@orange.fr', 11),
(13, 'afloyer@yucatan.tm.fr', 11),
(14, 'jouenne_emilie@yahoo.fr', 11),
(15, 's.jalek@laposte.net', 11),
(16, 'mathildenussbaum@me.com', 11),
(17, 'ahmed_rzn@hotmail.com', 11),
(18, 'sandra.parets@free.fr', 11),
(19, 'laurence.boutal-rouaux@wanadoo.fr', 11),
(20, 'blandsyrie@yahoo.fr', 11),
(21, 'marianne419@laposte.net', 11),
(22, 'veroniquehoerter@orange.fr', 11),
(23, 'egerha10@caledonian.ac.uk', 11),
(24, 'tess.dasilva@hotmail.fr', 11),
(25, 'stegednt@hotmail.fr', 11),
(26, 'famillegaffet@yahoo.fr', 11),
(27, 'sexyangel54000@hotmail.com', 11),
(28, 'benjamin.nicolas@tlb.sympatico.ca', 11),
(29, 'aurecat25@hotmail.com', 11),
(30, 'sylhagens@yahoo.fr', 11),
(31, 'caroelmamouni@hotmail.fr', 11),
(32, 'cecele43@hotmail.com', 11),
(33, 'sanat.pmi94@yahoo.fr', 11),
(34, 'mariedupierris@neuf.fr', 11),
(35, 'e.mafalda@hotmail.fr', 11),
(36, 'cancatsf@live.fr', 11),
(37, 'gillesvalerie.vincent@neuf.fr', 11),
(38, 'gigi2006jo@yahoo.fr', 11),
(39, 'mlbittar@free.fr', 11),
(40, 'sophiebilaey@orange.fr', 11),
(41, 'cfmt.duhamel@orange.fr', 11),
(42, 'isabelle.ensminger@laposte.net', 11),
(43, 'mariepierre.badia@free.fr', 11),
(44, 'carpentier.p@neuf.fr', 11),
(45, 'audreydac@hotmail.com', 11),
(46, 'helenepayeur04@yahoo.de', 22),
(47, 'leonor@bebeguide.com', 11),
(48, 'mariedard@yahoo.fr', 11),
(49, 'isylvabell@yahoo.fr', 11),
(50, 'louise.ndiaye@yahoo.fr', 11),
(51, 'jums2@hotmail.com', 11),
(52, 'kathycluseau@free.fr', 11),
(53, 'sophie.danguy@gmail.com', 11),
(54, 'christine.aubry@cg60.fr', 11),
(55, 'mariedaban@hotmail.com', 11),
(56, 'carolinethebault@free.fr', 11),
(57, 'vannss@hotmail.fr', 11),
(58, 'babyphat63@hotmail.fr', 11),
(59, 'agnesvigouroux@gmail.com', 11),
(60, 'valeriedupin3@aol.com', 11),
(61, 'jalm81@free.fr', 11),
(62, 'sanpee@voila.fr', 11),
(63, 'deborah.salfati@free.fr', 11),
(64, 'et.spadone@aliceposta.it', 11),
(65, 'tuypens.sandrine@orange.fr', 11),
(66, 'sonia.elhani@gmail.com', 11),
(67, 'abclement@club-internet.fr', 11),
(68, 'docksylvie@yahoo.fr', 11),
(69, 'chouchoune_54@hotmail.com', 11),
(70, 's_sarra@voila.fr', 11),
(71, 'verohoerter@hotmail.fr', 11),
(72, 'naz@maroc.lesaffre.com', 11),
(73, 'elisa.guises@dfc.aphp.fr', 11),
(74, 'vassailly@laposte.net', 11),
(75, 'cemu.sf@free.fr', 11),
(76, 'chamalauMM@wanadoo.fr', 11),
(77, 'fannyjlg@hotmail.fr', 11),
(78, 'bernard.combot@libertysurf.fr', 11),
(79, 'rallye.xs@hotmail.fr', 11),
(80, 'alamiabla@yahoo.fr', 11),
(81, 'charlottemarais0320@orange.fr', 11),
(82, 'pharmaciejeanpetit@wanadoo.fr', 11),
(83, 'helenesautriau@club.fr', 11),
(84, 'bekkarkarate@yahoo.fr', 11),
(85, 'cilou.marion@wanadoo.fr', 11),
(86, 'aurelie.carias@bbox.fr', 11),
(87, 'marie.resistance@yahoo.fr', 11),
(88, 'jp_banea@yahoo.fr', 11),
(89, 'cattarina@cegetel.net', 11),
(90, 'dralaingbogou@yahoo.fr', 11),
(91, 'carine.prunet@culture.gouv.fr', 11),
(92, 'codebarre@noos.fr', 11),
(93, 'ccalvez@ehesp.fr', 11),
(94, 'verolauro@yahoo.fr', 11),
(95, 'makinagoya@yahoo.co.uk', 11),
(96, 'mimiode@wanadoo.fr', 11),
(97, 'bernier.carine@neuf.fr', 11),
(98, 'magi_malo@hotmail.com', 11),
(99, 'ghislain.christel@voila.fr', 11),
(100, 'jocelyne.beaudoin@gmail.com', 11),
(101, 'clairelefebvre@neuf.fr', 11),
(102, 'do.monvoisin@wanadoo.fr', 11),
(103, 'Cindy.daniz@gmail.com', 11),
(104, 'vanillette.blog@gmail.com', 11),
(105, 'celinegerard@hotmail.com', 11),
(106, 'maryjane1979@hotmail.com', 22),
(107, 'Aupal@hotmail.fr', 11),
(108, 'mmarquet@cg91.fr', 11),
(109, '| bprunget@sfr.fr', 11),
(110, 'nora_zemmal@yahoo.fr', 11),
(111, 'doroth50@hotmail.com', 11),
(112, 'documentation@info-allaitement.org', 11),
(113, 'amelie.pierrel@orange.fr', 11),
(114, 'nourel.jessy@hotmail.fr', 11),
(115, 'eds.patricia@wanadoo.fr', 22),
(116, 'g.laurentsagefemme@gmail.com', 11),
(117, 'armand-melanie72@live.fr', 11),
(118, 'f.ribet@orange.fr', 11),
(119, 'kt-973@hotmail.fr', 11),
(120, 'fabiennegilles@valdemarne.fr', 11),
(121, 'celine.buhler@info-allaitement.org', 11),
(122, 'alizeta.saga@yahoo.fr', 11),
(123, 'lae.ballesteros@gmail.com', 11),
(124, 'sabine.cascarre@valdoise.fr', 11),
(125, 'tiphaineb2008@yahoo.fr', 11),
(126, 'chouraminiar@gmail.com', 11),
(127, 'johanna.vermet@bbox.fr', 11),
(128, 'losseff.stephane@orange.fr', 11),
(129, 'melania.dediu@yahoo.fr', 9),
(130, 'julien_g_377@yahoo.fr', 22),
(131, 'j@aze.fr', 3),
(132, 'julien@yahoo.fr', 2),
(133, 'exemple@yahoo.fr', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
