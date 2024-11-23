# Real-Estate-Management-system
Real Estate Management System - README

Overview

The Real Estate Management System is designed to efficiently manage real estate data, including agents, properties, leases, payments, and maintenance requests. This system utilizes a structured database schema built with MySQL, allowing for effective data manipulation and reporting.

Objectives

1. To design a normalized database schema for managing real estate data.

2. To implement CRUD (Create, Read, Update, Delete) operations and advanced queries for data manipulation and reporting.

3. To validate the system with test data and generate meaningful reports.

Prerequisites

- MySQL Server: Ensure you have MySQL Server installed on your machine. You can download it from MySQL Downloads.

- MySQL Workbench: It is recommended to use MySQL Workbench as your IDE for database management. Download it from MySQL Workbench Downloads.

Setting Up the Database

Step 1: Install MySQL Server and Workbench

1. Download and install MySQL Server and MySQL Workbench.

2. Follow the installation instructions provided on the MySQL website.

Step 2: Create a New Database

1. Open MySQL Workbench.

2. Connect to your MySQL server instance.

3. Execute the following SQL command to create a new database:
CREATE DATABASE real_estate_management;
USE real_estate_management;

Step 3: Create Tables

1. Execute the SQL scripts provided in the report to create the necessary tables. For example:

DROP TABLE IF EXISTS `agent`;
CREATE TABLE `agent` (
    `Agent_id` int NOT NULL,
    `Firstname` varchar(50) NOT NULL,
    `Lastname` varchar(50) NOT NULL,
    `Email` varchar(100) NOT NULL,
    `Phone` varchar(15) NOT NULL,
    `Agency` varchar(100) NOT NULL,
    PRIMARY KEY (`Agent_id`)
);

2. Repeat this process for all tables defined in the report, including maintenance_request, payment, lease, and property.

Step 4: Insert Sample Data

1. Use the provided SQL scripts to insert sample data into the tables. For example:
INSERT INTO agent (Agent_id, Firstname, Lastname, Email, Phone, Agency) VALUES
(1, 'David', 'Kamau', 'David.Kamau@gmail.com', '0712345678', 'Kikuyu Realty Ltd'),
(2, 'John', 'Mwangi', 'John.Mwangi@gmail.com', '0723456789', 'Mwangi Properties');

Step 5: Run the Database

1. After setting up the tables and inserting data, you can run queries to interact with the database.

2. Use the SQL editor in MySQL Workbench to execute queries for CRUD operations and reporting.

Using the Database

CRUD Operations

- Create: Use INSERT statements to add new records to the tables.

- Read: Use SELECT statements to retrieve data from the tables.

- Update: Use UPDATE statements to modify existing records.

- Delete: Use DELETE statements to remove records from the tables.

Example Queries

- To retrieve all agents:

SELECT * FROM agent;

- To update an agent's email:

UPDATE agent SET Email = 'new.email@example.com' WHERE Agent_id = 1;

- To delete a maintenance request:

DELETE FROM maintenance_request WHERE Request_id = 1;

Reporting

- Generate reports using advanced SQL queries. For example, to get total revenue from payments:
SELECT property.Address, SUM(payment.Amount_paid) AS Total_Revenue
FROM property
JOIN lease ON property.Property_id = lease.Property_id
JOIN payment ON lease.Lease_id = payment.Lease_id
GROUP BY property.Address;

Conclusion

The Real Estate Management System provides a structured and efficient way to manage real estate data. By following the steps outlined in this README, you can set up the database, run it, and utilize it for various operations and reporting needs.

References

1. MySQL Documentation: MySQL Docs

2. ER Diagram Design Tools: Lucidchart, Draw.io

3. SQL Tutorials: TutorialsPoint SQL, W3Schools SQL

For any further questions or issues, please refer to the documentation or seek assistance from the community forums.
