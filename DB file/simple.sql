-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table simple_portfolio.contents
CREATE TABLE IF NOT EXISTS `contents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `type` enum('page','blog') NOT NULL,
  `content` text NOT NULL,
  `status` enum('published','draft') NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table simple_portfolio.contents: ~7 rows (approximately)
REPLACE INTO `contents` (`id`, `title`, `type`, `content`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'About', 'page', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'published', '2024-08-25 11:14:44', '2024-08-26 10:55:23'),
	(2, 'Contact', 'page', 'House# X60, Road# 7/3, Block# A, Mohakhali, Dhaka.', 'published', '2024-08-26 01:28:44', '2024-08-26 11:26:06'),
	(4, 'Blog 1', 'blog', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec maximus mauris a nisi lacinia venenatis. Phasellus rutrum sodales turpis. Duis eget velit id nulla maximus porta. Donec id dolor sit amet ipsum luctus vulputate. Sed luctus nisl lacus, eu gravida sapien finibus eu. Etiam molestie facilisis erat, vel iaculis velit posuere imperdiet. Vivamus bibendum nisi sit amet diam vehicula vestibulum. Mauris at velit nunc. Integer quis tincidunt purus. Sed eu orci eget leo porta dictum. Fusce tincidunt sem ut ultrices maximus. Praesent nec condimentum metus. Nunc ultricies efficitur nibh at tincidunt. Etiam tincidunt eros eu fringilla vulputate.\r\n\r\nVivamus ligula ipsum, posuere efficitur elementum eget, auctor eu est. Nulla tincidunt sodales sapien, et egestas orci auctor et. Praesent consectetur venenatis elementum. Pellentesque ac metus lorem. Donec tincidunt lobortis lorem, a sollicitudin tortor imperdiet quis. Cras sit amet rutrum urna. Integer luctus quam at nibh ullamcorper, at semper elit ullamcorper. Nullam ut volutpat leo.\r\n\r\nFusce tincidunt eros tortor, a porttitor nunc facilisis a. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec tortor neque. Etiam vel dignissim justo. Vivamus efficitur auctor ante. Ut blandit nisi at metus facilisis, non aliquam dolor euismod. Sed pharetra posuere ex, ac laoreet quam rutrum sed. Integer lobortis leo eu purus finibus, id sagittis est ornare. Etiam dapibus augue a odio eleifend tincidunt. Etiam eu ipsum non mi pellentesque posuere faucibus nec lorem. Donec in lacus vitae est ultrices accumsan. Etiam tincidunt, felis quis ultricies sodales, lacus sapien dignissim mi, ac ultricies risus nisl viverra felis. Praesent dapibus tellus sit amet lectus interdum vulputate. Pellentesque sit amet augue venenatis, rhoncus ex eget, cursus tortor. Praesent fringilla efficitur mauris condimentum interdum.', 'published', '2024-08-26 01:41:27', '2024-08-26 10:46:51'),
	(5, 'Blog 2', 'blog', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec maximus mauris a nisi lacinia venenatis. Phasellus rutrum sodales turpis. Duis eget velit id nulla maximus porta. Donec id dolor sit amet ipsum luctus vulputate. Sed luctus nisl lacus, eu gravida sapien finibus eu. Etiam molestie facilisis erat, vel iaculis velit posuere imperdiet. Vivamus bibendum nisi sit amet diam vehicula vestibulum. Mauris at velit nunc. Integer quis tincidunt purus. Sed eu orci eget leo porta dictum. Fusce tincidunt sem ut ultrices maximus. Praesent nec condimentum metus. Nunc ultricies efficitur nibh at tincidunt. Etiam tincidunt eros eu fringilla vulputate.\r\n\r\nVivamus ligula ipsum, posuere efficitur elementum eget, auctor eu est. Nulla tincidunt sodales sapien, et egestas orci auctor et. Praesent consectetur venenatis elementum. Pellentesque ac metus lorem. Donec tincidunt lobortis lorem, a sollicitudin tortor imperdiet quis. Cras sit amet rutrum urna. Integer luctus quam at nibh ullamcorper, at semper elit ullamcorper. Nullam ut volutpat leo.\r\n\r\nFusce tincidunt eros tortor, a porttitor nunc facilisis a. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam nec tortor neque. Etiam vel dignissim justo. Vivamus efficitur auctor ante. Ut blandit nisi at metus facilisis, non aliquam dolor euismod. Sed pharetra posuere ex, ac laoreet quam rutrum sed. Integer lobortis leo eu purus finibus, id sagittis est ornare. Etiam dapibus augue a odio eleifend tincidunt. Etiam eu ipsum non mi pellentesque posuere faucibus nec lorem. Donec in lacus vitae est ultrices accumsan. Etiam tincidunt, felis quis ultricies sodales, lacus sapien dignissim mi, ac ultricies risus nisl viverra felis. Praesent dapibus tellus sit amet lectus interdum vulputate. Pellentesque sit amet augue venenatis, rhoncus ex eget, cursus tortor. Praesent fringilla efficitur mauris condimentum interdum.', 'published', '2024-08-26 01:42:31', '2024-08-26 10:47:04'),
	(8, 'Blog 3', 'blog', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vel mi arcu. Curabitur rutrum ut neque ut facilisis. Cras rutrum ut libero et tempus. Curabitur dui sem, elementum at sapien maximus, consequat pretium erat. Mauris maximus varius odio in molestie. Nullam accumsan posuere ligula, a convallis nisl ultrices ac. Etiam neque neque, dignissim vulputate elementum et, ultrices tincidunt neque. Phasellus sollicitudin sodales lacus in elementum. Etiam rutrum risus eget velit blandit varius. Nunc tincidunt eget turpis vitae euismod. Aliquam erat volutpat. Donec eu purus eu est varius suscipit eu eget eros. Sed suscipit sit amet ipsum quis hendrerit. Quisque vulputate urna ac dignissim interdum. Vestibulum hendrerit elit fringilla velit hendrerit, id cursus eros tempus.\r\n\r\nCurabitur tincidunt ligula id vestibulum vehicula. Aenean molestie justo mi, vel malesuada risus congue tempor. Sed semper ullamcorper fermentum. Cras sollicitudin feugiat mi, a tincidunt dui euismod at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur fermentum dapibus diam, sed pretium magna feugiat eu. Vivamus tempus imperdiet metus, non tristique purus vestibulum eu. Aliquam condimentum lectus risus, et sollicitudin turpis malesuada sed. Suspendisse quis mauris ligula. Nullam finibus luctus est, blandit pellentesque eros iaculis ac. In lectus ligula, varius eget convallis sed, sodales quis orci. Integer eu varius purus. Aenean sagittis ex sit amet purus porta fermentum. Nam eget velit quis nibh iaculis convallis lobortis non dui. Aenean eu tortor nec risus viverra aliquam.', 'published', '2024-08-26 11:30:09', '2024-08-26 11:30:09'),
	(9, 'Blog 4', 'blog', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vel mi arcu. Curabitur rutrum ut neque ut facilisis. Cras rutrum ut libero et tempus. Curabitur dui sem, elementum at sapien maximus, consequat pretium erat. Mauris maximus varius odio in molestie. Nullam accumsan posuere ligula, a convallis nisl ultrices ac. Etiam neque neque, dignissim vulputate elementum et, ultrices tincidunt neque. Phasellus sollicitudin sodales lacus in elementum. Etiam rutrum risus eget velit blandit varius. Nunc tincidunt eget turpis vitae euismod. Aliquam erat volutpat. Donec eu purus eu est varius suscipit eu eget eros. Sed suscipit sit amet ipsum quis hendrerit. Quisque vulputate urna ac dignissim interdum. Vestibulum hendrerit elit fringilla velit hendrerit, id cursus eros tempus.\r\n\r\nCurabitur tincidunt ligula id vestibulum vehicula. Aenean molestie justo mi, vel malesuada risus congue tempor. Sed semper ullamcorper fermentum. Cras sollicitudin feugiat mi, a tincidunt dui euismod at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur fermentum dapibus diam, sed pretium magna feugiat eu. Vivamus tempus imperdiet metus, non tristique purus vestibulum eu. Aliquam condimentum lectus risus, et sollicitudin turpis malesuada sed. Suspendisse quis mauris ligula. Nullam finibus luctus est, blandit pellentesque eros iaculis ac. In lectus ligula, varius eget convallis sed, sodales quis orci. Integer eu varius purus. Aenean sagittis ex sit amet purus porta fermentum. Nam eget velit quis nibh iaculis convallis lobortis non dui. Aenean eu tortor nec risus viverra aliquam.', 'published', '2024-08-26 11:30:24', '2024-08-26 11:30:24'),
	(10, 'Blog 5', 'blog', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vel mi arcu. Curabitur rutrum ut neque ut facilisis. Cras rutrum ut libero et tempus. Curabitur dui sem, elementum at sapien maximus, consequat pretium erat. Mauris maximus varius odio in molestie. Nullam accumsan posuere ligula, a convallis nisl ultrices ac. Etiam neque neque, dignissim vulputate elementum et, ultrices tincidunt neque. Phasellus sollicitudin sodales lacus in elementum. Etiam rutrum risus eget velit blandit varius. Nunc tincidunt eget turpis vitae euismod. Aliquam erat volutpat. Donec eu purus eu est varius suscipit eu eget eros. Sed suscipit sit amet ipsum quis hendrerit. Quisque vulputate urna ac dignissim interdum. Vestibulum hendrerit elit fringilla velit hendrerit, id cursus eros tempus.\r\n\r\nCurabitur tincidunt ligula id vestibulum vehicula. Aenean molestie justo mi, vel malesuada risus congue tempor. Sed semper ullamcorper fermentum. Cras sollicitudin feugiat mi, a tincidunt dui euismod at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur fermentum dapibus diam, sed pretium magna feugiat eu. Vivamus tempus imperdiet metus, non tristique purus vestibulum eu. Aliquam condimentum lectus risus, et sollicitudin turpis malesuada sed. Suspendisse quis mauris ligula. Nullam finibus luctus est, blandit pellentesque eros iaculis ac. In lectus ligula, varius eget convallis sed, sodales quis orci. Integer eu varius purus. Aenean sagittis ex sit amet purus porta fermentum. Nam eget velit quis nibh iaculis convallis lobortis non dui. Aenean eu tortor nec risus viverra aliquam.', 'published', '2024-08-26 11:30:39', '2024-08-26 11:30:39');

-- Dumping structure for table simple_portfolio.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table simple_portfolio.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table simple_portfolio.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table simple_portfolio.migrations: ~4 rows (approximately)
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2024_08_25_150755_create_contents_table', 2);

-- Dumping structure for table simple_portfolio.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table simple_portfolio.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table simple_portfolio.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table simple_portfolio.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table simple_portfolio.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table simple_portfolio.users: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
