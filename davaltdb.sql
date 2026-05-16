-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 14 mai 2026 à 13:09
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `davaltdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin', '0381351058');

-- --------------------------------------------------------

--
-- Structure de la table `adn`
--

CREATE TABLE `adn` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `adn`
--

INSERT INTO `adn` (`id`, `title`, `text`) VALUES
(1, 'Notre Histoire', 'Davalt Record est un label et studio de production musicale malgache fondé par Davida Alain Tatasoa vers 2023.\r\n\r\nNé avec l’ambition de faire rayonner la musique malgache, le label rassemble une trentaine d’artistes venant de toutes les régions de Madagascar, créant une véritable famille artistique.\r\n\r\nDavalt Record ne se limite pas à produire de la musique : il accompagne ses artistes dans leur développement personnel et leur carrière, en les aidant à structurer leur parcours professionnel.\r\n\r\nDepuis son lancement, le label connaît une montée rapide, avec plus d’un million d’écoutes sur la plateforme Moozik, où ses artistes figurent parmi les plus populaires.\r\n\r\nEn 2025, un partenariat stratégique avec Moozik a permis d’élargir la visibilité des artistes à l’échelle nationale et internationale, avec l’objectif de positionner la musique malgache sur la scène mondiale.'),
(5, 'Pourquoi Nous Existons ', 'Donner une voix aux talents cachés\r\nÀ Madagascar, beaucoup d’artistes ont du talent… mais pas de structure. Davalt Records est né pour révéler ces voix qui restaient dans l’ombre.\r\n\r\n. Structurer un parcours artistique\r\nFaire de la musique, c’est bien. Construire une carrière, c’est autre chose. Le label aide les artistes à passer de “passion” à “profession”.\r\n\r\n . Créer une famille artistique\r\nCe n’est pas juste un label, c’est une équipe. Les artistes collaborent, évoluent ensemble et grandissent dans un même univers.\r\n\r\n . Moderniser la musique malgache\r\nIls veulent adapter la musique locale aux standards actuels (production, image, marketing) pour qu’elle puisse rivaliser à l’international.\r\n\r\n . Faire rayonner Madagascar dans le monde\r\nObjectif final : exporter la musique malgache, la faire écouter ailleurs, et prouver qu’elle a sa place sur la scène mondiale.'),
(6, 'Vision Artistique', ' Une identité malgache moderne\r\nLe label cherche à mélanger racines locales et sonorités actuelles.\r\nPas question d’oublier la culture, mais plutôt de la transformer en quelque chose d’exportable et puissant.\r\n\r\n . L’émotion avant tout\r\nChaque morceau doit raconter quelque chose.\r\nTristesse, ambition, amour, lutte… la musique devient un miroir de la vraie vie, pas juste un son qui passe.\r\n\r\n . Des artistes uniques, pas des copies\r\nDavalt ne veut pas créer des clones.\r\nChaque artiste est encouragé à développer son propre univers, son style, son histoire.\r\n\r\n . L’image compte autant que le son\r\nClips, visuels, branding…\r\nL’artiste est vu comme une œuvre complète, pas seulement une voix. Tout doit être cohérent et marquant.\r\n\r\n . Une évolution constante\r\nLe label pousse ses artistes à progresser sans cesse :\r\nnouveaux styles, nouvelles collaborations, nouvelles directions'),
(7, 'Philosophie & Valeurs', 'L’authenticité avant tout\r\nChaque artiste est encouragé à rester fidèle à son univers et à sa culture. Pas de copies, pas de modes imposées.\r\n\r\n . La musique comme vecteur de vie\r\nLe label voit la musique comme un outil pour raconter des histoires, transmettre des émotions et inspirer.\r\n\r\n . Collaboration et communauté\r\nLes artistes ne sont pas isolés : ils évoluent dans un environnement de partage, d’entraide et d’émulation.\r\n\r\n . Innovation constante\r\nToujours chercher à se renouveler : nouveaux sons, nouvelles techniques, nouvelles plateformes, pour garder une longueur d’avance.\r\n\r\n . Rayonnement et impact\r\nDavalt ne produit pas seulement de la musique locale : il veut que celle-ci touche le monde, tout en valorisant les racines malgaches.');

-- --------------------------------------------------------

--
-- Structure de la table `awards`
--

CREATE TABLE `awards` (
  `id` bigint(20) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `awards`
--

INSERT INTO `awards` (`id`, `category`, `image`, `title`, `year`) VALUES
(1, 'Afro Masculin', '/src/assets/awards/afromascu.jpeg', 'RDJ 2024', '2024'),
(2, 'Musique Vivante', '/src/assets/awards/vivante.jpeg', 'RDJ 2024', '2024'),
(3, 'Coup de Coeur', '/src/assets/awards/rdj3.jpg', 'RDJ 2024', '2024'),
(10, '1 000 000 STREMS Tanjona R', '/src/assets/awards/moozik.jpg', 'MOOZIK', '2025'),
(11, 'Révélation de l\'année', '/src/assets/awards/revelation.jpeg', 'RDJ 2023', '2023'),
(12, 'Meilleur producteur', 'src\\assets\\awards\\AMMA.jpeg', 'AMMA', '2025');

-- --------------------------------------------------------

--
-- Structure de la table `blog`
--

CREATE TABLE `blog` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`content`)),
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `date_publication` datetime DEFAULT current_timestamp(),
  `talent_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `blog`
--

