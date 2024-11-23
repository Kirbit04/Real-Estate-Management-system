DROP TABLE IF EXISTS `agent`;

CREATE TABLE `agent` (
  `Agent_id` int NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Agency` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Agent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `agent` WRITE;

UNLOCK TABLES;

