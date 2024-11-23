DROP TABLE IF EXISTS `property`;

CREATE TABLE `property` (
  `Property_id` int NOT NULL AUTO_INCREMENT,
  `Property_type` varchar(50) DEFAULT NULL,
  `Address` varchar(255) NOT NULL,
  `County` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Price_ksh` decimal(10,2) DEFAULT NULL,
  `Owner_id` int DEFAULT NULL,
  `Agent_id` int DEFAULT NULL,
  `Zipcode` varchar(100) DEFAULT NULL,
  `Size_m2` int DEFAULT NULL,
  PRIMARY KEY (`Property_id`),
  KEY `Owner_id` (`Owner_id`),
  KEY `Agent_id` (`Agent_id`),
  CONSTRAINT `Agent_id` FOREIGN KEY (`Agent_id`) REFERENCES `agent` (`Agent_id`),
  CONSTRAINT `property_ibfk_1` FOREIGN KEY (`Owner_id`) REFERENCES `owner` (`Owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `property` WRITE;

UNLOCK TABLES;