INSERT INTO `blog` (`id`, `title`, `excerpt`, `content`, `image`, `category`, `date_publication`, `talent_id`, `created_at`, `updated_at`) VALUES
(1, 'Vision boo cinématographique moderne', 'Une boo plongée dans la réalisation contemporaine', '[{\"type\":\"paragraph\",\"text\":\"Le boo cinéma est une fenêtre vers l’âme humaine.\"},{\"type\":\"paragraph\",\"text\":\"Chaque boo plan raconte une histoire unique.\"}]', '/src/assets/events/concert.jpg', 'mode', '2026-03-31 15:14:25', 1, '2026-03-31 12:14:25', '2026-03-31 13:39:31'),
(3, 'Derrière la production teste', 'Organisation et magie du tournage teste', '[{\"type\":\"paragraph\",\"text\":\"La production est le cœur invisible d’un projet teste.\"},{\"type\":\"paragraph\",\"text\":\"Coordonner, anticiper, réussir teste.\"}]', '/images/blog/production.jpg', 'tech', '2026-03-31 15:14:25', NULL, '2026-03-31 12:14:25', '2026-03-31 12:14:25'),
(4, 'Énergie urbaine', 'Le dancehall comme expression', '[{\"type\": \"paragraph\", \"text\": \"La musique est une vibration pure.\"}, {\"type\": \"paragraph\", \"text\": \"Chaque rythme raconte une rue.\"}]', '/images/blog/dancehall.jpg', 'musique', '2026-03-31 15:14:25', 4, '2026-03-31 12:14:25', '2026-03-31 12:14:25'),
(5, 'Fusion Afro Pop', 'Entre tradition et modernité', '[{\"type\": \"paragraph\", \"text\": \"La musique afro est une identité forte.\"}, {\"type\": \"paragraph\", \"text\": \"Elle traverse les frontières.\"}]', '/images/blog/afropop.jpg', 'musique', '2026-03-31 15:14:25', NULL, '2026-03-31 12:14:25', '2026-03-31 12:14:25'),
(6, 'Reggae & émotions', 'Des messages dans chaque note', '[{\"type\": \"paragraph\", \"text\": \"Le reggae parle de vérité et de liberté.\"}, {\"type\": \"paragraph\", \"text\": \"Chaque chanson est un message.\"}]', '/images/blog/reggae.jpg', 'musique', '2026-03-31 15:14:25', 7, '2026-03-31 12:14:25', '2026-03-31 12:14:25'),
(7, 'Créer et coder', 'Quand l’art rencontre la tech', '[{\"type\": \"paragraph\", \"text\": \"Créer, coder, écrire... une seule vision.\"}, {\"type\": \"paragraph\", \"text\": \"Le digital devient une toile.\"}]', '/images/blog/dev.jpg', 'tech', '2026-03-31 15:14:25', NULL, '2026-03-31 12:14:25', '2026-03-31 12:14:25'),
(8, 'Rap & identité', 'Une voix pour la rue', '[{\"type\": \"paragraph\", \"text\": \"Le rap est une forme de vérité brute.\"}, {\"type\": \"paragraph\", \"text\": \"Chaque punchline est une histoire.\"}]', '/images/blog/rap.jpg', 'musique', '2026-03-31 15:14:25', NULL, '2026-03-31 12:14:25', '2026-03-31 12:14:25'),
(9, 'Style & attitude', 'Le mannequinat moderne', '[{\"type\": \"paragraph\", \"text\": \"Être mannequin, c’est incarner une vision.\"}, {\"type\": \"paragraph\", \"text\": \"Le style est un langage silencieux.\"}]', '/images/blog/fashion.jpg', 'mode', '2026-03-31 15:14:25', NULL, '2026-03-31 12:14:25', '2026-03-31 12:14:25'),
(10, 'Jeu d’acteur', 'Se transformer pour raconter', '[{\"type\": \"paragraph\", \"text\": \"Un acteur vit mille vies.\"}, {\"type\": \"paragraph\", \"text\": \"Chaque rôle est une immersion.\"}]', '/images/blog/acteur.jpg', 'cinema', '2026-03-31 15:14:25', 11, '2026-03-31 12:14:25', '2026-03-31 12:14:25'),
(11, 'Production musicale', 'Créer des sons uniques', '[{\"type\": \"paragraph\", \"text\": \"Le studio est un laboratoire sonore.\"}, {\"type\": \"paragraph\", \"text\": \"Chaque beat est une signature.\"}]', '/images/blog/producer.jpg', 'musique', '2026-03-31 15:14:25', NULL, '2026-03-31 12:14:25', '2026-03-31 12:14:25'),
(12, 'L’art du DJ', 'Faire vibrer la foule', '[{\"type\": \"paragraph\", \"text\": \"Le DJ contrôle l’énergie de la nuit.\"}, {\"type\": \"paragraph\", \"text\": \"Chaque transition est stratégique.\"}]', '/images/blog/dj.jpg', 'musique', '2026-03-31 15:14:25', 14, '2026-03-31 12:14:25', '2026-03-31 12:14:25'),
(13, 'Ambiance nocturne', 'Créer une expérience musicale', '[{\"type\": \"paragraph\", \"text\": \"La nuit appartient aux créateurs de vibes.\"}, {\"type\": \"paragraph\", \"text\": \"Le son devient une expérience.\"}]', '/images/blog/night.jpg', 'musique', '2026-03-31 15:14:25', NULL, '2026-03-31 12:14:25', '2026-03-31 12:14:25'),
(14, 'Cinéma & émotion', 'Le regard d’une actrice', '[{\"type\": \"paragraph\", \"text\": \"Le jeu d’acteur est une sensibilité pure.\"}, {\"type\": \"paragraph\", \"text\": \"Chaque regard raconte.\"}]', '/images/blog/actrice.jpg', 'cinema', '2026-03-31 15:14:25', NULL, '2026-03-31 12:14:25', '2026-03-31 12:14:25'),
(15, 'Poésie moderne', 'Le slam comme expression', '[{\"type\": \"paragraph\", \"text\": \"Le slam est une parole libre.\"}, {\"type\": \"paragraph\", \"text\": \"Chaque texte est une vibration.\"}]', '/images/blog/slam.jpg', 'art', '2026-03-31 15:14:25', NULL, '2026-03-31 12:14:25', '2026-03-31 12:14:25'),
(19, 'bob', 'sy i carter', '[{\"type\":\"paragraph\",\"text\":\"Écrivez votre yo article ici...\"}]', '/src/assets/events/concert.jpg', 'musique', '2026-04-01 08:27:00', NULL, '2026-04-01 08:27:58', '2026-04-01 08:27:58'),
(20, 'art de la creation', 'boby nous le montre', '[{\"type\":\"paragraph\",\"text\":\"Écrivez votre article ici...\"}]', '/src/assets/events/concert.jpg', 'art', '2026-04-01 08:28:00', NULL, '2026-04-01 08:29:41', '2026-04-01 08:29:41');

-- --------------------------------------------------------

--
-- Structure de la table `calendrier`
--

