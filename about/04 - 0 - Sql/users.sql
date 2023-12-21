-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 21 Ara 2023, 11:01:25
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
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `surname` text DEFAULT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `img_url` text DEFAULT NULL,
  `departman` text DEFAULT NULL,
  `role` text DEFAULT NULL,
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
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `password`, `img_url`, `departman`, `role`, `created_at`, `created_byId`, `isUpdated`, `updated_at`, `updated_byId`, `isActive`, `isDeleted`, `deleted_at`, `deleted_byId`) VALUES
(1, 'Userx', 'Surname', 'user@gmail.com', '123', '/assets/img/user/default.jpg', 'Müdür', 'admin', '2023-11-03 11:56:46', 1, 1, '2023-11-07 13:26:55', 1, 1, 0, NULL, NULL),
(2, 'Test_Name', 'Test_Surname', 'test@test.com', '123', '/assets/img/user/default.jpg', 'Kullanıcı', 'user', '2023-11-03 11:56:46', NULL, 0, NULL, NULL, 0, 0, NULL, NULL),
(3, 'Name', 'Surname', 'name@gmail.com', '123', '/assets/img/user/default.jpg', 'SEO', 'superAdmin', '2023-11-03 11:56:46', NULL, 0, NULL, NULL, 1, 0, NULL, NULL),
(4, 'name güncelleme', 'surname güncelleme', 'test2@test.com', '123', '/assets/img/user/default.jpg', 'Müşteri', 'user', '2023-11-03 11:56:46', NULL, 1, '2023-12-17 12:21:11', 5, 1, 0, NULL, NULL),
(5, 'name güncelleme', 'surname güncelleme', 'test@gmail.com', '123', '/assets/img/user/default.jpg', 'Müşteri', 'user', '2023-11-03 11:56:46', NULL, 1, '2023-12-17 09:07:19', 5, 1, 0, NULL, NULL),
(10, 'name add', 'surname add', 'test@gmail.com1', '123', NULL, NULL, NULL, '2023-12-17 09:22:54', 1, 1, '2023-12-17 12:24:44', 10, 0, 1, '2023-12-17 12:24:44', 10),
(11, 'Enes', 'Yıldırım', 'user1@gmail.com', '1233', NULL, NULL, NULL, '2023-12-20 10:06:48', NULL, 0, NULL, NULL, 1, 0, NULL, NULL),
(12, 'Enes', 'Yıldırım', 'user2@gmail.com', '1233', NULL, NULL, NULL, '2023-12-20 10:08:01', NULL, 0, NULL, NULL, 1, 0, NULL, NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
