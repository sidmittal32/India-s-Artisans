-- MySQL Dump for IndiasArtisans - India Specific Data
-- Generated on: 2024-11-06 20:55:57

-- ------------------------------------------------------
-- Host: localhost    Database: artall_db
-- Server version	8.0.28-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
 /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
 /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 /*!50503 SET NAMES utf8mb4 */;
 /*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
 /*!40103 SET TIME_ZONE='+00:00' */;
 /*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
 /*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
 /*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
 /*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

USE artall_db;

-- ------------------------------------------------------
-- Table structure for table `countries`
-- ------------------------------------------------------

DROP TABLE IF EXISTS `countries`;
 /*!40101 SET @saved_cs_client     = @@character_set_client */;
 /*!50503 SET character_set_client = utf8mb4 */;
 CREATE TABLE `countries` (
   `id` varchar(60) NOT NULL,
   `created_at` datetime NOT NULL,
   `updated_at` datetime NOT NULL,
   `name` varchar(128) NOT NULL,
   PRIMARY KEY (`id`),
   UNIQUE KEY `id` (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
 /*!40101 SET character_set_client = @saved_cs_client */;

-- ------------------------------------------------------
-- Dumping data for table `countries`
-- ------------------------------------------------------

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` (`id`, `created_at`, `updated_at`, `name`) VALUES
('123e4567-e89b-12d3-a456-426614174000', NOW(), NOW(), 'India');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

-- ------------------------------------------------------
-- Table structure for table `cities`
-- ------------------------------------------------------

DROP TABLE IF EXISTS `cities`;
 /*!40101 SET @saved_cs_client     = @@character_set_client */;
 /*!50503 SET character_set_client = utf8mb4 */;
 CREATE TABLE `cities` (
   `id` varchar(60) NOT NULL,
   `created_at` datetime NOT NULL,
   `updated_at` datetime NOT NULL,
   `name` varchar(128) NOT NULL,
   `country_id` varchar(60) NOT NULL,
   PRIMARY KEY (`id`),
   UNIQUE KEY `id` (`id`),
   KEY `country_id` (`country_id`),
   CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
 /*!40101 SET character_set_client = @saved_cs_client */;

-- ------------------------------------------------------
-- Dumping data for table `cities`
-- ------------------------------------------------------

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` (`id`, `created_at`, `updated_at`, `name`, `country_id`) VALUES
('a1b2c3d4-e5f6-7890-abcd-ef1234567890', NOW(), NOW(), 'Mumbai', '123e4567-e89b-12d3-a456-426614174000'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567891', NOW(), NOW(), 'Delhi', '123e4567-e89b-12d3-a456-426614174000'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567892', NOW(), NOW(), 'Bangalore', '123e4567-e89b-12d3-a456-426614174000'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567893', NOW(), NOW(), 'Chennai', '123e4567-e89b-12d3-a456-426614174000'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567894', NOW(), NOW(), 'Kolkata', '123e4567-e89b-12d3-a456-426614174000'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567895', NOW(), NOW(), 'Hyderabad', '123e4567-e89b-12d3-a456-426614174000'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567896', NOW(), NOW(), 'Ahmedabad', '123e4567-e89b-12d3-a456-426614174000'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567897', NOW(), NOW(), 'Pune', '123e4567-e89b-12d3-a456-426614174000'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567898', NOW(), NOW(), 'Jaipur', '123e4567-e89b-12d3-a456-426614174000'),
('a1b2c3d4-e5f6-7890-abcd-ef1234567899', NOW(), NOW(), 'Surat', '123e4567-e89b-12d3-a456-426614174000'),
('a1b2c3d4-e5f6-7890-abcd-ef12345678a0', NOW(), NOW(), 'Lucknow', '123e4567-e89b-12d3-a456-426614174000'),
('a1b2c3d4-e5f6-7890-abcd-ef12345678a1', NOW(), NOW(), 'Kanpur', '123e4567-e89b-12d3-a456-426614174000'),
('a1b2c3d4-e5f6-7890-abcd-ef12345678a2', NOW(), NOW(), 'Nagpur', '123e4567-e89b-12d3-a456-426614174000'),
('a1b2c3d4-e5f6-7890-abcd-ef12345678a3', NOW(), NOW(), 'Indore', '123e4567-e89b-12d3-a456-426614174000'),
('a1b2c3d4-e5f6-7890-abcd-ef12345678a4', NOW(), NOW(), 'Bhopal', '123e4567-e89b-12d3-a456-426614174000'),
('a1b2c3d4-e5f6-7890-abcd-ef12345678a5', NOW(), NOW(), 'Patna', '123e4567-e89b-12d3-a456-426614174000'),
('a1b2c3d4-e5f6-7890-abcd-ef12345678a6', NOW(), NOW(), 'Vadodara', '123e4567-e89b-12d3-a456-426614174000'),
('a1b2c3d4-e5f6-7890-abcd-ef12345678a7', NOW(), NOW(), 'Ghaziabad', '123e4567-e89b-12d3-a456-426614174000'),
('a1b2c3d4-e5f6-7890-abcd-ef12345678a8', NOW(), NOW(), 'Ludhiana', '123e4567-e89b-12d3-a456-426614174000'),
('a1b2c3d4-e5f6-7890-abcd-ef12345678a9', NOW(), NOW(), 'Agra', '123e4567-e89b-12d3-a456-426614174000');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

-- ------------------------------------------------------
-- Table structure for table `crafts`
-- ------------------------------------------------------

DROP TABLE IF EXISTS `crafts`;
 /*!40101 SET @saved_cs_client     = @@character_set_client */;
 /*!50503 SET character_set_client = utf8mb4 */;
 CREATE TABLE `crafts` (
   `id` varchar(60) NOT NULL,
   `created_at` datetime NOT NULL,
   `updated_at` datetime NOT NULL,
   `name` varchar(128) NOT NULL,
   PRIMARY KEY (`id`),
   UNIQUE KEY `id` (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
 /*!40101 SET character_set_client = @saved_cs_client */;

-- ------------------------------------------------------
-- Dumping data for table `crafts`
-- ------------------------------------------------------

LOCK TABLES `crafts` WRITE;
/*!40000 ALTER TABLE `crafts` DISABLE KEYS */;
INSERT INTO `crafts` (`id`, `created_at`, `updated_at`, `name`) VALUES
('c1b2c3d4-e5f6-7890-abcd-ef1234567800', NOW(), NOW(), 'Embroidery'),
('c1b2c3d4-e5f6-7890-abcd-ef1234567801', NOW(), NOW(), 'Block Printing'),
('c1b2c3d4-e5f6-7890-abcd-ef1234567802', NOW(), NOW(), 'Pottery'),
('c1b2c3d4-e5f6-7890-abcd-ef1234567803', NOW(), NOW(), 'Weaving'),
('c1b2c3d4-e5f6-7890-abcd-ef1234567804', NOW(), NOW(), 'Handloom'),
('c1b2c3d4-e5f6-7890-abcd-ef1234567805', NOW(), NOW(), 'Woodwork'),
('c1b2c3d4-e5f6-7890-abcd-ef1234567806', NOW(), NOW(), 'Jewelry Making'),
('c1b2c3d4-e5f6-7890-abcd-ef1234567807', NOW(), NOW(), 'Metalwork'),
('c1b2c3d4-e5f6-7890-abcd-ef1234567808', NOW(), NOW(), 'Glasswork'),
('c1b2c3d4-e5f6-7890-abcd-ef1234567809', NOW(), NOW(), 'Leatherworking'),
('c1b2c3d4-e5f6-7890-abcd-ef1234567810', NOW(), NOW(), 'Sculpting'),
('c1b2c3d4-e5f6-7890-abcd-ef1234567811', NOW(), NOW(), 'Painting'),
('c1b2c3d4-e5f6-7890-abcd-ef1234567812', NOW(), NOW(), 'Calligraphy'),
('c1b2c3d4-e5f6-7890-abcd-ef1234567813', NOW(), NOW(), 'Terracotta'),
('c1b2c3d4-e5f6-7890-abcd-ef1234567814', NOW(), NOW(), 'Banarasi Silk'),
('c1b2c3d4-e5f6-7890-abcd-ef1234567815', NOW(), NOW(), 'Kalamkari'),
('c1b2c3d4-e5f6-7890-abcd-ef1234567816', NOW(), NOW(), 'Madhubani'),
('c1b2c3d4-e5f6-7890-abcd-ef1234567817', NOW(), NOW(), 'Pattachitra'),
('c1b2c3d4-e5f6-7890-abcd-ef1234567818', NOW(), NOW(), 'Zardozi'),
('c1b2c3d4-e5f6-7890-abcd-ef1234567819', NOW(), NOW(), 'Phulkari'),
('c1b2c3d4-e5f6-7890-abcd-ef1234567820', NOW(), NOW(), 'Chikankari'),
('c1b2c3d4-e5f6-7890-abcd-ef1234567821', NOW(), NOW(), 'Bandhani'),
('c1b2c3d4-e5f6-7890-abcd-ef1234567822', NOW(), NOW(), 'Ikat'),
('c1b2c3d4-e5f6-7890-abcd-ef1234567823', NOW(), NOW(), 'Mirror Work');
/*!40000 ALTER TABLE `crafts` ENABLE KEYS */;
UNLOCK TABLES;

-- ------------------------------------------------------
-- Table structure for table `artisans`
-- ------------------------------------------------------

DROP TABLE IF EXISTS `artisans`;
 /*!40101 SET @saved_cs_client     = @@character_set_client */;
 /*!50503 SET character_set_client = utf8mb4 */;
 CREATE TABLE `artisans` (
   `id` varchar(60) NOT NULL,
   `created_at` datetime NOT NULL,
   `updated_at` datetime NOT NULL,
   `name` varchar(128) NOT NULL,
   `description` varchar(1024) NOT NULL,
   `email` varchar(128) NOT NULL,
   `password_hash` varchar(128) NOT NULL,
   `picture` varchar(1000) NOT NULL,
   `city_id` varchar(60) NOT NULL,
   PRIMARY KEY (`id`),
   UNIQUE KEY `id` (`id`),
   UNIQUE KEY `email` (`email`),
   KEY `city_id` (`city_id`),
   CONSTRAINT `artisans_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
 /*!40101 SET character_set_client = @saved_cs_client */;

-- ------------------------------------------------------
-- Dumping data for table `artisans`
-- ------------------------------------------------------

LOCK TABLES `artisans` WRITE;
/*!40000 ALTER TABLE `artisans` DISABLE KEYS */;
INSERT INTO `artisans` (`id`, `created_at`, `updated_at`, `name`, `description`, `email`, `password_hash`, `picture`, `city_id`) VALUES
('a2b3c4d5-e6f7-8901-abcd-ef1234567890', NOW(), NOW(), 'Anita Sharma', 'Expert in traditional Banarasi silk weaving', 'anita.sharma@example.com', '$2b$12$hashedpassword1', '../static/images/avatar.png', 'a1b2c3d4-e5f6-7890-abcd-ef1234567890'),
('a2b3c4d5-e6f7-8901-abcd-ef1234567891', NOW(), NOW(), 'Rahul Verma', 'Master of Madhubani painting with contemporary twists', 'rahul.verma@example.com', '$2b$12$hashedpassword2', '../static/images/avatar.png', 'a1b2c3d4-e5f6-7890-abcd-ef1234567891'),
('a2b3c4d5-e6f7-8901-abcd-ef1234567892', NOW(), NOW(), 'Priya Kapoor', 'Skilled in intricate Zardozi embroidery', 'priya.kapoor@example.com', '$2b$12$hashedpassword3', '../static/images/avatar.png', 'a1b2c3d4-e5f6-7890-abcd-ef1234567892'),
('a2b3c4d5-e6f7-8901-abcd-ef1234567893', NOW(), NOW(), 'Vikram Singh', 'Renowned sculptor specializing in terracotta art', 'vikram.singh@example.com', '$2b$12$hashedpassword4', '../static/images/avatar.png', 'a1b2c3d4-e5f6-7890-abcd-ef1234567893'),
('a2b3c4d5-e6f7-8901-abcd-ef1234567894', NOW(), NOW(), 'Sneha Patel', 'Innovative potter creating eco-friendly designs', 'sneha.patel@example.com', '$2b$12$hashedpassword5', '../static/images/avatar.png', 'a1b2c3d4-e5f6-7890-abcd-ef1234567894');
/*!40000 ALTER TABLE `artisans` ENABLE KEYS */;
UNLOCK TABLES;

-- ------------------------------------------------------
-- Table structure for table `artisan_craft`
-- ------------------------------------------------------

DROP TABLE IF EXISTS `artisan_craft`;
 /*!40101 SET @saved_cs_client     = @@character_set_client */;
 /*!50503 SET character_set_client = utf8mb4 */;
 CREATE TABLE `artisan_craft` (
   `artisan_id` varchar(60) NOT NULL,
   `craft_id` varchar(60) NOT NULL,
   PRIMARY KEY (`artisan_id`,`craft_id`),
   KEY `craft_id` (`craft_id`),
   CONSTRAINT `artisan_craft_ibfk_1` FOREIGN KEY (`artisan_id`) REFERENCES `artisans` (`id`),
   CONSTRAINT `artisan_craft_ibfk_2` FOREIGN KEY (`craft_id`) REFERENCES `crafts` (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
 /*!40101 SET character_set_client = @saved_cs_client */;

-- ------------------------------------------------------
-- Dumping data for table `artisan_craft`
-- ------------------------------------------------------

LOCK TABLES `artisan_craft` WRITE;
/*!40000 ALTER TABLE `artisan_craft` DISABLE KEYS */;
INSERT INTO `artisan_craft` (`artisan_id`, `craft_id`) VALUES
('a2b3c4d5-e6f7-8901-abcd-ef1234567890', 'c1b2c3d4-e5f6-7890-abcd-ef1234567814'), -- Embroidery -> Banarasi Silk
('a2b3c4d5-e6f7-8901-abcd-ef1234567891', 'c1b2c3d4-e5f6-7890-abcd-ef1234567816'), -- Block Printing -> Madhubani
('a2b3c4d5-e6f7-8901-abcd-ef1234567892', 'c1b2c3d4-e5f6-7890-abcd-ef1234567818'), -- Pottery -> Zardozi
('a2b3c4d5-e6f7-8901-abcd-ef1234567893', 'c1b2c3d4-e5f6-7890-abcd-ef1234567813'), -- Weaving -> Terracotta
('a2b3c4d5-e6f7-8901-abcd-ef1234567894', 'c1b2c3d4-e5f6-7890-abcd-ef1234567802'); -- Handloom -> Pottery
/*!40000 ALTER TABLE `artisan_craft` ENABLE KEYS */;
UNLOCK TABLES;

-- ------------------------------------------------------
-- Table structure for table `products`
-- ------------------------------------------------------

DROP TABLE IF EXISTS `products`;
 /*!40101 SET @saved_cs_client     = @@character_set_client */;
 /*!50503 SET character_set_client = utf8mb4 */;
 CREATE TABLE `products` (
   `id` varchar(60) NOT NULL,
   `created_at` datetime NOT NULL,
   `updated_at` datetime NOT NULL,
   `name` varchar(128) NOT NULL,
   `description` varchar(1024) NOT NULL,
   `price` int NOT NULL,
   `picture` varchar(1000) NOT NULL,
   `artisan_id` varchar(60) NOT NULL,
   `craft_id` varchar(60) NOT NULL,
   PRIMARY KEY (`id`),
   UNIQUE KEY `id` (`id`),
   KEY `artisan_id` (`artisan_id`),
   KEY `craft_id` (`craft_id`),
   CONSTRAINT `products_ibfk_1` FOREIGN KEY (`artisan_id`) REFERENCES `artisans` (`id`),
   CONSTRAINT `products_ibfk_2` FOREIGN KEY (`craft_id`) REFERENCES `crafts` (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
 /*!40101 SET character_set_client = @saved_cs_client */;

-- ------------------------------------------------------
-- Dumping data for table `products`
-- ------------------------------------------------------

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `created_at`, `updated_at`, `name`, `description`, `price`, `picture`, `artisan_id`, `craft_id`) VALUES
('p1a2b3c4-d5e6-7890-abcd-ef1234567800', NOW(), NOW(), 'Handwoven Banarasi Silk Saree', 'Luxurious handwoven Banarasi silk saree with intricate gold zari work.', 500, '../static/images/popular-1.jpg', 'a2b3c4d5-e6f7-8901-abcd-ef1234567890', 'c1b2c3d4-e5f6-7890-abcd-ef1234567814'),
('p1a2b3c4-d5e6-7890-abcd-ef1234567801', NOW(), NOW(), 'Madhubani Painted Canvas', 'Vibrant Madhubani painting on high-quality canvas.', 200, '../static/images/popular-1.jpg', 'a2b3c4d5-e6f7-8901-abcd-ef1234567891', 'c1b2c3d4-e5f6-7890-abcd-ef1234567816'),
('p1a2b3c4-d5e6-7890-abcd-ef1234567802', NOW(), NOW(), 'Zardozi Embroidered Kurta', 'Stylish kurta with exquisite Zardozi embroidery.', 300, '../static/images/popular-1.jpg', 'a2b3c4d5-e6f7-8901-abcd-ef1234567892', 'c1b2c3d4-e5f6-7890-abcd-ef1234567818'),
('p1a2b3c4-d5e6-7890-abcd-ef1234567803', NOW(), NOW(), 'Terracotta Figurine', 'Handcrafted terracotta figurine of traditional Indian motifs.', 120, '../static/images/popular-1.jpg', 'a2b3c4d5-e6f7-8901-abcd-ef1234567893', 'c1b2c3d4-e5f6-7890-abcd-ef1234567813'),
('p1a2b3c4-d5e6-7890-abcd-ef1234567804', NOW(), NOW(), 'Eco-friendly Ceramic Mug', 'Handcrafted ceramic mug made from sustainable materials.', 40, '../static/images/popular-1.jpg', 'a2b3c4d5-e6f7-8901-abcd-ef1234567894', 'c1b2c3d4-e5f6-7890-abcd-ef1234567802');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

-- ------------------------------------------------------
-- Table structure for table `customers`
-- ------------------------------------------------------

DROP TABLE IF EXISTS `customers`;
 /*!40101 SET @saved_cs_client     = @@character_set_client */;
 /*!50503 SET character_set_client = utf8mb4 */;
 CREATE TABLE `customers` (
   `id` varchar(60) NOT NULL,
   `created_at` datetime NOT NULL,
   `updated_at` datetime NOT NULL,
   `first_name` varchar(128) DEFAULT NULL,
   `last_name` varchar(128) DEFAULT NULL,
   `email` varchar(128) NOT NULL,
   `password_hash` varchar(128) NOT NULL,
   `address` varchar(128) NOT NULL,
   PRIMARY KEY (`id`),
   UNIQUE KEY `id` (`id`),
   UNIQUE KEY `email` (`email`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
 /*!40101 SET character_set_client = @saved_cs_client */;

-- ------------------------------------------------------
-- Dumping data for table `customers`
-- ------------------------------------------------------

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`id`, `created_at`, `updated_at`, `first_name`, `last_name`, `email`, `password_hash`, `address`) VALUES
('c1d2e3f4-a5b6-7890-abcd-ef1234567800', NOW(), NOW(), 'Raj', 'Patel', 'raj.patel@example.com', '$2b$12$hashedpassword6', '123, MG Road, Mumbai');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

-- ------------------------------------------------------
-- Table structure for table `orders`
-- ------------------------------------------------------

DROP TABLE IF EXISTS `orders`;
 /*!40101 SET @saved_cs_client     = @@character_set_client */;
 /*!50503 SET character_set_client = utf8mb4 */;
 CREATE TABLE `orders` (
   `id` varchar(60) NOT NULL,
   `created_at` datetime NOT NULL,
   `updated_at` datetime NOT NULL,
   `customer_id` varchar(60) NOT NULL,
   PRIMARY KEY (`id`),
   UNIQUE KEY `id` (`id`),
   KEY `customer_id` (`customer_id`),
   CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
 /*!40101 SET character_set_client = @saved_cs_client */;

-- ------------------------------------------------------
-- Dumping data for table `orders`
-- ------------------------------------------------------

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `customer_id`) VALUES
('o1a2b3c4-d5e6-7890-abcd-ef1234567800', NOW(), NOW(), 'c1d2e3f4-a5b6-7890-abcd-ef1234567800');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

-- ------------------------------------------------------
-- Table structure for table `order_product`
-- ------------------------------------------------------

DROP TABLE IF EXISTS `order_product`;
 /*!40101 SET @saved_cs_client     = @@character_set_client */;
 /*!50503 SET character_set_client = utf8mb4 */;
 CREATE TABLE `order_product` (
   `order_id` varchar(60) NOT NULL,
   `product_id` varchar(60) NOT NULL,
   PRIMARY KEY (`order_id`,`product_id`),
   KEY `product_id` (`product_id`),
   CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
   CONSTRAINT `order_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
 /*!40101 SET character_set_client = @saved_cs_client */;

-- ------------------------------------------------------
-- Dumping data for table `order_product`
-- ------------------------------------------------------

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
INSERT INTO `order_product` (`order_id`, `product_id`) VALUES
('o1a2b3c4-d5e6-7890-abcd-ef1234567800', 'p1a2b3c4-d5e6-7890-abcd-ef1234567800'),
('o1a2b3c4-d5e6-7890-abcd-ef1234567800', 'p1a2b3c4-d5e6-7890-abcd-ef1234567802');
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;
UNLOCK TABLES;

-- ------------------------------------------------------
-- Table structure for table `archives`
-- ------------------------------------------------------

DROP TABLE IF EXISTS `archives`;
 /*!40101 SET @saved_cs_client     = @@character_set_client */;
 /*!50503 SET character_set_client = utf8mb4 */;
 CREATE TABLE `archives` (
   `id` varchar(60) NOT NULL,
   `created_at` datetime NOT NULL,
   `updated_at` datetime NOT NULL,
   `customer_id` varchar(60) NOT NULL,
   PRIMARY KEY (`id`),
   UNIQUE KEY `id` (`id`),
   KEY `customer_id` (`customer_id`),
   CONSTRAINT `archives_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
 /*!40101 SET character_set_client = @saved_cs_client */;

-- ------------------------------------------------------
-- Dumping data for table `archives`
-- ------------------------------------------------------

LOCK TABLES `archives` WRITE;
/*!40000 ALTER TABLE `archives` DISABLE KEYS */;
INSERT INTO `archives` (`id`, `created_at`, `updated_at`, `customer_id`) VALUES
('arc1b2c3d4-e5f6-7890-abcd-ef1234567800', NOW(), NOW(), 'c1d2e3f4-a5b6-7890-abcd-ef1234567800');
/*!40000 ALTER TABLE `archives` ENABLE KEYS */;
UNLOCK TABLES;

-- ------------------------------------------------------
-- Table structure for table `archive_product`
-- ------------------------------------------------------

DROP TABLE IF EXISTS `archive_product`;
 /*!40101 SET @saved_cs_client     = @@character_set_client */;
 /*!50503 SET character_set_client = utf8mb4 */;
 CREATE TABLE `archive_product` (
   `archive_id` varchar(60) NOT NULL,
   `product_id` varchar(60) NOT NULL,
   PRIMARY KEY (`archive_id`,`product_id`),
   KEY `product_id` (`product_id`),
   CONSTRAINT `archive_product_ibfk_1` FOREIGN KEY (`archive_id`) REFERENCES `archives` (`id`),
   CONSTRAINT `archive_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
 /*!40101 SET character_set_client = @saved_cs_client */;

-- ------------------------------------------------------
-- Dumping data for table `archive_product`
-- ------------------------------------------------------

LOCK TABLES `archive_product` WRITE;
/*!40000 ALTER TABLE `archive_product` DISABLE KEYS */;
INSERT INTO `archive_product` (`archive_id`, `product_id`) VALUES
('arc1b2c3d4-e5f6-7890-abcd-ef1234567800', 'p1a2b3c4-d5e6-7890-abcd-ef1234567800'),
('arc1b2c3d4-e5f6-7890-abcd-ef1234567800', 'p1a2b3c4-d5e6-7890-abcd-ef1234567804');
/*!40000 ALTER TABLE `archive_product` ENABLE KEYS */;
UNLOCK TABLES;

-- ------------------------------------------------------
-- Table structure for table `reviews`
-- ------------------------------------------------------

DROP TABLE IF EXISTS `reviews`;
 /*!40101 SET @saved_cs_client     = @@character_set_client */;
 /*!50503 SET character_set_client = utf8mb4 */;
 CREATE TABLE `reviews` (
   `id` varchar(60) NOT NULL,
   `created_at` datetime NOT NULL,
   `updated_at` datetime NOT NULL,
   `text` varchar(1024) NOT NULL,
   `customer_id` varchar(60) NOT NULL,
   `product_id` varchar(60) NOT NULL,
   PRIMARY KEY (`id`),
   UNIQUE KEY `id` (`id`),
   KEY `customer_id` (`customer_id`),
   KEY `product_id` (`product_id`),
   CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
   CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
 /*!40101 SET character_set_client = @saved_cs_client */;

-- ------------------------------------------------------
-- Dumping data for table `reviews`
-- ------------------------------------------------------

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` (`id`, `created_at`, `updated_at`, `text`, `customer_id`, `product_id`) VALUES
('r1c2d3e4-f5g6-7890-abcd-ef1234567800', NOW(), NOW(), 'Absolutely stunning saree! The craftsmanship is top-notch.', 'c1d2e3f4-a5b6-7890-abcd-ef1234567800', 'p1a2b3c4-d5e6-7890-abcd-ef1234567800');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-06 20:55:57
