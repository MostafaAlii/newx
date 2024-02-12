-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: sdb-t.hosting.stackcp.net
-- Generation Time: Feb 12, 2024 at 09:37 AM
-- Server version: 10.4.31-MariaDB-log
-- PHP Version: 7.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `photos-3230383e21`
--
CREATE DATABASE IF NOT EXISTS `photos-3230383e21` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `photos-3230383e21`;

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `note1` text NOT NULL,
  `note2` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `name`, `note1`, `note2`, `created_at`, `updated_at`) VALUES
(1, 'We\'ve retouched', '3,738,282 Photos', 'For corporate & individual clients in over 50 countries', '2023-11-14 19:05:09', '2023-11-14 20:28:59');

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `name`, `note`, `created_at`, `updated_at`) VALUES
(2, 'Who We Are', 'We are a team of highly skilled designers with artistic educations and more than 15 years of experience in the photo retouching and photo editing industry designed to help you, we are skilled at doing image cut-outs of products for catalogs and always surprise clients with quality, our clients include professional photographers, amateur photographers and fashion models and the general public, you will receive excellent quality work and our prices will fit your budget.', '2023-11-28 13:42:30', '2023-11-28 13:42:30'),
(3, 'What We Do', 'We offer either a simple retouching or complex retouching, as well as the style you would like your photos to be. You can choose a natural style, without visible retouching, or you can request glamour retouching, such as found on fashion magazine covers.\r\nWe also offer product/commercial retouching for advertisements, websites and marketing pieces, as well as editing of auction photos, business sales photos, jewelry, clothes, shoes, bags, houses, cars, cycles and other items for sale.\r\nWe also offer photo manipulation, such as creating photo collages or photo montages, changing backgrounds and adding or removing items. We are also skilled at doing image cut-outs of products for catalogs.\r\nIf you don’t see what you are looking for - just ask!', '2023-11-28 13:42:45', '2023-11-28 13:42:45'),
(4, 'Why Our ArtisticRetouch', 'Our service has a high value for anyone, from the business owner to the family that loves quality photo editing, restoration, and colorizing. We offer a low price for high quality retouching to save you time. The online system has a friendly interface, and you can easily make an order for photo retouching or restoration, there is no risk. You get a free preview of the retouched images to make sure you\'re satisfied. You only pay only after you approve our retouching.\r\nWe\'re always happy to work with new customers and would love to show you exactly how much we can improve your photos, and most importantly how fast we can work for great rates.', '2023-11-28 13:43:02', '2023-11-28 13:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `status`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, 1, '$2y$10$UzH8iHm935U5gEGEIysZd.dCYU/0UF/20l3p4T3u93KpLKyqZFYw.', '9MHT5q1KlfWAvjTODW5wa0iu8MdIxAX4JSn21hgSoBi8F4XvWBCnf6qHlvZJ', '2023-11-14 19:04:27', '2023-11-14 19:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `advantages`
--

CREATE TABLE `advantages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `note` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advantages`
--

INSERT INTO `advantages` (`id`, `note`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Color correction', 1, '2023-11-26 23:06:19', '2023-11-26 23:06:19'),
(5, 'Correct color balance', 1, '2023-11-26 23:06:46', '2023-11-26 23:06:46'),
(6, 'Whitening teeth', 1, '2023-11-26 23:07:15', '2023-11-26 23:07:15'),
(7, 'Remove all impurities', 1, '2023-11-26 23:07:43', '2023-11-26 23:07:43'),
(8, 'Fix blurry photo', 1, '2023-11-26 23:08:21', '2023-11-26 23:08:21'),
(9, 'HDR retouch', 1, '2023-11-26 23:08:48', '2023-11-26 23:08:48'),
(10, 'Photo album', 1, '2023-11-26 23:09:14', '2023-11-26 23:09:14'),
(11, 'Photo flyer', 1, '2023-11-26 23:09:38', '2023-11-26 23:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `notes` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `section_id`, `name`, `notes`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Tre O\'Connell', 'A accusamus exercitationem doloribus fugiat vero doloremque. Dolorum accusantium sit est laboriosam natus. Eligendi sed ut sed earum.', 1, '2023-11-14 19:04:28', '2023-11-14 19:04:28'),
(2, 2, 'Ms. Mozelle Moen III', 'Deserunt quia natus ducimus laudantium sit sunt quibusdam. Aut praesentium voluptas qui exercitationem libero. Exercitationem ut ea sed id rem. Reprehenderit alias corporis corporis nesciunt.', 1, '2023-11-14 19:04:28', '2023-11-14 19:04:28');

-- --------------------------------------------------------

--
-- Table structure for table `buttons`
--

CREATE TABLE `buttons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` enum('header','service','payment','galley','offer_contact') NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `typePaymernts` enum('paypal','checkout') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buttons`
--

INSERT INTO `buttons` (`id`, `name`, `type`, `status`, `typePaymernts`, `created_at`, `updated_at`, `url`) VALUES
(1, 'Order now', 'header', 1, NULL, '2023-11-17 10:52:12', '2023-12-01 03:12:06', 'photo.tag-soft.com/register'),
(2, 'How it work', 'header', 1, NULL, '2023-11-17 10:52:49', '2023-12-01 03:13:08', 'photo.tag-soft.com/page/tours'),
(3, 'Order now', 'service', 1, NULL, '2023-11-17 10:54:25', '2023-12-01 03:14:24', 'photo.tag-soft.com/register'),
(5, 'PayPal', 'payment', 0, 'paypal', '2023-11-17 10:55:24', '2023-11-19 10:10:19', NULL),
(8, 'How it work', 'service', 1, NULL, '2023-11-18 10:49:22', '2023-12-01 03:17:07', 'photo.tag-soft.com/page/tours'),
(9, '2Checkout', 'payment', 1, 'checkout', '2023-11-18 10:50:13', '2023-11-18 10:50:13', NULL),
(10, 'GET STARTED', 'offer_contact', 1, NULL, '2023-11-29 10:50:22', '2023-11-29 10:50:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `title`, `body`, `email`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Deserunt obcaecati e', 'Main Gallery note Lorem ipsum dolor sit amet consectetur, adipisicing elit. Facere voluptatibus consequuntur iusto excepturi? Ab qui dolorem consequuntur, sint vitae nam dignissimos, praesentium magnam maiores consectetur nesciunt! Perferendis consequuntur atque suscipit.', 'momoleboq@mailinator.com', 1, '2023-11-14 20:26:14', '2023-11-14 20:26:14');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(2, NULL, NULL, NULL, '2023-11-28 13:09:09', '2023-11-28 13:09:09');

-- --------------------------------------------------------

--
-- Table structure for table `copyrights`
--

CREATE TABLE `copyrights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `copyrights`
--

INSERT INTO `copyrights` (`id`, `name`, `note`, `created_at`, `updated_at`) VALUES
(1, 'Copyright', 'Any images or copies of images, computer files or printed documentation relating to such images are protected by the Copyright and Design Act 1988.\r\n\r\nWe respect copyright laws, by sending us a digital image you certify that you own the copyright, also we do not retain any copyright to images submitted by clients, you keep the copyright so you can legally make as many prints of our work as you want for no charge.', '2023-11-30 13:22:08', '2023-11-30 13:22:08');

-- --------------------------------------------------------

--
-- Table structure for table `couples`
--

CREATE TABLE `couples` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `couples`
--

INSERT INTO `couples` (`id`, `name`, `note`, `created_at`, `updated_at`) VALUES
(1, 'Couple Photo Gallery', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Facere voluptatibus consequuntur iusto excepturi? Ab qui dolorem consequuntur, sint vitae nam dignissimos, praesentium magnam maiores consectetur nesciunt! Perferendis consequuntur atque suscipit.', '2023-11-14 20:17:47', '2023-11-14 20:17:47');

-- --------------------------------------------------------

--
-- Table structure for table `examples`
--

CREATE TABLE `examples` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `type` enum('photo_retouch','photo_album','photo_frame','photo_flyer') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `examples`
--

INSERT INTO `examples` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Photo Retouch', 'photo_retouch', '2023-11-27 17:17:58', '2023-11-27 17:17:58'),
(2, 'Photo Album', 'photo_album', '2023-11-27 17:45:17', '2023-11-27 17:45:17'),
(3, 'Photo Frame', 'photo_frame', '2023-11-27 17:48:36', '2023-11-27 17:48:36'),
(4, 'Photo Flyer', 'photo_flyer', '2023-11-27 17:51:58', '2023-11-27 17:51:58');

-- --------------------------------------------------------

--
-- Table structure for table `example_images`
--

CREATE TABLE `example_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `example_id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `example_images`
--

INSERT INTO `example_images` (`id`, `example_id`, `photo`, `created_at`, `updated_at`) VALUES
(1, 1, 'aKHp3sdVTo2pPYXfDAz6Lt64tv75miWoxBOsDZQm.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(2, 1, 'lTSILbkDQp7HjVnJzyBs05QAS7LbMj8EYu0IcMIQ.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(3, 1, 'xKZKtEcxCT7FvTmAzDIiFNoxAXJO21SXvv790KLA.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(4, 1, 'I73VQX1NAREECOHkxrLP1rPDEupmfPqqDLKkdz38.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(5, 1, '36DiwGp9m44lxPezIcdY4Yaff8YEcSH6KkSfte5k.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(6, 1, 'KU5u046Tvzp6rw0Cgm8P4T1CZbV3MExvgmimxJcG.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(7, 1, 'LDvbekonJE4qPXhIqM3NWwDBzaF7lQzLh7n8ACnB.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(8, 1, 'nkMvjF5gSocBQ3yDCjRax6thNcjc8W5A3grQTxYi.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(9, 1, 'SXs0fXw7WM038TE6vRRmyzxOaNvY5jRteWWqmvFv.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(10, 1, 'LPQdFnexZ9cfcs1pWNdxaLFHEZfXZtI3F8O0iW1P.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(11, 1, 'dJ8LnQ97Un73HbGPj8vOzTaaFD0PCxClMJbMOXLK.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(12, 1, 'ooTVFfr1Am9PLHvwDH8NlpDhFXBwHdcZ0IdD1ayT.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(13, 1, 'DThjnP194EKPJJvjepIwIdeRZBVeicQdPxGta19S.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(14, 1, 'BZZORsdk9FdwQBecDxBIjRD93QC4uZxILazdYRRV.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(15, 1, 'BJKd7yQNiqv3uBnPaKtkGLtOzid5hXO6AdEh0kay.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(16, 1, '1KCssBhonkxOp57a6WHEgdipa7NqG3ZMZYxKnRDM.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(17, 1, 'Fz31S2YYVlrQofKciR8rXiEvfuAEex9BTt1fHLM4.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(18, 1, '96b8pIbJvwW4cvzxUHg18ef3lu9cqVX1nYb3fjGv.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(19, 1, 'ovgMMNFDyQJJ2fvnX1Mtvw2bEVQN903h6PSGhJwB.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(20, 1, 'Y5TaNufIehbKly2Pe4cgtUoTnygKy8JFxKONnuTt.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(21, 1, 'xkVHXens0XOkYruQJnbgfGRBy9QoAMb4SIInh96r.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(22, 1, '8EHZWJcjTvkByn6mQeW5bGaFO2eOKieHXcTtp4QI.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(23, 1, 'MAuEV2nSm9P9gKnnC3wGN123NkgLhpPICiaBOa4w.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(24, 1, 'uWgxO71QgUPA9fHDjla4APJLcyVvrKjIMIY2SEQ6.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(25, 1, '60gkDpFrt8dfGdHD9Sn3Nor8eR3eEX6FhvUBI5BT.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(26, 1, 'SjRCyrkrPywJfLTAH5N0Ps0DjWmMmaLt6NyKXWDj.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(27, 1, 'uw4FEDUGhZjeaGjLMTrQ9HbSGC788Jg18Ord1Wnu.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(28, 1, 'wErrFVjgLEjt92ArnD7TafG88m0KuUrclIXQUpdq.jpg', '2023-11-27 17:25:52', '2023-11-27 17:25:52'),
(29, 2, 'lrhrJuwU40piXlJBuqG0coW9KpwlNvq68O8ZUrCH.jpg', '2023-11-27 17:46:18', '2023-11-27 17:46:18'),
(30, 2, 'a4FtLCQDwhg5vJeUVebjqAbmooHx7PZsoPTYwgIM.jpg', '2023-11-27 17:46:18', '2023-11-27 17:46:18'),
(31, 2, 'eTDa4LXOaJ7F7YAbfwABqEL0gnHouS5uOrCxuRo0.jpg', '2023-11-27 17:46:18', '2023-11-27 17:46:18'),
(32, 2, 'qkwZhvixdIHYaXubppA22THIJCNQl6S0zlmnEZHZ.jpg', '2023-11-27 17:46:18', '2023-11-27 17:46:18'),
(33, 2, 'N0gOdRjl1qsA7RPlE3SyL2xJ5qghuBGo6UizYSU8.jpg', '2023-11-27 17:46:18', '2023-11-27 17:46:18'),
(34, 2, 'K0EBxxSQEyCZMCWM3IEJNB5hNLGxC1XdKfg8876e.jpg', '2023-11-27 17:46:18', '2023-11-27 17:46:18'),
(35, 2, 'GqnOlzswT4ktJuaOplfsNBn2Q94w4U8fq4zUepqc.jpg', '2023-11-27 17:46:18', '2023-11-27 17:46:18'),
(36, 2, 'FBTgILrxMCdT9k9I8z3An2sCIjNkJxbfa14ZCE5f.jpg', '2023-11-27 17:46:18', '2023-11-27 17:46:18'),
(37, 2, 'BYvfslSOISGOzsiFgEWL6LEbRPWyG5eh8nGqdCew.jpg', '2023-11-27 17:46:18', '2023-11-27 17:46:18'),
(38, 2, 'sK0xXbqMMVflH43QJbTJ3G71KLjRqJX9cgrsfagv.jpg', '2023-11-27 17:46:19', '2023-11-27 17:46:19'),
(39, 2, 'OHXC6Q708zkUja0DCQP5FfFjZtZaHFOR39nwsp9V.jpg', '2023-11-27 17:46:19', '2023-11-27 17:46:19'),
(40, 2, 'gbqKZSBkbWGwmTPGLfjJjW9CoWIah03L8ZPP7FIZ.jpg', '2023-11-27 17:46:19', '2023-11-27 17:46:19'),
(41, 3, 'ZjDhUQ8HCdsttBKZIAa5b7GJf7gj5cZVf3glKGhP.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(42, 3, '56SJGV6LL5dvHsFOOulGEJRS7CDCpOPOmhiYzzfM.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(43, 3, 'I39wz5VDe8eaC1LORi1x1oY0jht4Y6nhYCdBeGrD.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(44, 3, 'gLH2x8rEz9zqLBX4DaE0AqD18vkkxwwC5IAcO3ii.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(45, 3, '25rs7X3UD1fWdoOR8QCUzj1ZrrkrYArOvjq3Mloo.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(46, 3, 'L1CvNhIOQxUQjv1EqnYkqjZqKUYKHnoVtu6WM5Fv.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(47, 3, 'HOB0taxsIQIBBPN1PriqzairCBh2uokOpD2N67rH.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(48, 3, 'H3o42N0jIXBFj8xqmHkZ9rHlG1bWklq4lDO3jU2A.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(49, 3, '05Bt601RZtqdYwnM5heXhUBWvjofiwKhevzWPzgK.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(50, 3, 'AjsidDOPNplYFSJTWCowZjOdK8Vdi0Pkd3Te0AqW.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(51, 3, 'xI7LfUXo14WOhV90v2rcrOSXSBbKykj8Rf3VEhtc.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(52, 3, 'UXTmx845IfWXkGsYbRxNYbwRT89ys812VP7egXEU.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(53, 3, 'HyJrCMzc87XNCQNv8m7JbXyLXgtaFwuECEzJIQUJ.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(54, 3, 'MIuW7Dk1kRQKYw8JzRn56nKELJW119bBGd2BpWdq.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(55, 3, '48sEMuXMWZh65wOjXhVOGeQCTKgkDnsk9U7WxkLL.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(56, 3, 'RfmBUQWQFWEWyrqp99ZbSGVExuZbw15xuIhpgmqn.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(57, 3, 'rwli7olfNSjB6WeE91jWbVkZupCGCxBoxLMQqTiS.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(58, 3, 'K4rjScFIMz3rDQngV5A3q8x0aJvklW38Zj0SaFeA.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(59, 3, 'vdM4mT0CC2swjMUm7OxI3IAMzBnFnCzomsrHMyBl.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(60, 3, 'JtDHmd1E9FgaKX2P8Ux9wxjGFPDm3Vs1Q3B2bvjE.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(61, 3, 'N9h5E2lEVj6SnA6hNZvewatSk2bp4Kv4uOSmDxL5.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(62, 3, '3uIuDfs862tML66UZ2OYJXSjavwx8TD9po3D9qyY.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(63, 3, 'Z9VQfkLefsEpg6Eer2prOLetxNw4tro9fav8lVM3.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(64, 3, 'gQnuy3ypur56FF3F3qaDShlenV9iHB0AfC55IK5X.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(65, 3, 'n8US444wxqdHssCkSW2jDayPOcUpxIVq4Zpl0PKr.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(66, 3, 'b1oRGOIaqNqNryDCVG3d0pC3O9Zt6U02FYrybyZO.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(67, 3, 'TF0GCZIzdlu0oYD43YkxAojCSaHnfZk00akTSW9K.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(68, 3, 'PqWz520j9M80AKWIgjIp0f8Xrw0KLvpVeQtshMBs.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(69, 3, '19oGQYhYHYizcGy449mUzqruWPm8xHaL35Xdu74P.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(70, 3, '2Lx4o9kNyq2bT9Syq4aVwLnzgWheuizsoUOhui9X.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(71, 3, '8TBppMo5OUh69abpJMeeK5gdVPZLFVRNgxoF7Ljg.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(72, 3, 't44kYGVzmNFNcNflF4v5ufpvJ6rTX3LbWsEE4fXT.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(73, 3, 'ZVVGosgIUJY7NnOoKoV5UJVtkCkzintcY6owQcm6.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(74, 3, 'W1FF2C42npm7BgSQxIqcxVEyufe12yGx06lCFEZK.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(75, 3, '3TUwqTcEIhykz4qact0Mcnt2Nyi7RatA8wOFFwbS.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(76, 3, 'zed8DYM9y5k4PH7N0UD6aVl0WvVXipRBt1aiEoli.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(77, 3, 'u3YypolwWGF6ELquBqAnodXJW1rSasiQYdNVrVQF.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(78, 3, 'PU54abkvFHVGyzNuuKh1LPBrHDRqymeHXVFS50P2.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(79, 3, 'ugTUE3i9GlV8E8nZXuyWlR9dK3zoDR6W7IY25LcD.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(80, 3, 'H2HDbirvbHqZDUhLYuzupVu67Ntis2bGjbeM1V5I.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(81, 3, 'cU7n1rTps859qJsjmZXY8aq3RRiwjR15xiIXMZEB.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(82, 3, 'hp4EutDjB03KjoEnF8n1HsVCpdjBqDxj0QUeR7H7.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(83, 3, 'Z7pLEh9TC0oZF7We3KN8yW5iJ1g0Nrvxf2Cn2xCD.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(84, 3, 'vAgPLR02RWDYIjUFi5V8SevbTr8nG8gULy9oT3FZ.jpg', '2023-11-27 17:49:13', '2023-11-27 17:49:13'),
(85, 4, 'Ir8pi1ftVjCmxKHlrCRcB0Gs9rNpaGNmQPyyEESb.jpg', '2023-11-27 17:53:03', '2023-11-27 17:53:03'),
(86, 4, 'hOwQBdB3Z1oNzWP1pMKi0xAF31gjrFH4sJ9DnNsQ.jpg', '2023-11-27 17:53:03', '2023-11-27 17:53:03'),
(87, 4, 'Rn4TrxAPBlFyRU2o0RevWqMP6eZWIt6KnMMBdotb.jpg', '2023-11-27 17:53:03', '2023-11-27 17:53:03'),
(88, 4, '0r41l55sbPxxtWcLi30YLnD6AG8j10ZzB93gqX5l.jpg', '2023-11-27 17:53:03', '2023-11-27 17:53:03'),
(89, 4, 'wg9typTqiNAnwRjS1ck6yW7gPc8oFmXQgF3cdJt3.jpg', '2023-11-27 17:53:03', '2023-11-27 17:53:03'),
(90, 4, '375IJR5FqchdKUl6MQe8IMbyyfQrMsfWAIpWkQ7R.jpg', '2023-11-27 17:53:03', '2023-11-27 17:53:03'),
(91, 4, 'mkp5MVEcdu8LbedN1FLYdWb6wrmyNkWileXi97Y2.jpg', '2023-11-27 17:53:03', '2023-11-27 17:53:03'),
(92, 4, 'EA4xtf6nT3UEYHH4JR635PY77tbOsKpq3v3VCxep.jpg', '2023-11-27 17:53:03', '2023-11-27 17:53:03'),
(93, 4, 'oe4qkjzvhAiWiE95RwQXGlGnvcuHcymbRWU8KZiA.jpg', '2023-11-27 17:53:03', '2023-11-27 17:53:03'),
(94, 4, 'gfyNAmH8BZGKE6SR0oU6MuVG1bkpLePw9qq7gerR.jpg', '2023-11-27 17:53:03', '2023-11-27 17:53:03'),
(95, 4, 'M8c5PV3RoYjerBVULZrcpSZo0F97S4t0OAYa1t8Y.jpg', '2023-11-27 17:53:03', '2023-11-27 17:53:03'),
(96, 4, 'ODlhiA7BWPQT1dBCT7Xb30D6uMFNYw2eecChgNGS.jpg', '2023-11-27 17:53:03', '2023-11-27 17:53:03'),
(97, 4, '9BSd2xRhPJG58nQ2e5Mx5ff8ZAbQiRSg0jn8bwTY.jpg', '2023-11-27 17:53:03', '2023-11-27 17:53:03'),
(98, 4, '6uVK9MSnW8kcj76ItUtMDKfxTTaq2yyvUdMb6NLu.jpg', '2023-11-27 17:53:03', '2023-11-27 17:53:03'),
(99, 4, 'G1GTAGEislwKBRmNRs5Vnr5NmgWIi2IDgLb4jKM3.jpg', '2023-11-27 17:53:03', '2023-11-27 17:53:03'),
(100, 4, 'UkRkNbUAuy2rpvv8Eym14hajzS5i3uQy6UI82voz.jpg', '2023-11-27 17:53:03', '2023-11-27 17:53:03'),
(101, 4, 'UuGHsN5ux90VYMsub7qiKeu6CN2sKSn9yc8Hei5c.jpg', '2023-11-27 17:53:03', '2023-11-27 17:53:03'),
(102, 4, 'vdcNPhDO6Wf4awBdJfhNGiTrNpHo9ym8PKlc1w2p.jpg', '2023-11-27 17:53:03', '2023-11-27 17:53:03'),
(103, 4, 'tlHtpsdt0JOyG0A9HWnMW5PGZW7HLFWXDnvNNrJG.jpg', '2023-11-27 17:53:03', '2023-11-27 17:53:03'),
(104, 4, 'UNTaYA9yOXPVhvSPAU2tbyiU8nvbOVAQF9HBs1m6.jpg', '2023-11-27 17:53:03', '2023-11-27 17:53:03'),
(105, 4, '3aaTcJbD5V5vO2qt6QoqChyFLDIF4SPjey7s6tT0.jpg', '2023-11-27 17:53:03', '2023-11-27 17:53:03'),
(106, 4, '4ML35rCi7zxmdoPlfQbWWNhWc8500RUCITW1axrE.jpg', '2023-11-27 17:53:03', '2023-11-27 17:53:03'),
(107, 4, 'SzMjmNlyp7hpNhXDDuwbBDScfce8NF1wPk4isGY6.jpg', '2023-11-27 17:53:03', '2023-11-27 17:53:03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(2, 'How does the photo retouching and photo restoration ordering process work?', 'Simply click here and follow the instructions.', '2023-11-28 11:54:31', '2023-11-28 11:54:31'),
(3, 'Lost internet connection during the uploading process what shall I do?', 'Simply go to the order page and upload your photos once again.', '2023-11-28 11:54:51', '2023-11-28 11:54:51'),
(4, 'I am not sure which service packet I should choose for my photos?', 'Do not choose and we will assess your photos and estimate the costs.', '2023-11-28 11:55:16', '2023-11-28 11:55:16'),
(5, 'What can I do if I am unhappy with your work?', 'Request free revision through contacting us and tell us additional instructions or explanations.', '2023-11-28 11:55:39', '2023-11-28 11:55:39'),
(6, 'How do I receive your work?', 'When we finish the work, will send you an email with download link.', '2023-11-28 11:56:03', '2023-11-28 11:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `note1` text NOT NULL,
  `note2` text NOT NULL,
  `note3` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`, `note1`, `note2`, `note3`, `created_at`, `updated_at`) VALUES
(1, 'Featured in:', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident tenetur voluptatibus placeat, ab ea nulla magni. Sed ratione harum debitis adipisci maiores hic similique totam?', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident tenetur voluptatibus placeat, ab ea nulla magni. Sed ratione harum debitis adipisci maiores hic similique totam?', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident tenetur voluptatibus placeat, ab ea nulla magni. Sed ratione harum debitis adipisci maiores hic similique totam?', '2023-11-14 20:18:30', '2023-11-14 20:18:30');

-- --------------------------------------------------------

--
-- Table structure for table `free_orders`
--

CREATE TABLE `free_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_service_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`order_service_id`)),
  `slug` varchar(255) DEFAULT NULL,
  `type` enum('waiting','progress','completed') DEFAULT NULL,
  `show` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `note1` text DEFAULT NULL,
  `note2` text DEFAULT NULL,
  `note3` text DEFAULT NULL,
  `note4` text DEFAULT NULL,
  `note5` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `free_orders`
--

INSERT INTO `free_orders` (`id`, `order_service_id`, `slug`, `type`, `show`, `created_at`, `updated_at`, `name`, `email`, `phone`, `website`, `note1`, `note2`, `note3`, `note4`, `note5`) VALUES
(125, NULL, '6579765', NULL, 0, '2023-12-27 13:45:10', '2023-12-27 13:45:19', 'mostafa', 'silvertriangle7@gmail.com', NULL, 'wwwwwwwwwwwwwwwww.com', NULL, NULL, NULL, NULL, NULL),
(126, NULL, '6230614', NULL, 0, '2024-01-09 12:13:07', '2024-01-09 12:13:35', 'mostafaxx', 'silvertriangle7@gmail.com', NULL, 'silvertriangle.com', NULL, NULL, NULL, NULL, NULL),
(127, NULL, '2868310', NULL, 0, '2024-01-09 14:12:51', '2024-01-09 14:13:33', 'mostafaxx1', 'a00@a.com', NULL, 'silvertriangle00.com', NULL, NULL, NULL, NULL, NULL),
(128, NULL, '3876735', NULL, 0, '2024-01-10 19:53:17', '2024-01-10 19:53:23', 'Octavia Reynolds', 'baxug@mailinator.com', NULL, 'https://www.wyguj.net', NULL, NULL, NULL, NULL, NULL),
(129, '1', '8464378', NULL, 0, '2024-01-10 19:59:25', '2024-01-10 19:59:31', 'Idola Hammond', 'kose@mailinator.com', NULL, 'https://www.tazuvyzywo.mobi', NULL, NULL, NULL, NULL, NULL),
(130, '1', '4555998', NULL, 0, '2024-01-10 20:04:49', '2024-01-10 20:04:54', 'Kareem Sweet', 'lohod@mailinator.com', NULL, 'https://www.pukive.me', NULL, NULL, NULL, NULL, NULL),
(131, '1', '1033210', NULL, 0, '2024-01-22 08:27:47', '2024-01-22 08:27:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, '1', '5543242', NULL, 0, '2024-01-22 09:10:12', '2024-01-22 09:10:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, '1', '3545623', NULL, 0, '2024-01-22 20:38:45', '2024-01-22 20:38:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, '1', '4943366', NULL, 0, '2024-01-22 20:39:25', '2024-01-22 20:39:31', 'Elton Levy', 'fane@mailinator.com', NULL, 'https://www.fyguwe.in', NULL, NULL, NULL, NULL, NULL),
(135, '1', '3146303', NULL, 0, '2024-01-22 20:52:29', '2024-01-22 20:52:37', 'Erin Baird', 'wejasoweh@mailinator.com', NULL, 'https://www.moseziverujicir.ca', NULL, NULL, NULL, NULL, NULL),
(136, '1', '3859384', NULL, 0, '2024-01-26 10:03:00', '2024-01-26 10:03:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, '1', '2109629', NULL, 0, '2024-01-26 10:03:02', '2024-01-26 10:03:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, '1', '6980014', NULL, 0, '2024-02-11 20:27:23', '2024-02-11 20:27:31', 'احمد حماده', 'nywadyna@mailinator.com', NULL, 'https://www.luaaawireh.net', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `free_order_details`
--

CREATE TABLE `free_order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `free_order_id` bigint(20) UNSIGNED NOT NULL,
  `order_service_id` varchar(255) DEFAULT NULL,
  `price_offer` int(11) DEFAULT NULL,
  `photo_count` int(11) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `order_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `free_order_service_notes`
--

CREATE TABLE `free_order_service_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `free_order_id` bigint(20) UNSIGNED NOT NULL,
  `order_service_id` bigint(20) UNSIGNED NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `free_service_images`
--

CREATE TABLE `free_service_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `free_order_id` bigint(20) UNSIGNED NOT NULL,
  `order_service_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `type` enum('main','referance') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `note`) VALUES
(1, 'Main Gallery', 'Main Gallery note Lorem ipsum dolor sit amet consectetur, adipisicing elit. Facere voluptatibus consequuntur iusto excepturi? Ab qui dolorem consequuntur, sint vitae nam dignissimos, praesentium magnam maiores consectetur nesciunt! Perferendis consequuntur atque suscipit.');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_images`
--

CREATE TABLE `gallery_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gallery_id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_images`
--

INSERT INTO `gallery_images` (`id`, `gallery_id`, `photo`, `created_at`, `updated_at`) VALUES
(1, 1, '0DCO1DkeHeCZMeuHVF8FkGVv0OsSDpD2LXGh7ABj.jpg', '2023-11-14 20:24:25', '2023-11-14 20:24:25'),
(2, 1, 'pJ71IzRkvYk3Y1R6zaUCm1seIA9kXpcHfP9MsPHT.jpg', '2023-11-14 20:24:25', '2023-11-14 20:24:25'),
(3, 1, 'ATC13kJLO4gfGMVJVNzFw1PasVsg3aiqicv2JVa8.jpg', '2023-11-14 20:24:25', '2023-11-14 20:24:25'),
(4, 1, '8fu5Hxd2xiuMkDZmHcovKjx4B9KRpovbhKjfdnZj.jpg', '2023-11-14 20:24:25', '2023-11-14 20:24:25'),
(5, 1, '5PVAvUERWEspvniYaSsIT1Kz3WQKgpcCo3cfai1Y.jpg', '2023-11-14 20:24:25', '2023-11-14 20:24:25'),
(6, 1, 'hyuhXrSCgdIi2McdSew1ln481lS83CqVevwUGE7v.jpg', '2023-11-14 20:24:25', '2023-11-14 20:24:25'),
(7, 1, 'd57Fv5zNqROCm06aCdAymhp2Hy02HwhJ9mx1WEiT.jpg', '2023-11-14 20:24:25', '2023-11-14 20:24:25'),
(8, 1, 'Z9szJ57aXReZCs5IGW7HwLJ5dxoSfHxAJZsaZn5c.jpg', '2023-11-14 20:24:25', '2023-11-14 20:24:25'),
(9, 1, 'YgEOFMJ6ItTOISdvenwFEKT845EXTxHskEU78aMH.jpg', '2023-11-14 20:24:25', '2023-11-14 20:24:25'),
(10, 1, 'AyWxOryniQoedubC0GLrs4mrNIaCeLcU7B8e1VXx.jpg', '2023-11-14 20:24:25', '2023-11-14 20:24:25'),
(11, 1, 'KWHeqADqh4oWdRHnWSxxraOj0r5Z69yfw2FcwMxA.jpg', '2023-11-14 20:24:25', '2023-11-14 20:24:25'),
(12, 1, '7eqScfBn7fmkzKiz3fTbm9pHjsVqQwsze3T1J8YH.jpg', '2023-11-14 20:24:25', '2023-11-14 20:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `homes`
--

CREATE TABLE `homes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `home_compression_title` varchar(255) DEFAULT NULL,
  `home_compression_description` text DEFAULT NULL,
  `service_title` varchar(255) DEFAULT NULL,
  `service_title_colored` varchar(255) DEFAULT NULL,
  `service_gallery_description` text DEFAULT NULL,
  `note1` text DEFAULT NULL,
  `note2` text DEFAULT NULL,
  `note3` text DEFAULT NULL,
  `note4` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homes`
--

INSERT INTO `homes` (`id`, `title`, `description`, `home_compression_title`, `home_compression_description`, `service_title`, `service_title_colored`, `service_gallery_description`, `note1`, `note2`, `note3`, `note4`, `created_at`, `updated_at`) VALUES
(1, 'PROFESSIONAL', 'Photo retouching & Editing services', NULL, NULL, 'Service Title', 'Slug Color', 'Service Gallery Description', 'Turnaround time 24 hours', 'All photos format are accepted', 'Unltimited free revisions provider', 'First photo will be retouched for free', '2023-11-19 09:32:22', '2023-11-19 09:39:19');

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE `icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `notes` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`id`, `name`, `notes`, `status`, `created_at`, `updated_at`) VALUES
(1, '1 service in photo editing industry', '', 1, '2023-11-19 09:49:04', '2023-11-19 09:49:04'),
(2, 'Follow your unique photography style', '', 1, '2023-11-19 09:49:56', '2023-11-19 09:49:56'),
(3, 'we garderd 100% security', '', 1, '2023-11-19 09:50:29', '2023-11-19 09:50:29'),
(4, 'fast 24 hour turnaround', '', 1, '2023-11-19 09:51:06', '2023-11-19 09:51:06'),
(5, 'easy to use', '', 1, '2023-11-19 09:52:57', '2023-11-19 09:52:57');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) NOT NULL,
  `type` enum('main','gallery','gallery_media','home_navigation','home_banner') NOT NULL DEFAULT 'main',
  `imageable_type` varchar(255) NOT NULL,
  `imageable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `filename`, `type`, `imageable_type`, `imageable_id`, `created_at`, `updated_at`) VALUES
(5, 'slide-1700000095.jpg', 'main', 'App\\Models\\Slide', 3, '2023-11-14 20:14:55', '2023-11-14 20:14:55'),
(6, 'partner-1700000398.png', 'main', 'App\\Models\\Partner', 1, '2023-11-14 20:19:58', '2023-11-14 20:19:58'),
(7, 'partner-1700000407.png', 'main', 'App\\Models\\Partner', 2, '2023-11-14 20:20:07', '2023-11-14 20:20:07'),
(8, 'partner-1700000416.png', 'main', 'App\\Models\\Partner', 3, '2023-11-14 20:20:16', '2023-11-14 20:20:16'),
(9, 'partner-1700000427.png', 'main', 'App\\Models\\Partner', 4, '2023-11-14 20:20:27', '2023-11-14 20:20:27'),
(10, 'partner-1700000441.png', 'main', 'App\\Models\\Partner', 5, '2023-11-14 20:20:41', '2023-11-14 20:20:41'),
(11, 'partner-1700000452.png', 'main', 'App\\Models\\Partner', 6, '2023-11-14 20:20:52', '2023-11-14 20:20:52'),
(12, 'partner-1700000464.png', 'main', 'App\\Models\\Partner', 7, '2023-11-14 20:21:04', '2023-11-14 20:21:04'),
(13, 'slide-1700000747.jpg', 'main', 'App\\Models\\Slide', 2, '2023-11-14 20:25:47', '2023-11-14 20:25:47'),
(14, 'about-1700000898.png', 'main', 'App\\Models\\About', 1, '2023-11-14 20:28:18', '2023-11-14 20:28:18'),
(15, 'service-1700001449.jpg', 'main', 'App\\Models\\Service', 1, '2023-11-14 20:37:29', '2023-11-14 20:37:29'),
(16, 'service-1700001468.jpg', 'main', 'App\\Models\\Service', 2, '2023-11-14 20:37:48', '2023-11-14 20:37:48'),
(17, 'service-1700001484.jpg', 'main', 'App\\Models\\Service', 3, '2023-11-14 20:38:04', '2023-11-14 20:38:04'),
(18, 'service-1700001498.jpg', 'main', 'App\\Models\\Service', 4, '2023-11-14 20:38:18', '2023-11-14 20:38:18'),
(19, 'service-1700001520.jpg', 'main', 'App\\Models\\Service', 5, '2023-11-14 20:38:40', '2023-11-14 20:38:40'),
(20, 'service-1700001534.jpg', 'main', 'App\\Models\\Service', 6, '2023-11-14 20:38:54', '2023-11-14 20:38:54'),
(21, 'service-1700001587.jpg', 'main', 'App\\Models\\Service', 8, '2023-11-14 20:39:47', '2023-11-14 20:39:47'),
(22, 'service-1700001604.jpg', 'main', 'App\\Models\\Service', 7, '2023-11-14 20:40:04', '2023-11-14 20:40:04'),
(23, 'slider-1700001695.jpg', 'main', 'App\\Models\\Slider', 1, '2023-11-14 20:41:35', '2023-11-14 20:41:35'),
(25, 'retouchservice-1700002946.jpg', 'main', 'App\\Models\\RetouchService', 1, '2023-11-14 21:02:26', '2023-11-14 21:02:26'),
(26, 'retouchservice-1700002960.jpg', 'main', 'App\\Models\\RetouchService', 2, '2023-11-14 21:02:40', '2023-11-14 21:02:40'),
(27, 'retouchservice-1700002975.jpg', 'main', 'App\\Models\\RetouchService', 3, '2023-11-14 21:02:55', '2023-11-14 21:02:55'),
(29, 'home_banner-5xg_1700386758.jpg', 'home_banner', 'App\\Models\\Home', 1, '2023-11-19 09:39:19', '2023-11-19 09:39:19'),
(30, 'icon-1700387344.png', 'main', 'App\\Models\\Icon', 1, '2023-11-19 09:49:04', '2023-11-19 09:49:04'),
(31, 'icon-1700387396.png', 'main', 'App\\Models\\Icon', 2, '2023-11-19 09:49:56', '2023-11-19 09:49:56'),
(32, 'icon-1700387429.png', 'main', 'App\\Models\\Icon', 3, '2023-11-19 09:50:30', '2023-11-19 09:50:30'),
(33, 'icon-1700387466.png', 'main', 'App\\Models\\Icon', 4, '2023-11-19 09:51:06', '2023-11-19 09:51:06'),
(34, 'icon-1700387577.png', 'main', 'App\\Models\\Icon', 5, '2023-11-19 09:52:57', '2023-11-19 09:52:57'),
(36, 'price-1701047458.jpg', 'main', 'App\\Models\\Price', 4, '2023-11-26 23:10:58', '2023-11-26 23:10:58'),
(37, 'example-1701112678.jpg', 'main', 'App\\Models\\Example', 1, '2023-11-27 17:17:58', '2023-11-27 17:17:58'),
(38, 'example-1701114317.jpg', 'main', 'App\\Models\\Example', 2, '2023-11-27 17:45:17', '2023-11-27 17:45:17'),
(39, 'example-1701114516.jpg', 'main', 'App\\Models\\Example', 3, '2023-11-27 17:48:36', '2023-11-27 17:48:36'),
(40, 'example-1701114718.jpg', 'main', 'App\\Models\\Example', 4, '2023-11-27 17:51:59', '2023-11-27 17:51:59'),
(41, 'tour-1701165382.jpg', 'main', 'App\\Models\\Tour', 10, '2023-11-28 07:56:22', '2023-11-28 07:56:22'),
(42, 'tour-1701167631.jpg', 'main', 'App\\Models\\Tour', 11, '2023-11-28 08:33:51', '2023-11-28 08:33:51'),
(43, 'tour-1701168038.jpg', 'main', 'App\\Models\\Tour', 12, '2023-11-28 08:40:38', '2023-11-28 08:40:38'),
(44, 'tour-1701168110.jpg', 'main', 'App\\Models\\Tour', 13, '2023-11-28 08:41:50', '2023-11-28 08:41:50'),
(45, 'tour-1701168137.jpg', 'main', 'App\\Models\\Tour', 14, '2023-11-28 08:42:17', '2023-11-28 08:42:17'),
(46, 'tour-1701168166.jpg', 'main', 'App\\Models\\Tour', 15, '2023-11-28 08:42:46', '2023-11-28 08:42:46'),
(47, 'tour-1701181865.jpg', 'main', 'App\\Models\\Tour', 17, '2023-11-28 12:31:06', '2023-11-28 12:31:06'),
(49, 'contact-1701184149.png', 'main', 'App\\Models\\Contact', 2, '2023-11-28 13:09:09', '2023-11-28 13:09:09'),
(50, 'offer-1701271487.png', 'main', 'App\\Models\\Offer', 2, '2023-11-29 13:24:47', '2023-11-29 13:24:47'),
(52, 'tour-1701349173.jpg', 'main', 'App\\Models\\Tour', 18, '2023-11-30 12:59:33', '2023-11-30 12:59:33'),
(53, 'tour-1701349492.jpg', 'main', 'App\\Models\\Tour', 19, '2023-11-30 13:04:52', '2023-11-30 13:04:52'),
(54, 'tour-1701349638.jpg', 'main', 'App\\Models\\Tour', 20, '2023-11-30 13:07:18', '2023-11-30 13:07:18'),
(55, 'slider-1701401024.jpg', 'main', 'App\\Models\\Slider', 2, '2023-12-01 03:23:44', '2023-12-01 03:23:44'),
(56, 'slider-1701401055.jpg', 'main', 'App\\Models\\Slider', 3, '2023-12-01 03:24:15', '2023-12-01 03:24:15'),
(57, 'price-gallery_LN6_1703668513.jpg', 'gallery', 'App\\Models\\Price', 5, NULL, NULL),
(58, 'price-gallery_uFL_1703668513.png', 'gallery', 'App\\Models\\Price', 5, NULL, NULL),
(59, 'price-gallery_LN6_1703668513.jpg', 'gallery', 'App\\Models\\Price', 4, NULL, NULL),
(60, 'price-gallery_uFL_1703668513.png', 'gallery', 'App\\Models\\Price', 6, NULL, NULL),
(61, 'price-gallery_LN6_1703668513.jpg', 'gallery', 'App\\Models\\Price', 7, NULL, NULL),
(62, 'price-gallery_uFL_1703668513.png', 'gallery', 'App\\Models\\Price', 7, NULL, NULL),
(63, 'price-gallery_HVg_1703668513.jpg', 'gallery', 'App\\Models\\Price', 7, NULL, NULL),
(64, 'price-gallery_JIl_1703668513.jpg', 'gallery', 'App\\Models\\Price', 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `img_extensions`
--

CREATE TABLE `img_extensions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ext` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `img_extensions`
--

INSERT INTO `img_extensions` (`id`, `ext`, `description`, `created_at`, `updated_at`) VALUES
(1, 'jpg', 'JPEG Image', '2023-11-14 19:04:29', '2023-11-14 19:04:29'),
(2, 'png', 'PNG Image', '2023-11-14 19:04:29', '2023-11-14 19:04:29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_10_073647_create_admins_table', 1),
(6, '2023_09_11_111501_create_settings_table', 1),
(7, '2023_09_11_111515_create_sliders_table', 1),
(8, '2023_09_11_111535_create_sections_table', 1),
(9, '2023_09_11_111542_create_blogs_table', 1),
(10, '2023_09_11_111556_create_services_table', 1),
(11, '2023_09_11_111607_create_packages_table', 1),
(12, '2023_09_13_082427_create_homes_table', 1),
(13, '2023_09_17_111839_create_icons_table', 1),
(14, '2023_09_17_211257_create_abouts_table', 1),
(15, '2023_09_19_090602_create_galleries_table', 1),
(16, '2023_09_19_132023_create_partners_table', 1),
(17, '2023_09_20_121226_create_images_table', 1),
(18, '2023_10_03_104839_create_retouch_services_table', 1),
(19, '2023_10_03_114732_create_retouches_table', 1),
(20, '2023_10_03_175406_create_order_services_table', 1),
(21, '2023_10_04_130621_create_orders_table', 1),
(22, '2023_10_04_194830_add_status_to_orders_table', 1),
(23, '2023_10_06_195210_create_order_details_table', 1),
(24, '2023_10_06_195803_create_order_service_times_table', 1),
(25, '2023_10_06_195804_create_order_service_note_table', 1),
(26, '2023_10_06_200604_create_service_image_table', 1),
(27, '2023_11_03_151627_create_img_extensions_table', 1),
(28, '2023_11_05_104610_create_gallery_images_table', 1),
(29, '2023_11_14_142735_create_buttons_table', 1),
(30, '2023_11_14_145808_create_couples_table', 1),
(31, '2023_11_14_151327_create_features_table', 1),
(32, '2023_11_14_203037_create_comments_table', 1),
(33, '2023_11_14_211146_create_slides_table', 1),
(34, '2023_11_18_121447_add_columns_table', 1),
(35, '2023_11_18_160715_create_free_orders_table', 1),
(36, '2023_11_18_160728_create_free_order_details_table', 1),
(37, '2023_11_18_162915_create_free_service_images_table', 1),
(38, '2023_11_18_182853_add_columns_to_free_orders_table', 1),
(39, '2023_11_18_204653_create_free_order_service_notes_table', 1),
(40, '2023_11_26_215543_create_advantages_table', 1),
(41, '2023_11_26_215550_create_prices_table', 1),
(42, '2023_11_26_215622_create_price_advantages_table', 1),
(43, '2023_11_27_085310_create_examples_table', 1),
(44, '2023_11_27_085542_create_example_images_table', 1),
(45, '2023_11_27_214158_create_tours_table', 1),
(46, '2023_11_27_234925_add_order_to_tours_table', 1),
(47, '2023_11_28_132857_create_faqs_table', 1),
(48, '2023_11_28_144723_create_contacts_table', 1),
(49, '2023_11_28_152252_create_offers_table', 1),
(50, '2023_11_28_152445_create_about_us_table', 1),
(51, '2023_11_30_090707_create_terms_table', 1),
(52, '2023_11_30_092945_create_privacies_table', 1),
(53, '2023_11_30_095831_create_copyrights_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `note1` text DEFAULT NULL,
  `note2` text DEFAULT NULL,
  `note3` text DEFAULT NULL,
  `note4` text DEFAULT NULL,
  `note5` text DEFAULT NULL,
  `note6` text DEFAULT NULL,
  `note7` text DEFAULT NULL,
  `note8` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `name`, `description`, `note1`, `note2`, `note3`, `note4`, `note5`, `note6`, `note7`, `note8`, `created_at`, `updated_at`) VALUES
(1, 'Offers', 'We offer full range our photo retouching and post production services for professionals:\r\nPhotographers, models, advertising agencies, printing companies, real estate agencies, site owners, etc.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-29 11:21:37', '2023-11-29 12:43:33'),
(2, 'Our offer includes', '• Turnaround time 24 hours', '• All photos formats are accepted', '• Unlimited free revisions provided', '• First photo will be retouched for free', '• Immediate response to emails', '• No minimum quantity per order', 'To start please click here!', NULL, NULL, '2023-11-29 13:24:47', '2023-11-29 13:24:47');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `retouch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_service_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`order_service_id`)),
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('waiting','progress','completed') NOT NULL,
  `show` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `retouch_id`, `order_service_id`, `slug`, `created_at`, `updated_at`, `type`, `show`) VALUES
(1, 1, 2, NULL, '2622328', '2023-11-14 22:00:14', '2023-11-14 22:00:14', 'waiting', 0),
(2, 1, 2, '[\"1\"]', '6862478', '2023-11-14 22:16:22', '2023-11-14 22:16:26', 'waiting', 0),
(3, 1, 2, '[\"1\"]', '8373993', '2023-11-14 22:18:41', '2023-11-14 22:18:45', 'completed', 0),
(4, 1, 2, '[\"1\"]', '3467715', '2023-11-14 22:47:43', '2023-11-14 22:47:48', 'waiting', 0),
(5, 1, 2, '[\"1\"]', '7327171', '2023-11-17 10:21:58', '2023-11-17 10:56:29', 'waiting', 0),
(6, 1, 2, '[\"1\"]', '9835881', '2023-11-17 11:29:11', '2023-11-17 11:29:29', 'waiting', 0),
(7, 1, 2, '[\"1\"]', '6030254', '2023-11-17 14:52:33', '2023-11-17 14:52:38', 'waiting', 0),
(8, 1, 2, NULL, '5672153', '2023-11-19 12:35:13', '2023-11-19 12:35:13', 'waiting', 0),
(9, 1, 2, NULL, '5163575', '2023-11-24 11:12:56', '2023-11-24 11:12:56', 'waiting', 0),
(10, 1, 2, NULL, '8777463', '2023-11-24 11:16:21', '2023-11-24 11:16:21', 'waiting', 0),
(11, 1, 2, NULL, '2133286', '2023-11-24 11:19:19', '2023-11-24 11:19:19', 'waiting', 0),
(12, 1, 2, NULL, '1939145', '2023-11-24 11:20:18', '2023-11-24 11:20:18', 'waiting', 0),
(13, 1, 2, NULL, '6873836', '2023-11-24 11:21:04', '2023-11-24 11:21:04', 'waiting', 0),
(14, 1, 2, NULL, '5445248', '2023-11-24 11:21:31', '2023-11-24 11:21:31', 'waiting', 0),
(15, 1, 2, NULL, '7028379', '2023-11-24 11:23:37', '2023-11-24 11:23:37', 'waiting', 0),
(16, 1, 2, NULL, '9293175', '2023-11-24 11:23:48', '2023-11-24 11:23:48', 'waiting', 0),
(17, 1, 2, NULL, '9923879', '2023-11-24 11:23:49', '2023-11-24 11:23:49', 'waiting', 0),
(18, 1, 2, NULL, '9067840', '2023-11-24 11:24:43', '2023-11-24 11:24:43', 'waiting', 0),
(19, 1, 2, NULL, '7585715', '2023-11-24 11:27:13', '2023-11-24 11:27:13', 'waiting', 0),
(20, 1, 2, NULL, '8429414', '2023-11-24 11:29:07', '2023-11-24 11:29:07', 'waiting', 0),
(21, 1, 2, NULL, '5991884', '2023-11-24 11:30:05', '2023-11-24 11:30:05', 'waiting', 0),
(22, 1, 2, NULL, '2681881', '2023-11-24 11:36:49', '2023-11-24 11:36:49', 'waiting', 0),
(23, 1, 2, NULL, '3332681', '2023-11-24 11:38:47', '2023-11-24 11:38:47', 'waiting', 0),
(24, 1, 2, NULL, '9743054', '2023-11-24 11:39:30', '2023-11-24 11:39:30', 'waiting', 0),
(25, 1, 2, NULL, '7073662', '2023-11-24 12:42:29', '2023-11-24 12:42:29', 'waiting', 0),
(26, 1, 2, NULL, '9277123', '2023-11-24 12:42:39', '2023-11-24 12:42:39', 'waiting', 0),
(27, 1, 2, NULL, '3309468', '2023-11-30 23:21:30', '2023-11-30 23:21:30', 'waiting', 0),
(28, 1, 2, NULL, '7741752', '2023-11-30 23:21:31', '2023-11-30 23:21:31', 'waiting', 0),
(29, 1, 2, NULL, '9943437', '2023-11-30 23:21:31', '2023-11-30 23:21:31', 'waiting', 0),
(30, 1, 2, NULL, '2632311', '2023-11-30 23:21:31', '2023-11-30 23:21:31', 'waiting', 0),
(31, 1, 2, NULL, '5366194', '2023-11-30 23:21:31', '2023-11-30 23:21:31', 'waiting', 0),
(32, 1, 2, NULL, '5825935', '2023-11-30 23:21:32', '2023-11-30 23:21:32', 'waiting', 0),
(33, 1, 2, '[\"1\"]', '8971049', '2023-11-30 23:21:32', '2023-11-30 23:22:02', 'waiting', 0),
(34, 1, 2, NULL, '4792473', '2023-12-01 03:29:32', '2023-12-01 03:29:32', 'waiting', 0),
(35, 1, 2, NULL, '5267274', '2023-12-01 03:30:53', '2023-12-01 03:30:53', 'waiting', 0),
(36, 1, 2, NULL, '4625412', '2023-12-01 03:31:06', '2023-12-01 03:31:06', 'waiting', 0),
(37, 1, 2, '[\"1\"]', '2974618', '2023-12-01 03:31:34', '2023-12-01 03:31:38', 'waiting', 0),
(38, 1, 2, NULL, '3190972', '2023-12-01 04:19:31', '2023-12-01 04:19:31', 'waiting', 0),
(39, 1, 2, '[\"1\"]', '8297243', '2023-12-01 04:20:45', '2023-12-01 04:22:54', 'waiting', 0),
(40, 1, 2, '[\"1\"]', '8035857', '2023-12-01 04:24:16', '2023-12-01 04:24:20', 'waiting', 0),
(41, 1, 2, '[\"1\"]', '6656797', '2023-12-01 04:26:55', '2023-12-01 04:26:58', 'waiting', 0),
(42, 1, 2, '[\"1\"]', '5610853', '2023-12-01 04:27:54', '2023-12-01 04:27:57', 'waiting', 0),
(43, 1, 2, '[\"1\"]', '5103512', '2023-12-01 04:30:15', '2023-12-01 04:30:36', 'waiting', 0),
(44, 1, 2, NULL, '5679289', '2023-12-01 04:34:53', '2023-12-01 04:34:53', 'waiting', 0),
(45, 1, 2, NULL, '6478934', '2023-12-01 04:34:59', '2023-12-01 04:34:59', 'waiting', 0),
(46, 1, 2, NULL, '8257422', '2023-12-01 04:38:28', '2023-12-01 04:38:28', 'waiting', 0),
(47, 1, 2, NULL, '2696180', '2023-12-01 04:38:48', '2023-12-01 04:38:48', 'waiting', 0),
(48, 1, 2, NULL, '9778203', '2023-12-01 04:38:50', '2023-12-01 04:38:50', 'waiting', 0),
(49, 1, 2, NULL, '2721212', '2023-12-01 04:39:38', '2023-12-01 04:39:38', 'waiting', 0),
(50, 1, 2, NULL, '7905475', '2023-12-01 04:39:42', '2023-12-01 04:39:42', 'waiting', 0),
(51, 1, 2, '[\"1\"]', '8563247', '2023-12-01 05:02:12', '2023-12-01 05:02:16', 'waiting', 0),
(52, 1, 2, '[\"1\"]', '9579030', '2024-01-02 01:52:53', '2024-01-02 01:53:08', 'waiting', 0),
(53, 1, 2, '[\"1\"]', '9161371', '2024-01-02 08:48:35', '2024-01-02 08:48:38', 'waiting', 0),
(54, 1, 2, '[\"1\"]', '5786923', '2024-01-02 09:13:53', '2024-01-02 09:13:59', 'waiting', 0),
(55, 1, 2, '[\"1\"]', '2088856', '2024-01-06 13:52:21', '2024-01-06 13:52:40', 'waiting', 0),
(56, 1, 2, NULL, '3771100', '2024-01-06 20:31:09', '2024-01-06 20:31:09', 'waiting', 0),
(57, 1, 2, NULL, '9373235', '2024-01-06 20:31:19', '2024-01-06 20:31:19', 'waiting', 0),
(58, 1, 2, NULL, '1523731', '2024-01-06 20:31:34', '2024-01-06 20:31:34', 'waiting', 0),
(59, 1, 2, '[\"1\"]', '2405947', '2024-01-06 22:53:49', '2024-01-06 22:53:59', 'waiting', 0),
(60, 1, 2, NULL, '7496117', '2024-01-07 09:42:56', '2024-01-07 09:42:56', 'waiting', 0),
(61, 1, 2, NULL, '9882736', '2024-01-07 09:43:28', '2024-01-07 09:43:28', 'waiting', 0),
(62, 1, 2, '[\"1\"]', '8581950', '2024-01-07 09:46:21', '2024-01-07 09:47:17', 'waiting', 0),
(63, 1, 2, '[\"2\"]', '5235804', '2024-01-07 09:57:38', '2024-01-07 09:57:42', 'waiting', 0),
(64, 1, 2, '[\"1\"]', '7745047', '2024-01-07 10:02:25', '2024-01-07 10:02:29', 'waiting', 0),
(65, 1, 2, NULL, '4029336', '2024-01-09 09:22:28', '2024-01-09 09:22:28', 'waiting', 0),
(66, 1, 2, NULL, '9310307', '2024-01-09 09:25:12', '2024-01-09 09:25:12', 'waiting', 0),
(67, 1, 2, NULL, '8335887', '2024-01-09 10:04:08', '2024-01-09 10:04:08', 'waiting', 0),
(68, 1, 2, NULL, '3811567', '2024-01-09 10:05:01', '2024-01-09 10:05:01', 'waiting', 0),
(69, 1, 2, '[\"1\"]', '6202885', '2024-01-09 10:05:56', '2024-01-09 10:06:05', 'waiting', 0),
(70, 1, 2, NULL, '8399665', '2024-01-09 11:14:44', '2024-01-09 11:14:44', 'waiting', 0),
(71, 1, 2, '[\"1\"]', '3031019', '2024-01-09 11:15:03', '2024-01-09 11:15:08', 'waiting', 0),
(72, 1, 2, '[\"1\",\"2\"]', '8518059', '2024-01-09 11:15:52', '2024-01-09 11:15:57', 'waiting', 0),
(73, 1, 2, '[\"1\"]', '8193269', '2024-01-22 20:55:09', '2024-01-22 20:55:14', 'waiting', 0),
(74, 1, 2, '[\"1\"]', '5692542', '2024-01-24 08:23:54', '2024-01-24 08:24:05', 'waiting', 0),
(75, 1, 2, '[\"1\"]', '4845997', '2024-01-25 17:18:25', '2024-01-25 17:18:36', 'waiting', 0),
(76, 1, 2, '[\"1\"]', '4560423', '2024-01-25 21:10:02', '2024-01-25 21:10:11', 'waiting', 0),
(77, 1, 2, '[\"1\"]', '3468616', '2024-01-27 02:44:39', '2024-01-27 02:44:51', 'waiting', 0),
(78, 1, 2, '[\"1\"]', '7049276', '2024-01-27 02:52:00', '2024-01-27 02:52:14', 'waiting', 0),
(79, 1, 2, '[\"1\"]', '9781428', '2024-01-27 02:56:13', '2024-01-27 02:56:18', 'waiting', 0),
(80, 1, 2, '[\"1\"]', '3151280', '2024-02-11 20:18:28', '2024-02-11 20:19:17', 'waiting', 0),
(81, 1, 2, '[\"1\"]', '2650014', '2024-02-11 20:37:37', '2024-02-11 20:37:41', 'waiting', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `order_service_id` varchar(255) DEFAULT NULL,
  `price_offer` int(11) DEFAULT NULL,
  `photo_count` int(11) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `order_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `order_service_id`, `price_offer`, `photo_count`, `total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 2, '1', 1, 1, '50.00', 0, '2023-11-14 22:16:57', '2023-11-14 22:16:57'),
(2, 3, '1', 1, 1, '60.00', 1, '2023-11-14 22:19:07', '2023-11-14 22:19:26'),
(3, 4, '1', 2, 1, '65.00', 0, '2023-11-14 22:48:24', '2023-11-14 22:48:24'),
(4, 5, '1', 1, 1, '60.00', 0, '2023-11-17 11:28:07', '2023-11-17 11:28:07'),
(5, 40, '1', NULL, 1, '50.00', 0, '2023-12-01 04:24:33', '2023-12-01 04:24:33'),
(6, 40, '1', NULL, 3, '150.00', 0, '2023-12-01 04:25:08', '2023-12-01 04:25:08'),
(7, 41, '1', NULL, 1, '50.00', 0, '2023-12-01 04:27:31', '2023-12-01 04:27:31'),
(8, 42, '1', NULL, 1, '50.00', 0, '2023-12-01 04:28:12', '2023-12-01 04:28:12'),
(9, 42, '1', NULL, 1, '50.00', 0, '2023-12-01 04:29:56', '2023-12-01 04:29:56'),
(10, 43, '1', NULL, 1, '50.00', 0, '2023-12-01 04:30:46', '2023-12-01 04:30:46'),
(11, 37, '1', NULL, 1, '50.00', 0, '2023-12-01 04:32:02', '2023-12-01 04:32:02'),
(12, 51, '1', NULL, 1, '50.00', 0, '2023-12-01 05:02:26', '2023-12-01 05:02:26'),
(13, 3, '1', 1, 2, '120.00', 0, '2024-01-01 21:12:02', '2024-01-01 21:12:02'),
(14, 3, '1', 1, 2, '120.00', 0, '2024-01-01 21:13:55', '2024-01-01 21:13:55'),
(15, 3, '1', NULL, 2, '100.00', 0, '2024-01-01 21:14:52', '2024-01-01 21:14:52'),
(16, 3, '1', NULL, 2, '100.00', 0, '2024-01-01 21:15:16', '2024-01-01 21:15:16'),
(17, 3, '1', 1, 2, '120.00', 0, '2024-01-01 21:16:55', '2024-01-01 21:16:55'),
(18, 3, '1', NULL, 2, '100.00', 0, '2024-01-01 21:17:40', '2024-01-01 21:17:40'),
(19, 3, '1', NULL, 1, '50.00', 0, '2024-01-01 21:22:25', '2024-01-01 21:22:25'),
(20, 3, '1', NULL, 2, '100.00', 0, '2024-01-01 21:23:05', '2024-01-01 21:23:05'),
(21, 3, '1', NULL, 2, '100.00', 0, '2024-01-01 21:23:41', '2024-01-01 21:23:41'),
(22, 3, '1', NULL, 2, '100.00', 0, '2024-01-01 21:36:06', '2024-01-01 21:36:06'),
(23, 3, '1', NULL, 2, '100.00', 0, '2024-01-01 21:36:53', '2024-01-01 21:36:53'),
(24, 53, '1', 1, 1, '60.00', 0, '2024-01-02 08:49:03', '2024-01-02 08:49:03'),
(25, 53, '1', 1, 1, '60.00', 0, '2024-01-02 09:11:03', '2024-01-02 09:11:03'),
(26, 53, '1', 1, 1, '60.00', 0, '2024-01-02 09:12:12', '2024-01-02 09:12:12'),
(27, 53, '1', 1, 1, '60.00', 0, '2024-01-02 09:12:38', '2024-01-02 09:12:38'),
(28, 54, '1', 1, 1, '60.00', 0, '2024-01-02 09:14:13', '2024-01-02 09:14:13'),
(29, 59, '1', NULL, 1, '50.00', 0, '2024-01-06 22:54:29', '2024-01-06 22:54:29'),
(30, 62, '1', 2, 1, '65.00', 0, '2024-01-07 09:50:39', '2024-01-07 09:50:39'),
(31, 77, '1', 1, 1, '60.00', 0, '2024-01-27 02:45:07', '2024-01-27 02:45:07'),
(32, 78, '1', NULL, 1, '50.00', 0, '2024-01-27 02:53:37', '2024-01-27 02:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `order_services`
--

CREATE TABLE `order_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_services`
--

INSERT INTO `order_services` (`id`, `name`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Basic', '50', 1, '2023-11-14 21:01:39', '2023-12-01 04:23:54'),
(2, 'Advanced', '100', 1, '2023-11-14 21:01:55', '2023-12-01 04:24:02');

-- --------------------------------------------------------

--
-- Table structure for table `order_service_note`
--

CREATE TABLE `order_service_note` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `order_service_id` bigint(20) UNSIGNED NOT NULL,
  `order_service_time_id` bigint(20) UNSIGNED DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_service_note`
--

INSERT INTO `order_service_note` (`id`, `order_id`, `order_service_id`, `order_service_time_id`, `notes`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 'zzzzzz', '2023-11-14 22:16:57', '2023-11-14 22:16:57'),
(2, 3, 1, 1, 'aaaaaaaa', '2023-11-14 22:19:07', '2023-11-14 22:19:07'),
(3, 4, 1, 2, 'aaaaaaaa', '2023-11-14 22:48:24', '2023-11-14 22:48:24'),
(4, 5, 1, 1, 'qqqqqqqqqqq', '2023-11-17 11:28:07', '2023-11-17 11:28:07'),
(5, 40, 1, NULL, 'xcvxcvxc', '2023-12-01 04:24:33', '2023-12-01 04:24:33'),
(6, 40, 1, NULL, 'dsfvxcv', '2023-12-01 04:25:08', '2023-12-01 04:25:08'),
(7, 41, 1, NULL, 'rgdfg', '2023-12-01 04:27:31', '2023-12-01 04:27:31'),
(8, 42, 1, NULL, 'dfghgh', '2023-12-01 04:28:12', '2023-12-01 04:28:12'),
(9, 42, 1, NULL, 'sdgfdfgdf', '2023-12-01 04:29:56', '2023-12-01 04:29:56'),
(10, 43, 1, NULL, 'dfvbcvb', '2023-12-01 04:30:46', '2023-12-01 04:30:46'),
(11, 37, 1, NULL, 'gffghgfh', '2023-12-01 04:32:02', '2023-12-01 04:32:02'),
(12, 51, 1, NULL, 'fghfgh', '2023-12-01 05:02:26', '2023-12-01 05:02:26'),
(13, 3, 1, 1, 'adsadasdasd', '2024-01-01 21:12:02', '2024-01-01 21:12:02'),
(14, 3, 1, 1, 'شسيشسي', '2024-01-01 21:13:55', '2024-01-01 21:13:55'),
(15, 3, 1, NULL, 'شسيشس', '2024-01-01 21:14:52', '2024-01-01 21:14:52'),
(16, 3, 1, NULL, 'شسيشس', '2024-01-01 21:15:16', '2024-01-01 21:15:16'),
(17, 3, 1, 1, 'شسيشسي', '2024-01-01 21:16:55', '2024-01-01 21:16:55'),
(18, 3, 1, NULL, 'شسيسشيشس', '2024-01-01 21:17:40', '2024-01-01 21:17:40'),
(19, 3, 1, NULL, 'ءئ~ْ', '2024-01-01 21:22:25', '2024-01-01 21:22:25'),
(20, 3, 1, NULL, '~ْْ~', '2024-01-01 21:23:05', '2024-01-01 21:23:05'),
(21, 3, 1, NULL, 'ةةىةى', '2024-01-01 21:23:41', '2024-01-01 21:23:41'),
(22, 3, 1, NULL, 'asd', '2024-01-01 21:36:06', '2024-01-01 21:36:06'),
(23, 3, 1, NULL, 'dasda', '2024-01-01 21:36:53', '2024-01-01 21:36:53'),
(24, 53, 1, 1, 'ccccccccc', '2024-01-02 08:49:03', '2024-01-02 08:49:03'),
(25, 53, 1, 1, 'cccccccc', '2024-01-02 09:11:03', '2024-01-02 09:11:03'),
(26, 53, 1, 1, 'dddddddd', '2024-01-02 09:12:12', '2024-01-02 09:12:12'),
(27, 53, 1, 1, 'dddddddd', '2024-01-02 09:12:38', '2024-01-02 09:12:38'),
(28, 54, 1, 1, 'llllllllll', '2024-01-02 09:14:13', '2024-01-02 09:14:13'),
(29, 59, 1, NULL, 'dgfdfg', '2024-01-06 22:54:29', '2024-01-06 22:54:29'),
(30, 62, 1, 2, 'dddddddd', '2024-01-07 09:50:39', '2024-01-07 09:50:39'),
(31, 77, 1, 1, 'cvgbcvb', '2024-01-27 02:45:07', '2024-01-27 02:45:07'),
(32, 78, 1, NULL, 'dgfyhtfh', '2024-01-27 02:53:37', '2024-01-27 02:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `order_service_times`
--

CREATE TABLE `order_service_times` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `notes` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_service_times`
--

INSERT INTO `order_service_times` (`id`, `name`, `notes`, `status`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Time 1 $10', 'Notes for Time 1', 1, 10, NULL, NULL),
(2, 'Time 2', 'Notes for Time 2', 1, 15, NULL, NULL),
(3, 'Time 3', 'Notes for Time 3', 1, 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `notes` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `service_id`, `name`, `notes`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Derick Rogahn', 'Et qui aut in. Voluptatem dolores dolores minima ut sapiente sit cum voluptatem. Nam dolorem voluptatem omnis.', 0, '2023-11-14 19:04:29', '2023-11-14 19:04:29'),
(2, 1, 'Mr. Darius Pouros', 'Odio facilis quis minima. Dicta aut id aut sit. Architecto odio et assumenda distinctio beatae.', 1, '2023-11-14 19:04:29', '2023-11-14 19:04:29');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-11-14 20:19:58', '2023-11-14 20:19:58'),
(2, 1, '2023-11-14 20:20:07', '2023-11-14 20:20:07'),
(3, 1, '2023-11-14 20:20:16', '2023-11-14 20:20:16'),
(4, 1, '2023-11-14 20:20:27', '2023-11-14 20:20:27'),
(5, 1, '2023-11-14 20:20:41', '2023-11-14 20:20:41'),
(6, 1, '2023-11-14 20:20:52', '2023-11-14 20:20:52'),
(7, 1, '2023-11-14 20:21:04', '2023-11-14 20:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `name`, `status`, `price`, `created_at`, `updated_at`) VALUES
(4, 'Simple Retouch', 1, '5', '2023-11-26 23:10:58', '2023-11-26 23:10:58'),
(5, 'Basic Retouch', 1, '10', '2023-11-26 23:11:57', '2023-11-26 23:11:57'),
(6, 'Medium Retouch', 1, '15', '2023-11-26 23:12:39', '2023-11-26 23:12:39'),
(7, 'Advanced Retouch', 1, '20', '2023-11-26 23:13:09', '2023-11-26 23:13:09');

-- --------------------------------------------------------

--
-- Table structure for table `price_advantages`
--

CREATE TABLE `price_advantages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price_id` bigint(20) UNSIGNED DEFAULT NULL,
  `advantage_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `price_advantages`
--

INSERT INTO `price_advantages` (`id`, `price_id`, `advantage_id`, `created_at`, `updated_at`) VALUES
(5, 4, 4, NULL, NULL),
(6, 4, 5, NULL, NULL),
(7, 5, 4, NULL, NULL),
(8, 5, 5, NULL, NULL),
(9, 5, 6, NULL, NULL),
(10, 6, 4, NULL, NULL),
(11, 6, 5, NULL, NULL),
(12, 6, 6, NULL, NULL),
(13, 6, 7, NULL, NULL),
(14, 7, 4, NULL, NULL),
(15, 7, 5, NULL, NULL),
(16, 7, 6, NULL, NULL),
(17, 7, 7, NULL, NULL),
(18, 7, 8, NULL, NULL),
(19, 7, 9, NULL, NULL),
(20, 7, 10, NULL, NULL),
(21, 7, 11, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `privacies`
--

CREATE TABLE `privacies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacies`
--

INSERT INTO `privacies` (`id`, `name`, `note`, `created_at`, `updated_at`) VALUES
(1, 'Privacy Policy', 'The privacy of our clients is important to us.\r\nWe recognize that privacy of your personal information is important. Here is information on what types of personal information we receive and collect when you use and visit our site, and how we safeguard your information. We never sell your personal information to third parties.', '2023-11-30 13:17:28', '2023-11-30 13:17:28'),
(2, 'Terms', 'artisticretouch.com strives to achieve customer satisfaction. To achieve this, artisticretouch.com allows its customers the ability to preview a photo before they pay to a maximum of three pictures. In an effort to reduce fraudulent and/or misleading transactions, Upon receipt of payment, we will send images directly back to you without a watermark.', '2023-11-30 13:17:44', '2023-11-30 13:17:44'),
(3, 'Copyright', 'We respect copyright laws, by sending us a digital image you certify that you own the copyright, also we do not retain any copyright to images submitted by clients, you keep the copyright so you can legally make as many prints of our work as you want for no charge.', '2023-11-30 13:18:02', '2023-11-30 13:18:02'),
(4, 'Photos', 'All the pictures submitted to us by our clients will never be used or shared with a third party. We also will not use any photos on our website without permission.\r\nWe archive your photos on our computers for a year in case your completed order is misplaced. Simply request us to send your order again. Please let us know if you prefer that we delete the photos from our archives after completing your order.', '2023-11-30 13:18:17', '2023-11-30 13:18:17'),
(5, 'Order', 'In order to make order in artisticretouch.com we will require you to supply your name, Email addresses are collected solely for the purpose of sending notifications of accepted payments and processed orders, We have the right to re-evaluate the order price.', '2023-11-30 13:18:33', '2023-11-30 13:18:33'),
(6, 'Refund policy', 'In the event of customer dissatisfaction, we will revise the same photos for free according to customer’s initial instructions, but there will be no refund the cost of your order.', '2023-11-30 13:18:50', '2023-11-30 13:18:50'),
(7, 'Photos', 'Credit card information is used by 2checkout.com an authorized dealer of the services provided by of artisticretouch.com solely for the purpose of payment processing. Neither artisticretouch.com nor 2checkout.com retains record of credit card details.', '2023-11-30 13:19:07', '2023-11-30 13:19:07');

-- --------------------------------------------------------

--
-- Table structure for table `retouches`
--

CREATE TABLE `retouches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `retouch_service_id` bigint(20) UNSIGNED NOT NULL,
  `retouching_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `retouches`
--

INSERT INTO `retouches` (`id`, `user_id`, `retouch_service_id`, `retouching_note`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 'cz', '2023-11-14 21:34:05', '2024-01-07 10:02:25');

-- --------------------------------------------------------

--
-- Table structure for table `retouch_services`
--

CREATE TABLE `retouch_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `retouch_services`
--

INSERT INTO `retouch_services` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Slight', 1, '2023-11-14 21:02:26', '2023-11-14 21:02:26'),
(2, 'Med', 1, '2023-11-14 21:02:40', '2023-11-14 21:02:40'),
(3, 'Heavy', 1, '2023-11-14 21:02:55', '2023-11-14 21:02:55');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `notes` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `notes`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dennis Quitzon', 'Illum fuga non laboriosam officiis. Laudantium ut dolorem est mollitia in ut aut.', 1, '2023-11-14 19:04:28', '2023-11-14 19:04:28'),
(2, 'Rosa Kessler', 'Aut rerum sed harum accusantium corporis et sed. Similique harum accusamus sint rerum mollitia.', 1, '2023-11-14 19:04:28', '2023-11-14 19:04:28');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `price` text NOT NULL,
  `notes` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `price`, `notes`, `status`, `created_at`, `updated_at`, `url`) VALUES
(1, 'Hayley Jacobi I', '57', 'Laborum voluptas accusantium qui nihil assumenda. Impedit quia aliquam repellendus et distinctio ipsam. Excepturi numquam dolores asperiores tempora impedit asperiores.', 1, '2023-11-14 19:04:29', '2023-11-14 19:04:29', ''),
(2, 'Mack Grant III', '32', 'Animi eius dolorum aut minima asperiores quaerat. Explicabo omnis dicta at alias excepturi consequuntur. Distinctio doloribus animi officia deleniti. Eum cum quasi nihil nemo velit consequuntur aperiam.', 1, '2023-11-14 19:04:29', '2023-11-14 19:04:29', NULL),
(3, 'Brando Carroll MD', '51', 'Incidunt et ab rem nihil et aliquid. Assumenda voluptas dolores consequatur culpa reprehenderit id. Qui autem sed placeat. Ut vitae architecto consequuntur omnis qui.', 1, '2023-11-14 19:04:29', '2023-11-14 19:04:29', NULL),
(4, 'Dr. Joanie Orn Sr.', '12', 'Pariatur eveniet quae fugiat. Veniam repellendus error tempora aliquid deleniti ea aut. Id hic officiis suscipit quibusdam sapiente. Asperiores nihil voluptatem cumque temporibus.', 1, '2023-11-14 19:04:29', '2023-11-14 19:04:29', NULL),
(5, 'Jeanie Senger', '14', 'Dolor nesciunt consequuntur tempore sint repellendus. Nihil soluta eligendi sed ut nemo. Earum dolores id iste tempora laboriosam soluta necessitatibus. Dolores distinctio distinctio et consectetur nam provident omnis.', 1, '2023-11-14 19:04:29', '2023-11-14 19:04:29', NULL),
(6, 'Kaleigh Mann MD', '26', 'Eveniet itaque maxime consequatur. Perferendis natus commodi porro eos voluptas. Velit eaque qui minima quibusdam. Consequatur suscipit earum ut aperiam aut et suscipit. Itaque quos maiores dignissimos est rerum quia porro.', 1, '2023-11-14 19:04:29', '2023-11-14 19:04:29', NULL),
(7, 'Napol', '39', 'Blanditiis autem ad vitae voluptas nesciunt. Nam incidunt deserunt magni aliquam et. Eum omnis veniam et fugit vitae magni. Pariatur ipsa dolorum reiciendis consequatur repellendus iusto ut id.', 1, '2023-11-14 19:04:29', '2023-11-14 20:40:58', NULL),
(8, 'Mr. Joh', '34', 'Nesciunt rerum debitis magni aut. Sed qui dolorum omnis aspernatur et ut. Est rerum nisi est error quo earum. Debitis vel sunt minus impedit nesciunt laudantium dolores.', 1, '2023-11-14 19:04:29', '2023-12-01 03:28:02', 'photo.tag-soft.com/client/free-orders');

-- --------------------------------------------------------

--
-- Table structure for table `service_image`
--

CREATE TABLE `service_image` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `order_service_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `type` enum('main','referance') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_image`
--

INSERT INTO `service_image` (`id`, `order_id`, `order_service_id`, `image_path`, `type`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Normal User/6862478/Basic/Basic_yASvxDLGTOlZdmnHzjWrmKlvKVOZinFcKZ9AtHTA.png', 'main', '2023-11-14 22:16:57', '2023-11-14 22:16:57'),
(2, 3, 1, 'Normal User/8373993/Basic/Basic_C695JAZZSr9tuioOBRawnb6PSEzxewGpFHYm0EEw.png', 'main', '2023-11-14 22:19:07', '2023-11-14 22:19:07'),
(3, 4, 1, 'Normal User/3467715/Basic/Basic_1z2czF8NM3SYdVQ6ZhB8pBxXgajTaaQl9kSoVm9I.txt', 'main', '2023-11-14 22:48:24', '2023-11-14 22:48:24'),
(4, 5, 1, 'Normal User/7327171/Basic/Basic_RthSUlfuBjCzIdIhxWCI1Gu5RTxFDek4ghmOrsQX.jpg', 'main', '2023-11-17 11:28:07', '2023-11-17 11:28:07'),
(5, 40, 1, 'Admin/8035857/Basic/Basic_M3DcHNuid6jdMuL7Nz93OHAavrFhfwdQv4USJQKZ.jpg', 'main', '2023-12-01 04:24:33', '2023-12-01 04:24:33'),
(6, 40, 1, 'Admin/8035857/Basic/Basic_R1lSFPbxzwdCrqjBDcp1QKN5jECfSubFmgzAZPF7.jpg', 'main', '2023-12-01 04:25:08', '2023-12-01 04:25:08'),
(7, 40, 1, 'Admin/8035857/Basic/Basic_axhrFEyijBKkU37TbsYLUVBagTc3SYD3fQIi9TFK.jpg', 'main', '2023-12-01 04:25:08', '2023-12-01 04:25:08'),
(8, 40, 1, 'Admin/8035857/Basic/Basic_85PJsIsXg3d1pb3oReiIUmwxNMsWT0GknvP2uSVN.jpg', 'main', '2023-12-01 04:25:08', '2023-12-01 04:25:08'),
(9, 41, 1, 'Admin/6656797/Basic/Basic_GBLAMXMHNl2k2yIPmBC7nixRCCJaoqR7Y1MMo9gh.jpg', 'main', '2023-12-01 04:27:31', '2023-12-01 04:27:31'),
(10, 42, 1, 'Admin/5610853/Basic/Basic_NsPjyuoBnpjsBo47SQ7V24r7PPrzBw9Yl0kAJTtW.jpg', 'main', '2023-12-01 04:28:12', '2023-12-01 04:28:12'),
(11, 42, 1, 'Admin/5610853/Basic/Basic_Zo9YIHVVyFD7CpCpOJjVhiBpaX3N1uxSspxPcDpJ.jpg', 'main', '2023-12-01 04:29:56', '2023-12-01 04:29:56'),
(12, 43, 1, 'Admin/5103512/Basic/Basic_b8enbLV3FqxzyfZtFW9isUdJhNFO5Kop4EbADQhh.jpg', 'main', '2023-12-01 04:30:46', '2023-12-01 04:30:46'),
(13, 37, 1, 'Admin/2974618/Basic/Basic_bh6MEKWebYsAZj8JnbbVPKwkhj2qqTFjmwgoQIDX.jpg', 'main', '2023-12-01 04:32:02', '2023-12-01 04:32:02'),
(14, 51, 1, 'Normal User/8563247/Basic/Basic_YRILlUoiXLWrulJJR9mfFZlTfdBPuAiN9DgsvW7j.jpg', 'main', '2023-12-01 05:02:26', '2023-12-01 05:02:26'),
(15, 3, 1, 'Normal User/8373993/Basic/Basic_mSA0l9cLfofK3K2hvKXOwT66HPHHGXMp5BdPVyjS.jpg', 'main', '2024-01-01 21:12:02', '2024-01-01 21:12:02'),
(16, 3, 1, 'Normal User/8373993/Basic/Basic_soaBIjhAm3XbtXJ0HvoYjT9UuW6D9yPukYggZGKL.jpg', 'main', '2024-01-01 21:12:02', '2024-01-01 21:12:02'),
(17, 3, 1, 'Normal User/8373993/Basic/Basic_leeEP2y5h9vAJV1FB2Jna4O9WQczoLq1anqMdyTf.jpg', 'main', '2024-01-01 21:13:55', '2024-01-01 21:13:55'),
(18, 3, 1, 'Normal User/8373993/Basic/Basic_p1N86ukvCrbmZraU3CqewYi2if3f7Dqhc9mjzFOT.jpg', 'main', '2024-01-01 21:13:55', '2024-01-01 21:13:55'),
(19, 3, 1, 'Normal User/8373993/Basic/Basic_y1KJ7YEulNDqoTOaXxekluyXCCl1r5BWzg7QmD3Q.jpg', 'main', '2024-01-01 21:14:52', '2024-01-01 21:14:52'),
(20, 3, 1, 'Normal User/8373993/Basic/Basic_HVFrpivPhetpsZpLwyYAsUHoIL9Lr57g4dbdghRK.jpg', 'main', '2024-01-01 21:14:52', '2024-01-01 21:14:52'),
(21, 3, 1, 'Normal User/8373993/Basic/Basic_qxnSo8W27BH910vFAakUxBWI4L2txOiksWKQhfDX.jpg', 'main', '2024-01-01 21:15:16', '2024-01-01 21:15:16'),
(22, 3, 1, 'Normal User/8373993/Basic/Basic_LxrMGSlPxe0QnX8vOoNGd8hEK9I07e3WxM4VgHZC.jpg', 'main', '2024-01-01 21:15:16', '2024-01-01 21:15:16'),
(23, 3, 1, 'Normal User/8373993/Basic/Basic_NG6QNc9qeVK0RU6j7La08LkuNZGt4xBRim5TPwfs.jpg', 'main', '2024-01-01 21:16:55', '2024-01-01 21:16:55'),
(24, 3, 1, 'Normal User/8373993/Basic/Basic_6EhXVxDCvdclDDecdFUKuR5Ree4tH4iE9zqSbCyy.jpg', 'main', '2024-01-01 21:16:55', '2024-01-01 21:16:55'),
(25, 3, 1, 'Normal User/8373993/Basic/Basic_n5MBN0vKV2sx9HNY4HXIVs2pFd0A7FQ6iQA2IaYG.jpg', 'main', '2024-01-01 21:17:40', '2024-01-01 21:17:40'),
(26, 3, 1, 'Normal User/8373993/Basic/Basic_Mwie23MV1W8XolgSpXcSO5lksSX49T5FybiVPOnR.jpg', 'main', '2024-01-01 21:17:40', '2024-01-01 21:17:40'),
(27, 3, 1, 'Normal User/8373993/Basic/Basic_pqVpBnPDh0wbNwAScBkyYRwCtiw0dtT7DcIpdWAT.jpg', 'main', '2024-01-01 21:22:25', '2024-01-01 21:22:25'),
(28, 3, 1, 'Normal User/8373993/Basic/Basic_9twYJVqkedeiJ0EEgfuTzT3FIHApUsWrCmLT4mHw.jpg', 'main', '2024-01-01 21:23:05', '2024-01-01 21:23:05'),
(29, 3, 1, 'Normal User/8373993/Basic/Basic_nRbyTBWnRDeQxWLzt22TldWQCQ8xkuWZ32vIQoFh.jpg', 'main', '2024-01-01 21:23:05', '2024-01-01 21:23:05'),
(30, 3, 1, 'Normal User/8373993/Basic/Basic_OVltyNBVyd3tFtuJWSbgegqe2ySUPo2IPjWjq0vi.jpg', 'main', '2024-01-01 21:23:41', '2024-01-01 21:23:41'),
(31, 3, 1, 'Normal User/8373993/Basic/Basic_BoscvJIKtWBSF0xi6OL7wOFrXGCzcIEPurioeIzI.jpg', 'main', '2024-01-01 21:23:41', '2024-01-01 21:23:41'),
(32, 3, 1, 'Normal User/8373993/Basic/Basic_Ruyf3nsnoEFEESp5MFfp1Pz3AtFQTIvHcZeBQW1P.jpg', 'main', '2024-01-01 21:36:06', '2024-01-01 21:36:06'),
(33, 3, 1, 'Normal User/8373993/Basic/Basic_u9Tg1LinLt4RqZHNN2RZNhLZTKQg2Jxomgd4mSQO.jpg', 'main', '2024-01-01 21:36:06', '2024-01-01 21:36:06'),
(34, 3, 1, 'Normal User/8373993/Basic/Basic_mnUihYzdctAwSQok11P2KlIDQhXQjHgKNuKfXDR9.jpg', 'main', '2024-01-01 21:36:53', '2024-01-01 21:36:53'),
(35, 3, 1, 'Normal User/8373993/Basic/Basic_zbpE4LC82g8FYkdm07n4nchcumJUo0hGmPHEOru9.jpg', 'main', '2024-01-01 21:36:53', '2024-01-01 21:36:53'),
(36, 53, 1, 'Normal User/9161371/Basic/Basic_IZ2kvj91Y0SGj11utOqXKruHqNSX7kURXnB0LMNz.png', 'main', '2024-01-02 08:49:03', '2024-01-02 08:49:03'),
(37, 53, 1, 'Normal User/9161371/Basic/Basic_reference_Y9S73JBj5dxxSgvmrj1LYRRrKqZMd8ZMMZO44XJ6.png', 'referance', '2024-01-02 08:49:03', '2024-01-02 08:49:03'),
(38, 53, 1, 'Normal User/9161371/Basic/Basic_c4KkTr6FKgjKaWph9n2MspZhUVVeEedRuLY08mSb.png', 'main', '2024-01-02 09:11:03', '2024-01-02 09:11:03'),
(39, 53, 1, 'Normal User/9161371/Basic/Basic_NOErFEaGag7PU6yIPkAA47cCYPswTXTlAo7qn1rW.png', 'main', '2024-01-02 09:12:12', '2024-01-02 09:12:12'),
(40, 53, 1, 'Normal User/9161371/Basic/Basic_ROi3TPInWhS1OMBUGKVIEcNiqYK7LqTsWmvnk0Dr.png', 'main', '2024-01-02 09:12:38', '2024-01-02 09:12:38'),
(41, 54, 1, 'Normal User/5786923/Basic/Basic_2ko6GqqmBRogmhCtx6WnUZB3TSYfh8hKaOJo4oqH.png', 'main', '2024-01-02 09:14:13', '2024-01-02 09:14:13'),
(42, 59, 1, 'Normal User/2405947/Basic/Basic_SO6sJwe2w5BlJVFZwBINh4Zb2qehfOFBB5VaxaeU.jpg', 'main', '2024-01-06 22:54:29', '2024-01-06 22:54:29'),
(43, 62, 1, 'Normal User/8581950/Basic/Basic_m8JxF7OFiPOHRVGFV4DkW3E7XgUuasOWM90lu6FX.jpg', 'main', '2024-01-07 09:50:39', '2024-01-07 09:50:39'),
(44, 77, 1, 'Normal User/3468616/Basic/2.jpg', 'main', '2024-01-27 02:45:07', '2024-01-27 02:45:07'),
(45, 78, 1, 'Normal User/7049276/Basic/1.jpg', 'main', '2024-01-27 02:53:37', '2024-01-27 02:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `whatsapp` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `instagram` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `notes1` text DEFAULT NULL,
  `notes2` text DEFAULT NULL,
  `notes3` text DEFAULT NULL,
  `notes4` text DEFAULT NULL,
  `notes5` text DEFAULT NULL,
  `notes6` text DEFAULT NULL,
  `notes7` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `phone`, `whatsapp`, `email`, `facebook`, `twitter`, `instagram`, `notes`, `notes1`, `notes2`, `notes3`, `notes4`, `notes5`, `notes6`, `notes7`, `created_at`, `updated_at`) VALUES
(1, 'Gerald Wilkinson', '1-586-531-8361', '+1 (424) 888-0848', 'hane.gunnar@hotmail.com', 'http://www.predovic.com/qui-corporis-officia-ullam-est-autem-voluptas.html', 'http://www.hoeger.com/tenetur-voluptas-sunt-labore-laborum-modi-est', 'http://mraz.org/laudantium-unde-qui-est-mollitia-ratione-ipsum-cum', 'Nihil hic saepe velit optio temporibus. Maxime atque accusamus officiis aut sed voluptas ut. Voluptatem error adipisci et nam.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-14 19:04:27', '2023-11-14 19:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `notes` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `notes`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Aisha Krajcik', 'Id nisi repellat sapiente nesciunt. Voluptas distinctio est enim sit et quo blanditiis neque. Sint eligendi possimus quis est quaerat qui.', 1, '2023-11-14 19:04:28', '2023-11-14 20:42:22'),
(2, 'Adrienne Hand', 'Consectetur aut ullam adipisci neque non. Earum aliquid consequuntur autem voluptas ab est earum. Quaerat animi explicabo quis aut. Sint et sit repellendus natus nulla.', 1, '2023-11-14 19:04:28', '2023-11-14 20:41:57'),
(3, 'nagyriad', 'Consectetur aut ullam adipisci neque non. Earum aliquid consequuntur autem voluptas ab est earum. Quaerat animi explicabo quis aut. Sint et sit repellendus natus nulla.', 1, '2023-12-01 03:24:15', '2023-12-01 03:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `note1` text DEFAULT NULL,
  `note2` text DEFAULT NULL,
  `note3` text DEFAULT NULL,
  `note4` text DEFAULT NULL,
  `note5` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `name`, `notes`, `status`, `created_at`, `updated_at`, `url`, `note1`, `note2`, `note3`, `note4`, `note5`) VALUES
(2, 'slide', 'Main Gallery note Lorem ipsum dolor sit amet consectetur, adipisicing elit. Facere voluptatibus consequuntur iusto excepturi? Ab qui dolorem consequuntur, sint vitae nam dignissimos, praesentium magnam maiores consectetur nesciunt! Perferendis consequuntur atque suscipit.', 1, '2023-11-14 20:09:25', '2023-11-14 20:27:05', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'slide2', 'slide2 note', 1, '2023-11-14 20:14:55', '2023-11-14 20:14:55', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `name`, `note`, `created_at`, `updated_at`) VALUES
(1, 'Terms of Service', 'The privacy of our clients is important to us.\r\nWe recognize that privacy of your personal information is important. Here is information on what types of personal information we receive and collect when you use and visit our site, and how we safeguard your information. We never sell your personal information to third parties.', '2023-11-30 13:14:03', '2023-11-30 13:14:03'),
(2, 'Terms', 'artisticretouch.com strives to achieve customer satisfaction. To achieve this, artisticretouch.com allows its customers the ability to preview a photo before they pay to a maximum of three pictures. In an effort to reduce fraudulent and/or misleading transactions, Upon receipt of payment, we will send images directly back to you without a watermark', '2023-11-30 13:14:26', '2023-11-30 13:14:26'),
(3, 'Copyright', 'We respect copyright laws, by sending us a digital image you certify that you own the copyright, also we do not retain any copyright to images submitted by clients, you keep the copyright so you can legally make as many prints of our work as you want for no charge.', '2023-11-30 13:14:43', '2023-11-30 13:14:43'),
(4, 'Photos', 'All the pictures submitted to us by our clients will never be used or shared with a third party. We also will not use any photos on our website without permission.\r\nWe archive your photos on our computers for a year in case your completed order is misplaced. Simply request us to send your order again. Please let us know if you prefer that we delete the photos from our archives after completing your order.', '2023-11-30 13:15:07', '2023-11-30 13:15:07'),
(5, 'Order', 'In order to make order in artisticretouch.com we will require you to supply your name, Email addresses are collected solely for the purpose of sending notifications of accepted payments and processed orders, We have the right to re-evaluate the order price.', '2023-11-30 13:15:57', '2023-11-30 13:15:57'),
(6, 'Refund policy', 'In the event of customer dissatisfaction, we will revise the same photos for free according to customer’s initial instructions, but there will be no refund the cost of your order', '2023-11-30 13:16:13', '2023-11-30 13:16:13'),
(7, 'Photos', 'Credit card information is used by 2checkout.com an authorized dealer of the services provided by of artisticretouch.com solely for the purpose of payment processing. Neither artisticretouch.com nor 2checkout.com retains record of credit card details.', '2023-11-30 13:16:31', '2023-11-30 13:16:31');

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

CREATE TABLE `tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` enum('image','video') DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` enum('1','2','3','4') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`id`, `name`, `type`, `image`, `link`, `created_at`, `updated_at`, `order`) VALUES
(18, 'Step 1: Click order page and enter required data', 'image', NULL, NULL, '2023-11-30 12:59:33', '2023-11-30 12:59:33', '1'),
(19, 'Step 2: Add your files then copy & paste url link', 'image', NULL, NULL, '2023-11-30 13:04:52', '2023-11-30 13:04:52', '2'),
(20, 'Step 3: Select link & cilck transfer & wait uploading', 'image', NULL, NULL, '2023-11-30 13:07:18', '2023-11-30 13:07:18', '3'),
(21, 'Video tour how to make an order', 'video', NULL, 'https://www.youtube.com/watch?v=YwyPW2x2lUw&t=4s', '2023-11-30 13:08:16', '2023-11-30 13:08:16', '4');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `type` enum('user','general') NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `type`, `status`, `email_verified_at`, `password`, `phone`, `remember_token`, `created_at`, `updated_at`, `website`) VALUES
(1, 'Normal User', 'user@app.com', 'user', 1, NULL, '$2y$10$AVL7zhlFow31.erEJfe73Ofz.OBCDhHbdsInNREBaKqmTsfCAyuDa', NULL, 'EtMD2OG7zCyhPUCaAFLN9l2t81ASMrJni8x9pQM33MjANtV2t61z32z4d0vL', '2023-11-14 19:04:26', '2023-11-14 19:04:26', NULL),
(2, 'General User', 'general@app.com', 'general', 1, NULL, '$2y$10$P3g9hgJY.NU31tJKwMStdOVu8hF2yK5DTcRdjGIZMJcdxDS1Yhpi2', NULL, NULL, '2023-11-14 19:04:26', '2023-11-14 19:04:26', NULL),
(3, 'xxxxxxxxx', 'x@x.com', 'user', 1, NULL, '$2y$10$lWdrKEzt.gf98WP9lu0veOH0BQnUnQU8GooEIlvHUlv8yA1nO3k7y', NULL, NULL, '2023-11-18 12:09:39', '2023-11-18 12:15:07', 'aaaaaa.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `advantages`
--
ALTER TABLE `advantages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_section_id_foreign` (`section_id`);

--
-- Indexes for table `buttons`
--
ALTER TABLE `buttons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_email_unique` (`email`);

--
-- Indexes for table `copyrights`
--
ALTER TABLE `copyrights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `couples`
--
ALTER TABLE `couples`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examples`
--
ALTER TABLE `examples`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `example_images`
--
ALTER TABLE `example_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `example_images_example_id_foreign` (`example_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faqs_question_unique` (`question`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `free_orders`
--
ALTER TABLE `free_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `free_orders_slug_unique` (`slug`),
  ADD UNIQUE KEY `free_orders_phone_unique` (`phone`),
  ADD UNIQUE KEY `free_orders_website_unique` (`website`);

--
-- Indexes for table `free_order_details`
--
ALTER TABLE `free_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `free_order_details_free_order_id_foreign` (`free_order_id`);

--
-- Indexes for table `free_order_service_notes`
--
ALTER TABLE `free_order_service_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `free_order_service_notes_free_order_id_foreign` (`free_order_id`),
  ADD KEY `free_order_service_notes_order_service_id_foreign` (`order_service_id`);

--
-- Indexes for table `free_service_images`
--
ALTER TABLE `free_service_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `free_service_images_free_order_id_foreign` (`free_order_id`),
  ADD KEY `free_service_images_order_service_id_foreign` (`order_service_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_images_gallery_id_foreign` (`gallery_id`);

--
-- Indexes for table `homes`
--
ALTER TABLE `homes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_imageable_type_imageable_id_index` (`imageable_type`,`imageable_id`);

--
-- Indexes for table `img_extensions`
--
ALTER TABLE `img_extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_slug_unique` (`slug`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_retouch_id_foreign` (`retouch_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`);

--
-- Indexes for table `order_services`
--
ALTER TABLE `order_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_service_note`
--
ALTER TABLE `order_service_note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_service_note_order_id_foreign` (`order_id`),
  ADD KEY `order_service_note_order_service_id_foreign` (`order_service_id`),
  ADD KEY `order_service_note_order_service_time_id_foreign` (`order_service_time_id`);

--
-- Indexes for table `order_service_times`
--
ALTER TABLE `order_service_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `packages_service_id_foreign` (`service_id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price_advantages`
--
ALTER TABLE `price_advantages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `price_advantages_price_id_foreign` (`price_id`),
  ADD KEY `price_advantages_advantage_id_foreign` (`advantage_id`);

--
-- Indexes for table `privacies`
--
ALTER TABLE `privacies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `retouches`
--
ALTER TABLE `retouches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `retouches_user_id_foreign` (`user_id`),
  ADD KEY `retouches_retouch_service_id_foreign` (`retouch_service_id`);

--
-- Indexes for table `retouch_services`
--
ALTER TABLE `retouch_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_image`
--
ALTER TABLE `service_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_image_order_id_foreign` (`order_id`),
  ADD KEY `service_image_order_service_id_foreign` (`order_service_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advantages`
--
ALTER TABLE `advantages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `buttons`
--
ALTER TABLE `buttons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `copyrights`
--
ALTER TABLE `copyrights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `couples`
--
ALTER TABLE `couples`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `examples`
--
ALTER TABLE `examples`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `example_images`
--
ALTER TABLE `example_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `free_orders`
--
ALTER TABLE `free_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `free_order_details`
--
ALTER TABLE `free_order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `free_order_service_notes`
--
ALTER TABLE `free_order_service_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `free_service_images`
--
ALTER TABLE `free_service_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery_images`
--
ALTER TABLE `gallery_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `homes`
--
ALTER TABLE `homes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `img_extensions`
--
ALTER TABLE `img_extensions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `order_services`
--
ALTER TABLE `order_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_service_note`
--
ALTER TABLE `order_service_note`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `order_service_times`
--
ALTER TABLE `order_service_times`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `price_advantages`
--
ALTER TABLE `price_advantages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `privacies`
--
ALTER TABLE `privacies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `retouches`
--
ALTER TABLE `retouches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `retouch_services`
--
ALTER TABLE `retouch_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `service_image`
--
ALTER TABLE `service_image`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `example_images`
--
ALTER TABLE `example_images`
  ADD CONSTRAINT `example_images_example_id_foreign` FOREIGN KEY (`example_id`) REFERENCES `examples` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `free_order_details`
--
ALTER TABLE `free_order_details`
  ADD CONSTRAINT `free_order_details_free_order_id_foreign` FOREIGN KEY (`free_order_id`) REFERENCES `free_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `free_order_service_notes`
--
ALTER TABLE `free_order_service_notes`
  ADD CONSTRAINT `free_order_service_notes_free_order_id_foreign` FOREIGN KEY (`free_order_id`) REFERENCES `free_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `free_order_service_notes_order_service_id_foreign` FOREIGN KEY (`order_service_id`) REFERENCES `order_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `free_service_images`
--
ALTER TABLE `free_service_images`
  ADD CONSTRAINT `free_service_images_free_order_id_foreign` FOREIGN KEY (`free_order_id`) REFERENCES `free_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `free_service_images_order_service_id_foreign` FOREIGN KEY (`order_service_id`) REFERENCES `order_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD CONSTRAINT `gallery_images_gallery_id_foreign` FOREIGN KEY (`gallery_id`) REFERENCES `galleries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_retouch_id_foreign` FOREIGN KEY (`retouch_id`) REFERENCES `retouches` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_service_note`
--
ALTER TABLE `order_service_note`
  ADD CONSTRAINT `order_service_note_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_service_note_order_service_id_foreign` FOREIGN KEY (`order_service_id`) REFERENCES `order_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_service_note_order_service_time_id_foreign` FOREIGN KEY (`order_service_time_id`) REFERENCES `order_service_times` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `packages`
--
ALTER TABLE `packages`
  ADD CONSTRAINT `packages_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `price_advantages`
--
ALTER TABLE `price_advantages`
  ADD CONSTRAINT `price_advantages_advantage_id_foreign` FOREIGN KEY (`advantage_id`) REFERENCES `advantages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `price_advantages_price_id_foreign` FOREIGN KEY (`price_id`) REFERENCES `prices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `retouches`
--
ALTER TABLE `retouches`
  ADD CONSTRAINT `retouches_retouch_service_id_foreign` FOREIGN KEY (`retouch_service_id`) REFERENCES `retouch_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `retouches_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_image`
--
ALTER TABLE `service_image`
  ADD CONSTRAINT `service_image_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `service_image_order_service_id_foreign` FOREIGN KEY (`order_service_id`) REFERENCES `order_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
