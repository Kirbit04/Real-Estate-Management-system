DROP TABLE IF EXISTS `reports`;

CREATE TABLE `reports` (
    `Report_id` int NOT NULL AUTO_INCREMENT,
    `Generated_on` datetime NOT NULL,
    `Report_data` JSON NOT NULL,
    PRIMARY KEY (`Report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `reports` WRITE;
UNLOCK TABLES;
