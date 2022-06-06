-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.33 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para ventaslite
CREATE DATABASE IF NOT EXISTS `ventaslite` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ventaslite`;

-- Volcando estructura para tabla ventaslite.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla ventaslite.categories: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'Cursos', '62257f5dc5eaa_.png', '2022-03-03 03:54:52', '2022-03-07 03:43:25'),
	(2, 'Tenis', '62257f4a2d51e_.jpg', '2022-03-03 03:54:52', '2022-03-07 03:43:06'),
	(3, 'Celulares', '6224623b3a8e2_.jpg', '2022-03-03 03:54:52', '2022-03-06 07:26:51'),
	(6, 'Mochilas', '6226f304de9a0_.webp', '2022-03-06 06:46:05', '2022-03-08 06:09:08');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Volcando estructura para tabla ventaslite.companies
CREATE TABLE IF NOT EXISTS `companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taxpayer_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla ventaslite.companies: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;

-- Volcando estructura para tabla ventaslite.denominations
CREATE TABLE IF NOT EXISTS `denominations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('BILLETE','MONEDA','OTRO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BILLETE',
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla ventaslite.denominations: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `denominations` DISABLE KEYS */;
INSERT INTO `denominations` (`id`, `type`, `value`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'BILLETE', '1000', NULL, '2022-03-03 03:54:51', '2022-03-03 03:54:51'),
	(2, 'BILLETE', '500', NULL, '2022-03-03 03:54:51', '2022-03-03 03:54:51'),
	(3, 'BILLETE', '200', NULL, '2022-03-03 03:54:51', '2022-03-03 03:54:51'),
	(4, 'BILLETE', '100', NULL, '2022-03-03 03:54:51', '2022-03-03 03:54:51'),
	(5, 'BILLETE', '50', NULL, '2022-03-03 03:54:51', '2022-03-03 03:54:51'),
	(6, 'BILLETE', '20', NULL, '2022-03-03 03:54:51', '2022-03-03 03:54:51'),
	(7, 'MONEDA', '10', NULL, '2022-03-03 03:54:51', '2022-03-03 03:54:51'),
	(8, 'MONEDA', '5', NULL, '2022-03-03 03:54:51', '2022-03-03 03:54:51'),
	(9, 'MONEDA', '2', NULL, '2022-03-03 03:54:52', '2022-03-03 03:54:52'),
	(10, 'MONEDA', '1', NULL, '2022-03-03 03:54:52', '2022-03-03 03:54:52'),
	(11, 'MONEDA', '0.5', NULL, '2022-03-03 03:54:52', '2022-03-03 03:54:52'),
	(12, 'OTRO', '0', NULL, '2022-03-03 03:54:52', '2022-03-03 03:54:52');
/*!40000 ALTER TABLE `denominations` ENABLE KEYS */;

-- Volcando estructura para tabla ventaslite.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla ventaslite.failed_jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla ventaslite.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla ventaslite.migrations: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2022_02_26_230031_create_companies_table', 1),
	(6, '2022_02_26_233423_create_denominations_table', 1),
	(7, '2022_02_26_234840_create_categories_table', 1),
	(8, '2022_02_26_235619_create_products_table', 1),
	(9, '2022_02_27_011535_create_sales_table', 1),
	(10, '2022_02_27_022312_create_sale_details_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla ventaslite.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla ventaslite.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla ventaslite.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla ventaslite.personal_access_tokens: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Volcando estructura para tabla ventaslite.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `stock` int(11) NOT NULL,
  `alerts` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla ventaslite.products: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `barcode`, `cost`, `price`, `stock`, `alerts`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
	(1, 'Laravel', '1488158788877775', 200.00, 350.00, 1000, 10, 'cursos.png', 2, '2022-03-03 03:54:52', '2022-03-03 03:54:52'),
	(2, 'NIKE', '1488158788877775', 1200.00, 1500.00, 1000, 10, 'cursos.png', 1, '2022-03-03 03:54:52', '2022-03-03 03:54:52'),
	(3, 'Samsung s8', '1488158788877775', 6000.00, 7500.00, 1000, 10, 'cursos.png', 1, '2022-03-03 03:54:52', '2022-03-03 03:54:52'),
	(4, 'Hp 245', '1488158788877775', 12000.00, 13000.00, 500, 10, 'cursos.png', 1, '2022-03-03 03:54:52', '2022-03-03 03:54:52');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Volcando estructura para tabla ventaslite.sales
CREATE TABLE IF NOT EXISTS `sales` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `total` decimal(10,2) NOT NULL,
  `items` int(11) NOT NULL,
  `cash` decimal(10,2) NOT NULL,
  `change` decimal(10,2) NOT NULL,
  `staatus` enum('PAID','PENDING','CANCELLED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PAID',
  `users_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sales_users_id_foreign` (`users_id`),
  CONSTRAINT `sales_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla ventaslite.sales: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;

-- Volcando estructura para tabla ventaslite.sale_details
CREATE TABLE IF NOT EXISTS `sale_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `price` decimal(10,2) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `sale_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sale_details_product_id_foreign` (`product_id`),
  KEY `sale_details_sale_id_foreign` (`sale_id`),
  CONSTRAINT `sale_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `sale_details_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla ventaslite.sale_details: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `sale_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_details` ENABLE KEYS */;

-- Volcando estructura para tabla ventaslite.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` enum('ADMIN','EMPLOYEE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ADMIN',
  `status` enum('ACTIVE','LOCKED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla ventaslite.users: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `phone`, `email`, `profile`, `status`, `email_verified_at`, `password`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Jose Glez', '9631489675', 'jos_uts@hotmail.com', 'ADMIN', 'ACTIVE', NULL, '$2y$10$h7rdEBoC4H2oc.Az26rruePmMavt6oWs1nIYstYyshdHVEp4sBu/q', NULL, NULL, '2022-03-03 03:54:53', '2022-03-03 03:54:53'),
	(2, 'Malisa Perez', '9631234561', 'melisa@hotmail.com', 'EMPLOYEE', 'ACTIVE', NULL, '$2y$10$6Xb2umKRznMrqBTZUPbH3uUQCh7CsYnp6OuKf2n9ut6BmIHporBLC', NULL, NULL, '2022-03-03 03:54:53', '2022-03-03 03:54:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