CREATE TABLE `calendrier` (
  `id` bigint(20) NOT NULL,
  `talent_id` bigint(20) NOT NULL,
  `projet` varchar(255) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `calendrier`
--

INSERT INTO `calendrier` (`id`, `talent_id`, `projet`, `date`, `status`, `location`, `image_url`) VALUES
(1, 1, 'Tournage clip artiste local', '2026-03-25', 'inproject', 'Studio Analakely', NULL),
(6, 2, 'crea', '2026-04-08', 'inproject', 'mahabo', '/src/assets/events/concert.jpg'),
(12, 4, 'somasoma', '2026-04-14', 'busy', 'sambava', '/src/assets/events/concert.jpg'),
(19, 7, 'Festival Reggae', '2026-04-09', 'available', 'Mahajanga', NULL),
(28, 11, 'Casting série', '2026-03-24', 'option', 'Bureau production', NULL),
(33, 14, 'Private event', '2026-03-27', 'option', 'Hôtel Carlton', NULL),
(43, 1, 'conception', '2026-03-28', 'inproject', 'mahabo', '/src/assets/events/concert.jpg'),
(44, 7, 'soma mafana', '2026-03-28', 'option', 'toliara', '/src/assets/events/concert.jpg'),
(45, 1, 'conception t king', '2026-03-31', 'inproject', 'mahabo', '/src/assets/events/concert.jpg'),
(46, 4, 'somasoma', '2026-04-05', 'busy', 'vohemar', '/src/assets/events/concert.jpg'),
(48, 7, 'show ', '2026-04-02', 'option', 'sambava', '/src/assets/events/concert.jpg'),
(50, 29, 'Ambatondrazaka', '2026-05-01', 'busy', 'show', 'src\\assets\\events\\parishpost.jpg'),
(51, 29, 'Morarano chrome', '2026-05-01', 'busy', 'show', 'src\\assets\\events\\parishpost.jpg'),
(53, 29, 'Fianarantsoa', '2026-05-10', 'busy', 'show', 'src\\assets\\events\\parishpost.jpg'),
(57, 29, 'Besakay', '2026-05-14', 'busy', 'show', 'src\\assets\\events\\parishpost.jpg'),
(59, 29, 'Mahavelona', '2026-05-15', 'busy', 'show', 'src\\assets\\events\\parishpost.jpg'),
(60, 29, 'Beforona', '2026-05-21', 'busy', 'show', 'src\\assets\\events\\parishpost.jpg'),
(61, 29, 'Ankadinondrisakay', '2026-05-24', 'busy', 'show', 'src\\assets\\events\\parishpost.jpg'),
(63, 29, 'Tana Coliseum', '2026-05-25', 'busy', 'show', 'src\\assets\\events\\parishpost.jpg'),
(66, 29, 'Ambatomanoina', '2026-05-28', 'busy', 'show', 'src\\assets\\events\\parishpost.jpg'),
(67, 4, 'Majunga', '2026-05-25', 'busy', 'lundi de pentecote', 'src\\assets\\events\\jued s mameno.jpg'),
(68, 26, 'MAJUNGA', '2026-05-25', 'busy', 'Lundi de pentecote', 'src\\assets\\events\\jued s mameno.jpg'),
(69, 33, 'TSIROAMANDIDY', '2026-05-01', 'busy', 'Cabaret', 'src\\assets\\events\\tanjona.jpg'),
(70, 33, 'ANALAVORY', '2026-05-03', 'busy', 'show', 'src\\assets\\events\\tanjonapost.jpg'),
(73, 33, 'AMBALANIRANA', '2026-05-15', 'busy', 'show', 'src\\assets\\events\\tanjonapost.jpg'),
(74, 33, 'BEVATO TSIROAMANDIDY', '2026-05-17', 'busy', 'show', 'src\\assets\\events\\tanjonapost.jpg'),
(82, 33, 'AMBAVAHADY', '2026-05-11', 'busy', 'show', 'src\\assets\\events\\tanjonapost.jpg'),
(85, 33, 'AMBOSITRA', '2026-05-24', 'busy', 'pentecote', 'src\\assets\\events\\tanjonapost.jpg'),
(86, 33, 'TANA ', '2026-05-25', 'busy', 'lundi de pentecote', 'src\\assets\\events\\tanjonapost.jpg'),
(87, 33, 'ANTSIRABE', '2026-05-29', 'busy', 'show', 'src\\assets\\events\\tanjonapost.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) NOT NULL,
  `label` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`id`, `label`, `value`) VALUES
(1, 'Email', 'toussaintrmccmr1223@gmail.com'),
(2, 'WhatsApp', '+261 34 90 046 31'),
(3, 'Téléphone', '+261 34 90 046 31');

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `full_name`, `email`, `phone`, `subject`, `message`) VALUES
(1, 'bema', 'bema@gmail.com', '+261381351058', 'project', 'ataovy'),
(3, 'tommy', 'tommy@gmail.com', '+261343554623', 'career', 'ehfuyergyrfhfegrfyuergfruefrgefuyhberyufghvjergbfvhrejgfvbuerhjvgbuehj gberhj,fgvbeufhbv ergfh');

-- --------------------------------------------------------

--
-- Structure de la table `partner`
--

CREATE TABLE `partner` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `role` varchar(1000) DEFAULT NULL,
  `synopsis` varchar(2000) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `partner`
--

