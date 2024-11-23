DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
    `Transaction_id` int NOT NULL AUTO_INCREMENT,
    `Property_id` int NOT NULL,
    `Client_id` int NOT NULL,
    `Agent_id` int NOT NULL,
    `Transaction_date` date NOT NULL,
    `Amount` decimal(10,2) NOT NULL,
    `Status` varchar(50) NOT NULL,
    PRIMARY KEY (`Transaction_id`),
    FOREIGN KEY (`Property_id`) REFERENCES `property`(`Property_id`),
    FOREIGN KEY (`Client_id`) REFERENCES `clients`(`Client_id`),
    FOREIGN KEY (`Agent_id`) REFERENCES `agent`(`Agent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `transactions` WRITE;
UNLOCK TABLES;

