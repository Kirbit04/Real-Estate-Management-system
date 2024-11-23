DROP TABLE IF EXISTS `security_audit`;

CREATE TABLE `security_audit` (
    `Audit_id` int NOT NULL AUTO_INCREMENT,
    `Timestamp` datetime NOT NULL,
    `User_id` int NOT NULL,
    `Action` varchar(255) NOT NULL,
    `Details` text,
    PRIMARY KEY (`Audit_id`),
    FOREIGN KEY (`User_id`) REFERENCES `users`(`User_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `security_audit` WRITE;
UNLOCK TABLES;

