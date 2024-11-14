CREATE TABLE `tenant` (
  `Tenant_id` int NOT NULL,
  `Firstname` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone_number` varchar(15) DEFAULT NULL,
  `Lease_start` date DEFAULT NULL,
  `Lease_end` date DEFAULT NULL,
  `Property_id` int DEFAULT NULL,
  `Agent_id` int DEFAULT NULL,
  PRIMARY KEY (`Tenant_id`),
  KEY `Property_id` (`Property_id`),
  KEY `Agent_id` (`Agent_id`),
  CONSTRAINT `tenant_ibfk_1` FOREIGN KEY (`Property_id`) REFERENCES `property` (`Property_id`),
  CONSTRAINT `tenant_ibfk_2` FOREIGN KEY (`Agent_id`) REFERENCES `agent` (`Agent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
