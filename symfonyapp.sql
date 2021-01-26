-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 26 jan. 2021 à 16:07
-- Version du serveur :  5.7.24
-- Version de PHP : 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `symfonyapp`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `username`, `roles`, `password`, `created_at`) VALUES
(10, 'lulur', '[]', '$argon2id$v=19$m=65536,t=4,p=1$N0F6LkFLTEM2UUovcU5sWQ$+h8DvovHERl8lffDR6sPi+33cYXvxZlclMfEkTeZdAo', NULL),
(15, 'marck', '[]', '$argon2id$v=19$m=65536,t=4,p=1$Tk1MMy9xWWpJdHlGdjNMcg$7FcU0mJ/BihBugiw4hKNHvJMNli/rKsCsosNHKOAiyY', NULL),
(18, 'admin', '[]', '$argon2id$v=19$m=65536,t=4,p=1$NEN5NnZpenI0czg0LnFuMg$L34YfmNf0RlIMHoUuh5gFvpyIHZCo+TwlOuLdUrDAVA', NULL),
(19, 'luluadmin', '[]', '$argon2id$v=19$m=65536,t=4,p=1$bzVjTDV5c2ZoOFZjN0FPdw$xDygaaJE9+Qf47TM0vQvpCPma1lr4TQLvRUs6xRZbdU', NULL),
(20, 'frederic', '[]', '$argon2id$v=19$m=65536,t=4,p=1$WGFXaUtCMzFKNEkwOEh4Ug$z+OuKtXWKXxiRjUPYd1uI4tEZzgVI7OyF2j/70DBcis', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210120140244', '2021-01-20 14:05:53', 1154),
('DoctrineMigrations\\Version20210125134121', '2021-01-25 13:41:33', 780),
('DoctrineMigrations\\Version20210125135948', '2021-01-25 13:59:54', 411),
('DoctrineMigrations\\Version20210125144138', '2021-01-25 14:42:02', 526),
('DoctrineMigrations\\Version20210125150840', '2021-01-25 15:08:49', 465),
('DoctrineMigrations\\Version20210126100414', '2021-01-26 10:04:25', 597),
('DoctrineMigrations\\Version20210126103233', '2021-01-26 10:32:41', 405);

-- --------------------------------------------------------

--
-- Structure de la table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `github` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weblink` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `project`
--

INSERT INTO `project` (`id`, `title`, `description`, `image`, `github`, `weblink`) VALUES
(11, 'Titre de mon projet n° 1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit n° 1 . Eaque quibusdam, harum similique explicabo veniam totam impedit molestiae, quae quis rem nihil officiis delectus! Beatae ducimus laudantium eveniet illo ratione nemo voluptate laboriosam, necessitatibus repellendus excepturi obcaecati corrupti odit, saepe, alias fugiat delectus modi fugit asperiores praesentium doloremque maiores enim dolorum vero. Vel ducimus obcaecati odit assumenda numquam aut cum quas saepe architecto, rem quidem culpa? In voluptate commodi omnis cum ratione ducimus vitae voluptas distinctio quia quod temporibus soluta vero tenetur, saepe, quae consequatur eaque, iste adipisci sit debitis dolores doloribus! Perspiciatis laudantium quasi dolore nesciunt expedita voluptatibus. Dolorem, sunt quisquam? Vel molestiae quasi porro id nihil. Tempora illum sapiente, optio earum aliquam adipisci ea enim assumenda ducimus ipsa dolorum autem libero debitis reprehenderit. Doloremque aut ab facilis tenetur libero obcaecati, repellat eius unde harum quisquam adipisci sint, suscipit rerum velit ipsam repellendus iusto, dolore nostrum cupiditate. Suscipit velit odio culpa molestiae explicabo omnis, unde aperiam vitae rem consequatur repudiandae sunt alias dolor ad laboriosam eveniet accusamus quasi porro deleniti maiores pariatur doloremque ipsum. Vitae blanditiis quisquam, nostrum fuga sequi soluta voluptatem molestias! Natus, nobis ex. Nostrum laudantium doloremque tempora officia ab, cum est voluptate. Nisi esse officiis illo adipisci.', 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Octicons-mark-github.svg/1200px-Octicons-mark-github.svg.png', 'https://dbdzm869oupei.cloudfront.net/img/sticker/preview/2613.png'),
(12, 'Titre de mon projet n° 2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit n° 2 . Eaque quibusdam, harum similique explicabo veniam totam impedit molestiae, quae quis rem nihil officiis delectus! Beatae ducimus laudantium eveniet illo ratione nemo voluptate laboriosam, necessitatibus repellendus excepturi obcaecati corrupti odit, saepe, alias fugiat delectus modi fugit asperiores praesentium doloremque maiores enim dolorum vero. Vel ducimus obcaecati odit assumenda numquam aut cum quas saepe architecto, rem quidem culpa? In voluptate commodi omnis cum ratione ducimus vitae voluptas distinctio quia quod temporibus soluta vero tenetur, saepe, quae consequatur eaque, iste adipisci sit debitis dolores doloribus! Perspiciatis laudantium quasi dolore nesciunt expedita voluptatibus. Dolorem, sunt quisquam? Vel molestiae quasi porro id nihil. Tempora illum sapiente, optio earum aliquam adipisci ea enim assumenda ducimus ipsa dolorum autem libero debitis reprehenderit. Doloremque aut ab facilis tenetur libero obcaecati, repellat eius unde harum quisquam adipisci sint, suscipit rerum velit ipsam repellendus iusto, dolore nostrum cupiditate. Suscipit velit odio culpa molestiae explicabo omnis, unde aperiam vitae rem consequatur repudiandae sunt alias dolor ad laboriosam eveniet accusamus quasi porro deleniti maiores pariatur doloremque ipsum. Vitae blanditiis quisquam, nostrum fuga sequi soluta voluptatem molestias! Natus, nobis ex. Nostrum laudantium doloremque tempora officia ab, cum est voluptate. Nisi esse officiis illo adipisci.', 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Octicons-mark-github.svg/1200px-Octicons-mark-github.svg.png', 'https://dbdzm869oupei.cloudfront.net/img/sticker/preview/2613.png'),
(13, 'Titre de mon projet n° 3', 'Lorem ipsum dolor sit amet consectetur adipisicing elit n° 3 . Eaque quibusdam, harum similique explicabo veniam totam impedit molestiae, quae quis rem nihil officiis delectus! Beatae ducimus laudantium eveniet illo ratione nemo voluptate laboriosam, necessitatibus repellendus excepturi obcaecati corrupti odit, saepe, alias fugiat delectus modi fugit asperiores praesentium doloremque maiores enim dolorum vero. Vel ducimus obcaecati odit assumenda numquam aut cum quas saepe architecto, rem quidem culpa? In voluptate commodi omnis cum ratione ducimus vitae voluptas distinctio quia quod temporibus soluta vero tenetur, saepe, quae consequatur eaque, iste adipisci sit debitis dolores doloribus! Perspiciatis laudantium quasi dolore nesciunt expedita voluptatibus. Dolorem, sunt quisquam? Vel molestiae quasi porro id nihil. Tempora illum sapiente, optio earum aliquam adipisci ea enim assumenda ducimus ipsa dolorum autem libero debitis reprehenderit. Doloremque aut ab facilis tenetur libero obcaecati, repellat eius unde harum quisquam adipisci sint, suscipit rerum velit ipsam repellendus iusto, dolore nostrum cupiditate. Suscipit velit odio culpa molestiae explicabo omnis, unde aperiam vitae rem consequatur repudiandae sunt alias dolor ad laboriosam eveniet accusamus quasi porro deleniti maiores pariatur doloremque ipsum. Vitae blanditiis quisquam, nostrum fuga sequi soluta voluptatem molestias! Natus, nobis ex. Nostrum laudantium doloremque tempora officia ab, cum est voluptate. Nisi esse officiis illo adipisci.', 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Octicons-mark-github.svg/1200px-Octicons-mark-github.svg.png', 'https://dbdzm869oupei.cloudfront.net/img/sticker/preview/2613.png'),
(14, 'Titre de mon projet n° 4', 'Lorem ipsum dolor sit amet consectetur adipisicing elit n° 4 . Eaque quibusdam, harum similique explicabo veniam totam impedit molestiae, quae quis rem nihil officiis delectus! Beatae ducimus laudantium eveniet illo ratione nemo voluptate laboriosam, necessitatibus repellendus excepturi obcaecati corrupti odit, saepe, alias fugiat delectus modi fugit asperiores praesentium doloremque maiores enim dolorum vero. Vel ducimus obcaecati odit assumenda numquam aut cum quas saepe architecto, rem quidem culpa? In voluptate commodi omnis cum ratione ducimus vitae voluptas distinctio quia quod temporibus soluta vero tenetur, saepe, quae consequatur eaque, iste adipisci sit debitis dolores doloribus! Perspiciatis laudantium quasi dolore nesciunt expedita voluptatibus. Dolorem, sunt quisquam? Vel molestiae quasi porro id nihil. Tempora illum sapiente, optio earum aliquam adipisci ea enim assumenda ducimus ipsa dolorum autem libero debitis reprehenderit. Doloremque aut ab facilis tenetur libero obcaecati, repellat eius unde harum quisquam adipisci sint, suscipit rerum velit ipsam repellendus iusto, dolore nostrum cupiditate. Suscipit velit odio culpa molestiae explicabo omnis, unde aperiam vitae rem consequatur repudiandae sunt alias dolor ad laboriosam eveniet accusamus quasi porro deleniti maiores pariatur doloremque ipsum. Vitae blanditiis quisquam, nostrum fuga sequi soluta voluptatem molestias! Natus, nobis ex. Nostrum laudantium doloremque tempora officia ab, cum est voluptate. Nisi esse officiis illo adipisci.', 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Octicons-mark-github.svg/1200px-Octicons-mark-github.svg.png', 'https://dbdzm869oupei.cloudfront.net/img/sticker/preview/2613.png'),
(15, 'Titre de mon projet n° 5', 'Lorem ipsum dolor sit amet consectetur adipisicing elit n° 5 . Eaque quibusdam, harum similique explicabo veniam totam impedit molestiae, quae quis rem nihil officiis delectus! Beatae ducimus laudantium eveniet illo ratione nemo voluptate laboriosam, necessitatibus repellendus excepturi obcaecati corrupti odit, saepe, alias fugiat delectus modi fugit asperiores praesentium doloremque maiores enim dolorum vero. Vel ducimus obcaecati odit assumenda numquam aut cum quas saepe architecto, rem quidem culpa? In voluptate commodi omnis cum ratione ducimus vitae voluptas distinctio quia quod temporibus soluta vero tenetur, saepe, quae consequatur eaque, iste adipisci sit debitis dolores doloribus! Perspiciatis laudantium quasi dolore nesciunt expedita voluptatibus. Dolorem, sunt quisquam? Vel molestiae quasi porro id nihil. Tempora illum sapiente, optio earum aliquam adipisci ea enim assumenda ducimus ipsa dolorum autem libero debitis reprehenderit. Doloremque aut ab facilis tenetur libero obcaecati, repellat eius unde harum quisquam adipisci sint, suscipit rerum velit ipsam repellendus iusto, dolore nostrum cupiditate. Suscipit velit odio culpa molestiae explicabo omnis, unde aperiam vitae rem consequatur repudiandae sunt alias dolor ad laboriosam eveniet accusamus quasi porro deleniti maiores pariatur doloremque ipsum. Vitae blanditiis quisquam, nostrum fuga sequi soluta voluptatem molestias! Natus, nobis ex. Nostrum laudantium doloremque tempora officia ab, cum est voluptate. Nisi esse officiis illo adipisci.', 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Octicons-mark-github.svg/1200px-Octicons-mark-github.svg.png', 'https://dbdzm869oupei.cloudfront.net/img/sticker/preview/2613.png'),
(16, 'Titre de mon projet n° 6', 'Lorem ipsum dolor sit amet consectetur adipisicing elit n° 6 . Eaque quibusdam, harum similique explicabo veniam totam impedit molestiae, quae quis rem nihil officiis delectus! Beatae ducimus laudantium eveniet illo ratione nemo voluptate laboriosam, necessitatibus repellendus excepturi obcaecati corrupti odit, saepe, alias fugiat delectus modi fugit asperiores praesentium doloremque maiores enim dolorum vero. Vel ducimus obcaecati odit assumenda numquam aut cum quas saepe architecto, rem quidem culpa? In voluptate commodi omnis cum ratione ducimus vitae voluptas distinctio quia quod temporibus soluta vero tenetur, saepe, quae consequatur eaque, iste adipisci sit debitis dolores doloribus! Perspiciatis laudantium quasi dolore nesciunt expedita voluptatibus. Dolorem, sunt quisquam? Vel molestiae quasi porro id nihil. Tempora illum sapiente, optio earum aliquam adipisci ea enim assumenda ducimus ipsa dolorum autem libero debitis reprehenderit. Doloremque aut ab facilis tenetur libero obcaecati, repellat eius unde harum quisquam adipisci sint, suscipit rerum velit ipsam repellendus iusto, dolore nostrum cupiditate. Suscipit velit odio culpa molestiae explicabo omnis, unde aperiam vitae rem consequatur repudiandae sunt alias dolor ad laboriosam eveniet accusamus quasi porro deleniti maiores pariatur doloremque ipsum. Vitae blanditiis quisquam, nostrum fuga sequi soluta voluptatem molestias! Natus, nobis ex. Nostrum laudantium doloremque tempora officia ab, cum est voluptate. Nisi esse officiis illo adipisci.', 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Octicons-mark-github.svg/1200px-Octicons-mark-github.svg.png', 'https://dbdzm869oupei.cloudfront.net/img/sticker/preview/2613.png'),
(17, 'Titre de mon projet n° 7', 'Lorem ipsum dolor sit amet consectetur adipisicing elit n° 7 . Eaque quibusdam, harum similique explicabo veniam totam impedit molestiae, quae quis rem nihil officiis delectus! Beatae ducimus laudantium eveniet illo ratione nemo voluptate laboriosam, necessitatibus repellendus excepturi obcaecati corrupti odit, saepe, alias fugiat delectus modi fugit asperiores praesentium doloremque maiores enim dolorum vero. Vel ducimus obcaecati odit assumenda numquam aut cum quas saepe architecto, rem quidem culpa? In voluptate commodi omnis cum ratione ducimus vitae voluptas distinctio quia quod temporibus soluta vero tenetur, saepe, quae consequatur eaque, iste adipisci sit debitis dolores doloribus! Perspiciatis laudantium quasi dolore nesciunt expedita voluptatibus. Dolorem, sunt quisquam? Vel molestiae quasi porro id nihil. Tempora illum sapiente, optio earum aliquam adipisci ea enim assumenda ducimus ipsa dolorum autem libero debitis reprehenderit. Doloremque aut ab facilis tenetur libero obcaecati, repellat eius unde harum quisquam adipisci sint, suscipit rerum velit ipsam repellendus iusto, dolore nostrum cupiditate. Suscipit velit odio culpa molestiae explicabo omnis, unde aperiam vitae rem consequatur repudiandae sunt alias dolor ad laboriosam eveniet accusamus quasi porro deleniti maiores pariatur doloremque ipsum. Vitae blanditiis quisquam, nostrum fuga sequi soluta voluptatem molestias! Natus, nobis ex. Nostrum laudantium doloremque tempora officia ab, cum est voluptate. Nisi esse officiis illo adipisci.', 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Octicons-mark-github.svg/1200px-Octicons-mark-github.svg.png', 'https://dbdzm869oupei.cloudfront.net/img/sticker/preview/2613.png'),
(18, 'Titre de mon projet n° 8', 'Lorem ipsum dolor sit amet consectetur adipisicing elit n° 8 . Eaque quibusdam, harum similique explicabo veniam totam impedit molestiae, quae quis rem nihil officiis delectus! Beatae ducimus laudantium eveniet illo ratione nemo voluptate laboriosam, necessitatibus repellendus excepturi obcaecati corrupti odit, saepe, alias fugiat delectus modi fugit asperiores praesentium doloremque maiores enim dolorum vero. Vel ducimus obcaecati odit assumenda numquam aut cum quas saepe architecto, rem quidem culpa? In voluptate commodi omnis cum ratione ducimus vitae voluptas distinctio quia quod temporibus soluta vero tenetur, saepe, quae consequatur eaque, iste adipisci sit debitis dolores doloribus! Perspiciatis laudantium quasi dolore nesciunt expedita voluptatibus. Dolorem, sunt quisquam? Vel molestiae quasi porro id nihil. Tempora illum sapiente, optio earum aliquam adipisci ea enim assumenda ducimus ipsa dolorum autem libero debitis reprehenderit. Doloremque aut ab facilis tenetur libero obcaecati, repellat eius unde harum quisquam adipisci sint, suscipit rerum velit ipsam repellendus iusto, dolore nostrum cupiditate. Suscipit velit odio culpa molestiae explicabo omnis, unde aperiam vitae rem consequatur repudiandae sunt alias dolor ad laboriosam eveniet accusamus quasi porro deleniti maiores pariatur doloremque ipsum. Vitae blanditiis quisquam, nostrum fuga sequi soluta voluptatem molestias! Natus, nobis ex. Nostrum laudantium doloremque tempora officia ab, cum est voluptate. Nisi esse officiis illo adipisci.', 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Octicons-mark-github.svg/1200px-Octicons-mark-github.svg.png', 'https://dbdzm869oupei.cloudfront.net/img/sticker/preview/2613.png'),
(19, 'Titre de mon projet n° 9', 'Lorem ipsum dolor sit amet consectetur adipisicing elit n° 9 . Eaque quibusdam, harum similique explicabo veniam totam impedit molestiae, quae quis rem nihil officiis delectus! Beatae ducimus laudantium eveniet illo ratione nemo voluptate laboriosam, necessitatibus repellendus excepturi obcaecati corrupti odit, saepe, alias fugiat delectus modi fugit asperiores praesentium doloremque maiores enim dolorum vero. Vel ducimus obcaecati odit assumenda numquam aut cum quas saepe architecto, rem quidem culpa? In voluptate commodi omnis cum ratione ducimus vitae voluptas distinctio quia quod temporibus soluta vero tenetur, saepe, quae consequatur eaque, iste adipisci sit debitis dolores doloribus! Perspiciatis laudantium quasi dolore nesciunt expedita voluptatibus. Dolorem, sunt quisquam? Vel molestiae quasi porro id nihil. Tempora illum sapiente, optio earum aliquam adipisci ea enim assumenda ducimus ipsa dolorum autem libero debitis reprehenderit. Doloremque aut ab facilis tenetur libero obcaecati, repellat eius unde harum quisquam adipisci sint, suscipit rerum velit ipsam repellendus iusto, dolore nostrum cupiditate. Suscipit velit odio culpa molestiae explicabo omnis, unde aperiam vitae rem consequatur repudiandae sunt alias dolor ad laboriosam eveniet accusamus quasi porro deleniti maiores pariatur doloremque ipsum. Vitae blanditiis quisquam, nostrum fuga sequi soluta voluptatem molestias! Natus, nobis ex. Nostrum laudantium doloremque tempora officia ab, cum est voluptate. Nisi esse officiis illo adipisci.', 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Octicons-mark-github.svg/1200px-Octicons-mark-github.svg.png', 'https://dbdzm869oupei.cloudfront.net/img/sticker/preview/2613.png'),
(20, 'Titre de mon projet n° 10', 'Lorem ipsum dolor sit amet consectetur adipisicing elit n° 10 . Eaque quibusdam, harum similique explicabo veniam totam impedit molestiae, quae quis rem nihil officiis delectus! Beatae ducimus laudantium eveniet illo ratione nemo voluptate laboriosam, necessitatibus repellendus excepturi obcaecati corrupti odit, saepe, alias fugiat delectus modi fugit asperiores praesentium doloremque maiores enim dolorum vero. Vel ducimus obcaecati odit assumenda numquam aut cum quas saepe architecto, rem quidem culpa? In voluptate commodi omnis cum ratione ducimus vitae voluptas distinctio quia quod temporibus soluta vero tenetur, saepe, quae consequatur eaque, iste adipisci sit debitis dolores doloribus! Perspiciatis laudantium quasi dolore nesciunt expedita voluptatibus. Dolorem, sunt quisquam? Vel molestiae quasi porro id nihil. Tempora illum sapiente, optio earum aliquam adipisci ea enim assumenda ducimus ipsa dolorum autem libero debitis reprehenderit. Doloremque aut ab facilis tenetur libero obcaecati, repellat eius unde harum quisquam adipisci sint, suscipit rerum velit ipsam repellendus iusto, dolore nostrum cupiditate. Suscipit velit odio culpa molestiae explicabo omnis, unde aperiam vitae rem consequatur repudiandae sunt alias dolor ad laboriosam eveniet accusamus quasi porro deleniti maiores pariatur doloremque ipsum. Vitae blanditiis quisquam, nostrum fuga sequi soluta voluptatem molestias! Natus, nobis ex. Nostrum laudantium doloremque tempora officia ab, cum est voluptate. Nisi esse officiis illo adipisci.', 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Octicons-mark-github.svg/1200px-Octicons-mark-github.svg.png', 'https://dbdzm869oupei.cloudfront.net/img/sticker/preview/2613.png'),
(21, 'ezarezr', 'ezreazrz', 'zerzear', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Octicons-mark-github.svg/1200px-Octicons-mark-github.svg.png', 'https://dbdzm869oupei.cloudfront.net/img/sticker/preview/2613.png'),
(22, 'dfdsfdf', 'lorem iisjnsjsnfsnsd jqsnkln,QSLDKQ SCQLKS CKC LSJDKSD.DLSK?C', 'dsfsdf', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Octicons-mark-github.svg/1200px-Octicons-mark-github.svg.png', 'https://dbdzm869oupei.cloudfront.net/img/sticker/preview/2613.png'),
(23, 'Yoda n\'a plus en force en toi', 'Un projet nul mais pas temps que ça', 'https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Octicons-mark-github.svg/1200px-Octicons-mark-github.svg.png', 'https://dbdzm869oupei.cloudfront.net/img/sticker/preview/2613.png'),
(24, 'je ne sais pas', 'Un joli projet', 'https://www.publicdomainpictures.net/pictures/320000/nahled/background-image.png', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Octicons-mark-github.svg/1200px-Octicons-mark-github.svg.png', 'https://dbdzm869oupei.cloudfront.net/img/sticker/preview/2613.png'),
(25, 'tests', 'test de dslsdkmdm', 'https://www.lamodeenimages.com/sites/default/files-lmi/styles/1365x768/public/images/article/homepage/full/miss-dior-exposition-love-nroses-shanghai-2019-la-mode-en-images-cover2.jpg?itok=iDaxTcAu', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Octicons-mark-github.svg/1200px-Octicons-mark-github.svg.png', 'https://dbdzm869oupei.cloudfront.net/img/sticker/preview/2613.png');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_880E0D76F85E0677` (`username`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
