DROP TABLE IF EXISTS `automated_communications`;

CREATE TABLE `automated_communications` (
    `Communication_id` int NOT NULL AUTO_INCREMENT,
    `Client_id` int NOT NULL,
    `Communication_date` datetime NOT NULL,
    `Message` text NOT NULL,
    `Status` varchar(50) NOT NULL,
    PRIMARY KEY (`Communication_id`),
    FOREIGN KEY (`Client_id`) REFERENCES `clients`(`Client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `automated_communications` WRITE;
UNLOCK TABLES;

