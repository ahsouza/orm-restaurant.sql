-- Author: Aníbal Henrique De Souza @ahsouza <annibalhsouza@gmail.com>
-- GitHub: github.com/ahsouza
-- Host: localhost    Database: restaurantDB
-- ------------------------------------------------------
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `restaurant`
--
DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant` (
  `restaurant_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lei_code` varchar(25) DEFAULT NULL,
  `catalog_id` int(11) DEFAULT NULL,
  `payment_accepted_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `aggregate_rating_id` int(11) DEFAULT NULL,
  `employees_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `photos_id` int(11) DEFAULT NULL,
  `legal_name` varchar(25) NOT NULL,
  `slogan` varchar(50) DEFAULT NULL,
  `logo` blob DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `url` varchar(125) DEFAULT NULL,
  `founder` varchar(50) DEFAULT NULL,
  `accepts_reservations` boolean DEFAULT '0',
  `serves_cuisine` varchar(100) DEFAULT NULL,
  `star_rating` float(3,2) DEFAULT '0.00',
  `currencies_accepted` varchar(25) DEFAULT NULL,
  `opening_hours` varchar(125) DEFAULT NULL,
  `special_opening_hours_specification	` varchar(125) DEFAULT NULL,
  `area_served` text DEFAULT NULL,
  `award` text DEFAULT NULL,
  `corrections_policy` text DEFAULT NULL,
  `diversity_policy` text DEFAULT NULL,
  `ethics_policy` text DEFAULT NULL,
  `founding_date` timestamp NOT NULL,
  `global_location_number` varchar(13) NOT NULL,
  `has_credential` boolean DEFAULT '0',
  `knows_language` varchar(125) DEFAULT NULL,
  `smoking_allowed` boolean DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` smallint(1) DEFAULT '0' COMMENT '0:close, 1:open, 2:in repairs',
  PRIMARY KEY (`restaurant_id`),

  KEY `FK_restaurant_catalog_id` (`catalog_id`),
  CONSTRAINT `FK_restaurant_catalog_id` FOREIGN KEY (`catalog_id`) REFERENCES `catalog` (`catalog_id`),
  
  KEY `FK_restaurant_payment_accepted_id` (`payment_accepted_id`),
  CONSTRAINT `FK_restaurant_payment_accepted_id` FOREIGN KEY (`payment_accepted_id`) REFERENCES `payment` (`payment_id`),

  KEY `FK_restaurant_address_id` (`address_id`),
  CONSTRAINT `FK_restaurant_address_id` FOREIGN KEY (`address_id`) REFERENCES `location` (`address_id`),

  KEY `FK_restaurant_aggregate_rating_id` (`aggregate_rating_id`),
  CONSTRAINT `FK_restaurant_aggregate_rating_id` FOREIGN KEY (`aggregate_rating_id`) REFERENCES `rating` (`rating_id`),

  KEY `FK_restaurant_employees_id` (`employees_id`),
  CONSTRAINT `FK_restaurant_employees_id` FOREIGN KEY (`employees_id`) REFERENCES `employee` (`employee_id`),
  
  KEY `FK_restaurant_department_id` (`department_id`),
  CONSTRAINT `FK_restaurant_department_id` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`),

  KEY `FK_restaurant_photos_id` (`photos_id`),
  CONSTRAINT `FK_restaurant_photos_id` FOREIGN KEY (`photos_id`) REFERENCES `photos` (`photos_id`),

) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='number 1';

/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `restaurant`
--
LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (
  1,
  '529900423D4YJ9GFNCF93',
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  'Restaurante e Pizzaria Nobre',
  'Self-service casual de rotatividade com carnes na brasa e menu noturno de pizzas tradicionais de fornalha.',
  'data:48918494825J3KJKD8728GD0SR8952895252LKVKNKTerror.gif',
  '552732186225',
  'contato@restaurantenobre.com.br',
  'https://www.restaurantenobre.com.br',
  'Marcos Nobre',
  '0',
  '',
  4.75,
  'Real/Dolar/Euro',
  '08:00 às 17:00',
  '',
  '500m³',
  'Vencedor Em 1ª Lugar No Evento Melhor Economia Em Qualidade de Alimentos',
  'corrections',
  'deversity',
  'ethics',
  '2021-09-09 05:11:07',
  '5600000000014',
  '0',
  'português-brasileiro, english',
  '1',
  '2021-09-09 13:21:20',
  '2021-09-09 13:21:20',
  '1'
  ),
  (
    2,
    'G6990042134YJ9GFNCF93',
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    'Restaurante & Churrascaria do Gaúcho',
    'Self-service casual de rotatividade com carnes na brasa e menu noturno de pizzas tradicionais de fornalha.',
    'data:48918494825J3KJKD8728GD0SR8952895252LKVKNKTerror.gif',
    '552732186225',
    'contato@restaurantenobre.com.br',
    'https://www.restaurantenobre.com.br',
    'Marcelo Gaúcho',
    '0',
    '',
    4.75,
    'Real/Dolar/Euro',
    '08:00 às 17:00',
    '',
    '1.500m³',
    'Vencedor Em 1ª Lugar No Evento Melhor Economia Em Qualidade de Alimentos',
    'corrections',
    'deversity',
    'ethics',
    '2021-09-09 05:18:07',
    '8700013500014',
    '0',
    'português-brasileiro, english',
    '1',
    '2021-09-09 13:25:43',
    '2021-09-09 13:25:43',
    '1'
  ),
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

