-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 10, 2019 at 12:13 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_vue_js_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Stacey Brown', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(2, 'Prof. Craig Blick II', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(3, 'Austin Sporer', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(4, 'Grover Cremin DVM', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(5, 'Odie Kuhlman', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(6, 'Dr. Hillard Spinka', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(7, 'Mrs. Ashley Champlin', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(8, 'Mrs. Mandy Krajcik Jr.', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(9, 'Ashleigh Christiansen', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(10, 'Miss Eunice Schneider', '2019-09-09 13:50:42', '2019-09-09 13:50:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_09_09_191026_create_categories_table', 2),
(4, '2019_09_09_191228_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `comment_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `long_description` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `comment_id`, `title`, `short_description`, `long_description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 3, 'Martine Runolfsson', 'Id nihil voluptatem explicabo quam tempore.', 'Quidem facilis dolore voluptas dolorum dolorem. Omnis dolores dolorem at architecto optio.', 'https://lorempixel.com/640/480/?30758', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(2, 10, 5, 6, 'Celestino Toy III', 'Asperiores rerum sunt quo modi amet omnis.', 'Facilis optio voluptates eum laborum ducimus iste. Nihil sint accusantium commodi earum est voluptatum ipsam nulla. Incidunt esse nobis temporibus perferendis aut id fuga.', 'https://lorempixel.com/640/480/?99512', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(3, 8, 7, 6, 'Prof. Percy Kiehn II', 'Porro non et reiciendis doloremque.', 'Magni aliquam autem non numquam voluptatem sit et. Corporis maiores rem vitae doloremque et. In consequatur nisi quaerat totam unde aut praesentium rem. Ea modi quaerat autem laudantium laborum voluptatibus nemo.', 'https://lorempixel.com/640/480/?20223', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(4, 8, 6, 4, 'Stan Luettgen', 'Quia deleniti totam nihil neque voluptatem quo quo.', 'Dicta aspernatur quo officia ut id ab. Tenetur quos excepturi facilis molestias corporis. Animi excepturi reprehenderit nemo distinctio veniam ut. Voluptatem dolorem nihil sit vitae numquam neque.', 'https://lorempixel.com/640/480/?18767', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(5, 6, 1, 8, 'Karson Rohan', 'Aut aut id atque laudantium.', 'Ut omnis hic voluptas et. Et voluptatum vero omnis aut laudantium. Tempore sit eveniet maxime neque illum nihil.', 'https://lorempixel.com/640/480/?60503', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(6, 4, 3, 6, 'Prof. Thurman Heidenreich', 'Autem quis ipsum et distinctio optio accusamus voluptatum.', 'Dolorem ut eum sed quis dicta nemo. Ab non et debitis temporibus. Harum inventore rerum dolores nostrum deleniti. Deleniti iure fugiat quos aliquid at.', 'https://lorempixel.com/640/480/?61865', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(7, 7, 9, 9, 'Frederik Kris', 'At sit possimus minus non aut vel dolorem.', 'Exercitationem dolorem dolor eum qui fuga eos. Rerum sapiente dolore voluptatibus. Officia deleniti maiores inventore nulla hic. Minima accusamus dolore quaerat accusantium molestiae at quidem qui.', 'https://lorempixel.com/640/480/?80649', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(8, 4, 6, 8, 'Dr. Aric Rutherford', 'Sunt accusantium exercitationem nobis rem sunt iste assumenda magnam.', 'Fuga consequatur et quis tempora. In maiores ipsa sed porro vero magni recusandae. Aliquam rem reiciendis maiores harum at aperiam consequatur.', 'https://lorempixel.com/640/480/?34271', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(9, 2, 1, 6, 'Dereck Durgan', 'Tempore non officia et eius perspiciatis dicta.', 'Labore veniam quam qui cupiditate amet quas. Error quis officiis aut. Hic voluptas ipsum nulla aperiam consequatur ut. Et et itaque tempore sequi.', 'https://lorempixel.com/640/480/?54847', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(10, 2, 7, 10, 'Guiseppe Trantow', 'Reiciendis tempore fugiat sunt voluptatem illum totam.', 'Quia est occaecati vero atque ea consectetur consequuntur eos. Consectetur ullam id et consequatur libero deserunt. Assumenda iure at mollitia architecto ea voluptatibus quia. Architecto nihil eum occaecati occaecati accusantium eum ratione sit.', 'https://lorempixel.com/640/480/?10640', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(11, 1, 4, 10, 'Miss Jazmin Welch', 'Natus aliquid magnam qui illo dolore sit quia.', 'Odit architecto rerum voluptatem iusto sit unde. Quis nesciunt et quisquam quisquam.', 'https://lorempixel.com/640/480/?39380', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(12, 5, 9, 8, 'Winston Daniel', 'Placeat ipsa excepturi voluptatem quisquam facere earum praesentium.', 'Consequatur provident possimus temporibus eius laborum architecto ratione. Mollitia est maxime modi veritatis. Atque dicta aut qui animi asperiores. Vero nulla ea laudantium tenetur.', 'https://lorempixel.com/640/480/?75707', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(13, 5, 1, 6, 'Leila Mante', 'Neque fugit eaque ut vero voluptatem.', 'Non aut veniam minus optio aut omnis ut. Voluptatem facilis omnis incidunt assumenda. Et molestiae quo repellendus.', 'https://lorempixel.com/640/480/?25476', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(14, 9, 2, 1, 'Hardy Abernathy', 'Accusamus minus corporis earum et voluptatem velit.', 'Quia illo rerum sit ipsum dolores eius. Rerum mollitia non saepe facilis. Ut vero hic aut ea. Provident asperiores quidem enim tempora harum omnis.', 'https://lorempixel.com/640/480/?38359', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(15, 10, 3, 2, 'Geoffrey Ratke', 'Ratione fuga fugit laudantium quis natus aliquid.', 'Cupiditate aut quia sequi error consequuntur non hic. Voluptas tempora quibusdam consequatur et architecto. Laudantium quidem deserunt optio omnis.', 'https://lorempixel.com/640/480/?16697', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(16, 4, 10, 5, 'Prof. Chester Hickle PhD', 'Rerum sed distinctio ut iusto excepturi laboriosam tenetur accusantium.', 'Commodi necessitatibus neque tempore odit voluptatem nobis voluptatem eveniet. Totam fugit sed dolorem et ut et. Porro natus vero tempore deserunt delectus provident. Veniam omnis sint excepturi praesentium. Occaecati velit qui quod consequatur.', 'https://lorempixel.com/640/480/?83931', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(17, 4, 1, 8, 'Alanis Legros III', 'Molestiae alias cum qui odit.', 'Nisi id molestiae voluptas cum debitis inventore dolore. Omnis dolore asperiores cum porro id. Velit est soluta minima nulla magni. Numquam quasi esse magnam commodi architecto voluptatum dolore.', 'https://lorempixel.com/640/480/?14316', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(18, 9, 6, 5, 'Ransom Blanda', 'Temporibus ab ut eveniet sed.', 'Ea itaque fuga aspernatur vel. Voluptate dolorem neque nam quasi ut atque. Magnam omnis quibusdam eius occaecati nostrum.', 'https://lorempixel.com/640/480/?21844', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(19, 5, 5, 1, 'Ms. Mina Ryan', 'Impedit enim voluptatibus dolor est ducimus cupiditate soluta.', 'Et consequuntur iste dolorem. Quia sunt dolor unde nisi harum corporis. Molestias optio odio consequatur est eveniet in placeat reiciendis.', 'https://lorempixel.com/640/480/?74834', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(20, 5, 7, 1, 'Verdie Luettgen', 'Sed quidem doloribus dolores nihil.', 'Nostrum voluptatum doloribus laborum suscipit. Libero optio et nihil dolor quasi sequi et. Suscipit consequatur natus ex.', 'https://lorempixel.com/640/480/?53399', '2019-09-09 13:50:42', '2019-09-09 13:50:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Meghla zaman', 'meghla@gmail.com', NULL, '$2y$10$6zNbr3HUjpwcMwGN8rVErOboKx8ZVojGLrQhNXaGvxwF.ghvv7gxe', NULL, '2019-09-07 12:07:52', '2019-09-07 12:07:52'),
(2, 'Dina Rice V', 'golden.runte@example.org', '2019-09-09 13:41:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 's7yW3nTl4z', '2019-09-09 13:41:18', '2019-09-09 13:41:18'),
(3, 'Aaron Adams DDS', 'wolff.euna@example.org', '2019-09-09 13:41:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XUnEhyLYcn', '2019-09-09 13:41:18', '2019-09-09 13:41:18'),
(4, 'Kenton Marks', 'mariah42@example.com', '2019-09-09 13:41:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SBHAVd6klP', '2019-09-09 13:41:18', '2019-09-09 13:41:18'),
(5, 'Prof. Jennings Carter IV', 'hmante@example.net', '2019-09-09 13:41:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'f28wePnBye', '2019-09-09 13:41:18', '2019-09-09 13:41:18'),
(6, 'Ms. Eda Labadie DVM', 'gottlieb.maria@example.com', '2019-09-09 13:41:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MklvqDWU43', '2019-09-09 13:41:18', '2019-09-09 13:41:18'),
(7, 'Elinor Rutherford', 'owelch@example.org', '2019-09-09 13:41:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OUWzrxZUd2', '2019-09-09 13:41:18', '2019-09-09 13:41:18'),
(8, 'Clovis Weber', 'auer.estrella@example.net', '2019-09-09 13:41:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qcyxfn4lhf', '2019-09-09 13:41:18', '2019-09-09 13:41:18'),
(9, 'Dr. Jesus Quigley V', 'michaela85@example.net', '2019-09-09 13:41:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ifqwUWR5AX', '2019-09-09 13:41:18', '2019-09-09 13:41:18'),
(10, 'Abagail Gottlieb', 'swaniawski.sylvan@example.com', '2019-09-09 13:41:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NhB4cPqFLa', '2019-09-09 13:41:18', '2019-09-09 13:41:18'),
(11, 'Benedict Goyette', 'stella.hessel@example.net', '2019-09-09 13:41:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xiDy4OOZVj', '2019-09-09 13:41:18', '2019-09-09 13:41:18'),
(12, 'Sabina Feil', 'luisa.christiansen@example.org', '2019-09-09 13:46:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yylfGN7fow', '2019-09-09 13:46:51', '2019-09-09 13:46:51'),
(13, 'Merritt Gutmann', 'wyman.yasmine@example.org', '2019-09-09 13:46:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XqO0j7DYKv', '2019-09-09 13:46:51', '2019-09-09 13:46:51'),
(14, 'Wyatt Larson', 'stoltenberg.krystina@example.org', '2019-09-09 13:46:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TyLXAk70Di', '2019-09-09 13:46:51', '2019-09-09 13:46:51'),
(15, 'Lucienne Nader', 'keara.zboncak@example.net', '2019-09-09 13:46:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zleYJMx6or', '2019-09-09 13:46:51', '2019-09-09 13:46:51'),
(16, 'Dr. Frieda Rogahn', 'edison.conn@example.org', '2019-09-09 13:46:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8J5Cn822nN', '2019-09-09 13:46:51', '2019-09-09 13:46:51'),
(17, 'Amelia Rolfson MD', 'kelly84@example.org', '2019-09-09 13:46:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HrLOkdUxaH', '2019-09-09 13:46:51', '2019-09-09 13:46:51'),
(18, 'Juliana Baumbach', 'awindler@example.com', '2019-09-09 13:46:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IHXJaxRvox', '2019-09-09 13:46:51', '2019-09-09 13:46:51'),
(19, 'Vilma Fay Sr.', 'ethel93@example.net', '2019-09-09 13:46:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZhPRMXUmz8', '2019-09-09 13:46:51', '2019-09-09 13:46:51'),
(20, 'Ismael Stehr I', 'tianna.becker@example.net', '2019-09-09 13:46:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9bxWzZ9rMp', '2019-09-09 13:46:51', '2019-09-09 13:46:51'),
(21, 'Luna Smitham', 'mdietrich@example.net', '2019-09-09 13:46:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PriqimhAK4', '2019-09-09 13:46:51', '2019-09-09 13:46:51'),
(22, 'Prof. Johann Osinski', 'gerhold.dannie@example.org', '2019-09-09 13:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eBOhWZ3zOf', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(23, 'Citlalli Denesik', 'melany.barton@example.org', '2019-09-09 13:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jQenvKkb0O', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(24, 'Judy Pfeffer III', 'tatum70@example.net', '2019-09-09 13:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lJuV6JE8C8', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(25, 'Dr. Wilbert Erdman DDS', 'dorian27@example.com', '2019-09-09 13:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'onX4PQNSjf', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(26, 'Clark Heller', 'dino.grant@example.com', '2019-09-09 13:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IrHZzjKlqt', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(27, 'Ms. Evie Pouros MD', 'paucek.earnestine@example.org', '2019-09-09 13:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gvxuctNAFN', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(28, 'Kristy Crooks V', 'naomie11@example.com', '2019-09-09 13:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0awL4QxZc0', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(29, 'Dr. Pearlie Cremin', 'wmarquardt@example.com', '2019-09-09 13:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'veJOtdiAMu', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(30, 'Dr. Uriel Rutherford', 'xjakubowski@example.com', '2019-09-09 13:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '19ZhnC0Aeg', '2019-09-09 13:50:42', '2019-09-09 13:50:42'),
(31, 'Kyla Keebler', 'ybayer@example.com', '2019-09-09 13:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3CFHJjhO4p', '2019-09-09 13:50:42', '2019-09-09 13:50:42');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
