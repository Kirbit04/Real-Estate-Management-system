DROP TABLE IF EXISTS `clients`;

CREATE TABLE `clients` (
    `Client_id` int NOT NULL AUTO_INCREMENT,
    `Firstname` varchar(100) NOT NULL,
    `Lastname` varchar(100) NOT NULL,
    `Email` varchar(100) NOT NULL,
    `Phone` varchar(15) DEFAULT NULL,
    PRIMARY KEY (`Client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `clients` WRITE;
UNLOCK TABLES;

