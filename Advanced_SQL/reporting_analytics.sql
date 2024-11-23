CREATE TABLE `reports` (
    `Report_id` int NOT NULL AUTO_INCREMENT,
    `Generated_on` datetime NOT NULL,
    `Report_data` json NOT NULL,
    PRIMARY KEY (`Report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
