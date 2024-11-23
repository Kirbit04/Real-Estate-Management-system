DROP TABLE IF EXISTS `tenant`;

CREATE TABLE `tenant` (
  `Tenant_id` INT NOT NULL AUTO_INCREMENT,
  `Firstname` VARCHAR(100) NOT NULL,
  `Lastname` VARCHAR(100) NOT NULL,
  `Email` VARCHAR(100) NOT NULL,
  `Phone_number` VARCHAR(15) DEFAULT NULL,
  `Lease_start` DATE DEFAULT NULL,
  `Lease_end` DATE DEFAULT NULL,
  `Property_id` INT DEFAULT NULL,
  `Agent_id` INT DEFAULT NULL,
  PRIMARY KEY (`Tenant_id`),
  INDEX `Property_id` (`Property_id`),
  INDEX `Agent_id` (`Agent_id`),
  CONSTRAINT `tenant_ibfk_1` FOREIGN KEY (`Property_id`) REFERENCES `property` (`Property_id`),
  CONSTRAINT `tenant_ibfk_2` FOREIGN KEY (`Agent_id`) REFERENCES `agent` (`Agent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `tenant` WRITE; 

UNLOCK TABLES;
