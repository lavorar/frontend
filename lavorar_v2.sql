-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 10-01-2023 a las 17:59:33
-- Versión del servidor: 5.7.33
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lavorar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `conditions` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::content-manager.explorer.create', 'api::category.category', '{\"fields\": [\"name\", \"state\", \"city\", \"services\", \"lender\", \"Slug\"]}', '[]', '2022-10-13 22:58:15.246000', '2022-11-09 18:06:39.574000', NULL, NULL),
(2, 'plugin::content-manager.explorer.create', 'api::city.city', '{\"fields\": [\"name\", \"categories\", \"slug\"]}', '[]', '2022-10-13 22:58:15.257000', '2022-11-04 23:48:52.281000', NULL, NULL),
(3, 'plugin::content-manager.explorer.create', 'api::lender.lender', '{\"fields\": [\"users_lender\", \"categories\"]}', '[]', '2022-10-13 22:58:15.266000', '2022-11-26 15:43:08.436000', NULL, NULL),
(4, 'plugin::content-manager.explorer.create', 'api::province.province', '{\"fields\": [\"name\", \"cities\", \"categories\"]}', '[]', '2022-10-13 22:58:15.272000', '2022-10-21 17:21:41.468000', NULL, NULL),
(7, 'plugin::content-manager.explorer.create', 'api::service.service', '{\"fields\": [\"price\", \"finished_at\", \"category\"]}', '[]', '2022-10-13 22:58:15.289000', '2022-11-26 15:43:08.436000', NULL, NULL),
(8, 'plugin::content-manager.explorer.read', 'api::category.category', '{\"fields\": [\"name\", \"state\", \"city\", \"services\", \"lender\", \"Slug\"]}', '[]', '2022-10-13 22:58:15.295000', '2022-11-09 18:06:39.574000', NULL, NULL),
(9, 'plugin::content-manager.explorer.read', 'api::city.city', '{\"fields\": [\"name\", \"categories\", \"slug\"]}', '[]', '2022-10-13 22:58:15.300000', '2022-11-04 23:48:52.282000', NULL, NULL),
(10, 'plugin::content-manager.explorer.read', 'api::lender.lender', '{\"fields\": [\"users_lender\", \"categories\"]}', '[]', '2022-10-13 22:58:15.307000', '2022-11-26 15:43:08.436000', NULL, NULL),
(11, 'plugin::content-manager.explorer.read', 'api::province.province', '{\"fields\": [\"name\", \"cities\", \"categories\"]}', '[]', '2022-10-13 22:58:15.313000', '2022-10-21 17:21:41.468000', NULL, NULL),
(14, 'plugin::content-manager.explorer.read', 'api::service.service', '{\"fields\": [\"price\", \"finished_at\", \"category\"]}', '[]', '2022-10-13 22:58:15.329000', '2022-11-26 15:43:08.436000', NULL, NULL),
(15, 'plugin::content-manager.explorer.update', 'api::category.category', '{\"fields\": [\"name\", \"state\", \"city\", \"services\", \"lender\", \"Slug\"]}', '[]', '2022-10-13 22:58:15.334000', '2022-11-09 18:06:39.574000', NULL, NULL),
(16, 'plugin::content-manager.explorer.update', 'api::city.city', '{\"fields\": [\"name\", \"categories\", \"slug\"]}', '[]', '2022-10-13 22:58:15.340000', '2022-11-04 23:48:52.282000', NULL, NULL),
(17, 'plugin::content-manager.explorer.update', 'api::lender.lender', '{\"fields\": [\"users_lender\", \"categories\"]}', '[]', '2022-10-13 22:58:15.345000', '2022-11-26 15:43:08.436000', NULL, NULL),
(18, 'plugin::content-manager.explorer.update', 'api::province.province', '{\"fields\": [\"name\", \"cities\", \"categories\"]}', '[]', '2022-10-13 22:58:15.351000', '2022-10-21 17:21:41.468000', NULL, NULL),
(21, 'plugin::content-manager.explorer.update', 'api::service.service', '{\"fields\": [\"price\", \"finished_at\", \"category\"]}', '[]', '2022-10-13 22:58:15.369000', '2022-11-26 15:43:08.436000', NULL, NULL),
(22, 'plugin::content-manager.explorer.delete', 'api::category.category', '{}', '[]', '2022-10-13 22:58:15.374000', '2022-10-13 22:58:15.374000', NULL, NULL),
(23, 'plugin::content-manager.explorer.delete', 'api::city.city', '{}', '[]', '2022-10-13 22:58:15.380000', '2022-10-13 22:58:15.380000', NULL, NULL),
(24, 'plugin::content-manager.explorer.delete', 'api::lender.lender', '{}', '[]', '2022-10-13 22:58:15.386000', '2022-10-13 22:58:15.386000', NULL, NULL),
(25, 'plugin::content-manager.explorer.delete', 'api::province.province', '{}', '[]', '2022-10-13 22:58:15.392000', '2022-10-13 22:58:15.392000', NULL, NULL),
(28, 'plugin::content-manager.explorer.delete', 'api::service.service', '{}', '[]', '2022-10-13 22:58:15.411000', '2022-10-13 22:58:15.411000', NULL, NULL),
(29, 'plugin::content-manager.explorer.publish', 'api::category.category', '{}', '[]', '2022-10-13 22:58:15.418000', '2022-10-13 22:58:15.418000', NULL, NULL),
(30, 'plugin::content-manager.explorer.publish', 'api::city.city', '{}', '[]', '2022-10-13 22:58:15.423000', '2022-10-13 22:58:15.423000', NULL, NULL),
(31, 'plugin::content-manager.explorer.publish', 'api::lender.lender', '{}', '[]', '2022-10-13 22:58:15.428000', '2022-10-13 22:58:15.428000', NULL, NULL),
(32, 'plugin::content-manager.explorer.publish', 'api::province.province', '{}', '[]', '2022-10-13 22:58:15.434000', '2022-10-13 22:58:15.434000', NULL, NULL),
(35, 'plugin::content-manager.explorer.publish', 'api::service.service', '{}', '[]', '2022-10-13 22:58:15.452000', '2022-10-13 22:58:15.452000', NULL, NULL),
(36, 'plugin::upload.read', NULL, '{}', '[]', '2022-10-13 22:58:15.458000', '2022-10-13 22:58:15.458000', NULL, NULL),
(37, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-10-13 22:58:15.464000', '2022-10-13 22:58:15.464000', NULL, NULL),
(38, 'plugin::upload.assets.update', NULL, '{}', '[]', '2022-10-13 22:58:15.469000', '2022-10-13 22:58:15.469000', NULL, NULL),
(39, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-10-13 22:58:15.474000', '2022-10-13 22:58:15.474000', NULL, NULL),
(40, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-10-13 22:58:15.481000', '2022-10-13 22:58:15.481000', NULL, NULL),
(41, 'plugin::content-manager.explorer.create', 'api::category.category', '{\"fields\": [\"name\", \"state\", \"city\", \"services\", \"lender\", \"Slug\"]}', '[\"admin::is-creator\"]', '2022-10-13 22:58:15.490000', '2022-11-09 18:06:39.574000', NULL, NULL),
(42, 'plugin::content-manager.explorer.create', 'api::city.city', '{\"fields\": [\"name\", \"categories\", \"slug\"]}', '[\"admin::is-creator\"]', '2022-10-13 22:58:15.495000', '2022-11-04 23:48:52.282000', NULL, NULL),
(43, 'plugin::content-manager.explorer.create', 'api::lender.lender', '{\"fields\": [\"users_lender\", \"categories\"]}', '[\"admin::is-creator\"]', '2022-10-13 22:58:15.500000', '2022-11-26 15:43:08.436000', NULL, NULL),
(44, 'plugin::content-manager.explorer.create', 'api::province.province', '{\"fields\": [\"name\", \"cities\", \"categories\"]}', '[\"admin::is-creator\"]', '2022-10-13 22:58:15.506000', '2022-10-21 17:21:41.468000', NULL, NULL),
(47, 'plugin::content-manager.explorer.create', 'api::service.service', '{\"fields\": [\"price\", \"finished_at\", \"category\"]}', '[\"admin::is-creator\"]', '2022-10-13 22:58:15.525000', '2022-11-26 15:43:08.436000', NULL, NULL),
(48, 'plugin::content-manager.explorer.read', 'api::category.category', '{\"fields\": [\"name\", \"state\", \"city\", \"services\", \"lender\", \"Slug\"]}', '[\"admin::is-creator\"]', '2022-10-13 22:58:15.530000', '2022-11-09 18:06:39.574000', NULL, NULL),
(49, 'plugin::content-manager.explorer.read', 'api::city.city', '{\"fields\": [\"name\", \"categories\", \"slug\"]}', '[\"admin::is-creator\"]', '2022-10-13 22:58:15.536000', '2022-11-04 23:48:52.282000', NULL, NULL),
(50, 'plugin::content-manager.explorer.read', 'api::lender.lender', '{\"fields\": [\"users_lender\", \"categories\"]}', '[\"admin::is-creator\"]', '2022-10-13 22:58:15.541000', '2022-11-26 15:43:08.436000', NULL, NULL),
(51, 'plugin::content-manager.explorer.read', 'api::province.province', '{\"fields\": [\"name\", \"cities\", \"categories\"]}', '[\"admin::is-creator\"]', '2022-10-13 22:58:15.549000', '2022-10-21 17:21:41.468000', NULL, NULL),
(54, 'plugin::content-manager.explorer.read', 'api::service.service', '{\"fields\": [\"price\", \"finished_at\", \"category\"]}', '[\"admin::is-creator\"]', '2022-10-13 22:58:15.567000', '2022-11-26 15:43:08.436000', NULL, NULL),
(55, 'plugin::content-manager.explorer.update', 'api::category.category', '{\"fields\": [\"name\", \"state\", \"city\", \"services\", \"lender\", \"Slug\"]}', '[\"admin::is-creator\"]', '2022-10-13 22:58:15.574000', '2022-11-09 18:06:39.574000', NULL, NULL),
(56, 'plugin::content-manager.explorer.update', 'api::city.city', '{\"fields\": [\"name\", \"categories\", \"slug\"]}', '[\"admin::is-creator\"]', '2022-10-13 22:58:15.583000', '2022-11-04 23:48:52.282000', NULL, NULL),
(57, 'plugin::content-manager.explorer.update', 'api::lender.lender', '{\"fields\": [\"users_lender\", \"categories\"]}', '[\"admin::is-creator\"]', '2022-10-13 22:58:15.593000', '2022-11-26 15:43:08.436000', NULL, NULL),
(58, 'plugin::content-manager.explorer.update', 'api::province.province', '{\"fields\": [\"name\", \"cities\", \"categories\"]}', '[\"admin::is-creator\"]', '2022-10-13 22:58:15.601000', '2022-10-21 17:21:41.468000', NULL, NULL),
(61, 'plugin::content-manager.explorer.update', 'api::service.service', '{\"fields\": [\"price\", \"finished_at\", \"category\"]}', '[\"admin::is-creator\"]', '2022-10-13 22:58:15.629000', '2022-11-26 15:43:08.436000', NULL, NULL),
(62, 'plugin::content-manager.explorer.delete', 'api::category.category', '{}', '[\"admin::is-creator\"]', '2022-10-13 22:58:15.638000', '2022-10-13 22:58:15.638000', NULL, NULL),
(63, 'plugin::content-manager.explorer.delete', 'api::city.city', '{}', '[\"admin::is-creator\"]', '2022-10-13 22:58:15.646000', '2022-10-13 22:58:15.646000', NULL, NULL),
(64, 'plugin::content-manager.explorer.delete', 'api::lender.lender', '{}', '[\"admin::is-creator\"]', '2022-10-13 22:58:15.654000', '2022-10-13 22:58:15.654000', NULL, NULL),
(65, 'plugin::content-manager.explorer.delete', 'api::province.province', '{}', '[\"admin::is-creator\"]', '2022-10-13 22:58:15.660000', '2022-10-13 22:58:15.660000', NULL, NULL),
(68, 'plugin::content-manager.explorer.delete', 'api::service.service', '{}', '[\"admin::is-creator\"]', '2022-10-13 22:58:15.676000', '2022-10-13 22:58:15.676000', NULL, NULL),
(69, 'plugin::upload.read', NULL, '{}', '[\"admin::is-creator\"]', '2022-10-13 22:58:15.681000', '2022-10-13 22:58:15.681000', NULL, NULL),
(70, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-10-13 22:58:15.687000', '2022-10-13 22:58:15.687000', NULL, NULL),
(71, 'plugin::upload.assets.update', NULL, '{}', '[\"admin::is-creator\"]', '2022-10-13 22:58:15.692000', '2022-10-13 22:58:15.692000', NULL, NULL),
(72, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-10-13 22:58:15.698000', '2022-10-13 22:58:15.698000', NULL, NULL),
(73, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-10-13 22:58:15.703000', '2022-10-13 22:58:15.703000', NULL, NULL),
(98, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[]', '2022-10-13 22:58:15.888000', '2022-10-13 22:58:15.888000', NULL, NULL),
(99, 'plugin::content-manager.explorer.delete', 'api::category.category', '{}', '[]', '2022-10-13 22:58:15.894000', '2022-10-13 22:58:15.894000', NULL, NULL),
(100, 'plugin::content-manager.explorer.delete', 'api::city.city', '{}', '[]', '2022-10-13 22:58:15.900000', '2022-10-13 22:58:15.900000', NULL, NULL),
(101, 'plugin::content-manager.explorer.delete', 'api::lender.lender', '{}', '[]', '2022-10-13 22:58:15.906000', '2022-10-13 22:58:15.906000', NULL, NULL),
(102, 'plugin::content-manager.explorer.delete', 'api::province.province', '{}', '[]', '2022-10-13 22:58:15.912000', '2022-10-13 22:58:15.912000', NULL, NULL),
(105, 'plugin::content-manager.explorer.delete', 'api::service.service', '{}', '[]', '2022-10-13 22:58:15.929000', '2022-10-13 22:58:15.929000', NULL, NULL),
(106, 'plugin::content-manager.explorer.publish', 'api::category.category', '{}', '[]', '2022-10-13 22:58:15.936000', '2022-10-13 22:58:15.936000', NULL, NULL),
(107, 'plugin::content-manager.explorer.publish', 'api::city.city', '{}', '[]', '2022-10-13 22:58:15.941000', '2022-10-13 22:58:15.941000', NULL, NULL),
(108, 'plugin::content-manager.explorer.publish', 'api::lender.lender', '{}', '[]', '2022-10-13 22:58:15.948000', '2022-10-13 22:58:15.948000', NULL, NULL),
(109, 'plugin::content-manager.explorer.publish', 'api::province.province', '{}', '[]', '2022-10-13 22:58:15.955000', '2022-10-13 22:58:15.955000', NULL, NULL),
(112, 'plugin::content-manager.explorer.publish', 'api::service.service', '{}', '[]', '2022-10-13 22:58:15.975000', '2022-10-13 22:58:15.975000', NULL, NULL),
(113, 'plugin::content-manager.single-types.configure-view', NULL, '{}', '[]', '2022-10-13 22:58:15.981000', '2022-10-13 22:58:15.981000', NULL, NULL),
(114, 'plugin::content-manager.collection-types.configure-view', NULL, '{}', '[]', '2022-10-13 22:58:15.987000', '2022-10-13 22:58:15.987000', NULL, NULL),
(115, 'plugin::content-manager.components.configure-layout', NULL, '{}', '[]', '2022-10-13 22:58:15.993000', '2022-10-13 22:58:15.993000', NULL, NULL),
(116, 'plugin::content-type-builder.read', NULL, '{}', '[]', '2022-10-13 22:58:15.999000', '2022-10-13 22:58:15.999000', NULL, NULL),
(117, 'plugin::email.settings.read', NULL, '{}', '[]', '2022-10-13 22:58:16.005000', '2022-10-13 22:58:16.005000', NULL, NULL),
(118, 'plugin::upload.read', NULL, '{}', '[]', '2022-10-13 22:58:16.011000', '2022-10-13 22:58:16.011000', NULL, NULL),
(119, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-10-13 22:58:16.017000', '2022-10-13 22:58:16.017000', NULL, NULL),
(120, 'plugin::upload.assets.update', NULL, '{}', '[]', '2022-10-13 22:58:16.022000', '2022-10-13 22:58:16.022000', NULL, NULL),
(121, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-10-13 22:58:16.027000', '2022-10-13 22:58:16.027000', NULL, NULL),
(122, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-10-13 22:58:16.033000', '2022-10-13 22:58:16.033000', NULL, NULL),
(123, 'plugin::upload.settings.read', NULL, '{}', '[]', '2022-10-13 22:58:16.039000', '2022-10-13 22:58:16.039000', NULL, NULL),
(124, 'plugin::users-permissions.roles.create', NULL, '{}', '[]', '2022-10-13 22:58:16.044000', '2022-10-13 22:58:16.044000', NULL, NULL),
(125, 'plugin::users-permissions.roles.read', NULL, '{}', '[]', '2022-10-13 22:58:16.051000', '2022-10-13 22:58:16.051000', NULL, NULL),
(126, 'plugin::users-permissions.roles.update', NULL, '{}', '[]', '2022-10-13 22:58:16.057000', '2022-10-13 22:58:16.057000', NULL, NULL),
(127, 'plugin::users-permissions.roles.delete', NULL, '{}', '[]', '2022-10-13 22:58:16.063000', '2022-10-13 22:58:16.063000', NULL, NULL),
(128, 'plugin::users-permissions.providers.read', NULL, '{}', '[]', '2022-10-13 22:58:16.068000', '2022-10-13 22:58:16.068000', NULL, NULL),
(129, 'plugin::users-permissions.providers.update', NULL, '{}', '[]', '2022-10-13 22:58:16.074000', '2022-10-13 22:58:16.074000', NULL, NULL),
(130, 'plugin::users-permissions.email-templates.read', NULL, '{}', '[]', '2022-10-13 22:58:16.080000', '2022-10-13 22:58:16.080000', NULL, NULL),
(131, 'plugin::users-permissions.email-templates.update', NULL, '{}', '[]', '2022-10-13 22:58:16.085000', '2022-10-13 22:58:16.085000', NULL, NULL),
(132, 'plugin::users-permissions.advanced-settings.read', NULL, '{}', '[]', '2022-10-13 22:58:16.092000', '2022-10-13 22:58:16.092000', NULL, NULL),
(133, 'plugin::users-permissions.advanced-settings.update', NULL, '{}', '[]', '2022-10-13 22:58:16.098000', '2022-10-13 22:58:16.098000', NULL, NULL),
(134, 'plugin::i18n.locale.create', NULL, '{}', '[]', '2022-10-13 22:58:16.105000', '2022-10-13 22:58:16.105000', NULL, NULL),
(135, 'plugin::i18n.locale.read', NULL, '{}', '[]', '2022-10-13 22:58:16.111000', '2022-10-13 22:58:16.111000', NULL, NULL),
(136, 'plugin::i18n.locale.update', NULL, '{}', '[]', '2022-10-13 22:58:16.117000', '2022-10-13 22:58:16.117000', NULL, NULL),
(137, 'plugin::i18n.locale.delete', NULL, '{}', '[]', '2022-10-13 22:58:16.123000', '2022-10-13 22:58:16.123000', NULL, NULL),
(138, 'admin::marketplace.read', NULL, '{}', '[]', '2022-10-13 22:58:16.131000', '2022-10-13 22:58:16.131000', NULL, NULL),
(139, 'admin::marketplace.plugins.install', NULL, '{}', '[]', '2022-10-13 22:58:16.137000', '2022-10-13 22:58:16.137000', NULL, NULL),
(140, 'admin::marketplace.plugins.uninstall', NULL, '{}', '[]', '2022-10-13 22:58:16.142000', '2022-10-13 22:58:16.142000', NULL, NULL),
(141, 'admin::webhooks.create', NULL, '{}', '[]', '2022-10-13 22:58:16.148000', '2022-10-13 22:58:16.148000', NULL, NULL),
(142, 'admin::webhooks.read', NULL, '{}', '[]', '2022-10-13 22:58:16.154000', '2022-10-13 22:58:16.154000', NULL, NULL),
(143, 'admin::webhooks.update', NULL, '{}', '[]', '2022-10-13 22:58:16.160000', '2022-10-13 22:58:16.160000', NULL, NULL),
(144, 'admin::webhooks.delete', NULL, '{}', '[]', '2022-10-13 22:58:16.169000', '2022-10-13 22:58:16.169000', NULL, NULL),
(145, 'admin::users.create', NULL, '{}', '[]', '2022-10-13 22:58:16.175000', '2022-10-13 22:58:16.175000', NULL, NULL),
(146, 'admin::users.read', NULL, '{}', '[]', '2022-10-13 22:58:16.182000', '2022-10-13 22:58:16.182000', NULL, NULL),
(147, 'admin::users.update', NULL, '{}', '[]', '2022-10-13 22:58:16.188000', '2022-10-13 22:58:16.188000', NULL, NULL),
(148, 'admin::users.delete', NULL, '{}', '[]', '2022-10-13 22:58:16.194000', '2022-10-13 22:58:16.194000', NULL, NULL),
(149, 'admin::roles.create', NULL, '{}', '[]', '2022-10-13 22:58:16.200000', '2022-10-13 22:58:16.200000', NULL, NULL),
(150, 'admin::roles.read', NULL, '{}', '[]', '2022-10-13 22:58:16.205000', '2022-10-13 22:58:16.205000', NULL, NULL),
(151, 'admin::roles.update', NULL, '{}', '[]', '2022-10-13 22:58:16.211000', '2022-10-13 22:58:16.211000', NULL, NULL),
(152, 'admin::roles.delete', NULL, '{}', '[]', '2022-10-13 22:58:16.216000', '2022-10-13 22:58:16.216000', NULL, NULL),
(153, 'admin::api-tokens.access', NULL, '{}', '[]', '2022-10-13 22:58:16.222000', '2022-10-13 22:58:16.222000', NULL, NULL),
(154, 'admin::api-tokens.create', NULL, '{}', '[]', '2022-10-13 22:58:16.227000', '2022-10-13 22:58:16.227000', NULL, NULL),
(155, 'admin::api-tokens.read', NULL, '{}', '[]', '2022-10-13 22:58:16.232000', '2022-10-13 22:58:16.232000', NULL, NULL),
(156, 'admin::api-tokens.update', NULL, '{}', '[]', '2022-10-13 22:58:16.238000', '2022-10-13 22:58:16.238000', NULL, NULL),
(157, 'admin::api-tokens.regenerate', NULL, '{}', '[]', '2022-10-13 22:58:16.243000', '2022-10-13 22:58:16.243000', NULL, NULL),
(158, 'admin::api-tokens.delete', NULL, '{}', '[]', '2022-10-13 22:58:16.251000', '2022-10-13 22:58:16.251000', NULL, NULL),
(159, 'admin::project-settings.update', NULL, '{}', '[]', '2022-10-13 22:58:16.256000', '2022-10-13 22:58:16.256000', NULL, NULL),
(160, 'admin::project-settings.read', NULL, '{}', '[]', '2022-10-13 22:58:16.262000', '2022-10-13 22:58:16.262000', NULL, NULL),
(262, 'plugin::content-manager.explorer.create', 'api::province.province', '{\"fields\": [\"name\", \"cities\", \"categories\", \"users\", \"identificador\", \"Slug\"]}', '[]', '2022-11-04 23:17:02.319000', '2022-11-04 23:17:02.319000', NULL, NULL),
(263, 'plugin::content-manager.explorer.read', 'api::province.province', '{\"fields\": [\"name\", \"cities\", \"categories\", \"users\", \"identificador\", \"Slug\"]}', '[]', '2022-11-04 23:17:02.335000', '2022-11-04 23:17:02.335000', NULL, NULL),
(264, 'plugin::content-manager.explorer.update', 'api::province.province', '{\"fields\": [\"name\", \"cities\", \"categories\", \"users\", \"identificador\", \"Slug\"]}', '[]', '2022-11-04 23:17:02.340000', '2022-11-04 23:17:02.340000', NULL, NULL),
(265, 'plugin::content-manager.explorer.create', 'api::city.city', '{\"fields\": [\"name\", \"categories\", \"users\", \"identificador\", \"province\", \"slug\"]}', '[]', '2022-11-04 23:48:52.183000', '2022-11-04 23:48:52.183000', NULL, NULL),
(266, 'plugin::content-manager.explorer.read', 'api::city.city', '{\"fields\": [\"name\", \"categories\", \"users\", \"identificador\", \"province\", \"slug\"]}', '[]', '2022-11-04 23:48:52.189000', '2022-11-04 23:48:52.189000', NULL, NULL),
(267, 'plugin::content-manager.explorer.update', 'api::city.city', '{\"fields\": [\"name\", \"categories\", \"users\", \"identificador\", \"province\", \"slug\"]}', '[]', '2022-11-04 23:48:52.195000', '2022-11-04 23:48:52.195000', NULL, NULL),
(290, 'plugin::content-manager.explorer.create', 'api::category.category', '{\"fields\": [\"name\", \"state\", \"city\", \"services\", \"lender\", \"provinces\", \"Slug\"]}', '[]', '2022-11-09 18:06:39.423000', '2022-11-09 18:06:39.423000', NULL, NULL),
(292, 'plugin::content-manager.explorer.read', 'api::category.category', '{\"fields\": [\"name\", \"state\", \"city\", \"services\", \"lender\", \"provinces\", \"Slug\"]}', '[]', '2022-11-09 18:06:39.438000', '2022-11-09 18:06:39.438000', NULL, NULL),
(294, 'plugin::content-manager.explorer.update', 'api::category.category', '{\"fields\": [\"name\", \"state\", \"city\", \"services\", \"lender\", \"provinces\", \"Slug\"]}', '[]', '2022-11-09 18:06:39.451000', '2022-11-09 18:06:39.451000', NULL, NULL),
(310, 'plugin::content-manager.explorer.create', 'plugin::custom-api.custom-api', '{\"fields\": [\"name\", \"slug\", \"selectedContentType\", \"structure\"]}', '[]', '2022-11-22 22:13:39.852000', '2022-11-22 22:13:39.852000', NULL, NULL),
(311, 'plugin::content-manager.explorer.read', 'plugin::custom-api.custom-api', '{\"fields\": [\"name\", \"slug\", \"selectedContentType\", \"structure\"]}', '[]', '2022-11-22 22:13:39.861000', '2022-11-22 22:13:39.861000', NULL, NULL),
(312, 'plugin::content-manager.explorer.update', 'plugin::custom-api.custom-api', '{\"fields\": [\"name\", \"slug\", \"selectedContentType\", \"structure\"]}', '[]', '2022-11-22 22:13:39.866000', '2022-11-22 22:13:39.866000', NULL, NULL),
(313, 'plugin::content-manager.explorer.delete', 'plugin::custom-api.custom-api', '{}', '[]', '2022-11-22 22:13:39.873000', '2022-11-22 22:13:39.873000', NULL, NULL),
(334, 'plugin::content-manager.explorer.delete', 'plugin::ratings.review', '{}', '[]', '2022-11-23 20:19:44.771000', '2022-11-23 20:19:44.771000', NULL, NULL),
(356, 'plugin::content-manager.explorer.delete', 'api::notification.notification', '{}', '[]', '2022-11-26 15:12:39.090000', '2022-11-26 15:12:39.090000', NULL, NULL),
(359, 'plugin::content-manager.explorer.create', 'api::lender.lender', '{\"fields\": [\"users_lender\", \"categories\"]}', '[]', '2022-11-26 15:43:08.286000', '2022-11-26 15:43:08.286000', NULL, NULL),
(362, 'plugin::content-manager.explorer.read', 'api::lender.lender', '{\"fields\": [\"users_lender\", \"categories\"]}', '[]', '2022-11-26 15:43:08.304000', '2022-11-26 15:43:08.304000', NULL, NULL),
(365, 'plugin::content-manager.explorer.update', 'api::lender.lender', '{\"fields\": [\"users_lender\", \"categories\"]}', '[]', '2022-11-26 15:43:08.342000', '2022-11-26 15:43:08.342000', NULL, NULL),
(391, 'plugin::content-manager.explorer.create', 'api::notification.notification', '{\"fields\": [\"user\", \"type\", \"read\", \"acepted\", \"rejected\", \"user_request\", \"canceled\", \"review\", \"score\", \"comment\", \"review_updatedAt\"]}', '[]', '2022-11-27 14:24:41.815000', '2022-11-27 14:24:41.815000', NULL, NULL),
(392, 'plugin::content-manager.explorer.read', 'api::notification.notification', '{\"fields\": [\"user\", \"type\", \"read\", \"acepted\", \"rejected\", \"user_request\", \"canceled\", \"review\", \"score\", \"comment\", \"review_updatedAt\"]}', '[]', '2022-11-27 14:24:41.821000', '2022-11-27 14:24:41.821000', NULL, NULL),
(393, 'plugin::content-manager.explorer.update', 'api::notification.notification', '{\"fields\": [\"user\", \"type\", \"read\", \"acepted\", \"rejected\", \"user_request\", \"canceled\", \"review\", \"score\", \"comment\", \"review_updatedAt\"]}', '[]', '2022-11-27 14:24:41.826000', '2022-11-27 14:24:41.826000', NULL, NULL),
(412, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\", \"categories\", \"lender\", \"phone\", \"is_lender\", \"aboutme\", \"birth\", \"provincia\", \"localidad\", \"name\", \"Slug\", \"profile_pic\", \"firstName\", \"lastName\", \"avatar\", \"ratings_reviews\", \"averageScore\", \"countsReview\", \"notifications\", \"notifications_requested\", \"service_recruiters\", \"lenders\", \"description\"]}', '[]', '2022-12-04 01:00:59.056000', '2022-12-04 01:00:59.056000', NULL, NULL),
(413, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\", \"categories\", \"lender\", \"phone\", \"is_lender\", \"aboutme\", \"birth\", \"provincia\", \"localidad\", \"name\", \"Slug\", \"profile_pic\", \"firstName\", \"lastName\", \"avatar\", \"ratings_reviews\", \"averageScore\", \"countsReview\", \"notifications\", \"notifications_requested\", \"service_recruiters\", \"lenders\", \"description\"]}', '[]', '2022-12-04 01:00:59.067000', '2022-12-04 01:00:59.067000', NULL, NULL),
(414, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\", \"categories\", \"lender\", \"phone\", \"is_lender\", \"aboutme\", \"birth\", \"provincia\", \"localidad\", \"name\", \"Slug\", \"profile_pic\", \"firstName\", \"lastName\", \"avatar\", \"ratings_reviews\", \"averageScore\", \"countsReview\", \"notifications\", \"notifications_requested\", \"service_recruiters\", \"lenders\", \"description\"]}', '[]', '2022-12-04 01:00:59.075000', '2022-12-04 01:00:59.075000', NULL, NULL),
(421, 'plugin::content-manager.explorer.create', 'plugin::ratings.review', '{\"fields\": [\"score\", \"author\", \"comment\", \"related_to\", \"user\", \"notifications\"]}', '[]', '2022-12-05 18:27:37.480000', '2022-12-05 18:27:37.480000', NULL, NULL),
(422, 'plugin::content-manager.explorer.create', 'api::service.service', '{\"fields\": [\"price\", \"finished_at\", \"category\", \"lender\", \"users_recruiter\", \"start_date\", \"acepted\"]}', '[]', '2022-12-05 18:27:37.487000', '2022-12-05 18:27:37.487000', NULL, NULL),
(423, 'plugin::content-manager.explorer.read', 'plugin::ratings.review', '{\"fields\": [\"score\", \"author\", \"comment\", \"related_to\", \"user\", \"notifications\"]}', '[]', '2022-12-05 18:27:37.493000', '2022-12-05 18:27:37.493000', NULL, NULL),
(424, 'plugin::content-manager.explorer.read', 'api::service.service', '{\"fields\": [\"price\", \"finished_at\", \"category\", \"lender\", \"users_recruiter\", \"start_date\", \"acepted\"]}', '[]', '2022-12-05 18:27:37.499000', '2022-12-05 18:27:37.499000', NULL, NULL),
(425, 'plugin::content-manager.explorer.update', 'plugin::ratings.review', '{\"fields\": [\"score\", \"author\", \"comment\", \"related_to\", \"user\", \"notifications\"]}', '[]', '2022-12-05 18:27:37.505000', '2022-12-05 18:27:37.505000', NULL, NULL),
(426, 'plugin::content-manager.explorer.update', 'api::service.service', '{\"fields\": [\"price\", \"finished_at\", \"category\", \"lender\", \"users_recruiter\", \"start_date\", \"acepted\"]}', '[]', '2022-12-05 18:27:37.510000', '2022-12-05 18:27:37.510000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_permissions_role_links`
--

CREATE TABLE `admin_permissions_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 2, NULL),
(2, 2, 2, NULL),
(3, 3, 2, NULL),
(4, 4, 2, NULL),
(7, 7, 2, NULL),
(8, 8, 2, NULL),
(9, 9, 2, NULL),
(10, 10, 2, NULL),
(11, 11, 2, NULL),
(14, 14, 2, NULL),
(15, 15, 2, NULL),
(16, 16, 2, NULL),
(17, 17, 2, NULL),
(18, 18, 2, NULL),
(21, 21, 2, NULL),
(22, 22, 2, NULL),
(23, 23, 2, NULL),
(24, 24, 2, NULL),
(25, 25, 2, NULL),
(28, 28, 2, NULL),
(29, 29, 2, NULL),
(30, 30, 2, NULL),
(31, 31, 2, NULL),
(32, 32, 2, NULL),
(35, 35, 2, NULL),
(36, 36, 2, NULL),
(37, 37, 2, NULL),
(38, 38, 2, NULL),
(39, 39, 2, NULL),
(40, 40, 2, NULL),
(41, 41, 3, NULL),
(42, 42, 3, NULL),
(43, 43, 3, NULL),
(44, 44, 3, NULL),
(47, 47, 3, NULL),
(48, 48, 3, NULL),
(49, 49, 3, NULL),
(50, 50, 3, NULL),
(51, 51, 3, NULL),
(54, 54, 3, NULL),
(55, 55, 3, NULL),
(56, 56, 3, NULL),
(57, 57, 3, NULL),
(58, 58, 3, NULL),
(61, 61, 3, NULL),
(62, 62, 3, NULL),
(63, 63, 3, NULL),
(64, 64, 3, NULL),
(65, 65, 3, NULL),
(68, 68, 3, NULL),
(69, 69, 3, NULL),
(70, 70, 3, NULL),
(71, 71, 3, NULL),
(72, 72, 3, NULL),
(73, 73, 3, NULL),
(98, 98, 1, NULL),
(99, 99, 1, NULL),
(100, 100, 1, NULL),
(101, 101, 1, NULL),
(102, 102, 1, NULL),
(105, 105, 1, NULL),
(106, 106, 1, NULL),
(107, 107, 1, NULL),
(108, 108, 1, NULL),
(109, 109, 1, NULL),
(112, 112, 1, NULL),
(113, 113, 1, NULL),
(114, 114, 1, NULL),
(115, 115, 1, NULL),
(116, 116, 1, NULL),
(117, 117, 1, NULL),
(118, 118, 1, NULL),
(119, 119, 1, NULL),
(120, 120, 1, NULL),
(121, 121, 1, NULL),
(122, 122, 1, NULL),
(123, 123, 1, NULL),
(124, 124, 1, NULL),
(125, 125, 1, NULL),
(126, 126, 1, NULL),
(127, 127, 1, NULL),
(128, 128, 1, NULL),
(129, 129, 1, NULL),
(130, 130, 1, NULL),
(131, 131, 1, NULL),
(132, 132, 1, NULL),
(133, 133, 1, NULL),
(134, 134, 1, NULL),
(135, 135, 1, NULL),
(136, 136, 1, NULL),
(137, 137, 1, NULL),
(138, 138, 1, NULL),
(139, 139, 1, NULL),
(140, 140, 1, NULL),
(141, 141, 1, NULL),
(142, 142, 1, NULL),
(143, 143, 1, NULL),
(144, 144, 1, NULL),
(145, 145, 1, NULL),
(146, 146, 1, NULL),
(147, 147, 1, NULL),
(148, 148, 1, NULL),
(149, 149, 1, NULL),
(150, 150, 1, NULL),
(151, 151, 1, NULL),
(152, 152, 1, NULL),
(153, 153, 1, NULL),
(154, 154, 1, NULL),
(155, 155, 1, NULL),
(156, 156, 1, NULL),
(157, 157, 1, NULL),
(158, 158, 1, NULL),
(159, 159, 1, NULL),
(160, 160, 1, NULL),
(262, 262, 1, NULL),
(263, 263, 1, NULL),
(264, 264, 1, NULL),
(265, 265, 1, NULL),
(266, 266, 1, NULL),
(267, 267, 1, NULL),
(290, 290, 1, NULL),
(292, 292, 1, NULL),
(294, 294, 1, NULL),
(310, 310, 1, NULL),
(311, 311, 1, NULL),
(312, 312, 1, NULL),
(313, 313, 1, NULL),
(334, 334, 1, NULL),
(356, 356, 1, NULL),
(359, 359, 1, NULL),
(362, 362, 1, NULL),
(365, 365, 1, NULL),
(391, 391, 1, NULL),
(392, 392, 1, NULL),
(393, 393, 1, NULL),
(412, 412, 1, NULL),
(413, 413, 1, NULL),
(414, 414, 1, NULL),
(421, 421, 1, NULL),
(422, 422, 1, NULL),
(423, 423, 1, NULL),
(424, 424, 1, NULL),
(425, 425, 1, NULL),
(426, 426, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2022-10-13 22:58:15.210000', '2022-10-13 22:58:15.210000', NULL, NULL),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2022-10-13 22:58:15.221000', '2022-10-13 22:58:15.221000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2022-10-13 22:58:15.225000', '2022-10-13 22:58:15.225000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'santiago', 'avilez', NULL, 'santiagolingreed@gmail.com', '$2a$10$cXB7sRybFL9XMuX9bw2b4u4Z4gXDEQZ3.7DltZ9kyWdPLrKagHrOe', NULL, NULL, 1, 0, NULL, '2022-10-13 22:59:02.026000', '2022-10-13 22:59:02.026000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_users_roles_links`
--

CREATE TABLE `admin_users_roles_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `role_order` int(10) UNSIGNED DEFAULT NULL,
  `user_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`id`, `user_id`, `role_id`, `role_order`, `user_order`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `state`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `slug`) VALUES
(1, 'Niñera', 1, '2022-10-13 23:06:45.809000', '2022-11-13 20:20:06.545000', '2022-10-13 23:06:51.776000', 1, 1, 'ninera'),
(2, 'Construcción', 1, '2022-10-24 21:02:53.527000', '2022-11-13 20:20:15.776000', '2022-10-24 21:03:26.926000', 1, 1, 'construccion'),
(3, 'Ama de casa', 1, '2022-10-24 21:03:04.789000', '2022-11-13 20:20:23.788000', '2022-10-24 21:03:31.354000', 1, 1, 'ama-de-casa'),
(4, 'Electricista', 1, '2022-10-24 21:03:44.472000', '2022-11-13 20:19:10.062000', '2022-10-24 21:03:45.804000', 1, 1, 'electricista'),
(5, 'Paseador de perros', 1, '2022-10-24 21:04:04.368000', '2022-11-13 20:19:21.306000', '2022-10-24 21:04:04.975000', 1, 1, 'paseador-de-perros'),
(6, 'Desarrollador web', NULL, '2022-12-06 02:17:17.384000', '2022-12-06 04:11:27.659000', '2022-12-06 04:11:27.657000', 1, 1, 'desarrollador-web');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories_city_links`
--

CREATE TABLE `categories_city_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories_lender_links`
--

CREATE TABLE `categories_lender_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `lender_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories_provinces_links`
--

CREATE TABLE `categories_provinces_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `province_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `identificador` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `identificador`, `slug`) VALUES
(62, 'El Condor', '2022-11-01 14:52:07.294000', '2022-11-04 23:49:31.649000', '2022-11-01 14:52:07.292000', NULL, 1, '62007020000', 'el-condor'),
(73, 'General Roca', '2022-11-01 18:54:12.877000', '2022-11-04 23:49:39.778000', '2022-11-01 18:54:12.875000', NULL, 1, '62042450000', 'general-roca'),
(74, 'Azara', '2022-11-01 19:15:45.363000', '2022-11-05 00:12:32.498000', '2022-11-01 19:15:45.355000', NULL, 1, '54007020000', 'azara'),
(76, 'Candelaria', '2022-11-05 16:04:31.940000', '2022-11-05 16:04:31.940000', '2022-11-05 16:04:31.938000', NULL, NULL, '74007010000', 'candelaria'),
(77, 'Colonia Suiza', '2022-11-05 17:16:57.010000', '2022-11-05 17:18:54.828000', '2022-11-05 17:16:57.007000', NULL, 1, '62021020000', 'colonia-suiza'),
(78, 'Lamarque', '2022-11-05 17:19:35.883000', '2022-11-05 17:19:35.883000', '2022-11-05 17:19:35.881000', NULL, NULL, '62014070000', 'lamarque'),
(80, 'Guardia Mitre', '2022-11-10 21:22:44.410000', '2022-11-10 21:22:44.410000', '2022-11-10 21:22:44.405000', NULL, NULL, '62007040000', 'guardia-mitre'),
(81, 'Ushuaia', '2022-11-10 21:23:41.419000', '2022-11-10 21:23:41.419000', '2022-11-10 21:23:41.415000', NULL, NULL, '94015020000', 'ushuaia'),
(82, 'General Fernandez Oro', '2022-11-13 17:04:35.219000', '2022-11-17 18:47:01.362000', '2022-11-13 17:04:35.215000', NULL, 1, '62042440000', 'general-fernandez-oro'),
(84, 'Neuquen', '2022-11-17 16:04:40.525000', '2022-11-17 16:04:40.525000', '2022-11-17 16:04:40.523000', NULL, NULL, '58035070000', 'neuquen'),
(86, 'Apostoles', '2022-11-17 18:20:44.229000', '2022-11-17 18:20:44.229000', '2022-11-17 18:20:44.226000', NULL, NULL, '54007010000', 'apostoles'),
(90, 'Leandro N. Alem', '2022-11-17 18:42:31.578000', '2022-11-17 18:47:05.442000', '2022-11-17 18:42:31.576000', NULL, 1, '74007030000', 'leandro-n-alem'),
(92, 'Rio Muerto', '2022-11-17 18:49:17.140000', '2022-11-17 18:49:17.140000', '2022-11-17 18:49:17.138000', NULL, NULL, '22007040000', 'rio-muerto'),
(93, 'Hocker', '2022-12-03 01:46:03.641000', '2022-12-03 01:46:03.641000', '2022-12-03 01:46:03.635000', NULL, NULL, '30008050000', 'hocker');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities_province_links`
--

CREATE TABLE `cities_province_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `province_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cities_province_links`
--

INSERT INTO `cities_province_links` (`id`, `city_id`, `province_id`) VALUES
(21, 76, 13),
(26, 81, 20),
(33, 62, 4),
(34, 73, 4),
(35, 74, 4),
(36, 77, 4),
(37, 78, 4),
(38, 80, 4),
(39, 84, 21),
(41, 86, 10),
(42, 82, 4),
(43, 90, 4),
(44, 92, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `custom_apis`
--

CREATE TABLE `custom_apis` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `selected_content_type` json DEFAULT NULL,
  `structure` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` json DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` json DEFAULT NULL,
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `files`
--

INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Recorrido-3K.jpg', 'Recorrido-3K.jpg', 'Recorrido-3K.jpg', 855, 688, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Recorrido_3_K_e2145fa2be.jpg\", \"hash\": \"small_Recorrido_3_K_e2145fa2be\", \"mime\": \"image/jpeg\", \"name\": \"small_Recorrido-3K.jpg\", \"path\": null, \"size\": 37.97, \"width\": 500, \"height\": 402}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Recorrido_3_K_e2145fa2be.jpg\", \"hash\": \"medium_Recorrido_3_K_e2145fa2be\", \"mime\": \"image/jpeg\", \"name\": \"medium_Recorrido-3K.jpg\", \"path\": null, \"size\": 68.27, \"width\": 750, \"height\": 604}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Recorrido_3_K_e2145fa2be.jpg\", \"hash\": \"thumbnail_Recorrido_3_K_e2145fa2be\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Recorrido-3K.jpg\", \"path\": null, \"size\": 9.49, \"width\": 194, \"height\": 156}}', 'Recorrido_3_K_e2145fa2be', '.jpg', 'image/jpeg', '81.37', '/uploads/Recorrido_3_K_e2145fa2be.jpg', NULL, 'local', NULL, '/', '2022-11-09 16:01:45.949000', '2022-11-14 20:58:00.853000', 1, 1),
(41, 'Portada.png', NULL, NULL, 1920, 1080, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_Portada_b365cc4120.png\", \"hash\": \"large_Portada_b365cc4120\", \"mime\": \"image/png\", \"name\": \"large_Portada.png\", \"path\": null, \"size\": 712.96, \"width\": 1000, \"height\": 563}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_Portada_b365cc4120.png\", \"hash\": \"small_Portada_b365cc4120\", \"mime\": \"image/png\", \"name\": \"small_Portada.png\", \"path\": null, \"size\": 192.89, \"width\": 500, \"height\": 281}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_Portada_b365cc4120.png\", \"hash\": \"medium_Portada_b365cc4120\", \"mime\": \"image/png\", \"name\": \"medium_Portada.png\", \"path\": null, \"size\": 407.78, \"width\": 750, \"height\": 422}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Portada_b365cc4120.png\", \"hash\": \"thumbnail_Portada_b365cc4120\", \"mime\": \"image/png\", \"name\": \"thumbnail_Portada.png\", \"path\": null, \"size\": 57.07, \"width\": 245, \"height\": 138}}', 'Portada_b365cc4120', '.png', 'image/png', '1814.50', '/uploads/Portada_b365cc4120.png', NULL, 'local', NULL, '/1', '2022-11-09 17:51:45.132000', '2022-11-09 17:51:45.132000', NULL, NULL),
(42, 'Recorrido-3K.jpg', NULL, NULL, 855, 688, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Recorrido_3_K_424a07cb5f.jpg\", \"hash\": \"small_Recorrido_3_K_424a07cb5f\", \"mime\": \"image/jpeg\", \"name\": \"small_Recorrido-3K.jpg\", \"path\": null, \"size\": 37.97, \"width\": 500, \"height\": 402}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Recorrido_3_K_424a07cb5f.jpg\", \"hash\": \"medium_Recorrido_3_K_424a07cb5f\", \"mime\": \"image/jpeg\", \"name\": \"medium_Recorrido-3K.jpg\", \"path\": null, \"size\": 68.27, \"width\": 750, \"height\": 604}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Recorrido_3_K_424a07cb5f.jpg\", \"hash\": \"thumbnail_Recorrido_3_K_424a07cb5f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Recorrido-3K.jpg\", \"path\": null, \"size\": 9.49, \"width\": 194, \"height\": 156}}', 'Recorrido_3_K_424a07cb5f', '.jpg', 'image/jpeg', '81.37', '/uploads/Recorrido_3_K_424a07cb5f.jpg', NULL, 'local', NULL, '/1', '2022-11-10 19:35:15.398000', '2022-11-10 19:35:15.398000', NULL, NULL),
(43, '20220930_141320.jpg', NULL, NULL, 4160, 3120, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_20220930_141320_7c202b689a.jpg\", \"hash\": \"large_20220930_141320_7c202b689a\", \"mime\": \"image/jpeg\", \"name\": \"large_20220930_141320.jpg\", \"path\": null, \"size\": 82.06, \"width\": 1000, \"height\": 750}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_20220930_141320_7c202b689a.jpg\", \"hash\": \"small_20220930_141320_7c202b689a\", \"mime\": \"image/jpeg\", \"name\": \"small_20220930_141320.jpg\", \"path\": null, \"size\": 25.05, \"width\": 500, \"height\": 375}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_20220930_141320_7c202b689a.jpg\", \"hash\": \"medium_20220930_141320_7c202b689a\", \"mime\": \"image/jpeg\", \"name\": \"medium_20220930_141320.jpg\", \"path\": null, \"size\": 50.07, \"width\": 750, \"height\": 563}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_20220930_141320_7c202b689a.jpg\", \"hash\": \"thumbnail_20220930_141320_7c202b689a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_20220930_141320.jpg\", \"path\": null, \"size\": 5.63, \"width\": 208, \"height\": 156}}', '20220930_141320_7c202b689a', '.jpg', 'image/jpeg', '1608.00', '/uploads/20220930_141320_7c202b689a.jpg', NULL, 'local', NULL, '/1', '2022-11-10 19:38:33.675000', '2022-11-10 19:38:33.675000', NULL, NULL),
(45, 'Logo negativo.png', NULL, NULL, 383, 383, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Logo_negativo_405b49038a.png\", \"hash\": \"thumbnail_Logo_negativo_405b49038a\", \"mime\": \"image/png\", \"name\": \"thumbnail_Logo negativo.png\", \"path\": null, \"size\": 8.11, \"width\": 156, \"height\": 156}}', 'Logo_negativo_405b49038a', '.png', 'image/png', '9.07', '/uploads/Logo_negativo_405b49038a.png', NULL, 'local', NULL, '/1', '2022-11-10 19:41:42.241000', '2022-11-10 19:41:42.241000', NULL, NULL),
(46, 'UNCO_ACT_50_ST_1.jpg', NULL, NULL, 1081, 1921, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_UNCO_ACT_50_ST_1_c077b595a3.jpg\", \"hash\": \"large_UNCO_ACT_50_ST_1_c077b595a3\", \"mime\": \"image/jpeg\", \"name\": \"large_UNCO_ACT_50_ST_1.jpg\", \"path\": null, \"size\": 129.4, \"width\": 563, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_UNCO_ACT_50_ST_1_c077b595a3.jpg\", \"hash\": \"small_UNCO_ACT_50_ST_1_c077b595a3\", \"mime\": \"image/jpeg\", \"name\": \"small_UNCO_ACT_50_ST_1.jpg\", \"path\": null, \"size\": 42.85, \"width\": 281, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_UNCO_ACT_50_ST_1_c077b595a3.jpg\", \"hash\": \"medium_UNCO_ACT_50_ST_1_c077b595a3\", \"mime\": \"image/jpeg\", \"name\": \"medium_UNCO_ACT_50_ST_1.jpg\", \"path\": null, \"size\": 83.53, \"width\": 422, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_UNCO_ACT_50_ST_1_c077b595a3.jpg\", \"hash\": \"thumbnail_UNCO_ACT_50_ST_1_c077b595a3\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_UNCO_ACT_50_ST_1.jpg\", \"path\": null, \"size\": 5.11, \"width\": 88, \"height\": 156}}', 'UNCO_ACT_50_ST_1_c077b595a3', '.jpg', 'image/jpeg', '302.98', '/uploads/UNCO_ACT_50_ST_1_c077b595a3.jpg', NULL, 'local', NULL, '/1', '2022-11-10 19:42:11.664000', '2022-11-10 19:42:11.664000', NULL, NULL),
(53, 'Logo negativo.png', NULL, NULL, 383, 383, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Logo_negativo_4c1086cd96.png\", \"hash\": \"thumbnail_Logo_negativo_4c1086cd96\", \"mime\": \"image/png\", \"name\": \"thumbnail_Logo negativo.png\", \"path\": null, \"size\": 8.11, \"width\": 156, \"height\": 156}}', 'Logo_negativo_4c1086cd96', '.png', 'image/png', '9.07', '/uploads/Logo_negativo_4c1086cd96.png', NULL, 'local', NULL, '/1', '2022-11-13 17:40:18.503000', '2022-11-13 17:40:18.503000', NULL, NULL),
(54, 'Logo negativo.png', NULL, NULL, 383, 383, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Logo_negativo_ea64c4f8b9.png\", \"hash\": \"thumbnail_Logo_negativo_ea64c4f8b9\", \"mime\": \"image/png\", \"name\": \"thumbnail_Logo negativo.png\", \"path\": null, \"size\": 8.11, \"width\": 156, \"height\": 156}}', 'Logo_negativo_ea64c4f8b9', '.png', 'image/png', '9.07', '/uploads/Logo_negativo_ea64c4f8b9.png', NULL, 'local', NULL, '/1', '2022-11-13 17:41:14.072000', '2022-11-13 17:41:14.072000', NULL, NULL),
(55, 'Logo negativo.png', NULL, NULL, 383, 383, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Logo_negativo_23e4c56d53.png\", \"hash\": \"thumbnail_Logo_negativo_23e4c56d53\", \"mime\": \"image/png\", \"name\": \"thumbnail_Logo negativo.png\", \"path\": null, \"size\": 8.11, \"width\": 156, \"height\": 156}}', 'Logo_negativo_23e4c56d53', '.png', 'image/png', '9.07', '/uploads/Logo_negativo_23e4c56d53.png', NULL, 'local', NULL, '/1', '2022-11-13 21:34:31.765000', '2022-11-13 21:34:31.765000', NULL, NULL),
(56, 'Logo negativo.png', NULL, NULL, 383, 383, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Logo_negativo_ba890a7533.png\", \"hash\": \"thumbnail_Logo_negativo_ba890a7533\", \"mime\": \"image/png\", \"name\": \"thumbnail_Logo negativo.png\", \"path\": null, \"size\": 8.11, \"width\": 156, \"height\": 156}}', 'Logo_negativo_ba890a7533', '.png', 'image/png', '9.07', '/uploads/Logo_negativo_ba890a7533.png', NULL, 'local', NULL, '/1', '2022-11-14 20:40:46.527000', '2022-11-14 20:40:46.527000', NULL, NULL),
(57, 'Logo negativo.png', NULL, NULL, 383, 383, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Logo_negativo_6b0d48909c.png\", \"hash\": \"thumbnail_Logo_negativo_6b0d48909c\", \"mime\": \"image/png\", \"name\": \"thumbnail_Logo negativo.png\", \"path\": null, \"size\": 8.11, \"width\": 156, \"height\": 156}}', 'Logo_negativo_6b0d48909c', '.png', 'image/png', '9.07', '/uploads/Logo_negativo_6b0d48909c.png', NULL, 'local', NULL, '/1', '2022-11-15 12:20:21.839000', '2022-11-15 12:20:21.839000', NULL, NULL),
(58, 'Logo negativo.png', NULL, NULL, 383, 383, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Logo_negativo_1e8d9d117e.png\", \"hash\": \"thumbnail_Logo_negativo_1e8d9d117e\", \"mime\": \"image/png\", \"name\": \"thumbnail_Logo negativo.png\", \"path\": null, \"size\": 8.11, \"width\": 156, \"height\": 156}}', 'Logo_negativo_1e8d9d117e', '.png', 'image/png', '9.07', '/uploads/Logo_negativo_1e8d9d117e.png', NULL, 'local', NULL, '/1', '2022-11-15 12:26:20.257000', '2022-11-15 12:26:20.257000', NULL, NULL),
(59, 'Logo negativo.png', NULL, NULL, 383, 383, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Logo_negativo_2e7e92c59f.png\", \"hash\": \"thumbnail_Logo_negativo_2e7e92c59f\", \"mime\": \"image/png\", \"name\": \"thumbnail_Logo negativo.png\", \"path\": null, \"size\": 8.11, \"width\": 156, \"height\": 156}}', 'Logo_negativo_2e7e92c59f', '.png', 'image/png', '9.07', '/uploads/Logo_negativo_2e7e92c59f.png', NULL, 'local', NULL, '/1', '2022-11-15 12:27:37.755000', '2022-11-15 12:27:37.755000', NULL, NULL),
(60, 'Logo negativo.png', NULL, NULL, 383, 383, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Logo_negativo_c65a319136.png\", \"hash\": \"thumbnail_Logo_negativo_c65a319136\", \"mime\": \"image/png\", \"name\": \"thumbnail_Logo negativo.png\", \"path\": null, \"size\": 8.11, \"width\": 156, \"height\": 156}}', 'Logo_negativo_c65a319136', '.png', 'image/png', '9.07', '/uploads/Logo_negativo_c65a319136.png', NULL, 'local', NULL, '/1', '2022-11-17 15:06:29.173000', '2022-11-17 15:06:29.173000', NULL, NULL),
(61, 'Logo negativo.png', NULL, NULL, 383, 383, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Logo_negativo_b0d7f3a101.png\", \"hash\": \"thumbnail_Logo_negativo_b0d7f3a101\", \"mime\": \"image/png\", \"name\": \"thumbnail_Logo negativo.png\", \"path\": null, \"size\": 8.11, \"width\": 156, \"height\": 156}}', 'Logo_negativo_b0d7f3a101', '.png', 'image/png', '9.07', '/uploads/Logo_negativo_b0d7f3a101.png', NULL, 'local', NULL, '/1', '2022-11-17 15:06:29.170000', '2022-11-17 15:06:29.170000', NULL, NULL),
(62, 'Logo negativo.png', NULL, NULL, 383, 383, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Logo_negativo_6914a979aa.png\", \"hash\": \"thumbnail_Logo_negativo_6914a979aa\", \"mime\": \"image/png\", \"name\": \"thumbnail_Logo negativo.png\", \"path\": null, \"size\": 8.11, \"width\": 156, \"height\": 156}}', 'Logo_negativo_6914a979aa', '.png', 'image/png', '9.07', '/uploads/Logo_negativo_6914a979aa.png', NULL, 'local', NULL, '/1', '2022-11-17 15:08:02.809000', '2022-11-17 15:08:02.809000', NULL, NULL),
(63, 'Logo negativo.png', NULL, NULL, 383, 383, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Logo_negativo_c841434fc2.png\", \"hash\": \"thumbnail_Logo_negativo_c841434fc2\", \"mime\": \"image/png\", \"name\": \"thumbnail_Logo negativo.png\", \"path\": null, \"size\": 8.11, \"width\": 156, \"height\": 156}}', 'Logo_negativo_c841434fc2', '.png', 'image/png', '9.07', '/uploads/Logo_negativo_c841434fc2.png', NULL, 'local', NULL, '/1', '2022-11-17 15:08:02.825000', '2022-11-17 15:08:02.825000', NULL, NULL),
(64, 'Logo negativo.png', NULL, NULL, 383, 383, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Logo_negativo_70d5da34e9.png\", \"hash\": \"thumbnail_Logo_negativo_70d5da34e9\", \"mime\": \"image/png\", \"name\": \"thumbnail_Logo negativo.png\", \"path\": null, \"size\": 8.11, \"width\": 156, \"height\": 156}}', 'Logo_negativo_70d5da34e9', '.png', 'image/png', '9.07', '/uploads/Logo_negativo_70d5da34e9.png', NULL, 'local', NULL, '/1', '2022-11-17 15:33:22.228000', '2022-11-17 15:33:22.228000', NULL, NULL),
(65, 'Logo negativo.png', NULL, NULL, 383, 383, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Logo_negativo_0a97d645c1.png\", \"hash\": \"thumbnail_Logo_negativo_0a97d645c1\", \"mime\": \"image/png\", \"name\": \"thumbnail_Logo negativo.png\", \"path\": null, \"size\": 8.11, \"width\": 156, \"height\": 156}}', 'Logo_negativo_0a97d645c1', '.png', 'image/png', '9.07', '/uploads/Logo_negativo_0a97d645c1.png', NULL, 'local', NULL, '/1', '2022-11-17 15:33:22.249000', '2022-11-17 15:33:22.249000', NULL, NULL),
(66, 'Logo negativo.png', NULL, NULL, 383, 383, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Logo_negativo_5fddc2d509.png\", \"hash\": \"thumbnail_Logo_negativo_5fddc2d509\", \"mime\": \"image/png\", \"name\": \"thumbnail_Logo negativo.png\", \"path\": null, \"size\": 8.11, \"width\": 156, \"height\": 156}}', 'Logo_negativo_5fddc2d509', '.png', 'image/png', '9.07', '/uploads/Logo_negativo_5fddc2d509.png', NULL, 'local', NULL, '/1', '2022-11-17 15:40:22.565000', '2022-11-17 15:40:22.565000', NULL, NULL),
(67, 'Logo negativo.png', NULL, NULL, 383, 383, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Logo_negativo_026c51daf6.png\", \"hash\": \"thumbnail_Logo_negativo_026c51daf6\", \"mime\": \"image/png\", \"name\": \"thumbnail_Logo negativo.png\", \"path\": null, \"size\": 8.11, \"width\": 156, \"height\": 156}}', 'Logo_negativo_026c51daf6', '.png', 'image/png', '9.07', '/uploads/Logo_negativo_026c51daf6.png', NULL, 'local', NULL, '/1', '2022-11-17 15:40:22.597000', '2022-11-17 15:40:22.597000', NULL, NULL),
(68, 'Logo negativo.png', NULL, NULL, 383, 383, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Logo_negativo_c00ed2f474.png\", \"hash\": \"thumbnail_Logo_negativo_c00ed2f474\", \"mime\": \"image/png\", \"name\": \"thumbnail_Logo negativo.png\", \"path\": null, \"size\": 8.11, \"width\": 156, \"height\": 156}}', 'Logo_negativo_c00ed2f474', '.png', 'image/png', '9.07', '/uploads/Logo_negativo_c00ed2f474.png', NULL, 'local', NULL, '/1', '2022-11-17 15:55:08.904000', '2022-11-17 15:55:08.904000', NULL, NULL),
(69, 'Logo negativo.png', NULL, NULL, 383, 383, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Logo_negativo_033c4943ed.png\", \"hash\": \"thumbnail_Logo_negativo_033c4943ed\", \"mime\": \"image/png\", \"name\": \"thumbnail_Logo negativo.png\", \"path\": null, \"size\": 8.11, \"width\": 156, \"height\": 156}}', 'Logo_negativo_033c4943ed', '.png', 'image/png', '9.07', '/uploads/Logo_negativo_033c4943ed.png', NULL, 'local', NULL, '/1', '2022-11-17 15:55:08.910000', '2022-11-17 15:55:08.910000', NULL, NULL),
(70, 'Logo negativo.png', NULL, NULL, 383, 383, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Logo_negativo_41b5200a29.png\", \"hash\": \"thumbnail_Logo_negativo_41b5200a29\", \"mime\": \"image/png\", \"name\": \"thumbnail_Logo negativo.png\", \"path\": null, \"size\": 8.11, \"width\": 156, \"height\": 156}}', 'Logo_negativo_41b5200a29', '.png', 'image/png', '9.07', '/uploads/Logo_negativo_41b5200a29.png', NULL, 'local', NULL, '/1', '2022-11-17 15:57:10.019000', '2022-11-17 15:57:10.019000', NULL, NULL),
(71, 'Logo negativo.png', NULL, NULL, 383, 383, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Logo_negativo_ba41d34d5a.png\", \"hash\": \"thumbnail_Logo_negativo_ba41d34d5a\", \"mime\": \"image/png\", \"name\": \"thumbnail_Logo negativo.png\", \"path\": null, \"size\": 8.11, \"width\": 156, \"height\": 156}}', 'Logo_negativo_ba41d34d5a', '.png', 'image/png', '9.07', '/uploads/Logo_negativo_ba41d34d5a.png', NULL, 'local', NULL, '/1', '2022-11-17 16:09:20.596000', '2022-11-17 16:09:20.596000', NULL, NULL),
(72, 'Logo negativo.png', NULL, NULL, 383, 383, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Logo_negativo_8989266c28.png\", \"hash\": \"thumbnail_Logo_negativo_8989266c28\", \"mime\": \"image/png\", \"name\": \"thumbnail_Logo negativo.png\", \"path\": null, \"size\": 8.11, \"width\": 156, \"height\": 156}}', 'Logo_negativo_8989266c28', '.png', 'image/png', '9.07', '/uploads/Logo_negativo_8989266c28.png', NULL, 'local', NULL, '/1', '2022-11-17 16:09:20.618000', '2022-11-17 16:09:20.618000', NULL, NULL),
(73, 'Logo negativo.png', NULL, NULL, 383, 383, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Logo_negativo_0547d159bc.png\", \"hash\": \"thumbnail_Logo_negativo_0547d159bc\", \"mime\": \"image/png\", \"name\": \"thumbnail_Logo negativo.png\", \"path\": null, \"size\": 8.11, \"width\": 156, \"height\": 156}}', 'Logo_negativo_0547d159bc', '.png', 'image/png', '9.07', '/uploads/Logo_negativo_0547d159bc.png', NULL, 'local', NULL, '/1', '2022-11-17 18:33:45.302000', '2022-11-17 18:33:45.302000', NULL, NULL),
(74, 'Logo negativo.png', NULL, NULL, 383, 383, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Logo_negativo_a127b34077.png\", \"hash\": \"thumbnail_Logo_negativo_a127b34077\", \"mime\": \"image/png\", \"name\": \"thumbnail_Logo negativo.png\", \"path\": null, \"size\": 8.11, \"width\": 156, \"height\": 156}}', 'Logo_negativo_a127b34077', '.png', 'image/png', '9.07', '/uploads/Logo_negativo_a127b34077.png', NULL, 'local', NULL, '/1', '2022-11-17 18:33:51.103000', '2022-11-17 18:33:51.103000', NULL, NULL),
(75, 'WhatsApp Image 2022-11-02 at 14.28.52.jpeg', NULL, NULL, 900, 1600, '{\"large\": {\"ext\": \".jpeg\", \"url\": \"/uploads/large_Whats_App_Image_2022_11_02_at_14_28_52_c376e7d08d.jpeg\", \"hash\": \"large_Whats_App_Image_2022_11_02_at_14_28_52_c376e7d08d\", \"mime\": \"image/jpeg\", \"name\": \"large_WhatsApp Image 2022-11-02 at 14.28.52.jpeg\", \"path\": null, \"size\": 75.91, \"width\": 563, \"height\": 1000}, \"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_Whats_App_Image_2022_11_02_at_14_28_52_c376e7d08d.jpeg\", \"hash\": \"small_Whats_App_Image_2022_11_02_at_14_28_52_c376e7d08d\", \"mime\": \"image/jpeg\", \"name\": \"small_WhatsApp Image 2022-11-02 at 14.28.52.jpeg\", \"path\": null, \"size\": 25.35, \"width\": 281, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_Whats_App_Image_2022_11_02_at_14_28_52_c376e7d08d.jpeg\", \"hash\": \"medium_Whats_App_Image_2022_11_02_at_14_28_52_c376e7d08d\", \"mime\": \"image/jpeg\", \"name\": \"medium_WhatsApp Image 2022-11-02 at 14.28.52.jpeg\", \"path\": null, \"size\": 48.15, \"width\": 422, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_Whats_App_Image_2022_11_02_at_14_28_52_c376e7d08d.jpeg\", \"hash\": \"thumbnail_Whats_App_Image_2022_11_02_at_14_28_52_c376e7d08d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_WhatsApp Image 2022-11-02 at 14.28.52.jpeg\", \"path\": null, \"size\": 3.71, \"width\": 87, \"height\": 156}}', 'Whats_App_Image_2022_11_02_at_14_28_52_c376e7d08d', '.jpeg', 'image/jpeg', '147.29', '/uploads/Whats_App_Image_2022_11_02_at_14_28_52_c376e7d08d.jpeg', NULL, 'local', NULL, '/1', '2022-11-19 18:22:17.785000', '2022-11-19 18:22:17.785000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files_folder_links`
--

CREATE TABLE `files_folder_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `file_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `files_folder_links`
--

INSERT INTO `files_folder_links` (`id`, `file_id`, `folder_id`, `file_order`) VALUES
(40, 41, 1, NULL),
(41, 42, 1, NULL),
(42, 43, 1, NULL),
(44, 45, 1, NULL),
(45, 46, 1, NULL),
(53, 53, 1, NULL),
(54, 54, 1, NULL),
(55, 55, 1, NULL),
(56, 56, 1, NULL),
(57, 57, 1, NULL),
(58, 58, 1, NULL),
(59, 59, 1, NULL),
(60, 60, 1, NULL),
(61, 61, 1, NULL),
(62, 62, 1, NULL),
(63, 63, 1, NULL),
(64, 64, 1, NULL),
(65, 65, 1, NULL),
(66, 66, 1, NULL),
(67, 67, 1, NULL),
(68, 68, 1, NULL),
(69, 69, 1, NULL),
(70, 70, 1, NULL),
(71, 71, 1, NULL),
(72, 72, 1, NULL),
(73, 73, 1, NULL),
(74, 74, 1, NULL),
(75, 75, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files_related_morphs`
--

CREATE TABLE `files_related_morphs` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `files_related_morphs`
--

INSERT INTO `files_related_morphs` (`id`, `file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(16, 1, 59, 'plugin::users-permissions.user', 'profile_pic', 1),
(21, 65, 88, 'plugin::users-permissions.user', 'profile_pic', 1),
(23, 70, 93, 'plugin::users-permissions.user', 'profile_pic', 1),
(25, 69, 92, 'plugin::users-permissions.user', 'profile_pic', 1),
(27, 63, 82, 'plugin::users-permissions.user', 'profile_pic', 1),
(30, 72, 97, 'plugin::users-permissions.user', 'profile_pic', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'English (en)', 'en', '2022-10-13 22:58:15.155000', '2022-10-13 22:58:15.155000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lenders`
--

CREATE TABLE `lenders` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `acepted` tinyint(1) DEFAULT NULL,
  `rejected` tinyint(1) DEFAULT NULL,
  `canceled` tinyint(1) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `comment` longtext,
  `review_updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `read`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `acepted`, `rejected`, `canceled`, `score`, `comment`, `review_updated_at`) VALUES
(2017, 'Review', 1, '2022-11-26 23:01:20.762000', '2022-11-27 16:34:19.145000', NULL, 1, NULL, NULL, NULL, 3, 'prueba x', '2022-11-26 21:12:00.000000'),
(2018, 'Review', NULL, '2022-11-26 23:25:28.629000', '2022-11-26 23:25:28.629000', NULL, NULL, NULL, NULL, NULL, 5, 'prueba notificacion', NULL),
(2019, 'Review', 1, '2022-11-26 23:26:45.873000', '2022-11-27 16:34:17.696000', NULL, 1, NULL, NULL, NULL, 5, 'Prueba notificacion', '2022-11-27 12:19:00.000000'),
(2023, 'Hire', 1, '2022-11-28 13:00:34.192000', '2022-11-28 13:29:32.350000', NULL, NULL, 1, 0, 0, NULL, NULL, '2022-11-28 13:00:34.178000'),
(2024, 'Hire', 1, '2022-11-28 14:04:37.029000', '2022-11-28 14:26:09.928000', NULL, NULL, 1, 0, 0, NULL, NULL, '2022-11-28 14:04:36.975000'),
(2025, 'Review', 1, '2022-11-28 14:07:22.588000', '2022-11-28 14:46:05.742000', NULL, NULL, NULL, 0, 0, 5, 'sos un crack', '2022-11-28 14:07:22.586000'),
(2026, 'Hire', 1, '2022-11-28 15:21:33.626000', '2022-11-28 15:24:58.244000', NULL, NULL, 1, 0, 0, NULL, NULL, '2022-11-28 15:21:33.608000'),
(2027, 'Reply', 1, '2022-11-28 15:22:24.286000', '2022-11-28 15:22:36.511000', NULL, NULL, NULL, 0, 0, NULL, NULL, '2022-11-28 15:22:24.259000'),
(2028, 'Review', 1, '2022-11-28 15:23:11.908000', '2022-11-28 15:23:32.509000', NULL, NULL, NULL, 0, 0, 5, 'sos genial capo', '2022-11-28 15:23:11.907000'),
(2029, 'Reply', 1, '2022-11-28 15:24:58.242000', '2022-11-28 15:25:20.024000', NULL, NULL, NULL, 0, 0, NULL, NULL, '2022-11-28 15:24:58.218000'),
(2030, 'Hire', 1, '2022-11-28 15:28:27.164000', '2022-11-28 15:28:37.730000', NULL, NULL, 1, 0, 0, NULL, NULL, '2022-11-28 15:28:26.822000'),
(2031, 'Reply', 1, '2022-11-28 15:28:37.727000', '2022-11-28 15:29:09.347000', NULL, NULL, 0, 0, 0, NULL, NULL, '2022-11-28 15:28:37.705000'),
(2032, 'Review', 1, '2022-11-28 15:29:28.639000', '2022-11-28 15:29:56.210000', NULL, NULL, 0, 0, 0, 5, 'prueba de cosas de notificaciones', '2022-11-28 15:29:28.638000'),
(2033, 'Review', 1, '2022-11-28 15:29:42.499000', '2022-11-28 15:29:55.425000', NULL, NULL, 0, 0, 0, 3, 'prueba de cosas de notificaciones', '2022-11-28 15:29:42.496000'),
(2034, 'Review', 1, '2022-11-28 15:39:33.774000', '2022-11-28 15:46:55.913000', NULL, NULL, 0, 0, 0, 4, 'prueba de cosas de notificaciones y acasa', '2022-11-28 15:39:33.772000'),
(2035, 'Review', 1, '2022-11-28 15:39:36.695000', '2022-11-28 15:46:54.776000', NULL, NULL, 0, 0, 0, 4, 'prueba de cosas de notificaciones y acasa', '2022-11-28 15:39:36.693000'),
(2130, 'Review', 1, '2022-11-28 18:03:57.859000', '2022-11-28 18:49:49.732000', NULL, NULL, 0, 0, 0, 5, 'sos genial capo', '2022-11-28 18:03:57.856000'),
(2131, 'Review', 1, '2022-11-28 18:04:21.780000', '2022-11-28 18:49:44.846000', NULL, NULL, 0, 0, 0, 5, 'sos genial capo', '2022-11-28 18:04:21.778000'),
(2132, 'Review', 1, '2022-11-28 18:04:28.036000', '2022-11-28 18:49:47.275000', NULL, NULL, 0, 0, 0, 5, 'sos genial capo', '2022-11-28 18:04:28.034000'),
(2133, 'Review', 1, '2022-11-28 18:06:19.054000', '2022-11-28 18:49:41.468000', NULL, NULL, 0, 0, 0, 5, 'sos genial capo', '2022-11-28 18:06:19.052000'),
(2134, 'Review', 1, '2022-11-28 18:06:20.483000', '2022-11-28 18:49:35.627000', NULL, NULL, 0, 0, 0, 5, 'sos genial capo', '2022-11-28 18:06:20.481000'),
(2135, 'Review', 1, '2022-11-28 18:06:21.498000', '2022-11-28 18:49:38.761000', NULL, NULL, 0, 0, 0, 5, 'sos genial capo', '2022-11-28 18:06:21.497000'),
(2136, 'Review', 1, '2022-11-28 18:06:28.387000', '2022-11-28 18:49:39.766000', NULL, NULL, 0, 0, 0, 5, 'sos genial capo', '2022-11-28 18:06:28.385000'),
(2137, 'Review', 1, '2022-11-28 18:06:31.436000', '2022-11-28 18:49:26.279000', NULL, NULL, 0, 0, 0, 5, 'sos genial capo', '2022-11-28 18:06:31.435000'),
(2138, 'Review', 1, '2022-11-28 18:06:34.294000', '2022-11-28 18:49:25.327000', NULL, NULL, 0, 0, 0, 5, 'sos genial capo', '2022-11-28 18:06:34.293000'),
(2139, 'Review', 1, '2022-11-28 18:07:47.884000', '2022-11-28 18:49:56.461000', NULL, NULL, 0, 0, 0, 5, 'sos genial capo', '2022-11-28 18:07:47.882000'),
(2259, 'Hire', 0, '2022-11-28 21:52:42.259000', '2022-11-28 21:52:42.259000', NULL, NULL, NULL, 0, 0, NULL, NULL, '2022-11-28 21:52:42.220000'),
(2289, 'Hire', 1, '2022-11-29 00:58:48.549000', '2022-11-29 00:58:56.531000', NULL, NULL, 1, 0, 0, NULL, NULL, '2022-11-29 00:58:48.517000'),
(2290, 'Reply', 0, '2022-11-29 00:58:56.527000', '2022-11-29 00:58:56.527000', NULL, NULL, NULL, 0, 0, NULL, NULL, '2022-11-29 00:58:56.490000'),
(2291, 'Hire', 1, '2022-11-29 01:08:37.386000', '2022-11-29 01:08:44.886000', NULL, NULL, 1, 0, 0, NULL, NULL, '2022-11-29 01:08:37.360000'),
(2292, 'Reply', 1, '2022-11-29 01:08:44.884000', '2022-11-29 01:08:52.834000', NULL, NULL, 0, 0, 0, NULL, NULL, '2022-11-29 01:08:44.856000'),
(2293, 'Review', 0, '2022-12-04 00:46:53.122000', '2022-12-04 00:46:53.122000', NULL, NULL, NULL, 0, 0, 4, 'prueba notificacion', '2022-12-04 00:46:53.119000'),
(2294, 'Review', 0, '2022-12-04 00:47:36.731000', '2022-12-04 00:47:36.731000', NULL, NULL, NULL, 0, 0, 5, 'prueba notificacionss', '2022-12-04 00:47:36.729000'),
(2295, 'Review', 0, '2022-12-04 00:47:42.713000', '2022-12-04 00:47:42.713000', NULL, NULL, NULL, 0, 0, 5, 'prueba notificacionssss', '2022-12-04 00:47:42.712000'),
(2296, 'Review', 0, '2022-12-04 00:48:17.749000', '2022-12-04 00:48:17.749000', NULL, NULL, NULL, 0, 0, 5, 'prueba notificacionssss', '2022-12-04 00:48:17.748000'),
(2297, 'Review', 0, '2022-12-04 00:49:05.238000', '2022-12-04 00:49:05.238000', NULL, NULL, NULL, 0, 0, 4, 'prueba modal', '2022-12-04 00:49:05.233000'),
(2298, 'Review', 0, '2022-12-04 00:50:14.993000', '2022-12-04 00:50:14.993000', NULL, NULL, NULL, 0, 0, 4, 'prueba modal', '2022-12-04 00:50:14.991000'),
(2299, 'Review', 0, '2022-12-04 00:50:17.658000', '2022-12-04 00:50:17.658000', NULL, NULL, NULL, 0, 0, 4, 'prueba modalss', '2022-12-04 00:50:17.657000'),
(2300, 'Review', 0, '2022-12-04 00:50:19.871000', '2022-12-04 00:50:19.871000', NULL, NULL, NULL, 0, 0, 4, 'prueba modalssss', '2022-12-04 00:50:19.870000'),
(2301, 'Review', 0, '2022-12-04 00:51:24.763000', '2022-12-04 00:51:24.763000', NULL, NULL, NULL, 0, 0, 4, 'prueba modalssssss', '2022-12-04 00:51:24.762000'),
(2302, 'Review', 0, '2022-12-04 00:52:23.156000', '2022-12-04 00:52:23.156000', NULL, NULL, NULL, 0, 0, 5, 'Prueba con modal', '2022-12-04 00:52:23.154000'),
(2303, 'Review', 0, '2022-12-04 00:52:31.051000', '2022-12-04 00:52:31.051000', NULL, NULL, NULL, 0, 0, 5, 'Prueba con modal', '2022-12-04 00:52:31.049000'),
(2304, 'Review', 0, '2022-12-04 00:53:28.735000', '2022-12-04 00:53:28.735000', NULL, NULL, NULL, 0, 0, 5, 'Prueba con modals', '2022-12-04 00:53:28.734000'),
(2305, 'Review', 0, '2022-12-04 00:53:44.800000', '2022-12-04 00:53:44.800000', NULL, NULL, NULL, 0, 0, 5, 'Prueba con modals', '2022-12-04 00:53:44.798000'),
(2306, 'Review', 0, '2022-12-04 00:54:07.448000', '2022-12-04 00:54:07.448000', NULL, NULL, NULL, 0, 0, 5, 'Prueba con modals', '2022-12-04 00:54:07.447000'),
(2307, 'Review', 0, '2022-12-04 00:54:13.506000', '2022-12-04 00:54:13.506000', NULL, NULL, NULL, 0, 0, 5, 'Prueba con modals', '2022-12-04 00:54:13.503000'),
(2308, 'Review', 0, '2022-12-04 00:55:12.147000', '2022-12-04 00:55:12.147000', NULL, NULL, NULL, 0, 0, 5, 'Prueba con modals', '2022-12-04 00:55:12.145000'),
(2309, 'Review', 0, '2022-12-04 00:55:32.773000', '2022-12-04 00:55:32.773000', NULL, NULL, NULL, 0, 0, 5, 'Prueba con modals', '2022-12-04 00:55:32.770000'),
(2310, 'Review', 0, '2022-12-04 00:55:50.648000', '2022-12-04 00:55:50.648000', NULL, NULL, NULL, 0, 0, 5, 'Prueba con modals', '2022-12-04 00:55:50.646000'),
(2311, 'Review', 0, '2022-12-04 00:56:29.785000', '2022-12-04 00:56:29.785000', NULL, NULL, NULL, 0, 0, 5, 'Prueba con modals', '2022-12-04 00:56:29.783000'),
(2312, 'Review', 0, '2022-12-04 00:56:36.152000', '2022-12-04 00:56:36.152000', NULL, NULL, NULL, 0, 0, 5, 'Prueba con modals', '2022-12-04 00:56:36.151000'),
(2313, 'Review', 0, '2022-12-04 00:57:07.213000', '2022-12-04 00:57:07.213000', NULL, NULL, NULL, 0, 0, 5, 'Prueba con modals', '2022-12-04 00:57:07.211000'),
(2320, 'Hire', 1, '2022-12-04 14:48:53.067000', '2022-12-04 14:57:30.165000', NULL, NULL, 1, 0, 0, NULL, NULL, '2022-12-04 14:48:52.982000'),
(2321, 'Hire', 1, '2022-12-04 14:51:44.416000', '2022-12-04 14:54:15.455000', NULL, NULL, 1, 0, 0, NULL, NULL, '2022-12-04 14:51:44.081000'),
(2322, 'Reply', 1, '2022-12-04 14:54:15.451000', '2022-12-05 17:43:05.158000', NULL, NULL, 0, 0, 0, NULL, NULL, '2022-12-04 14:54:15.408000'),
(2323, 'Reply', 1, '2022-12-04 14:57:30.157000', '2022-12-04 15:16:22.874000', NULL, NULL, 0, 0, 0, NULL, NULL, '2022-12-04 14:57:30.083000'),
(2324, 'Review', 0, '2022-12-04 14:59:22.653000', '2022-12-04 14:59:22.653000', NULL, NULL, NULL, 0, 0, 5, 'reseña con notificacion real', '2022-12-04 14:59:22.652000'),
(2325, 'Review', 0, '2022-12-04 15:09:11.346000', '2022-12-04 15:09:11.346000', NULL, NULL, NULL, 0, 0, 5, 'reseña con notificacion real', '2022-12-04 15:09:11.345000'),
(2326, 'Review', 0, '2022-12-04 15:09:25.988000', '2022-12-04 15:09:25.988000', NULL, NULL, NULL, 0, 0, 4, 'reseña con notificacion real', '2022-12-04 15:09:25.986000'),
(2345, 'Hire', 1, '2022-12-04 15:51:56.142000', '2022-12-04 15:52:01.925000', NULL, NULL, 1, 0, 0, NULL, NULL, '2022-12-04 15:51:56.123000'),
(2346, 'Reply', 1, '2022-12-04 15:52:01.950000', '2022-12-04 15:54:03.101000', NULL, NULL, 0, 0, 0, NULL, NULL, '2022-12-04 15:52:01.886000'),
(2347, 'Review', 1, '2022-12-04 15:54:15.168000', '2022-12-06 03:22:14.415000', NULL, NULL, 0, 0, 0, 5, 'eres un crack para programar', '2022-12-04 15:54:15.166000'),
(2348, 'Hire', 1, '2022-12-04 15:57:30.797000', '2022-12-04 23:56:02.369000', NULL, NULL, 1, 0, 0, NULL, NULL, '2022-12-04 15:57:30.773000'),
(2349, 'Reply', 1, '2022-12-04 15:58:11.469000', '2022-12-04 15:58:22.145000', NULL, NULL, 0, 0, 0, NULL, NULL, '2022-12-04 15:58:11.356000'),
(2350, 'Reply', 1, '2022-12-04 23:56:02.427000', '2022-12-05 17:42:54.728000', NULL, NULL, 0, 0, 0, NULL, NULL, '2022-12-04 23:56:02.338000'),
(2352, 'Hire', 1, '2022-12-05 17:35:02.216000', '2022-12-05 17:35:56.746000', NULL, NULL, 1, 0, 0, NULL, NULL, '2022-12-05 17:35:02.188000'),
(2353, 'Reply', 1, '2022-12-05 17:35:56.754000', '2022-12-05 17:40:38.179000', NULL, NULL, 0, 0, 0, NULL, NULL, '2022-12-05 17:35:56.726000'),
(2354, 'Review', 0, '2022-12-05 17:40:49.378000', '2022-12-05 17:40:49.378000', NULL, NULL, NULL, 0, 0, 5, 'prueba notificacion review', '2022-12-05 17:40:49.376000'),
(2355, 'Review', 0, '2022-12-05 17:40:49.418000', '2022-12-05 17:40:49.418000', NULL, NULL, NULL, 0, 0, 5, 'prueba notificacion review', '2022-12-05 17:40:49.416000'),
(2356, 'Review', 0, '2022-12-05 17:43:40.532000', '2022-12-05 17:43:40.532000', NULL, NULL, NULL, 0, 0, 5, 'prueba de review no reload', '2022-12-05 17:43:40.529000'),
(2357, 'Review', 0, '2022-12-05 17:43:40.543000', '2022-12-05 17:43:40.543000', NULL, NULL, NULL, 0, 0, 5, 'prueba de review no reload', '2022-12-05 17:43:40.542000'),
(2358, 'Review', 0, '2022-12-05 17:45:44.034000', '2022-12-05 17:45:44.034000', NULL, NULL, NULL, 0, 0, 5, 'notificacion?', '2022-12-05 17:45:44.032000'),
(2359, 'Review', 0, '2022-12-05 17:45:44.047000', '2022-12-05 17:45:44.047000', NULL, NULL, NULL, 0, 0, 5, 'notificacion?', '2022-12-05 17:45:44.045000'),
(2360, 'Review', 0, '2022-12-05 17:46:28.439000', '2022-12-05 17:46:28.439000', NULL, NULL, NULL, 0, 0, 5, 'prueba', '2022-12-05 17:46:28.438000'),
(2361, 'Review', 0, '2022-12-05 17:46:28.461000', '2022-12-05 17:46:28.461000', NULL, NULL, NULL, 0, 0, 5, 'prueba', '2022-12-05 17:46:28.460000'),
(2362, 'Review', 0, '2022-12-05 17:47:01.099000', '2022-12-05 17:47:01.099000', NULL, NULL, NULL, 0, 0, 5, 'prueba', '2022-12-05 17:47:01.097000'),
(2363, 'Review', 0, '2022-12-05 17:47:01.108000', '2022-12-05 17:47:01.108000', NULL, NULL, NULL, 0, 0, 5, 'prueba', '2022-12-05 17:47:01.106000'),
(2364, 'Review', 0, '2022-12-05 17:48:28.865000', '2022-12-05 17:48:28.865000', NULL, NULL, NULL, 0, 0, 5, 'prueba', '2022-12-05 17:48:28.864000'),
(2365, 'Review', 0, '2022-12-05 17:48:28.885000', '2022-12-05 17:48:28.885000', NULL, NULL, NULL, 0, 0, 5, 'prueba', '2022-12-05 17:48:28.884000'),
(2366, 'Review', 0, '2022-12-05 17:48:58.326000', '2022-12-05 17:48:58.326000', NULL, NULL, NULL, 0, 0, 5, 'prueba form', '2022-12-05 17:48:58.324000'),
(2367, 'Review', 0, '2022-12-05 17:48:58.336000', '2022-12-05 17:48:58.336000', NULL, NULL, NULL, 0, 0, 5, 'prueba form', '2022-12-05 17:48:58.334000'),
(2368, 'Review', 1, '2022-12-05 18:28:55.321000', '2022-12-06 03:22:11.038000', NULL, NULL, 0, 0, 0, 5, 'Prueba notificacion funcina', '2022-12-05 18:28:55.318000'),
(2369, 'Review', 1, '2022-12-05 18:38:21.894000', '2022-12-06 03:22:06.105000', NULL, NULL, 0, 0, 0, 5, 'Prueba desde el profile', '2022-12-05 18:38:21.892000'),
(2370, 'Review', 1, '2022-12-05 18:39:25.899000', '2022-12-06 03:22:01.073000', NULL, NULL, 0, 0, 0, 5, 'Prueba desde el profiless', '2022-12-05 18:39:25.897000'),
(2371, 'Review', 1, '2022-12-05 18:40:41.573000', '2022-12-06 03:21:59.854000', NULL, NULL, 0, 0, 0, 5, 'Prueba  profile\n', '2022-12-05 18:40:41.571000'),
(2372, 'Review', 1, '2022-12-05 18:41:18.525000', '2022-12-06 03:21:58.583000', NULL, NULL, 0, 0, 0, 5, 'Prueba  profile 2\n', '2022-12-05 18:41:18.523000'),
(2373, 'Review', 1, '2022-12-05 18:41:38.541000', '2022-12-06 03:22:02.215000', NULL, NULL, 0, 0, 0, 5, 'Prueba  profile 2.0\n\n', '2022-12-05 18:41:38.538000'),
(2374, 'Review', 1, '2022-12-05 18:42:02.715000', '2022-12-06 03:22:03.188000', NULL, NULL, 0, 0, 0, 5, 'Prueba  profile 3.0\n\n', '2022-12-05 18:42:02.713000'),
(2375, 'Review', 0, '2022-12-05 18:42:08.298000', '2022-12-05 18:42:08.298000', NULL, NULL, NULL, 0, 0, 5, 'pruebaaa', '2022-12-05 18:42:08.297000'),
(2376, 'Review', 0, '2022-12-05 19:50:46.069000', '2022-12-05 19:50:46.069000', NULL, NULL, NULL, 0, 0, 5, 'preuba de reseña en profile', '2022-12-05 19:50:46.067000'),
(2377, 'Review', 0, '2022-12-05 19:50:46.083000', '2022-12-05 19:50:46.083000', NULL, NULL, NULL, 0, 0, 5, 'preuba de reseña en profile', '2022-12-05 19:50:46.080000'),
(2378, 'Review', 0, '2022-12-05 19:54:00.003000', '2022-12-05 19:54:00.003000', NULL, NULL, NULL, 0, 0, 5, 'prueba desde profile', '2022-12-05 19:54:00.001000'),
(2379, 'Review', 0, '2022-12-05 19:54:00.014000', '2022-12-05 19:54:00.014000', NULL, NULL, NULL, 0, 0, 5, 'prueba desde profile', '2022-12-05 19:54:00.012000'),
(2380, 'Review', 0, '2022-12-05 19:55:26.224000', '2022-12-05 19:55:26.224000', NULL, NULL, NULL, 0, 0, 5, 'prueba desde profile', '2022-12-05 19:55:26.223000'),
(2381, 'Review', 0, '2022-12-05 19:55:26.234000', '2022-12-05 19:55:26.234000', NULL, NULL, NULL, 0, 0, 5, 'prueba desde profile', '2022-12-05 19:55:26.233000'),
(2382, 'Review', 0, '2022-12-05 19:57:56.908000', '2022-12-05 19:57:56.908000', NULL, NULL, NULL, 0, 0, 5, 'a ver si funca', '2022-12-05 19:57:56.906000'),
(2383, 'Review', 0, '2022-12-05 19:57:56.920000', '2022-12-05 19:57:56.920000', NULL, NULL, NULL, 0, 0, 5, 'a ver si funca', '2022-12-05 19:57:56.918000'),
(2384, 'Hire', 0, '2022-12-05 20:11:39.124000', '2022-12-05 20:11:39.124000', NULL, NULL, NULL, 0, 0, NULL, NULL, '2022-12-05 20:11:35.934000'),
(2385, 'Hire', 0, '2022-12-05 20:11:44.469000', '2022-12-05 20:11:44.469000', NULL, NULL, NULL, 0, 0, NULL, NULL, '2022-12-05 20:11:40.026000'),
(2386, 'Hire', 0, '2022-12-05 20:11:44.641000', '2022-12-05 20:11:44.641000', NULL, NULL, NULL, 0, 0, NULL, NULL, '2022-12-05 20:11:43.830000'),
(2387, 'Hire', 0, '2022-12-05 20:11:49.468000', '2022-12-05 20:11:49.468000', NULL, NULL, NULL, 0, 0, NULL, NULL, '2022-12-05 20:11:48.173000'),
(2388, 'Hire', 0, '2022-12-06 00:44:46.365000', '2022-12-06 00:44:46.365000', NULL, NULL, NULL, 0, 0, NULL, NULL, '2022-12-06 00:44:44.898000'),
(2389, 'Hire', 0, '2022-12-06 00:44:46.426000', '2022-12-06 00:44:46.426000', NULL, NULL, NULL, 0, 0, NULL, NULL, '2022-12-06 00:44:45.449000'),
(2390, 'Review', 0, '2022-12-06 02:46:08.400000', '2022-12-06 02:46:08.400000', NULL, NULL, NULL, 0, 0, 4, 'sos un crack', '2022-12-06 02:46:08.398000'),
(2391, 'Review', 0, '2022-12-06 02:52:27.545000', '2022-12-06 02:52:27.545000', NULL, NULL, NULL, 0, 0, 5, 'prueba edicion no re load', '2022-12-06 02:52:27.543000'),
(2392, 'Review', 0, '2022-12-06 03:22:23.387000', '2022-12-06 03:22:23.387000', NULL, NULL, NULL, 0, 0, 5, 'Prueba  profile 3.0 con sockets\n\n', '2022-12-06 03:22:23.385000'),
(2393, 'Review', 1, '2022-12-06 03:23:08.595000', '2022-12-16 16:36:08.576000', NULL, NULL, 0, 0, 0, 5, 'Prueba  profile 3.0 con sockets\n\n', '2022-12-06 03:23:08.593000'),
(2394, 'Review', 1, '2022-12-06 03:24:28.812000', '2022-12-16 16:35:48.736000', NULL, NULL, 0, 0, 0, 5, 'Prueba  profile 3.0 con sockets\n\n', '2022-12-06 03:24:28.810000'),
(2395, 'Review', 0, '2022-12-06 03:25:14.545000', '2022-12-06 03:25:14.545000', NULL, NULL, NULL, 0, 0, 5, 'prueba form', '2022-12-06 03:25:14.543000'),
(2396, 'Review', 1, '2022-12-06 03:26:27.318000', '2022-12-16 16:36:13.381000', NULL, NULL, 0, 0, 0, 5, 'Prueba  profile 3.0 con sockets test3\n\n', '2022-12-06 03:26:27.316000'),
(2397, 'Review', 1, '2022-12-06 03:27:22.752000', '2022-12-16 16:36:16.343000', NULL, NULL, 0, 0, 0, 5, 'Prueba  profile 3.0 con sockets test3\n\n', '2022-12-06 03:27:22.750000'),
(2398, 'Review', 1, '2022-12-06 03:28:12.327000', '2022-12-16 16:36:01.594000', NULL, NULL, 0, 0, 0, 5, 'Prueba  profile 3.0 con sockets test3\n\n', '2022-12-06 03:28:12.325000'),
(2399, 'Review', 1, '2022-12-06 03:30:13.244000', '2022-12-16 16:35:44.335000', NULL, NULL, 0, 0, 0, 5, 'Prueba  profile 3.0 con sockets test3\n\n', '2022-12-06 03:30:13.242000'),
(2400, 'Review', 1, '2022-12-06 03:30:18.531000', '2022-12-16 16:35:40.008000', NULL, NULL, 0, 0, 0, 5, 'Prueba  profile 3.0 con sockets test3 funca\n\n', '2022-12-06 03:30:18.530000'),
(2401, 'Review', 1, '2022-12-06 10:37:57.548000', '2022-12-16 16:36:04.893000', NULL, NULL, 0, 0, 0, 5, 'esto es una prueba', '2022-12-06 10:37:57.547000'),
(2402, 'Review', 1, '2022-12-06 10:37:57.559000', '2022-12-16 16:35:57.842000', NULL, NULL, 0, 0, 0, 5, 'esto es una prueba', '2022-12-06 10:37:57.557000'),
(2403, 'Review', 1, '2022-12-06 10:40:54.040000', '2022-12-16 16:35:55.368000', NULL, NULL, 0, 0, 0, 5, 'esto es una prueba', '2022-12-06 10:40:54.039000'),
(2404, 'Review', 1, '2022-12-06 10:40:54.051000', '2022-12-16 16:35:52.494000', NULL, NULL, 0, 0, 0, 5, 'esto es una prueba', '2022-12-06 10:40:54.050000'),
(2405, 'Review', 1, '2022-12-06 10:43:40.580000', '2022-12-16 16:34:51.819000', NULL, NULL, 0, 0, 0, 5, 'esto es una prueba', '2022-12-06 10:43:40.578000'),
(2406, 'Review', 1, '2022-12-06 10:43:40.589000', '2022-12-16 16:35:41.894000', NULL, NULL, 0, 0, 0, 5, 'esto es una prueba', '2022-12-06 10:43:40.588000'),
(2407, 'Review', 1, '2022-12-06 10:45:45.509000', '2022-12-16 16:34:48.006000', NULL, NULL, 0, 0, 0, 5, 'esto es una preuba', '2022-12-06 10:45:45.507000'),
(2408, 'Review', 1, '2022-12-06 10:45:45.519000', '2022-12-16 16:34:44.354000', NULL, NULL, 0, 0, 0, 5, 'esto es una preuba', '2022-12-06 10:45:45.518000'),
(2409, 'Review', 1, '2022-12-06 10:46:06.437000', '2022-12-16 16:34:46.284000', NULL, NULL, 0, 0, 0, 5, 'esto es uan prueba', '2022-12-06 10:46:06.436000'),
(2410, 'Review', 1, '2022-12-06 10:46:06.446000', '2022-12-16 16:36:38.684000', NULL, NULL, 0, 0, 0, 5, 'esto es uan prueba', '2022-12-06 10:46:06.444000'),
(2412, 'Review', 1, '2022-12-16 16:37:53.813000', '2022-12-16 16:38:50.644000', NULL, NULL, 0, 0, 0, 5, 'prueba desde profile noticacion', '2022-12-16 16:37:53.810000'),
(2413, 'Review', 0, '2022-12-16 16:39:04.339000', '2022-12-16 16:39:04.339000', NULL, NULL, NULL, 0, 0, 5, 'prueba desde profile noticacion', '2022-12-16 16:39:04.337000'),
(2414, 'Review', 0, '2022-12-16 16:39:24.042000', '2022-12-16 16:39:24.042000', NULL, NULL, NULL, 0, 0, 5, 'prueba desde profile noticacion prueba', '2022-12-16 16:39:24.040000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications_review_links`
--

CREATE TABLE `notifications_review_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `notification_id` int(10) UNSIGNED DEFAULT NULL,
  `review_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `notifications_review_links`
--

INSERT INTO `notifications_review_links` (`id`, `notification_id`, `review_id`) VALUES
(5, 2017, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications_user_links`
--

CREATE TABLE `notifications_user_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `notification_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `notifications_user_links`
--

INSERT INTO `notifications_user_links` (`id`, `notification_id`, `user_id`) VALUES
(59, 2018, 146),
(69, 2024, 141),
(70, 2025, 141),
(304, 2259, 140),
(350, 2293, 146),
(351, 2294, 146),
(352, 2295, 146),
(353, 2296, 146),
(354, 2297, 146),
(355, 2298, 146),
(356, 2299, 146),
(357, 2300, 146),
(358, 2301, 146),
(359, 2302, 146),
(360, 2303, 146),
(361, 2304, 146),
(362, 2305, 146),
(363, 2306, 146),
(364, 2307, 146),
(365, 2308, 146),
(366, 2309, 146),
(367, 2310, 146),
(368, 2311, 146),
(369, 2312, 146),
(370, 2313, 146),
(426, 2290, 57),
(467, 2292, 61),
(468, 2026, 149),
(469, 2028, 149),
(470, 2031, 149),
(471, 2130, 149),
(472, 2131, 149),
(473, 2132, 149),
(474, 2133, 149),
(475, 2134, 149),
(476, 2135, 149),
(477, 2136, 149),
(478, 2137, 149),
(479, 2138, 149),
(480, 2139, 149),
(482, 2346, 142),
(483, 2322, 108),
(484, 2349, 108),
(485, 2350, 108),
(487, 2320, 143),
(488, 2321, 143),
(489, 2324, 143),
(490, 2325, 143),
(491, 2326, 143),
(492, 2352, 141),
(493, 2353, 108),
(494, 2354, 141),
(495, 2355, 141),
(496, 2356, 143),
(497, 2357, 143),
(498, 2358, 143),
(499, 2359, 143),
(500, 2360, 143),
(501, 2361, 143),
(502, 2362, 143),
(503, 2363, 143),
(504, 2364, 143),
(505, 2365, 143),
(506, 2366, 143),
(507, 2367, 143),
(515, 2375, 141),
(516, 2376, 149),
(517, 2377, 149),
(518, 2378, 149),
(519, 2379, 149),
(520, 2380, 149),
(521, 2381, 149),
(522, 2382, 143),
(523, 2383, 143),
(524, 2384, 146),
(525, 2385, 158),
(526, 2386, 73),
(527, 2387, 75),
(528, 2388, 70),
(529, 2389, 158),
(530, 2390, 141),
(531, 2391, 141),
(535, 2395, 143),
(674, 2017, 55),
(675, 2019, 55),
(676, 2023, 55),
(677, 2027, 55),
(678, 2029, 55),
(679, 2030, 55),
(680, 2032, 55),
(681, 2033, 55),
(682, 2034, 55),
(683, 2035, 55),
(684, 2289, 55),
(685, 2291, 55),
(686, 2323, 55),
(687, 2345, 55),
(688, 2347, 55),
(689, 2348, 55),
(690, 2368, 55),
(691, 2369, 55),
(692, 2370, 55),
(693, 2371, 55),
(694, 2372, 55),
(695, 2373, 55),
(696, 2374, 55),
(697, 2392, 55),
(698, 2393, 55),
(699, 2394, 55),
(700, 2396, 55),
(701, 2397, 55),
(702, 2398, 55),
(703, 2399, 55),
(704, 2400, 55),
(705, 2401, 55),
(706, 2402, 55),
(707, 2403, 55),
(708, 2404, 55),
(709, 2405, 55),
(710, 2406, 55),
(711, 2407, 55),
(712, 2408, 55),
(713, 2409, 55),
(714, 2410, 55),
(716, 2412, 149),
(717, 2413, 149),
(718, 2414, 149);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications_user_request_links`
--

CREATE TABLE `notifications_user_request_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `notification_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `notifications_user_request_links`
--

INSERT INTO `notifications_user_request_links` (`id`, `notification_id`, `user_id`) VALUES
(428, 2289, 57),
(498, 2291, 61),
(499, 2017, 149),
(500, 2027, 149),
(501, 2029, 149),
(502, 2030, 149),
(503, 2032, 149),
(504, 2033, 149),
(505, 2034, 149),
(506, 2035, 149),
(509, 2345, 142),
(510, 2347, 142),
(511, 2019, 108),
(512, 2321, 108),
(513, 2324, 108),
(514, 2325, 108),
(515, 2326, 108),
(516, 2348, 108),
(519, 2322, 143),
(520, 2323, 143),
(521, 2352, 108),
(522, 2353, 141),
(523, 2354, 108),
(524, 2355, 108),
(525, 2356, 108),
(526, 2357, 108),
(527, 2358, 108),
(528, 2359, 108),
(529, 2360, 108),
(530, 2361, 108),
(531, 2362, 108),
(532, 2363, 108),
(533, 2364, 108),
(534, 2365, 108),
(535, 2366, 108),
(536, 2367, 108),
(537, 2368, 108),
(538, 2369, 108),
(539, 2370, 108),
(540, 2371, 108),
(541, 2372, 108),
(542, 2373, 108),
(543, 2374, 108),
(544, 2375, 108),
(557, 2388, 108),
(558, 2389, 108),
(561, 2392, 108),
(562, 2393, 108),
(563, 2394, 108),
(564, 2395, 108),
(565, 2396, 108),
(566, 2397, 108),
(567, 2398, 108),
(568, 2399, 108),
(569, 2400, 108),
(570, 2401, 108),
(571, 2402, 108),
(572, 2403, 108),
(573, 2404, 108),
(574, 2405, 108),
(575, 2406, 108),
(576, 2407, 108),
(577, 2408, 108),
(578, 2409, 108),
(579, 2410, 108),
(757, 2018, 55),
(758, 2023, 55),
(759, 2024, 55),
(760, 2025, 55),
(761, 2026, 55),
(762, 2028, 55),
(763, 2031, 55),
(764, 2130, 55),
(765, 2131, 55),
(766, 2132, 55),
(767, 2133, 55),
(768, 2134, 55),
(769, 2135, 55),
(770, 2136, 55),
(771, 2137, 55),
(772, 2138, 55),
(773, 2139, 55),
(774, 2259, 55),
(775, 2290, 55),
(776, 2292, 55),
(777, 2293, 55),
(778, 2294, 55),
(779, 2295, 55),
(780, 2296, 55),
(781, 2297, 55),
(782, 2298, 55),
(783, 2299, 55),
(784, 2300, 55),
(785, 2301, 55),
(786, 2302, 55),
(787, 2303, 55),
(788, 2304, 55),
(789, 2305, 55),
(790, 2306, 55),
(791, 2307, 55),
(792, 2308, 55),
(793, 2309, 55),
(794, 2310, 55),
(795, 2311, 55),
(796, 2312, 55),
(797, 2313, 55),
(798, 2320, 55),
(799, 2346, 55),
(800, 2349, 55),
(801, 2350, 55),
(802, 2376, 55),
(803, 2377, 55),
(804, 2378, 55),
(805, 2379, 55),
(806, 2380, 55),
(807, 2381, 55),
(808, 2382, 55),
(809, 2383, 55),
(810, 2384, 55),
(811, 2385, 55),
(812, 2386, 55),
(813, 2387, 55),
(814, 2390, 55),
(815, 2391, 55),
(817, 2412, 55),
(818, 2413, 55),
(819, 2414, 55);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provinces`
--

CREATE TABLE `provinces` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `identificador` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `provinces`
--

INSERT INTO `provinces` (`id`, `name`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `identificador`, `slug`) VALUES
(4, 'Río Negro', '2022-10-31 20:33:14.756000', '2022-11-15 12:46:33.413000', '2022-10-31 20:33:14.751000', NULL, 1, '62', 'rio-negro'),
(10, 'Misiones', '2022-11-01 19:15:45.363000', '2022-11-04 23:44:20.159000', '2022-11-01 19:15:45.359000', NULL, 1, '54', 'misiones'),
(13, 'San Luis', '2022-11-05 16:04:24.863000', '2022-11-05 16:04:24.863000', '2022-11-05 16:04:24.858000', NULL, NULL, '74', 'san-luis'),
(20, 'Tierra del Fuego, Antártida e Islas del Atlántico Sur', '2022-11-10 21:23:41.371000', '2022-11-10 21:23:41.371000', '2022-11-10 21:23:41.366000', NULL, NULL, '94', 'tierra-del-fuego-antartida-e-islas-del-atlantico-sur'),
(21, 'Neuquén', '2022-11-17 16:04:40.491000', '2022-11-17 16:04:40.491000', '2022-11-17 16:04:40.485000', NULL, NULL, '58', 'neuquen'),
(23, 'Chaco', '2022-11-17 18:49:17.111000', '2022-11-17 18:49:17.111000', '2022-11-17 18:49:17.107000', NULL, NULL, '22', 'chaco'),
(24, 'Entre Ríos', '2022-12-03 01:45:46.919000', '2022-12-03 01:45:46.919000', '2022-12-03 01:45:46.909000', NULL, NULL, '30', 'entre-rios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment` longtext,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `score` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reviews`
--

INSERT INTO `reviews` (`id`, `comment`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `score`) VALUES
(18, 'prueba de cosas de notificaciones y acasa', '2022-11-26 17:31:25.486000', '2022-11-28 15:39:36.675000', NULL, NULL, '4.00'),
(23, 'prueba edicion no re load', '2022-11-28 14:07:22.560000', '2022-12-06 02:52:27.463000', NULL, NULL, '5.00'),
(27, 'pruebaaa', '2022-12-05 17:40:49.345000', '2022-12-05 18:42:08.276000', NULL, NULL, '5.00'),
(33, 'prueba form', '2022-12-05 17:48:58.283000', '2022-12-06 03:25:14.506000', NULL, NULL, '5.00'),
(36, 'prueba desde profile noticacion prueba', '2022-12-05 19:55:26.201000', '2022-12-16 16:39:24.023000', NULL, NULL, '5.00'),
(37, 'a ver si funca', '2022-12-05 19:57:56.876000', '2022-12-05 19:57:56.876000', NULL, NULL, '5.00'),
(42, 'esto es uan prueba', '2022-12-06 10:46:06.349000', '2022-12-06 10:46:06.349000', NULL, NULL, '5.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reviews_author_links`
--

CREATE TABLE `reviews_author_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `review_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reviews_author_links`
--

INSERT INTO `reviews_author_links` (`id`, `review_id`, `user_id`) VALUES
(18, 18, 149),
(23, 23, 55),
(27, 27, 108),
(33, 33, 108),
(36, 36, 55),
(37, 37, 55),
(42, 42, 108);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reviews_related_to_links`
--

CREATE TABLE `reviews_related_to_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `review_id` int(10) UNSIGNED DEFAULT NULL,
  `r_content_id_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reviews_related_to_links`
--

INSERT INTO `reviews_related_to_links` (`id`, `review_id`, `r_content_id_id`) VALUES
(18, 18, 1),
(23, 23, 8),
(27, 27, 8),
(33, 33, 16),
(36, 36, 17),
(37, 37, 16),
(42, 42, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reviews_user_links`
--

CREATE TABLE `reviews_user_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `review_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_content_ids`
--

CREATE TABLE `r_content_ids` (
  `id` int(10) UNSIGNED NOT NULL,
  `average` decimal(10,2) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `r_content_ids`
--

INSERT INTO `r_content_ids` (`id`, `average`, `slug`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, '4.51', 'santiago-avilez-2', '2022-11-22 15:31:29.033000', '2022-12-06 10:46:06.424000', NULL, NULL),
(3, '3.50', 'updateReviewundefined', '2022-11-23 15:58:14.209000', '2022-11-23 15:58:14.231000', NULL, NULL),
(4, '2.50', 'prueba-prueba-5', '2022-11-23 17:32:27.022000', '2022-11-23 17:32:40.032000', NULL, NULL),
(5, '4.00', 'santiago-avilez', '2022-11-23 21:07:48.756000', '2022-11-23 22:03:50.076000', NULL, NULL),
(6, '0.00', 'mengano-perez', '2022-11-24 19:30:42.528000', '2022-12-05 17:40:17.125000', NULL, NULL),
(7, '0.00', 'fulanito-mengano-perez', '2022-11-26 16:42:07.567000', '2022-12-05 17:39:55.172000', NULL, NULL),
(8, '5.00', 'menganito-perez', '2022-11-26 16:46:57.779000', '2022-12-06 02:52:27.506000', NULL, NULL),
(9, '2.50', 'perez-perez', '2022-11-26 16:49:10.670000', '2022-11-26 16:49:10.689000', NULL, NULL),
(10, '0.00', 'menganito-fulanito', '2022-11-26 17:01:11.427000', '2022-12-05 17:40:00.029000', NULL, NULL),
(11, '5.00', 'p-r', '2022-11-26 17:01:40.759000', '2022-11-26 17:01:40.781000', NULL, NULL),
(12, '5.00', 'santiago-ariza-2', '2022-11-26 17:03:24.605000', '2022-11-26 17:11:21.609000', NULL, NULL),
(13, '5.00', 'javier-monsalve', '2022-11-26 17:03:57.594000', '2022-11-26 17:03:57.609000', NULL, NULL),
(14, '5.00', 'melina-nazarena-batalla', '2022-11-26 17:06:12.419000', '2022-11-26 17:06:12.443000', NULL, NULL),
(15, '0.00', 'prueba-prueba-3', '2022-11-28 15:23:11.845000', '2022-12-05 17:40:05.334000', NULL, NULL),
(16, '5.00', 'eduardo-gonzales', '2022-12-05 17:43:40.455000', '2022-12-06 03:25:14.511000', NULL, NULL),
(17, '5.00', 'carlos-rodriguez', '2022-12-05 19:50:46.022000', '2022-12-16 16:39:24.028000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` int(11) DEFAULT NULL,
  `finished_at` date DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `start_date` datetime(6) DEFAULT NULL,
  `acepted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `services`
--

INSERT INTO `services` (`id`, `price`, `finished_at`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `start_date`, `acepted`) VALUES
(14, NULL, NULL, '2022-11-28 14:06:08.624000', '2022-11-28 14:06:08.624000', '2022-11-28 14:06:08.621000', NULL, NULL, '2022-11-28 14:06:08.293000', 1),
(16, NULL, NULL, '2022-11-28 15:24:58.191000', '2022-11-28 15:24:58.191000', '2022-11-28 15:24:58.189000', NULL, NULL, '2022-11-28 15:24:58.176000', 1),
(17, NULL, NULL, '2022-11-28 15:28:37.680000', '2022-11-28 15:28:37.680000', '2022-11-28 15:28:37.678000', NULL, NULL, '2022-11-28 15:28:37.657000', 1),
(18, NULL, NULL, '2022-11-29 00:58:56.450000', '2022-11-29 00:58:56.450000', '2022-11-29 00:58:56.446000', NULL, NULL, '2022-11-29 00:58:56.422000', 1),
(19, NULL, NULL, '2022-11-29 01:08:44.814000', '2022-11-29 01:08:44.814000', '2022-11-29 01:08:44.812000', NULL, NULL, '2022-11-29 01:08:44.793000', 1),
(20, NULL, NULL, '2022-12-04 14:54:15.377000', '2022-12-05 18:01:48.503000', '2022-12-04 14:54:15.373000', NULL, 1, '2022-12-04 14:54:15.353000', 1),
(21, NULL, NULL, '2022-12-04 14:57:30.059000', '2022-12-04 14:57:30.059000', '2022-12-04 14:57:30.057000', NULL, NULL, '2022-12-04 14:57:30.044000', 1),
(22, NULL, NULL, '2022-12-04 15:52:01.864000', '2022-12-04 15:52:01.864000', '2022-12-04 15:52:01.862000', NULL, NULL, '2022-12-04 15:52:01.851000', 1),
(23, NULL, NULL, '2022-12-04 15:58:11.327000', '2022-12-04 15:58:11.327000', '2022-12-04 15:58:11.325000', NULL, NULL, '2022-12-04 15:58:11.311000', 1),
(25, NULL, NULL, '2022-12-05 17:35:56.651000', '2022-12-05 17:35:56.651000', '2022-12-05 17:35:56.649000', NULL, NULL, '2022-12-05 17:35:56.322000', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services_category_links`
--

CREATE TABLE `services_category_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services_lender_links`
--

CREATE TABLE `services_lender_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `services_lender_links`
--

INSERT INTO `services_lender_links` (`id`, `service_id`, `user_id`) VALUES
(2, 14, 141),
(31, 16, 149),
(34, 21, 143),
(35, 25, 141),
(36, 20, 143),
(52, 17, 55),
(53, 18, 55),
(54, 19, 55),
(55, 22, 55),
(56, 23, 55);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services_users_recruiter_links`
--

CREATE TABLE `services_users_recruiter_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `services_users_recruiter_links`
--

INSERT INTO `services_users_recruiter_links` (`id`, `service_id`, `user_id`) VALUES
(18, 18, 57),
(31, 19, 61),
(32, 17, 149),
(34, 22, 142),
(36, 23, 108),
(38, 25, 108),
(39, 20, 108),
(49, 14, 55),
(50, 16, 55),
(51, 21, 55);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_api_token_permissions`
--

CREATE TABLE `strapi_api_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_api_token_permissions_token_links`
--

CREATE TABLE `strapi_api_token_permissions_token_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_permission_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"integer\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"integer\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token-permission\",\"connection\":\"default\",\"uid\":\"admin::api-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::custom-api.custom-api\":{\"kind\":\"collectionType\",\"collectionName\":\"custom_apis\",\"info\":{\"singularName\":\"custom-api\",\"pluralName\":\"custom-apis\",\"displayName\":\"Custom API\"},\"options\":{\"draftAndPublish\":false,\"comment\":\"\"},\"pluginOptions\":{\"content-manager\":{\"visible\":true},\"content-type-builder\":{\"visible\":true}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"slug\":{\"type\":\"uid\",\"targetField\":\"name\",\"required\":true},\"selectedContentType\":{\"type\":\"json\"},\"structure\":{\"type\":\"json\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"custom_apis\",\"info\":{\"singularName\":\"custom-api\",\"pluralName\":\"custom-apis\",\"displayName\":\"Custom API\"},\"options\":{\"draftAndPublish\":false,\"comment\":\"\"},\"pluginOptions\":{\"content-manager\":{\"visible\":true},\"content-type-builder\":{\"visible\":true}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"slug\":{\"type\":\"uid\",\"targetField\":\"name\",\"required\":true},\"selectedContentType\":{\"type\":\"json\"},\"structure\":{\"type\":\"json\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"custom-api\",\"connection\":\"default\",\"uid\":\"plugin::custom-api.custom-api\",\"plugin\":\"custom-api\",\"globalId\":\"CustomApiCustomApi\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"categories\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::category.category\"},\"lender\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::lender.lender\",\"inversedBy\":\"users_lender\"},\"phone\":{\"type\":\"biginteger\"},\"is_lender\":{\"type\":\"boolean\"},\"aboutme\":{\"type\":\"richtext\"},\"birth\":{\"type\":\"date\"},\"provincia\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::province.province\",\"inversedBy\":\"users\"},\"localidad\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::city.city\",\"inversedBy\":\"users\"},\"name\":{\"type\":\"string\",\"required\":true},\"Slug\":{\"type\":\"uid\",\"targetField\":\"name\",\"minLength\":1},\"profile_pic\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"firstName\":{\"type\":\"string\"},\"lastName\":{\"type\":\"string\"},\"avatar\":{\"type\":\"string\"},\"ratings_reviews\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::ratings.review\",\"mappedBy\":\"user\"},\"averageScore\":{\"type\":\"decimal\",\"default\":0},\"countsReview\":{\"type\":\"integer\",\"default\":0},\"notifications\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::notification.notification\",\"mappedBy\":\"user\"},\"notifications_requested\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::notification.notification\",\"mappedBy\":\"user_request\"},\"service_recruiters\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::service.service\",\"mappedBy\":\"users_recruiter\"},\"lenders\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::service.service\",\"mappedBy\":\"lender\"},\"description\":{\"type\":\"richtext\",\"maxLength\":2000},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__filename__\":\"schema.json\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"categories\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::category.category\"},\"lender\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::lender.lender\",\"inversedBy\":\"users_lender\"},\"phone\":{\"type\":\"biginteger\"},\"is_lender\":{\"type\":\"boolean\"},\"aboutme\":{\"type\":\"richtext\"},\"birth\":{\"type\":\"date\"},\"provincia\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::province.province\",\"inversedBy\":\"users\"},\"localidad\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::city.city\",\"inversedBy\":\"users\"},\"name\":{\"type\":\"string\",\"required\":true},\"Slug\":{\"type\":\"uid\",\"targetField\":\"name\",\"minLength\":1},\"profile_pic\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"firstName\":{\"type\":\"string\"},\"lastName\":{\"type\":\"string\"},\"avatar\":{\"type\":\"string\"},\"ratings_reviews\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::ratings.review\",\"mappedBy\":\"user\"},\"averageScore\":{\"type\":\"decimal\",\"default\":0},\"countsReview\":{\"type\":\"integer\",\"default\":0},\"notifications\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::notification.notification\",\"mappedBy\":\"user\"},\"notifications_requested\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::notification.notification\",\"mappedBy\":\"user_request\"},\"service_recruiters\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::service.service\",\"mappedBy\":\"users_recruiter\"},\"lenders\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::service.service\",\"mappedBy\":\"lender\"},\"description\":{\"type\":\"richtext\",\"maxLength\":2000}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"plugin::ratings.review\":{\"kind\":\"collectionType\",\"collectionName\":\"reviews\",\"info\":{\"singularName\":\"review\",\"pluralName\":\"reviews\",\"displayName\":\"Review\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"comment\":\"\"},\"pluginOptions\":{\"content-manager\":{\"visible\":true},\"content-type-builder\":{\"visible\":true}},\"attributes\":{\"score\":{\"type\":\"decimal\"},\"author\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"},\"comment\":{\"type\":\"text\"},\"related_to\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::ratings.r-content-id\",\"inversedBy\":\"reviews\"},\"user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"ratings_reviews\"},\"notifications\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::notification.notification\",\"mappedBy\":\"review\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__filename__\":\"schema.json\",\"__schema__\":{\"collectionName\":\"reviews\",\"info\":{\"singularName\":\"review\",\"pluralName\":\"reviews\",\"displayName\":\"Review\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"comment\":\"\"},\"pluginOptions\":{\"content-manager\":{\"visible\":true},\"content-type-builder\":{\"visible\":true}},\"attributes\":{\"score\":{\"type\":\"decimal\"},\"author\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"},\"comment\":{\"type\":\"text\"},\"related_to\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::ratings.r-content-id\",\"inversedBy\":\"reviews\"},\"user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"ratings_reviews\"},\"notifications\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::notification.notification\",\"mappedBy\":\"review\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"review\",\"connection\":\"default\",\"uid\":\"plugin::ratings.review\",\"plugin\":\"ratings\",\"globalId\":\"RatingsReview\"},\"plugin::ratings.r-content-id\":{\"kind\":\"collectionType\",\"collectionName\":\"r_content_ids\",\"info\":{\"singularName\":\"r-content-id\",\"pluralName\":\"r-content-ids\",\"displayName\":\"RContentID\"},\"options\":{\"draftAndPublish\":false,\"comment\":\"\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"reviews\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::ratings.review\",\"mappedBy\":\"related_to\",\"configurable\":false},\"average\":{\"type\":\"decimal\",\"configurable\":false},\"slug\":{\"type\":\"string\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"r_content_ids\",\"info\":{\"singularName\":\"r-content-id\",\"pluralName\":\"r-content-ids\",\"displayName\":\"RContentID\"},\"options\":{\"draftAndPublish\":false,\"comment\":\"\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"reviews\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::ratings.review\",\"mappedBy\":\"related_to\",\"configurable\":false},\"average\":{\"type\":\"decimal\",\"configurable\":false},\"slug\":{\"type\":\"string\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"r-content-id\",\"connection\":\"default\",\"uid\":\"plugin::ratings.r-content-id\",\"plugin\":\"ratings\",\"globalId\":\"RatingsRContentId\"},\"api::category.category\":{\"kind\":\"collectionType\",\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"state\":{\"type\":\"boolean\"},\"city\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::city.city\",\"inversedBy\":\"categories\"},\"services\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::service.service\",\"mappedBy\":\"category\"},\"lender\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::lender.lender\",\"inversedBy\":\"categories\"},\"provinces\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::province.province\",\"inversedBy\":\"categories\"},\"Slug\":{\"type\":\"uid\",\"targetField\":\"name\",\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"category\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"state\":{\"type\":\"boolean\"},\"city\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::city.city\",\"inversedBy\":\"categories\"},\"services\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::service.service\",\"mappedBy\":\"category\"},\"lender\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::lender.lender\",\"inversedBy\":\"categories\"},\"provinces\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::province.province\",\"inversedBy\":\"categories\"},\"Slug\":{\"type\":\"uid\",\"targetField\":\"name\",\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"category\",\"connection\":\"default\",\"uid\":\"api::category.category\",\"apiName\":\"category\",\"globalId\":\"Category\",\"actions\":{},\"lifecycles\":{}},\"api::city.city\":{\"kind\":\"collectionType\",\"collectionName\":\"cities\",\"info\":{\"singularName\":\"city\",\"pluralName\":\"cities\",\"displayName\":\"city\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"categories\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::category.category\",\"mappedBy\":\"city\"},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"localidad\"},\"identificador\":{\"type\":\"uid\"},\"province\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::province.province\",\"inversedBy\":\"cities\"},\"slug\":{\"type\":\"string\",\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"cities\",\"info\":{\"singularName\":\"city\",\"pluralName\":\"cities\",\"displayName\":\"city\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"categories\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::category.category\",\"mappedBy\":\"city\"},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"localidad\"},\"identificador\":{\"type\":\"uid\"},\"province\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::province.province\",\"inversedBy\":\"cities\"},\"slug\":{\"type\":\"string\",\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"city\",\"connection\":\"default\",\"uid\":\"api::city.city\",\"apiName\":\"city\",\"globalId\":\"City\",\"actions\":{},\"lifecycles\":{}},\"api::lender.lender\":{\"kind\":\"collectionType\",\"collectionName\":\"lenders\",\"info\":{\"singularName\":\"lender\",\"pluralName\":\"lenders\",\"displayName\":\"lender\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"users_lender\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"lender\"},\"categories\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::category.category\",\"mappedBy\":\"lender\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"lenders\",\"info\":{\"singularName\":\"lender\",\"pluralName\":\"lenders\",\"displayName\":\"lender\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"users_lender\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"lender\"},\"categories\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::category.category\",\"mappedBy\":\"lender\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"lender\",\"connection\":\"default\",\"uid\":\"api::lender.lender\",\"apiName\":\"lender\",\"globalId\":\"Lender\",\"actions\":{},\"lifecycles\":{}},\"api::notification.notification\":{\"kind\":\"collectionType\",\"collectionName\":\"notifications\",\"info\":{\"singularName\":\"notification\",\"pluralName\":\"notifications\",\"displayName\":\"Notification\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"notifications\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"Hire\",\"Comment\",\"Review\",\"Reply\",\"Message\"]},\"read\":{\"type\":\"boolean\",\"default\":false},\"acepted\":{\"type\":\"boolean\"},\"rejected\":{\"type\":\"boolean\",\"default\":false},\"user_request\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"notifications_requested\"},\"canceled\":{\"type\":\"boolean\",\"default\":false},\"review\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::ratings.review\",\"inversedBy\":\"notifications\"},\"score\":{\"type\":\"integer\"},\"comment\":{\"type\":\"text\"},\"review_updatedAt\":{\"type\":\"datetime\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"notifications\",\"info\":{\"singularName\":\"notification\",\"pluralName\":\"notifications\",\"displayName\":\"Notification\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"user\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"notifications\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"Hire\",\"Comment\",\"Review\",\"Reply\",\"Message\"]},\"read\":{\"type\":\"boolean\",\"default\":false},\"acepted\":{\"type\":\"boolean\"},\"rejected\":{\"type\":\"boolean\",\"default\":false},\"user_request\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"notifications_requested\"},\"canceled\":{\"type\":\"boolean\",\"default\":false},\"review\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::ratings.review\",\"inversedBy\":\"notifications\"},\"score\":{\"type\":\"integer\"},\"comment\":{\"type\":\"text\"},\"review_updatedAt\":{\"type\":\"datetime\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"notification\",\"connection\":\"default\",\"uid\":\"api::notification.notification\",\"apiName\":\"notification\",\"globalId\":\"Notification\",\"actions\":{},\"lifecycles\":{}},\"api::province.province\":{\"kind\":\"collectionType\",\"collectionName\":\"provinces\",\"info\":{\"singularName\":\"province\",\"pluralName\":\"provinces\",\"displayName\":\"province\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"unique\":true,\"required\":true},\"cities\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::city.city\",\"mappedBy\":\"province\"},\"categories\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::category.category\",\"mappedBy\":\"provinces\"},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"provincia\"},\"identificador\":{\"type\":\"uid\"},\"Slug\":{\"type\":\"uid\",\"targetField\":\"name\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"provinces\",\"info\":{\"singularName\":\"province\",\"pluralName\":\"provinces\",\"displayName\":\"province\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\",\"unique\":true,\"required\":true},\"cities\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::city.city\",\"mappedBy\":\"province\"},\"categories\":{\"type\":\"relation\",\"relation\":\"manyToMany\",\"target\":\"api::category.category\",\"mappedBy\":\"provinces\"},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"provincia\"},\"identificador\":{\"type\":\"uid\"},\"Slug\":{\"type\":\"uid\",\"targetField\":\"name\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"province\",\"connection\":\"default\",\"uid\":\"api::province.province\",\"apiName\":\"province\",\"globalId\":\"Province\",\"actions\":{},\"lifecycles\":{}},\"api::service.service\":{\"kind\":\"collectionType\",\"collectionName\":\"services\",\"info\":{\"singularName\":\"service\",\"pluralName\":\"services\",\"displayName\":\"service\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"price\":{\"type\":\"integer\"},\"finished_at\":{\"type\":\"date\"},\"category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::category.category\",\"inversedBy\":\"services\"},\"lender\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"lenders\"},\"users_recruiter\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"service_recruiters\"},\"start_date\":{\"type\":\"datetime\"},\"acepted\":{\"type\":\"boolean\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"services\",\"info\":{\"singularName\":\"service\",\"pluralName\":\"services\",\"displayName\":\"service\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"price\":{\"type\":\"integer\"},\"finished_at\":{\"type\":\"date\"},\"category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::category.category\",\"inversedBy\":\"services\"},\"lender\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"lenders\"},\"users_recruiter\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.user\",\"inversedBy\":\"service_recruiters\"},\"start_date\":{\"type\":\"datetime\"},\"acepted\":{\"type\":\"boolean\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"service\",\"connection\":\"default\",\"uid\":\"api::service.service\",\"apiName\":\"service\",\"globalId\":\"Service\",\"actions\":{},\"lifecycles\":{}}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(2, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_content_types::admin::user', '{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]]}}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::admin::role', '{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"uid\":\"admin::api-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"editRelations\":[\"token\"],\"edit\":[[{\"name\":\"action\",\"size\":6}]]}}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"folder\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folderPath\",\"size\":6}]]}}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}]]}}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"uid\":\"plugin::upload.folder\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"editRelations\":[\"parent\",\"children\",\"files\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"path\",\"size\":6}]]}}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::api::city.city', '{\"uid\":\"api::city.city\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"categories\":{\"edit\":{\"label\":\"categories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"categories\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"identificador\":{\"edit\":{\"label\":\"identificador\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"identificador\",\"searchable\":true,\"sortable\":true}},\"province\":{\"edit\":{\"label\":\"province\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"province\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"province\",\"users\",\"identificador\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"identificador\",\"size\":6}],[{\"name\":\"slug\",\"size\":6}]],\"editRelations\":[\"categories\",\"users\",\"province\"]}}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::api::service.service', '{\"uid\":\"api::service.service\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"price\",\"searchable\":true,\"sortable\":true}},\"finished_at\":{\"edit\":{\"label\":\"finished_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"finished_at\",\"searchable\":true,\"sortable\":true}},\"category\":{\"edit\":{\"label\":\"category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"category\",\"searchable\":true,\"sortable\":true}},\"lender\":{\"edit\":{\"label\":\"lender\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"lender\",\"searchable\":true,\"sortable\":true}},\"users_recruiter\":{\"edit\":{\"label\":\"users_recruiter\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users_recruiter\",\"searchable\":true,\"sortable\":true}},\"start_date\":{\"edit\":{\"label\":\"start_date\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"start_date\",\"searchable\":true,\"sortable\":true}},\"acepted\":{\"edit\":{\"label\":\"acepted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"acepted\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"price\",\"finished_at\",\"category\",\"lender\",\"users_recruiter\"],\"edit\":[[{\"name\":\"price\",\"size\":4},{\"name\":\"finished_at\",\"size\":4}],[{\"name\":\"start_date\",\"size\":6},{\"name\":\"acepted\",\"size\":4}]],\"editRelations\":[\"category\",\"lender\",\"users_recruiter\"]}}', 'object', NULL, NULL),
(15, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', NULL, NULL),
(16, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"categories\":{\"edit\":{\"label\":\"categories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"categories\",\"searchable\":false,\"sortable\":false}},\"lender\":{\"edit\":{\"label\":\"lender\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"lender\",\"searchable\":true,\"sortable\":true}},\"phone\":{\"edit\":{\"label\":\"phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"phone\",\"searchable\":true,\"sortable\":true}},\"is_lender\":{\"edit\":{\"label\":\"is_lender\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"is_lender\",\"searchable\":true,\"sortable\":true}},\"aboutme\":{\"edit\":{\"label\":\"aboutme\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"aboutme\",\"searchable\":false,\"sortable\":false}},\"birth\":{\"edit\":{\"label\":\"birth\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"birth\",\"searchable\":true,\"sortable\":true}},\"provincia\":{\"edit\":{\"label\":\"provincia\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"provincia\",\"searchable\":true,\"sortable\":true}},\"localidad\":{\"edit\":{\"label\":\"localidad\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"localidad\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"Slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"profile_pic\":{\"edit\":{\"label\":\"profile_pic\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"profile_pic\",\"searchable\":false,\"sortable\":false}},\"firstName\":{\"edit\":{\"label\":\"firstName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstName\",\"searchable\":true,\"sortable\":true}},\"lastName\":{\"edit\":{\"label\":\"lastName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastName\",\"searchable\":true,\"sortable\":true}},\"avatar\":{\"edit\":{\"label\":\"avatar\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"avatar\",\"searchable\":true,\"sortable\":true}},\"ratings_reviews\":{\"edit\":{\"label\":\"ratings_reviews\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"ratings_reviews\",\"searchable\":false,\"sortable\":false}},\"averageScore\":{\"edit\":{\"label\":\"averageScore\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"averageScore\",\"searchable\":true,\"sortable\":true}},\"countsReview\":{\"edit\":{\"label\":\"countsReview\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"countsReview\",\"searchable\":true,\"sortable\":true}},\"notifications\":{\"edit\":{\"label\":\"notifications\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"notifications\",\"searchable\":false,\"sortable\":false}},\"notifications_requested\":{\"edit\":{\"label\":\"notifications_requested\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"notifications_requested\",\"searchable\":false,\"sortable\":false}},\"service_recruiters\":{\"edit\":{\"label\":\"service_recruiters\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"service_recruiters\",\"searchable\":false,\"sortable\":false}},\"lenders\":{\"edit\":{\"label\":\"lenders\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"lenders\",\"searchable\":false,\"sortable\":false}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"phone\",\"size\":4}],[{\"name\":\"is_lender\",\"size\":4}],[{\"name\":\"aboutme\",\"size\":12}],[{\"name\":\"birth\",\"size\":4},{\"name\":\"name\",\"size\":6}],[{\"name\":\"Slug\",\"size\":6},{\"name\":\"profile_pic\",\"size\":6}],[{\"name\":\"firstName\",\"size\":6},{\"name\":\"lastName\",\"size\":6}],[{\"name\":\"avatar\",\"size\":6},{\"name\":\"averageScore\",\"size\":4}],[{\"name\":\"countsReview\",\"size\":4}],[{\"name\":\"description\",\"size\":12}]],\"editRelations\":[\"role\",\"categories\",\"lender\",\"provincia\",\"localidad\",\"ratings_reviews\",\"notifications\",\"notifications_requested\",\"service_recruiters\",\"lenders\"]}}', 'object', NULL, NULL),
(17, 'plugin_content_manager_configuration_content_types::api::lender.lender', '{\"uid\":\"api::lender.lender\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"users_lender\":{\"edit\":{\"label\":\"users_lender\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users_lender\",\"searchable\":true,\"sortable\":true}},\"categories\":{\"edit\":{\"label\":\"categories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"categories\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"users_lender\",\"categories\"],\"edit\":[],\"editRelations\":[\"users_lender\",\"categories\"]}}', 'object', NULL, NULL),
(18, 'plugin_content_manager_configuration_content_types::api::category.category', '{\"uid\":\"api::category.category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"state\":{\"edit\":{\"label\":\"state\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"state\",\"searchable\":true,\"sortable\":true}},\"city\":{\"edit\":{\"label\":\"city\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"city\",\"searchable\":true,\"sortable\":true}},\"services\":{\"edit\":{\"label\":\"services\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"services\",\"searchable\":false,\"sortable\":false}},\"lender\":{\"edit\":{\"label\":\"lender\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"lender\",\"searchable\":true,\"sortable\":true}},\"provinces\":{\"edit\":{\"label\":\"provinces\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"provinces\",\"searchable\":false,\"sortable\":false}},\"Slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"state\",\"provinces\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"state\",\"size\":4}],[{\"name\":\"Slug\",\"size\":6}]],\"editRelations\":[\"city\",\"services\",\"lender\",\"provinces\"]}}', 'object', NULL, NULL),
(19, 'plugin_content_manager_configuration_content_types::api::province.province', '{\"uid\":\"api::province.province\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"cities\":{\"edit\":{\"label\":\"cities\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"cities\",\"searchable\":false,\"sortable\":false}},\"categories\":{\"edit\":{\"label\":\"categories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"categories\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"identificador\":{\"edit\":{\"label\":\"identificador\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"identificador\",\"searchable\":true,\"sortable\":true}},\"Slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"identificador\",\"cities\",\"categories\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"identificador\",\"size\":6}],[{\"name\":\"Slug\",\"size\":6}]],\"editRelations\":[\"cities\",\"categories\",\"users\"]}}', 'object', NULL, NULL),
(20, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(21, 'plugin_upload_metrics', '{\"weeklySchedule\":\"57 11 23 * * 3\",\"lastWeeklyUpdate\":1672884717039}', 'object', NULL, NULL),
(22, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}', 'object', NULL, NULL),
(23, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(24, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(25, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(26, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}', 'object', NULL, NULL),
(27, 'plugin_upload_api-folder', '{\"id\":1}', 'object', NULL, NULL),
(28, 'plugin_content_manager_configuration_content_types::plugin::ratings.review', '{\"uid\":\"plugin::ratings.review\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"score\":{\"edit\":{\"label\":\"score\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"score\",\"searchable\":true,\"sortable\":true}},\"author\":{\"edit\":{\"label\":\"author\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"author\",\"searchable\":true,\"sortable\":true}},\"comment\":{\"edit\":{\"label\":\"comment\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"comment\",\"searchable\":true,\"sortable\":true}},\"related_to\":{\"edit\":{\"label\":\"related_to\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"slug\"},\"list\":{\"label\":\"related_to\",\"searchable\":true,\"sortable\":true}},\"user\":{\"edit\":{\"label\":\"user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"user\",\"searchable\":true,\"sortable\":true}},\"notifications\":{\"edit\":{\"label\":\"notifications\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"notifications\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"score\",\"author\",\"comment\"],\"edit\":[[{\"name\":\"score\",\"size\":4},{\"name\":\"comment\",\"size\":6}]],\"editRelations\":[\"author\",\"related_to\",\"user\",\"notifications\"]}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(29, 'plugin_content_manager_configuration_content_types::plugin::ratings.r-content-id', '{\"uid\":\"plugin::ratings.r-content-id\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"slug\",\"defaultSortBy\":\"slug\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"reviews\":{\"edit\":{\"label\":\"reviews\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"reviews\",\"searchable\":false,\"sortable\":false}},\"average\":{\"edit\":{\"label\":\"average\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"average\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"reviews\",\"average\",\"slug\"],\"editRelations\":[\"reviews\"],\"edit\":[[{\"name\":\"average\",\"size\":4},{\"name\":\"slug\",\"size\":6}]]}}', 'object', NULL, NULL),
(30, 'core_admin_project-settings', '{\"menuLogo\":{\"name\":\"Lavorar-logo-negativo.svg\",\"hash\":\"Lavorar_logo_negativo_bff3ae6a42\",\"url\":\"/uploads/Lavorar_logo_negativo_bff3ae6a42.svg\",\"width\":500,\"height\":500,\"ext\":\".svg\",\"size\":1.85,\"provider\":\"local\"}}', 'object', NULL, NULL),
(31, 'plugin_content_manager_configuration_content_types::plugin::custom-api.custom-api', '{\"uid\":\"plugin::custom-api.custom-api\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"selectedContentType\":{\"edit\":{\"label\":\"selectedContentType\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"selectedContentType\",\"searchable\":false,\"sortable\":false}},\"structure\":{\"edit\":{\"label\":\"structure\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"structure\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"slug\",\"createdAt\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"selectedContentType\",\"size\":12}],[{\"name\":\"structure\",\"size\":12}]]}}', 'object', NULL, NULL),
(32, 'plugin_content_manager_configuration_content_types::api::notification.notification', '{\"uid\":\"api::notification.notification\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"user\":{\"edit\":{\"label\":\"user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"user\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"read\":{\"edit\":{\"label\":\"read\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"read\",\"searchable\":true,\"sortable\":true}},\"acepted\":{\"edit\":{\"label\":\"acepted\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"acepted\",\"searchable\":true,\"sortable\":true}},\"rejected\":{\"edit\":{\"label\":\"rejected\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"rejected\",\"searchable\":true,\"sortable\":true}},\"user_request\":{\"edit\":{\"label\":\"user_request\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"user_request\",\"searchable\":true,\"sortable\":true}},\"canceled\":{\"edit\":{\"label\":\"canceled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"canceled\",\"searchable\":true,\"sortable\":true}},\"review\":{\"edit\":{\"label\":\"review\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"review\",\"searchable\":true,\"sortable\":true}},\"score\":{\"edit\":{\"label\":\"score\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"score\",\"searchable\":true,\"sortable\":true}},\"comment\":{\"edit\":{\"label\":\"comment\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"comment\",\"searchable\":true,\"sortable\":true}},\"review_updatedAt\":{\"edit\":{\"label\":\"review_updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"review_updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"user\",\"type\",\"read\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"read\",\"size\":4}],[{\"name\":\"acepted\",\"size\":4},{\"name\":\"rejected\",\"size\":4},{\"name\":\"canceled\",\"size\":4}],[{\"name\":\"score\",\"size\":4},{\"name\":\"comment\",\"size\":6}],[{\"name\":\"review_updatedAt\",\"size\":6}]],\"editRelations\":[\"user\",\"user_request\",\"review\"]}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `schema` json DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(67, '{\"tables\": [{\"name\": \"strapi_core_store_settings\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"value\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"environment\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tag\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"strapi_webhooks\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"url\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"headers\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"events\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"enabled\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subject\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"properties\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"conditions\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"firstname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lastname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"registration_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_active\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"prefered_language\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_tokens\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"access_key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"last_used_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"expires_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lifespan\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_token_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"alternative_text\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"caption\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"width\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"height\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"formats\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"hash\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ext\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"mime\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"size\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"preview_url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider_metadata\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_files_folder_path_index\", \"type\": null, \"columns\": [\"folder_path\"]}, {\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path_id\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_path_id_index\", \"type\": \"unique\", \"columns\": [\"path_id\"]}, {\"name\": \"upload_folders_path_index\", \"type\": \"unique\", \"columns\": [\"path\"]}, {\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"custom_apis\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"selected_content_type\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"structure\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"custom_apis_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"custom_apis_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"custom_apis_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"custom_apis_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"custom_apis_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"i18n_locale\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmation_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmed\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"phone\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_lender\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"aboutme\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"birth\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"first_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"last_name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"avatar\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"average_score\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"counts_review\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"description\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"reviews\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [10, 2], \"name\": \"score\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"comment\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"reviews_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"reviews_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"reviews_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"reviews_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"r_content_ids\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [10, 2], \"name\": \"average\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"r_content_ids_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"r_content_ids_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"r_content_ids_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"r_content_ids_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"categories\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"state\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"categories_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"categories_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"categories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"categories_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"categories_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"cities\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"identificador\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"cities_identificador_unique\", \"type\": \"unique\", \"columns\": [\"identificador\"]}, {\"name\": \"cities_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"cities_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"cities_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"cities_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"lenders\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"lenders_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"lenders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"lenders_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"lenders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"notifications\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"read\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"acepted\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"rejected\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"canceled\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"score\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"comment\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"review_updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"notifications_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"notifications_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"notifications_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"notifications_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"provinces\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"identificador\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"slug\", \"type\": \"string\", \"unique\": true, \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"provinces_identificador_unique\", \"type\": \"unique\", \"columns\": [\"identificador\"]}, {\"name\": \"provinces_slug_unique\", \"type\": \"unique\", \"columns\": [\"slug\"]}, {\"name\": \"provinces_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"provinces_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"provinces_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"provinces_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"services\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"price\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"finished_at\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"start_date\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"acepted\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"services_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"services_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"services_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"services_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users_roles_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_token_permissions_token_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"api_token_permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"api_token_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_token_permissions_token_links_fk\", \"columns\": [\"api_token_permission_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_inv_fk\", \"columns\": [\"api_token_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_token_permissions_token_links_fk\", \"columns\": [\"api_token_permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_api_token_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_inv_fk\", \"columns\": [\"api_token_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_api_tokens\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_related_morphs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"]}], \"foreignKeys\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_folder_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"]}], \"foreignKeys\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders_parent_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_categories_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_categories_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_categories_links_inv_fk\", \"columns\": [\"category_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_categories_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_categories_links_inv_fk\", \"columns\": [\"category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"categories\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_lender_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lender_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_lender_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_lender_links_inv_fk\", \"columns\": [\"lender_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_lender_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_lender_links_inv_fk\", \"columns\": [\"lender_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"lenders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_provincia_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"province_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_provincia_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_provincia_links_inv_fk\", \"columns\": [\"province_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_provincia_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_provincia_links_inv_fk\", \"columns\": [\"province_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"provinces\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_localidad_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"city_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_localidad_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_localidad_links_inv_fk\", \"columns\": [\"city_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_localidad_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_localidad_links_inv_fk\", \"columns\": [\"city_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"cities\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"reviews_author_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"review_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"reviews_author_links_fk\", \"columns\": [\"review_id\"]}, {\"name\": \"reviews_author_links_inv_fk\", \"columns\": [\"user_id\"]}], \"foreignKeys\": [{\"name\": \"reviews_author_links_fk\", \"columns\": [\"review_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"reviews\", \"referencedColumns\": [\"id\"]}, {\"name\": \"reviews_author_links_inv_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"reviews_related_to_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"review_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"r_content_id_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"reviews_related_to_links_fk\", \"columns\": [\"review_id\"]}, {\"name\": \"reviews_related_to_links_inv_fk\", \"columns\": [\"r_content_id_id\"]}], \"foreignKeys\": [{\"name\": \"reviews_related_to_links_fk\", \"columns\": [\"review_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"reviews\", \"referencedColumns\": [\"id\"]}, {\"name\": \"reviews_related_to_links_inv_fk\", \"columns\": [\"r_content_id_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"r_content_ids\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"reviews_user_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"review_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"reviews_user_links_fk\", \"columns\": [\"review_id\"]}, {\"name\": \"reviews_user_links_inv_fk\", \"columns\": [\"user_id\"]}], \"foreignKeys\": [{\"name\": \"reviews_user_links_fk\", \"columns\": [\"review_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"reviews\", \"referencedColumns\": [\"id\"]}, {\"name\": \"reviews_user_links_inv_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"categories_city_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"city_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"categories_city_links_fk\", \"columns\": [\"category_id\"]}, {\"name\": \"categories_city_links_inv_fk\", \"columns\": [\"city_id\"]}], \"foreignKeys\": [{\"name\": \"categories_city_links_fk\", \"columns\": [\"category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"categories\", \"referencedColumns\": [\"id\"]}, {\"name\": \"categories_city_links_inv_fk\", \"columns\": [\"city_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"cities\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"categories_lender_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lender_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"categories_lender_links_fk\", \"columns\": [\"category_id\"]}, {\"name\": \"categories_lender_links_inv_fk\", \"columns\": [\"lender_id\"]}], \"foreignKeys\": [{\"name\": \"categories_lender_links_fk\", \"columns\": [\"category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"categories\", \"referencedColumns\": [\"id\"]}, {\"name\": \"categories_lender_links_inv_fk\", \"columns\": [\"lender_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"lenders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"categories_provinces_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"province_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"categories_provinces_links_fk\", \"columns\": [\"category_id\"]}, {\"name\": \"categories_provinces_links_inv_fk\", \"columns\": [\"province_id\"]}], \"foreignKeys\": [{\"name\": \"categories_provinces_links_fk\", \"columns\": [\"category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"categories\", \"referencedColumns\": [\"id\"]}, {\"name\": \"categories_provinces_links_inv_fk\", \"columns\": [\"province_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"provinces\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"cities_province_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"city_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"province_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"cities_province_links_fk\", \"columns\": [\"city_id\"]}, {\"name\": \"cities_province_links_inv_fk\", \"columns\": [\"province_id\"]}], \"foreignKeys\": [{\"name\": \"cities_province_links_fk\", \"columns\": [\"city_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"cities\", \"referencedColumns\": [\"id\"]}, {\"name\": \"cities_province_links_inv_fk\", \"columns\": [\"province_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"provinces\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"notifications_user_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"notification_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"notifications_user_links_fk\", \"columns\": [\"notification_id\"]}, {\"name\": \"notifications_user_links_inv_fk\", \"columns\": [\"user_id\"]}], \"foreignKeys\": [{\"name\": \"notifications_user_links_fk\", \"columns\": [\"notification_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"notifications\", \"referencedColumns\": [\"id\"]}, {\"name\": \"notifications_user_links_inv_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"notifications_user_request_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"notification_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"notifications_user_request_links_fk\", \"columns\": [\"notification_id\"]}, {\"name\": \"notifications_user_request_links_inv_fk\", \"columns\": [\"user_id\"]}], \"foreignKeys\": [{\"name\": \"notifications_user_request_links_fk\", \"columns\": [\"notification_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"notifications\", \"referencedColumns\": [\"id\"]}, {\"name\": \"notifications_user_request_links_inv_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"notifications_review_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"notification_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"review_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"notifications_review_links_fk\", \"columns\": [\"notification_id\"]}, {\"name\": \"notifications_review_links_inv_fk\", \"columns\": [\"review_id\"]}], \"foreignKeys\": [{\"name\": \"notifications_review_links_fk\", \"columns\": [\"notification_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"notifications\", \"referencedColumns\": [\"id\"]}, {\"name\": \"notifications_review_links_inv_fk\", \"columns\": [\"review_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"reviews\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"services_category_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"service_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"category_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"services_category_links_fk\", \"columns\": [\"service_id\"]}, {\"name\": \"services_category_links_inv_fk\", \"columns\": [\"category_id\"]}], \"foreignKeys\": [{\"name\": \"services_category_links_fk\", \"columns\": [\"service_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"services\", \"referencedColumns\": [\"id\"]}, {\"name\": \"services_category_links_inv_fk\", \"columns\": [\"category_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"categories\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"services_lender_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"service_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"services_lender_links_fk\", \"columns\": [\"service_id\"]}, {\"name\": \"services_lender_links_inv_fk\", \"columns\": [\"user_id\"]}], \"foreignKeys\": [{\"name\": \"services_lender_links_fk\", \"columns\": [\"service_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"services\", \"referencedColumns\": [\"id\"]}, {\"name\": \"services_lender_links_inv_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"services_users_recruiter_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"service_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"services_users_recruiter_links_fk\", \"columns\": [\"service_id\"]}, {\"name\": \"services_users_recruiter_links_inv_fk\", \"columns\": [\"user_id\"]}], \"foreignKeys\": [{\"name\": \"services_users_recruiter_links_fk\", \"columns\": [\"service_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"services\", \"referencedColumns\": [\"id\"]}, {\"name\": \"services_users_recruiter_links_inv_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}]}]}', '2022-12-05 18:27:37', '2f6b810cbfa71246bdcdfdf9ddb1b7e4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` json DEFAULT NULL,
  `events` json DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `upload_folders`
--

INSERT INTO `upload_folders` (`id`, `name`, `path_id`, `path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'API Uploads', 1, '/1', '2022-11-09 17:31:49.244000', '2022-11-09 17:31:49.244000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `upload_folders_parent_links`
--

CREATE TABLE `upload_folders_parent_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_folder_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::users-permissions.user.me', '2022-10-13 22:58:15.118000', '2022-10-13 22:58:15.118000', NULL, NULL),
(2, 'plugin::users-permissions.auth.changePassword', '2022-10-13 22:58:15.118000', '2022-10-13 22:58:15.118000', NULL, NULL),
(3, 'plugin::users-permissions.auth.callback', '2022-10-13 22:58:15.135000', '2022-10-13 22:58:15.135000', NULL, NULL),
(4, 'plugin::users-permissions.auth.connect', '2022-10-13 22:58:15.135000', '2022-10-13 22:58:15.135000', NULL, NULL),
(5, 'plugin::users-permissions.auth.resetPassword', '2022-10-13 22:58:15.135000', '2022-10-13 22:58:15.135000', NULL, NULL),
(6, 'plugin::users-permissions.auth.forgotPassword', '2022-10-13 22:58:15.135000', '2022-10-13 22:58:15.135000', NULL, NULL),
(7, 'plugin::users-permissions.auth.emailConfirmation', '2022-10-13 22:58:15.135000', '2022-10-13 22:58:15.135000', NULL, NULL),
(8, 'plugin::users-permissions.auth.sendEmailConfirmation', '2022-10-13 22:58:15.135000', '2022-10-13 22:58:15.135000', NULL, NULL),
(9, 'plugin::users-permissions.auth.register', '2022-10-13 22:58:15.135000', '2022-10-13 22:58:15.135000', NULL, NULL),
(10, 'api::category.category.find', '2022-10-13 23:04:06.681000', '2022-10-13 23:04:06.681000', NULL, NULL),
(11, 'api::category.category.findOne', '2022-10-13 23:04:06.681000', '2022-10-13 23:04:06.681000', NULL, NULL),
(12, 'api::category.category.create', '2022-10-13 23:04:06.681000', '2022-10-13 23:04:06.681000', NULL, NULL),
(13, 'api::category.category.update', '2022-10-13 23:04:06.681000', '2022-10-13 23:04:06.681000', NULL, NULL),
(14, 'plugin::users-permissions.auth.changePassword', '2022-10-19 14:08:01.683000', '2022-10-19 14:08:01.683000', NULL, NULL),
(15, 'plugin::users-permissions.user.create', '2022-10-19 14:08:01.683000', '2022-10-19 14:08:01.683000', NULL, NULL),
(16, 'plugin::users-permissions.user.find', '2022-10-19 14:08:01.683000', '2022-10-19 14:08:01.683000', NULL, NULL),
(22, 'plugin::users-permissions.auth.callback', '2022-10-21 00:15:32.389000', '2022-10-21 00:15:32.389000', NULL, NULL),
(23, 'plugin::users-permissions.auth.changePassword', '2022-10-21 00:15:32.389000', '2022-10-21 00:15:32.389000', NULL, NULL),
(24, 'plugin::users-permissions.auth.resetPassword', '2022-10-21 00:15:32.389000', '2022-10-21 00:15:32.389000', NULL, NULL),
(25, 'plugin::users-permissions.auth.forgotPassword', '2022-10-21 00:15:32.389000', '2022-10-21 00:15:32.389000', NULL, NULL),
(26, 'plugin::users-permissions.auth.sendEmailConfirmation', '2022-10-21 00:15:32.390000', '2022-10-21 00:15:32.390000', NULL, NULL),
(27, 'plugin::users-permissions.user.me', '2022-10-21 00:15:32.390000', '2022-10-21 00:15:32.390000', NULL, NULL),
(28, 'plugin::users-permissions.permissions.getPermissions', '2022-10-21 00:15:32.390000', '2022-10-21 00:15:32.390000', NULL, NULL),
(29, 'plugin::users-permissions.user.update', '2022-10-21 00:15:32.390000', '2022-10-21 00:15:32.390000', NULL, NULL),
(30, 'plugin::users-permissions.auth.register', '2022-10-21 00:15:32.390000', '2022-10-21 00:15:32.390000', NULL, NULL),
(31, 'plugin::users-permissions.user.find', '2022-10-21 00:15:32.390000', '2022-10-21 00:15:32.390000', NULL, NULL),
(32, 'plugin::users-permissions.auth.emailConfirmation', '2022-10-21 00:15:32.390000', '2022-10-21 00:15:32.390000', NULL, NULL),
(33, 'plugin::users-permissions.user.findOne', '2022-10-21 00:15:32.390000', '2022-10-21 00:15:32.390000', NULL, NULL),
(34, 'plugin::users-permissions.auth.connect', '2022-10-21 00:15:32.389000', '2022-10-21 00:15:32.389000', NULL, NULL),
(35, 'plugin::users-permissions.role.findOne', '2022-10-21 00:16:34.387000', '2022-10-21 00:16:34.387000', NULL, NULL),
(36, 'plugin::users-permissions.role.find', '2022-10-21 00:16:34.387000', '2022-10-21 00:16:34.387000', NULL, NULL),
(37, 'plugin::users-permissions.role.updateRole', '2022-10-21 00:16:34.387000', '2022-10-21 00:16:34.387000', NULL, NULL),
(38, 'plugin::users-permissions.auth.callback', '2022-10-21 00:22:22.321000', '2022-10-21 00:22:22.321000', NULL, NULL),
(39, 'plugin::users-permissions.auth.resetPassword', '2022-10-21 00:22:22.321000', '2022-10-21 00:22:22.321000', NULL, NULL),
(40, 'plugin::users-permissions.auth.connect', '2022-10-21 00:22:22.321000', '2022-10-21 00:22:22.321000', NULL, NULL),
(41, 'plugin::users-permissions.auth.sendEmailConfirmation', '2022-10-21 00:22:22.321000', '2022-10-21 00:22:22.321000', NULL, NULL),
(42, 'plugin::users-permissions.auth.emailConfirmation', '2022-10-21 00:22:22.321000', '2022-10-21 00:22:22.321000', NULL, NULL),
(43, 'plugin::users-permissions.auth.forgotPassword', '2022-10-21 00:22:22.321000', '2022-10-21 00:22:22.321000', NULL, NULL),
(44, 'plugin::users-permissions.user.update', '2022-10-21 00:22:22.321000', '2022-10-21 00:22:22.321000', NULL, NULL),
(45, 'plugin::users-permissions.user.find', '2022-10-21 00:22:22.322000', '2022-10-21 00:22:22.322000', NULL, NULL),
(46, 'plugin::users-permissions.user.findOne', '2022-10-21 00:22:22.322000', '2022-10-21 00:22:22.322000', NULL, NULL),
(47, 'plugin::users-permissions.role.findOne', '2022-10-21 00:22:22.322000', '2022-10-21 00:22:22.322000', NULL, NULL),
(48, 'plugin::users-permissions.role.updateRole', '2022-10-21 00:22:22.322000', '2022-10-21 00:22:22.322000', NULL, NULL),
(49, 'plugin::users-permissions.role.find', '2022-10-21 00:22:22.322000', '2022-10-21 00:22:22.322000', NULL, NULL),
(51, 'api::category.category.find', '2022-10-25 14:17:17.734000', '2022-10-25 14:17:17.734000', NULL, NULL),
(52, 'api::category.category.findOne', '2022-10-25 14:17:17.734000', '2022-10-25 14:17:17.734000', NULL, NULL),
(53, 'api::category.category.update', '2022-10-25 14:17:17.734000', '2022-10-25 14:17:17.734000', NULL, NULL),
(54, 'api::city.city.find', '2022-10-28 22:44:32.522000', '2022-10-28 22:44:32.522000', NULL, NULL),
(55, 'api::city.city.create', '2022-10-28 22:44:32.522000', '2022-10-28 22:44:32.522000', NULL, NULL),
(56, 'api::city.city.findOne', '2022-10-28 22:44:32.522000', '2022-10-28 22:44:32.522000', NULL, NULL),
(57, 'api::province.province.find', '2022-10-28 22:44:32.522000', '2022-10-28 22:44:32.522000', NULL, NULL),
(58, 'api::province.province.findOne', '2022-10-28 22:44:32.522000', '2022-10-28 22:44:32.522000', NULL, NULL),
(59, 'api::province.province.create', '2022-10-28 22:44:32.522000', '2022-10-28 22:44:32.522000', NULL, NULL),
(61, 'api::city.city.find', '2022-10-29 15:52:41.447000', '2022-10-29 15:52:41.447000', NULL, NULL),
(62, 'api::city.city.findOne', '2022-10-29 15:52:41.447000', '2022-10-29 15:52:41.447000', NULL, NULL),
(63, 'api::city.city.create', '2022-10-29 15:52:41.447000', '2022-10-29 15:52:41.447000', NULL, NULL),
(64, 'api::city.city.update', '2022-10-29 15:52:52.943000', '2022-10-29 15:52:52.943000', NULL, NULL),
(65, 'api::province.province.find', '2022-10-29 15:52:52.943000', '2022-10-29 15:52:52.943000', NULL, NULL),
(66, 'api::province.province.findOne', '2022-10-29 15:52:52.943000', '2022-10-29 15:52:52.943000', NULL, NULL),
(67, 'api::province.province.create', '2022-10-29 15:52:52.943000', '2022-10-29 15:52:52.943000', NULL, NULL),
(68, 'api::province.province.update', '2022-10-29 15:52:52.943000', '2022-10-29 15:52:52.943000', NULL, NULL),
(72, 'api::category.category.find', '2022-11-05 15:20:46.911000', '2022-11-05 15:20:46.911000', NULL, NULL),
(73, 'api::category.category.findOne', '2022-11-05 15:20:46.911000', '2022-11-05 15:20:46.911000', NULL, NULL),
(74, 'api::category.category.update', '2022-11-05 15:20:46.911000', '2022-11-05 15:20:46.911000', NULL, NULL),
(75, 'api::city.city.findOne', '2022-11-05 15:20:46.911000', '2022-11-05 15:20:46.911000', NULL, NULL),
(76, 'api::province.province.find', '2022-11-05 15:20:46.911000', '2022-11-05 15:20:46.911000', NULL, NULL),
(77, 'api::province.province.create', '2022-11-05 15:20:46.911000', '2022-11-05 15:20:46.911000', NULL, NULL),
(78, 'api::city.city.find', '2022-11-05 15:20:46.911000', '2022-11-05 15:20:46.911000', NULL, NULL),
(79, 'api::city.city.create', '2022-11-05 15:20:46.911000', '2022-11-05 15:20:46.911000', NULL, NULL),
(80, 'api::city.city.delete', '2022-11-05 15:20:46.911000', '2022-11-05 15:20:46.911000', NULL, NULL),
(82, 'api::province.province.findOne', '2022-11-05 15:20:46.911000', '2022-11-05 15:20:46.911000', NULL, NULL),
(83, 'api::province.province.delete', '2022-11-05 15:20:46.911000', '2022-11-05 15:20:46.911000', NULL, NULL),
(84, 'api::service.service.find', '2022-11-05 15:20:46.911000', '2022-11-05 15:20:46.911000', NULL, NULL),
(85, 'api::service.service.findOne', '2022-11-05 15:20:46.911000', '2022-11-05 15:20:46.911000', NULL, NULL),
(86, 'api::service.service.create', '2022-11-05 15:20:46.911000', '2022-11-05 15:20:46.911000', NULL, NULL),
(87, 'api::service.service.update', '2022-11-05 15:20:46.911000', '2022-11-05 15:20:46.911000', NULL, NULL),
(88, 'api::service.service.delete', '2022-11-05 15:20:46.911000', '2022-11-05 15:20:46.911000', NULL, NULL),
(89, 'plugin::users-permissions.user.updateLoggedInUser', '2022-11-05 15:20:46.911000', '2022-11-05 15:20:46.911000', NULL, NULL),
(94, 'api::service.service.find', '2022-11-05 23:06:34.939000', '2022-11-05 23:06:34.939000', NULL, NULL),
(95, 'api::service.service.findOne', '2022-11-05 23:06:34.939000', '2022-11-05 23:06:34.939000', NULL, NULL),
(98, 'api::service.service.find', '2022-11-05 23:07:14.310000', '2022-11-05 23:07:14.310000', NULL, NULL),
(99, 'api::service.service.findOne', '2022-11-05 23:07:14.310000', '2022-11-05 23:07:14.310000', NULL, NULL),
(100, 'plugin::content-type-builder.content-types.getContentTypes', '2022-11-05 23:07:14.310000', '2022-11-05 23:07:14.310000', NULL, NULL),
(101, 'plugin::content-type-builder.content-types.getContentType', '2022-11-05 23:07:14.310000', '2022-11-05 23:07:14.310000', NULL, NULL),
(102, 'plugin::users-permissions.role.findOne', '2022-11-05 23:07:14.310000', '2022-11-05 23:07:14.310000', NULL, NULL),
(103, 'plugin::users-permissions.role.find', '2022-11-05 23:07:14.310000', '2022-11-05 23:07:14.310000', NULL, NULL),
(104, 'plugin::users-permissions.user.findOne', '2022-11-07 21:57:42.620000', '2022-11-07 21:57:42.620000', NULL, NULL),
(105, 'plugin::upload.content-api.find', '2022-11-09 17:27:20.781000', '2022-11-09 17:27:20.781000', NULL, NULL),
(106, 'plugin::upload.content-api.upload', '2022-11-09 17:27:20.781000', '2022-11-09 17:27:20.781000', NULL, NULL),
(107, 'plugin::upload.content-api.findOne', '2022-11-09 17:27:20.781000', '2022-11-09 17:27:20.781000', NULL, NULL),
(108, 'plugin::upload.content-api.find', '2022-11-09 17:28:38.731000', '2022-11-09 17:28:38.731000', NULL, NULL),
(109, 'plugin::upload.content-api.upload', '2022-11-09 17:28:38.731000', '2022-11-09 17:28:38.731000', NULL, NULL),
(110, 'plugin::upload.content-api.findOne', '2022-11-09 17:28:38.731000', '2022-11-09 17:28:38.731000', NULL, NULL),
(111, 'plugin::upload.content-api.find', '2022-11-09 17:28:46.143000', '2022-11-09 17:28:46.143000', NULL, NULL),
(112, 'plugin::upload.content-api.findOne', '2022-11-09 17:28:46.143000', '2022-11-09 17:28:46.143000', NULL, NULL),
(113, 'plugin::upload.content-api.upload', '2022-11-09 17:28:46.143000', '2022-11-09 17:28:46.143000', NULL, NULL),
(114, 'plugin::slugify.slugController.findSlug', '2022-11-17 17:47:00.898000', '2022-11-17 17:47:00.898000', NULL, NULL),
(115, 'plugin::ratings.reviews.find', '2022-11-22 15:18:54.253000', '2022-11-22 15:18:54.253000', NULL, NULL),
(116, 'plugin::ratings.reviews.getPageSize', '2022-11-22 15:18:54.253000', '2022-11-22 15:18:54.253000', NULL, NULL),
(117, 'plugin::ratings.reviews.count', '2022-11-22 15:18:54.253000', '2022-11-22 15:18:54.253000', NULL, NULL),
(118, 'plugin::ratings.reviews.getUserReview', '2022-11-22 15:18:54.253000', '2022-11-22 15:18:54.253000', NULL, NULL),
(119, 'plugin::ratings.reviews.getStats', '2022-11-22 15:18:54.253000', '2022-11-22 15:18:54.253000', NULL, NULL),
(120, 'plugin::ratings.reviews.create', '2022-11-22 15:19:04.892000', '2022-11-22 15:19:04.892000', NULL, NULL),
(121, 'plugin::ratings.reviews.find', '2022-11-22 15:19:14.190000', '2022-11-22 15:19:14.190000', NULL, NULL),
(122, 'plugin::ratings.reviews.create', '2022-11-22 15:19:14.190000', '2022-11-22 15:19:14.190000', NULL, NULL),
(123, 'plugin::ratings.reviews.getPageSize', '2022-11-22 15:19:14.190000', '2022-11-22 15:19:14.190000', NULL, NULL),
(124, 'plugin::ratings.reviews.count', '2022-11-22 15:19:14.190000', '2022-11-22 15:19:14.190000', NULL, NULL),
(125, 'plugin::ratings.reviews.getStats', '2022-11-22 15:19:14.191000', '2022-11-22 15:19:14.191000', NULL, NULL),
(126, 'plugin::ratings.reviews.getUserReview', '2022-11-22 15:19:14.191000', '2022-11-22 15:19:14.191000', NULL, NULL),
(127, 'plugin::ratings.reviews.find', '2022-11-22 15:19:27.577000', '2022-11-22 15:19:27.577000', NULL, NULL),
(128, 'plugin::ratings.reviews.getPageSize', '2022-11-22 15:19:27.577000', '2022-11-22 15:19:27.577000', NULL, NULL),
(129, 'plugin::ratings.reviews.count', '2022-11-22 15:19:27.577000', '2022-11-22 15:19:27.577000', NULL, NULL),
(130, 'plugin::ratings.reviews.getStats', '2022-11-22 15:19:27.577000', '2022-11-22 15:19:27.577000', NULL, NULL),
(131, 'plugin::ratings.reviews.updateReview', '2022-11-23 15:36:25.525000', '2022-11-23 15:36:25.525000', NULL, NULL),
(132, 'plugin::ratings.reviews.updateReview', '2022-11-23 15:36:36.288000', '2022-11-23 15:36:36.288000', NULL, NULL),
(133, 'plugin::ratings.reviews.getUserReview', '2022-11-23 18:15:36.897000', '2022-11-23 18:15:36.897000', NULL, NULL),
(134, 'plugin::users-permissions.user.count', '2022-11-24 10:05:51.016000', '2022-11-24 10:05:51.016000', NULL, NULL),
(135, 'api::notification.notification.find', '2022-11-26 16:04:09.006000', '2022-11-26 16:04:09.006000', NULL, NULL),
(136, 'api::notification.notification.create', '2022-11-26 16:04:09.006000', '2022-11-26 16:04:09.006000', NULL, NULL),
(137, 'api::notification.notification.findOne', '2022-11-26 16:04:09.006000', '2022-11-26 16:04:09.006000', NULL, NULL),
(138, 'api::notification.notification.update', '2022-11-26 16:04:09.006000', '2022-11-26 16:04:09.006000', NULL, NULL),
(139, 'api::notification.notification.find', '2022-11-26 16:40:07.871000', '2022-11-26 16:40:07.871000', NULL, NULL),
(140, 'api::notification.notification.findOne', '2022-11-26 16:40:07.871000', '2022-11-26 16:40:07.871000', NULL, NULL),
(141, 'api::notification.notification.update', '2022-11-26 16:40:07.871000', '2022-11-26 16:40:07.871000', NULL, NULL),
(142, 'api::notification.notification.create', '2022-11-26 16:40:07.871000', '2022-11-26 16:40:07.871000', NULL, NULL),
(143, 'api::province.province.update', '2022-11-28 12:52:39.369000', '2022-11-28 12:52:39.369000', NULL, NULL),
(144, 'api::notification.notification.delete', '2022-11-28 12:52:50.643000', '2022-11-28 12:52:50.643000', NULL, NULL),
(145, 'api::notification.notification.delete', '2022-11-28 12:56:15.087000', '2022-11-28 12:56:15.087000', NULL, NULL),
(146, 'plugin::users-permissions.user.updateLoggedInUser', '2022-12-04 18:14:30.839000', '2022-12-04 18:14:30.839000', NULL, NULL),
(147, 'plugin::ratings.reviews.findAll', '2022-12-05 16:51:11.313000', '2022-12-05 16:51:11.313000', NULL, NULL),
(148, 'plugin::ratings.reviews.findAll', '2022-12-05 16:51:23.731000', '2022-12-05 16:51:23.731000', NULL, NULL),
(149, 'plugin::ratings.reviews.findAll', '2022-12-05 16:51:31.383000', '2022-12-05 16:51:31.383000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `up_permissions_role_links`
--

CREATE TABLE `up_permissions_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 1, NULL),
(2, 2, 1, NULL),
(3, 3, 2, NULL),
(4, 4, 2, NULL),
(5, 6, 2, NULL),
(6, 5, 2, NULL),
(7, 9, 2, NULL),
(8, 8, 2, NULL),
(9, 7, 2, NULL),
(10, 10, 2, NULL),
(11, 11, 2, NULL),
(12, 12, 2, NULL),
(13, 13, 2, NULL),
(14, 16, 2, NULL),
(15, 14, 2, NULL),
(16, 15, 2, NULL),
(22, 22, 3, NULL),
(23, 31, 3, NULL),
(24, 23, 3, NULL),
(25, 32, 3, NULL),
(26, 24, 3, NULL),
(27, 25, 3, NULL),
(28, 26, 3, NULL),
(29, 33, 3, NULL),
(30, 28, 3, NULL),
(31, 29, 3, NULL),
(32, 27, 3, NULL),
(33, 30, 3, NULL),
(34, 34, 3, NULL),
(35, 35, 3, NULL),
(36, 37, 3, NULL),
(37, 36, 3, NULL),
(38, 38, 1, NULL),
(39, 39, 1, NULL),
(40, 41, 1, NULL),
(41, 40, 1, NULL),
(42, 44, 1, NULL),
(43, 42, 1, NULL),
(44, 43, 1, NULL),
(45, 47, 1, NULL),
(46, 46, 1, NULL),
(47, 45, 1, NULL),
(48, 48, 1, NULL),
(49, 49, 1, NULL),
(51, 51, 1, NULL),
(52, 52, 1, NULL),
(53, 53, 1, NULL),
(54, 54, 2, NULL),
(55, 55, 2, NULL),
(56, 59, 2, NULL),
(57, 58, 2, NULL),
(58, 56, 2, NULL),
(59, 57, 2, NULL),
(61, 61, 1, NULL),
(62, 62, 1, NULL),
(63, 63, 1, NULL),
(64, 65, 1, NULL),
(65, 66, 1, NULL),
(66, 64, 1, NULL),
(67, 67, 1, NULL),
(68, 68, 1, NULL),
(72, 72, 3, NULL),
(73, 73, 3, NULL),
(74, 74, 3, NULL),
(75, 76, 3, NULL),
(76, 79, 3, NULL),
(78, 75, 3, NULL),
(79, 88, 3, NULL),
(80, 82, 3, NULL),
(81, 80, 3, NULL),
(82, 78, 3, NULL),
(83, 89, 3, NULL),
(84, 86, 3, NULL),
(86, 83, 3, NULL),
(87, 85, 3, NULL),
(88, 77, 3, NULL),
(89, 87, 3, NULL),
(90, 84, 3, NULL),
(93, 95, 1, NULL),
(94, 94, 1, NULL),
(98, 98, 2, NULL),
(99, 103, 2, NULL),
(100, 102, 2, NULL),
(101, 101, 2, NULL),
(102, 99, 2, NULL),
(103, 100, 2, NULL),
(104, 104, 2, NULL),
(105, 105, 1, NULL),
(106, 106, 1, NULL),
(107, 107, 1, NULL),
(108, 108, 2, NULL),
(109, 109, 2, NULL),
(110, 110, 2, NULL),
(111, 111, 3, NULL),
(112, 113, 3, NULL),
(113, 112, 3, NULL),
(114, 114, 1, NULL),
(115, 115, 1, NULL),
(116, 116, 1, NULL),
(117, 119, 1, NULL),
(118, 118, 1, NULL),
(119, 117, 1, NULL),
(120, 120, 1, NULL),
(121, 121, 3, NULL),
(122, 124, 3, NULL),
(123, 125, 3, NULL),
(124, 122, 3, NULL),
(125, 123, 3, NULL),
(126, 126, 3, NULL),
(127, 127, 2, NULL),
(128, 129, 2, NULL),
(129, 128, 2, NULL),
(130, 130, 2, NULL),
(131, 131, 3, NULL),
(132, 132, 1, NULL),
(133, 133, 2, NULL),
(134, 134, 2, NULL),
(135, 135, 3, NULL),
(136, 137, 3, NULL),
(137, 138, 3, NULL),
(138, 136, 3, NULL),
(139, 139, 1, NULL),
(140, 141, 1, NULL),
(141, 140, 1, NULL),
(142, 142, 1, NULL),
(143, 143, 3, NULL),
(144, 144, 1, NULL),
(145, 145, 3, NULL),
(146, 146, 1, NULL),
(147, 147, 1, NULL),
(148, 148, 2, NULL),
(149, 149, 3, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2022-10-13 22:58:15.103000', '2022-12-05 16:51:11.307000', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2022-10-13 22:58:15.107000', '2022-12-05 16:51:23.726000', NULL, NULL),
(3, 'Lender', 'User that want to be hired and sells his skills', 'lender', '2022-10-21 00:09:37.103000', '2022-12-05 16:51:31.379000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `up_users`
--

CREATE TABLE `up_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `is_lender` tinyint(1) DEFAULT NULL,
  `aboutme` longtext,
  `birth` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `average_score` decimal(10,2) DEFAULT NULL,
  `counts_review` int(11) DEFAULT NULL,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `up_users`
--

INSERT INTO `up_users` (`id`, `username`, `email`, `provider`, `password`, `reset_password_token`, `confirmation_token`, `confirmed`, `blocked`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `phone`, `is_lender`, `aboutme`, `birth`, `name`, `slug`, `first_name`, `last_name`, `avatar`, `average_score`, `counts_review`, `description`) VALUES
(55, 'santiago.avilez@est.fi.uncoma.edu.ar', 'santiago.avilez@est.fi.uncoma.edu.ar', 'local', '$2a$10$ldpzroeOpOLdawcaI05X3OpiMH2lBv1g9G1QDHUcyIqDfkrGd6/ei', NULL, NULL, 1, 0, '2022-10-29 15:51:04.819000', '2022-12-06 14:31:20.668000', NULL, 1, 2984648765, 1, 'Soy un Desarrollador Web full Stack', '1998-10-06', 'Santiago Avilez', 'santiago-avilez-2', 'Santiago', 'Avilez ', '1670336953/55', '4.51', 2, '<p>Soy un desarrollador web full stack con bases solidas de lógica y matemáticas.</p>\n\n</br>\nEstudie 4 semestres de ingeniería de sistemas en la universidad de los Andes (Colombia), actualmente estoy terminando mi formación como técnico universitario en desarrollo web en la Universidad Nacional del Comahue.\n</br>\n</br>\nLos lenguajes que domino son JavaScript, PHP, HTML, CSS y Java.\n</br>\n</br>\nActualmente, me especializo en el framework React y NextJs, sin embargo, domino otros framworks como Laravel, LiveWire, entro otros, además de tener sólidos conocimientos sobre CSS puro, domino frameworks CSS como Tailwind CSS y Bootstrap.\n</br>\n</br>\nEstoy trabajando en el desarrollo de una aplicación web para conectar prestadores de servicios con cliente que quieran contratarlos.\n\nAdemás de tener sólidos conocimientos sobre CSS puro, domino frameworks CSS como Tailwind CSS y Bootstrap.\n</br>\nEstoy trabajando en el desarrollo de una aplicación web para conectar prestadores de servicios con cliente que quieran contratarlos.\n\n'),
(56, 'test@test.com', 'test@test.com', 'local', '$2a$10$iODG9G8lZMxaP2go/NDwMekuMiQA4kF6I5eXVyzcnqDl42GoIA4wu', NULL, NULL, 1, 0, '2022-10-31 20:27:41.250000', '2022-11-26 22:18:15.070000', NULL, 1, 2984648765, 1, 'pruebaasasd', '2022-11-08', 'santiago avilez', 'santiago-avilez', 'santiago', 'avilez', NULL, NULL, NULL, NULL),
(57, 'pruba@pr.com', 'pruba@pr.com', 'local', '$2a$10$UJABQcYzcLk7ILOWiXq3wOPPA0Gwc.ydOqOltR6ajfb25OaHPBVH2', NULL, NULL, 1, 0, '2022-11-01 15:59:05.433000', '2022-12-04 16:05:26.208000', NULL, 1, NULL, NULL, 'Soy un programador full stack, actualmente cursando último año en la tecnicatura web', NULL, 'Alberto Diaz', 'alberto-diaz', 'Alberto ', 'Diaz', NULL, NULL, NULL, NULL),
(58, 'prueba2@prueba.com', 'prueba2@prueba.com', 'local', '$2a$10$Sa9x6WJZCUCIMXmv5r2QrOszjecJIAVVRwW3HpJYPtHyEMxAKhddW', NULL, NULL, 1, 0, '2022-11-01 16:06:54.879000', '2022-11-26 22:17:00.759000', NULL, 1, NULL, NULL, NULL, NULL, 'prueba2 prueba2', 'p-r', 'prueba2', 'prueba2', NULL, NULL, NULL, NULL),
(59, 'peur@123.com', 'peur@123.com', 'local', '$2a$10$Wu9k/4X2tzmzBYHVvEBmseLfexiPHq.WeSO7jqZ/MjGu9XXYcpzJq', NULL, NULL, 1, 0, '2022-11-01 16:24:42.548000', '2022-11-14 20:58:05.564000', NULL, 1, 5492984645441, NULL, 'Soy una diseñadora', NULL, 'prueba 3', 'prueba-1', 'prueba 3', 'prueba 3', NULL, NULL, NULL, NULL),
(60, 'prub21a@pr.com', 'prub21a@pr.com', 'local', '$2a$10$972FVemMn6m1mijJG/IczeXBKkQPEKXfB9y.6akXW0E/l4IGEwGcy', NULL, NULL, 1, 0, '2022-11-01 17:03:46.280000', '2022-11-01 17:03:46.280000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'test.qs@test.com', 'test.qs@test.com', 'local', '$2a$10$U2H5R.0PhKasKqBUE5Ubaux8pqcsioWmKdoT3TsWqo6P2JPd7tEwO', NULL, NULL, 1, 0, '2022-11-01 17:04:57.397000', '2022-12-04 16:56:32.355000', NULL, 1, NULL, NULL, NULL, NULL, 'Juan Romero', 'juan-romero', 'Juan ', 'Romero', '1670183771/61.jpg', NULL, NULL, NULL),
(62, 'testasdas.qs@test.com', 'testasdas.qs@test.com', 'local', '$2a$10$pfxCIXLODFMswaSGUK3op.T//sTDJtTURfSh8CymCvv96kShnCQpu', NULL, NULL, 1, 0, '2022-11-01 17:12:07.871000', '2022-11-01 17:12:07.871000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'teasdst@test.com', 'teasdst@test.com', 'local', '$2a$10$.J/tPPo/ek0Ha1B.NlXJfO6yk3YgYpk487eJ23C3E.m5OZuTTpY1m', NULL, NULL, 1, 0, '2022-11-01 17:16:40.476000', '2022-11-01 17:17:01.414000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'tesasdasdt@test.com', 'tesasdasdt@test.com', 'local', '$2a$10$YKX5AS/6lTdlkgxJzp1Rce2QYcBXax0OyByv8L.32d86KseMeIHVa', NULL, NULL, 1, 0, '2022-11-01 17:22:13.431000', '2022-11-01 17:22:13.431000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'tessadasdt@test.com', 'tessadasdt@test.com', 'local', '$2a$10$YrSB2QmnZrrxvHKlIoi1ZOWHbwxYLCnX.CvkxR7.8Vks9hMNH4WES', NULL, NULL, 1, 0, '2022-11-01 17:25:44.663000', '2022-11-01 17:26:39.043000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'testasdad1@test.com', 'testasdad1@test.com', 'local', '$2a$10$J/RDjZBXpRnZa.MntnHFheRDQV7rgEqDVBxMTO9gszsFOLYhpvNKW', NULL, NULL, 1, 0, '2022-11-01 17:32:51.701000', '2022-11-01 17:32:51.701000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'testaa8@test.com', 'testaa8@test.com', 'local', '$2a$10$ujV5Z..V.VDF482O10UKsOtpoFA/GbIko2D9k4Nz3Ou6G5edFppjq', NULL, NULL, 1, 0, '2022-11-01 17:33:50.606000', '2022-11-01 17:34:21.128000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'a@gas.com', 'a@gas.com', 'local', '$2a$10$Tl9/uoFyq4alz064kLh.fO3gC2nruyvoBBF3TGd/WpbHplnhOBI26', NULL, NULL, 1, 0, '2022-11-01 17:37:08.384000', '2022-12-01 15:09:08.789000', NULL, 1, 5492984645441, 1, 'prueba edicionnn', '2022-10-30', 'Andres Felipe Gonzales', 'andres-felipe-gonzales', 'Andres Felipe', 'Gonzales', '1669918149/68', NULL, NULL, NULL),
(69, 'prueba1@prueba.com', 'prueba1@prueba.com', 'local', '$2a$10$NhFwWc6gPsCtDBSyvMS9Pek.GtNig/tnSrxzPtRArS.258qZNhpIG', NULL, NULL, 1, 0, '2022-11-01 18:53:40.401000', '2022-11-01 18:54:16.246000', NULL, NULL, 5492984645441, 1, 'hola soy un desarrollador web full stack', '2022-10-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'prueba12@gmail.com', 'prueba12@gmail.com', 'local', '$2a$10$iD1KQrFLzwyAn6BtLqF54OB5Gnw9FxaFHaH/5K6NmGf7vlbDNDRNW', NULL, NULL, 1, 0, '2022-11-01 19:10:12.729000', '2022-11-13 21:20:45.359000', NULL, 1, 5492984645441, 1, 'hola soy un desarrollador web full stack\nactualizado', '2022-10-30', 'prueba 12', 'prue-1', 'prueba 12', 'prueba 12', NULL, NULL, NULL, NULL),
(71, 'test121@test.com', 'test121@test.com', 'local', '$2a$10$KHCBxlAEEqLvLgJwRRKPCeTwEQy21ESCliRzvDQxd2pb68qYtXNoO', NULL, NULL, 1, 0, '2022-11-01 19:15:23.386000', '2022-11-01 19:15:48.799000', NULL, NULL, 5492984645441, 1, 'hola soy un desarrollador web', '2022-11-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'rpr@as.aa', 'rpr@as.aa', 'local', '$2a$10$O8x0b54SbXXWT9DUQcM5duN6C3Cclbn/Hv62TIUo.UOVTc6lEbALO', NULL, NULL, 1, 0, '2022-11-05 17:04:45.000000', '2022-11-13 21:21:06.982000', NULL, 1, 5492984645441, 1, 'hola soy un desarrollador web', '2022-11-02', 'administrador', 'administrador', 'administrador', 'administrador', NULL, NULL, NULL, NULL),
(74, 'pruebaasdas1@a.com', 'pruebaasdas1@a.com', 'local', '$2a$10$3qjv6/j1hlO6Wh1rZJ9Eeu.BhKMadGNqg7jaShAdkjoZQNBI9xvfe', NULL, NULL, 1, 0, '2022-11-07 23:14:39.254000', '2022-11-07 23:17:09.404000', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'asdasdqasda@asda.com', 'asdasdqasda@asda.com', 'local', '$2a$10$MT8xM2pK6zxYJ2.8UWHh5uXgNKfSI1XN2QKhB1XOM0yAo8krL9QR6', NULL, NULL, 1, 0, '2022-11-07 23:19:03.454000', '2022-11-13 21:21:20.292000', NULL, 1, NULL, NULL, NULL, NULL, 'test3', 'test3', 'test3', 'test3', NULL, NULL, NULL, NULL),
(76, 'tesqasd@asad.casd', 'tesqasd@asad.casd', 'local', '$2a$10$T4.KI/usPeZje2oOk6/JZ..r0TAmI4yF89ZXPRzymlvxfPW/7YFK.', NULL, NULL, 1, 0, '2022-11-09 12:39:20.688000', '2022-11-09 12:41:14.985000', NULL, NULL, 5492984645441, 0, 'hola soy un desarrollador web', '2022-11-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'test@asdasd.cmo', 'test@asdasd.cmo', 'local', '$2a$10$5NT/Ol0y61llWc0OexVK6u1g9oPwbuwp5brvc1/DtVOw3T1Nw4qV2', NULL, NULL, 1, 0, '2022-11-09 12:42:29.683000', '2022-11-26 22:17:15.718000', NULL, 1, 5492984645441, 1, 'hola soy un desarrollador web full stack', '2022-11-18', 'javier monsalve', 'javier-monsalve', 'javier ', 'monsalve', NULL, NULL, NULL, NULL),
(78, 'test@asdasasdasd.com', 'test@asdasasdasd.com', 'local', '$2a$10$r4now./nRq.Tp/ZGEEFCdeeE0uggvXUnuQSO8GGBQJYCexl.mC4LW', NULL, NULL, 1, 0, '2022-11-09 14:41:56.226000', '2022-11-09 14:44:51.652000', NULL, NULL, 5492984645441, 0, 'hola soy un desarrollador web', '2022-11-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'teasd1asd1asdst@test.com', 'teasd1asd1asdst@test.com', 'local', '$2a$10$3Ehdmgw/iXHtu15O6eBOt.UWEboIMt05j0Y2SPNcXAhazDlavEeOS', NULL, NULL, 1, 0, '2022-11-09 14:55:14.765000', '2022-11-26 22:17:08.671000', NULL, 1, 1111111111111111, 1, 'hola soy un desarrollador web', '2022-11-03', 'Melina Nazarena Batalla', 'melina-nazarena-batalla', 'Melina ', 'Nazarena Batalla', NULL, NULL, NULL, NULL),
(80, 'teasdasdast@test.com', 'teasdasdast@test.com', 'local', '$2a$10$CY/BAUJ2caT0ix6NJK657uXME8OAuH8iFm2TWuajToYlFtBHRy88W', NULL, NULL, 1, 0, '2022-11-09 18:04:56.027000', '2022-11-09 18:05:10.875000', NULL, NULL, 5492984645441, 0, 'hola soy un desarrollador web', '2022-11-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'asdasdad@asdsad.com', 'asdasdad@asdsad.com', 'local', '$2a$10$fiKjRnmuojO7eAseGu.ED.7X1uTKTDXpS1fotLHRGD7QNUOYn8phC', NULL, NULL, 1, 0, '2022-11-09 18:46:53.864000', '2022-11-09 18:46:53.864000', NULL, NULL, NULL, NULL, NULL, NULL, 'Santiago Ariza', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'testpostman@test.com', 'testpostman@test.com', 'local', '$2a$10$r0E.NdNfzUFMGsLKXP9HeuTISeX6WA.MiycKbaOpHPddpJb893ine', NULL, NULL, 1, 0, '2022-11-17 15:08:02.966000', '2022-11-17 16:02:35.584000', NULL, 1, 5492984645441, 1, 'hola soy un desarrollador web full stack', '2022-11-15', 'Test Postman', 'test-postman', 'Santiago', 'Avilez Ariza', NULL, NULL, NULL, NULL),
(83, 'testpostman2@test.com', 'testpostman2@test.com', 'local', '$2a$10$Cg/18qYxCL6u4M8OigObRey9gKRTTfEUH.9/N5.j4urwkig04P5MC', NULL, NULL, 1, 0, '2022-11-17 15:22:03.992000', '2022-11-17 15:22:03.992000', NULL, NULL, NULL, NULL, NULL, NULL, 'testpostman2@test.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'testpostman3@test.com', 'testpostman3@test.com', 'local', '$2a$10$b8XIU36ya1PsLqrZlETuzuZbXjzN1VcQEK4ClM7sHAy5m/6GWQW5O', NULL, NULL, 1, 0, '2022-11-17 15:23:11.750000', '2022-11-17 15:23:11.750000', NULL, NULL, NULL, NULL, NULL, NULL, 'testpostman2@test.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'testpostman4@test.com', 'testpostman4@test.com', 'local', '$2a$10$tzikAt7eC8Qu07B9aTeg7.5bhnvDAfLLrQ8Qk68Qiciou0aN4I8M2', NULL, NULL, 1, 0, '2022-11-17 15:25:17.777000', '2022-11-17 15:25:17.777000', NULL, NULL, NULL, NULL, NULL, NULL, 'testpostman2@test.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'testpostman5@test.com', 'testpostman5@test.com', 'local', '$2a$10$7cCtMB8SV3Twe6Ks0G/Lwu89YFcXqcGdGEl9Z1Y2jOQRWfFKMN1ye', NULL, NULL, 1, 0, '2022-11-17 15:25:36.420000', '2022-11-17 15:25:36.420000', NULL, NULL, NULL, NULL, NULL, NULL, 'testpostman2@test.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'testpostman52@test.com', 'testpostman52@test.com', 'local', '$2a$10$5h1PhodZ4F1PjsD7MUPFXu7Rn7Nc4ww/AY5u4/u51ZCES2hYM.s6m', NULL, NULL, 1, 0, '2022-11-17 15:26:21.141000', '2022-11-17 15:26:21.141000', NULL, NULL, NULL, NULL, NULL, NULL, 'testpostman2@test.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'santiago.avilez@est.fi.uncoma.edu.ar121sad', 'santiago.avilez@est.fi.uncoma.edu.ar121sad', 'local', '$2a$10$5ozRP4AfNJJYCqm2wVKHLum3XzlZabt6FB5Rd1f2ro9JK80yncHm6', NULL, NULL, 1, 0, '2022-11-17 15:33:22.383000', '2022-11-17 15:33:22.383000', NULL, NULL, 549298464544, 1, 'hola soy un desarrollador web', '2022-11-02', 'Santiago Ariza', NULL, 'Santiago', 'Ariza', NULL, NULL, NULL, NULL),
(89, 'santiago.avile112111z@est.fi.uncoma.edu.ar', 'santiago.avile112111z@est.fi.uncoma.edu.ar', 'local', '$2a$10$JRLKPNSpLGyFp0R4.bn2j.zNE5Wia62SKtPBs3YFDy6WVMTGZvuCu', NULL, NULL, 1, 0, '2022-11-17 15:40:22.685000', '2022-11-17 15:40:22.685000', NULL, NULL, 5492984645441, 1, 'hola soy un desarrollador web', '2022-10-31', 'Santiago Ariza', NULL, 'Santiago', 'Ariza', NULL, NULL, NULL, NULL),
(90, 'santiagolingreed1111@gmail.com', 'santiagolingreed1111@gmail.com', 'local', '$2a$10$1TNAzafTp8vns3OaNLi7oewxin6qFwP8FDpxRECvtJncwjHs8ybrO', NULL, NULL, 1, 0, '2022-11-17 15:49:44.789000', '2022-11-17 15:49:44.789000', NULL, NULL, 5492984645441, 1, 'hola soy un desarrollador web', '2022-11-16', 'Santiago Ariza', NULL, 'Santiago', 'Ariza', NULL, NULL, NULL, NULL),
(91, 'santiagolingreed1@gmail.com', 'santiagolingreed1@gmail.com', 'local', '$2a$10$G8atom3RT0QBJjWVKI6vReW1ppp6rl5F0pYcXgoUpgGP7zasp2N82', NULL, NULL, 1, 0, '2022-11-17 15:51:05.564000', '2022-11-17 15:51:05.564000', NULL, NULL, 5492984645441, 1, 'hola soy un desarrollador web', '2022-11-01', 'Santiago Ariza', NULL, 'Santiago', 'Ariza', NULL, NULL, NULL, NULL),
(92, 'santiagolingreed12@gmail.com', 'santiagolingreed12@gmail.com', 'local', '$2a$10$NoNESC5O3t1NkjXoCqtwae3O..AQDlpYA9dHTTLhZA/tTF/xnk1Bu', NULL, NULL, 1, 0, '2022-11-17 15:55:09.037000', '2022-11-17 16:02:10.108000', NULL, 1, 5492984645441, 1, 'hola soy un desarrollador web full stack', '2022-11-01', 'Santiago Ariza', 'santiago-ariza', 'Santiago', 'Ariza', NULL, NULL, NULL, NULL),
(93, 'test12121@test.com', 'test12121@test.com', 'local', '$2a$10$fDzGXSfSOOAVxTnB6AikZOylBOlwh8jhdhgIuxypfuG6XzRt6b.Lm', NULL, NULL, 1, 0, '2022-11-17 15:58:00.477000', '2022-11-17 15:58:00.477000', NULL, NULL, 5492984645441, 0, 'hola soy un desarrollador web', '2022-11-01', 'Santiago Ariza', NULL, 'Santiago', 'Ariza', NULL, NULL, NULL, NULL),
(94, 'test121212@test.com', 'test121212@test.com', 'local', '$2a$10$dpN9XfpNUkRnwxolBbSac.mU7otb/N.vUPyNGhPf7YQFqN6BGoNfO', NULL, NULL, 1, 0, '2022-11-17 15:59:43.721000', '2022-11-17 16:01:39.954000', NULL, 1, 5492984645441, 1, 'hola soy un desarrollador web', '2022-11-02', 'Fulanito Perez', 'fulanito-perez', 'Fulanito', 'Perez', NULL, NULL, NULL, NULL),
(95, 'test8112@test.com', 'test8112@test.com', 'local', '$2a$10$EmX.gmofQMaH2hPt.xANR.sPfdm2nOdxsqn5Dc8juYxbjJkM6RLgy', NULL, NULL, 1, 0, '2022-11-17 16:00:21.418000', '2022-11-17 16:00:21.418000', NULL, NULL, 5492984645441, 0, 'hola soy fran', '2022-11-10', 'Santiago Ariza', NULL, 'Santiago', 'Ariza', NULL, NULL, NULL, NULL),
(96, 'test1211121212@test.com', 'test1211121212@test.com', 'local', '$2a$10$PWm1bHeaTY.42EYCBLZe7uw92tpN93IDjVYkTBSrCgLv/lE7VqBeq', NULL, NULL, 1, 0, '2022-11-17 16:04:40.643000', '2022-11-17 16:04:40.702000', NULL, NULL, 5492984645441, 1, 'sobre mi', '2022-11-10', 'Santiago Ariza', NULL, 'Santiago', 'Ariza', NULL, NULL, NULL, NULL),
(97, 'testa11212a1@test.com', 'testa11212a1@test.com', 'local', '$2a$10$GBzsrE/XXyDcy6A4N1Pel.H9lrNRC6Y3Y4nZu8./46.cBbIV.Irg.', NULL, NULL, 1, 0, '2022-11-17 16:09:20.759000', '2022-11-17 16:10:13.201000', NULL, 1, 5492984645441, 1, 'hola soy un desarrollador web', '2022-11-02', 'Santiago Ariza', 'santiago-ariza-1', 'Santiago', 'Ariza', NULL, NULL, NULL, NULL),
(98, 'prueba11211@prueba.com', 'prueba11211@prueba.com', 'local', '$2a$10$pVEDJnHF20pFaVs0qKQjT.7Jr6aTdqWRha9Ay8jdEWInZbQ3vIg/i', NULL, NULL, 1, 0, '2022-11-17 16:17:34.898000', '2022-11-17 16:17:34.898000', NULL, NULL, 5492984645441, 1, 'hola soy fran', '2022-11-10', 'Prueba Prueba', NULL, 'Prueba', 'Prueba', NULL, NULL, NULL, NULL),
(99, 'testpreuba@test.com', 'testpreuba@test.com', 'local', '$2a$10$aukasFrTfDOUiqm87Z4cf.5q6wk79ZUsBiNFNFJ4w6gFvpUBLPUvK', NULL, NULL, 1, 0, '2022-11-17 16:19:48.038000', '2022-11-26 22:18:09.525000', NULL, 1, 5492984645441, 1, 'sobre mi', '2022-11-02', 'Santiago Ariza', 'santiago-ariza-2', 'Santiago', 'Ariza', NULL, NULL, NULL, NULL),
(100, 'testtest@test.com', 'testtest@test.com', 'local', '$2a$10$..I5wYx3nzkafey6RD9AvOqTL0gf9txo.H27BLzdXUDPOLwLLsZxW', NULL, NULL, 1, 0, '2022-11-17 16:28:53.667000', '2022-11-17 16:30:04.077000', NULL, 1, 5492984645441, 1, 'hola soy fran', '2022-11-02', 'Fulanito Prueba', 'fulanito-prueba', 'Fulanito', 'Prueba', NULL, NULL, NULL, NULL),
(101, 'testtesas@test.com', 'testtesas@test.com', 'local', '$2a$10$N.v2vvuBkX9elOmFZTl.2.hGL.cXVytL1b6nIFj5U2IucXZi0CV0.', NULL, NULL, 1, 0, '2022-11-17 16:32:13.388000', '2022-11-17 16:32:55.919000', NULL, 1, 549298464544, 1, 'hola soy fran', '2022-11-02', 'Asdasdasd Avilez', 'asdasdasd-avilez', 'Asdasdasd', 'Avilez', NULL, NULL, NULL, NULL),
(102, 'testestas@test.com', 'testestas@test.com', 'local', '$2a$10$HezXiARDOEl75DumSskC1O/BOoPt1SmZfdpSrVpCIIH3ykHgg3Jf2', NULL, NULL, 1, 0, '2022-11-17 16:38:27.142000', '2022-11-17 16:39:00.447000', NULL, 1, 5492984645441, 1, 'sobre mi', '2022-11-09', 'Prueba Prueba', 'prueba-prueba-1', 'Prueba', 'Prueba', NULL, NULL, NULL, NULL),
(103, 'test122341@test.com', 'test122341@test.com', 'local', '$2a$10$wUPp4zffDpZ0tVsDouZgSej8mqlOXGTBAGFzPWKuke5HgXRjjSx5y', NULL, NULL, 1, 0, '2022-11-17 16:39:41.276000', '2022-11-17 16:39:41.276000', NULL, NULL, 5492984645441, 1, 'hola soy fran', '2022-11-04', 'Fulanito Prueba', NULL, 'Fulanito', 'Prueba', NULL, NULL, NULL, NULL),
(104, 'testtetst@asd.com', 'testtetst@asd.com', 'local', '$2a$10$/hQcPIqIeGDwYUhLz5b98ekf203V3hjYUGVohOig0/DYWDEmu2N2K', NULL, NULL, 1, 0, '2022-11-17 16:40:31.255000', '2022-11-17 16:41:38.296000', NULL, 1, 5492984645441, 1, 'hola soy fran', '2022-11-11', 'Fulanito Prueba', 'fulanito-prueba-1', 'Fulanito', 'Prueba', NULL, NULL, NULL, NULL),
(105, 'test11112212@test.com', 'test11112212@test.com', 'local', '$2a$10$IKvVN1RpDENM0cqVFRcVNu7I6yPjsZzBZV1u7IeuLqLQfDDbvywum', NULL, NULL, 1, 0, '2022-11-17 16:42:14.528000', '2022-11-17 16:43:52.585000', NULL, 1, 549298464544, 1, 'hola soy fran', '2022-11-02', 'Fulanito Prueba', 'fulanito-prueba-2', 'Fulanito', 'Prueba', NULL, NULL, NULL, NULL),
(106, 'test111218@test.com', 'test111218@test.com', 'local', '$2a$10$FSZAv/YffbcaSsHtV9HIAutjqgMzFEFg4Bk6jPBzNQHGrGuzJccxW', NULL, NULL, 1, 0, '2022-11-17 16:45:09.094000', '2022-11-17 16:46:55.226000', NULL, 1, 5492984645441, 1, 'hola soy un desarrollador web full stack', '2022-11-10', 'Santiago Ariza', 'santiago-ariza-3', 'Santiago', 'Ariza', NULL, NULL, NULL, NULL),
(108, 'jhon@doe.com', 'jhon@doe.com', 'local', '$2a$10$sdwj6pEgI4IKxr0Yz2rX3eXkbMV1rSeAzNw1xguE453RKQp8yx0tK', NULL, NULL, 1, 0, '2022-11-17 16:50:37.503000', '2022-12-06 10:47:08.438000', NULL, 1, 5492984645441, 1, 'prueba edicion', '2022-11-10', 'jhon doe', 'jo', 'Jhon', 'Doe', '1670310030/108', NULL, NULL, NULL),
(109, 'testetsat@sadas.com', 'testetsat@sadas.com', 'local', '$2a$10$8m7Ur8dnF68GZ0ppSTmUDuF2GJf5apTx77KYo4b/VJVd1xBUHyqhq', NULL, NULL, 1, 0, '2022-11-17 17:03:59.723000', '2022-11-17 17:05:16.358000', NULL, 1, 5492984645441, 1, 'hola soy fran', '2022-11-03', 'Fulanito Prueba', 'fulanito-prueba-3', 'Fulanito', 'Prueba', NULL, NULL, NULL, NULL),
(111, 'test11asd@test.com', 'test11asd@test.com', 'local', '$2a$10$VKVi3fEBZkX.6eKs2mDyVOhp/82njUbamkUdf5wd9nGIuumxSvG9K', NULL, NULL, 1, 0, '2022-11-17 17:16:08.071000', '2022-11-17 17:50:57.505000', NULL, 1, 549298464544, 1, 'sobre mi', '2022-11-02', 'prueba prueba', 'prueba-prueba-2', 'prueba', 'hola', NULL, NULL, NULL, NULL),
(138, 'test12asda@test.com', 'test12asda@test.com', 'local', '$2a$10$44iiR2s9r4V4h7GKAR7YSu/gnTV3vWrsER1rz8pqA7xJQX6NHDDU2', NULL, NULL, 1, 0, '2022-11-17 18:00:05.484000', '2022-11-17 18:00:05.551000', NULL, NULL, 5492984645441, 1, 'prueba', '2022-11-10', 'Prueba Prueba ', 'prueba-prueba-5', 'Prueba', 'Prueba', NULL, NULL, NULL, NULL),
(139, 'tes121sasdt@test.com', 'tes121sasdt@test.com', 'local', '$2a$10$A5XHjjYYd5pX6/yVkSC1uOB0RvlRcq5FRNSaOc/mFT5qRjoPY6.ni', NULL, NULL, 1, 0, '2022-11-17 18:20:44.391000', '2022-11-17 18:49:45.651000', NULL, NULL, 5492984645441, 1, 'soy un electricista', '2022-11-03', 'Prueba Prueba ', 'prueba-prueba-7', 'Prueba', 'Prueba', NULL, NULL, NULL, NULL),
(140, 'mengano@perez.com', 'mengano@perez.com', 'local', '$2a$10$PRXYLU2AtiULkDwO8bq.TeRL083IvEeqOvnTGVr8/j5gBdYuyuiXm', NULL, NULL, 1, 0, '2022-11-24 12:28:59.082000', '2022-11-26 22:15:03.622000', NULL, 1, 5492984645441, 1, 'prueba', '2022-11-01', 'Mengano Perez', 'mengano-perez', 'Mengano', 'Perez', NULL, '0.00', 0, NULL),
(141, 'menganito@perez.com', 'menganito@perez.com', 'local', '$2a$10$/3jFIScM/g8dMw6lr9OvWeWCuK.wfQimjqqiCUmP3nMZOIz4UbGMi', NULL, NULL, 1, 0, '2022-11-24 12:34:40.939000', '2022-12-06 02:52:27.537000', NULL, 1, 5492984645441, 1, 'prueba', '2022-11-02', 'Menganito Perez', 'menganito-perez', 'Menganito', 'Perez', NULL, '5.00', 2, NULL),
(142, 'perez@perez.com', 'perez@perez.com', 'local', '$2a$10$GHvd.t1t6i0E8YpgTINjgum7uCuqbSJptTN.a.kt5/6pbEu/uxqpe', NULL, NULL, 1, 0, '2022-11-24 12:41:04.003000', '2022-12-04 17:12:44.462000', NULL, 1, 2984648765, 1, 'prueba', '2022-11-04', 'Melina Batalla', 'melina-batalla', 'Melina ', 'Batalla', '1670184743/142', NULL, NULL, NULL),
(143, 'test@test.commengano', 'test@test.commengano', 'local', '$2a$10$ZxLyrnVcCNTgi/7J12.2iO4XcHuBG1R5tcSjcZSs1qLLL2JnNHd.e', NULL, NULL, 1, 0, '2022-11-24 12:45:37.621000', '2022-12-06 03:25:14.522000', NULL, 1, 2984648765, 1, 'prueba', '2022-11-02', 'Eduardo Gonzales', 'eduardo-gonzales', 'Eduardo ', 'Gonzales', '1670183718/143', '5.00', 2, NULL),
(144, 'asdasdad@mengano.com', 'asdasdad@mengano.com', 'local', '$2a$10$MKj8MK31.ss.W/LjmMmQfOeobp9BmCMgG4TK8zpbKIDCbD.X8CT06', NULL, NULL, 1, 0, '2022-11-24 12:50:15.866000', '2022-11-24 12:50:15.866000', NULL, NULL, 5492984645441, 1, 'prueba', '2022-11-03', 'Mengano Mengano', 'mengano-mengano', 'Mengano', 'Mengano', NULL, '0.00', 0, NULL),
(145, 'prueba@rol.com', 'prueba@rol.com', 'local', '$2a$10$HfH7pIIanHFZa8GzOxNOHOpSEBBRfk3oPubk05ytl28OBVkwd3Cuu', NULL, NULL, 1, 0, '2022-11-24 12:52:40.701000', '2022-11-24 12:52:40.701000', NULL, NULL, 2984539546, 1, 'prueba', '2022-11-10', 'Prueba Rol', 'prueba-rol', 'Prueba', 'Rol', NULL, '0.00', 0, NULL),
(146, 'menganito@gual.ca', 'menganito@gual.ca', 'local', '$2a$10$fjGzWwrKE2uX6yIymJbpvet1j2JpllUa7Z7cNTXGLBRpCjvqIGs2u', NULL, NULL, 1, 0, '2022-11-24 12:55:10.352000', '2022-12-04 00:57:07.205000', NULL, 1, 5492984645441, 1, 'sobre mi', '2022-10-31', 'Menganito Fulanito', 'menganito-fulanito', 'Menganito', 'Fulanito', '', '5.00', 1, NULL),
(149, 'prueba@prasa.com', 'prueba@prasa.com', 'local', '$2a$10$SsdhG9tpK/M0D2eFPfz.1.D4GlkuzEFebwN4k2wxNmBTSy9trsLt.', NULL, NULL, 1, 0, '2022-11-25 13:41:17.467000', '2022-12-16 16:39:24.036000', NULL, 1, 5492984645441, 1, 'prueba', '2022-10-31', 'Carlos Rodriguez', 'carlos-rodriguez', 'Carlos ', 'Rodriguez', '1670184376/149', '5.00', 1, NULL),
(150, 'pasdasd@geasdsad.com', 'pasdasd@geasdsad.com', 'local', '$2a$10$ihZQGc.DmnYAqZiKd47lZeydl/8ZnwS/Kk/gVCB9ZvmeeGz1jua4.', NULL, NULL, 1, 0, '2022-12-02 20:52:53.980000', '2022-12-02 20:52:53.980000', NULL, NULL, NULL, NULL, NULL, NULL, 'Santiago Prueba Normal', 'santiago-prueba-normal', 'Santiago', 'Prueba Normal', NULL, '0.00', 0, NULL),
(151, 'prueba2@asdas.com', 'prueba2@asdas.com', 'local', '$2a$10$/1AWieI5OTm9mXG52.B6zuEcnLQwZL6vuIfuVtkNHiR5QzskAH8bS', NULL, NULL, 1, 0, '2022-12-02 20:54:13.154000', '2022-12-02 20:54:13.154000', NULL, NULL, NULL, NULL, NULL, NULL, 'Santiago Prueba', 'santiago-prueba', 'Santiago', 'Prueba', NULL, '0.00', 0, NULL),
(155, 'asdsad@sadasdc.in', 'asdsad@sadasdc.in', 'local', '$2a$10$UeA.cxht4gcSwY6LlH2GduPEJgukuVRIgZxd0/U/bCjcczWIF1WEq', NULL, NULL, 1, 0, '2022-12-02 21:03:23.206000', '2022-12-02 21:03:23.206000', NULL, NULL, NULL, NULL, NULL, NULL, 'Prueba Prueba', NULL, 'Prueba', 'Prueba', NULL, '0.00', 0, NULL),
(156, 'test@tesasdasdt.com', 'test@tesasdasdt.com', 'local', '$2a$10$//o36RRZVT0YddSJA6S4QeqkIcgo/znRfDV5wQ6gU1Jn8ixNQNa0W', NULL, NULL, 1, 0, '2022-12-03 01:46:03.767000', '2022-12-03 01:46:03.767000', NULL, NULL, 5492984645441, NULL, 'prueba', '1998-10-14', 'Santiago Perez', NULL, 'Santiago', 'Perez', NULL, '0.00', 0, NULL),
(157, 'admin1asd101@test.com', 'admin1asd101@test.com', 'local', '$2a$10$YgM3bwvOs46tyTMly/.F2uZy2Wzwzzx2w6Wb5ENobT6WPyurr2L5a', NULL, NULL, 1, 0, '2022-12-03 01:47:37.314000', '2022-12-03 01:47:37.314000', NULL, NULL, 5492984645441, NULL, 'prueba', '2004-12-01', 'Santiago Prueba', NULL, 'Santiago', 'Prueba', NULL, '0.00', 0, NULL),
(158, 'testasdsadasd@test.com', 'testasdsadasd@test.com', 'local', '$2a$10$od9deUUvMAolXOzXcWC9N.YAp.F16z6T7IZ68uED0uDHwmZugDIji', NULL, NULL, 1, 0, '2022-12-03 01:57:47.522000', '2022-12-03 01:57:47.586000', NULL, NULL, 549298464544, NULL, 'hola soy un desarrollador web', '2004-11-30', 'Fulanito Prueba', NULL, 'Fulanito', 'Prueba', NULL, '0.00', 0, NULL),
(159, 'Sandoval@san.com', 'sandoval@san.com', 'local', '$2a$10$6kGux6W73ZUv3C/sfLNAkOGjhMTvYiDNS37sj1vPGakDBPB7WuBf.', NULL, NULL, 1, 0, '2022-12-06 13:29:24.448000', '2022-12-06 13:32:48.741000', NULL, 1, NULL, 0, NULL, NULL, 'Ricardo San', 'ricardo-san', 'Ricardo', 'San', NULL, '0.00', 0, NULL),
(160, 'san@jose.com', 'san@jose.com', 'local', '$2a$10$9hwGnM4vMlqcpbYVlBVhFO231njOgnD1w6NKHeJi8ClGc7roFZ/nO', NULL, NULL, 1, 0, '2022-12-06 13:34:14.954000', '2022-12-06 13:34:14.989000', NULL, NULL, NULL, 0, NULL, NULL, 'San Jose', NULL, 'San', 'Jose', NULL, '0.00', 0, NULL),
(161, 'jose@san.com', 'jose@san.com', 'local', '$2a$10$8KzWgCJ/aA..UmKadrpTq.huHQ/.DwJ3u8iQYsFb4JfNPpVpBO93a', NULL, NULL, 1, 0, '2022-12-06 13:36:51.837000', '2022-12-06 13:36:51.874000', NULL, NULL, NULL, 0, 'Descripcion....', NULL, 'Jose San', NULL, 'Jose', 'San', NULL, '0.00', 0, NULL),
(162, 'josefer@san.com', 'josefer@san.com', 'local', '$2a$10$5AbVid.Liq4.yW6qE4mfDeKwFqZ./1bunWaCQtQc0D9oivrdC.EJu', NULL, NULL, 1, 0, '2022-12-06 13:37:27.479000', '2022-12-06 13:39:02.607000', NULL, 1, NULL, 0, 'Descripcion....', NULL, 'Jose Fer San', 'jose-fer-san', 'Jose Fer', 'San', NULL, '0.00', 0, NULL),
(163, 'hydy@ari.com', 'hydy@ari.com', 'local', '$2a$10$alWq5gsI8b0JsTzwpeLqFOF7Pj1eLa2TNRx6kGGJC6f6dUlrBA1T2', NULL, NULL, 1, 0, '2022-12-06 13:41:16.441000', '2022-12-06 13:41:16.495000', NULL, NULL, NULL, 0, 'Descripcion....', NULL, 'Hydy Ary', NULL, 'Hydy', 'Ary', NULL, '0.00', 0, NULL),
(164, 'slug@slug.com', 'slug@slug.com', 'local', '$2a$10$5kc40t2on3.3e4ZEK7sS3.o0YH.XDql4SCsx2X5dCZHlVue1/u5G6', NULL, NULL, 1, 0, '2022-12-06 13:42:04.117000', '2022-12-06 13:42:04.156000', NULL, NULL, NULL, 0, 'Descripcion....', NULL, 'Slug Slug', NULL, 'Slug', 'Slug', NULL, '0.00', 0, NULL),
(165, 'Slugidfy@slug.com', 'slugidfy@slug.com', 'local', '$2a$10$fw/wRMaU5eAgvRiuOV9b0eQDmo/th2XG.7/mEntIO9vi2zc.OVI86', NULL, NULL, 1, 0, '2022-12-06 13:46:21.290000', '2022-12-06 13:46:21.339000', NULL, NULL, NULL, 0, 'Descripcion....', NULL, 'Slugidfy Slug', 'slugidfy-slug-1670345181310', 'Slugidfy', 'Slug', NULL, '0.00', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `up_users_categories_links`
--

CREATE TABLE `up_users_categories_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `category_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `up_users_categories_links`
--

INSERT INTO `up_users_categories_links` (`id`, `user_id`, `category_id`, `category_order`) VALUES
(299, 69, 5, NULL),
(300, 69, 5, NULL),
(301, 69, 5, NULL),
(316, 71, 2, NULL),
(624, 70, 4, NULL),
(625, 70, 5, NULL),
(626, 70, 3, NULL),
(627, 73, 2, NULL),
(638, 59, 3, NULL),
(639, 59, 2, NULL),
(640, 59, 5, NULL),
(659, 88, 2, NULL),
(660, 88, 3, NULL),
(661, 89, 1, NULL),
(662, 89, 3, NULL),
(663, 90, 1, NULL),
(664, 90, 3, NULL),
(665, 90, 5, NULL),
(666, 91, 1, NULL),
(671, 94, 1, NULL),
(674, 92, 1, NULL),
(675, 92, 4, NULL),
(678, 82, 2, NULL),
(679, 82, 4, NULL),
(680, 96, 1, NULL),
(685, 97, 1, NULL),
(686, 97, 3, NULL),
(687, 98, 2, NULL),
(688, 98, 4, NULL),
(689, 98, 5, NULL),
(694, 100, 2, NULL),
(695, 100, 4, NULL),
(698, 101, 3, NULL),
(699, 101, 4, NULL),
(703, 102, 2, NULL),
(704, 102, 4, NULL),
(705, 102, 5, NULL),
(706, 103, 3, NULL),
(707, 103, 4, NULL),
(708, 103, 2, NULL),
(712, 104, 2, NULL),
(713, 104, 4, NULL),
(714, 104, 5, NULL),
(717, 105, 2, NULL),
(718, 105, 3, NULL),
(722, 106, 2, NULL),
(723, 106, 3, NULL),
(724, 106, 5, NULL),
(737, 109, 2, NULL),
(749, 111, 2, NULL),
(752, 138, 2, NULL),
(753, 138, 4, NULL),
(783, 139, 1, NULL),
(784, 139, 3, NULL),
(847, 144, 5, NULL),
(848, 145, 5, NULL),
(863, 146, 5, NULL),
(864, 141, 1, NULL),
(865, 141, 5, NULL),
(866, 140, 2, NULL),
(868, 58, 4, NULL),
(869, 79, 1, NULL),
(870, 77, 2, NULL),
(871, 99, 2, NULL),
(872, 56, 2, NULL),
(875, 68, 1, NULL),
(878, 156, 2, NULL),
(879, 156, 5, NULL),
(880, 157, 3, NULL),
(881, 158, 2, NULL),
(899, 57, 3, NULL),
(900, 57, 2, NULL),
(912, 149, 2, NULL),
(916, 142, 5, NULL),
(1001, 108, 4, NULL),
(1002, 143, 5, NULL),
(1018, 55, 6, NULL),
(1019, 55, 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `up_users_lender_links`
--

CREATE TABLE `up_users_lender_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `lender_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `up_users_localidad_links`
--

CREATE TABLE `up_users_localidad_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `up_users_localidad_links`
--

INSERT INTO `up_users_localidad_links` (`id`, `user_id`, `city_id`) VALUES
(7, 69, 73),
(96, 70, 62),
(97, 73, 73),
(103, 59, 78),
(113, 88, 73),
(114, 89, 73),
(118, 94, 73),
(120, 92, 73),
(122, 82, 73),
(123, 96, 84),
(126, 97, 84),
(127, 98, 84),
(131, 100, 84),
(133, 101, 84),
(135, 102, 84),
(137, 104, 84),
(139, 105, 84),
(141, 106, 84),
(147, 109, 84),
(157, 111, 84),
(158, 138, 84),
(167, 139, 73),
(202, 144, 73),
(203, 145, 73),
(215, 146, 73),
(216, 141, 73),
(217, 140, 73),
(219, 58, 76),
(220, 79, 76),
(221, 77, 76),
(222, 99, 84),
(223, 56, 81),
(225, 157, 76),
(226, 158, 74),
(237, 57, 78),
(244, 149, 74),
(247, 142, 73),
(295, 143, 73),
(308, 108, 84),
(316, 55, 73);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `up_users_provincia_links`
--

CREATE TABLE `up_users_provincia_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `province_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `up_users_provincia_links`
--

INSERT INTO `up_users_provincia_links` (`id`, `user_id`, `province_id`) VALUES
(23, 71, 10),
(138, 69, 4),
(140, 70, 4),
(141, 73, 4),
(142, 59, 4),
(145, 88, 4),
(146, 89, 4),
(150, 94, 4),
(152, 92, 4),
(154, 82, 4),
(155, 96, 21),
(158, 97, 21),
(159, 98, 21),
(163, 100, 21),
(165, 101, 21),
(167, 102, 21),
(169, 104, 21),
(171, 105, 21),
(173, 106, 21),
(179, 109, 21),
(189, 111, 21),
(190, 138, 21),
(197, 139, 4),
(232, 144, 4),
(233, 145, 4),
(245, 146, 4),
(246, 141, 4),
(247, 140, 4),
(249, 58, 13),
(250, 79, 13),
(251, 77, 13),
(252, 99, 21),
(253, 56, 20),
(254, 157, 13),
(255, 158, 10),
(260, 57, 4),
(267, 149, 10),
(269, 142, 4),
(271, 143, 4),
(281, 108, 21),
(289, 55, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `up_users_role_links`
--

CREATE TABLE `up_users_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `up_users_role_links`
--

INSERT INTO `up_users_role_links` (`id`, `user_id`, `role_id`, `user_order`) VALUES
(75, 60, 1, NULL),
(77, 62, 1, NULL),
(78, 63, 1, NULL),
(79, 64, 1, NULL),
(80, 65, 1, NULL),
(81, 66, 1, NULL),
(82, 67, 1, NULL),
(84, 69, 1, NULL),
(87, 71, 1, NULL),
(105, 74, 1, NULL),
(108, 76, 1, NULL),
(111, 78, 1, NULL),
(121, 80, 1, NULL),
(122, 81, 1, NULL),
(144, 70, 3, NULL),
(145, 73, 3, NULL),
(146, 75, 3, NULL),
(150, 59, 3, NULL),
(154, 83, 1, NULL),
(155, 84, 1, NULL),
(156, 85, 1, NULL),
(157, 86, 1, NULL),
(158, 87, 1, NULL),
(159, 88, 1, NULL),
(160, 89, 1, NULL),
(161, 90, 1, NULL),
(162, 91, 1, NULL),
(165, 93, 1, NULL),
(168, 95, 1, NULL),
(170, 94, 3, NULL),
(172, 92, 3, NULL),
(174, 82, 3, NULL),
(176, 96, 3, NULL),
(180, 97, 3, NULL),
(181, 98, 1, NULL),
(185, 100, 3, NULL),
(188, 101, 3, NULL),
(190, 102, 3, NULL),
(191, 103, 1, NULL),
(193, 104, 3, NULL),
(195, 105, 3, NULL),
(197, 106, 3, NULL),
(208, 109, 3, NULL),
(229, 111, 3, NULL),
(232, 138, 3, NULL),
(234, 139, 3, NULL),
(247, 144, 1, NULL),
(248, 145, 1, NULL),
(253, 146, 3, NULL),
(254, 141, 3, NULL),
(255, 140, 3, NULL),
(257, 58, 3, NULL),
(258, 79, 3, NULL),
(259, 77, 3, NULL),
(260, 99, 3, NULL),
(261, 56, 3, NULL),
(269, 68, 1, NULL),
(270, 150, 1, NULL),
(271, 151, 1, NULL),
(272, 155, 1, NULL),
(273, 156, 1, NULL),
(274, 157, 1, NULL),
(276, 158, 3, NULL),
(281, 57, 3, NULL),
(289, 61, 1, NULL),
(290, 149, 3, NULL),
(292, 142, 3, NULL),
(293, 108, 1, NULL),
(294, 143, 3, NULL),
(298, 55, 3, NULL),
(300, 159, 1, NULL),
(301, 160, 1, NULL),
(302, 161, 1, NULL),
(305, 162, 1, NULL),
(307, 163, 1, NULL),
(309, 164, 1, NULL),
(311, 165, 1, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indices de la tabla `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`),
  ADD KEY `admin_users_roles_links_order_fk` (`role_order`),
  ADD KEY `admin_users_roles_links_order_inv_fk` (`user_order`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_created_by_id_fk` (`created_by_id`),
  ADD KEY `categories_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `categories_city_links`
--
ALTER TABLE `categories_city_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_city_links_fk` (`category_id`),
  ADD KEY `categories_city_links_inv_fk` (`city_id`);

--
-- Indices de la tabla `categories_lender_links`
--
ALTER TABLE `categories_lender_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_lender_links_fk` (`category_id`),
  ADD KEY `categories_lender_links_inv_fk` (`lender_id`);

--
-- Indices de la tabla `categories_provinces_links`
--
ALTER TABLE `categories_provinces_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_provinces_links_fk` (`category_id`),
  ADD KEY `categories_provinces_links_inv_fk` (`province_id`);

--
-- Indices de la tabla `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_identificador_unique` (`identificador`),
  ADD KEY `cities_created_by_id_fk` (`created_by_id`),
  ADD KEY `cities_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `cities_province_links`
--
ALTER TABLE `cities_province_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_province_links_fk` (`city_id`),
  ADD KEY `cities_province_links_inv_fk` (`province_id`);

--
-- Indices de la tabla `custom_apis`
--
ALTER TABLE `custom_apis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `custom_apis_slug_unique` (`slug`),
  ADD KEY `custom_apis_created_by_id_fk` (`created_by_id`),
  ADD KEY `custom_apis_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`),
  ADD KEY `upload_files_created_at_index` (`created_at`),
  ADD KEY `upload_files_updated_at_index` (`updated_at`),
  ADD KEY `upload_files_name_index` (`name`),
  ADD KEY `upload_files_size_index` (`size`),
  ADD KEY `upload_files_ext_index` (`ext`);

--
-- Indices de la tabla `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  ADD KEY `files_folder_links_fk` (`file_id`),
  ADD KEY `files_folder_links_inv_fk` (`folder_id`),
  ADD KEY `files_folder_links_order_inv_fk` (`file_order`);

--
-- Indices de la tabla `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_morphs_fk` (`file_id`);

--
-- Indices de la tabla `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `lenders`
--
ALTER TABLE `lenders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lenders_created_by_id_fk` (`created_by_id`),
  ADD KEY `lenders_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_created_by_id_fk` (`created_by_id`),
  ADD KEY `notifications_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `notifications_review_links`
--
ALTER TABLE `notifications_review_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_review_links_fk` (`notification_id`),
  ADD KEY `notifications_review_links_inv_fk` (`review_id`);

--
-- Indices de la tabla `notifications_user_links`
--
ALTER TABLE `notifications_user_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_links_fk` (`notification_id`),
  ADD KEY `notifications_user_links_inv_fk` (`user_id`);

--
-- Indices de la tabla `notifications_user_request_links`
--
ALTER TABLE `notifications_user_request_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_request_links_fk` (`notification_id`),
  ADD KEY `notifications_user_request_links_inv_fk` (`user_id`);

--
-- Indices de la tabla `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `provinces_identificador_unique` (`identificador`),
  ADD UNIQUE KEY `provinces_slug_unique` (`slug`),
  ADD KEY `provinces_created_by_id_fk` (`created_by_id`),
  ADD KEY `provinces_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_created_by_id_fk` (`created_by_id`),
  ADD KEY `reviews_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `reviews_author_links`
--
ALTER TABLE `reviews_author_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_author_links_fk` (`review_id`),
  ADD KEY `reviews_author_links_inv_fk` (`user_id`);

--
-- Indices de la tabla `reviews_related_to_links`
--
ALTER TABLE `reviews_related_to_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_related_to_links_fk` (`review_id`),
  ADD KEY `reviews_related_to_links_inv_fk` (`r_content_id_id`);

--
-- Indices de la tabla `reviews_user_links`
--
ALTER TABLE `reviews_user_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_links_fk` (`review_id`),
  ADD KEY `reviews_user_links_inv_fk` (`user_id`);

--
-- Indices de la tabla `r_content_ids`
--
ALTER TABLE `r_content_ids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `r_content_ids_created_by_id_fk` (`created_by_id`),
  ADD KEY `r_content_ids_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_created_by_id_fk` (`created_by_id`),
  ADD KEY `services_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `services_category_links`
--
ALTER TABLE `services_category_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_category_links_fk` (`service_id`),
  ADD KEY `services_category_links_inv_fk` (`category_id`);

--
-- Indices de la tabla `services_lender_links`
--
ALTER TABLE `services_lender_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_lender_links_fk` (`service_id`),
  ADD KEY `services_lender_links_inv_fk` (`user_id`);

--
-- Indices de la tabla `services_users_recruiter_links`
--
ALTER TABLE `services_users_recruiter_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_users_recruiter_links_fk` (`service_id`),
  ADD KEY `services_users_recruiter_links_inv_fk` (`user_id`);

--
-- Indices de la tabla `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  ADD KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`);

--
-- Indices de la tabla `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`);

--
-- Indices de la tabla `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `up_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indices de la tabla `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_slug_unique` (`slug`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indices de la tabla `up_users_categories_links`
--
ALTER TABLE `up_users_categories_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_categories_links_fk` (`user_id`),
  ADD KEY `up_users_categories_links_inv_fk` (`category_id`);

--
-- Indices de la tabla `up_users_lender_links`
--
ALTER TABLE `up_users_lender_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_lender_links_fk` (`user_id`),
  ADD KEY `up_users_lender_links_inv_fk` (`lender_id`);

--
-- Indices de la tabla `up_users_localidad_links`
--
ALTER TABLE `up_users_localidad_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_localidad_links_fk` (`user_id`),
  ADD KEY `up_users_localidad_links_inv_fk` (`city_id`);

--
-- Indices de la tabla `up_users_provincia_links`
--
ALTER TABLE `up_users_provincia_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_provincia_links_fk` (`user_id`),
  ADD KEY `up_users_provincia_links_inv_fk` (`province_id`);

--
-- Indices de la tabla `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_role_links_unique` (`user_id`,`role_id`),
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`),
  ADD KEY `up_users_role_links_order_inv_fk` (`user_order`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;

--
-- AUTO_INCREMENT de la tabla `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;

--
-- AUTO_INCREMENT de la tabla `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `categories_city_links`
--
ALTER TABLE `categories_city_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categories_lender_links`
--
ALTER TABLE `categories_lender_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categories_provinces_links`
--
ALTER TABLE `categories_provinces_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT de la tabla `cities_province_links`
--
ALTER TABLE `cities_province_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `custom_apis`
--
ALTER TABLE `custom_apis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `files_folder_links`
--
ALTER TABLE `files_folder_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `lenders`
--
ALTER TABLE `lenders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2415;

--
-- AUTO_INCREMENT de la tabla `notifications_review_links`
--
ALTER TABLE `notifications_review_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `notifications_user_links`
--
ALTER TABLE `notifications_user_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=719;

--
-- AUTO_INCREMENT de la tabla `notifications_user_request_links`
--
ALTER TABLE `notifications_user_request_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=820;

--
-- AUTO_INCREMENT de la tabla `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `reviews_author_links`
--
ALTER TABLE `reviews_author_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `reviews_related_to_links`
--
ALTER TABLE `reviews_related_to_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `reviews_user_links`
--
ALTER TABLE `reviews_user_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `r_content_ids`
--
ALTER TABLE `r_content_ids`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `services_category_links`
--
ALTER TABLE `services_category_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `services_lender_links`
--
ALTER TABLE `services_lender_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `services_users_recruiter_links`
--
ALTER TABLE `services_users_recruiter_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT de la tabla `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT de la tabla `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT de la tabla `up_users_categories_links`
--
ALTER TABLE `up_users_categories_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1020;

--
-- AUTO_INCREMENT de la tabla `up_users_lender_links`
--
ALTER TABLE `up_users_lender_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `up_users_localidad_links`
--
ALTER TABLE `up_users_localidad_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT de la tabla `up_users_provincia_links`
--
ALTER TABLE `up_users_provincia_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

--
-- AUTO_INCREMENT de la tabla `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `categories_city_links`
--
ALTER TABLE `categories_city_links`
  ADD CONSTRAINT `categories_city_links_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_city_links_inv_fk` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `categories_lender_links`
--
ALTER TABLE `categories_lender_links`
  ADD CONSTRAINT `categories_lender_links_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_lender_links_inv_fk` FOREIGN KEY (`lender_id`) REFERENCES `lenders` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `categories_provinces_links`
--
ALTER TABLE `categories_provinces_links`
  ADD CONSTRAINT `categories_provinces_links_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_provinces_links_inv_fk` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `cities_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `cities_province_links`
--
ALTER TABLE `cities_province_links`
  ADD CONSTRAINT `cities_province_links_fk` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cities_province_links_inv_fk` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `custom_apis`
--
ALTER TABLE `custom_apis`
  ADD CONSTRAINT `custom_apis_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `custom_apis_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `lenders`
--
ALTER TABLE `lenders`
  ADD CONSTRAINT `lenders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `lenders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `notifications_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `notifications_review_links`
--
ALTER TABLE `notifications_review_links`
  ADD CONSTRAINT `notifications_review_links_fk` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_review_links_inv_fk` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `notifications_user_links`
--
ALTER TABLE `notifications_user_links`
  ADD CONSTRAINT `notifications_user_links_fk` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `notifications_user_request_links`
--
ALTER TABLE `notifications_user_request_links`
  ADD CONSTRAINT `notifications_user_request_links_fk` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_user_request_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `provinces`
--
ALTER TABLE `provinces`
  ADD CONSTRAINT `provinces_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `provinces_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `reviews_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `reviews_author_links`
--
ALTER TABLE `reviews_author_links`
  ADD CONSTRAINT `reviews_author_links_fk` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_author_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `reviews_related_to_links`
--
ALTER TABLE `reviews_related_to_links`
  ADD CONSTRAINT `reviews_related_to_links_fk` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_related_to_links_inv_fk` FOREIGN KEY (`r_content_id_id`) REFERENCES `r_content_ids` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `reviews_user_links`
--
ALTER TABLE `reviews_user_links`
  ADD CONSTRAINT `reviews_user_links_fk` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `r_content_ids`
--
ALTER TABLE `r_content_ids`
  ADD CONSTRAINT `r_content_ids_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `r_content_ids_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `services_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `services_category_links`
--
ALTER TABLE `services_category_links`
  ADD CONSTRAINT `services_category_links_fk` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `services_category_links_inv_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `services_lender_links`
--
ALTER TABLE `services_lender_links`
  ADD CONSTRAINT `services_lender_links_fk` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `services_lender_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `services_users_recruiter_links`
--
ALTER TABLE `services_users_recruiter_links`
  ADD CONSTRAINT `services_users_recruiter_links_fk` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `services_users_recruiter_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `up_users_categories_links`
--
ALTER TABLE `up_users_categories_links`
  ADD CONSTRAINT `up_users_categories_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_categories_links_inv_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `up_users_lender_links`
--
ALTER TABLE `up_users_lender_links`
  ADD CONSTRAINT `up_users_lender_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_lender_links_inv_fk` FOREIGN KEY (`lender_id`) REFERENCES `lenders` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `up_users_localidad_links`
--
ALTER TABLE `up_users_localidad_links`
  ADD CONSTRAINT `up_users_localidad_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_localidad_links_inv_fk` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `up_users_provincia_links`
--
ALTER TABLE `up_users_provincia_links`
  ADD CONSTRAINT `up_users_provincia_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_provincia_links_inv_fk` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
