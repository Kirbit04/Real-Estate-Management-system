CREATE TABLE `client_interactions` (
    `Interaction_id` int NOT NULL AUTO_INCREMENT,
    `Client_id` int NOT NULL,
    `Interaction_date` datetime NOT NULL,
    `Interaction_type` varchar(50) NOT NULL,
    `Notes` text,
    PRIMARY KEY (`Interaction_id`),
    FOREIGN KEY (`Client_id`) REFERENCES `clients`(`Client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
