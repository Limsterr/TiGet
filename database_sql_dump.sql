-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: myDB
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` int DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'admin','9876','boss@gmail.com');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `username` varchar(50) DEFAULT NULL,
  `movie_title` varchar(50) DEFAULT NULL,
  `theater_title` varchar(50) DEFAULT NULL,
  `screen_number` int DEFAULT NULL,
  `screen_time` time DEFAULT NULL,
  `screen_date` date DEFAULT NULL,
  `booked_seats` varchar(200) DEFAULT NULL,
  `total_price` decimal(5,2) DEFAULT NULL,
  `ticket_status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES ('user','Oppenheimer','Captain',2,'19:00:00','2026-05-10','C6, C7',29.98,'refunded'),('ted','Knives Out','Dolby',4,'17:00:00','2025-05-12','D12',10.99,'active'),('ted','Glass Onion','Vista',1,'15:00:00','2025-05-13','F6',10.99,'refunded'),('ted','Oppenheimer','Captain',2,'19:00:00','2026-05-10','G8, G9',29.98,'active'),('user','Dune: Part One','Orpheum',1,'19:00:00','2025-09-11','A6, A7, ',25.98,'active'),('ted','Dune: Part One','Orpheum',1,'19:00:00','2025-09-11','A4, ',12.99,'active'),('user','Tomb Raider','Rey',1,'15:00:00','2023-12-01','B9',11.99,'active'),('user','Blade Runner 2049','Vista',1,'17:00:00','2024-08-29','C5, C6, C7, C8, ',55.96,'refunded'),('user','Dune: Part One','Orpheum',1,'19:00:00','2025-09-11','C2, C3, D3, ',38.97,'refunded'),('ted','Dune: Part One','Rey',2,'17:00:00','2025-08-10','D6, E7, D8, ',38.97,'active'),('user1','Oppenheimer','Captain',4,'19:00:00','2026-05-10','A6, A7, ',29.98,'active');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captain`
--

DROP TABLE IF EXISTS `captain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `captain` (
  `screen_number` int DEFAULT NULL,
  `displayed_movie` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `booked_seats` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captain`
--

LOCK TABLES `captain` WRITE;
/*!40000 ALTER TABLE `captain` DISABLE KEYS */;
INSERT INTO `captain` VALUES (4,'Oppenheimer','2026-05-10','19:00:00','C6, C7, G8, G9A6, A7, ');
/*!40000 ALTER TABLE `captain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dolby`
--

DROP TABLE IF EXISTS `dolby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dolby` (
  `screen_number` int DEFAULT NULL,
  `displayed_movie` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `booked_seats` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dolby`
--

LOCK TABLES `dolby` WRITE;
/*!40000 ALTER TABLE `dolby` DISABLE KEYS */;
INSERT INTO `dolby` VALUES (2,'Knives Out','2025-05-12','17:00:00','D12');
/*!40000 ALTER TABLE `dolby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` int DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `director` varchar(50) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `cast` varchar(500) DEFAULT NULL,
  `movie_description` varchar(1000) DEFAULT NULL,
  `ticket_price` decimal(4,2) DEFAULT NULL,
  `image_path` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'The Batman','Action, Thriller, Crime','Reeves','2022-04-03','Robert Pattinson, Zoe Kravitz, Paul Dano','Batman is called to intervene when the mayor of Gotham City is murdered. Soon, his investigation leads him to uncover a web of corruption, linked to his own dark past.',12.99,'The_Batman_(film)_poster.jpg'),(2,'Oppenheimer','Drama, Thriller','Christopher Nolan','2023-07-20','Cillian Murphy, Matt Damon, Emily Blunt, Florence Pugh','During World War II, Lt. Gen. Leslie Groves Jr. appoints physicist J. Robert Oppenheimer to work on the top-secret Manhattan Project. Oppenheimer and a team of scientists spend years developing and designing the atomic bomb. Their work comes to fruition on July 16, 1945, as they witness the world\'s first nuclear explosion, forever changing the course of history.',14.99,'Oppenheimer_(film).jpg'),(3,'Knives Out','Mystery, Crime, Comedy','Rian Johnson','2020-01-02','Daniel Craig, Ana DeArmas, Chris Evans','Harlan Thrombey, a reputable crime novelist, is found dead after his 85th birthday celebrations. However, as detective Benoit Blanc investigates the case, it unravels a ploy of sinister intentions.',10.99,'Knives_Out_poster.jpeg'),(4,'Dune: Part One','Sci-Fi, Action','Denis Villeneuve','2021-09-16','Timothee Chalamet, Zendaya, Oscar Isaac, Jason Momoa','Paul Atreides arrives on Arrakis after his father accepts the stewardship of the dangerous planet. However, chaos ensues after a betrayal as forces clash to control melange, a precious resource.',12.99,'Dune_(2021_film).jpg'),(5,'Dune: Part Two','Sci-Fi, Action','Denis Villeneuve','2024-02-29','Timothee Chalamet, Zendaya, Florence Pugh, Lea Seydoux','Paul Atreides unites with Chani and the Fremen while seeking revenge against the conspirators who destroyed his family. Facing a choice between the love of his life and the fate of the universe, he must prevent a terrible future only he can foresee.',12.99,'Dune_Part_Two_poster.jpeg'),(6,'Blade Runner 2049','Sci-Fi, Action','Denis Villeneuve','2016-10-05','Ryan Gosling, Ana De Armas, Harison Ford','K, an officer with the Los Angeles Police Department, unearths a secret that could create chaos. He goes in search of a former blade runner who has been missing for over three decades.',13.99,'Blade_Runner_2049_poster.png'),(7,'A Quiet Place','Horror, Thriller, Mystery','John Krasinski','2018-04-12','Emily Blunt, John Krasinski, Millicent Simmonds','A family lives in a world inhabited by blind but sound sensitive creatures who are out to kill people. In order to survive, they are forced to use the sign language to communicate with each other.',15.99,'A_Quiet_Place.jpg'),(8,'A Quiet Place Part II','Horror, Thriller, Mystery','John Krasinski','2021-05-28','Emily Blunt, Cillian Murphy, John Krasinski','In a post-apocalyptic world, Regan and her family learn that the alien predators can be defeated using high-frequency audio. Soon, armed with this knowledge, they set out to look for other survivors.',15.99,'A_Quiet_Place_film_poster.png'),(9,'Glass Onion','Mystery, Crime, Comedy','Rian Johnson','2021-09-10','Daniel Craig, Kate Hudson, Madelyn Cline','Tech billionaire Miles Bron invites his friends for a getaway on his private Greek island. When someone turns up dead, Detective Benoit Blanc is put on the case.',9.99,'Glass_Onion_poster.jpg'),(10,'Tomb Raider','Action, Adventure','Roar Uthaug','2018-03-14','Alicia Vikander, Walton Goggins, Dominic West','Lara Croft, a courageous and independent young woman, sets out on a dangerous journey to unravel the truth behind her adventurer father\'s mysterious disappearance.',11.99,'Tomb_Raider_(2018_film).png'),(11,'Uncharted','Action, Adventure','Ruben Fleischer','2022-02-18','Tom Holland, Mark Wahlberg, Sophia Taylor Ali','Victor Sullivan recruits Nathan Drake to help him find the lost fortune of Ferdinand Magellan. However, they face competition from Santiago Moncada, who believes that the treasure belongs to him.',10.99,'Uncharted_Official_Poster.jpg');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orpheum`
--

DROP TABLE IF EXISTS `orpheum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orpheum` (
  `screen_number` int DEFAULT NULL,
  `displayed_movie` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `booked_seats` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orpheum`
--

LOCK TABLES `orpheum` WRITE;
/*!40000 ALTER TABLE `orpheum` DISABLE KEYS */;
INSERT INTO `orpheum` VALUES (1,'Dune: Part One','2025-09-11','19:00:00','A6, A7, A4, C2, C3, D3, ');
/*!40000 ALTER TABLE `orpheum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rey`
--

DROP TABLE IF EXISTS `rey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rey` (
  `screen_number` int DEFAULT NULL,
  `displayed_movie` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `booked_seats` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rey`
--

LOCK TABLES `rey` WRITE;
/*!40000 ALTER TABLE `rey` DISABLE KEYS */;
INSERT INTO `rey` VALUES (2,'Dune: Part One','2025-08-10','17:00:00','D6, E7, D8, '),(1,'Dune: Part Two','2025-08-10','15:00:00','D6, E7, D8, ');
/*!40000 ALTER TABLE `rey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
  `id` int DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `director` varchar(50) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `cast` varchar(500) DEFAULT NULL,
  `movie_description` varchar(1000) DEFAULT NULL,
  `ticket_price` decimal(4,2) DEFAULT NULL,
  `image_path` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,'The Batman','Action','Matt','2022-11-12','Robert','Bat',10.90,'/home/limster/Projects/Java/demo/src/main/resources/The_Batman_(film)_poster.jpg');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theaters`
--

DROP TABLE IF EXISTS `theaters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theaters` (
  `id` int DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `screen_count` int DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `location` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theaters`
--

LOCK TABLES `theaters` WRITE;
/*!40000 ALTER TABLE `theaters` DISABLE KEYS */;
INSERT INTO `theaters` VALUES (1,'Orpheum',3,'+1 877-677-4386','842 S Broadway, Los Angeles, CA 90014'),(2,'Captain',2,'+1 818-845-3110','6838 Hollywood Blvd, Los Angeles, CA 90028'),(3,'Dolby',4,'+1 323-308-6300','1810 Highland Ave, Los Angeles, CA 90028'),(4,'Vista',1,'+1 323 664-2169','4473 Sunset Dr, Los Angeles, CA 90027'),(5,'Rey',2,'+1 323-936-6400','5515 Wilshire Blvd, Los Angeles, CA 90036');
/*!40000 ALTER TABLE `theaters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `balance` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'rr','1','test@gmail.com',559.60),(2,'ted','4567','ted@gmail.com',23.99),(3,'tt','2','tre@gmail.com',0.00),(4,'user1','1234','user1@gmail.com',18.02);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vista`
--

DROP TABLE IF EXISTS `vista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vista` (
  `screen_number` int DEFAULT NULL,
  `displayed_movie` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `booked_seats` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vista`
--

LOCK TABLES `vista` WRITE;
/*!40000 ALTER TABLE `vista` DISABLE KEYS */;
INSERT INTO `vista` VALUES (1,'Blade Runner 2049','2024-08-29','17:00:00','C5, C6, C7, C8, ');
/*!40000 ALTER TABLE `vista` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-04 11:54:05
