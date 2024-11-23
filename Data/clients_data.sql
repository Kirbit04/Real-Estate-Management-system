DELETE FROM `clients`;

INSERT IGNORE INTO `clients` (Client_id, Firstname, Lastname, Email, Phone) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '1234567890'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '1234567891'),
(3, 'Sam', 'Wilson', 'sam.wilson@example.com', '1234567892'),
(4, 'Lisa', 'Taylor', 'lisa.taylor@example.com', '1234567893'),
(5, 'Mike', 'Brown', 'mike.brown@example.com', '1234567894'),
(6, 'Emily', 'Davis', 'emily.davis@example.com', '1234567895'),
(7, 'David', 'Clark', 'david.clark@example.com', '1234567896'),
(8, 'Susan', 'Lewis', 'susan.lewis@example.com', '1234567897'),
(9, 'Paul', 'Young', 'paul.young@example.com', '1234567898'),
(10, 'Anna', 'King', 'anna.king@example.com', '1234567899');

