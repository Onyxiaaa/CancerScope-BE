-- --------------------------------------------------------
-- Host:                         34.50.87.157
-- Server version:               8.0.41-google - (Google)
-- Server OS:                    Linux
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for cloud_computing
CREATE DATABASE IF NOT EXISTS `cloud_computing` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cloud_computing`;

-- Dumping structure for table cloud_computing.predictions
CREATE TABLE IF NOT EXISTS `predictions` (
  `id` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `result` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `explanation` text COLLATE utf8mb4_general_ci,
  `suggestion` text COLLATE utf8mb4_general_ci,
  `confidenceScore` float DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table cloud_computing.predictions: ~14 rows (approximately)
INSERT INTO `predictions` (`id`, `result`, `explanation`, `suggestion`, `confidenceScore`, `createdAt`) VALUES
	('09045194-7023-4980-afa8-26955592f977', 'Vascular lesion', 'Vascular lesion adalah penyakit yang dikategorikan sebagai kanker atau tumor di mana penyakit ini sering muncul pada bagian kepala dan leher.', 'Segera konsultasi dengan dokter terdekat untuk mengetahui detail terkait tingkat bahaya penyakit.', 100, '2025-06-06 17:17:44'),
	('0a76f88c-99ff-49b8-a4b3-d8f32d2dfca1', 'Vascular lesion', 'Vascular lesion adalah penyakit yang dikategorikan sebagai kanker atau tumor di mana penyakit ini sering muncul pada bagian kepala dan leher.', 'Segera konsultasi dengan dokter terdekat untuk mengetahui detail terkait tingkat bahaya penyakit.', 100, '2025-06-08 13:44:18'),
	('1675cd2c-4d9e-482b-9735-7c6610fa945c', 'Vascular lesion', 'Vascular lesion adalah penyakit yang dikategorikan sebagai kanker atau tumor di mana penyakit ini sering muncul pada bagian kepala dan leher.', 'Segera konsultasi dengan dokter terdekat untuk mengetahui detail terkait tingkat bahaya penyakit.', 100, '2025-06-08 13:31:16'),
	('24b5bef0-c09e-4fdf-a384-0c2c89b2c598', 'Melanocytic nevus', 'Melanocytic nevus adalah kondisi di mana permukaan kulit memiliki bercak warna yang berasal dari sel-sel melanosit, yakni pembentukan warna kulit dan rambut.', 'Segera konsultasi dengan dokter terdekat jika ukuran semakin membesar dengan cepat, mudah luka atau berdarah.', 100, '2025-06-06 16:07:17'),
	('2c870c5c-b4ff-47de-b576-17b0edb3445d', 'Melanocytic nevus', 'Melanocytic nevus adalah kondisi di mana permukaan kulit memiliki bercak warna yang berasal dari sel-sel melanosit, yakni pembentukan warna kulit dan rambut.', 'Segera konsultasi dengan dokter terdekat jika ukuran semakin membesar dengan cepat, mudah luka atau berdarah.', 100, '2025-06-06 17:12:22'),
	('45f1c46d-2405-4dd2-acc4-f351aeb0f4ab', 'Squamous cell carcinoma', 'Squamous cell carcinoma adalah jenis kanker kulit yang umum dijumpai. Penyakit ini sering tumbuh pada bagian-bagian tubuh yang sering terkena sinar UV.', 'Segera konsultasi dengan dokter terdekat untuk meminimalisasi penyebaran kanker.', 98.5891, '2025-06-08 13:31:05'),
	('54efd5be-49a9-4cc2-9f22-cbcb3219ac6d', 'Squamous cell carcinoma', 'Squamous cell carcinoma adalah jenis kanker kulit yang umum dijumpai. Penyakit ini sering tumbuh pada bagian-bagian tubuh yang sering terkena sinar UV.', 'Segera konsultasi dengan dokter terdekat untuk meminimalisasi penyebaran kanker.', 98.5891, '2025-06-06 17:21:00'),
	('595d51b9-6561-40b3-ad76-1ae5450d0bf2', 'Squamous cell carcinoma', 'Squamous cell carcinoma adalah jenis kanker kulit yang umum dijumpai. Penyakit ini sering tumbuh pada bagian-bagian tubuh yang sering terkena sinar UV.', 'Segera konsultasi dengan dokter terdekat untuk meminimalisasi penyebaran kanker.', 98.5891, '2025-06-06 17:41:23'),
	('5fb8b10d-1ff8-46e8-9128-bb0fc5669b73', 'Melanocytic nevus', 'Melanocytic nevus adalah kondisi di mana permukaan kulit memiliki bercak warna yang berasal dari sel-sel melanosit, yakni pembentukan warna kulit dan rambut.', 'Segera konsultasi dengan dokter terdekat jika ukuran semakin membesar dengan cepat, mudah luka atau berdarah.', 100, '2025-06-08 13:30:36'),
	('6710f6a8-1661-4a40-93ed-041784d41fa8', 'Melanocytic nevus', 'Melanocytic nevus adalah kondisi di mana permukaan kulit memiliki bercak warna yang berasal dari sel-sel melanosit, yakni pembentukan warna kulit dan rambut.', 'Segera konsultasi dengan dokter terdekat jika ukuran semakin membesar dengan cepat, mudah luka atau berdarah.', 100, '2025-06-06 17:40:41'),
	('6e4f012d-425c-4257-ae3b-97e3be013fcd', 'Squamous cell carcinoma', 'Squamous cell carcinoma adalah jenis kanker kulit yang umum dijumpai. Penyakit ini sering tumbuh pada bagian-bagian tubuh yang sering terkena sinar UV.', 'Segera konsultasi dengan dokter terdekat untuk meminimalisasi penyebaran kanker.', 98.5891, '2025-06-08 13:43:53'),
	('93ce2af0-1d0b-4979-8782-8782d93bfd33', 'Melanocytic nevus', 'Melanocytic nevus adalah kondisi di mana permukaan kulit memiliki bercak warna yang berasal dari sel-sel melanosit, yakni pembentukan warna kulit dan rambut.', 'Segera konsultasi dengan dokter terdekat jika ukuran semakin membesar dengan cepat, mudah luka atau berdarah.', 100, '2025-06-08 13:43:21'),
	('b535c925-f6a9-48f7-aba4-009f2fddfb18', 'Squamous cell carcinoma', 'Squamous cell carcinoma adalah jenis kanker kulit yang umum dijumpai. Penyakit ini sering tumbuh pada bagian-bagian tubuh yang sering terkena sinar UV.', 'Segera konsultasi dengan dokter terdekat untuk meminimalisasi penyebaran kanker.', 98.5891, '2025-06-06 17:16:58'),
	('f53125b5-cff8-443e-ad40-949e53fb7d82', 'Melanocytic nevus', 'Melanocytic nevus adalah kondisi di mana permukaan kulit memiliki bercak warna yang berasal dari sel-sel melanosit, yakni pembentukan warna kulit dan rambut.', 'Segera konsultasi dengan dokter terdekat jika ukuran semakin membesar dengan cepat, mudah luka atau berdarah.', 100, '2025-06-08 13:30:36');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
