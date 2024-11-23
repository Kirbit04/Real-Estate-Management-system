DROP TABLE IF EXISTS `lease`;

DROP TABLE IF EXISTS `lease`;

CREATE TABLE `lease` (
  `Lease_id` int NOT NULL AUTO_INCREMENT,
  `Lease_start` date DEFAULT NULL,
  `Lease_end` date DEFAULT NULL,
  `Monthly_rent` decimal(10,2) DEFAULT NULL,
  `Property_id` int NOT NULL,
  `Tenant_id` int NOT NULL,
  PRIMARY KEY (`Lease_id`),
  KEY `Property_id` (`Property_id`),
  KEY `Tenant_id` (`Tenant_id`),
  CONSTRAINT `lease_ibfk_1` FOREIGN KEY (`Property_id`) REFERENCES `property` (`Property_id`),
  CONSTRAINT `lease_ibfk_2` FOREIGN KEY (`Tenant_id`) REFERENCES `tenant` (`Tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `lease` WRITE;

UNLOCK TABLES;


