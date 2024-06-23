CREATE DATABASE  IF NOT EXISTS `beautyplanner` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `beautyplanner`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: beautyplanner
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `application_user`
--

DROP TABLE IF EXISTS `application_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application_user` (
  `id` bigint NOT NULL,
  `version` int NOT NULL,
  `hashed_password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `profile_picture` mediumblob,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application_user`
--

LOCK TABLES `application_user` WRITE;
/*!40000 ALTER TABLE `application_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `application_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilities`
--

DROP TABLE IF EXISTS `facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_facilities` varchar(255) DEFAULT NULL,
  `adress_facilities` varchar(255) NOT NULL,
  `phone_facilities` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilities`
--

LOCK TABLES `facilities` WRITE;
/*!40000 ALTER TABLE `facilities` DISABLE KEYS */;
INSERT INTO `facilities` VALUES (3,'FaceMedical','FaceMedical ul. Królowej Jadwigi 103/2 , 30-209 Kraków','+48 690 930 903','kontakt@facemedical.pl'),(4,'NUVU estetic','os. 2 Pułku Lotniczego 1G/35','+48566678822','info@nuvuestetic.pl'),(11,'Klinika Zakrzewscy','Porcelanowa 23B, 40-246 Katowice','32 610 06 90','recepcja@klinikazakrzewscy.pl');
/*!40000 ALTER TABLE `facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idgenerator`
--

DROP TABLE IF EXISTS `idgenerator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `idgenerator` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idgenerator`
--

LOCK TABLES `idgenerator` WRITE;
/*!40000 ALTER TABLE `idgenerator` DISABLE KEYS */;
INSERT INTO `idgenerator` VALUES (1000);
/*!40000 ALTER TABLE `idgenerator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` bigint NOT NULL,
  `anons` varchar(255) DEFAULT NULL,
  `full_text` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `views` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (2,'Nowinka','Zabiegi pielęgnacyjne dłoni i stóp, które obejmują obcinanie, pilowanie paznokci, usuwanie skórek oraz malowanie paznokci lakierem. Mogą także obejmować masaż dłoni i stóp oraz nałożenie masek nawilżających.','Manicure i pedicure',777),(202,'Nowość','Procedura, która polega na doklejaniu pojedynczych sztucznych rzęs do naturalnych, aby uzyskać efekt dłuższych i gęstszych rzęs. Może obejmować różne techniki, takie jak metoda 1:1, 2D-6D czy Russian Volume.','Przedłużanie i zagęszczanie rzęs',457);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_seq`
--

DROP TABLE IF EXISTS `post_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_seq`
--

LOCK TABLES `post_seq` WRITE;
/*!40000 ALTER TABLE `post_seq` DISABLE KEYS */;
INSERT INTO `post_seq` VALUES (501);
/*!40000 ALTER TABLE `post_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `facility_id` int NOT NULL,
  `nazwa` varchar(255) DEFAULT NULL,
  `description` varchar(500) NOT NULL,
  `minute_duration` int NOT NULL,
  `price` float NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`facility_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (3,1,'Peeling chemiczny twarzy','Peeling chemiczny twarzy to zabieg aplikacji specjalnych substancji chemicznych na skórę, powodujący kontrolowane złuszczanie naskórka. Jego celem jest poprawa wyglądu i kondycji skóry przez usunięcie martwych komórek, stymulację regeneracji oraz produkcję kolagenu i elastyny. Peelingi chemiczne mogą być powierzchniowe, średnio-głębokie lub głębokie, zależnie od substancji i oczekiwanych efektów. Pomaga w redukcji zmarszczek, przebarwień, blizn potrądzikowych oraz innych niedoskonałości skóry.',20,400,'https://i.imgur.com/oZX9dfo.jpeg'),(4,1,'Radiofrekwencja','Radiofrekwencja (RF) to nieinwazyjny zabieg kosmetyczny oparty na falach radiowych, które ogrzewają głębsze warstwy skóry. Głównym celem jest stymulacja produkcji kolagenu i elastyny, co poprawia jędrność, napięcie oraz ogólny wygląd skóry. Zabieg jest skuteczny w redukcji zmarszczek, liftingu twarzy i ciała oraz w leczeniu cellulitu. Jest uznawany za bezpieczny, a efekty stają się widoczne stopniowo, najczęściej po kilku sesjach.',40,500,'https://i.imgur.com/ywbs84i.jpeg'),(5,1,'Oczyszczanie twarzy ','Oczyszczanie twarzy to kluczowy element codziennej pielęgnacji skóry. Regularne usuwanie zanieczyszczeń, nadmiaru sebum i martwego naskórka pozwala utrzymać skórę zdrową i promienną. Zabiegi takie jak głębokie oczyszczanie mechaniczne, peelingi chemiczne czy zabiegi ultradźwiękowe pomagają w dotarciu do głębszych warstw skóry, usuwając toksyny i poprawiając teksturę skóry.',20,300,'https://i.imgur.com/Qky6gEU.jpg'),(6,1,'Mikroigłowanie','Mikroigłowanie to innowacyjna metoda regeneracji skóry, wykorzystująca mikroigiełki do stymulacji procesów naprawczych. Zabieg poprawia jędrność, redukuje zmarszczki i blizny oraz wspomaga wchłanianie serum nawilżającego i odmładzającego. Jest bezbolesny i skuteczny, idealny do walki z problemami skórnymi jak przebarwienia czy rozszerzone pory.',30,300,'https://i.imgur.com/pBTgNvT.jpg'),(7,1,'Mezoterapia igłowa ','Mezoterapia igłowa to skuteczny zabieg polegający na wstrzykiwaniu substancji odżywczych, witamin i kwasu hialuronowego bezpośrednio w skórę za pomocą mikroigieł. Dzięki temu skóra staje się głęboko nawilżona, jędrna i promienna. Zabieg pomaga w redukcji zmarszczek, blizn, przebarwień oraz cellulitu. Idealny dla osób chcących poprawić kondycję skóry bez użycia inwazyjnych metod. Regularne sesje przynoszą długotrwałe efekty, zapewniając młodzieńczy i zdrowy wygląd.',20,500,'https://i.imgur.com/0vJmaQL.jpg'),(10,0,'Masaż twarzy Kobido','Masaż twarzy Kobido to starożytna japońska technika, która oferuje naturalny lifting i ujędrnienie skóry. Poprawia krążenie krwi, co prowadzi do lepszego dotlenienia i odżywienia komórek skóry, redukując zmarszczki i drobne linie. Regularne sesje pomagają w utrzymaniu elastyczności i młodzieńczego wyglądu skóry. Kobido działa także relaksująco, redukując napięcie mięśniowe i stres. To idealny sposób na zdrową, promienną skórę i głęboki relaks.',20,350.9,'https://i.imgur.com/zB6Hq6u.jpg'),(11,0,'Mezoterapia ','Mezoterapia to innowacyjny zabieg polegający na wprowadzaniu substancji odżywczych, witamin i kwasu hialuronowego bezpośrednio w skórę za pomocą mikroiniekcji. Dzięki temu skóra staje się nawilżona, jędrna i promienna. Mezoterapia pomaga w redukcji zmarszczek, blizn, przebarwień oraz cellulitu. Jest idealnym rozwiązaniem dla osób pragnących poprawić kondycję swojej skóry bez użycia inwazyjnych metod. Regularne zabiegi przynoszą długotrwałe efekty, zapewniając młodzieńczy i zdrowy wygląd.',40,340.55,'https://i.imgur.com/j7b6yF3.jpg'),(14,0,'Zabiegi nawilżające ','Zabiegi nawilżające to klucz do zdrowej, promiennej skóry. Dzięki odpowiedniej pielęgnacji można zapobiec suchości, łuszczeniu się i przedwczesnemu starzeniu. Nawilżanie zaczyna się od codziennego stosowania kremów i serum z kwasem hialuronowym, ceramidami czy gliceryną. Profesjonalne zabiegi, takie jak mezoterapia igłowa, infuzja tlenowa czy maseczki nawilżające w gabinetach kosmetycznych, potęgują efekty pielęgnacji domowej. Pamiętaj także o nawadnianiu organizmu od środka poprzez picie odpowi',44,390.9,'https://i.imgur.com/CLFGj1X.jpg ');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_reminders`
--

DROP TABLE IF EXISTS `sms_reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_reminders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `visit_id` varchar(45) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `post_date` datetime NOT NULL,
  PRIMARY KEY (`id`,`visit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_reminders`
--

LOCK TABLES `sms_reminders` WRITE;
/*!40000 ALTER TABLE `sms_reminders` DISABLE KEYS */;
INSERT INTO `sms_reminders` VALUES (1,'1','678456789','Hello','2024-10-06 00:00:00'),(2,'2','46873434','Siemka','2024-10-06 00:00:00'),(3,'3','232323944','Hello','2024-10-06 00:00:00'),(4,'4','23232323','Siemka','2024-09-06 00:00:00'),(5,'5','42423323','Siemka','2024-12-07 00:00:00'),(6,'6','42423323','Siemka','2024-12-07 00:00:00'),(7,'7','42423323','Siemka','2024-12-07 00:00:00');
/*!40000 ALTER TABLE `sms_reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name_user` varchar(255) DEFAULT NULL,
  `pass_user` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_user` varchar(255) DEFAULT NULL,
  `role_user` varchar(255) DEFAULT NULL,
  `surname_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'Paulina','12345','paulina@gmail.com','123456789','ADMIN','Test'),(4,'Paulina','12345','paulina@gmail.com','123456789','ADMIN','Malina'),(5,'Jan','123783456789','test@gmai.com','234789345','USER','Kowalski'),(7,'Jan','wewewew','test@gmail.com','2323232323','USER','Kowal');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visits`
--

DROP TABLE IF EXISTS `visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `facility_id` int NOT NULL,
  `date_and_time_of_visit` datetime NOT NULL,
  `status` varchar(20) NOT NULL,
  `service_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`,`facility_id`,`date_and_time_of_visit`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visits`
--

LOCK TABLES `visits` WRITE;
/*!40000 ALTER TABLE `visits` DISABLE KEYS */;
INSERT INTO `visits` VALUES (3,1,'2024-05-17 00:00:00','Oplacona',1,1),(4,1,'2024-03-07 00:00:00','Wykonana',1,1),(5,1,'2024-03-07 00:00:00','Anulowana',1,1),(7,2,'2024-03-07 09:00:00','Wykonana',1,1);
/*!40000 ALTER TABLE `visits` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-23 14:13:05