INSERT INTO `partner` (`id`, `name`, `category`, `client`, `duration`, `role`, `synopsis`, `thumbnail`, `title`, `video`, `year`) VALUES
(1, 'Boss Company', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'LabelRwikordz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Tropik Prod', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Lady Boss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'REAL TV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'STD Boutique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Yas Madagascar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Moozik', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `synopsis` varchar(2000) DEFAULT NULL,
  `role` varchar(1000) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `awarded` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `projects`
--

INSERT INTO `projects` (`id`, `title`, `category`, `year`, `client`, `thumbnail`, `video`, `synopsis`, `role`, `duration`, `awarded`) VALUES
(2, 'Miezaka', 'Clips musicaux', '2025', 'JIFRAX', '/src/assets/projects/clip1.jpg', 'https://www.youtube.com/watch?v=d8TMTS9IHMI&list=RDd8TMTS9IHMI&start_radio=1', 'Clip experimental melant danse urbaine et effets visuels.', 'Realisation, VFX et color grading', '4:30', 1),
(6, 'Miets\'bud', 'Clips musicaux', '2025', 'JAM JUED', '\\src\\assets\\projects\\jam-jued.JPG', 'https://www.youtube.com/watch?v=F-AHCZo_3Rc&list=RDF-AHCZo_3Rc&start_radio=1', 'dizina', 'dizina', '4 min', 0),
(8, 'LORENZO x PARISH', 'clips musicaux', '2026', 'SAROTRO', '\\src\\assets\\projects\\Capture.JPG', 'https://www.youtube.com/watch?v=BT5tx7xae-k&list=RDBT5tx7xae-k&start_radio=1', 'H', 'H', 'J', 0),
(9, 'MBOLA MAHATSIARO', 'clips musicaux', '2026', 'FERAD', '\\src\\assets\\projects\\f.JPG', 'https://www.youtube.com/watch?v=_cixje8M_zE&list=RD_cixje8M_zE&start_radio=1', 'H', 'J', 'K', 0),
(10, 'Manao soa tsy very mandeha', 'films', '2026', 'TEAMRWIKORDZ', '\\src\\assets\\projects\\film-jamal.JPG', 'https://www.youtube.com/watch?v=2VgQukV6x6g&list=RD2VgQukV6x6g&start_radio=1', 'hj', 'j', 'k', 0),
(11, 'LIMBISA', 'clips musicaux', '2026', 'MISTHER GANG', '\\src\\assets\\projects\\gang.JPG', 'https://www.youtube.com/watch?v=G-_zN33hkto&list=RDG-_zN33hkto&start_radio=1', 'H', 'J', 'K', 0),
(12, 'Tsaiky nakay taloha', 'clips musicaux', '2025', 'JAMAL', '\\src\\assets\\projects\\sipakotaloha.JPG', 'https://www.youtube.com/watch?v=TvBlzTC4604&list=RDTvBlzTC4604&start_radio=1', 'J', 'J', 'J', 0),
(13, 'KEMBA', 'clips musicaux', '2026', 'JHALESS x T KING', '\\src\\assets\\projects\\jh.JPG', 'https://www.youtube.com/watch?v=iCHWIrk8VrM&list=RDiCHWIrk8VrM&start_radio=1', 'J', 'K', 'J', 0),
(14, ' Laisse tomber', 'clips musicaux', '2026', 'MAMENO', '\\src\\assets\\projects\\mm.JPG', 'https://www.youtube.com/watch?v=RV5t6fqALZU&list=RDRV5t6fqALZU&start_radio=1', 'Z', 'Z', 'Z', 0),
(15, 'Hajao ny vehivavy', 'clips musicaux', '2026', 'NASOLO X KONNY J', '\\src\\assets\\projects\\N& K.JPG', 'https://www.youtube.com/watch?v=eAg31HMO98A&list=RDeAg31HMO98A&start_radio=1', 'FF', 'F', 'F', 0),
(16, 'NAGNINO', 'clips musicaux', '2025', 'TEAM RWIKORDZ', '\\src\\assets\\projects\\rem.JPG', 'https://www.youtube.com/watch?v=DD5Dj1u7uw0&list=RDDD5Dj1u7uw0&start_radio=1', 'V', 'V', 'V', 0),
(17, 'Omeko', 'clips musicaux', '2026', 'Tanjona Randrianarivelo', '\\src\\assets\\projects\\t.JPG', 'https://www.youtube.com/watch?v=pPJqAsr8Pto&list=RDpPJqAsr8Pto&start_radio=1', 'G', 'G', 'G', 0),
(18, 'VADIN’OLONA', 'clips musicaux', '2026', 'VAKO GASY', '\\src\\assets\\projects\\vako gasy.JPG', 'https://www.youtube.com/watch?v=Z_lCvdKDLoQ&list=RDZ_lCvdKDLoQ&start_radio=1', 'VV', 'V', 'F', 0),
(19, 'VERY KA HITA INDRAY', 'films', '2026', 'TEAM RWIKORDZ', '\\src\\assets\\projects\\very ka hita indray.JPG', 'https://www.youtube.com/watch?v=R0BoE7RdS5k&t=46s', 'K', 'K', 'K', 0);

-- --------------------------------------------------------

--
-- Structure de la table `reservation_artist`
--

CREATE TABLE `reservation_artist` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `type_event` varchar(100) NOT NULL,
  `date_event` date NOT NULL,
  `lieu` varchar(255) NOT NULL,
  `duree` varchar(100) NOT NULL,
  `budget` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `talent_id` bigint(20) NOT NULL,
  `status` varchar(50) DEFAULT 'en_attente',
  `date_creation` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `reservation_artist`
--

INSERT INTO `reservation_artist` (`id`, `nom`, `email`, `type_event`, `date_event`, `lieu`, `duree`, `budget`, `description`, `talent_id`, `status`, `date_creation`) VALUES
(1, 'bema', 'bema@gmail.com', 'Événement privé', '2026-04-01', 'Sambava', '1h', '1000000', 'ciel bleu', 4, 'en_attente', '2026-03-25 10:55:54'),
(2, 'john', 'john@gmail.com', 'Publicité', '2026-04-01', 'tana', '2h', '2000000', 'zay zany', 4, 'en_attente', '2026-03-25 10:57:32'),
(3, 'bob', 'bob@gmail.com', 'Concert', '2026-03-31', 'Mahajanga', '3h', '2000000', 'asio', 4, 'en_attente', '2026-03-25 11:08:18'),
(4, 'bolida', 'bolida@gmail.com', 'Concert', '2026-04-03', 'vohemar', '3h', '1 000 000', 'mila show', 7, 'en_attente', '2026-03-30 08:19:49'),
(5, 'bryan', 'bryan@gmail.com', 'Concert', '2026-04-29', 'ilafy', '5H', '2000000ar', 'hubfy\'gh\'yè', 33, 'en_attente', '2026-04-22 07:18:45');

-- --------------------------------------------------------

--
-- Structure de la table `reservation_autre`
--

CREATE TABLE `reservation_autre` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `type_projet` varchar(100) NOT NULL,
  `synopsis` text NOT NULL,
  `duree` varchar(100) NOT NULL,
  `talent_id` bigint(20) NOT NULL,
  `date_creation` timestamp NOT NULL DEFAULT current_timestamp(),
  `budget` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `reservation_autre`
--

INSERT INTO `reservation_autre` (`id`, `nom`, `email`, `type_projet`, `synopsis`, `duree`, `talent_id`, `date_creation`, `budget`, `status`) VALUES
(2, 'brada', 'brada@gmail.com', 'Clip musical', 'mahay manidina', '3', 1, '2026-03-25 11:18:30', NULL, NULL),
(3, 'vody', 'vody@gmail.com', 'Clip musical', 'mandihy', '2 min 50', 1, '2026-03-30 06:07:36', NULL, NULL),
(6, 'George', 'george@gmail.com', 'Clip musical', 'yugèt-è', '2h', 4, '2026-04-22 06:57:25', NULL, NULL),
(7, 'koko', 'koko@gmail.com', 'Autre', 'rt(-èiytuk', '4jrs', 2, '2026-04-22 07:08:23', NULL, NULL),
(8, 'jean', 'jean@gmail.com', 'Publicité', 'yug-y-èty', '5jrs', 11, '2026-04-22 07:11:14', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `full_description` varchar(5000) DEFAULT NULL,
  `icon` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`id`, `title`, `description`, `full_description`, `icon`) VALUES
(1, 'Production Filmique', 'Production complète de longs et courts métrages, de la conception à la distribution.', 'Production complète de longs et courts métrages, de la conception à la distribution.\r\n\r\nNotre équipe de professionnels expérimentés vous accompagne à chaque étape de votre projet cinématographique, du développement créatif jusqu\'à la distribution en salle et en festivals.\r\n\r\n• Scénarisation & développement créatif\r\n• Pré-production & planification détaillée\r\n• Tournage professionnel (caméras RED/Sony)\r\n• Post-production avancée (montage, étalonnage)\r\n• Effets visuels & VFX\r\n• Sound design & mixage audio\r\n• Distribution & stratégie festivals\r\n• Accompagnement marketing', '🎬'),
(2, 'Clips Musicaux', 'Création de clips visuellement percutants qui amplifient l\'impact de votre musique.', 'Création de clips visuellement percutants qui amplifient l\'impact de votre musique.\r\n\r\nNous créons des univers visuels uniques qui reflètent votre identité artistique et captivent votre audience sur toutes les plateformes.\r\n\r\n• Concept artistique personnalisé\r\n• Storyboard & préparation visuelle\r\n• Tournage multi-caméras (4K/120p)\r\n• Éclairage cinématographique\r\n• Effets visuels & VFX créatifs\r\n• Color grading signature\r\n• Montage rythmique adapté à la musique\r\n• Optimisation pour YouTube/Instagram/TikTok\r\n• Stratégie de diffusion & promotion', '🎵'),
(3, 'Publicité & Branding ', 'Production de contenus publicitaires qui marquent les esprits et renforcent l\'identité de marque.', 'Production de contenus publicitaires qui marquent les esprits et renforcent l\'identité de marque.\r\n\r\nDes campagnes publicitaires percutantes qui connectent émotionnellement avec votre audience et génèrent des résultats mesurables.\r\n\r\n• Stratégie créative & conception\r\n• Production TV & publicités digitales\r\n• Motion design & animation 2D/3D\r\n• Contenu pour réseaux sociaux\r\n• Publicités pour plateformes (YouTube, Meta, TikTok)\r\n• Adaptation multi-formats\r\n• Campagnes intégrées\r\n• Analyse des performances & optimisation', '📺'),
(5, 'Événements & Spectacles', 'Captation et diffusion d\'événements live avec une qualité de production exceptionnelle.', 'Captation et diffusion d\'événements live avec une qualité de production exceptionnelle.\r\n\r\nNotre équipe mobile intervient pour capturer chaque instant de vos événements avec un équipement professionnel complet.\r\n\r\n• Captation multi-caméras professionnelle\r\n• Régie live & diffusion en streaming\r\n• Réalisation multi-caméras en direct\r\n• Sonorisation de qualité concert\r\n• Éclairage scénique\r\n• Création de teasers et highlights\r\n• Post-production événementielle\r\n• Livraison multi-formats\r\n• Archives et mémoire d\'événement', '🎪');

-- --------------------------------------------------------

--
-- Structure de la table `slogan`
--

CREATE TABLE `slogan` (
  `id` bigint(20) NOT NULL,
  `text` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `slogan`
--

INSERT INTO `slogan` (`id`, `text`) VALUES
(2, 'Maison de production audiovisuelle spécialisée dans Production musicale , Management & accompagnement d’artistes , Organisation d’événements musicaux , Production audiovisuelle & médias et Développement artistique national & international.');

-- --------------------------------------------------------

--
-- Structure de la table `talent`
--

CREATE TABLE `talent` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `bio` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `talent`
--

INSERT INTO `talent` (`id`, `name`, `category`, `role`, `image`, `bio`) VALUES
(1, 'Safidy Nomenjanahary SN ', 'Réalisateur', 'Directeur Artistique & Réalisateur en Chef', '/src/assets/talents/realisateur.JPG', 'Safidy Nomenjanahary, connu sous le nom de SN, est un réalisateur émergent affilié à Davalt Record, où il transforme les idées en images et les émotions en histoires visuelles puissantes. Issu d’une génération créative et connectée, il développe très tôt une passion pour l’image, le storytelling et l’esthétique. Pour lui, chaque projet dépasse la simple vidéo : c’est une vision, une empreinte, une manière de s’exprimer sans mots.\n\n\n\n\n          Au sein de Davalt Record, SN se distingue par un style cinématographique immersif, un sens du détail visuel marqué et une narration inspirée à la fois de la réalité et de l’introspection. Il mêle créativité brute et précision technique pour créer des œuvres qui captivent et laissent une trace dans l’esprit du spectateur.\n\n\n\n\nPlutôt que de suivre les tendances, SN cherche à les redéfinir. Chaque plan qu’il construit participe à un univers cohérent et personnel, où l’image devient signature. Aujourd’hui, il s’impose progressivement comme une nouvelle voix dans la réalisation visuelle, avec une ambition claire : faire de chaque image une identité forte et mémorable.'),
(2, 'DAVIDA Alain Tatasoa', 'Producteur', 'PRESIDENT DIRECTEUR GENERAL', '/src/assets/talents/scenariste.jpg', 'DAVIDA Alain Tatasoa, connu sous le nom de Mr DAVALT , est le fondateur et PDG de Davalt Record. Visionnaire et créateur dans l’âme, il est à l’origine de la naissance du label, qu’il a conçu comme bien plus qu’une simple structure musicale : un véritable mouvement artistique.\n\nAnimé par une forte ambition et une volonté de faire émerger de nouveaux talents, Mr DAVALT a construit Davalt Record autour d’une identité unique, mêlant créativité, authenticité et innovation. Il ne se limite pas à diriger, il façonne, influence et donne une direction claire à chaque projet porté par le label.\n\nSon leadership repose sur une vision : transformer les idées brutes en œuvres marquantes et offrir une plateforme d’expression à une nouvelle génération d’artistes. À travers Davalt Record, il impose progressivement une signature, un univers, une énergie reconnaissable.\n\nMr DAVALT incarne ainsi une nouvelle génération de dirigeants créatifs, où business et art avancent ensemble. Plus qu’un PDG, il est l’architecte d’un univers en construction, déterminé à laisser une empreinte durable dans le paysage artistique.'),
(4, 'JAM JUED ', 'Artist', 'Dancehall / Ridim', '/src/assets/talents/artist1.jpg', 'Jam Jued TR (Jam Jued TR) est un artiste dancehall affilié à Davalt Record, connu pour son énergie scénique, son flow dynamique et son style influencé par les sonorités caribéennes et urbaines.\n\nPassionné par la musique et le mouvement depuis ses débuts, il développe une identité artistique centrée sur le rythme, la performance et la connexion avec le public. Pour lui, le dancehall n’est pas seulement un genre musical, mais une manière de s’exprimer avec le corps, la voix et l’attitude.\n\nAu sein de Davalt Record, Jam Jued TR apporte une énergie festive et puissante, capable de transformer chaque morceau en ambiance explosive. Son style se distingue par des flows accrocheurs, une présence charismatique et une capacité à faire bouger les foules.\n\nSur scène comme en studio, il cherche à transmettre une vibe authentique, entre puissance et plaisir musical. Chaque performance devient un moment vivant, où la musique se ressent autant qu’elle s’écoute.\n\nJam Jued TR s’impose ainsi comme une figure montante du dancehall, avec une ambition claire : faire vibrer les scènes et imposer son style dans l’univers urbain.'),
(7, 'JAMAL ', 'Artist', 'reggae , slow', '/src/assets/talents/jamal.jpg', 'Jamal TR (Jamal TR) est un artiste affilié à Davalt Record, évoluant dans un univers musical urbain où le style, l’énergie et l’expression personnelle occupent une place centrale.\n\nDoté d’une forte présence artistique, il construit son identité autour de la musique et de la performance. Son approche se base sur le ressenti, l’attitude et la capacité à transmettre une vibe authentique à travers ses créations.\n\nAu sein de Davalt Record, Jamal TR apporte une énergie dynamique et complémentaire au collectif. Il s’inscrit dans une démarche créative où chaque projet est une occasion de progresser, d’expérimenter et d’affirmer son style.\n\nSon parcours est marqué par une volonté de se démarquer et de laisser une empreinte dans l’univers musical. Jamal TR incarne ainsi une nouvelle génération d’artistes en construction, portée par l’ambition, la passion et la recherche d’une identité forte.'),
(11, 'JHALESS', 'Artist', 'Afro urbain , Trap , Drill', 'src\\assets\\talents\\jh.jpg', 'Jhaless TR (Jhaless TR) est un artiste affilié à Davalt Record, évoluant dans un univers musical hybride mêlant afro-urbain, drill et trap.\n\nDoté d’une identité sonore versatile, il se distingue par sa capacité à naviguer entre plusieurs styles tout en gardant une signature personnelle. Son approche artistique repose sur l’énergie, l’émotion et l’authenticité, avec des influences qui oscillent entre rythmes afro, intensité de la drill et ambiance sombre de la trap.\n\nAu sein de Davalt Record, Jhaless TR apporte une diversité musicale importante, enrichissant le collectif par sa flexibilité et sa créativité. Il explore différentes atmosphères sonores, cherchant à créer des morceaux qui captent à la fois le cœur et l’attention.\n\nSon univers artistique est en constante évolution, porté par une volonté de progression et d’expérimentation. Jhaless TR incarne une nouvelle génération d’artistes urbains, capables de fusionner les styles pour construire une identité musicale moderne et percutante.'),
(14, 'DJ DJOJ\'MAN TR', 'Deejay', 'DJ', '\\src\\assets\\talents\\JOJ.jpg', 'DJ DJOJ’MAN TR (DJOJ\'MAN TR) est un DJ et artiste sonore affilié à Davalt Record, reconnu pour son énergie, son sens du rythme et sa capacité à transformer chaque ambiance en expérience musicale.\n\nPassionné par les platines et les vibrations urbaines, il développe très tôt une connexion forte avec la musique. Pour lui, mixer ne consiste pas seulement à enchaîner des sons, mais à raconter une histoire, créer une montée, faire voyager le public entre émotions et intensité.\n\nAu sein de Davalt Record, DJOJ’MAN TR apporte une dimension dynamique et vivante au collectif. Son style se caractérise par des transitions fluides, des choix audacieux et une signature sonore qui capte immédiatement l’attention.\n\nSur scène comme en studio, il ne se contente pas de jouer des morceaux : il crée une atmosphère, une énergie, un moment. Chaque performance devient un espace où le public ressent, bouge et vit la musique.\n\nDJOJ’MAN TR s’impose ainsi comme une figure montante, porté par une vision claire : faire de chaque set une expérience inoubliable.'),
(19, 'TAX DIRECTOR', 'Réalisateur', 'Réalisateur', 'src\\assets\\talents\\tax.jpg', 'TAX DIRECTOR (TAX DIRECTOR) est un réalisateur affilié à Davalt Record, reconnu pour son approche visuelle percutante et son sens aigu de la mise en scène.\n\nAnimé par une vision artistique affirmée, il transforme chaque idée en une expérience visuelle marquante. Pour lui, la caméra n’est pas un simple outil, mais une arme de narration, capable de capturer l’essence d’un moment et de lui donner une dimension intemporelle.\n\nAu sein de Davalt Record, TAX DIRECTOR se distingue par un style audacieux, mêlant esthétique moderne, rythme maîtrisé et narration visuelle forte. Il joue avec les lumières, les cadres et les émotions pour créer des images qui restent gravées dans l’esprit.\n\nSon travail ne se limite pas à filmer : il construit des univers. Chaque projet devient une immersion, chaque plan une signature. Il cherche constamment à repousser les limites de la créativité, en apportant une nouvelle perspective à la réalisation.\n\nTAX DIRECTOR s’impose ainsi comme une figure montante de la réalisation, avec une ambition claire : transformer chaque image en impact visuel puissant.'),
(20, 'Sambatra Andriamisaina ', 'Beatmaker', 'Beatmaker', 'src\\assets\\talents\\sam.jpg', 'Sambatra Andriamisaina (Sambatra Andriamisaina) est un beatmaker affilié à Davalt Record, spécialisé dans la création d’instrumentales et la construction d’univers sonores originaux.\n\nPassionné par la musique depuis ses débuts, il développe un sens aigu du rythme et des mélodies, lui permettant de transformer des idées simples en beats structurés et expressifs. Son travail repose sur la recherche d’une identité sonore unique, où chaque son est pensé pour transmettre une émotion précise.\n\nAu sein de Davalt Record, il contribue à façonner la base musicale des projets du label. Son rôle est essentiel dans la création des ambiances, en apportant des productions adaptées aux artistes tout en gardant une cohérence artistique.\n\nSambatra Andriamisaina s’inscrit dans une démarche de progression constante, cherchant à affiner son style et à enrichir ses compositions. Il se positionne comme un beatmaker en évolution, avec une volonté claire : créer des instrumentales qui marquent et définissent une identité musicale forte.'),
(21, 'Jordan Daewoo Director', 'Réalisateur', 'Réalisateur', 'src\\assets\\talents\\jord.jpg', 'Jordan Daewoo (Jordan Daewoo) est un réalisateur affilié à Davalt Record, reconnu pour son style visuel moderne et sa capacité à transformer chaque projet en expérience cinématographique.\n\nPassionné par l’image et la narration, il développe très tôt un regard artistique centré sur l’émotion, le détail et l’impact visuel. Pour lui, réaliser ne consiste pas seulement à filmer, mais à construire un univers où chaque plan a une intention et une énergie propre.\n\nAu sein de Davalt Record, Jordan Daewoo se distingue par une direction artistique soignée, mêlant esthétique urbaine, rythme dynamique et storytelling immersif. Il cherche à capturer l’authenticité des scènes tout en leur donnant une dimension cinématographique forte.\n\nSon approche repose sur une vision claire : faire ressentir plutôt que simplement montrer. Chaque projet qu’il dirige devient une œuvre visuelle où la musique, l’image et l’émotion s’alignent pour créer un impact durable.'),
(22, 'JIFRAX ', 'Artist', 'Rap , rnb', 'src\\assets\\talents\\jif.jpg', 'Jifrax TR (Jifrax TR) est un artiste affilié à Davalt Record, évoluant entre le rap et le R&B, avec une identité musicale axée sur l’émotion, le flow et la mélodie.\n\nSon univers artistique se construit autour d’un équilibre entre puissance et sensibilité. Dans ses morceaux, il combine des flows rap structurés avec des harmonies R&B plus douces, créant une ambiance à la fois introspective et moderne.\n\nAu sein de Davalt Record, Jifrax TR apporte une dimension émotionnelle forte au collectif. Il se distingue par sa capacité à transmettre des sentiments à travers ses textes et ses mélodies, tout en gardant une énergie urbaine contemporaine.\n\nSon style est en constante évolution, porté par une recherche d’authenticité et d’expression personnelle. Jifrax TR incarne ainsi une nouvelle génération d’artistes capables de fusionner rap et R&B pour créer une identité sonore unique.'),
(23, 'KAPITSANY', 'Artist', 'Afro', 'src\\assets\\talents\\kap.JPG', 'Kapitsany (Kapitsany) est un artiste affilié à Davalt Record, évoluant dans un univers afro où rythmes chaleureux, énergie et vibration culturelle occupent une place centrale.\n\nSon style musical s’inspire des sonorités afro modernes, mêlant percussion, groove et mélodies entraînantes. À travers sa musique, il cherche à transmettre une ambiance vivante, positive et connectée aux émotions du public.\n\nAu sein de Davalt Record, Kapitsany apporte une touche rythmique et solaire qui enrichit l’identité musicale du collectif. Il participe à la création d’un univers sonore où la danse, le ressenti et l’énergie sont au cœur de l’expérience.\n\nEn pleine évolution artistique, il construit progressivement sa signature, en explorant différentes influences afro tout en affirmant sa propre identité musicale. Kapitsany incarne ainsi une nouvelle génération d’artistes afro, portés par la créativité et la passion du rythme.'),
(24, 'KONNY J', 'Artist', 'Afro fusion', 'src\\assets\\talents\\konn.JPG', 'Konny J (Konny J) est un artiste affilié à Davalt Record, évoluant dans un univers afro fusion où les rythmes africains rencontrent des influences modernes et urbaines.\n\nSon style musical se distingue par une grande liberté artistique, mêlant afro, sonorités contemporaines et touches expérimentales. Il construit des morceaux vivants, portés par le groove, la mélodie et une énergie qui invite au mouvement.\n\nAu sein de Davalt Record, Konny J apporte une couleur musicale hybride, enrichissant le collectif par sa capacité à fusionner différents styles sans perdre son identité. Il joue un rôle important dans l’exploration de nouvelles directions sonores.\n\nEn pleine évolution, il développe progressivement sa signature artistique, cherchant à créer un univers reconnaissable et authentique. Konny J incarne ainsi une nouvelle génération d’artistes afro fusion, guidés par la créativité et l’expérimentation musicale.'),
(25, 'LORENZO', 'Artist', 'Afro , rnb', 'src\\assets\\talents\\lo.jpg', 'Lorenzo TR (Lorenzo TR) est un artiste affilié à Davalt Record, évoluant entre l’afro et le R&B, avec un style centré sur la mélodie, l’émotion et la fluidité vocale.\n\nSon univers musical mélange des rythmes afro modernes avec des influences R&B plus douces et harmonieuses. Il construit des morceaux qui mettent en avant le ressenti, l’ambiance et la connexion émotionnelle avec l’auditeur.\n\nAu sein de Davalt Record, Lorenzo TR apporte une touche mélodique et chaleureuse, enrichissant le collectif par sa sensibilité artistique et sa capacité à créer des atmosphères immersives.\n\nEn développement constant, il cherche à affiner son identité musicale et à imposer sa signature dans le paysage afro R&B. Lorenzo TR incarne ainsi une nouvelle génération d’artistes guidés par l’émotion, la musicalité et la recherche d’authenticité.'),
(26, 'MAMENO', 'Artist', 'Salegy , zouk love', 'src\\assets\\talents\\MAMENO TR.jpg', 'Mameno (Mameno) est un artiste affilié à Davalt Record, évoluant entre le salegy et le zouk love, deux univers musicaux riches en rythme et en émotion.\n\nSon style se construit autour d’un équilibre entre énergie festive et sensibilité romantique. À travers le salegy, il apporte des rythmes rapides et entraînants, ancrés dans la culture musicale malgache, tandis que le zouk love lui permet d’explorer des atmosphères plus douces, émotionnelles et mélodiques.\n\nAu sein de Davalt Record, Mameno apporte une identité musicale chaleureuse et dansante, capable de faire vibrer aussi bien les scènes festives que les moments plus intimes. Sa polyvalence lui permet de s’adapter à différentes ambiances tout en gardant sa touche personnelle.\n\nEn pleine évolution artistique, il cherche à affirmer sa signature en fusionnant tradition et modernité. Mameno incarne ainsi une nouvelle génération d’artistes capables de relier les racines musicales aux sons contemporains, avec authenticité et créativité.'),
(27, 'MISTHER GANG', 'Artist', 'Rap , Rnb', 'src\\assets\\talents\\gng.jpg', 'Misther Gang (Misther Gang) est un artiste affilié à Davalt Record, évoluant entre le rap et le R&B, avec un style qui mélange énergie urbaine et sensibilité musicale.\n\nSon univers artistique se construit autour de deux forces : le rap, qui lui permet d’exprimer des messages directs et puissants, et le R&B, qui apporte une dimension plus mélodique et émotionnelle à ses créations. Cette fusion lui donne une identité sonore moderne et adaptable.\n\nAu sein de Davalt Record, Misther Gang contribue à la diversité musicale du collectif en apportant des morceaux à la fois rythmés et chargés d’émotion. Il se distingue par sa capacité à varier les ambiances tout en gardant une signature reconnaissable.\n\nEn pleine progression artistique, il cherche à affiner son style et à imposer sa présence dans l’univers urbain. Misther Gang incarne ainsi une nouvelle génération d’artistes rap R&B, portés par l’ambition, la créativité et l’expression personnelle.'),
(28, 'NASOLO', 'Artist', 'Slam ', 'src\\assets\\talents\\nsl.jpg', 'Nasolo TR (Nasolo TR) est un artiste affilié à Davalt Record, évoluant dans l’univers du slam, où les mots, le rythme et l’expression orale occupent une place centrale.\n\nSon style artistique repose sur la puissance du texte et la profondeur des messages qu’il transmet. À travers le slam, il transforme ses pensées, ses observations et ses émotions en performances vocales impactantes, où chaque mot a du poids et du sens.\n\nAu sein de Davalt Record, Nasolo TR apporte une dimension poétique et introspective au collectif. Il enrichit l’univers du label par une approche centrée sur l’écriture, la réflexion et l’authenticité.\n\nEn développement constant, il cherche à affiner sa plume et sa présence scénique afin de toucher son public de manière directe et sincère. Nasolo TR incarne ainsi une nouvelle génération d’artistes slam, guidés par la parole, l’émotion et la vérité du message.'),
(29, 'PARISH', 'Artist', 'Afro kompa , zouk love', 'src\\assets\\talents\\pr.jpg', 'Parish TR (Parish TR) est un artiste affilié à Davalt Record, évoluant entre l’afro kompa et le zouk love, avec un style axé sur la mélodie, la danse et l’émotion.\n\nSon univers musical mélange les rythmes chauds et entraînants de l’afro kompa avec la douceur et la sensibilité du zouk love. Cette fusion lui permet de créer des morceaux à la fois dansants et chargés d’émotion, capables de toucher différents publics.\n\nAu sein de Davalt Record, Parish TR apporte une touche romantique et rythmée, enrichissant le collectif par sa capacité à créer des ambiances chaleureuses et accessibles. Son style se distingue par des sonorités fluides et une forte présence émotionnelle.\n\nEn pleine évolution artistique, il cherche à développer une identité musicale reconnaissable et authentique. Parish TR incarne ainsi une nouvelle génération d’artistes afro caribéens modernes, guidés par la passion, le rythme et l’expression des sentiments.'),
(30, 'QUEEN', 'Artiste', 'Afrobeat , Afropop', 'src\\assets\\talents\\queen.jpg', 'Queen TR (Queen TR) est une artiste affiliée à Davalt Record, évoluant dans l’univers de l’afrobeat, où énergie, rythme et expression artistique se rencontrent.\n\nSon style se caractérise par des sonorités afro modernes, mêlant percussions entraînantes et mélodies dynamiques. À travers sa musique, elle transmet une vibe à la fois puissante et vibrante, pensée pour faire bouger et connecter le public.\n\nAu sein de Davalt Record, Queen TR apporte une présence féminine forte et une identité musicale solaire, enrichissant le collectif par sa créativité et son sens du rythme. Elle contribue à donner une couleur vivante et moderne aux productions du label.\n\nEn pleine construction artistique, elle développe sa signature et affine son univers musical. Queen TR incarne ainsi une nouvelle génération d’artistes afrobeat, portés par la passion, l’énergie et la volonté de s’imposer dans l’univers musical.'),
(31, 'STEPHANIE', 'Artiste', 'Slow , musique tropicale soft et variété', 'src\\assets\\talents\\st.jpg', 'Stéphanie (Stéphanie) est une artiste affiliée à Davalt Record, évoluant dans un univers musical doux et raffiné, entre slow, musique tropicale soft et variété.\n\nSon style se distingue par une approche apaisante et émotionnelle de la musique, où les mélodies lentes et chaleureuses prennent une place centrale. Elle explore des ambiances sensibles, souvent romantiques, portées par une voix et une interprétation pleine de finesse.\n\nAu sein de Davalt Record, Stéphanie apporte une touche de douceur et d’élégance, enrichissant le collectif par des sonorités calmes et harmonieuses. Elle joue un rôle essentiel dans la diversité musicale du label, en équilibrant les énergies plus urbaines et dynamiques.\n\nEn pleine évolution artistique, elle construit progressivement son identité musicale, guidée par l’émotion, la sensibilité et la recherche d’authenticité. Stéphanie incarne ainsi une nouvelle génération d’artistes féminines, capables de transmettre des émotions profondes à travers des univers sonores doux et intemporels.'),
(32, 'T-KING', 'Artist', 'Tsapiky , musique tropicale soft et variété', 'src\\assets\\talents\\tk.jpg', 'T-King TR (T-King TR) est un artiste affilié à Davalt Record, évoluant entre le tsapiky, la musique tropicale soft et la variété.\n\nSon univers musical s’appuie sur des rythmes traditionnels et festifs, notamment le tsapiky, qu’il modernise en y intégrant des touches plus douces et accessibles. Il crée ainsi un équilibre entre énergie culturelle et sonorités apaisées, adaptées à différents publics.\n\nAu sein de Davalt Record, T-King TR apporte une identité musicale ancrée dans les traditions tout en restant ouverte à la modernité. Il contribue à la richesse du collectif par sa capacité à mélanger héritage musical et approche contemporaine.\n\nEn pleine évolution artistique, il développe sa signature en explorant différentes nuances musicales, entre fête, émotion et douceur. T-King TR incarne ainsi une nouvelle génération d’artistes polyvalents, portés par la culture, la créativité et l’envie de faire évoluer les sonorités traditionnelles.'),
(33, 'TANJONA RANDRIANARIVELO', 'Artist', 'Pop moderne , Afro , Ba-gasy', 'src\\assets\\talents\\tnjr.jpg', 'Tanjona Ranrianarivelo TR (Tanjona Ranrianarivelo TR) est un artiste affilié à Davalt Record, évoluant entre la pop moderne, l’afro et le ba-gasy.\n\nSon style musical se distingue par une fusion entre sonorités contemporaines et influences traditionnelles malgaches. Il construit des morceaux accessibles et dynamiques, où la modernité de la pop rencontre la richesse culturelle du ba-gasy et l’énergie de l’afro.\n\nAu sein de Davalt Record, Tanjona Ranrianarivelo TR apporte une identité musicale polyvalente et ouverte, enrichissant le collectif par sa capacité à mélanger les styles et les émotions. Il contribue à créer des ponts entre tradition et modernité.\n\nEn pleine évolution artistique, il développe progressivement sa signature sonore et son identité musicale. Tanjona Ranrianarivelo TR incarne ainsi une nouvelle génération d’artistes hybrides, guidés par la créativité, la culture et l’innovation musicale.'),
(34, 'VAKO GASY', 'Artists', 'Vako-drazana moderne', 'src\\assets\\talents\\vgfn.jpg', 'Vako Gasy (Vako Gasy) est un groupe artistique évoluant dans l’univers du vakodrazana, mettant en avant les traditions musicales et culturelles malgaches à travers des performances vivantes et authentiques.\n\nLeur style repose sur la valorisation des rythmes traditionnels, des chants ancestraux et des expressions culturelles locales, revisitées avec une énergie scénique moderne. À travers leurs prestations, ils transmettent une identité forte, ancrée dans le patrimoine et la fierté culturelle.\n\nSur scène, Vako Gasy se distingue par des performances collectives dynamiques, où la musique, la danse et la tradition s’entrelacent pour créer une expérience immersive. Leur objectif est de faire vivre et préserver l’héritage du vakodrazana tout en le rendant accessible aux nouvelles générations.\n\nLe groupe incarne ainsi une passerelle entre passé et présent, en maintenant vivante la richesse culturelle malgache à travers l’art et la performance.'),
(35, 'Rmc Toussaint', 'Manager', 'Manager', 'src\\assets\\talents\\mng.jpg', 'RMC Toussaint (RMC Toussaint) est le manager affilié à Davalt Record, responsable de la coordination, de l’organisation et du suivi des artistes au sein du label.\n\nDoté d’un esprit stratégique et d’une vision globale, il joue un rôle clé dans le développement des talents et la structuration des projets musicaux. Son travail consiste à assurer la liaison entre les artistes, la production et la direction, tout en veillant à la bonne exécution des projets.\n\nAu sein de Davalt Record, RMC Toussaint se distingue par sa capacité à gérer plusieurs profils artistiques, à organiser les activités du collectif et à accompagner la progression des talents. Il contribue à transformer les idées artistiques en projets concrets et structurés.\n\nSon rôle est essentiel dans l’équilibre du label, car il assure la stabilité, la discipline et la cohérence des actions. RMC Toussaint incarne ainsi la dimension organisationnelle et stratégique de Davalt Record, en soutenant activement la vision globale du mouvement.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `adn`
--
ALTER TABLE `adn`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_blog_talent` (`talent_id`);

--
-- Index pour la table `calendrier`
--
ALTER TABLE `calendrier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_talent_date` (`talent_id`,`date`),
  ADD KEY `idx_date` (`date`),
  ADD KEY `idx_status` (`status`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservation_artist`
--
ALTER TABLE `reservation_artist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_reservation_artist_talent` (`talent_id`);

--
-- Index pour la table `reservation_autre`
--
ALTER TABLE `reservation_autre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_reservation_autre_talent` (`talent_id`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `slogan`
--
ALTER TABLE `slogan`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `talent`
--
ALTER TABLE `talent`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `adn`
--
ALTER TABLE `adn`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `calendrier`
--
ALTER TABLE `calendrier`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `partner`
--
ALTER TABLE `partner`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `reservation_artist`
--
ALTER TABLE `reservation_artist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `reservation_autre`
--
ALTER TABLE `reservation_autre`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `service`
--
ALTER TABLE `service`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `slogan`
--
ALTER TABLE `slogan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `talent`
--
ALTER TABLE `talent`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `fk_blog_talent` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `calendrier`
--
ALTER TABLE `calendrier`
  ADD CONSTRAINT `calendrier_ibfk_1` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `reservation_artist`
--
ALTER TABLE `reservation_artist`
  ADD CONSTRAINT `fk_reservation_artist_talent` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reservation_autre`
--
ALTER TABLE `reservation_autre`
  ADD CONSTRAINT `fk_reservation_autre_talent` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
