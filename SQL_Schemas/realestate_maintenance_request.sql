DROP TABLE IF EXISTS `maintenance_request`;

CREATE TABLE `maintenance_request` (
  `Request_id` int NOT NULL AUTO_INCREMENT,
  `Request_date` date DEFAULT NULL,
  `Description` varchar(255) NOT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `Property_id` int DEFAULT NULL,
  `Tenant_id` int DEFAULT NULL,
  PRIMARY KEY (`Request_id`),
  KEY `Property_id` (`Property_id`),
  KEY `Tenant_id` (`Tenant_id`),
  CONSTRAINT `maintenance_request_ibfk_1` FOREIGN KEY (`Property_id`) REFERENCES `property` (`Property_id`),
  CONSTRAINT `maintenance_request_ibfk_2` FOREIGN KEY (`Tenant_id`) REFERENCES `tenant` (`Tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `maintenance_request` WRITE;

UNLOCK TABLES;

