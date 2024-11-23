DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `Payment_id` int NOT NULL AUTO_INCREMENT,
  `Payment_date` date DEFAULT NULL,
  `Amount_paid` decimal(10,2) DEFAULT NULL,
  `Payment_method` varchar(50) DEFAULT NULL,
  `Lease_id` int DEFAULT NULL,
  PRIMARY KEY (`Payment_id`),
  KEY `Lease_id` (`Lease_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`Lease_id`) REFERENCES `lease` (`Lease_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `payment` WRITE;

UNLOCK TABLES;

