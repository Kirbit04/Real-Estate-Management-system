DROP TABLE IF EXISTS `owner`;

CREATE TABLE `owner` (
  `Owner_id` int NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone_number` varchar(15) DEFAULT NULL,
  `Agent_id` int DEFAULT NULL,
  PRIMARY KEY (`Owner_id`),
  KEY `fk_agent` (`Agent_id`),
  CONSTRAINT `fk_agent` FOREIGN KEY (`Agent_id`) REFERENCES `agent` (`Agent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `owner` WRITE;

UNLOCK TABLES;

