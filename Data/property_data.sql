SET foreign_key_checks = 0;

-- Your data update/delete statements here
DELETE FROM `property` WHERE `Property_id` IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

INSERT INTO `property` (Property_id, Property_type, Address, County, City, Price_ksh, Owner_id, Agent_id, Zipcode, Size_m2) VALUES
(1, 'Apartment', '123 Main St', 'Nairobi', 'Nairobi', 10000000.00, 1, 1, '00100', 100),
(2, 'House', '456 Elm St', 'Nairobi', 'Nairobi', 20000000.00, 2, 2, '00101', 200),
(3, 'Condo', '789 Pine St', 'Nairobi', 'Nairobi', 15000000.00, 3, 3, '00102', 150),
(4, 'Villa', '101 Maple St', 'Nairobi', 'Nairobi', 30000000.00, 4, 4, '00103', 300),
(5, 'Townhouse', '202 Oak St', 'Nairobi', 'Nairobi', 12000000.00, 5, 5, '00104', 120),
(6, 'Duplex', '303 Cedar St', 'Nairobi', 'Nairobi', 13000000.00, 6, 6, '00105', 130),
(7, 'Penthouse', '404 Birch St', 'Nairobi', 'Nairobi', 25000000.00, 7, 7, '00106', 250),
(8, 'Studio', '505 Spruce St', 'Nairobi', 'Nairobi', 8000000.00, 8, 8, '00107', 80),
(9, 'Loft', '606 Fir St', 'Nairobi', 'Nairobi', 14000000.00, 9, 9, '00108', 140),
(10, 'Cottage', '707 Redwood St', 'Nairobi', 'Nairobi', 9000000.00, 10, 10, '00109', 90);

-- Re-enable foreign key checks
SET foreign_key_checks = 1;

