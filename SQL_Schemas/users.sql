DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
    `User_id` int NOT NULL AUTO_INCREMENT,
    `Username` varchar(100) NOT NULL,
    `Password` varchar(100) NOT NULL,
    `Email` varchar(100) NOT NULL,
    PRIMARY KEY (`User_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `users` WRITE;
UNLOCK TABLES;

