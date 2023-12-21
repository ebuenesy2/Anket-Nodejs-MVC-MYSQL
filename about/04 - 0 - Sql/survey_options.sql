-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 21 Ara 2023, 12:30:05
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
-- Tablo için tablo yapısı `survey_options`
--

CREATE TABLE `survey_options` (
  `id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
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
-- Tablo döküm verisi `survey_options`
--

INSERT INTO `survey_options` (`id`, `survey_id`, `title`, `created_at`, `created_byId`, `isUpdated`, `updated_at`, `updated_byId`, `isActive`, `isDeleted`, `deleted_at`, `deleted_byId`) VALUES
(1, 1, 'Seçenek 1', '2023-12-17 21:18:27', 1, 0, NULL, NULL, 1, 0, NULL, NULL),
(2, 2, 'Seçenek 2', '2023-12-17 21:18:39', 1, 1, '2023-12-18 00:58:14', 5, 1, 0, NULL, NULL),
(4, 4, 'Seçenek 1 - 4 ', '2023-12-17 21:58:50', 1, 1, '2023-12-18 07:06:45', 5, 0, 1, '2023-12-18 01:00:08', 10),
(35, 4, 'Seçenek 4 - 2', '2023-12-20 20:57:03', 1, 0, NULL, NULL, 1, 0, NULL, NULL),
(36, 4, 'Seçenek 4 - 2', '2023-12-21 06:46:26', 1, 0, NULL, NULL, 1, 0, NULL, NULL),
(37, 4, 'Seçenek 4 - 2', '2023-12-21 06:49:32', 1, 0, NULL, NULL, 1, 0, NULL, NULL),
(39, 4, 'Seçenek 4 - 2', '2023-12-21 06:50:39', 1, 0, NULL, NULL, 1, 0, NULL, NULL),
(48, 31, 'FB', '2023-12-21 06:55:47', 1, 0, NULL, NULL, 1, 0, NULL, NULL),
(49, 31, 'GS', '2023-12-21 06:55:53', 1, 0, NULL, NULL, 1, 0, NULL, NULL),
(50, 31, 'BJK', '2023-12-21 06:56:01', 1, 0, NULL, NULL, 1, 0, NULL, NULL),
(51, 31, 'Trabzon', '2023-12-21 06:56:15', 1, 0, NULL, NULL, 1, 0, NULL, NULL),
(52, 32, 'test', '2023-12-21 06:57:49', 1, 0, NULL, NULL, 1, 0, NULL, NULL),
(53, 32, 'test1', '2023-12-21 06:57:49', 1, 0, NULL, NULL, 1, 0, NULL, NULL),
(54, 2, 'Seçenek1', '2023-12-21 07:10:42', 1, 0, NULL, NULL, 1, 0, NULL, NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `survey_options`
--
ALTER TABLE `survey_options`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `survey_options`
--
ALTER TABLE `survey_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
