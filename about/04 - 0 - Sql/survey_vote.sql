-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 21 Ara 2023, 12:30:10
-- Sunucu sürümü: 10.3.39-MariaDB
-- PHP Sürümü: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `yildixkn_anket`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `survey_vote`
--

CREATE TABLE `survey_vote` (
  `id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `options_id` int(11) NOT NULL,
  `voter_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_byId` int(11) DEFAULT NULL,
  `isUpdated` int(11) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_byId` int(11) DEFAULT NULL,
  `isActive` int(11) NOT NULL DEFAULT 1,
  `isDeleted` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_byId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `survey_vote`
--

INSERT INTO `survey_vote` (`id`, `survey_id`, `options_id`, `voter_id`, `created_at`, `created_byId`, `isUpdated`, `updated_at`, `updated_byId`, `isActive`, `isDeleted`, `deleted_at`, `deleted_byId`) VALUES
(2, 4, 4, 2, '2023-12-17 21:18:39', 1, 1, '2023-12-18 00:58:14', 5, 1, 0, NULL, NULL),
(20, 31, 32, 1, '2023-12-20 21:00:25', 1, 0, NULL, NULL, 1, 0, NULL, NULL),
(21, 31, 34, 1, '2023-12-20 21:00:36', 1, 0, NULL, NULL, 1, 0, NULL, NULL),
(22, 31, 34, 1, '2023-12-20 21:00:42', 1, 0, NULL, NULL, 1, 0, NULL, NULL),
(23, 31, 50, 1, '2023-12-21 06:57:01', 1, 0, NULL, NULL, 1, 0, NULL, NULL),
(24, 31, 49, 1, '2023-12-21 07:01:11', 1, 0, NULL, NULL, 1, 0, NULL, NULL),
(25, 31, 48, 1, '2023-12-21 07:07:47', 1, 0, NULL, NULL, 1, 0, NULL, NULL),
(26, 31, 50, 1, '2023-12-21 07:07:57', 1, 0, NULL, NULL, 1, 0, NULL, NULL),
(27, 31, 49, 1, '2023-12-21 07:09:55', 1, 0, NULL, NULL, 1, 0, NULL, NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `survey_vote`
--
ALTER TABLE `survey_vote`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `survey_vote`
--
ALTER TABLE `survey_vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
