-- phpMyAdmin SQL Dump
-- version 4.4.11
-- http://www.phpmyadmin.net
--
-- Host: dedi507.your-server.de
-- Erstellungszeit: 22. Dez 2015 um 10:57
-- Server-Version: 5.5.46-0+deb7u1
-- PHP-Version: 5.3.10-1ubuntu3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `wbt_intranet_v3`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `addresses`
--

CREATE TABLE IF NOT EXISTS `addresses` (
  `id` int(11) NOT NULL,
  `workgroup_id` int(11) NOT NULL,
  `company` varchar(45) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `zip` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `country` varchar(45) NOT NULL,
  `www` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `category` varchar(150) NOT NULL,
  `position` varchar(150) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `tel2` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `fax` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=549 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `addresses`
--

INSERT INTO `addresses` (`id`, `workgroup_id`, `company`, `firstname`, `name`, `street`, `zip`, `city`, `country`, `www`, `email`, `category`, `position`, `tel`, `tel2`, `mobile`, `fax`) VALUES
(1, 1, 'coop eG', 'Christian', 'Mixdorf', 'Benzstraße 10', '24148', 'Kiel', 'Deutschland', 'http://www.coop.de /priv.C.mixdorf', 'Christian.Mixdorf@coop.de /priv.C.mixdorf@dwaarsloeper.de', 'Kunde', 'Leiter Marketing', '0431 / 7250-765', '', '0151 / 24040870', '0431 / 7250-429'),
(2, 1, 'Kath Gruppe', 'André', 'Kock', 'Friedrichsorter Str. 74', '24159', 'Kiel ', 'Deutschland', 'http://www.kath-gruppe.de', 'Andre.Kock@kath-gruppe.de', 'Kunde', 'Verkaufsberater', '0431 / 399 67 - 77', '', '', '0431 / 399 67 - 70'),
(3, 1, 'A118  Werbestudio Kiel', 'Annette ', 'Haevernick', 'Dammstraße 17', '24103', 'Kiel', 'Deutschland', 'http://www.a118-kiel.de', 'aha@a118-kiel.de', 'Kunde', '', '0431 / 2603335', '', '', '0431 / 2603337'),
(4, 1, 'Abfallwirtschaftsbetrieb Kiel ', 'Rolf ', 'Eichholz', 'Daimlerstraße 2', '24109', 'Kiel', 'Deutschland', 'http://www.abki.de', 'rolf.eichholz@abki.de', 'Kunde', '', '0431 / 5854-132', '', '', '0431 / 5854-115'),
(5, 1, 'Abfallwirtschaftsbetrieb Kiel ', 'Katharina ', 'Arndt', 'Daimlerstraße 2', '24109', 'Kiel', 'Deutschland', 'http://www.abki.de', 'katharina.arndt@abki.de', 'Kunde', '', '0431 / 5854-176', '', '', ''),
(6, 1, 'Abfallwirtschaftsbetrieb Kiel ', 'Burkhard ', 'Abromeit', 'Daimlerstraße 2', '24109', 'Kiel', 'Deutschland', 'http://www.abki.de', 'burkhard.abromeit@abki.de', 'Kunde', '', '0431 / 5854-231', '', '', '0431 / 5854-135'),
(7, 1, 'Abfallwirtschaftsbetrieb Kiel ', 'Enno', 'Petras', 'Daimlerstraße 2', '24109', 'Kiel', 'Deutschland', 'http://www.abki.de', 'enno.petras@abki.de', 'Kunde', '', '0431 / 5854-?', '', '', '0431 / 5854-135'),
(8, 1, 'Achilles ', 'Michael', 'Wagner', 'Buchkampweg 40', '29227', 'Celle', 'Deutschland', 'http://www.achilles.de', 'mwr@achilles.de', 'Kunde', '', '040 / 57260935', '', '', ''),
(9, 1, 'TV Link GmbH / Sylt1', 'Axel', 'Link', 'Renè-Magritte-Promenade 7', '50858', 'Köln', 'Deutschland', 'http://www.tvlink.de', 'link@tvlink.de', 'Kunde', 'GF', '0221-942049-0', '', '', ''),
(10, 1, 'Adolf van Wahden GmbH', '', 'Frau Pukall', 'Mannhagener Straße 11', '23896', 'Hammer', 'Deutschland', '', '', 'Kunde', '', '', '', '', ''),
(11, 1, 'act GmbH ', 'Dr. Rolf', 'Schwerdtfeger', 'Koboldstraße 4', '24118', 'Kiel', 'Deutschland', 'http://www.actgmbh.de', 'r.schwerdtfeger@actgmbh.de', 'Kunde', 'GF', '0431 / 8880333', '', '0160 / 96396345', '0431 /  8880399'),
(12, 1, 'AKI Altonaer Kaviar Import Haus', '', 'Herr Rüsch', 'Schmarjestraße 44', '22767', 'Hamburg', 'Deutschland', 'http://www.aki-hamburg.de', 'm.ruesch@aki-hamburg.de', 'Kunde', '', '040 / 381780/89', '', '0177 / 9660215', '040 / 387973'),
(13, 1, 'Amcor White Cap  Deutschland GmbH ', '', 'Herr Müller-Kersten', 'Hansastraße 35', '30419', 'Hannover', 'Deutschland', '', '', 'Kunde', '', '', '', '', ''),
(14, 1, 'Appelwarder  Spez.-Kate Knud Klüver GmbH & Co', 'Knud ', 'Klüver', 'Appelwarder 3', '24211', 'Kühren', 'Deutschland', 'http://www.appelwarder.de; info', 'knud.kluever@appelwarder.de; info@appelwarder.de', 'Kunde', '', '04342 / 88799', '', '0171 / 6761897', '04342 / 887988 '),
(15, 1, 'Architekturbüro Giese + Hanke GbR', 'Klaus ', 'Giese', 'Noorstraße 22', '24340', 'Eckernförde', 'Deutschland', '', '', 'Kunde', '', '04351 - 6062', '', '', '04351 - 6063'),
(16, 1, 'Arte Commerciale Fotografie', 'Frauke ', 'Antholz', 'Auberg 35', '24106', 'Kiel', 'Deutschland', 'http://www.fraukeantholz.de', 'info@fraukeantholz.de', 'Kunde', '', '0431 - 338118', '', '016096233907', ''),
(17, 1, 'Autohaus Ost GmbH', '', '', 'Klausdorfer Weg 173', '24148', 'Kiel', 'Deutschland', 'http://www.autohaus-ost.de', 'info@autohaus-ost.de', 'Kunde', '', '0431 - 720830', '', '', '0431 - 7208311'),
(18, 1, 'Achilles', 'Hartmut', 'Reimers', 'Buchkampsweg 40', '29227', 'Celle', 'Deutschland', 'http://www.achilles.de', 'Hartmut.Reimers@achilles.de', 'Kunde', '', '05141 / 753115', '', '', '05141 / 753249'),
(19, 1, 'Bäckerei Bahde GmbH', 'Peter ', 'Asche', 'Nessdeich 166', '21129', 'Hamburg', 'Deutschland', 'http://www.bahde.de', 'asche@bahde.de', 'Kunde', 'Geschäftsführer', '040 / 7426579', '', '0170 / 5510170', '040 /  7425706 '),
(20, 1, 'Bildungsforum Nord GmbH i.H. TSBW', 'Henning ', 'Weitze', 'Theodor-Schäfer-Straße 14-26', '25813', 'Husum', 'Deutschland', 'http://www.bildungsforum-nord.de', 'henning.weitze@bildungsforum-nord.de', 'Kunde', '', '04841 / 8992865', '', '0176 / 22860354', ''),
(21, 1, 'Bock, Dieter Tischlerei', 'Dieter', 'Bock', 'Uferstraße 12', '24106', 'Kiel', 'Deutschland', '', '', 'Kunde', '', '0431 / 336686', '', '', '0431 / 330374'),
(22, 1, 'Böklunder Plumrose GmbH & Co. KG', 'Peter', 'zur Mühlen', 'Gewerbestraße', '24860', 'Böklund', 'Deutschland', 'http://www.boeklunder-plumrose.de', 'evelin.ruschenski@boeklunder-plumrose.de', 'Kunde', '', '04623 / 77311', '', '', '04623 / 77132'),
(23, 1, 'Böklunder Plumrose GmbH & Co. KG', 'Dörte', 'Truelsen', 'Gewerbestraße', '24860', 'Böklund', 'Deutschland', 'http://www.boeklunder-plumrose.de', 'doerte.truelsen@boeklunder-plumrose.de', 'Kunde', '', '04623 / 77124', '', '', '04623 / 77132'),
(24, 1, 'Böklunder Plumrose GmbH & Co. KG', '', 'Frau Ruschenski', 'Gewerbestraße', '24860', 'Böklund', 'Deutschland', 'http://www.boeklunder-plumrose.de', 'evelin.ruschenski@boeklunder-plumrose.de', 'Kunde', '', '04623 / 77312', '', '', '04623 / 77132'),
(25, 1, 'Benthin, Schwark, Hansen, Kühl  Wirtschaftspr', 'Dirk-Henning', 'Schwark', 'Hopfenstraße 2 c-d', '24114', 'Kiel', 'Deutschland', 'http://www.stb-kiel.de', 'kanzlei@stb-kiel.de', 'Kunde', '', '0431 / 6592813', '', '', '0431 / 6592833 '),
(26, 1, 'Benthin, Schwark, Hansen, Kühl  Wirtschaftspr', 'Nicole', 'Möller', 'Schmiederedder 1 c', '24251', 'Osdorf', 'Deutschland', 'http://www.stb-kiel.de', 'moeller@stb-kiel.de', 'Kunde', '', '0431 / 6592814 (04346 / 601171', '', '', '0431 / 6592833  (04346 / 60117)'),
(27, 1, 'Börner-Eisenacher GmbH ', 'Frank Walter ', 'Eisenacher', 'Robert-Bosch-Breite 5', '37079', 'Göttingen', 'Deutschland', 'http://www.boerner-eisenacher.de', 'eisenacher@boerner-eisenacher.de', 'Kunde', '', '0551 / 69420', '', '', '0551 / 694250'),
(28, 1, 'Bohrmann Peter Cocktails / Barkeeper (ehemals', 'Peter', 'Bohrmann', 'Haselbusch 30', '24146', 'Kiel ', 'Deutschland', '', '', 'Kunde', '', '0431 / 783488', '', '0160 / 93824922', ''),
(29, 1, 'coop eG', '', 'Zentrale', 'Benzstraße 10', '24148', 'Kiel', 'Deutschland', '', '', 'Kunde', '', '0431 / 7250-0', '', '', ''),
(30, 1, 'coop eG / ausgeschieden', 'Gerd', 'Müller ', 'Benzstraße 10', '24148', 'Kiel', 'Deutschland', 'http://www.coop.de', 'gerd.mueller@coop.de', 'Kunde', 'Sprecher (Sekr. Fr. Orwat) ', '0431 / 7250-?', '', '0151 / 16710087', ''),
(31, 1, 'coop eG', 'Katrin', 'Schümann', 'Benzstraße 10', '24148', 'Kiel', 'Deutschland', 'http://www.coop.de', 'katrin.schuemann@coop.de', 'Kunde', 'Sekretärin K.Lüdemann', '0431 / 7250282', '', '', ''),
(32, 1, 'coop eG', 'Klaus', 'Lüdemann', 'Benzstraße 10', '24148', 'Kiel', 'Deutschland', 'http://www.coop.de', 'klaus.luedemann@coop.de', 'Kunde', 'Vertrieb', '0431 / 7250503', '', '0160 / 96381022', ''),
(33, 1, 'coop eG', 'Thorsten', 'Greiner', 'Benzstraße 10', '24148', 'Kiel', 'Deutschland', 'http://www.coop.de', 'thorsten.greiner@coop.de', 'Kunde', '', '0431 / 7250232', '', '0151 / 27012399', ''),
(34, 1, 'coop eG', '', 'Frau Lüdemann', 'Benzstraße 10', '24148', 'Kiel', 'Deutschland', '', '', 'Kunde', 'Mitgliederabteilung', '0431 - 7250-555', '', '', ''),
(35, 1, 'Food + Trend GmbH ', 'Peter', 'Schöftner', 'Adelheidstraße 4/5', '30171', 'Hannover', 'Deutschland', 'http://www.food-trend.info', 'a.schoeftner@food-trend.info', 'Kunde', 'Geschäftsführer', '0511 / 3069120', '', '0177 / 8885611', '0511 / 3069122'),
(36, 1, 'coop eG', 'Annika', 'Neupert', 'Benzstraße 10', '24148', 'Kiel ', 'Deutschland', 'http://www.coop.de', 'Annika.Neupert@coop.de', 'Kunde', 'Projektmanagerin i.E. Einkauf und Category Management', '0431 / 7250 - 463', '', '', '0431 / 7250 - 331'),
(37, 1, 'coop eG', 'Olaf', 'Cordt', 'Benzstraße 10', '24148', 'Kiel', 'Deutschland', 'http://www.coop.de', 'olaf.cordt@coop.de', 'Kunde', 'Marketing', '0431 / 7250 - 760', '', '', '0431 / 7250 - 429'),
(38, 1, 'coop eG', 'Alexa', 'Kudoke', 'Benzstraße 10', '24148', 'Kiel', 'Deutschland', 'http://www.coop.de', 'alexa.kudoke@coop.de', 'Kunde', 'Marketing', '0431 / 7250 - 224', '', '', ''),
(39, 1, 'L+L Werbung GbR', 'Marc', 'Goltz', 'PorscheRing 4', '24568', 'Kaltenkirchen', 'Deutschland', 'http://www.LL-Werbung.com ', 'luther@LL-Werbung.com ', 'Kunde', 'Beratung', '04191 / 87 31 850', '', '0160 / 77 60 489', '04191 / 87 31 854'),
(40, 1, 'coop eG', 'Iris', 'Wolfgramm', 'Benzstraße 10', '24148', 'Kiel', 'Deutschland', 'http://www.coop.de', 'iris.wolfgramm@coop.de', 'Kunde', 'Sekretärin H.Thomas', '0431 / 7250-781', '', '', ''),
(41, 1, 'coop eG', 'Anika', 'Spallek', 'Benzstraße 10', '24148', 'Kiel', 'Deutschland', 'http://www.coop.de', 'anika.spallek@coop.de', 'Kunde', 'Unternehmenkommunikation', '0431 / 7250 - 365', '', '', '0431 / 7250 - 425'),
(42, 1, 'coop eG', 'Dennis', 'Wolf', 'Benzstraße 10', '24148', 'Kiel', 'Deutschland', 'http://www.coop.de', 'dennis.wolf@coop.de', 'Kunde', 'Marketing', '0431 / 7250 - 561', '', '', '0431 / 7250 - 429'),
(43, 1, 'coop eG', 'Katharine', 'Michelsen', 'Benzstraße 10', '24148', 'Kiel', 'Deutschland', 'http://www.coop.de', 'michelsen@coop.de', 'Kunde', 'UN-Koordination, Produktmanagerin/Einkauf Service', '0431 / 7250 - 551', '', '0151-12138256', '0431 / 7250 - 331'),
(44, 1, 'concept:b2b Limited ', 'Gabriele', 'Andersen', 'Schauenburgerstraße 116', '24118', 'Kiel', 'Deutschland', 'http://www.conceptb2b.de', 'info@conceptb2b.de', 'Kunde', '', '0431 / 5606317', '', '', '0431/ 5606 316'),
(45, 1, 'ECE Projektmanagement G.m.b.H. & Co. KG', 'Sophie', 'Dukat', 'Sophienblatt 20', '24103', 'Kiel', 'Deutschland', 'http://www.ece.com', 'Sophie.Dukat@ece.com', 'Kunde', 'Centermanagerin', '0431 / 673044', '', '', '0431 / 673049'),
(46, 1, 'Delkeskamp Verpackungswerke GmbH', '', 'Herr Huslag', 'Hauptstraße 15', '49638', 'Nortrup', 'Deutschland', 'http://www.delkeskamp.de', 'info@delkeskamp.de', 'Kunde', '', '05436 / 510', '', '', ''),
(47, 1, 'Deutsche Post AGPhilatelie Team Plusbrief', '', 'Frau Gmeiner', 'Franz-Zebisch-Straße 15', '92637', 'Weiden', 'Deutschland', 'http://www.deutschepost.de', 'team-plusbrief@deutschepost.de', 'Kunde', '', '01805 / 018005', '', '', '0961 / 3818293953'),
(48, 1, 'Telekom Deutschland GmbH', 'Herr', 'Ewers', '', '0', '', 'Deutschland', '', '', 'Kunde', 'Servicetechniker ', '', '', '0171 / 56 16 757', ''),
(49, 1, 'Telekom Deutschland GmbH', 'Herr', 'Berger', '', '0', '', 'Deutschland', '', '', 'Kunde', 'Innendienst', '0451 / 488 24 16', '', '', ''),
(50, 1, 'Die Thüringer  Fleisch- und Wurstspezialitäte', 'Matthias', 'Gaida ', 'Am Lohfeld 1', '99310', 'Dornheim', 'Deutschland', 'http://www.die-thueringer.de', 'm.gaida@die-thueringer.de', 'Kunde', '', '03628 / 744220', '', '0173 / 2902429', '03628 / 744445'),
(51, 1, 'Die Thüringer  Fleisch- und Wurstspezialitäte', 'Lars ', 'Kleiber', 'Am Lohfeld 1', '99310', 'Dornheim', 'Deutschland', 'http://www.thueringer-wurst.com', 'info@thueringer-wurst.com', 'Kunde', '', '03628 / 744110', '', '', '03628 / 744445'),
(52, 1, 'Die Thüringer Fleisch- und Wurstspezialitäten', '', 'Herr Müller', 'Oderbruchstraße 10', '10369', 'Berlin', 'Deutschland', 'http://www.die-Thueringer.de', 'h.mueller@die-Thueringer.de', 'Kunde', '', '030 / 97895603', '', '0172 / 3693022', '030 / 97895789'),
(53, 1, 'Diakonisches Werk Schleswig-Holstein', '', 'Herrn Agge', 'Kanalufer 48 (Martinshaus)', '24768', 'Rendsburg', 'Deutschland', 'http://www.diakonie-sh.de', 'agge@diakonie-sh.de', 'Kunde', '', '04331 / 5930', '', '', ''),
(54, 1, 'Englert Feinkostspezialitäten ', 'Ulrich ', 'Englert ', 'Rechtenbacher Straße 33', '97816', 'Lohr am Main', 'Deutschland', 'http://www.feinkost-englert.de', 'verkauf@feinkost-englert.de', 'Kunde', '', '0935 / 874711', '', '', ''),
(55, 1, 'Ethicon Endo Surgery GmbH ', 'Bente ', 'Kilian', 'Hummelsbütteler Steindamm 71', '22851', 'Norderstedt', 'Deutschland', 'http://www.its.jnj.com', 'bkilian@its.jnj.com', 'Kunde', '', '040 / 5297-3173', '', '', '040 / 5297-23173'),
(56, 1, 'Ethicon Endo Surgery GmbH ', 'Volker ', 'Kruse', 'Hummelsbütteler Steindamm 71', '22851', 'Norderstedt', 'Deutschland', 'http://www.ethde.jnj.com', 'vkruse@ethde.jnj.com', 'Kunde', '', '040 / 529702', '', '', '040 / 52973159'),
(57, 1, 'Eidmann ', 'Dirk ', 'Thesenvitz', 'Karl-Eidmann-Straße 19', '63486', 'Bruchköbel', 'Deutschland', 'http://www.eidmann.de', 'd.thesenvitz@eidmann.de', 'Kunde', '', '06181 / 97000', '', '', '06181 / 970050'),
(58, 1, 'Eggers Druckerei und Verlag ', 'Dirk', 'Loyek', 'Sundweg 1', '23774', 'Heiligenhafen', 'Deutschland', 'http://www.eggers-druck.de', 'info@eggers-druck.de', 'Kunde', '', '04362 / 902351', '', '', '04362 / 902346'),
(59, 1, 'EEC  Ellen Ehrich Consulting ', 'Ellen', 'Ehrich', 'Neuer Wall 44', '20354', 'Hamburg', 'Deutschland', 'http://www.eec-ehrich.de', 'info@eec-ehrich.de', 'Kunde', '', '040 / 34809559', '', '0172 / 6632972', '040 / 34809557'),
(60, 1, 'Erler + Pless  GmbH', '', 'Marion Pleschke', 'Böckmannstraße 56', '20099', 'Hamburg', 'Deutschland', 'http://www.erlerundpless.de', 'm.pleschke@erlerundpless.de', 'Kunde', '', '040 / 24844837', '', '', '040 / 24844840'),
(61, 1, 'Nordische Leuchtröhrenges. mbH', 'Sabine', 'Blöcker', 'Barkauer Str. 121', '24145', 'Kiel ', 'Deutschland', 'http://www.nordische-kiel.de', 'sabine.bloecker@nordische-kiel.de', 'Kunde', 'Geschäftsführerin', '0431 / 71 11 41', '', '0171 / 241 0 414 ', '0431 / 71 48 83'),
(62, 1, 'eyekey design ', 'Martin', 'Papp', 'Am Kiel-Kanal 2', '24106', 'Kiel', 'Deutschland', 'http://www.eyekey.de', 'info@eyekey.de', 'Kunde', '', '0431 / 5708093', '', '', '0431 / 5708073'),
(63, 1, 'Klinik', 'Kathrin', 'Buchsteines', 'Lindenstr.22', '73333', 'Gingen/ Fils', 'Deutschland', 'http://www.buchsteines.de', 'klinik@buchsteines.de', 'Kunde', '', '0716-2409625', '', '', '0716-26752'),
(64, 1, 'franke.tv media relations', 'Andreas', 'Franke', 'Max-Eyth-Straße 45', '30173', 'Hannover', 'Deutschland', 'http://www.franke.tv', 'info@franke.tv', 'Kunde', '', '0511 / 282229', '', '', '0511 / 282267'),
(65, 1, 'Gerd Uelzmann Training', 'Gerd', 'Uelzmann', 'Adalbertstraße 21', '24106', 'Kiel', 'Deutschland', 'http://www.uelzmann-gut.de', 'gerd@uelzmann-gut.de', 'Kunde', '', '0431 / 337569', '', '', '0431 / 337575'),
(66, 1, 'Giffits GmbH', 'Katja', 'Gilke', 'Weidestraße 122 b', '22083', 'Hamburg', 'Deutschland', 'http://www.Giffits.de', 'Katja.Gilke@Giffits.de', 'Kunde', '', '040 / 278820123', '', '', ''),
(67, 1, 'GEWOBA Nord Baugenossenschaft eG', 'Steffan', 'Liebscher', 'Moltkestraße 32', '24837', 'Schleswig', 'Deutschland', 'http://www.gewoba-nord.de', 's.liebscher@gewoba-nord.de', 'Kunde', 'Vorstand', '04621 / 811-400', '', '0170 / 818502', '04621 / 811-811'),
(68, 1, 'GEWOBA Nord Baugenossenschaft eG', 'Harald ', 'Raabe', 'Moltkestraße 32', '24837', 'Schleswig', 'Deutschland', 'http://www.gewoba-nord.de', 'h.raabe@gewoba-nord.de', 'Kunde', '', '04621 / 811-320', '', '', '04621 / 811-810'),
(69, 1, 'Appelwarder Spez.-Kate Knud Klüver GmbH & Co.', 'Heiko', 'Klüver', 'Appelwarder 3', '24211', 'Kühren', 'Deutschland', 'http://www.appelwarder.de', 'heiko.kluever@appelwarder.de', 'Kunde', '', '04342 / 8879-9', '', '', ''),
(70, 1, 'GEWOBA Nord Baugenossenschaft eG', 'Frank', 'Fahr', 'Am Markt 4', '24955', 'Harrislee', 'Deutschland', 'http://www.gewoba-nord.de', 'f.fahr@gewoba-nord.de', 'Kunde', '', '0461 / 773000', '', '', '0461 / 7730014'),
(71, 1, 'Sass Gastro GmbH', 'Volker', 'Saß', 'Buhne 1', '25826', 'St.Peter-Ording', 'Deutschland', 'http://www.gosch-spo.de', 'info.gosch-spo.de / volker.sass@gosch-spo.de', 'Kunde', 'Geschäftsführer', '04863-4787090', '', '0178-8811366', '04863-478099'),
(72, 1, 'GEWOBA Nord Baugenossenschaft eG', 'Dietmar ', 'Jonscher', 'Moltkestraße 32', '24837', 'Schleswig', 'Deutschland', 'http://www.gewoba-nord.de', 'd.jonscher@gewoba-nord.de', 'Kunde', '', '04621 / 811-410', '', '', '04621 / 811-810'),
(73, 1, 'Gissler & Pass GmbH', '', 'Herr Maruszczyk', 'Dürmer Straße 12', '52428', 'Jülich', 'Deutschland', 'http://www.gissler-pass.de', 'info@gissler-pass.de', 'Kunde', '', '02461 / 6840', '', '', '02461 / 684179'),
(74, 1, 'GO (General OverNight)Express & Logistics Ser', '', '', 'Edisonstraße 64', '24145', 'Kiel', 'Deutschland', 'http://www.general-overnight.com', 'info@general-overnight.com', 'Kunde', '', '0431 / 710690', '', '', '0431 / 7106999'),
(75, 1, 'GO Systemelektronik ', '', 'Frau Hass', 'Faluner Weg 1', '24109', 'Kiel ', 'Deutschland', 'http://www.go-sys.de', 'info@go-sys.de', 'Kunde', '', '0431 / 580800', '', '', '0431 / 58080-11'),
(76, 1, 'Pic-a-Pic', 'Thorolf', 'Gorski', 'Varzinerstr.13-14', '12161', 'Berlin', 'Deutschland', 'http://www.yahoo.de', 'picdesign@yahoo.de', 'Kunde', '', '0431- 800 89 49', '', '0160-97355084', ''),
(77, 1, 'GOSCH Verwaltungs GmbH  & Co. KG', 'Jürgen', 'Gosch ', 'Hafenstraße 16 ', '25992', 'List / Sylt', 'Deutschland', '', '', 'Kunde', 'Inhaber', '04651 / 9519-0', '', '0160 / 90171261', '04651 / 94732 (Fax pr.) '),
(78, 1, 'GOSCH Jürgen Gosch Verwaltungs GmbH  & Co. KG', 'Daniel', 'Krämer', 'Hafenstraße 16 ', '25992', 'List / Sylt', 'Deutschland', 'http://www.gosch.de', 'd.kraemer@gosch.de', 'Kunde', 'Restaurantleitung', '04651 / 8360966', '', '', ''),
(79, 1, 'GOSCH Verwaltungs GmbH  & Co. KG', 'Michael', 'Lorenzen', 'Hafenstraße 16 ', '25992', 'List / Sylt', 'Deutschland', 'http://www.gosch.de', 'm.lorenzen@gosch.de', 'Kunde', 'Prokurist', '04651 / 951921', '', '0160 / 90171259', '04651 / 9519271 '),
(80, 1, 'GOSCH Jürgen Gosch Verwaltungs GmbH  & Co. KG', 'Ramona', 'Nagel', 'Hafenstraße16 ', '25992', 'List / Sylt', 'Deutschland', 'http://www.gosch.de', 'r.nagel@gosch.de', 'Kunde', '', '04651 / 951923', '', '', '04651 / 951924'),
(81, 1, 'GOSCH München Josef Rubenbauer GmbH & Co.KG', 'Thomas', 'Hobmaier', 'Bahnhofplatz 2', '80335', 'München', 'Deutschland', 'http://www.josef-rubenbauer.de oder t.hobmaier', 'thomas.hobmaier@josef-rubenbauer.de oder t.hobmaier@rubenbauer.com', 'Kunde', 'Einkaufsleiter', '089 / 549071-17', '', '0173 / 3990913', '089 / 549071-90'),
(82, 1, 'GOSCH Verwaltungs GmbH  & Co. KG', 'Rüdiger ', 'Brochonski ', 'Hafenstraße 16 ', '25992', 'List / Sylt', 'Deutschland', 'http://www.gosch.de', 'r.brochonski@gosch.de', 'Kunde', 'Einkauf Nonfood', '04651 / 951925', '', '0170 / 7350008', '04651 / 9519275'),
(83, 1, 'Vermarktungsgesellschaft Bio-Bauern mbH', 'Moritz', 'zu Dohna-Schlodien', 'Marktplatz 19', '86554', 'Pöttmes', 'Deutschland', 'http://www.bio-vg.de', 'moritz.dohna@bio-vg.de', 'Kunde', 'Geschäftsführer', '08253-99702010', '', ' 0160-90518878', '08253-99702020'),
(84, 1, 'GOSCH Gosch Sylt Verarbeitungsbetrieb GmbH', 'Michael', 'Agatz / Produktionsleiter', 'Langacker 17', '24870', 'Ellingstedt', 'Deutschland', 'http://www.gosch-produktion.de', 'agatz@gosch-produktion.de', 'Kunde', '', '04627 / 1831-21', '', '', '04627 / 1831-11'),
(85, 1, 'GOSCH Gosch Sylt Verarbeitungsbetrieb GmbH', 'Stefan', 'Prang', 'Langacker 17', '24870', 'Ellingstedt', 'Deutschland', 'http://www.gosch-produktion.de', 'prang@gosch-produktion.de', 'Kunde', 'Lagerleitung', '04627 / 1831-31', '', '', '04627 / 1831-11'),
(86, 1, 'GOSCH Gosch Sylt Verarbeitungsbetrieb GmbH', 'Friedrich-Wilhelm  ', 'Kiy / BL/PL', 'Langacker 17', '24870', 'Ellingstedt', 'Deutschland', 'http://www.gosch-produktion.de', 'kiy@gosch-produktion.de', 'Kunde', 'Geschäftsführer', '04627 / 1831-30', '', '', '04627 / 1831-11'),
(87, 1, 'GOSCH LFG GmbH', 'Anja', 'Gosch', 'Pinnasberg 47 (Dock 47)', '20359', 'Hamburg', 'Deutschland', 'http://www.gosch.de', 'anja@gosch.de', 'Kunde', 'Geschäftsführerin', '040 / 53056680', '', '', ''),
(88, 1, 'Sass Gastro GmbH', 'Ann-Christin ', 'Frank', 'Buhne 1', '25826', 'St. Peter-Ording', 'Deutschland', 'http://www.hotel-buhne1.de', 'ann-christin.frank@hotel-buhne1.de', 'Kunde', 'Prokuristin', '04863-4787092', '', '0160-95215173', '04863-47870976'),
(89, 1, 'GOSCH Treffpunkt GOSCH im AEZ', 'Josef', 'Dobler ', 'Heegbarg 31', '22391', 'Hamburg', 'Deutschland', 'http://www.gosch-partner.de', 'treff.aez@gosch-partner.de', 'Kunde', 'Geschäftsführer', '040 / 61136705', '', '0173 / 6024782', '040 / 6113930'),
(90, 1, 'Grafik +Druck  GmbH', 'Helmut', 'Wünderlich ', 'Rendsburger Landstraße 181', '24113', 'Kiel', 'Deutschland', 'http://www.gud-kiel.de', 'produktion@gud-kiel.de', 'Kunde', 'Geschäftsführer', '0431 / 647000', '', '', '0431 / 642168'),
(91, 1, 'Gut Uhlenhorst Golf u. Landclub Uhlenhorst e.', '', 'Herr Sindt', '', '24229', 'Dänischenhagen', 'Deutschland', 'http://www.gut-uhlenhorst.de', 'golf@gut-uhlenhorst.de', 'Kunde', '', '04349 / 91700', '', '', '04349 /  919400'),
(92, 1, 'Handl Tyrol GmbH ', 'Fr.', 'Pfeifer', 'Saurs 45', '6491', 'Schönwies - Österreich', 'Deutschland', '', '', 'Kunde', '', '0043-5418 / 693400', '', '', ''),
(93, 1, 'Hansen Fleischwaren GmbH', 'Renate', 'Rohwer', 'Bahnhofstraße 107', '24582', 'Bordesholm', 'Deutschland', 'http://www.hansen-fleischwaren.de', 'info@hansen-fleischwaren.de', 'Kunde', '', '04322 / 2156 ', '', '', '04322 / 5439'),
(94, 1, 'HARBS Rechtsanwäte.Notar', 'A. Eckhard ', 'Harbs', 'Rathausstraße 2', '24103', 'Kiel', 'Deutschland', 'http://www.harbs-rechtsanwaelte.de', 'harbs@harbs-rechtsanwaelte.de', 'Kunde', '', '0431 / 982070', '', '', '0431 / 9820720'),
(95, 1, 'Haubold Druckerei GmbH', '', '', 'Leuchtbergstraße 16', '37269', 'Eschwege', 'Deutschland', 'http://www.aol.com', 'haubold@aol.com', 'Kunde', '', '05651 / 3090', '', '', '05651 / 309155'),
(96, 1, 'NeedMoreCoffeMan', 'Erik', 'Steffen', 'Westring 252', '24116', 'Kiel', 'Deutschland', 'http://www.needmorecoffeeman.de', 'mail@needmorecoffeeman.de', 'Kunde', 'Fotograf', '0431-6670755', '', '', '0431-90882966'),
(97, 1, 'Nordmann  Fine Food GmbH', 'Oliver', 'Reimann', 'Am Fischmarkt 13a', '18439', 'Stralsund', 'Deutschland', 'http://www.n-finefood.de', 'oliver.reimann@n-finefood.de', 'Kunde', 'Geschäftsführer', '03831-2892432', '', '01733816012', ''),
(98, 1, 'Holstein Kiel ', 'Klaus ', 'Kuhn', 'Westring 501', '24106', 'Kiel', 'Deutschland', '', '', 'Kunde', '', '0431 / 331824', '', '', '0431 / 338037'),
(99, 1, 'Hospiz- und Palliativverband ', 'Dr. Susanne', 'Naß', 'Plöner Straße 42', '23701', 'Eutin', 'Deutschland', 'http://www.hpvsh.de', 'info@hpvsh.de', 'Kunde', '', '04521 / 802453', '', '', ''),
(100, 1, 'Hotel an der Hörn ', 'Udo ', 'Boschmann', 'Gablenzstraße 8', '21114', 'Kiel', 'Deutschland', 'http://www.an-der-hoern.de', 'wir@an-der-hoern.de', 'Kunde', '', '0431 / 663030', '', '', '0431 / 6630390'),
(101, 1, 'Rudolf u. Robert Houdek  GmbH', '', 'Frau Farbelow', 'Moosstr. 8', '82319', 'Starnberg', 'Deutschland', 'http://www.houdek.eu', 'info@houdek.eu', 'Kunde', '', '08151-260558', '', '', ''),
(102, 1, 'HPL  Zentrum der coop AG', '', 'Frau Albrecht', 'Glasewitzer Chaussee', '18273', 'Güstrow', 'Deutschland', '', '', 'Kunde', '', '', '', '', ''),
(103, 1, 'Hückstädt-Druck GmbH', 'Doris', 'Festersen', 'Birkenbogen 5', '24999', 'Wees', 'Deutschland', 'http://www.hueckstaedt-druck.de', 'festersen@hueckstaedt-druck.de', 'Kunde', '', '04631 / 611011', '', '', ''),
(104, 1, 'HVM Hamburger Verkehrsmittel-Werbung GmbH ', 'Thomas ', 'Clausen', 'Oehleckerring 22-24', '2000', 'Hamburg 62', 'Deutschland', '', '', 'Kunde', '', '040 / 5320001', '', '', '040 / 53200199'),
(105, 1, 'IBAK Helmut Hunger GmbH & Co. KG Dipl.-Grafik', 'Kathrin ', 'Jebsen-Marwedel', 'Wehdenweg 122', '24148', 'Kiel ', 'Deutschland', 'http://www.ibak.de', 'k.jebsen-marwedel@ibak.de', 'Kunde', '', '0431 / 7270-328', '', '', '0431 / 7270-207'),
(106, 1, 'Mobilitätshilfen gmbh Mobitec', 'Peter', 'Haas', 'Herzog-Odilo Str.101', '0', 'Mondsee', 'Deutschland', 'http://www.mobitec-austria.com', 'office@mobitec-austria.com', 'Kunde', '', '06232-55350', '', '', '06232-55354'),
(107, 1, 'coop eG', 'Tim', 'Strübing', 'Benzstraße 10', '24148', 'Kiel ', 'Deutschland', 'http://www.coop.de', 'tim.struebing@coop.de', 'Kunde', 'Geschäftsbereichsleiter Obst, Gemüse & Blumen', '0431 / 7250 - 406', '', '', '0431 / 7250 - 321'),
(108, 1, 'Imprint Digital Foto  GmbH & Co. KG', '', '', 'Knooper Weg 33', '24103', 'Kiel', 'Deutschland', 'http://www.imprint-digital-foto.de', 'info@imprint-digital-foto.de', 'Kunde', '', '0431 / 9828822', '', '', '0431 / 9828823'),
(109, 1, 'INVACARE® Austria GmbH', 'Peter', 'Haas', 'Herzog-Odilo-Straße 101', '0', 'Mondsee', 'Deutschland', 'http://www.invacare-austria.com', 'phaas@invacare-austria.com', 'Kunde', '', '0043 / 6232 55350', '', '', '0043 / 6232 55354'),
(110, 1, 'Kieler Nachrichten', 'Ulrike', 'Bahnsen ', 'Fleethörn 1-7', '24103', 'Kiel', 'Deutschland', 'http://www.kieler-nachrichten.de', 'ulrike.bahnsen@kieler-nachrichten.de', 'Kunde', 'Vertrieb und Marketing', '0431 / 903 - 2605', '', '', '0431 / 903 - 2603'),
(111, 1, 'Jaguar & Landrover  House Kuntz', '', '', 'Kieler Chaussee 17', '24214', 'Gettorf', 'Deutschland', '', '', 'Kunde', '', '04346  / 41160', '', '', '04346 / 411641'),
(112, 1, 'Joker Productions GmbH ', 'Stephanie ', 'Schnoor', 'Werftstraße193', '24143', 'Kiel', 'Deutschland', 'http://www.jockerproductions.de', 'schnoor@jockerproductions.de', 'Kunde', '', '0431 / 9088825', '', '', '0431 / 9088888'),
(113, 1, 'Jungermann ', 'Gisbert K.', 'Jungermann', 'Parkwinkel 13', '24229', 'Dänischenhagen', 'Deutschland', 'http://www.architekturillustrationen.de', 'jungermann@architekturillustrationen.de', 'Kunde', 'Dipl.-Ing. Freier Architekt', '04349 / 919655', '', '', '04349 / 919656'),
(114, 1, 'Kabuja Filmproduktion Jarre & Kahl GbR', 'Lars', 'Jarre', 'Langer Segen 8-10', '24105', 'Kiel', 'Deutschland', 'http://www.kabuja.de', 'l.jarre@kabuja.de', 'Kunde', '', '0431 / 88999293', '', '0162 / 6696415', ''),
(115, 1, 'Kabuja Filmproduktion Jarre & Kahl GbR', 'Dave ', 'Kahl', 'Langer Segen 8-10', '24105', 'Kiel', 'Deutschland', 'http://www.kabuja.de', 'd.kahl@kabuja.de', 'Kunde', '', '0431 / 88999293', '', '0162 / 6696415', ''),
(116, 1, 'GEWOBA Nord Baugenossenschaft eG', 'Zentrale', '', 'Moltkestraße 32', '24837', 'Schleswig', 'Deutschland', '', '', 'Kunde', '', '04621 / 811-100', '', '', '04621 / 811-810'),
(117, 1, 'Sievers Sanitär-und Heizungstechnik GmbH', 'Ralf ', 'Hackbart', 'Haßberg 17 a', '24113', 'Kiel', 'Deutschland', '', '', 'Kunde', '', '', '', '0152-08623010', ''),
(118, 1, 'Karin Zander Illustration & Grafik-Design', 'Karin', 'Zander', 'Klosterhof 12', '24211', 'Preetz', 'Deutschland', 'http://www.ki.tng.de', 'zarin@ki.tng.de', 'Kunde', '', '04342 - 80806', '', '0162-9491931', '04342 – 80819     '),
(119, 1, 'Karl Könecke Fleischfabrik GmbH & Co. KG', '', '', 'Zum Sebaldsbrücker Bahnhof 1', '28309', 'Bremen', 'Deutschland', 'http://www.koenecke.de', 'info@koenecke.de', 'Kunde', '', '0421 - 4587-0', '', '', '0421 - 4587229'),
(120, 1, 'A118 Werbestudio Kiel', 'Martin', 'Brandner', 'Dammstraße 17', '24103', 'Kiel ', 'Deutschland', 'http://www.a118-kiel.de', 'aha@a118-kiel.de', 'Kunde', '', '0431 / 2603335', '', '', '0431 / 2603337'),
(121, 1, 'Kieler Nachrichten ', 'Eyke Katharina', 'Junge', 'Fleethörn 1-7', '24103', 'Kiel', 'Deutschland', 'http://www.kieler-nachrichten.de', 'ej.vert@kieler-nachrichten.de', 'Kunde', 'Bereichsleitung Kundenbindungsmaßnahmen', '0431 /  903 - 2606', '', '', '0431 / 903 - 2603'),
(122, 1, 'Kieler Nachrichten ', 'Brigitta', 'Grunwald', 'Fleethörn 1-7', '24103', 'Kiel', 'Deutschland', 'http://www.kieler-nachrichten.de', 'bgr.vert@kieler-nachrichten.de', 'Kunde', 'Ltg. Privatkundenmanagement u. Marketing', '0431 - 903 - 2600', '', '', '0431 - 903 - 2603'),
(123, 1, 'Kieler Nachrichten ', 'Bernd ', 'Bichel, Vertriebsleiter', 'Fleethörn 1-7', '24103', 'Kiel', 'Deutschland', 'http://www.kieler-nachrichten.de', 'bb.vert@kieler-nachrichten.de', 'Kunde', '', '0431 - 9032604', '', '', '0431 - 9032603'),
(124, 1, 'Netrixx Communications', 'Dirk', 'Brüggemann', 'Königsreihe 22', '22041', 'Hamburg', 'Deutschland', 'http://www.netrixx.de', 'info@netrixx.de', 'Kunde', '', '040-23859981', '', '', '040-23859989'),
(125, 1, 'mein coop magazin', 'Silke', 'Graf', 'Hofholzallee 92', '24109', 'Kiel', 'Deutschland', 'http://www.mein-coop-magazin.de', 's.graf@mein-coop-magazin.de', 'Kunde', 'Redaktion', 'privat 0431-5796121', '', '0160 / 92 49 47 25', ''),
(126, 1, 'Kirchenkreisverwaltung Dithmarschen', 'Andreas', 'Dr.Crystall', 'Nordermarkt 8', '25704', 'Meldorf', 'Deutschland', 'http://www.nordelbien.de  / andreas.crystall', 'probst.crystall.kkd@nordelbien.de  / andreas.crystall@online.de', 'Kunde', 'Probst ', '04832-97220 / 04832-972226', '', '', '04832-972299'),
(127, 1, 'Konverdi GmbH', 'Nicole', 'Meyer', 'Osterstrasse 16A', '31249', 'Clausen, ', 'Deutschland', '', '', 'Kunde', '', '05128 - 956245', '', '', '05128 - 956281'),
(128, 1, 'Konverdi GmbH', '', '', 'Osterstrasse 16A', '31249', 'Clausen, ', 'Deutschland', 'http://www.konverdi.de', 'info@konverdi.de', 'Kunde', '', '05128 - 956280', '', '', '05128 - 956281'),
(129, 1, 'Kraatz ', 'Rainer', 'Kraatz', 'Ekhöft', '24259', 'Westensee', 'Deutschland', '', '', 'Kunde', '', '0431 - 2603810', '', '0176-43020713', ''),
(130, 1, 'coop eG', 'Joachim ', 'Göde', 'Benzstraße 10', '24148', 'Kiel ', 'Deutschland', 'http://www.coop.de', 'Joachim.Goede@coop.de', 'Kunde', 'Einkäufer AfG, Bier, Spirituosen, Einkauf Trockensortiment', '0431 / 7250 - 207', '', '', '0431 / 7250 - 331'),
(131, 1, 'Kröll Verpackung GmbH', '', 'Frau Kröll', 'Fichtenstaße 2', '82061', 'Neuried', 'Deutschland', 'http://www.werbetaschen.de', 'info@werbetaschen.de', 'Kunde', '', '089 -7451360', '', '', '089 - 74513630'),
(132, 1, 'Kröll Verpackung GmbH', '', 'Frau Bartels', 'Fichtenstaße 2', '82061', 'Neuried', 'Deutschland', 'http://www.werbetaschen.de', 'info@werbetaschen.de', 'Kunde', '', '089 -7451360', '', '', '089 - 74513630'),
(133, 1, 'KVG Kieler Verkehrsgesellschaft mbH', 'Barbara', 'Sohst', 'Werftbahnstraße 233-234', '24143', 'Kiel', 'Deutschland', 'http://www.kvg-kiel.de', 'kontakt@kvg-kiel.de', 'Kunde', '', '0431 - 5941234', '', '', '0431 - 5941299'),
(134, 1, 'Labelco A/S ', 'Birte ', 'Kjerholm', 'Samsovej 38', '8382', 'Hinnerrup (DK)', 'Deutschland', 'http://www.labelco.dk', 'bkp@labelco.dk', 'Kunde', '', '0045-86988088', '', '', '0045-86988808'),
(135, 1, 'Landwirtschaftskammer Schleswig-Holstein', 'Sandra ', 'van Hoorn Dipl.-Ing. agrar', 'Grüner Kamp 15-17', '24768', 'Rendsburg', 'Deutschland', 'http://www.lksh.de', 'svanhoorn@lksh.de', 'Kunde', '', '04331 - 9453 400', '', '0172 / 418 69 80', '04331 - 9453 409'),
(136, 1, 'Landwirtschaftskammer Schleswig-Holstein', 'Gerd ', 'Tiedemann Dipl.-Ing. agrar', 'Grüner Kamp 15-17', '24768', 'Rendsburg', 'Deutschland', 'http://www.lksh.de', 'gtiedemann@lksh.de', 'Kunde', '', '04331 - 9453 410', '', '', '04331 - 9453 409, m. 0173 - 6068'),
(137, 1, 'Landwirtschaftskammer Schleswig-Holstein', 'Simone', 'Weimann  Dipl.-Kauffrau', 'Grüner Kamp 15-17', '24768', 'Rendsburg', 'Deutschland', 'http://www.lksh.de', 'sweimann@lksh.de', 'Kunde', 'Interne Revision', '04331 - 9453 / 104', '', '', ''),
(138, 1, 'Landwirtschaftskammer Schleswig-Holstein', 'Dr. Markus', 'Heid', 'Grüner Kamp 15-17', '24768', 'Rendsburg', 'Deutschland', 'http://www.lksh.de', 'mheid@lksh.de', 'Kunde', '', '04331 - 9453 -401', '', '', '04331 - 9453 409'),
(139, 1, 'Landessportverband  Schleswig-Holstein e.V.', '', '', 'Winterbeker Weg 49', '24114', 'Kiel', 'Deutschland', 'http://www.lsv-sh.de', 'info@lsv-sh.de', 'Kunde', '', '0431 - 64860', '', '', '0431 - 6486190'),
(140, 1, 'Landessportverband  Schleswig-Holstein e.V.', 'Carsten ', 'Lübbe', 'Winterbeker Weg 49', '24114', 'Kiel', 'Deutschland', 'http://www.lsv-sh.de', 'karsten.luebbe@lsv-sh.de', 'Kunde', '', '0431 - 6486107', '', '', '0431 - 6486296'),
(141, 1, 'Laroid Textilvertrieb & Veredelung', 'Christian ', 'Drenckhahn', 'Ringstraße 19', '24114', 'Kiel', 'Deutschland', 'http://www.laroid.de', 'info@laroid.de', 'Kunde', '', '0431 - 7055702', '', '', '0431 - 7055902'),
(142, 1, 'Le Buffet System-Gastronomie & Dienstleistung', 'Alexander R.', 'Nitzsche, Restaurantleiter', 'Sophienblatt 20', '24103', 'Kiel', 'Deutschland', 'http://www.lebuffet.de', 'gastronomie.ki-sophienhof@lebuffet.de', 'Kunde', '', '0431 - 672034', '', '', '0431 - 672035'),
(143, 1, 'Litho- und Scannertechnik GmbH', 'Uwe', 'Scholz GF', 'Köpenicker Straße 51', '24111', 'Kiel', 'Deutschland', 'http://www.ls-kiel.de', 'info@ls-kiel.de', 'Kunde', '', '0431 - 6964433', '', '', '0431 - 6964444 '),
(144, 1, 'Lithographische Werkstätten Kiel  J&A Ratjen', 'Andreas ', 'Ratjen', 'Boninstraße 28-30', '24114', 'Kiel', 'Deutschland', 'http://www.lwk-ratjen.de', 'info@lwk-ratjen.de', 'Kunde', '', '0431 - 62412', '', '0171-511744', '0431 - 62414'),
(145, 1, 'Ludwigsluster  Fleisch- und Wurstspezialitäte', 'René ', ' Prüße Dipl. Kfm.', 'Bauernallee 9', '19288', 'Ludwigslust', 'Deutschland', 'http://www.lfw-ludwigslsust.de', 'pruesse@lfw-ludwigslsust.de', 'Kunde', '', '0 38 74 - 42 20 26', '', '', '0 38 74 - 2 10 16'),
(146, 1, 'Lüdemann Theater ', 'Andreas ', 'Schauder', 'Hansastraße 11-13', '24118', 'Kiel', 'Deutschland', 'http://www.luedemann-theater.de', 'info@luedemann-theater.de', 'Kunde', '', '0431 - 3321688', '', '0163-3321688', '0431 - 6004725'),
(147, 1, 'mac-port.de Apple.Service.Kiel', 'Tim', 'Trahn', 'Dänische Straße 34', '24103', 'Kiel', 'Deutschland', 'http://www.mac-port.de', 'info@mac-port.de', 'Kunde', '', '0431 - 9795504', '', '0175-58683', '0431 - 9795540'),
(148, 1, 'Mach 3 Marketing GmbH & Co. KG', 'Markus ', 'Brandt', 'Wittland 3', '24103', 'Kiel', 'Deutschland', 'http://www.mach3.de', 'markus.brandt@mach3.de', 'Kunde', '', '0431 - 9906412', '', '', '0431 - 9906444'),
(149, 1, 'Mach 3 Marketing GmbH & Co. KG', 'Alexander', ' Werner', 'Wittland 3', '24109', 'Kiel', 'Deutschland', 'http://www.MACH3.de', 'Alexander.Werner@MACH3.de', 'Kunde', '', '0431 - 9906461', '', '0160 - 5343636', '0431 - 9906466'),
(150, 1, 'Mach 3 Marketing GmbH & Co. KG', 'Manuela ', 'Peter', 'Wittland 3', '24109', 'Kiel', 'Deutschland', 'http://www.MACH3.de', 'Manuela.Peter@MACH3.de', 'Kunde', '', '0431 - 9906460    ', '', '     ', '0431 - 9906466'),
(151, 1, 'Marketingclub ', '', 'Frau Knüp', '', '0', '', 'Deutschland', '', '', 'Kunde', '', '', '', '', '0174 - 9225500'),
(152, 1, 'Maro Werbetechnik', 'Sylvia', 'Lienau', 'Barkauer Str. 56-58', '24145', 'Kiel', 'Deutschland', 'http://www.maroprint.de', 'info@maroprint.de', 'Kunde', 'Inhaberin + Buchhaltung', '0431 - 600 98 90', '', '', '0431 - 600 98 99'),
(153, 1, 'VERVUM GmbH ', 'Heiko ', 'Haller', 'Andreas-Gayk-Str. 13', '24103', 'Kiel', 'Deutschland', 'http://www.vervum.de', 'h.haller@vervum.de', 'Kunde', 'Geschäftsführer', '0431 / 88 70 50', '', '', '0431 / 88 70 50 - 88'),
(154, 1, 'Maxxi Print Großbildlösungen GmbH', '', '', 'Ansbacher Str. 2', '91126', 'Schwabach', 'Deutschland', 'http://www.maxxi-print.de', 'info@maxxi-print.de', 'Kunde', '', '09122 - 885180', '', '', '09122 - 8851899'),
(155, 1, 'MegaLand Verwaltungs- u. Immobilien GmbH', 'Birgit ', 'Dau', 'Hamburger Str. 10', '25746', 'Heide', 'Deutschland', 'http://www.megaland.de', 'b.dau@megaland.de', 'Kunde', '', '0481 - 850361-24', '', '', '0481-850361-26'),
(156, 1, 'Möller Thies Künstleragentur  Tanja Möller', 'Thies', 'Möller', 'Reveler Weg 6', '25764', 'Schülperweide', 'Deutschland', 'http://www.thiesmoeller.de', 'info@thiesmoeller.de', 'Kunde', '', '04833 -42 92 24', '', '0162-9348037', '04833 - 42 92 25'),
(157, 1, 'keine Agentur Bernd und Felix Kreißler GmbH ', 'Bernd ', 'Kreißler', 'Wilhelminstraße 51', '24103', 'Kiel', 'Deutschland', 'http://www.keineAgentur.de', 'info@keineAgentur.de', 'Kunde', '', '0431 /  2 47 51 68', '', '0176 / 22006682', '0431 / 2 47 46 22'),
(158, 1, 'DER ZEICHNER', 'Friedhelm Maria', 'Leistner', 'Mindener Straße 2', '10589', 'Berlin ', 'Deutschland', 'http://www.der-zeichner.de', 'kuckuck@der-zeichner.de', 'Kunde', '', '030 / 34651022', '', '0172 / 4367782', ''),
(159, 1, 'Ministerium für Soziales, Gesundheit u. Verbr', '', 'Herrn Hoppe-Kosack', 'Adolf-Westphal-Straße 4', '24143', 'Kiel', 'Deutschland', 'http://www.mlr.landsh.de', 'matthias.hoppe-kossak@mlr.landsh.de', 'Kunde', '', '0431 - 9885300', '', '', '0431 - 9885474'),
(160, 1, 'Ministerium für Soziales, Gesundheit u. Verbr', 'Hannelore ', 'Krackow-Laukat', 'Adolf-Westphal-Straße 4', '24143', 'Kiel', 'Deutschland', 'http://www.mlr.landsh.de', 'hannelore.krackow-laukat@mlr.landsh.de', 'Kunde', '', '0431 - 9885300', '', '', '0431 - 9885474'),
(161, 1, 'easy-Ankauf', 'Sahin', 'Cakmak', 'Westring 333 a', '24118', 'Kiel', 'Deutschland', 'http://www.easyankauf.de', 'info@easyankauf.de', 'Kunde', '', '0431 / 53778800', '', '0172 / 4215149', ''),
(162, 1, 'Upstalsboom hotel meerSinn', 'Antje', 'Grundmann', 'Schillerstr. 6-10', '18609', 'Ostseebad Binz/Rügen', 'Deutschland', 'http://www.meersinn.de', 'reservierung@meersinn.de', 'Kunde', 'Reservierung', '038393-663-530', '', '', '038393-663-23'),
(163, 1, 'Neue Nieswand Druck GmbH', 'Marco ', 'Boll', 'Am Kiel-Kanal 2', '24106', 'Kiel', 'Deutschland', 'http://www.neuenieswanddruck.de', 'info@neuenieswanddruck.de', 'Kunde', '', '0431- 90 88 28 02', '', '', '0431 - 90 88 28-10'),
(164, 1, 'Neue Nieswand Druck GmbH', 'Geli', 'Masuth ', 'Am Kiel-Kanal 2', '24106', 'Kiel', 'Deutschland', 'http://www.neuenieswanddruck.de', 'info@neuenieswanddruck.de', 'Kunde', 'Geschäftsführerin', '0431 / 90 88 28 01', '', '', '0431 / 90 88 28 10'),
(165, 1, 'Neumann & Wolf Verlag', '', 'Frau Fendzahn', 'Wellseedamm 18', '24145', 'Kiel', 'Deutschland', '', '', 'Kunde', '', '0431 - 717060', '', '', ''),
(166, 1, 'NL Verpackungen GmbH & Co. KG', 'Kristina ', 'Altrock', 'Ostermeedlandsweg 72-74', '26789', 'Leer', 'Deutschland', 'http://www.neemann.de', 'k.altrock@neemann.de', 'Kunde', '', '0491 - 8003-53              ', '', '', '0491 - 800339'),
(167, 1, 'NL Verpackungen GmbH & Co. KG', 'Peter ', 'Hillwig', 'Ostermeedlandsweg 72-74', '26789', 'Leer', 'Deutschland', 'http://www.neemann.de', 'p.hillwig@neemann.de', 'Kunde', '', '0491 - 8003-0', '', '0173-622910', '0491 - 800339'),
(168, 1, 'Nomadic Display ', 'Eugen', 'Rotermel Vertriebsberater', 'Eiffestrasse 596', '20537', 'Hamburg', 'Deutschland', 'http://www.nomadic-hamburg.de', 'rotermel@nomadic-hamburg.de', 'Kunde', '', '08000 - 6662345', '', '0173-70492', '040 - 30708899'),
(169, 1, 'Goldammer Feinkost GmbH', 'Bertram', 'Föhles', 'Goldammerweg 3', '24340', 'Eckernförde', 'Deutschland', 'http://www.paul-steffenhagen.de', 'b.foehles@paul-steffenhagen.de', 'Kunde', 'Leiter Produktion und Vertrieb', '04351 / 6008', '', '0170 / 2035084', '04351 / 2677'),
(170, 1, 'coop eG', 'Dirk', 'Reimerdes', 'Benzstraße 10', '24148', 'Kiel ', 'Deutschland', 'http://www.coop.de', 'dirk.reimerdes@coop.de', 'Kunde', 'Qualitätsmanager / Dipl.-Ing. Lebensmitteltechnologie', '0431 / 7250 - 249', '', '0160 / 8978541 (nur im Notfall)', '0431 / 7250 - 573'),
(171, 1, 'Abraham Schinken GmbH', 'Stephan', 'Holst', 'Brookdamm 21', '21217', 'Seevetal', 'Deutschland', '', '', 'Kunde', 'Leiter Marketing', '040 / 768005-327', '', '', '040 / 768005-301'),
(172, 1, 'CONWIGO GmbH & Co. KG', 'Nik', 'Wittern', 'Mansteinstraße 37', '20253', 'Hamburg', 'Deutschland', 'http://www.conwigo.com', 'Wittern@conwigo.com', 'Kunde', '', '', '', '0171 / 3256770', ' 040 / 51903008'),
(173, 1, 'GOSCH LFG GmbH', 'Andreas', 'Reitz', 'Pinnasberg 47 (Dock 47)', '20359', 'Hamburg', 'Deutschland', 'http://www.gosch.de', 'a.reitz@gosch.de', 'Kunde', 'Brandmanager', '040 / 5305668-0', '', '0160 / 90171258', '040 / 5305668-22'),
(174, 1, 'Segeberger Zeitung', 'Tanja', 'Kracht', 'Hamburger Straße 26', '23795', 'Bad Segeberg', 'Deutschland', 'http://www.segeberger-zeitung.de', 'tanja.kracht@segeberger-zeitung.de', 'Kunde', 'Geschäftsführungsassistenz', ' 04551 90462', '', '', '04551 90464'),
(175, 1, 'Nordlandwelle ', 'Willi ', 'Pareike', 'Ostermeedlandweg 72-74', '26789', 'Leer', 'Deutschland', 'http://www.t-online.de', 'willi.pareike@t-online.de', 'Kunde', '', '04632 -1220', '', '', '04632-875535'),
(176, 1, 'nord ton productions ', 'Rainer', 'Spachmann', 'Richthofenstraße 32', '24159', 'Kiel', 'Deutschland', 'http://www.nord-ton.de', 'info@nord-ton.de', 'Kunde', '', '0431 - 3691558  0431 - 3800771', '', '0170-5281', '0431 - 3691543'),
(177, 1, 'Offset Ketels GmbH & Co. KG', 'Birte', 'Ruf ', 'Am Kascher 1', '24999', 'Wees', 'Deutschland', 'http://www.offset-ketels.de', 'info@offset-ketels.de', 'Kunde', '', '04631 - 6034-19', '', '', '04631 - 603434'),
(178, 1, 'James & the Cook', 'Andreas', 'Hansen', 'Eckernförder Straße 59', '24116', 'Kiel', 'Deutschland', 'http://www.james-and-the-cook.de', 'info@james-and-the-cook.de', 'Kunde', 'Geschäftsführer', '0431 / 97996161', '', '', ''),
(179, 1, 'Ohnekopf Illustration & Grafik', 'Gerrit ', 'Hansen ( Inh. )', 'Dorfstr. 60', '24232', 'Tökendorf', 'Deutschland', 'http://www.ohnekopf.de', '10meter@ohnekopf.de', 'Kunde', '', '04348 /  91 91 - 55', '', '', '04348 /  91 91 - 73'),
(180, 1, 'Pano Verschluß GmbH', '', 'Frau Sicars', 'Gasstrasse 29', '25524', 'Itzehoe', 'Deutschland', 'http://www.pano-verschluss.de', 'info@pano-verschluss.de', 'Kunde', '', '04821 - 77060', '', '', '04821 - 770699'),
(181, 1, 'Papier Union GmbH', 'Holger ', 'Bitterling (Verkaufsförderung)', 'Liebigstraße 19', '24145', 'Kiel', 'Deutschland', 'http://www.papierunion.de', 'info@papierunion.de', 'Kunde', '', '0431 - 7180828', '', '0170-3388134', ''),
(182, 1, 'Papenfuss Atelier für Gestaltung', 'Antje ', 'Hecht', 'Marktstrasse 12', '99423', 'Weimar', 'Deutschland', 'http://www.atelierpapenfuss.de', 'mail@atelierpapenfuss.de', 'Kunde', '', '03643 - 77600', '', '', '03643 - 776020'),
(183, 1, 'Patrik Nawe Fotograf ( Sportfotos )', 'Patrik ', 'Nawe', 'Westring 269', '24116', 'Kiel', 'Deutschland', '', '', 'Kunde', '', '0173 - 2435854', '', '', '0431 - 6902555'),
(184, 1, 'pep & web Perfect Electronic Presentations Gm', 'Martina', 'Behrens-Krull', 'Damperhofstr. 14', '24103', 'Kiel', 'Deutschland', 'http://www.pepandweb.de', 'mbk@pepandweb.de', 'Kunde', '', '0431 - 3890717', '', '0170-3124', '0431 - 3890777'),
(185, 1, 'Rathmann Foto-Design BFF ', 'Peter', 'Rathmann', 'Dorfstr. 30', '24358', 'Ascheffel', 'Deutschland', 'http://www.t-online.de', 'peter-rathmann@t-online.de', 'Kunde', '', '04353 / 9551', '', '0172 / 4100297', '04353 / 9552'),
(186, 1, 'GOSCH Sylt Versand', 'Johanna ', 'Frank', 'Sauerstraße 17', '24340', 'Eckernförde', 'Deutschland', 'http://www.gosch.de', 'j.frank@gosch.de', 'Kunde', 'Marketing', '04351 / 883155', '', '', '04351 / 883133'),
(187, 1, 'Photowerkstatt  Henrik Matzen ', 'Henrik', 'Matzen', 'Hauptstr. 14', '24816', 'Stafstedt', 'Deutschland', 'http://www.photomatzen.de', 'mail@photomatzen.de', 'Kunde', '', '0 48 75 - 90 27 890', '', '0151-11681781', ''),
(188, 1, 'plaza Kiel ', 'Ansgar', 'Brüggemeier  ( WL )', 'Winterbeker Weg 44', '24114', 'Kiel', 'Deutschland', '', '', 'Kunde', '', '0431 - 64801101', '', '0161-63120', '0431 - 680172'),
(189, 1, 'Förderverein für Palliativmedizin Kiel e.v.', 'Ingrid ', 'Polster', 'Arnold-Heller-Straße 9          ', '24105', 'Kiel', 'Deutschland', 'http://www.fvp-kiel.de oder ingrid.polster', 'kontakt@fvp-kiel.de oder ingrid.polster@uksh.de', 'Kunde', 'stellv. Vorsitzende', '0431 / 5973075-3001', '', '', '0431 / 597-3074              '),
(190, 1, 'Passader Backhaus GmbH ', 'Olaf', 'Knickrehm (GF)', 'Dörpstraat 11', '24253', 'Passade', 'Deutschland', 'http://www.passader-backhaus.de', 'knickrehm@passader-backhaus.de', 'Kunde', '', '04344 - 4652', '', '', '04344 - 4604'),
(191, 1, 'Plumrose Skandinavien A/S ', 'Linda', 'Madsen', 'Trindsøvej 7 C', '8000', 'Arhus C', 'Deutschland', '', '', 'Kunde', '', '0045 - 87333021', '', '', ''),
(192, 1, 'Plumrose Skandinavien A/S Managing Director', 'Peder Toft', 'Fensvig', 'Trindsøvej 7 C', '0', 'Arhus C', 'Deutschland', 'http://www.plumrose.dk', 'ptf@plumrose.dk', 'Kunde', '', '0045 - 87 33 30 95', '', '', '0045 - 86 28 38 70'),
(193, 1, 'P+O Compact Disk GmbH & Co. KG', '', 'Herr Gruschinski', 'Auf dem Esch 51', '29356', 'Diepholz', 'Deutschland', '', '', 'Kunde', '', '', '', '', ''),
(194, 1, 'Politt Foodfotografin', 'Anke', 'Politt', 'Poolstr. 34', '20355', 'Hamburg', 'Deutschland', 'http://www.ankepolitt.de', 'mail@ankepolitt.de', 'Kunde', '', '040-60576274', '', '', '0163 - 6372018'),
(195, 1, 'P&S Vertriebs GmbH', 'Heinz ', 'Klaskala', 'Preetzer Chaussee 55', '24222', 'Schwentinental', 'Deutschland', 'http://www.punds-kiel.de', 'technik@punds-kiel.de', 'Kunde', '', '0431 - 97 449 310 ', '', '', '0431 - 97 449 369'),
(196, 1, 'Probsteier Wurstfabrik Pfeifer GmbH ', 'Mirco', 'Pfeifer', 'Heinrich-Wöhlk-Straße 19-21', '24232', 'Schönkirchen', 'Deutschland', 'http://www.probsteier-wurstfabrik.de', 'info@probsteier-wurstfabrik.de', 'Kunde', '', '04348 / 79 73', '', '', '04348-1753'),
(197, 1, 'Probsteier Wurstfabrik Pfeifer GmbH ', 'André', 'Pfeifer', 'Heinrich-Wöhlk-Straße 19-21', '24232', 'Schönkirchen', 'Deutschland', 'http://www.probsteier-wurstfabrik.de', 'info@probsteier-wurstfabrik.de', 'Kunde', '', '04348 / 79 73', '', '', '04348-1753'),
(198, 1, 'Professional Printer Service KG ', 'Marcus', 'Zachau', 'Eckernförder Str. 259', '24119', 'Kronshagen', 'Deutschland', 'http://www.pps-kiel.de', 'info@pps-kiel.de', 'Kunde', '', '0431 - 5345490', '', '', '0431 - 5345489'),
(199, 1, 'Prowo Nord GmbH  Objekt-Management', 'Bernd', 'Christophersen', 'Moltkestr.32', '24837', 'Schleswig', 'Deutschland', 'http://www.prowo-nord.de', 'b.christophersen@prowo-nord.de', 'Kunde', '', '04621 - 811931', '', '', '04621 - 811933'),
(200, 1, 'Rako Etiketten GmbH & Co. KG ', '', 'Herr Grimlitza', 'Möllner Landstraße 15', '22969', 'Witzhave', 'Deutschland', 'http://www.rako-etiketten.com', 'info@rako-etiketten.com', 'Kunde', '', '04104-693129', '', '', ''),
(201, 1, 'Rechtsanwalt Stephan Ehlert', 'Stephan', 'Ehlert', 'Werftbahnstraße 8', '24143', 'Kiel', 'Deutschland', 'http://www.ehlert-recht.de', 'ehlert@ehlert-recht.de', 'Kunde', '', '0431 - 2599516', '', '', '0431 - 2599517'),
(202, 1, 'Rendsburger Werkstätten ', '', 'Herrn Tischoff', 'Schleswiger Chaussee 259 - 263', '24768', 'Rendsburg', 'Deutschland', 'http://www.wfb-rd-eck.de', 'b.schatz@wfb-rd-eck.de', 'Kunde', '', '04331 - 46 710', '', '', ''),
(203, 1, 'Repro Dohm  ', 'Peter ', 'Dohm', 'Brunswiker Straße 29', '24103', 'Kiel', 'Deutschland', 'http://www.repro-dohm.de', 'info@repro-dohm.de', 'Kunde', '', '0431 - 5199690', '', '0170 / 48 46 438', '0431 - 5199691'),
(204, 1, 'ReproTechnik Schulz GmbH', 'Reinhard ', 'Schulz', 'Farbrikstr. 2', '24534', 'Neumünster', 'Deutschland', 'http://www.schulz-repro.de', 'info@schulz-repro.de', 'Kunde', '', '04321 - 95267612', '', '', '04321 - 95267689'),
(205, 1, 'Revisions- und Treuhand- Kommanditgesellschaf', 'Carl ', 'Holtzberg', 'Schülperbaum 23', '24103', 'Kiel', 'Deutschland', 'http://www.rut-kiel.de', 'c.holtzberg@rut-kiel.de', 'Kunde', '', '0431 - 663060', '', '', ''),
(206, 1, 'RT Reprotechnik.de GmbH Copy-Shop / DTP-Abtei', '', '', 'Wilhelminenstr. 51', '24103', 'Kiel', 'Deutschland', 'http://www.reprotechnik.de', 'kiel@reprotechnik.de', 'Kunde', '', '0431 - 519 28 99 - 0', '', '', '0431 - 519 28 99 - 9'),
(207, 1, 'RUSS REISEN ', 'Artur', 'Russ', 'Kolberger Weg 7', '24161', 'Altenholz', 'Deutschland', 'http://www.russreisen.de', 'info@russreisen.de', 'Kunde', '', '0431 - 32 11 01', '', '0172-247351', '0431 - 32 80 77'),
(208, 1, 'SARTORI & BERGER GmbH & Co. KG', 'Thorben', 'Jeschkeit', 'Wall 49/51', '24103', 'Kiel ', 'Deutschland', 'http://www.sartori-berger.de', 'info@sartori-berger.de', 'Kunde', '', '0431 - 981 0', '', '', '0431 - 9 61 08'),
(209, 1, 'S+T Reprotechnik GmbH & Co KG ', 'Willi ', 'Marks', 'Helmholzstr. 35', '52428', 'Jülich', 'Deutschland', 'http://www.st-packline.de', 'st.repro@st-packline.de', 'Kunde', '', '02461-977731', '', '', '02461 - 977737'),
(210, 1, 'Scherer & Friends GmbH & Co. KG', 'Hans ', 'Scherer GF', 'Schnackenburgallee 177-179', '22525', 'Hamburg', 'Deutschland', 'http://www.scherer-friends.de', 'hs@scherer-friends.de', 'Kunde', '', '040 - 68946010', '', '0170-6351', '040 - 68946060'),
(211, 1, 'ASF / Abfallwirtschaft Schleswig-Flensburg Gm', 'Gabriele', 'Dunker-Ulbrich', 'Lollfuß 67', '24837', 'Schleswig', 'Deutschland', 'http://www.asf-online.de', 'G.Dunker-Ulbrich@asf-online.de', 'Kunde', 'Prokuristin, Presse-/Öffentlichkeitsarbeit, Kundenservice/Vertrieb', '04621-8572 -14', '', '', '04621-8572 -65'),
(212, 1, 'Universität Kiel', 'Helga', 'Andree', 'Christian-Albrechts-Platz 4', '24118', 'Kiel', 'Deutschland', 'http://www.uv.uni-kiel.de', 'handree@uv.uni-kiel.de', 'Kunde', 'Leitung u. Koordination', '0431-8805536', '', '', '0431-8804894'),
(213, 1, 'SH:2 Schleswig-Holsteinischer Zeitungsverlag ', 'Sandra ', 'May', 'Stegen 1+ 2', '24768', 'Rendsburg', 'Deutschland', 'http://www.shz.de', 'may@shz.de', 'Kunde', '', '04331 - 4642400', '', '', '04331 - 4642466'),
(214, 1, 'Sievers ', '', 'Sievers', '', '24409', 'Gut Drült', 'Deutschland', 'http://www.kruegersieverspartner.com', 'cs@kruegersieverspartner.com', 'Kunde', '', '04642 - 92 12 77', '', '', '04642 - 92 12 78'),
(215, 1, 'Sievers  Sanitär- und Heizungstechnik ', 'Christian', 'Sievers', 'Haßberg 17a', '24113', 'Kiel', 'Deutschland', 'http://www.sievers-sanitaer.de', 'christian.sievers@sievers-sanitaer.de', 'Kunde', '', '0431 - 681117', '', '0172-3200533', '0431 - 642658'),
(216, 1, 'Sinnsalon ', '', 'Friedemann Stampa', 'Jarrestraße 20', '22303', 'Hamburg', 'Deutschland', 'http://www.sinnsalon.de', 'kontakt@sinnsalon.de', 'Kunde', '', '040 - 40131509', '', '', '040 - 40131514'),
(217, 1, 'SoftwareCompany  AMIC GmbH', 'Wilhelm', 'Langbehn', 'Im Saal 2', '24145', 'Kiel', 'Deutschland', 'http://www.amic.de', 'la@amic.de', 'Kunde', 'Geschäftsführer', '0431 / 99 02 - 0', '', '0171 / 7 43 83 93', '0431 / 99 02 - 22'),
(218, 1, 'SSP Deutschland GmbH ', 'Claudia', 'Rödel', 'Helfmann-Park 1', '65760', 'Eschborn', 'Deutschland', 'http://www.ssp-ce.de', 'claudia.roedel@ssp-ce.de', 'Kunde', '', '06196 / 99 86 571', '', '0172 - 404 15 73', '');
INSERT INTO `addresses` (`id`, `workgroup_id`, `company`, `firstname`, `name`, `street`, `zip`, `city`, `country`, `www`, `email`, `category`, `position`, `tel`, `tel2`, `mobile`, `fax`) VALUES
(219, 1, 'Stark Mobilservice', 'Sönke', 'Stark', 'Tannenredder 7', '24211', 'Pohnsdorf', 'Deutschland', 'http://www.t-online.de', 'soenke.stark@t-online.de', 'Kunde', '', '04342-858533', '', '0171-5458960', '04342-83021'),
(220, 1, 'Blitz Schallplatten', 'Stefan', 'Löck', 'Hopfenstraße 71', '24103', 'Kiel', 'Deutschland', '', '', 'Kunde', '', '0431 / 96666', '', '', '0431 / 2377777'),
(221, 1, 'Christian-Albrechts-Universität zu Kiel', 'Sabine', 'Große-Aust', 'Christian-Albrechts-Platz 4', '24118', 'Kiel', 'Deutschland', 'http://www.praesidium.uni-kiel.de', 'sgrosse-aust@praesidium.uni-kiel.de', 'Kunde', 'Referentin für private Wissenschaftsförderung', '0431 / 880-1490', '', '01522 / 6088082', '0431 / 880-7333'),
(222, 1, 'STATZ DESIGN', 'Sven', 'Statz', 'Am Kiel-Kanal 2', '24106', 'Kiel', 'Deutschland', 'http://www.statz-design.de', 's.statz@statz-design.de', 'Kunde', 'Inhaber', '0431 - 39 92 977', '', '0172 / 45 47 070', '0431 - 39 92 979'),
(223, 1, 'Stiftung  Diakoniewerk Kropp', 'Jörn', 'Engler (Vorstand/Pastor)', 'Johannesallee', '24848', 'Kropp', 'Deutschland', 'http://www.diakonie-kropp.de', 'J.Engler@diakonie-kropp.de', 'Kunde', '', '0 46 24 - 801 - 800', '', '', '0 46 24 - 801-100'),
(224, 1, 'Stiftung  Diakoniewerk Kropp', '', 'Sven Roßmann (GF)', 'Johannesallee', '24848', 'Kropp', 'Deutschland', 'http://www.diakonie-kropp.de', 'S.Rossmann@diakonie-kropp.de', 'Kunde', '', '0 46 24 - 801 - 0', '', '', '0 46 24 - 801-100'),
(225, 1, 'Stiftung  Diakoniewerk Kropp', 'Arne', 'Schnack', 'Johannesallee', '24848', 'Kropp', 'Deutschland', 'http://www.diakonie-kropp.de', 'A.Schnack@diakonie-kropp.de', 'Kunde', '', '0 46 24 - 801802', '', '', '0 46 24 - 801100'),
(226, 1, 'Studio Hamburg Distribution & Marketing', 'Christian', 'Friedrichs', 'Jenfelder Allee 80', '22039', 'Hamburg', 'Deutschland', 'http://www.studio-hamburg.de', 'distribution@studio-hamburg.de', 'Kunde', '', '040 - 66885113', '', '', '040 - 66884744'),
(227, 1, 'Sophienhof Werbegemeinschaft GbR', 'Angelika', 'Klimpke', 'Sophienblatt 20', '24103', 'Kiel', 'Deutschland', 'http://www.ece.com', 'angelika.klimpke@ece.com', 'Kunde', '', '04 31 - 67 30 44', '', '', '04 31 - 67 30 49'),
(228, 1, 'Sophienhof Werbegemeinschaft GbR', 'Katrin', 'Berling', 'Sophienblatt 20', '24103', 'Kiel', 'Deutschland', 'http://www.ece.com', 'katrin.berling@ece.com', 'Kunde', '', '04 31 - 67 30 44', '', '', '04 31 - 67 30 49'),
(229, 1, 'Sophienhof Werbegemeinschaft GbR', 'Simone', 'Reichel', 'Sophienblatt 20', '24103', '', 'Deutschland', 'http://www.ece.com', 'simone.reichel@ece.com', 'Kunde', '', '04 31 - 67 30 44', '', '', '04 31 - 67 30 49'),
(230, 1, 'Wild', 'Margit', 'Wild', 'Meiereiweg 16', '18196', 'Dummersdorf', 'Deutschland', 'http://www.foto-synthese    /   www.foto-synthese.com', 'm.wild@foto-synthese    /   www.foto-synthese.com', 'Kunde', 'Freie Bildjournalistin', '038208-822781', '', '0179-5092648', ''),
(231, 1, 'Tachycon Limited ', 'Dr. Volker', 'Binding (GF)', 'Hofholzallee 63', '24109', 'Kiel', 'Deutschland', 'http://www.tachyles.com', 'binding@tachyles.com', 'Kunde', '', '0431 - 5606409', '', '', '0431 - 5606408'),
(232, 1, 'Take a card  (Werbung &Medienservice) Benk, F', 'Gordon', 'Fölz', 'Kehdenstraße 1 2. Stock', '24103', 'Kiel', 'Deutschland', 'http://www.take-a-card.de', 'info@take-a-card.de', 'Kunde', '', '0431 - 85409', '', '', '0431 - 3801727'),
(233, 1, 'taste! food & beverage communication ', 'Günther', 'Nessel', 'Frankfurter Strasse 111', '63067', 'Offenbach/Main', 'Deutschland', 'http://www.taste-werbeagentur.de', 'g.nessel@taste-werbeagentur.de', 'Kunde', '', '069 - 98193145', '', '', '069 - 98193189'),
(234, 1, 'taste! food & beverage communication ', 'Christine', 'Weber', 'Frankfurter Strasse 111', '63067', 'Offenbach/Main', 'Deutschland', 'http://www.taste-werbeagentur.de', 'c.weber@taste-werbeagentur.de', 'Kunde', '', '069 - 98193145', '', '', '069 - 98193189'),
(235, 1, 'Christian-Albrechts-Universität zu Kiel', 'Dr. Boris', 'Pawlowski', 'Christian-Albrechts-Platz 4', '24118', 'Kiel', 'Deutschland', 'http://www.uv.uni-kiel.de', 'presse@uv.uni-kiel.de', 'Kunde', 'Pressesprecher, Stabsstelle Presse', '0431 / 880-3004', '', '0170 / 6343904', '0431 / 880-1355'),
(236, 1, 'Neue Nieswand Druck GmbH', 'Thorben', 'Bock', 'Am Kiel-Kanal 2', '24106', 'Kiel', 'Deutschland', 'http://www.neuenieswanddruck.de', 'info@neuenieswanddruck.de', 'Kunde', '', '0431-90 88 28 05', '', '', '0431 - 90 88 28-10'),
(237, 1, 'TULIP FOOD COMPANY GmbH ', 'Raul', 'Filusch', 'Christoph-Probst-Weg 26', '20251', 'Hamburg', 'Deutschland', 'http://www.tulip.de', 'info.kiel@tulip.de', 'Kunde', 'Geschäftsführer', '040 / 554 360 - 30 (Zentrale) ', '', '', '040 / 554 360 - 75 (Foodservice)'),
(238, 1, 'TULIP FOOD COMPANY GmbH ', 'Gabriele', 'Jerono', 'Christoph-Probst-Weg 26', '20251', 'Hamburg', 'Deutschland', '', '', 'Kunde', '', '040 / 554 360 - 30 (Zentrale) ', '', '', '040 / 554 360 - 75 (Foodservice)'),
(239, 1, 'TULIP FOOD COMPANY GmbH ', 'Britta', 'Bade ', 'Christoph-Probst-Weg 26', '20251', 'Hamburg', 'Deutschland', 'http://www.tulip.de', 'brba@tulip.de', 'Kunde', 'Marketing', '040 / 554 360 - 42 ', '', '0160-4742801', '040 / 554 360 - 75 (Foodservice)'),
(240, 1, 'sh:z Medienhaus Sylt', 'Michael', 'Stitz', 'Andreas-Dirks-Str. 14', '25980', 'Sylt / OT Westerland', 'Deutschland', 'http://www.shz.de', 'sti@shz.de', 'Kunde', 'Gesamtleitung / Chefredaktion', '0 46 51 / 98 14 1390', '', '0162 / 13 14 206 ', '0 46 51 / 98 14 2389'),
(241, 1, 'Umweltschutzamt Kiel ', 'Sabine', 'Bodenburg', 'Andreas-Gayk-Straße 31', '24103', 'Kiel', 'Deutschland', 'http://www.kiel.de', 'umweltschutzamt@kiel.de', 'Kunde', '', '0431 - 9013797', '', '', ''),
(242, 1, 'Umweltschutzamt Kiel ', 'Andrea', 'Böttger', 'Andreas-Gayk-Straße 31', '24103', 'Kiel', 'Deutschland', 'http://www.kiel.de', 'umweltschutzamt@kiel.de', 'Kunde', '', '0431 - 9013730', '', '', ''),
(243, 1, 'Umweltschutzamt Kiel ', 'Horst', 'Meeder', 'Andreas-Gayk-Straße 31', '24103', 'Kiel', 'Deutschland', 'http://www.kiel.de', 'umweltschutzamt@kiel.de', 'Kunde', '', '0431 - 9013747', '', '', ''),
(244, 1, 'Vaku-Fleischspezialitäten GmbH & Co. KG ', 'Hans', 'Clausen ', 'Meiereistraße 10', '24972', 'Steinbergkirche', 'Deutschland', 'http://www.vaku.de', 'clausen@vaku.de', 'Kunde', 'Geschäftsführer', '04632-7770', '', '', '04632 - 7289'),
(245, 1, 'Vermarktungs-gesellschaft\nBioland SH Naturpro', '', '', 'Havelstraße 39', '24539', 'Neumünster', 'Deutschland', 'http://www.vermarktungsgesellschaft.de', 'info@vermarktungsgesellschaft.de', 'Kunde', '', '04321 - 95270', '', '', '04321 - 952745'),
(246, 1, 'Vermarktungs-gesellschaft Bioland SH Naturpro', 'Klaus ', 'Schneider-Reiss Geschäftsführer', 'Havelstraße 39', '24539', 'Neumünster', 'Deutschland', 'http://www.bio-produkte.de', 'schneider@bio-produkte.de', 'Kunde', '', '04321 - 952730', '', '0179-3264', '04321 - 952745'),
(247, 1, 'VCD | Landesverband Schleswig-Holstein ', '', '', 'Samwerstraße16', '24118', 'Kiel', 'Deutschland', 'http://www.vcd.org', 'schleswig-holstein@vcd.org', 'Kunde', '', '0431 - 9864626', '', '', '0431 - 9864650'),
(248, 1, 'VCD Verkehrsclub Deutschland ', 'Kirsten', 'Kock', 'Medusastraße 11', '23143', 'Kiel', 'Deutschland', 'http://www.radmobil-kiel.de', 'kock@radmobil-kiel.de', 'Kunde', '', '0431 - 9864626', '', '', ''),
(249, 1, 'Christian-Albrechts-Universität zu Kiel', 'Jürgen', 'Haacks', '', '0', '', 'Deutschland', 'http://www.uv.uni-kiel.de', 'jhaacks@uv.uni-kiel.de', 'Kunde', 'Pressebildarchiv', '0431 / 880 - 7416', '', '', ''),
(250, 1, 'Vektorrausch GmbH (Internetagentur)', 'Tobias', 'Herold', 'Werftbahnstrasse 8', '24143', 'Kiel', 'Deutschland', 'http://www.vektorrausch.de', 'herold@vektorrausch.de', 'Kunde', '', '0431 - 7028169', '', '', '0431 - 7028171'),
(251, 1, 'Verlagskontor Adler ', 'Horst Dieter', 'Adler', 'Sünderup (Dorf) 46', '24943', 'Flensburg', 'Deutschland', 'http://www.t-online.de', 'verlagskontor-adler@t-online.de', 'Kunde', '', '0461 - 6700000', '', '', '0461 - 6700008'),
(252, 1, 'Video Media GmbH & Co. KG ', 'Michael', 'Schröder', 'Klosterkirchhof 18-20', '24103', 'Kiel ', 'Deutschland', 'http://www.videomedia.de', 'info@videomedia.de', 'Kunde', '', '0431 - 91011', '', '0151-17828', '0431 - 970779'),
(253, 1, 'VPK SH Verband der Privatkliniken in Schleswi', 'Ulrike', 'Petersen', 'Feldstr. 75', '24105', 'Kiel ', 'Deutschland', 'http://www.kgsh.de', 'ulrike.petersen@kgsh.de', 'Kunde', '', '0431 - 84035', '', '', '0431 - 84055 '),
(254, 1, 'Werbung & Idee Werbemittelvertrieb GmbH ', 'Jörg', 'Muskat', 'Haberstraße 21', '24537', 'Neumünster', 'Deutschland', 'http://www.werbungundidee.de', 'info@werbungundidee.de', 'Kunde', '', '04321 - 939350', '', '', '04321 - 939349'),
(255, 1, 'gkPublic Relations', 'Ulf', 'Evert', 'Holstenstraße 14-16', '24103', 'Kiel', 'Deutschland', 'http://www.gkpr.de', 'evert@gkpr.de', 'Kunde', '', '0431 / 9827660', '', '0177 / 2411651', '0431 / 98658898'),
(256, 1, 'Wipak GmbH & Co KG ', '', 'Herr Ahrens', 'Bahnhofsstr. Tor 1', '29699', 'Bomlitz', 'Deutschland', 'http://www.wipak.de', 'info.germany@wipak.de', 'Kunde', '', '05161-440', '', '', ''),
(257, 1, 'Wir 3 Werbung GmbH', 'Claudia', 'Freitag, Projektmanag.', 'Steekberg 3', '24107', 'Kiel', 'Deutschland', 'http://www.wirdrei.de', 'c.freitag@wirdrei.de', 'Kunde', '', '0431 - 3192050', '', '0170-18800', '0431 - 3192021'),
(258, 1, 'WPS Betriebs GmbH ', 'Michael', 'Woschniak', 'Am Kleinbahnhof 10', '25746', 'Heide', 'Deutschland', 'http://www.megaland.de, m.woschniak', 'm.woschniak@megaland.de, m.woschniak@gosch-partner.de', 'Kunde', 'Geschäftsführer', '0481 / 85 03 61 - 25', '', '0172-432 30 00', '0481 / 85 03 61 - 26'),
(259, 1, 'SARTORI & BERGER GmbH & Co. KG', 'Herrn Simone Tommaso', 'Maraschi', 'Wall 47/51', '24103', 'Kiel', 'Deutschland', 'http://www.SARTORI-BERGER.de', 'info@SARTORI-BERGER.de', 'Kunde', '', '0431 - 981-108 ', '', '', '0431 -  96 108 (24/7) '),
(260, 1, 'Zippel´s Läuferwelt Sportartikel GmbH', 'Rainer', 'Ziplinsky', 'Rathausstrasse 2', '24103', 'Kiel', 'Deutschland', 'http://www.zippels.de', 'info@zippels.de', 'Kunde', '', '0431-93112', '', '', ''),
(261, 1, 'Decker Design', 'Ömer', 'Cavkaytar (Dschaukaita)', 'Skagerrakufer 7', '24159', 'Kiel ', 'Deutschland', 'http://www.wortbildton.de / oc', 'cavkaytar@wortbildton.de / oc@deckerdesign.de ', 'Kunde', 'Freier Texter und Konzeptioner', '0431 / 2472381 (DD) oder 8888 ', '', '0173 / 2335721', ''),
(262, 1, 'ZMI Zur Mühlen International GmbH Geschäftsfü', 'Peter', 'zur Mühlen', 'Gewerbestraße', '24860', 'Böklund', 'Deutschland', '', '', 'Kunde', '', '046 23 -77- 0', '', '', ''),
(263, 1, 'Keste Meeresdelikatessen', 'Björn ', 'Keste', 'Kornstieg 20', '24537', 'Neumünster', 'Deutschland', 'http://www.keste.de', 'info@keste.de', 'Kunde', '', '0 43 21 - 60 25 57', '', '', '0 43 21 - 92 91 63'),
(264, 1, 'Fleischer-Verband Schleswig-Holstein', 'Rita', 'Suhr', 'Thormannplatz 8-10', '24768', 'Rendsburg', 'Deutschland', 'http://www.fleischerverband-sh.de', 'info@fleischerverband-sh.de', 'Kunde', '', '04331 / 4349943', '', '', '04331 / 4349944'),
(265, 1, 'GOSCH SYLT Versand', 'Matti', 'Voß', 'Sauerstraße 17', '24340', 'Eckernförde', 'Deutschland', 'http://www.gosch.de', 'm.voss@gosch.de', 'Kunde', 'Geschäftsführer', '04351 / 883155', '', '0170 / 8349918', '04351 / 883133'),
(266, 1, 'EBK - Eigenbetrieb Beteiligungen Landeshaupts', 'Andrea', 'Kobarg', 'Holstenstraße 106 - 108', '24103', 'Kiel', 'Deutschland', 'http://www.kiel.de', 'andrea.kobarg@kiel.de', 'Kunde', '', '0431 / 901-4505', '', '', '0431 / 901-64505'),
(267, 1, 'EBK - Eigenbetrieb Beteiligungen Landeshaupts', 'Wiebke', 'Petersen-Bonow', 'Holstenstraße 106 - 108', '24103', 'Kiel', 'Deutschland', 'http://www.kiel.de', 'wiebke.bonow@kiel.de', 'Kunde', '', '0431 / 0901-4502', '', '', '0431 / 901-64505'),
(268, 1, 'Kompetenzzentrum Milch Schleswig-Holstein, Ag', 'Rike', 'Teegen', 'Hermann-Rodewald-Straße 6', '24118', 'Kiel', 'Deutschland', 'http://www.tierzucht.uni-kiel.de', 'rteegen@tierzucht.uni-kiel.de', 'Kunde', '', '04 31 - 880 31 92', '', '', '04 31 - 880 25 88'),
(269, 1, 'GOSCH München Josef Rubenbauer GmbH & Co.KG', 'Karlheinz', 'Reindl', 'Bahnhofplatz 2', '80335', 'München', 'Deutschland', 'http://www.josef-rubenbauer.de', 'karlheinz.reindl@josef-rubenbauer.de', 'Kunde', 'CEO-Sprecher der GS', '089 / 54907114', '', '0172 / 7604551', '089 / 54907190'),
(270, 1, 'Keste Meeresdelikatessen', 'Miriam', 'Keste', 'Kornstieg 20', '24537', 'Neumünster', 'Deutschland', 'http://www.keste.de', 'info@keste.de', 'Kunde', '', '0 43 21 - 60 25 57', '', '0151 / 40 255 701', '0 43 21 - 92 91 63'),
(271, 1, 'Bleyer & Wichert GmbH & Co. KG', 'Mike', 'Koselowski', 'Carl-Benz-Straße 8', '24568', 'Kaltenkirchen', 'Deutschland', 'http://www.bleyer-wichert.de', 'koselowski@bleyer-wichert.de', 'Kunde', '', '04191 / 993914', '', '', '04191 / 993919'),
(272, 1, 'Bleyer & Wichert GmbH & Co. KG', 'Susanne', 'Hülsen', 'Carl-Benz-Straße 8', '24568', 'Kaltenkirchen', 'Deutschland', 'http://www.bleyer-wichert.de', 'huelsen@bleyer-wichert.de', 'Kunde', '', '04191 / 9939-16', '', '0172 / 4282240', '04191 / 9939-19'),
(273, 1, 'Bleyer & Wichert GmbH & Co. KG', 'Thomas ', 'Wichert', 'Carl-Benz-Straße 8', '24568', 'Kaltenkirchen', 'Deutschland', 'http://www.bleyer-wichert.de ', 'wichert@bleyer-wichert.de ', 'Kunde', 'Geschäftsführer', '04191 / 9939-0', '', '', '04191 / 9939-19'),
(274, 1, 'Neue MAYO Feinkost Gmbh', 'Philip', 'Harland', 'Seelandstrasse 36', '23569', 'Lübeck', 'Deutschland', 'http://www.mayo-feinkost.de', 'p.harland@mayo-feinkost.de', 'Kunde', 'GF', '0451-619530', '', '0172-2931799', '0451-692241'),
(275, 1, 'Statt Auto', 'Hinrich', 'Kählert', 'Samwerstr.16', '24118', 'Kiel', 'Deutschland', 'http://www.stattauto-kiel.de', 'info@stattauto-kiel.de', 'Kunde', '', '0431-9864650', '', '', '0431-986460'),
(276, 1, 'Statt Auto eG', 'Hinrich', 'Kählert', 'Kanalstrasse 70', '23552', 'Lübeck', 'Deutschland', '', '', 'Kunde', '', '0451-77825', '', '', '0451-706700'),
(277, 1, 'Nordsee-Tourismus-Sevice', 'Malte', 'Keller', 'Zingel 5', '25813', 'Husum', 'Deutschland', 'http://www.nordseetourismus.de', 'malte.keller@nordseetourismus.de', 'Kunde', '', '04841/897511', '', '', '04841/4843'),
(278, 1, 'Aurora Sylt', 'Georg', 'Supanz', 'Theodor-Heuss-Straße 14a', '25980', 'Westerland/Sylt', 'Deutschland', 'http://www.supanz.de', 'georg@supanz.de', 'Kunde', 'Presse- & Werbefotografie', '04651 / 944 126', '', '0175 / 821 98 25', 'www.aurora-sylt.de'),
(279, 1, 'Fischertext.UND PR.', 'Michael', 'Fischer + Eva Schröder', 'Beselerallee 57', '24105', 'Kiel', 'Deutschland', 'http://www.fischertext.de', 'fischer@fischertext.de', 'Kunde', '', '0431 / 9089779-0', '', '', '0431 / 9089779 - 9'),
(280, 1, 'Sylt Marketing GmbH', 'Moritz', 'Luft', 'Stephanstrasse 6', '25980', 'Westerland/Sylt', 'Deutschland', 'http://www.sylt.de', 'm.luft@sylt.de', 'Kunde', '', '04651-820220', '', '', '04651-820222'),
(281, 1, 'Rummel', 'Andreas', 'Rummel', '', '0', '', 'Deutschland', 'http://www.fire-food-fun.de', 'info@fire-food-fun.de', 'Kunde', '', '', '', '0157-72597094', ''),
(282, 1, 'Wefers Object Design', 'Harald', 'Wefers', 'Rendsburger Landstrasse 211', '24113', 'Kiel', 'Deutschland', 'http://www.wefersdesign.de', 'wefers@wefersdesign.de', 'Kunde', 'Diplom-Designer', '0431-689890', '', '', '0431-68989-15'),
(283, 1, 'Zuckerguss design', 'Meike Schlufter/Simone Beeck', '', 'Schulredder 6', '24106', 'Kiel', 'Deutschland', 'http://www.zuckerguss-design.de', 'info@zuckerguss-design.de', 'Kunde', '', '0431-2374042', '', '', '0431-2374054'),
(284, 1, 'Danish Crown GmbH', 'Stefan', 'Gotthard', 'Winkelhörner Weg 1a', '24794', 'Borgstedt', 'Deutschland', 'http://www.danishcrown.dk', 'sgo@danishcrown.dk', 'Kunde', '', '04331 / 3533-28', '', '0172 / 2992366', '04331 / 353318'),
(285, 1, 'Cosmo Pro GmbH & Co. KG  ', 'Dirk', 'Jesinghaus', 'Hermann-Buck-Weg 19', '22309', 'Hamburg', 'Deutschland', 'http://www.cosmo-pro.de', 'dirk.jesinghaus@cosmo-pro.de', 'Kunde', 'Prokurist', '040 / 636037-25', '', '0176 / 22776232', '040 / 636037-29'),
(286, 1, 'Landwirtschaftskammer Schleswig-Holstein', 'Susanne', 'Mohr', 'Grüner Kamp 15 - 17', '24768', 'Rendsburg', 'Deutschland', 'http://www.lksh.de', 'smohr@lksh.de', 'Kunde', '', '04331-9453406', '', '', '04331-9453409'),
(287, 1, 'SARTORI & BERGER GmbH & Co. KG', 'Michael', 'Hartmann', 'Wall 47-51', '24103', 'Kiel', 'Deutschland', 'http://www.sartori-berger.de', 'm.hartmann@sartori-berger.de', 'Kunde', '', '0431 981 114', '', '', '0431 961 08'),
(288, 1, 'Ridder-Immobilien', 'Dirk', 'Ridder', 'Beimoorweg 46', '22927', 'Großhansdorf', 'Deutschland', 'http://www.immobilien-ridder.de', 'dirk.ridder@immobilien-ridder.de', 'Kunde', '', '04102 - 666244', '', '', ''),
(289, 1, 'Lichter', 'Nikolaus', 'M. Lichter', 'Maison 7', '0', 'Geyershof - Luxemburg', 'Deutschland', 'http://www.nicmali.eu', 'nl@nicmali.eu', 'Kunde', '', '069-40809330', '', '', ''),
(290, 1, 'Kieler Nachrichten', 'Anja', 'Herbst', 'Fleethörn 1-7', '24103', 'Kiel', 'Deutschland', 'http://www.kieler-nachrichten.de', 'ah.vert@kieler-nachrichten.de', 'Kunde', '', '0431 -9032602', '', '', '0431-9032603'),
(291, 1, 'Geisler', 'Kurt', 'Geisler', 'Niebuhrstraße 24', '24118', 'Kiel', 'Deutschland', 'http://www.gmx.de', 'geislerkurt@gmx.de', 'Kunde', 'Schriftsteller', '0431 / 5301322', '', '0157 / 03010567', ''),
(292, 1, 'Christian-Albrechts-Universität zu Kiel', 'Andrea', 'Eickmeier', 'Christian-Albrechts-Platz 4', '24118', 'Kiel', 'Deutschland', 'http://www.uv.uni-kiel.de', 'aeickmeier@uv.uni-kiel.de', 'Kunde', '', '0431 / 880-4847', '', '0172 / 3613409', '0431 / 880-484'),
(293, 1, 'Landkaufhaus Mayer GmbH', 'Nikolaus ', 'Schwenn', 'Vachendorfer Str. 3', '83313', 'Siegsdorf', 'Deutschland', 'http://www.landkaufhausmayer.de', 'nikolaus@landkaufhausmayer.de', 'Kunde', '', '08662-4934 -0', '', '', ' 086 62-4934 -30'),
(294, 1, 'Landkaufhaus Mayer GmbH', 'Paul', 'Mayer', 'Vachendorfer Str. 3', '83313', 'Siegsdorf', 'Deutschland', 'http://www.landkaufshausmayer.de', 'paul@landkaufshausmayer.de', 'Kunde', '', '08662-4934 -0', '', '01 60 / 80 35 915', '08662-4934 -30'),
(295, 1, 'GEWOBA Nord Baugenossenschaft eG', 'Laurie', 'Finster', 'Osterende 46', '25813', 'Husum', 'Deutschland', 'http://www.gewoba-nord.de', 'l.finster@gewoba-nord.de', 'Kunde', '', '04841 / 8996-0', '', '', '04841 / 8996-10'),
(296, 1, 'Christian-Albrechts-Universität zu Kiel', 'Claudia', 'Eulitz', '-', '24098', 'Kiel', 'Deutschland', 'http://www.uv.uni-kiel.de', 'ceulitz@uv.uni-kiel.de', 'Kunde', 'Stellvertr. Pressesprecherin, Stabsstelle Presse, Kommunikation und Marketing', '0431 / 880-7110', '', '0171 / 3000748', '0431 / 880-1355'),
(297, 1, 'coop eG', 'Rainer', 'Judick', 'Benzstraße 10', '24148', 'Kiel', 'Deutschland', 'http://www.coop.de', 'rainer.judick@coop.de', 'Kunde', '', '0431 / 7250-536', '', '0160 / 96552711', ''),
(298, 1, 'TV Sylt / PROmedia Marketing Sylt', 'Tobias', 'Enkelmann', 'Stephanstraße 8', '25980', 'Westerland', 'Deutschland', 'http://www.hanse-promedia.de', 'tobias.enkelmann@hanse-promedia.de', 'Kunde', 'Anzeigenleiter', '04651 / 83 609 - 44', '', '0163 / 650 8 640 ', '04651 / 83 609 - 50'),
(299, 1, 'Appelwarder Spez.-Kate Knud Klüver GmbH & Co.', 'Ralf', 'Lehmitz', 'Appelwarder 3', '24211', 'Kühren', 'Deutschland', 'http://www.appelwarder.de;  ra-lehmitz', 'ralf.lehmitz@appelwarder.de;  ra-lehmitz@t.online.de', 'Kunde', 'Geschäftsführer-Vertrieb', '', '', '0171-6771395', '04342-887948'),
(300, 1, 'BUD Bau- und Dienstleistung GmbH', 'Frank', 'Röhl', 'Moltkestraße 32', '24837', 'Schleswig', 'Deutschland', 'http://www.hmsnord.de', 'f.roehl@hmsnord.de', 'Kunde', 'Betriebsleiter  Bereich Handwerker und Mieterservice', '04621 / 811-888', '', '0170 / 7856366', '04621 / 811-889'),
(301, 1, '', 'Aleksandr', 'Mattal', '', '0', '', 'Deutschland', 'http://www.gmail.com', 'aleksandr.mattal@gmail.com', 'Kunde', 'Freelancer Web', '', '', '0174 / 1732535', ''),
(302, 1, 'Popp Feinkost', 'Rebecca', 'Prach', 'Carl-Benz-Str. 3', '24568', 'Kaltenkirchen', 'Deutschland', 'http://www.popp-feinkost.de', 'Rebecca.Prach@popp-feinkost.de', 'Kunde', 'Marketing', '04191-501472', '', '', ''),
(303, 1, 'SYLT life - Creativ Consult Team GmbH  ', '', ' Herr Winter', 'Kjeirstr.17b', '25980', 'Sylt / OT Westerland', 'Deutschland', 'http://www.sylt-life.de', 'anzeigen@sylt-life.de', 'Kunde', '', '0 46 51 / 83 53 11', '', '', '0 46 51 / 835 60 50 '),
(304, 1, 'SYLT life - Creativ Consult Team GmbH  ', 'Christian ', 'Sonntag', 'Kjeirstr.17b', '25980', 'Sylt / OT Westerland', 'Deutschland', 'http://www.sylt-life.de', 'christiansonntag@sylt-life.de', 'Kunde', 'Verlagsleitung ', '0 46 51 / 83 53 11', '', '', '0 46 51 / 83 57 102'),
(305, 1, 'coop eG', 'Melanie', 'Wunder', 'Benzstraße 10', '24148', 'Kiel', 'Deutschland', 'http://www.coop.de', 'melanie.wunder@coop.de', 'Kunde', 'Buchhaltung', '0431 / 7250-440', '', '', ''),
(306, 1, 'GEWOBA Nord Baugenossenschaft eG', 'Katharina', 'Rümcker', 'Moltkestraße 32', '24837', 'Schleswig', 'Deutschland', 'http://www.gewoba-nord.de', 'K.Ruemcker@gewoba-nord.de', 'Kunde', 'Marketing / Öffentlichkeitsarbeit', '04621 / 811-323', '', '0176 /  21327833', '04621 / 811-811'),
(307, 1, 'AWR / Abfallwirtschaftsgesellschaft Rendsburg', 'Dr. Marina', 'Romero-Wetzel', 'Borgstedtfelde 15', '24794', 'Borgstedt', 'Deutschland', 'http://www.awr.de', 'm.romero-wetzel@awr.de', 'Kunde', 'Öffentlichkeitsarbeit', '04331-345 - 2 11', '', '', '04331-3 45 - 1 11'),
(308, 1, 'GOSCH LFG GmbH', 'Sara', 'Holst', 'Pinnasberg 47 (Dock 47)', '20359', 'Hamburg', 'Deutschland', 'http://www.gosch.de', 's.holst@gosch.de', 'Kunde', '', '040 / 5305668-0', '', '0151 / 42633027', '040 / 5305668-22'),
(309, 1, 'Schirmherrschaft Handling & More', 'Hans', 'Schwarz', 'Schützenstr.107', '22761', 'Hamburg', 'Deutschland', 'http://www.Schirmherrschaft.De', 'Hans.Schwarz@Schirmherrschaft.De', 'Kunde', 'GS', '040-85170611', '', '0172-4041313', '040-85170649'),
(310, 1, 'CITTI Handelsges. mbH & Co. KG', 'Kai', 'Krohn', 'Mühlendamm 1', '24113', 'Kiel', 'Deutschland', 'http://www.citti.de', 'kai.krohn@citti.de', 'Kunde', 'Einkäufer Wein', '0431 / 6893-328', '', '0179 / 5405670', '0431 / 6893-255'),
(311, 1, 'Citti Märkte GmbH & Co. Kommanditgesellschaft', 'Ulrich', 'Walter', 'Bunsenstraße 5', '24145', 'Kiel', 'Deutschland', 'http://www.citti.de', 'u.walter@citti.de', 'Kunde', 'Weinfachberater', '0431 / 7108-218', '', '0170 / 8511631', '0431 / 7108-128'),
(312, 1, 'Nordsee-Tourismus-service', 'Constanze', 'Höfinghoff', 'Zingel 5', '25813', 'Husum', 'Deutschland', 'http://www.nordseetourismus.de', 'c.hoefinghoff@nordseetourismus.de', 'Kunde', 'GS', '04841897512', '', '', '048144843'),
(313, 1, 'Unartig GmbH', 'Ute ', 'Pioch', 'Feldstr.63', '24105', 'Kiel', 'Deutschland', 'http://www.unartig.de', 'u.pioch@unartig.de', 'Kunde', 'GS', '', '', '0171-6977819', ''),
(314, 1, 'Unartig GmbH', 'Kai-Christian', 'Becker', 'Feldstr.63', '24105', ' Kiel', 'Deutschland', 'http://www.unartig.de', 'k.becker@unartig.de', 'Kunde', 'GS', '0431-8001557', '', '0175-2607587', ''),
(315, 1, 'GOSCH  Fischkiste im Hauptbahnhof GmbH', 'Jan', 'Spieler', 'Glockengiesserwall 8-10', '20095', 'Hamburg', 'Deutschland', 'http://www.web.de', 'jespieler@web.de', 'Kunde', '', '040 / 41543769', '', '0170 / 9259327', '040 / 41543770'),
(316, 1, 'EKSH - Gesellschaft für Energie u.Klimaschutz', 'Dr. Klaus', 'Wortmann', 'Boschstraße 1', '24118', 'Kiel', 'Deutschland', 'http://www.eksh.org', 'wortmann@eksh.org', 'Kunde', '', '0431 / 9805-880', '', '0151 / 61343271', '0431 /9805-888'),
(317, 1, 'EKSH - Gesellschaft für Energie u. Klimaschut', 'Sabine', 'Recupero', 'Boschstraße 1', '24118', 'Kiel', 'Deutschland', 'http://www.eksh.org', 'Recupero@eksh.org', 'Kunde', '', '0431 / 09805-860', '', '', '0431 / 9805-888'),
(318, 1, 'Doc Lue', 'Thomas', 'Dr. med.Luetgebrune', 'Plessenstraße 1a', '24837', 'Schleswig', 'Deutschland', 'http://www.t-online.de', 'doc.lue@t-online.de', 'Kunde', 'Facharzt für HNO-Heilkunde', '04621 / 22038', '', '0171 / 7785502', '04621 / 22777'),
(319, 1, 'Appelwarder Spez.-Kate Knud Klüver GmbH & Co.', 'Deike ', 'Fittkau', 'Appelwarder 3', '24211', 'Kühren ', 'Deutschland', 'http://www.appelwarder.de', 'd.fittkau@appelwarder.de', 'Kunde', 'Assistentin -Geschäftsführung-Vertrieb intern', '0 43 42 / 88 79 - 49', '', '', '0 43 42 / 88 79 - 13'),
(320, 1, 'Appelwarder Spez.-Kate Knud Klüver GmbH & Co.', 'Ellen', 'Steen', 'Appelwarder 3', '24211', 'Kühren', 'Deutschland', 'http://www.appelwarder.de', 'e.steen@appelwarder.de', 'Kunde', 'Assistentin Geschäftsführung-Finanzen-', '04342-8879-12', '', '', '04342-887920'),
(321, 1, 'Appelwarder Spez.-Kate Knud Klüver GmbH & Co.', 'Helge', 'Klüver', 'Appelwarder 3', '24211', 'Kühren', 'Deutschland', 'http://www.appelwarder.de', 'helge.kluever@appelwarder.de', 'Kunde', 'Geschäftsführer-Produktion-', '04342-8879-45', '', '', '04342-8879-13'),
(322, 1, 'coop eG / ausgeschieden', 'Rainer', 'Thomas', 'Benzstraße 10', '24148', 'Kiel', 'Deutschland', 'http://www.coop.de', 'rainer.thomas@coop.de', 'Kunde', 'Geschäftsführer Vertrieb u. Marketing', '0431 / 7250-720', '', '0151 / 61336202', '0431 / 7250-449'),
(323, 1, 'shz das medienhaus', 'Stephan ', 'Reußner', '', '0', '', 'Deutschland', 'http://www.shz.de', 'stephan.reussner@shz.de', 'Kunde', '', '0461-8082080', '', '', ''),
(324, 1, 'shz das medienhaus', 'Katrin', 'Bolte', '', '0', '', 'Deutschland', 'http://www.shz.de', 'katrin.bolte@shz.de', 'Kunde', '', '0461-8082083', '', '', ''),
(325, 1, 'Christiansen Architekten', 'Inga', 'Christiansen', 'Holtenauer Straße 325', '24106', 'Kiel', 'Deutschland', 'http://www.christiansen-architekten.de', 'inga@christiansen-architekten.de', 'Kunde', 'Dipl.Ing.', '0431 / 3643984', '', '0172 / 1644893', '0431 / 3643985'),
(326, 1, 'SARTORI & BERGER GmbH & Co. KG', 'Daniel', 'Bruhn', 'Wall 47/51', '24103', 'Kiel', 'Deutschland', 'http://www.sartori-berger.de', 'd.bruhn@sartori-berger.de', 'Kunde', 'Head of Shore Excursion Division', '+49 (0) 431 / 981 250', '', '', ''),
(327, 1, 'UJC Tondesign', 'Oliver ', 'Ujc', 'Hohenrade 9', '24106', 'Kiel', 'Deutschland', 'http://www.ujc.de, ujc-tondesign.de', 'tondesign@ujc.de, ujc-tondesign.de', 'Kunde', '', '0431-55686040', '', '0178 - 8022970', ''),
(328, 1, 'Christiansen Architekten', 'Per', 'Christiansen', 'Holtenauer Straße 325', '24106', 'Kiel', 'Deutschland', 'http://www.christiansen-architekten.de', 'per@christiansen-architekten.de', 'Kunde', 'Dipl.Ing.', '0431 / 3643984', '', '0173 / 6267738', '0431 / 3643985'),
(329, 1, 'Telekom Deutschland GmbH', 'Carsten', 'Sellmer', 'Gradestr. 20', '30163', 'Hannover', 'Deutschland', 'http://www.telekom.de', 'carsten.sellmer@telekom.de', 'Kunde', 'Vertriebsbeauftragter', '', '', '0151 / 121 02 611', '0391 / 5801 - 48726'),
(330, 1, 'Henry Kruse Kiel', 'Annette', 'Schmortte', 'Bunsenstraße 6', '24145', 'Kiel', 'Deutschland', '', '', 'Kunde', 'Einkauf', '0431 / 7101-158', '', '', '0431 / 716764'),
(331, 1, 'Achilles', 'Ellen', 'Becker', 'Buchkampweg 40', '29227', 'Celle', 'Deutschland', 'http://www.achilles.de', 'ebr@achilles.de', 'Kunde', '', '05141 / 753184', '', '', '05141 / 753338'),
(332, 1, 'Kron Lastadie GmbH', 'Lars', 'Gräning', 'Am Fischmarkt 13a', '18439', 'Stralsund', 'Deutschland', 'http://www.nordmann.de', 'l.graening@nordmann.de', 'Kunde', 'Geschäftsführer', '03831-4434945', '', '0177-4492487', '03831-4434971'),
(333, 1, 'Tischlerei Hansen', 'Michael', 'Greve', 'Hinrich-Schmidt-Straße 28', '25746', 'Heide', 'Deutschland', 'http://www.h-v-s.de', 'm.greve@h-v-s.de', 'Kunde', 'Geschäftsführer', '0481-85650', '', '', ''),
(334, 1, 'coop eG', 'Uli', 'Blunk', 'Benzstraße 10', '24148', 'Kiel', 'Deutschland', 'http://www.coop.de', 'ublunk@coop.de', 'Kunde', 'Grafiker Marketingabteilung', '0431 / 7250-394', '', '', ''),
(335, 1, 'Kieler Nachrichten', 'Reinhard', 'Kornath', '', '0', '', 'Deutschland', 'http://www.kieler-nachrichten.de', 'rk.mw@kieler-nachrichten.de', 'Kunde', '', '0431-9032224', '', '', ''),
(336, 1, 'Fire Food Fun uG', 'Stephan', 'Koloczek', 'Münchner Straße 7', '85635', 'Höhenkirchen', 'Deutschland', '', '', 'Kunde', '', '08102 / 8966515', '', '0176 / 22303078', '08102 / 8966516'),
(337, 1, 'Adler-Schiffe GmbH & Co KG', 'Juliane', 'Peter', 'Boysenstraße 13', '25980', 'Westerland/Sylt', 'Deutschland', 'http://www.adler-schiffe.de', 'juliane.peter@adler-schiffe.de', 'Kunde', 'Leitung Marketing', '04651 / 987027', '', '', '04651 / 9870627'),
(338, 1, 'Adler-Schiffe GmbH & Co KG', 'Sven', 'Paulsen', 'Boysenstraße 13', '25980', 'Westerland/Sylt', 'Deutschland', 'http://www.adler-schiffe.de', 'sven.paulsen@adler-schiffe.de', 'Kunde', 'Geschäftsleitung', '04651 / 98700', '', '0151 / 5139600', '04651 / 9870611'),
(339, 1, 'Gregoire Nicole', 'Nicole', 'Gregoire', '', '0', 'Kiel', 'Deutschland', 'http://www.gregoire.de', 'nicole@gregoire.de', 'Kunde', 'Motion Design', '0431 / 5578660', '', '', ''),
(340, 1, 'Christian-Albrechts-Universität zu Kiel', 'Jörg-Peter', 'Klaus', 'Wilhelm-Seelig-Platz 3-5', '24118', 'Kiel ', 'Deutschland', 'http://www.druckerei.uni-kiel.de', 'jpklaus@druckerei.uni-kiel.de', 'Kunde', 'Leiter Universitätsdruckerei ', '0431 / 880-3060', '', '', '0431 / 880-3064'),
(341, 1, 'Feuerwerkdepot-Nord Mirco Lorkowski', 'Mirco', 'Lorkowski', 'Zum Winterhitzer 2', '23569', 'Lübeck', 'Deutschland', 'http://www.freenet.de', 'depot-nord@freenet.de', 'Kunde', '', '0451 / 3020050', '', '0170 / 3584232', '0451 / 3020055'),
(342, 1, 'Förderverein für Palliativmedizin Kiel e.V.', '', '', 'Schwanenweg 21     (Gebäude der ISPS)', '24105', 'Kiel', 'Deutschland', 'http://www.fvp-kiel.de', 'kontakt@fvp-kiel.de', 'Kunde', '', '0431 / 5973001', '', '', '0431 / 5972227'),
(343, 1, 'Konzepte und Profile', 'Michaela ', 'Dr. phil. Mundt', 'Harmstraße 71', '24114', 'Kiel', 'Deutschland', 'http://www.dr-michaela-mundt.de', 'mm@dr-michaela-mundt.de', 'Kunde', ' Texterin u. Autorin', '0431-6574571', '', '', ''),
(344, 1, 'Weinhaus Tiemann', 'Birgit', 'Tiemann', 'Feldstraße 114', '24105', 'Kiel', 'Deutschland', 'http://www.weinhaus-tiemann.de', 'info@weinhaus-tiemann.de', 'Kunde', '', '0431 82635', '', '', ''),
(345, 1, 'Spiekermann Heizung u. Sanitär', 'Maik ', 'Spiekermann', 'Raiffeisenstrasse 1', '24214', 'Schinkel', 'Deutschland', 'http://www.spiekermann-heizung.de', 'service@spiekermann-heizung.de', 'Kunde', '', '04346-926217', '', '0170-3258815', '04346-926218'),
(346, 1, 'Heilmann AG', 'Carsten', 'Heilmann', 'Auf der Geest 2', '21514', 'Büchen', 'Deutschland', 'http://www.heilmann-ag.de', 'c.heilmann@heilmann-ag.de', 'Kunde', 'Geschäftsführer ', '04155 / 49997-100', '', '', '04155 / 49997-111'),
(347, 1, 'coop eG', 'Stefan', 'Lohmann', 'Benzstraße 10', '24148', 'Kiel', 'Deutschland', 'http://www.coop.de', 'stefan.lohmann@coop.de', 'Kunde', 'Einkauf O&G', '0431 / 7250-316', '', '', '0431 / 7250-321'),
(348, 1, 'coop eG', 'Hans-Jörg', 'Winkelmann', 'Benzstraße 10', '24148', 'Kiel', 'Deutschland', 'http://www.coop.de', 'hans-joerg.winkelmann@coop.de', 'Kunde', 'Einkauf O&G', '0431 / 7250 - 221', '', '', '0431 / 7250 - 321'),
(349, 1, 'Jost von Brandis', 'Birgit', 'Gutknecht', 'Elbberg 7', '22767', 'Hamburg', 'Deutschland', 'http://www.jvb.de', 'birgit.gutknecht@jvb.de', 'Kunde', 'Business Development', '040 / 8090582189', '', '', '040 / 8090583189'),
(350, 1, 'Giovanni L. Produktions- und Handelsges. mbH ', 'Jörg', 'Fischer', 'Suchskrug 5-7', '24107', 'Kiel ', 'Deutschland', 'http://www.giovannil-nord.de', 'fischer@giovannil-nord.de', 'Kunde', 'geschäftsführender Gesellschafter', '0431 / 908959-0', '', '0176 / 70441382', '0431 / 908959-49'),
(351, 1, 'Denkfabrik', 'Solveig', 'Borges', 'Külpstraße 7', '18439', 'Stralsund', 'Deutschland', 'http://www.denkfabrik.com', 'borges@denkfabrik.com', 'Kunde', 'Marketingassistentin', '03831 / 2892415 ', '', '0172 / 4532890', ''),
(352, 1, 'Denkfabrik', 'Stefanie', 'Nordmann', 'Külpstraße 7', '18439', 'Stralsund', 'Deutschland', 'http://www.n-finefood.de - nordmann', 'bitte immer an: Stefanie.Nordmann@n-finefood.de - nordmann@denkfabrik.com', 'Kunde', 'Geschäftsführerin', '03831 / 2892423 ', '', '', ''),
(353, 1, 'Eckert Yvonne (CMYKSTÜCK)', 'Yvonne', 'Eckert', 'Am Querkanal 4', '18439', 'Stralsund', 'Deutschland', 'http://www.cmykstueck.de', 'kontakt@cmykstueck.de', 'Kunde', 'Grafik Design', '', '', '0176 / 20375398', ''),
(354, 1, 'Goldammer Feinkost GmbH', 'Sven ', 'Schumacher', 'Goldammerweg 3', '24340', 'Eckernförde', 'Deutschland', 'http://www.paul-steffenhagen.de', 's.schumacher@paul-steffenhagen.de', 'Kunde', 'Geschäftsführer', '04351 / 6008', '', '0174 / 4083998', '04351 / 2677'),
(355, 1, 'coop eG', 'Michael', 'Kühn', 'Benzstraße 10', '24148', 'Kiel', 'Deutschland', 'http://www.coop.de', 'michael.kuehn@coop.de', 'Kunde', 'Fachberater Frische sky', '0431 / 7250-492', '', '0151 / 23470387', ''),
(356, 1, 'Kabuja Filmproduktion Jarre & Kahl GbR', 'Markus', 'Freitag', 'Langer Segen 8-10', '24105', 'Kiel', 'Deutschland', 'http://www.googlemail.com', 'markusfreitag@googlemail.com', 'Kunde', '', '', '', '0175 /1644666', ''),
(357, 1, 'Schlums & Franzen', 'Tobias', 'Braun', 'Kirchenweg 3', '25980', 'Sylt / Westerland', 'Deutschland', 'http://www.schlums-franzen.com', 't.braun@schlums-franzen.com', 'Kunde', 'Architekt', '04651 -83603-16', '', '0151 -21274018', '04651 -21387'),
(358, 1, 'coop eG', 'Enver', 'Just', 'Benzstraße 10', '24148', 'Kiel ', 'Deutschland', 'http://www.coop.de', 'Enver.Just@coop.de', 'Kunde', 'Einkauf', '0431 / 7250-853', '', '', '0431 / 7250-331'),
(359, 1, 'Brotgarten GmbH & Co. KG', 'Patricia ', 'Pitzschel', 'Liebigstraße 29', '24145', 'Kiel', 'Deutschland', 'http://www.brotgarten-kiel.de', 'pitzschel@brotgarten-kiel.de', 'Kunde', 'Geschäftsführerin', '0431 / 57974-0 oder DW -13', '', '0171 / 68 68 369', '0431 / 5797414'),
(360, 1, 'Brotgarten GmbH & Co. KG', 'Volker', 'Grezella', 'Liebigstraße 29', '24145', 'Kiel', 'Deutschland', 'http://www.brotgarten-kiel.de', 'grezella@brotgarten-kiel.de', 'Kunde', 'Geschäftsführer', '0431 / 57974-0 oder DW -23', '', '0173 / 5890042', '0431 / 5797414'),
(361, 1, 'mein coop magazin', 'Tina', 'Denecken', '', '0', '', 'Deutschland', 'http://www.fischertext.de', 'denecken@fischertext.de', 'Kunde', 'Texterin', '0431 - 908 9779-3', '', '0174 4261665', ''),
(362, 1, 'Loppokaffeeexpress', 'Axel', 'Datschun', '', '0', 'Kiel', 'Deutschland', 'http://www.googlemail.com', 'loppokaffeeexpress@googlemail.com', 'Kunde', 'Kaffeekocher', '', '', '01577 46 820 45', ''),
(363, 1, 'Nordmann Fine Food GmbH / Fritz Braugasthaus ', 'Silke', 'Pauls', 'Am Markt 13', '17489', 'Greifswald', 'Deutschland', 'http://www.n-finefood.de', 'Silke.Pauls@n-finefood.de', 'Kunde', 'Ass. Verkauf & Marketing', '03834 / 57 83 14', '', '', '03834 / 57 83 22'),
(364, 1, 'Landesberufsschule Photo + Medien Kiel', 'Jürgen', 'Christ', 'Feldstraße 9 - 11', '24105', 'Kiel', 'Deutschland', 'http://www.lbsphotomedien.de', 'christ@lbsphotomedien.de', 'Kunde', 'Studiendirektor', '04 31 / 57 97 0 - 23', '', '01 51 / 25 99 59 52', '04 31 / 57 97 0 - 25'),
(365, 1, 'Maselka Karoline (Kernidee)', 'Karoline', 'Maselka', 'Werftbahnstr. 8', '24143', 'Kiel', 'Deutschland', 'http://www.kernidee.com', 'info@kernidee.com', 'Kunde', '', '+49 (0) 431. 7028-128', '', '0151 / 15 978 225', 'Fax +49 (0) 321. 211 408 68'),
(366, 1, 'mein coop magazin', 'Jan', 'Petersen', 'Marienstr. 1-3', '24148', 'Kiel ', 'Deutschland', 'http://www.mein-coop-magazin.de', 'j.petersen@mein-coop-magazin.de', 'Kunde', 'Bildredaktion / Texter ', '0431 / 88 666 50', '', '', '0431 / 88 666 76'),
(367, 1, 'mein coop magazin', 'Michaela', 'Mundt', '', '0', '', 'Deutschland', 'http://www.dr-michaela-mundt.e', 'mm@dr-michaela-mundt.e', 'Kunde', 'Texterin', '65 745 71', '', '01522 - 16 57 442', '32 12 12 614 36'),
(368, 1, 'mein coop magazin', 'Katinka', 'Knorr', '', '0', '', 'Deutschland', 'http://www.mein-coop-magazin.de', 'k.knorr@mein-coop-magazin.de', 'Kunde', 'Gestaltung', '88 666 50', '', '', ''),
(369, 1, 'mein coop magazin', 'Karin ', 'Zander', '', '0', '', 'Deutschland', 'http://www.ki.tng.de', 'zarin@ki.tng.de', 'Kunde', 'Illustration', '04342 - 80 80 6', '', '0162 - 94 91 931', ''),
(370, 1, 'mein coop magazin', 'Patrick ', 'Nawe', '', '0', '', 'Deutschland', 'http://www.gmx.de', 'paparazzonawe@gmx.de', 'Kunde', 'Texter', '', '', '0173 - 57 67 550', ''),
(371, 1, 'DIGITYPIE', 'Robert', 'Kühl', 'Werftbahnstraße 8', '24143', 'Kiel', 'Deutschland', 'http://www.digitypie.de', 'info@digitypie.de', 'Kunde', 'Geschäftsführer', '0431 / 7028-160', '', '', '0431 / 7028-162'),
(372, 1, 'Thomas Martin Photography', 'Thomas', 'Martin', 'An der Schanze 29', '24159', 'Kiel ', 'Deutschland', 'http://www.tm-photography.com', 'info@tm-photography.com', 'Kunde', '', '39 48 13 56 oder 38 041 68', '', '0172 / 67 609 76', ''),
(373, 1, 'StrandGut Resort', 'Joern U. ', 'Sroka', 'Am Kurbad 2', '25826', 'St. Peter Ording', 'Deutschland', 'http://www.strandgut-resort.de', 'joernsroka@strandgut-resort.de', 'Kunde', 'Geschäftsführender Gesellschafter', '0 48 63 / 99 99 - 0', '', '01 63 / 5 37 09 01', '0 48 63 / 99 99 - 8'),
(374, 1, 'StrandGut Resort', 'Kerstin ', 'Brandt', 'Am Kurbad 2', '25826', 'St. Peter Ording', 'Deutschland', 'http://www.strandgut-resort.de', 'brandt@strandgut-resort.de', 'Kunde', 'Marketing & Revenue Manager', '0 48 63 / 99 99 - 0', '', '', '0 48 63 / 99 99 - 8'),
(375, 1, 'Kron-Lastadie GmbH ', 'Stefanie', 'Haack', 'Am Fischmarkt 13a', '18439', 'Stralsund', 'Deutschland', 'http://www.kron-lastadie.de', 'stefanie.haack@kron-lastadie.de', 'Kunde', 'Verkaufsassistentin', '03831 / 289 24 39', '', '', '03831 / 35 70 439'),
(376, 1, 'Jürgens Möbelbau Montagearbeiten', 'Lutz', 'Jürgens', 'Alte Landstraße 62', '24107', 'Stampe', 'Deutschland', 'http://www.juergens-design.com ', 'info@juergens-design.com ', 'Kunde', 'Inhaber', '04340 / 4989498', '', '0174 / 4746000', ''),
(377, 1, 'coop eG', 'Marcel', 'Klein', 'Benzstraße 10', '24148', 'Kiel ', 'Deutschland', 'http://www.coop.de', 'Marcel.Klein@coop.de', 'Kunde', 'Leitung Mitgliederbetreuung', '0431 / 7250-490', '', '0170 / 4058260', '0431 / 7250-554'),
(378, 1, 'VWM Project GmbH', 'Detlef', 'Uhlig', 'Fährwall 15a', '18439', 'Stralsund', 'Deutschland', 'http://www.vwm-project.de', 'info@vwm-project.de', 'Kunde', 'Geschäftsführer', '03831 / 30 33 0', '', '', '03831 / 30 33 22'),
(379, 1, 'GOSCH Verwaltungs GmbH  & Co. KG', 'Christian ', 'Maaß', 'Hafenstraße 16', '25992', 'List ', 'Deutschland', 'http://www.gosch.de', 'chr.maass@gosch.de', 'Kunde', '', '04651 / 9519-270', '', '0171 / 6497745', '04651 / 9519-275'),
(380, 1, 'Neue MAYO Feinkost GmbH ', 'Katharina', 'Zech', 'Seelandstr. 36', '23569', 'Lübeck', 'Deutschland', 'http://www.mayo-feinkost.de', 'k.zech@mayo-feinkost.de', 'Kunde', '', '0451 - 619 53 0', '', '', '0451 - 69 22 41'),
(381, 1, 'Werner Stefan (Fa. FORMGUT Designbüro)', 'Stefan', 'Werner ', 'Gneisenaustr. 12', '24105', 'Kiel', 'Deutschland', 'http://www.formgut.de', 'sw@formgut.de', 'Kunde', 'Texter', '0431 - 65 883 61', '', '0177 - 562 89 27', '0431 - 65 883 68'),
(382, 1, 'Upstalsboom hotel meerSinn', 'Jessica', 'Schäfers', 'Schillerstr. 6-10', '18609', 'Ostseebad Binz/Rügen', 'Deutschland', 'http://www.meersinn.de', 'marketing@meersinn.de', 'Kunde', 'Assistentin Marketing & Verkauf', '038393 - 663-550', '', '', '038393 - 663-23'),
(383, 1, 'Upstalsboom hotel meerSinn', 'Mirco', 'Hitzigrath', 'Schillerstr. 6-10', '18609', 'Ostseebad Binz/Rügen', 'Deutschland', 'http://www.meersinn.de', 'm.hitzigrath@meersinn.de', 'Kunde', 'Hoteldirektor', '038393 - 663-0', '', '0162 / 27 40 988', '038393 - 663-23'),
(384, 1, 'KIELTEXTIL', 'Jörg', 'Schowe', 'Koldingstr. 8', '24105', 'Kiel ', 'Deutschland', 'http://www.kieltextil.de', 'mail@kieltextil.de', 'Kunde', 'Geschäftsführer', '0431 - 259 609 89', '', '', '0431 - 557 89 93'),
(385, 1, 'Nordmann Fine Food GmbH', 'Solveig', 'Borges', 'Am Fischmarkt 13a', '18439', 'Stralsund', 'Deutschland', 'http://www.n-finefood.de', 'Solveig.Borges@n-finefood.de', 'Kunde', '', '0 38 31 - 28 924-15', '', '0172-4532890', '0 38 31 - 28 924-31'),
(386, 1, 'coop eG', 'Jens', 'Dunkel', 'Benzstraße 10', '24148', 'Kiel', 'Deutschland', 'http://www.coop.de', 'jens.dunkel@coop.de', 'Kunde', 'GF Einkauf & Category Management', '0431 / 7250 - 700', '', '', '0431 / 7250 - 716'),
(387, 1, 'JURA (Fa. Alois Dallmayr)', 'Fa. Alois', 'Dallmayr', 'Bremer Straße 63', '28816', 'Stuhr', 'Deutschland', 'http://www.dallmayr.de', 'automatenservice-bremen@dallmayr.de', 'Kunde', 'Jura-Service', '0421 / 87844-0', '', '', '0421 / 804923'),
(388, 1, 'Fensterputzer / Wischmaster', 'Axel ', 'Merz', '', '0', '', 'Deutschland', '', '', 'Kunde', '', '', '', '01755  / 227562', ''),
(389, 1, 'Plaß Relations', 'Susanne', 'Plaß', 'Heilholtkamp 40', '22297', 'Hamburg', 'Deutschland', '', '', 'Kunde', 'GF ', '040 / 25 92 87', '', '0171 / 61 322 17', ''),
(390, 1, 'GOSCH LFG GmbH', 'Andreas ', 'Reitz', 'Berliner Str. 123', '63500', 'Seligenstadt', 'Deutschland', '', '', 'Kunde', 'Privatanschrift', '', '', '', ''),
(391, 1, 'PROWO West Objekt-Management GmbH', 'Christa', 'Mencel', 'Volmerswerther Str. 86', '40221', 'Düsseldorf', 'Deutschland', 'http://www.prowo-west.de', 'C.Mencel@prowo-west.de', 'Kunde', '', '02 11 / 31 11 17 - 30', '', '', '02 11 / 31 11 17 - 40'),
(392, 1, 'sh:z Medienhaus Sylt', 'Dirk ', 'Mikolajczak', 'Andreas-Dirks-Str. 14', '25980', 'Sylt / OT Westerland', 'Deutschland', 'http://www.shz.de', 'dirk.mikolajczak@shz.de', 'Kunde', 'Medienberater Sylter RS + Hallo Sylt', '0 46 51 / 9814 - 2381', '', '0162 - 14 14 328', '0 46 51 / 9814 - 2388'),
(393, 1, 'Giovanni L. Produktions- und Handelsges. mbH ', 'Dr. habil. Maike', 'Bruhn', 'Suchskrug 5-7', '24107', 'Kiel ', 'Deutschland', 'http://www.giovannil-nord.de', 'bruhn@giovannil-nord.de', 'Kunde', 'Leiterin Produktentwicklung ', '0431 / 908959-22', '', '0162 / 6412738', '0431 / 908959-49'),
(394, 1, 'Keste Meeresdelikatessen', 'Cathrin', 'Pichler', 'Kornstieg 20', '24537', 'Neumünster', 'Deutschland', 'http://www.keste.de', 'c.pichler@keste.de', 'Kunde', '', '0 43 21 / 92 91 62', '', '01 60 / 506 605 5', ''),
(395, 1, 'Ratsherrn Brauerei GmbH ', 'Axel', 'Ohm', 'Lagerstr. 30a (Schanzen-Höfe)', '20357', 'Hamburg', 'Deutschland', 'http://www.ratsherrn.de', 'info@ratsherrn.de', 'Kunde', 'Marketing', '040 / 380 72 892 - 0', '', '', '040 / 380 72 892 - 92'),
(396, 1, 'Allround Schrift + Deko Ernst Thomsen e.K.', 'Margret', 'Thomsen', 'Wiesenweg 4', '21524', 'Brunstorf', 'Deutschland', 'http://www.t-online.de', 'allroundET@t-online.de', 'Kunde', '', '04151 / 2712', '', '', '04151 / 897773'),
(397, 1, 'Abraham Schinken GmbH ', 'Rüdiger', 'Bartsch ', 'Brookdamm 21', '21217', 'Seevetal', 'Deutschland', 'http://www.abraham.de', 'ruediger.bartsch@abraham.de', 'Kunde', 'Senior-Produktmanager / Marketing', '040 / 768005 -354', '', '', '040 / 768005-383'),
(398, 1, 'Nordmann Unternehmensgruppe GmbH & Co. KG', 'Sibylle', 'Richter', 'Am Feldrain 1', '18437', 'Stralsund', 'Deutschland', 'http://www.nordmann.de', 'Sibylle.Richter@nordmann.de', 'Kunde', 'Büroleitung GF NUG', '03831 / 44 34 99 1', '', '0172 / 455 57 52', '03831 / 44 34 99 9 (Feldrain), 0'),
(399, 1, 'LandWert GmbH & Co. KG', 'Rolf', 'Haug', 'LandWert Hof 1', '18519', 'Sundhagen OT Stahlbrode', 'Deutschland', 'http://www.landwert.de', 'Rolf.Haug@landwert.de', 'Kunde', 'Betriebsleiter', '038328 / 65 11 101', '', '0163 / 390 30 45', '038328 / 65 11 222'),
(400, 1, 'GOSCH  ', 'Anja', 'Gosch', 'Wenningstedter Weg 20', '25980', 'Sylt / OT Westerland', 'Deutschland', '', '', 'Kunde', 'Privatanschrift', '', '', '', ''),
(401, 1, 'Popp Feinkost GmbH ', 'Lars', 'Birkhofen', 'Carl-Benz-Str. 3', '24568', 'Kaltenkirchen', 'Deutschland', 'http://www.popp-feinkost.de', 'lars.birkhofen@popp-feinkost.de', 'Kunde', 'Marketingleiter', '', '', '', ''),
(402, 1, 'Gmyrek Fleisch- & Wurstwaren GmbH & Co. KG', 'Alwin', 'Bültmann', 'Im Weilandmoor 1', '38518', 'Gifhorn', 'Deutschland', 'http://www.gmyrek.de', 'alwin.bueltmann@gmyrek.de', 'Kunde', 'Grafik und Design', '05371 / 809-52', '', '', '05371 / 809-43'),
(403, 1, 'GOSCH Verwaltungs GmbH  & Co. KG', 'Jörn', 'Herrschildt', 'Hafenstraße 16', '25992', 'List ', 'Deutschland', 'http://www.gosch.de', 'j.herrschildt@gosch.de', 'Kunde', 'Rechnungswesen', '04651 / 951911', '', '', '04651 / 9519278'),
(404, 1, 'Kron-Lastadie GmbH ', 'Christian ', 'Tröger', 'Am Fischmarkt 13a', '18439', 'Stralsund', 'Deutschland', 'http://www.kron-lastadie.de', 'christian.troeger@kron-lastadie.de', 'Kunde', 'Betriebsleiter', '', '', '0162 - 24 34 412', '03831 / 35 70 439'),
(405, 1, 'Söth Filmproduktion ', 'Michael', 'Söth', 'Fasanenstieg 5', '25336', 'Klein Nordende', 'Deutschland', 'http://www.soeth-video.de', 'kontakt@soeth-video.de', 'Kunde', 'Geschäftsführer', '0170-9317499', '', '', ''),
(406, 1, 'Marché Restaurants Deutschland GmbH ', 'Kevin', 'Delfs', 'Flughafenstr. 1-3', '22335', 'Hamburg', 'Deutschland', 'http://www.marche-restaurants.com', 'hamburg-airport-plaza@marche-restaurants.com', 'Kunde', 'c/o Mövenpick Hamburg Airport', '040 / 5075 - 3701 oder 3705', '', '', '040 / 5075 - 3703'),
(407, 1, 'Christian-Albrechts-Universität zu Kiel', 'Dr. rer. nat. Andrea', 'Saage', '', '24098', 'Kiel', 'Deutschland', 'http://www.mnf.uni-kiel.de', 'saage@mnf.uni-kiel.de', 'Kunde', 'Dekanat Mathematisch-Naturwiss. Fakultät', '0431 / 880-5158', '', '', ''),
(408, 1, 'Telekom Deutschland GmbH', 'Bestellung ', 'Akkus, App. ', '', '0', '', 'Deutschland', '', '', 'Kunde', 'Bestell-Hotline ', '0800 / 0002870', '', '', ''),
(409, 1, 'Sicherheitstechnik', 'Sönke', 'Drews', '', '0', '', 'Deutschland', '', '', 'Kunde', 'DREWS', '', '', '', ''),
(410, 1, 'Hesterberg & Stadtfeld gGmbH', 'Stephan', 'Carstensen', 'Am Damm 2', '24837', 'Schleswig', 'Deutschland', 'http://www.hesterberg-stadtfeld.de', 'Stephan.carstensen@hesterberg-stadtfeld.de', 'Kunde', 'Wohnbereichsleitung / Ltg. ambul. Dienst', '04621 / 5300-170', '', '', '04621 / 5300-124'),
(411, 1, 'SYLTER SPIEGEL ', 'Sabine', 'Petersen', 'Stephanstraße 8', '25980', 'Sylt / OT Westerland', 'Deutschland', 'http://www.sylter-spiegel.de', 'anzeigen@sylter-spiegel.de', 'Kunde', 'Anzeigenabteilung ', '04651 / 46064 - 30 ', '', '', '04651 / 46064 - 66'),
(412, 1, 'Getränke Nordmann GmbH', 'Ronny', 'Degenkolbe', 'Greifswalder Chaussee 46', '18439', 'Stralsund', 'Deutschland', 'http://www.nordmann.de', 'info@nordmann.de', 'Kunde', 'Geschäftsführer', '03831 / 2550', '', '', ''),
(413, 1, 'made4kiel', 'Jörg', 'Schowe', 'Brunswiker Straße 48', '24105', 'Kiel', 'Deutschland', 'http://www.made4kiel.de', 'info@made4kiel.de', 'Kunde', '', '0431 - 57 08 591', '', '', ''),
(414, 1, 'Nordmann Finefood GmbH', 'Janine', 'Senne', 'Am Fischmarkt 13a', '18439', 'Stralsund', 'Deutschland', 'http://www.fritz-stralsund.de', 'Janine.senne@fritz-stralsund.de', 'Kunde', 'Buchhaltung', '03831 -3570100 ', '', '', ''),
(415, 1, 'Helf Timo', 'Timo', 'Helf', '', '0', '', 'Deutschland', '', '', 'Kunde', '', '040 / 52685719', '', '0163 / 2054918', ''),
(416, 1, 'Nolle', 'Herr ', 'Nolle', '', '0', '', 'Deutschland', '', '', 'Kunde', 'Nachbar von gegenüber ', '38 58 16 30', '', '', ''),
(417, 1, 'Universitätsklinikum Schleswig-Holstein, Camp', 'Miriam', 'Berwanger', 'Arnold-Heller-Str. 3, Haus 18', '24105', 'Kiel', 'Deutschland', 'http://www.uksh.de', 'miriam.berwanger@uksh.de', 'Kunde', 'Öffentlichkeitsarbeit, Wissenschaft, Veranstaltungen  ', '04 31 / 597 - 44 12', '', '', '04 31 / 597 - 18 45'),
(418, 1, 'Vereinigung norddeutscher Direktvermarkter La', 'Ernst', 'Schuster ', 'Rastorfer-Mühle 3', '24223', 'Schwentinetal ', 'Deutschland', 'http://www.obstquelle.de', 'ernst@obstquelle.de', 'Kunde', 'Direktvermarkter', '04307 / 83 98 58 (Nordbauern)', '', '0172 / 410 79 75', ''),
(419, 1, 'coop eG', 'Sabine', 'Pfautsch', 'Benzstraße 10', '24148', 'Kiel ', 'Deutschland', 'http://www.coop.de', 'sabine.pfautsch@coop.de', 'Kunde', 'Juniorpressereferentin Unternehmenskommunikation ', '0431 / 7250 - 365', '', '', '0431 / 7250 - 425'),
(420, 1, 'Kieler Nachrichten', 'Annkatrin', 'Voß', 'Fleethörn 1/7', '24103', 'Kiel', 'Deutschland', 'http://www.kieler-nachrichten.de', 'av.vert@kieler-nachrichten.de', 'Kunde', 'Privatkundenmanagement und Marketing', '0431 / 903-2607', '', '', ''),
(421, 1, 'Mundt', 'Dr. Michaela ', 'Mundt', 'Harmsstr. 71', '24114', 'Kiel ', 'Deutschland', 'http://www.dr-michaela-mundt.de', 'mm@dr-michaela-mundt.de', 'Kunde', 'Freie Texterin ', '0431 / 65 745 71', '', '01522 / 16 57 442', '0431 / 32 12 12 614 36'),
(422, 1, 'Marketing-Club Schleswig-Holstein e.V. ', 'Dr. Rolf', 'Schwerdtfeger', 'Koboldstr. 4', '24118', 'Kiel', 'Deutschland', 'http://www.actgmbh.de', 'r.schwerdtfeger@actgmbh.de', 'Kunde', 'Vizepräsident GF Vorstand ', '0431 / 888 03 33', '', '0160 / 963 963 45', '0431 /  888 03 99'),
(423, 1, 'Beatrice Bernhagen', 'Beatrice', 'Bernhagen ', '', '0', 'Norderstedt', 'Deutschland', 'http://www.aol.com', 'beabernhagen@aol.com', 'Kunde', 'GF', '', '', '0152 / 28121008', ''),
(424, 1, 'coop eG Unser Norden Landbäckerei GmbH ', 'Heiko', 'Riedel', 'Sörensenstraße 4-10', '24143', 'Kiel', 'Deutschland', 'http://www.uno-landbaeckerei.de', 'heiko.riedel@uno-landbaeckerei.de', 'Kunde', 'Geschäftsführer', '0431 / 2407861 od. 7250-464', '', '0175 / 2235646', '0431 / 7250-331'),
(425, 1, 'Nordmann Finefood GmbH', 'R.', 'Fuhrmann', 'Am Fischmarkt 13a', '18439', 'Stralsund', 'Deutschland', 'http://www.nordmann.de', 'R.Fuhrmann@nordmann.de', 'Kunde', 'Buchhaltung', '03831 -44349824', '', '', ''),
(426, 1, 'UKSH, Campus Kiel ', 'Miriam', 'Berwanger, M.A. ', 'Arnold-Heller-Str. 3, Haus 18', '24105', 'Kiel', 'Deutschland', 'http://www.uksh.de', 'miriam.berwanger@uksh.de', 'Kunde', 'Klinik für Urologie und Kinderurologie', '0431 / 597 - 4412', '', '', '0431 / 597 - 1845'),
(427, 1, 'Kurierdienst Raschkewitz ', 'Jürgen ', 'Raschkewitz ', 'Edisonstr. 3', '24145', 'Kiel ', 'Deutschland', 'http://www.gmx.de', 'jraschkewitz@gmx.de', 'Kunde', 'GF', '0431 / 68 00 34 ', '', '0171 - 270 46 54', '0431 / 64 34 537'),
(428, 1, 'coop eG', 'Stefanie ', 'Schramm ', 'Benzstraße 10', '24148', 'Kiel ', 'Deutschland', 'http://www.coop.de', 'Stefanie.Schramm@coop.de', 'Kunde', 'Vertriebsbüro sky/plaza, Sekr. Herrr Thomas', '0431 / 7250 - 710', '', '', '0431 / 7250 - 449');
INSERT INTO `addresses` (`id`, `workgroup_id`, `company`, `firstname`, `name`, `street`, `zip`, `city`, `country`, `www`, `email`, `category`, `position`, `tel`, `tel2`, `mobile`, `fax`) VALUES
(429, 1, 'coop eG', 'Alexandra ', 'Hoppe-Hiß', 'Benzstraße 10', '24148', 'Kiel', 'Deutschland', 'http://www.coop.de', 'Alexandra.Hoppe-Hiss@coop.de', 'Kunde', '', '0431 / 7250-237', '', '', ''),
(430, 1, 'coop eG', 'Horst', 'Schmidt', 'Benzstraße 10', '24148', 'Kiel', 'Deutschland', 'http://www.coop.de', 'horst.schmidt@coop.de', 'Kunde', 'Junior Einkäufer Fleisch/Wurstkonserven', '0431 / 7250 - 486', '', '', '0431 / 7250 - 331'),
(431, 1, 'Popp Feinkost GmbH', 'Magner', 'Bianca', 'Carl-Benz-Str. 3', '24568', 'Kaltenkirchen', 'Deutschland', 'http://www.popp-feinkost.de', 'Bianca.Magner@popp-feinkost.de', 'Kunde', 'Marketing', '0 41 91 / 501 - 481', '', '', '0 41 91 / 50 1 - 33481'),
(432, 1, 'coop eG', 'Katja', 'Orwat', 'Benzstraße 10', '24148', 'Kiel', 'Deutschland', 'http://www.coop.de', 'Katja.Orwat@coop.de', 'Kunde', 'Sekretariat Herr Müller', '0431 / 7250 - 217', '', '', '0431 / 7250 - 425'),
(433, 1, 'mum-systems', 'Marion ', 'Muckelmann', 'Parkwinkel 23', '24229', 'Dänischenhagen ', 'Deutschland', 'http://www.mum-systems.de', 'info@mum-systems.de', 'Kunde', 'Design und Umsetzung Brotgarten website', '0 43 49 / 91 44 20 ', '', '', '0 321 / 21 22 83 67'),
(434, 1, 'Gosch im Keese, WPS Betriebs GmbH', 'Daniel ', 'Rovira Fritze', 'Reeperbahn 19-21', '20359', 'Hamburg', 'Deutschland', 'http://www.gosch.de', 'keese@gosch.de', 'Kunde', 'Betriebsleitung', '040 / 3118223990', '', '0151 / 70119595', ''),
(435, 1, 'GOSCH im Keese, WPS Betriebs GmbH ', 'Cyrus', 'Abrar', 'Reeperbahn 19-21', '20359', 'Hamburg', 'Deutschland', 'http://www.gosch.de', 'kuechenchef-keese@gosch.de', 'Kunde', 'Küchenchef', '', '', '0173 / 2015176', ''),
(436, 1, 'GOSCH auf Norderney, WPS Betriebs GmbH ', 'Dirk', 'Friebel', 'Wilhelmstraße 1-3', '26548', 'Norderney', 'Deutschland', 'http://www.gosch.de', 'd.friebel@gosch.de', 'Kunde', 'Betriebsleitung ', '04932 / 9914050', '', '0173 /  2324488', ''),
(437, 1, 'GOSCH im Keese, WPS Betriebs GmbH ', 'Nils', 'Söhrens', 'Reeperbahn 19-21', '20359', 'Hamburg', 'Deutschland', 'http://www.gosch.de', 'n.soehrens@gosch.de', 'Kunde', 'Musik, Promotion Show, Events', '', '', '0175 / 2461290 ', ''),
(438, 1, 'GOSCH im Keese, WPS Betriebs GmbH ', 'Norbert', 'Stolley', 'Reeperbahn 19-21', '20359', 'Hamburg', 'Deutschland', 'http://www.gosch.de', 'n.stolley@gosch.de', 'Kunde', 'Serviceleitung', '', '', '0172 / 5171121 ', ''),
(439, 1, 'coop eG', 'Edgar ', 'Karger ', 'Benzstraße 10', '24148', 'Kiel ', 'Deutschland', 'http://www.coop.de', 'edgar.karger@coop.de', 'Kunde', 'Einkauf Non Food', '0431 / 7250 - 822', '', '', '0431 / 7250 - 831'),
(440, 1, 'Christian-Albrechts-Universität zu Kiel ', 'Maike ', 'Schüßler', 'Christian-Albrechts-Platz 4', '24118', 'Kiel ', 'Deutschland', 'http://www.uv.uni-kiel.de', 'mschuessler@uv.uni-kiel.de', 'Kunde', 'Stabsstelle Presse, Kommunikation und Marketing', '0431 / 880-4923', '', '0151 / 46754820', '0431 / 880-1355'),
(441, 1, 'Massage-Praxis', 'Verena', 'Hansen', 'Kolonnenweg 15', '24113', 'Kiel', 'Deutschland', '', '', 'Kunde', '', '0431 -6574163', '', '', ''),
(442, 1, 'Massagepraxis ', 'Herr', 'Lubcynski', '', '0', '', 'Deutschland', '', '', 'Kunde', 'Geschäftsführer', '0 43 46 / 36 78 634 ', '', '0176 / 61 39 20 20 ', ''),
(443, 1, 'Syltiges.de GbR', 'Tobias ', 'Lagmöller', 'Boysenstr. 13', '25980', 'Westerland/Sylt ', 'Deutschland', 'http://www.syltiges.de', 'info@syltiges.de', 'Kunde', 'Geschäftsleitung ', '0 46 51 / 98 70 99', '', '0172 / 43 789 74', '0 46 51 / 98 70 95'),
(444, 1, 'Lubczynski Praxis für Physiotherapie', 'Lukas', 'Lubczynski', 'Dammstr. 40', '24103', 'Kiel', 'Deutschland', 'http://www.physio-lukas.de', 'info@physio-lukas.de', 'Kunde', '', '0431 / 96989', '', '0176 / 61392020', '0431 / 99 699 447'),
(445, 1, 'GOSCH Verwaltungs GmbH  & Co. KG', 'Jana', 'Feilke', 'Hafenstraße 16 ', '25992', 'List / Sylt', 'Deutschland', 'http://www.gosch.de', 'j.feilke@gosch.de', 'Kunde', 'Auszubildende', '04651 / 9519272', '', '', '04651 / 951924'),
(446, 1, 'coop eG', 'Marco', 'Ehm ', 'Benzstraße 10', '24148', 'Kiel ', 'Deutschland', '', '', 'Kunde', 'Vertriebsplanung ', '0431 / 7250 - 575', '', '', ''),
(447, 1, 'Fraktion Bündnis 90 / Die Grünen', 'Bettina', 'Aust', '', '0', '', 'Deutschland', 'http://www.gruene.ltsh.de', 'Bettina.Aust@gruene.ltsh.de', 'Kunde', '', '', '', '', ''),
(448, 1, 'Zauberhaftes Varieté', 'Werner', 'Orlowski', '', '24103', 'Kiel', 'Deutschland', 'http://www.gmail.com', 'wernerorlowski@gmail.com', 'Kunde', '', '', '', '0163-4206462', ''),
(449, 1, 'Sievertsen Werbung ', 'Dennis', 'Dolecki ', 'Raderinsel 68', '24794', 'Borgstedt', 'Deutschland', 'http://www.raderinsel.de', 'd.dolecki@raderinsel.de', 'Kunde', '', '04331 / 37 009', '', '', '04331 / 37 554'),
(450, 1, 'MINIBOARDS', 'Frank', '', 'Bockstalstr. 47', '76327', 'Pfinztal', 'Deutschland', 'http://www.miniboards.de', 'info@miniboards.de', 'Kunde', '', '0 72 40 / 944 58 58', '', '0160 / 67 50 990 ', ''),
(451, 1, 'GOSCH Sylt am Schönenberg', 'Silvia', 'Bohnenberger', 'Beuchaer Straße 2', '74392', 'Freudental', 'Deutschland', 'http://www.gosch.de', 'freudental@gosch.de', 'Kunde', 'Inhaberin', '0714 / 323662', '', '0172 / 6351439', ''),
(452, 1, 'Hodge Werbung & Druck ', 'Michael ', 'Marquardt', 'Heinrich-Hertz-Straße 36', '24837', 'Schleswig', 'Deutschland', 'http://www.hodge.de', 'info@hodge.de', 'Kunde', 'Inhaber', '04621 / 51001', '', '', '04621 / 51003'),
(453, 1, 'GOSCH Treffpunkt im AEZ', 'Marianne', 'Dobler', 'Heegbarg 31', '22391', 'Hamburg', 'Deutschland', 'http://www.gosch-partner.de', 'm.dobler@gosch-partner.de', 'Kunde', 'Betriebsleiterin', '040 / 61136705', '', '0176 / 61999136', ''),
(454, 1, 'WPS Betriebs GmbH ', 'Susanna', 'Woschniak', 'Am Kleinbahnhof 10', '25746', 'Heide', 'Deutschland', 'http://www.megaland.de', 's.woschniak@megaland.de', 'Kunde', '', '0481 / 85 03 61 - 31', '', '', '0481 / 85 03 61 - 26'),
(455, 1, 'coop eG', 'Wiebke', 'Dittmann', 'Benzstraße 10', '24148', 'Kiel ', 'Deutschland', 'http://www.coop.de', 'Wiebke.Dittmann@coop.de', 'Kunde', 'Buchhaltung ', '', '', '', ''),
(456, 1, 'Katja Carlson Naturkosmetik', 'Katja + Thomas', 'Carlson', 'Tempelhofer Weg 10', '24111', 'Kiel', 'Deutschland', 'http://www.carlson-kiel.de', 'info@carlson-kiel.de', 'Kunde', '', '0431/ 69 79 24', '', '', ''),
(457, 1, 'coop eG', 'Matthias', 'Gaude', 'Benzstraße 10', '24148', 'Kiel ', 'Deutschland', 'http://www.coop.de', 'Matthias.Gaude@coop.de', 'Kunde', 'Leitung Fachbereich Frische / Einkauf Frische', '', '', '0175 / 2667000', '0431 / 7250-492'),
(458, 1, 'coop eG', 'Florian', 'Herzog', 'Benzstraße 10', '24148', 'Kiel ', 'Deutschland', 'http://www.coop.de', 'florian.herzog@coop.de', 'Kunde', 'Vertriebsleiter Delikatessa Marina / Einkauf Frische', '0431 / 7250 - 282', '', '', '0431 / 7250 - 566'),
(459, 1, 'Treffpunkt GOSCH in Düsseldorf', 'Carmen', 'Schniering', 'Friedrichstraße 133', '40217', 'Düsseldorf', 'Deutschland', 'http://www.engel-duesseldorf.de', 'gastro@engel-duesseldorf.de', 'Kunde', 'Projektassistentin', '0211 - 86 29 751', '', '', ''),
(460, 1, 'Treffpunkt GOSCH in Düsseldorf', 'Ingo', 'Hackbarth', 'Friedrichstraße 133', '40217', 'Düsseldorf', 'Deutschland', 'http://www.engel-duesseldorf.de', 'gastro@engel-duesseldorf.de', 'Kunde', 'Geschäftsführer', '0211 - 86 29 751', '', '', ''),
(461, 1, 'Syltiges.de GbR', 'Ralf', 'Fröse', 'Boysenstraße 13', '25980', 'Westerland/Sylt', 'Deutschland', 'http://www.syltiges.de', 'rf@syltiges.de', 'Kunde', 'Geschäftsführer', '04651 / 835 74 24', '', '0151 / 40 05 44 83', '04651 / 835 74 25'),
(462, 1, 'Software Company AMIC GmbH', 'Alexandra ', 'May', 'Im Saal 2', '24145', 'Kiel', 'Deutschland', 'http://www.amic.de', 'am@amic.de', 'Kunde', 'Verwaltung', '0431 / 99 02 - 201', '', '', '0431 / 99 02 - 22'),
(463, 1, 'doubleshift Innovative Lösungen für Marken & ', 'Anne Brit', 'Maier', 'Colonnaden 18', '20354', 'Hamburg', 'Deutschland', 'http://www.doubleshift.de', 'abmaier@doubleshift.de', 'Kunde', '', '040 / 350166316', '', '0177 / 7872296', ''),
(464, 1, 'Schröder', 'Michael', 'Schröder', '', '0', '', 'Deutschland', 'http://www.gmx.net', 'mitch28@gmx.net', 'Kunde', '', '', '', '0171 - 32 16 527', ''),
(465, 1, 'LandWert GmbH & Co. KG', 'Mandy', 'Rybandt', 'LandWert Hof 1', '18519', 'Sundhagen OT Stahlbrode', 'Deutschland', 'http://www.Landwert.de', 'Mandy.Rybandt@Landwert.de', 'Kunde', 'Innendienst Vertrieb', '0 38 328 / 65 11 0', '', '', '0 38 328 / 65 11 222'),
(466, 1, 'Fisch-Gourmet GOSCH Sylt', 'Peter', 'Bohnenberger', 'Rotebühlplatz 20a', '70173', 'Stuttgart', 'Deutschland', 'http://www.goschstuttgart.de', 'peter.bohnenberger@goschstuttgart.de', 'Kunde', 'Geschäftsführer', '0711 / 2991694', '', '0173 / 3290592', ''),
(467, 1, 'GOSCH auf Norderney, WPS Betriebs GmbH ', 'Angela', 'Friebel', 'Wilhelmstraße 1-3', '26548', 'Norderney', 'Deutschland', 'http://www.gosch.de', 'a.friebel@gosch.de', 'Kunde', 'Betriebsleitung ', '04932 / 9914050', '', '0173 / 7447329', ''),
(468, 1, 'SARTORI & BERGER GmbH & Co. KG', 'Jan', 'Henze', 'Wall 47/51', '24103', 'Kiel', 'Deutschland', 'http://www.sartori-berger.de', 'j.henze@sartori-berger.de', 'Kunde', 'Manager Cruise Planning', '0431 / 981 - 210', '', '0172 / 419 79 10', '0431 / 96 108 '),
(469, 1, 'Darguner Brauerei GmbH ', 'Erich', 'Petersen', 'Brauereistraße 3', '17159', 'Dargun', 'Deutschland', 'http://www.darguner.de', 'epe@darguner.de', 'Kunde', 'Verkaufsleiter', '039959 / 301-120', '', '0171 / 5268415', '039959 / 301-109'),
(470, 1, 'Passader Backhaus GmbH', 'Anke', 'Drückhammer', 'Dörpstraat 11', '24253', 'Passade', 'Deutschland', 'http://www.passader-backhaus.de', 'drueckhammer@passader-backhaus.de', 'Kunde', 'Assistenz GL', '0 43 44 / 46 21', '', '', '0 43 44 / 46 04'),
(471, 1, 'WIRTSCHAFTSRAT ∙ Recht', 'Stefanie', 'Jenckel', '', '0', '', 'Deutschland', 'http://www.wr-recht.de', 'info@wr-recht.de', 'Kunde', 'Sekretariat', '040/37669-210', '', '', ''),
(472, 1, 'Neue MAYO Feinkost Gmbh', 'Thorsten ', 'Steinert', 'Seelandstrasse 36', '23569', 'Lübeck', 'Deutschland', 'http://www.mayo-feinkost.de', 't.steinert@mayo-feinkost.de', 'Kunde', 'Geschäftsführer', '0451 / 619 53 0', '', '', '0451 / 69 22 41'),
(473, 1, 'Maro Werbetechnik', 'Angela', 'Jöhnk', 'Barkauer Str. 56-58', '24145', 'Kiel ', 'Deutschland', 'http://www.maroprint.de', 'info@maroprint.de', 'Kunde', '', '0431 - 600 98 90', '', '', '0431 - 600 98 99'),
(474, 1, 'Maro Werbetechnik', 'Michael', 'Patock', 'Barkauer Str. 56-58', '24145', 'Kiel ', 'Deutschland', 'http://www.maroprint.de', 'info@maroprint.de', 'Kunde', '', '0431 - 600 98 96', '', '', '0431 - 600 98 99'),
(475, 1, 'MC Marketing Club SH', 'Ute', 'Löding-Schwerdtfeger', '', '0', '', 'Deutschland', 'http://www.marketingclub-sh.de', 'uls@marketingclub-sh.de', 'Kunde', 'Frau von Hr. Dr. Scherdtfeger', '0431 / 30 52 180', '', '', ''),
(476, 1, 'Direkt Marketing Center Kiel ', 'Herr', 'Baldzun', 'Deliusstraße 16', '24114', 'Kiel ', 'Deutschland', 'http://www.DeutschePost.epost.de', 'dmcenter.KI@DeutschePost.epost.de', 'Kunde', 'Ansprechpartner', '0431 / 66328-20', '', '', '0431 / 66328-29'),
(477, 1, 'Sylter Verkehrsgesellschaft ', 'Juliane', 'Peter', 'Trift 1', '25980', 'Sylt / OT Westerland', 'Deutschland', 'http://www.svg-busreisen.de', 'juliane.peter@svg-busreisen.de', 'Kunde', 'Ltg. Marketing & Ö-Arbeit', '0 18 05 / 83 61 00', '', '', ''),
(478, 1, 'SPORTFIVE GmbH & Co. KG c/o HSV', 'Katharina', 'Hermann', 'Sylvesterallee 7', '22525', 'Hamburg', 'Deutschland', 'http://www.sportfive.com', 'katharina.hermann@sportfive.com', 'Kunde', 'Marketing', '040 / 4155 - 2015', '', '0176 / 11 990 200', '040 / 4155 - 2090'),
(479, 1, 'Schumann', 'Hartmut', 'Schumann', 'Anweide 31', '22880', 'Wedel', 'Deutschland', '', '', 'Kunde', 'Charity-Mensch', '0 41 03 / 701 78 68', '', '0172 / 632 53 12', ''),
(480, 1, 'Bleyer & Wichert GmbH & Co. KG', 'Martin', 'Genz', 'Carl-Benz-Straße 8', '24568', 'Kaltenkirchen', 'Deutschland', 'http://www.bleyer-wichert.de', 'genz@bleyer-wichert.de', 'Kunde', 'Kundenservice', '04191 / 9939-15', '', '', '04191 / 9939-19'),
(481, 1, 'ECE Projektmanagement G.m.b.H   Werbegemeinsc', 'Claudia ', 'Haselau', 'Ballindamm 40', '20095', 'Hamburg', 'Deutschland', 'http://www.ece.com', 'Claudia.Haselau@ece.com', 'Kunde', '', '', '', '', ''),
(482, 1, 'Egon Rohwer-Malermeister GmbH ', 'Steffen', 'Elsner', 'Alte Lübecker Chaussee 21', '24113', 'Kiel ', 'Deutschland', 'http://www.maler-egonrohwer.de', 'info@maler-egonrohwer.de', 'Kunde', 'Maler', '0431 / 670070', '', '0172 / 4590714', '0431 / 6700715'),
(483, 1, 'ZuCo', 'Britta', 'Falk', '', '0', 'Schacht-Audorf', 'Deutschland', 'http://www.zuco.eu', 'info@zuco.eu', 'Kunde', '', '04331 - 77 06 58', '', '', '04331 - 77 07 76'),
(484, 1, 'Neue Nieswand Druck GmbH ', 'Angela', 'Seguin', 'Am Kiel-Kanal 2', '24106', 'Kiel ', 'Deutschland', 'http://www.nndruck.de', 'a.seguin@nndruck.de', 'Kunde', 'Buchhaltung', '0431 / 90 88 28 09', '', '', '0431 / 90 88 28 10'),
(485, 1, 'VERVUM GmbH ', 'Marco Alexander', 'Klemm', 'Andreas-Gayk-Str. 13', '24103', 'Kiel', 'Deutschland', 'http://www.vervum.de', 'M.Klemm@vervum.de', 'Kunde', 'Head of Marketing', '0431 / 88 70 50', '', '', '0431 / 88 70 50 - 88'),
(486, 1, 'Woelke Holsteinische Wurstmacherei GmbH ', 'Thorsten ', 'Tischer', 'Preetzer Landstr. 44', '24625', 'Großharrie', 'Deutschland', 'http://www.woelke-holstein.de', 'tischer@woelke-holstein.de', 'Kunde', 'Geschäftsführer', '0 43 94 / 516', '', '0151 / 588 18 600', '0 43 94 / 816'),
(487, 1, 'Fisch-Gourmet GOSCH Sylt', '', 'Frau Bohnenberger', 'Rotebühlplatz 20a', '70173', 'Stuttgart', 'Deutschland', '', '', 'Kunde', '', '07143 / 23662', '', '0172 / 6351439', ''),
(488, 1, 'Geburtshaus Kiel e.V. ', 'Margrit', 'Bartelt', 'Lübscher Baum 23', '24113', 'Kiel ', 'Deutschland', 'http://www.geburtshaus-kiel.de', 'team@geburtshaus-kiel.de', 'Kunde', 'Hebamme', '0431 / 61168  oder  682462  ', '', '', '0431 / 6709927'),
(489, 1, 'Neue MAYO Feinkost GmbH', 'Hakan', 'Cerav', 'Seelandstr. 36', '23569', 'Lübeck', 'Deutschland', 'http://www.mayo-feinkost.de', 'h.cerav@mayo-feinkost.de', 'Kunde', 'Non-Food GOSCH', '0451 / 619 53 - 0', '', '0160 / 88 06 932', '0451 / 69 22 41'),
(490, 1, 'Kieler Zeitung', 'Andrea', 'Hartmann', 'Fleethörn 1-7', '24103', 'Kiel', 'Deutschland', 'http://www.kieler-nachrichten.de', 'andrea.hartmann@kieler-nachrichten.de', 'Kunde', 'Vertrieb und Marketing', '0431/903-2228', '', '', ''),
(491, 1, 'dwaarsloeper.design+konzeption', 'Jan', 'Petersen', 'Marienstraße 1-3', '24148', 'Kiel ', 'Deutschland', 'http://www.dwaarsloeper.de', 'j.petersen@dwaarsloeper.de', 'Kunde', '', '0431 / 8866677', '', '', '0431 / 8866676'),
(492, 1, 'Erhard Luttkau GmbH ', 'Christine', 'Luttkau', 'Spökerdamm 10', '25436', 'Heidgraben', 'Deutschland', 'http://www.t-online.de', 'christine-lars@t-online.de', 'Kunde', '', '', '', '', ''),
(493, 1, 'mein coop magazin ', 'Meike', 'Kevelaer', 'Marienstr. 1-3', '24148', 'Kiel ', 'Deutschland', 'http://www.mein-coop-magazin.de', 'm.kevelaer@mein-coop-magazin.de', 'Kunde', 'Redaktion ', '0431 / 88 666 50', '', '', ''),
(494, 1, 'coop eG', 'Susi', 'Söth', 'Benzstraße 10', '24148', 'Kiel ', 'Deutschland', 'http://www.coop.de', 'susi.soeth@coop.de', 'Kunde', 'Leitung Außendienst / Event', '0431 / 7250-210', '', '', '0431 / 7250-742'),
(495, 1, 'Werner Paustian Dachdeckerei GmbH ', 'Herr', 'Eichstädt', 'Marie-Curie-Str. 7', '24145', 'Kiel ', 'Deutschland', '', '', 'Kunde', '', '0431 / 716 50 70 ', '', '', '0431 / 716 50 72'),
(496, 1, 'Stührk Delikatessen Import GmbH & Co. KG', 'Tobias', 'Neugart', 'Alter Kirchweg 31', '25709', 'Marne', 'Deutschland', 'http://www.stuehrk.de', 'tne@stuehrk.de', 'Kunde', 'Vertriebsinnendienst', '0 48 51 / 90 721', '', '', '0 48 51 / 20 24'),
(497, 1, 'Dr. Demuth GmbH & Co. KG Katlenburger Kellere', 'Nina', 'Lütke-Cosmann', 'Osteroder Straße 12', '37191', 'Katlenburger-Lindau', 'Deutschland', 'http://www.katlenburger.de', 'Nluetkecosmann@katlenburger.de', 'Kunde', 'Vertrieb', '05552 / 707-18', '', '', '05552 / 707-40'),
(498, 1, 'FEMEG Produktions- und Vertriebs GmbH', 'Maik', 'Trinowitz', 'Gletzower LandstraÃŸe 6', '19217', 'Rehna', 'Deutschland', 'http://www.femeg.de', 'maik.trinowitz@femeg.de', 'Kunde', 'Communications / Marketing', '038 / 872521-121', '', '', '038 / 872521-900'),
(499, 1, 'Lorentzen & Sievers GmbH ', 'Christin', 'Niemann', 'Immenhacken 3', '24558', 'Henstedt-Ulzburg', 'Deutschland', 'http://www.lorentzen-sievers.de', 'christin.niemann@lorentzen-sievers.de', 'Kunde', 'Grafik und Design', '0 41 93 / 98 0 99 - 20', '', '', '0 41 93 / 98 0 99 - 98'),
(500, 1, 'H. & J. Brüggen KG', 'Ulrike', 'Gerth', 'Hafenstraße 5', '23568', '', 'Deutschland', 'http://www.brueggen.com', 'Ulrike.Gerth@brueggen.com', 'Kunde', '', '0451 / 3100-132', '', '', '0451 / 3100-165'),
(501, 1, '', 'Jörn', 'Heitmann', 'Projensdorfer Straße 69', '24106', '', 'Deutschland', 'http://', '', 'Kunde', 'Freier Texter', '0431 / 53038052', '', '0178 / 1428227', ''),
(502, 1, 'Wiebold-Confiserie GmbH & Co. KG', 'Christoph', 'Nimphy', 'Ernst-Abbe-Str. 2', '25337', 'Elmshorn', 'Deutschland', 'http://www.wiebold.de', 'christoph.nimphy@wiebold.de', 'Kunde', 'Key Account Manager', '0 41 21 / 4771 - 31', '', '', '0 41 21 / 4771 - 54'),
(503, 1, 'Kieckbusch', 'Jorrit', 'Kieckbusch', '', '0', '', 'Deutschland', '', '', 'Kunde', '', '0431 / 9 88 15 00', '', '0171 / 18 66 823', ''),
(504, 1, 'coop eG', 'Joachim', 'Vonhoff', 'BenzstraÃŸe 10', '24148', 'Kiel ', 'Deutschland', 'http://www.coop.de', 'Joachim.Vonhoff@coop.de', 'Kunde', 'GeschÃ¤ftsbereichsleiter Einkauf Frische', '0431 / 7250-790', '', '', '0431 / 7250-741'),
(505, 1, 'coop eG', 'Simon', 'Pflesser', 'BenzstraÃŸe 10', '24148', 'Kiel ', 'Deutschland', 'http://www.coop.de', 'simon.pflesser@coop.de', 'Kunde', 'Fachberater Frische, Einkauf Frische', '', '', '0160 / 8944785', '0431 / 7250492'),
(506, 1, 'Schorr', 'Susanne', 'Schorr', 'Knooper Weg 122', '24105', 'Kiel ', 'Deutschland', 'http://www.googlemail.com', 'suebidou@googlemail.com', 'Kunde', 'Freie Mitarbeiterin / Mediengest.', '', '', '0176 / 328 188 33', ''),
(507, 1, 'PMzwei PrintMedia', 'Jan', 'Petersen', 'Marienstr. 1-3', '24148', 'Kiel ', 'Deutschland', 'http://www.PMzwei.de', 'j.petersen@PMzwei.de', 'Kunde', 'Inhaber', '0431 / 800 89 85', '', '', ''),
(508, 1, 'mailwork - Der Direktmarketing-Partner GmbH', 'Natalie', 'Potz', 'Am Busbahnhof 1', '24784', 'WesterrÃ¶nfeld', 'Deutschland', 'http://www.mailwork.de', 'info@mailwork.de', 'Kunde', '', '0 43 31 / 3 33 23 - 0', '', '', '0 43 31 / 3 33 23 - 30'),
(509, 1, 'Ellen Ehrich', 'Ellen ', 'Ehrich', 'Labradorweg 32', '23570', 'LÃ¼beck-TravemÃ¼nde', 'Deutschland', '', '', 'Kunde', '', '', '', '0172 / 6632972', ''),
(510, 1, 'TULIP FOOD COMPANY GmbH ', 'Sandra', 'Heitmann', 'Christoph-Probst-Weg 26', '20251', 'Hamburg', 'Deutschland', 'http://www.tulip.de', 'shei@tulip.de', 'Kunde', 'Jun. Business Development Manager', '040 / 554 360 - 43 ', '', '', '040 / 554 360 - 76'),
(511, 1, 'Verbraucherzentrale Schleswig-Holstein e.V.', '', '', 'Andreas-Gayk-Str. 15', '24103', 'Kiel ', 'Deutschland', '', '', 'Kunde', '', '', '', '', ''),
(512, 1, 'SHeff-Z / Schleswig-Holstein Energieeffizienz', '', '', 'Justus-von-Liebig-Str. 4a', '24537', 'NeumÃ¼nster', 'Deutschland', 'http://www.sheff-z.de', 'info@sheff-z.de', 'Kunde', '', '04321 / 60 22 982', '', '', '04321 / 60 22 983'),
(513, 1, 'Licht.Norkeweit', 'Michael', 'Norkeweit', 'Hamburger Landstr. 6', '24113', 'Kiel ', 'Deutschland', 'http://www.norkeweit.de', 'lichtgalerie@norkeweit.de', 'Kunde', 'GF', '0431 / 64 32 32 (Techniker Hr. T', '', '', '0431 / 64 10 91'),
(514, 1, 'K2-Werbung GmbH', 'Frank ', 'Kollosche', 'Schreberweg 6', '24119', 'Kronshagen', 'Deutschland', 'http://www.k2-center.de', 'fk@k2-center.de', 'Kunde', 'GeschÃ¤ftsfÃ¼hrer', '0431 / 54066-0', '', '0172 / 5486622', ''),
(515, 1, 'Bild & Rahmen', 'Anja', 'Petrich', 'GneisenaustraÃŸe 18', '24105', 'Kiel ', 'Deutschland', 'http://www.bild-und-rahmen-kiel.de', 'apetrich@bild-und-rahmen-kiel.de', 'Kunde', 'GeschÃ¤ftsfÃ¼hrerin', '0431 / 8058038 ', '', '', '0431 / 8058038 '),
(516, 1, 'L&S Digital GmbH & Co. KG', 'Sebastian', 'Kloth', 'KÃ¶penicker Str. 51', '24111', 'Kiel ', 'Deutschland', 'http://www.ls-kiel.de', 'sebastian.kloth@ls-kiel.de', 'Kunde', '', '0431 / 6 96 44 - 13', '', '', '0431 / 6 96 44 - 44'),
(517, 1, 'Strandkorb & Co. ', 'Herr', 'Voelmy', '', '0', '', 'Deutschland', '', '', 'Kunde', 'Inhaber', '04651 / 460 96 31', '', '0177 / 87 73 900', ''),
(518, 1, 'Norman Nawe', 'Norman', 'Nawe', 'Kleiststr. 20', '24105', 'Kiel ', 'Deutschland', 'http://www.yahoo.de', 'holsteinstorch@yahoo.de', 'Kunde', 'Texter', '0431 / 888 52 96', '', '0176 / 618 45 735', ''),
(519, 1, 'Syltiges.de ', 'Ralf ', 'Fröse', 'Am Loo 2', '25992', '', 'Deutschland', 'http://www.syltiges.de', 'rf@syltiges.de', 'Kunde', 'Geschäftsführer', '04651 / 835 74 24', '', '0151 / 40 05 44 83', '04651 / 835 74 25'),
(520, 1, 'UKSH, Campus Kiel ', 'Prof. Dr. Klaus-Peter', 'Jünemann', 'Arnold-Heller-Str. 3, Haus 18', '24105', '', 'Deutschland', 'http://www.uksh.de', 'Klaus-Peter.Juenemann@uksh.de', 'Kunde', 'Klinik für Urologie und Kinderurologie', '', '', '', ''),
(521, 1, 'Wort Bild Ton Werbeagentur GmbH', 'Nadja', 'Staar', '', '0', '', 'Deutschland', '', '', 'Kunde', '', '0 43 38 / 260 ', '', '0173 / 60 13 543 ', ''),
(522, 1, '', 'Jenny', 'Bruhn', '', '0', '', 'Deutschland', 'http://www.yahoo.de', 'jennybruhn@yahoo.de', 'Kunde', 'freie Texterin ', '0431 / 80098829', '', '0177 / 7079484', ''),
(523, 1, 'Thomas Lohr Gartenpflege', 'Thomas', 'Lohr', 'FeldstraÃŸe 40', '24105', 'Kiel', 'Deutschland', 'http://www.lohr-gartenbau.de', 'info@lohr-gartenbau.de', 'Kunde', 'GeschÃ¤ftsfÃ¼hrer', '0431-8888066', '', '0170-7521023', '0431-8888166'),
(524, 1, 'coop eG', 'Andreas', 'Büchel', 'Benzstraße 10', '24148', '', 'Deutschland', 'http://www.coop.de', 'andreas.buechel@coop.de', 'Kunde', 'Marketingleiter ', '0431 / 7250-808', '', '', ''),
(525, 1, 'THW Kiel', 'Henning', 'Heinemann', 'Ziegelteich 30', '24103', 'Kiel', 'Deutschland', 'http://www.thw-handball.de', 'henning.heinemann@thw-handball.de', 'Kunde', 'Leiter Marketing & Sponsoring', '0431-6703950', '', '0170-3553494', '0431-6703930'),
(526, 1, 'GOSCH Sylt', 'Florian', 'Gosch', '', '0', '', 'Deutschland', 'http://www.gosch.de', 'florian@gosch.de', 'Kunde', '', '', '', '0173 / 7369486', ''),
(527, 1, 'Kieler Nachrichten', 'Jutta', 'Glietz', 'Fleethörn 1-7', '24103', '', 'Deutschland', 'http://www.kieler-nachrichten.de', 'jutta.glietz@kieler-nachrichten.de', 'Kunde', 'Vertrieb und Marketing', '0431 - 903-2223', '', '', ''),
(528, 1, 'Heilmann AG', 'Steffen', 'Heilmann', 'Auf der Geest 2', '21514', 'BÃ¼chen', 'Deutschland', 'http://www.heilmann-ag.de', 'sc.heilmann@heilmann-ag.de', 'Kunde', '', '04155 / 49997-100', '', '0151 / 18206851', ''),
(529, 1, 'Nord-Dekor', 'Michael', 'Dassler', 'An der Rollbahn 5', '25980', 'Sylt', 'Deutschland', 'http://www.nord-dekor.de', 'info@nord-dekor.de', 'Kunde', 'Inh.', '04651 8364891', '', '0171 3162939', ''),
(530, 1, 'Fritz Braugasthaus', 'Sebastian', 'Heinisch', 'SchillerstraÃŸe 8', '18609', 'Binz/RÃ¼gen', 'Deutschland', 'http://www.n-finefood.de', 'sebastian.heinisch@n-finefood.de', 'Kunde', 'Betriebsleiter', '038393 / 663333', '', '0162 / 2434214', '038393 / 663444'),
(531, 1, 'ADAC', '', 'Frau Festerling ', '', '0', '', 'Deutschland', '', '', 'Kunde', 'Sekretariat ', '0431 / 6602-101', '', '', ''),
(532, 1, 'ADAC', '', 'Stefan Schwarz', '', '0', '', 'Deutschland', '', '', 'Kunde', 'GF', '0431 / 6602-100', '', '', ''),
(533, 1, 'Popp-Feinkost', 'Kristin', ' Timm', '', '0', '', 'Deutschland', 'http://www.popp-feinkost.de', 'kristin.timm@popp-feinkost.de', 'Kunde', 'Marketing', '04191 - 501 485', '', '', ''),
(534, 1, 'Popp Feinkost', 'Hauke', ' Popp', '', '0', '', 'Deutschland', 'http://www.popp-feinkost.de', 'Hauke.Popp@popp-feinkost.de', 'Kunde', 'Product Manager', '04191 - 501 486', '', '', ''),
(535, 1, 'Pöppelbaum Printproduktion', 'Ingo', 'Pöppelbaum', 'Hoheluftchaussee 53a', '20253', '', 'Deutschland', 'http://www.poeppelbaum-printproduktion.de', 'service@poeppelbaum-printproduktion.de', 'Kunde', 'Geschäftsführer', '040-609 468 15', '', '', '040-609 468 17'),
(536, 1, 'Jugendstiftung Winkler', 'Iris', 'Ranft', 'ErikstraÃŸe 5', '24837', 'Schleswig', 'Deutschland', '', '', 'Kunde', '', '04621 / 934792 ', '', '0160 / 98276094', ''),
(537, 1, 'Förderkreis Kieler Schiffahrtsmuseum e. V. ', '', '', 'Wall 47/51', '24103', '', 'Deutschland', 'http://www.kieler-schiffahrtsmuseum.de', 'info@kieler-schiffahrtsmuseum.de', 'Kunde', '', '0431 / 9810', '', '', ''),
(538, 1, 'Dreiklang Business & Spa Resort Kaltenkirchen', 'Uwe', 'Heymann', 'NorderstraÃŸe 6', '24568', 'Kaltenkirchen', 'Deutschland', 'http://www.hotel-dreiklang.de', 'heymann@hotel-dreiklang.de', 'Kunde', 'GeschÃ¤ftsfÃ¼hrender Gesellschafter', '04191 921-0', '', '', '04191 921-100'),
(539, 1, 'Förderkreis Kieler Schiffahrtsmuseum e. V. ', '', '', 'Wall 47/51', '24103', '', 'Deutschland', 'http://www.kieler-schiffahrtsmuseum.de', 'info@kieler-schiffahrtsmuseum.de', 'Kunde', '', '0431 / 9810', '', '', ''),
(540, 1, 'Syltiges.de ', 'Ralf ', 'Fröse', 'Am Loo 2', '25992', '', 'Deutschland', 'http://www.syltiges.de', 'rf@syltiges.de', 'Kunde', 'Geschäftsführer', '04651 / 835 74 24', '', '0151 / 40 05 44 83', '04651 / 835 74 25'),
(541, 1, 'Pöppelbaum Printproduktion', 'Ingo', 'Pöppelbaum', 'Hoheluftchaussee 53a', '20253', '', 'Deutschland', 'http://www.poeppelbaum-printproduktion.de', 'service@poeppelbaum-printproduktion.de', 'Kunde', 'Geschäftsführer', '040-609 468 15', '', '', '040-609 468 17'),
(542, 1, '', 'Jörn', 'Heitmann', 'Projensdorfer StraÃŸe 69', '24106', '', 'Deutschland', 'http://', '', 'Kunde', 'Freier Texter', '0431 / 53038052', '', '0178 / 1428227', ''),
(543, 1, '', 'Jörn', 'Heitmann', 'Projensdorfer Straße 69', '24106', '', 'Deutschland', 'http://', '', 'Kunde', 'Freier Texter', '0431 / 53038052', '', '0178 / 1428227', ''),
(544, 1, 'H. & J. Brüggen KG', 'Ulrike', 'Gerth', 'Hafenstraße 5', '23568', '', 'Deutschland', 'http://www.brueggen.com', 'Ulrike.Gerth@brueggen.com', 'Kunde', '', '0451 / 3100-132', '', '', '0451 / 3100-165'),
(545, 1, 'Kieler Nachrichten', 'Jutta', 'Glietz', 'Fleethörn 1-7', '24103', '', 'Deutschland', 'http://www.kieler-nachrichten.de', 'jutta.glietz@kieler-nachrichten.de', 'Kunde', 'Vertrieb und Marketing', '0431 - 903-2223', '', '', ''),
(546, 1, 'coop eG', 'Andreas', 'Büchel', 'Benzstraße 10', '24148', '', 'Deutschland', 'http://www.coop.de', 'andreas.buechel@coop.de', 'Kunde', 'Marketingleiter ', '0431 / 7250-808', '', '', ''),
(547, 1, 'UKSH, Campus Kiel ', 'Prof. Dr. Klaus-Peter', 'Jünemann', 'Arnold-Heller-Str. 3, Haus 18', '24105', '', 'Deutschland', 'http://www.uksh.de', 'Klaus-Peter.Juenemann@uksh.de', 'Kunde', 'Klinik für Urologie und Kinderurologie', '', '', '', ''),
(548, 1, 'Sophienhof Werbegemeinschaft GbR', 'Simone', 'Reichel', 'Sophienblatt 20', '24103', '', 'Deutschland', 'http://www.ece.com', 'simone.reichel@ece.com', 'Kunde', '', '04 31 - 67 30 44', '', '', '04 31 - 67 30 49');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `calendar`
--

CREATE TABLE IF NOT EXISTS `calendar` (
  `id` int(11) NOT NULL,
  `workgroup_id` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `place` varchar(45) NOT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `allday` tinyint(1) NOT NULL,
  `repeat` int(45) NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `calendar`
--

INSERT INTO `calendar` (`id`, `workgroup_id`, `creator_id`, `name`, `place`, `starttime`, `endtime`, `allday`, `repeat`, `notes`) VALUES
(29, 1, 30, '', '', '1899-12-31 00:00:00', '1899-12-31 00:00:00', 0, 0, ''),
(30, 1, 30, 'ggggg', 'ttttt', '1899-12-31 00:00:00', '1899-12-31 00:00:00', 0, 0, ''),
(33, 1, 30, 'Montagsrunde', 'Küche', '2014-05-05 09:30:00', '2014-05-05 10:00:00', 0, 2, 'Montagsrunde mit aktuellen Infos'),
(36, 1, 30, 'CCCCCC', 'erfrgwerg', '1899-12-31 00:00:00', '1899-12-31 00:00:00', 0, 0, ''),
(37, 1, 30, 'DDDDD', 'regegwgr', '2014-05-09 09:25:00', '2014-05-09 13:20:00', 0, 0, ''),
(39, 1, 30, 'test', 'testort', '2014-05-15 00:00:00', '2014-05-21 10:25:00', 1, 0, ''),
(40, 1, 30, 'jfreiojote', 'wegtgt', '2014-05-10 14:30:00', '2014-05-10 15:50:00', 0, 0, 'Klein Notzien\r\nkommen hier\r\nhin'),
(41, 2, 30, 'fdjr', 'rjz', '2014-05-15 08:00:00', '2014-05-15 08:00:00', 0, 0, ''),
(42, 2, 30, 'g4g54', '4545', '2014-05-07 12:30:00', '2014-05-07 12:30:00', 0, 0, ''),
(43, 1, 30, 'test', 'test', '2014-06-04 00:00:00', '2014-06-04 00:00:00', 1, 0, 'ergwrg'),
(46, 1, 30, 'test', 'test', '2014-07-31 00:00:00', '2014-07-31 00:00:00', 0, 0, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `company` varchar(45) NOT NULL,
  `street` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `workgroup_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `company`
--

INSERT INTO `company` (`id`, `parent_id`, `company`, `street`, `zip`, `city`, `country`, `workgroup_id`) VALUES
(1, NULL, 'GOSCH Sylt GmbH', 'Am Hafen', '25992', 'Sylt', 'Germany', 0),
(2, 1, 'GOSCH Sylt GmbH', 'Friedrichstraße 15', '25980', 'Westerland', 'Germany', 0),
(3, 1, 'GOSCH Sylt GmbH', 'Rosenweg 44b', '23455', 'Sylt', 'Germany', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(150) NOT NULL,
  `path` varchar(150) NOT NULL,
  `type` varchar(100) NOT NULL,
  `workgroup` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `creator_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `files`
--

INSERT INTO `files` (`id`, `name`, `path`, `type`, `workgroup`, `project_id`, `creator_id`) VALUES
(1, 'GOSCH-HSV-VIP-05.jpg', '/usr/www/users/wortbild/kunden/intranet/media/files/1405497594153c630fa30c91.jpg', 'image', 1, NULL, 0),
(2, 'Sitemap-Diakonie.docx', '/usr/www/users/wortbild/kunden/intranet/media/files/1405497594153c630fa154ea.docx', 'word', 1, NULL, 0),
(3, 'GOSCH ONLINESHOP INTEGRIERT 170414_.pdf', '/media/files/1405671250153c8d752bd73b.pdf', 'pdf', 1, 3, 0),
(4, 'snygo_files-001-jennybeatty.jpg', '/media/files/1405676900153c8ed640cb32.jpg', 'image', 0, 6, 0),
(5, 'GOSCH ONLINESHOP INTEGRIERT 170414_.pdf', '/media/files/1405676904153c8ed6820c9b.pdf', 'pdf', 1, 6, 0),
(6, 'Brief.docx', '/media/files/1405676901153c8ed6522016.docx', 'word', 1, 6, 0),
(7, 'snygo_files-001-jennybeatty.jpg', '/media/files/1405677125153c8ee45dcf35.jpg', 'image', 0, 7, 0),
(8, 'Social-Media-Strategie1.pdf', '/media/files/1406027814153ce4826ec790.pdf', 'pdf', 0, 8, 0),
(9, 'Social-Media-Strategie1.pdf', '/media/files/1406027894153ce4876b3858.pdf', 'pdf', 0, 10, 0),
(10, 'nav-bg-right.png', '/media/files/14068849343053db5c46076fa.png', 'image', 0, 12, 0),
(11, 'Bildschirmfoto 2014-07-24 um 11.29.51.png', '/media/files/14068854023053db5e1a5df59.png', 'image', 0, 13, 0),
(12, '2014 - GOSCH Versand Relaunch.docx', '/media/files/1406886769153db63711a427.docx', 'word', 0, 20, 0),
(13, '2014 - GOSCH Versand Relaunch.docx', '/media/files/1406886958153db642e97237.docx', 'word', 0, 22, 0),
(14, 'Angebot Web Master.docx', '/media/files/1406886959153db642f1d361.docx', 'word', 0, 22, 0),
(15, 'Angebot Web Master.docx', '/media/files/1406887055153db648f21012.docx', 'word', 0, 23, 0),
(16, 'Angebot Web Master.docx', '/media/files/1406887110153db64c628f75.docx', 'word', 0, 24, 0),
(17, 'Bildschirmfoto 2014-07-01 um 15.46.10.png', '/media/files/14068871983053db651ed53ff.png', 'image', 0, 25, 0),
(18, 'Sliderelement_groß_master.png', '/media/files/14068883133053db69792c4cf.png', 'image', 0, 26, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `text` text NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `logs`
--

INSERT INTO `logs` (`id`, `type`, `project_id`, `task_id`, `file_id`, `user_id`, `text`, `datetime`) VALUES
(1, 3, 6, 1, 0, 1, '', '2014-07-18 11:58:40'),
(2, 3, 6, 2, 0, 1, '', '2014-07-18 11:59:07'),
(3, 3, 6, 3, 0, 1, '', '2014-07-18 11:59:43'),
(4, 3, 6, 4, 0, 1, '', '2014-07-18 11:59:45'),
(5, 3, 6, 5, 0, 1, '', '2014-07-18 12:00:09'),
(6, 3, 6, 6, 0, 1, '', '2014-07-22 11:32:33'),
(7, 2, 8, 0, 0, 0, '', '2014-07-22 13:16:58'),
(8, 2, 10, 0, 0, 0, '', '2014-07-22 13:18:18'),
(9, 1, 10, 0, 0, 1, '', '2014-07-22 13:18:18'),
(10, 3, 10, 7, 0, 1, '', '2014-07-22 13:18:44'),
(11, 3, 1, 8, 0, 30, '', '2014-07-28 16:03:04'),
(12, 3, 1, 9, 0, 30, '', '2014-07-28 16:03:08'),
(13, 3, 1, 10, 0, 30, '', '2014-07-28 16:03:18'),
(14, 1, 11, 0, 0, 1, '', '2014-07-30 16:16:30'),
(15, 2, 12, 0, 0, 0, '', '2014-08-01 11:22:15'),
(16, 1, 12, 0, 0, 30, '', '2014-08-01 11:22:15'),
(17, 1, 13, 0, 0, 30, '', '2014-08-01 11:30:05'),
(18, 2, 13, 0, 0, 30, '', '2014-08-01 11:30:05'),
(19, 1, 14, 0, 0, 1, '', '2014-08-01 11:49:16'),
(20, 1, 15, 0, 0, 1, '', '2014-08-01 11:50:11'),
(21, 2, 15, 0, 0, 1, '', '2014-08-01 11:50:11'),
(22, 1, 16, 0, 0, 1, '', '2014-08-01 11:51:06'),
(23, 1, 17, 0, 0, 1, '', '2014-08-01 11:51:23'),
(24, 1, 18, 0, 0, 1, '', '2014-08-01 11:51:26'),
(25, 1, 20, 0, 0, 1, '', '2014-08-01 11:54:02'),
(26, 2, 20, 0, 0, 1, '', '2014-08-01 11:54:02'),
(27, 1, 22, 0, 0, 1, '', '2014-08-01 11:56:03'),
(28, 2, 22, 0, 0, 1, '', '2014-08-01 11:56:03'),
(29, 1, 23, 0, 0, 1, '', '2014-08-01 11:57:39'),
(30, 2, 23, 0, 0, 1, '', '2014-08-01 11:57:39'),
(31, 1, 24, 0, 0, 1, '', '2014-08-01 11:58:32'),
(32, 2, 24, 0, 0, 1, '', '2014-08-01 11:58:32'),
(33, 1, 25, 0, 0, 30, '', '2014-08-01 12:00:00'),
(34, 2, 25, 0, 0, 30, '', '2014-08-01 12:00:00'),
(35, 3, 25, 11, 0, 30, '', '2014-08-01 12:01:02'),
(36, 1, 26, 0, 0, 30, '', '2014-08-01 12:18:34'),
(37, 2, 26, 0, 0, 30, '', '2014-08-01 12:18:34'),
(38, 0, 26, 0, 0, 1, '', '2014-08-01 12:31:05'),
(39, 0, 25, 0, 0, 1, 'Das Projekt wurde von Felix Baltruschat mit der Rechnungsnummer 08/2014-42 in Rechnung gestellt.', '2014-08-01 12:31:53'),
(40, 0, 25, 0, 0, 1, 'Das Projekt wurde von Felix Baltruschat mit der Rechnungsnummer <strong>08/2014-43</strong> in Rechnung gestellt.', '2014-08-01 12:32:19'),
(41, 0, 25, 0, 0, 1, 'Das Projekt wurde von Felix Baltruschat abgerechnet', '2014-08-01 12:32:35'),
(42, 3, 6, 12, 0, 1, '', '2014-08-28 10:47:55'),
(43, 3, 6, 13, 0, 1, '', '2014-08-28 10:48:03');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(11) NOT NULL,
  `status` enum('1','2','3') DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` text,
  `date` datetime DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `workgroup_id` int(11) DEFAULT NULL,
  `invoice` int(11) DEFAULT NULL,
  `contact` int(11) DEFAULT NULL,
  `manager` int(11) DEFAULT NULL,
  `invoice_number` varchar(15) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `projects`
--

INSERT INTO `projects` (`id`, `status`, `name`, `description`, `date`, `creator_id`, `workgroup_id`, `invoice`, `contact`, `manager`, `invoice_number`) VALUES
(1, '1', 'Website-Relaunch', '<div><b><span class="wysiwyg-color-red">Noch kein Auftrag: Eigeninitiative WBT</span></b></div><div><br></div><div>Reizentwurf Startseite für Termin BB+Fr. Pitzschel, Samstag 12.7.</div>', '2014-07-16 00:00:00', 0, 1, 1, 1, 1, '7/2014-28'),
(2, '1', 'Test', 'Test', '2014-07-18 00:00:00', 0, 1, 1, 1, 1, '07/2014-39'),
(3, '1', 'Brot', 'asda', '2014-07-18 00:00:00', 0, 1, 1, 1, 1, NULL),
(4, '1', 'asdf', 'asdasd', '2014-07-18 00:00:00', 0, 1, 1, 1, 1, '7/2014-37'),
(5, '1', 'adfasdf', 'asdasd', '2014-07-18 00:00:00', 0, 1, 1, 1, 1, NULL),
(6, '1', 'Ladengestaltung', '<div>Es liegt auf der Hand, dass sich hinter den Ikea-Fanseiten keine großen Unternehmen, sondern einzelne Privatpersonen verbergen. So ist es zumindest bei den beiden Fanseiten, deren Entstehung maßgeblich auf die Ikea-Leidenschaft ihrer Betreiber zurückgeht.</div><div><br></div><div>Jahrelang tolerierte Ikea die Seite der Ikeafans, kooperierte sogar teilweise mit den Betreibern. Anfang 2012 wandelte sich dann jedoch die Stimmung. Anwälte von Ikea forderten die Herausgabe der Ikeafans-Domain und die Entfernung von Bildern und Symbolen, die auf Ikea hindeuteten. Zudem stört sich Ikea daran, dass auf den Fanseiten Werbung geschaltet ist, beispielsweise auf andere Möbelhäuser. Seither läuft die Auseinandersetzung.</div><div><br></div><div>Die Ikeafans-Betreiber vermuten, dass Ikea durch den juristischen Schritt auch seine eigene Community Share Space promoten wollte, die kurz vor dem Streit gelauncht wurde. Im Mai holten die Ikeafans-Betreiber nun zum Gegenangriff aus und reichten Klage gegen die Möbelkette ein.</div>', '2014-07-18 00:00:00', 0, 1, 1, 1, 1, '7/2014-1'),
(7, '1', 'Test', 'asdasd', '2014-07-18 00:00:00', 0, 1, 1, 1, 1, NULL),
(8, '1', 'Test', 'Test', '2014-07-22 00:00:00', 0, 1, 1, 1, 32, '7/2014-3'),
(9, '1', 'Test', 'Test', '2014-07-22 00:00:00', 0, 1, 1, 1, 32, NULL),
(10, '2', 'Test', 'asdasd', '2014-07-22 00:00:00', 0, 1, 1, 1, 32, '07/2014-40'),
(11, '1', 'Test', 'Test', '2014-07-30 00:00:00', 0, 1, 84, 84, 1, NULL),
(12, '1', 'werger', '', '2014-08-01 00:00:00', 0, 1, 537, 512, 30, NULL),
(13, '1', 'test von jascha', 'grweer', '2014-08-01 00:00:00', 0, 1, 512, 17, 30, NULL),
(14, '1', 'Test', 'asdasd', '2014-08-01 00:00:00', 1, 1, 155, 451, 1, NULL),
(15, '1', 'Test 1.8.2014', '', '2014-08-01 00:00:00', 1, 1, 121, 82, 1, NULL),
(16, '1', 'Test 1.8.2014', 'asdasd', '2014-08-01 00:00:00', 1, 1, 82, 533, 1, NULL),
(17, '1', 'Test 1.8.2014', 'asdasd', '2014-08-01 00:00:00', 1, 1, 82, 533, 1, NULL),
(18, '1', 'Test 1.8.2014', 'asdasd', '2014-08-01 00:00:00', 1, 1, 82, 533, 1, NULL),
(20, '1', 'Tester', 'adfsdgfsdf', '2014-08-01 00:00:00', 1, 1, 451, 435, 1, NULL),
(22, '1', 'Test', 'asdasd', '2014-08-01 00:00:00', 1, 1, 157, 283, 1, NULL),
(23, '1', 'asdasd', 'adasd', '2014-08-01 00:00:00', 1, 1, 110, 283, 1, NULL),
(24, '1', 'sdfgdsf', 'asdfasdf', '2014-08-01 00:00:00', 1, 1, 387, 283, 1, NULL),
(25, '3', 'ergergw', 'wergwrg', '2014-08-01 00:00:00', 30, 1, 17, 512, 33, '08/2014-43'),
(26, '3', 'test von jascha 4', 'werfreg', '2014-08-01 00:00:00', 30, 1, 283, 229, 32, '08/2014-41');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `project_relations`
--

CREATE TABLE IF NOT EXISTS `project_relations` (
  `id` int(11) NOT NULL,
  `task` varchar(45) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `project_relations`
--

INSERT INTO `project_relations` (`id`, `task`, `user_id`, `project_id`) VALUES
(2, 'Design', 1, 1),
(3, 'Ass', 1, 2),
(5, 'asd', 1, 4),
(6, '', 1, 5),
(7, 'Design / Kontakt', 1, 6),
(8, 'Programmierung', 30, 6),
(9, 'HTML / CSS', 32, 6),
(10, 'HTML / CSS', 33, 6),
(11, '', 1, 7),
(12, '', 32, 8),
(13, '', 33, 8),
(14, '', 30, 10),
(15, '', 1, 11),
(16, '', 32, 11),
(17, '', 1, 14),
(18, '', 30, 14),
(19, '', 1, 16),
(20, '', 30, 16),
(21, '', 32, 16),
(22, '', 33, 16),
(23, '', 1, 17),
(24, '', 30, 17),
(25, '', 32, 17),
(26, '', 33, 17),
(27, '', 1, 18),
(28, '', 30, 18),
(29, '', 32, 18),
(30, '', 33, 18),
(31, '', 1, 20),
(32, '', 30, 20),
(33, '', 1, 22),
(34, '', 30, 22),
(35, '', 1, 23),
(36, '', 30, 23),
(37, '', 32, 23),
(38, '', 33, 23),
(39, '', 1, 25),
(40, '', 30, 25),
(41, '', 33, 25),
(42, NULL, 30, 26);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `relations`
--

CREATE TABLE IF NOT EXISTS `relations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `workgroup_id` int(11) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `relations`
--

INSERT INTO `relations` (`id`, `user_id`, `workgroup_id`, `role`) VALUES
(2, 1, 1, 'administrator'),
(3, 30, 1, 'member'),
(4, 32, 1, 'member'),
(5, 33, 1, 'member');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tasks`
--

CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `time` float DEFAULT NULL,
  `status` enum('1','0') DEFAULT NULL,
  `order` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tasks`
--

INSERT INTO `tasks` (`id`, `project_id`, `user_id`, `creator_id`, `date`, `title`, `description`, `time`, `status`, `order`) VALUES
(1, 6, 1, 1, '2014-08-01 00:00:00', 'Master Layout', '', NULL, '1', 4),
(2, 6, 30, 1, '2014-08-31 00:00:00', 'Veranstalltungskalender', '', NULL, '0', 0),
(3, 6, 32, 1, '2014-08-31 00:00:00', 'Wordpress anlegen', '', NULL, NULL, 0),
(4, 6, 33, 1, '2014-08-31 00:00:00', 'Wordpress anlegen', '', NULL, '0', 0),
(5, 6, 1, 1, '2014-08-08 00:00:00', 'Kundentermin', '', NULL, '1', 3),
(6, 6, 1, 1, '2014-07-25 00:00:00', 'Test', '', NULL, '1', 2),
(7, 10, 30, 1, '2014-07-27 00:00:00', 'Test', '', NULL, NULL, 0),
(8, 1, 30, 30, '1970-01-01 01:00:00', 'test1', 'test2', NULL, NULL, 0),
(9, 1, 30, 30, '1970-01-01 01:00:00', 'test1', 'test2', NULL, NULL, 0),
(10, 1, 1, 30, '1970-01-01 01:00:00', 'test1', 'test2', NULL, NULL, 0),
(11, 25, 33, 30, '1970-01-01 01:00:00', 'test', 'rewr', NULL, '0', 0),
(12, 6, 1, 1, '2014-08-31 00:00:00', 'Test', '', NULL, NULL, 0),
(13, 6, 1, 1, '2014-09-18 00:00:00', 'Test Termin', '', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `active` enum('1','0') DEFAULT NULL,
  `activation` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `cur_workgroup` int(11) NOT NULL,
  `register_date` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `firstname`, `name`, `active`, `activation`, `image`, `cur_workgroup`, `register_date`, `last_login`) VALUES
(1, 'baltruschat@wortbildton.de', '$2a$08$mkWQmTzi1Hn1diqY7i3CwePEKarvzYeNkflcGtElBLaChdqOzocse', 'Felix', 'Baltruschat', '1', NULL, '1405598972153c7bcfc55529.jpg', 1, '2014-04-15 00:00:00', '2014-08-28 10:29:17'),
(30, 'burmeister@wortbildton.de', '$2a$08$JPfwtbMK.fCkpqtRjJqS8.dH7NqsjCAo.PC.8IHfkujGGVdvqYxGm', 'Jascha', 'Burmeister', '1', NULL, '14056904573053c92259cab9d.jpg', 1, '2014-04-30 00:00:00', '2014-08-01 21:16:03'),
(32, 't.hansen@wortbildton.de', '$2a$08$HU5hC24CxP6x/f.kI/cjDeSQZEqYgSx7U8MEOrRAowHyBfUS3sFSy', 'Torge', 'Hansen', '1', '', '14060270773253ce45453b6f3.jpg', 0, '2014-05-15 14:12:06', '2014-07-22 13:00:54'),
(33, 'koppenhagen@wortbildton.de', '$2a$08$KTX7u7mSmwdCV6yVVNjAKO/frN3scvsvvSOxp/p1ddt65NqK3rP3O', 'Lukas', 'Koppenhagen', '1', '', '14060272643353ce4600e7135.jpg', 1, '2014-05-15 14:12:34', '2014-07-22 13:01:41');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `workgroup`
--

CREATE TABLE IF NOT EXISTS `workgroup` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `invoice_number_format` varchar(10) NOT NULL,
  `invoice_number` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `workgroup`
--

INSERT INTO `workgroup` (`id`, `name`, `creator`, `invoice_number_format`, `invoice_number`) VALUES
(1, 'WortBildTon Werbeagentur', 1, 'MM/YYYY-ID', 43),
(2, 'TestGruppe', 1, '', 0),
(11, 'DeveloperGroup', 30, '', 0);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_calendar_workgroup1_idx` (`workgroup_id`),
  ADD KEY `fk_calendar_users1_idx` (`creator_id`);

--
-- Indizes für die Tabelle `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `from` (`from`),
  ADD KEY `from_2` (`from`),
  ADD KEY `from_3` (`from`),
  ADD KEY `to` (`to`);

--
-- Indizes für die Tabelle `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_projects_addresses1_idx` (`invoice`),
  ADD KEY `fk_projects_addresses2_idx` (`contact`),
  ADD KEY `fk_projects_users1_idx` (`manager`);

--
-- Indizes für die Tabelle `project_relations`
--
ALTER TABLE `project_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_project_relations_users1_idx` (`user_id`),
  ADD KEY `fk_project_relations_projects1_idx` (`project_id`);

--
-- Indizes für die Tabelle `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_relations_users1_idx` (`user_id`),
  ADD KEY `fk_relations_workgroup1_idx` (`workgroup_id`);

--
-- Indizes für die Tabelle `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bookings_jobs1_idx` (`project_id`),
  ADD KEY `fk_tasks_users1_idx` (`user_id`),
  ADD KEY `fk_tasks_users2_idx` (`creator_id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `workgroup`
--
ALTER TABLE `workgroup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_workgroup_users1_idx` (`creator`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=549;
--
-- AUTO_INCREMENT für Tabelle `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT für Tabelle `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT für Tabelle `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT für Tabelle `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT für Tabelle `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT für Tabelle `project_relations`
--
ALTER TABLE `project_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT für Tabelle `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT für Tabelle `workgroup`
--
ALTER TABLE `workgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `calendar`
--
ALTER TABLE `calendar`
  ADD CONSTRAINT `fk_calendar_users1` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_calendar_workgroup1` FOREIGN KEY (`workgroup_id`) REFERENCES `workgroup` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `fk_projects_addresses1` FOREIGN KEY (`contact`) REFERENCES `addresses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_projects_addresses2` FOREIGN KEY (`invoice`) REFERENCES `addresses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_projects_users1` FOREIGN KEY (`manager`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `project_relations`
--
ALTER TABLE `project_relations`
  ADD CONSTRAINT `fk_project_relations_projects1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_project_relations_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `relations`
--
ALTER TABLE `relations`
  ADD CONSTRAINT `fk_relations_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_relations_workgroup1` FOREIGN KEY (`workgroup_id`) REFERENCES `workgroup` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `fk_bookings_jobs1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tasks_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tasks_users2` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `workgroup`
--
ALTER TABLE `workgroup`
  ADD CONSTRAINT `fk_workgroup_users1` FOREIGN KEY (`creator`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
