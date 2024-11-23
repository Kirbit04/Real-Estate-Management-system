-- To add data to the agents table

INSERT INTO agent (Agent_id, Firstname, Lastname, Email, Phone, Agency) VALUES
(1, 'David', 'Kamau', 'David.Kamau@gmail.com', '0712345678', 'Kikuyu Realty Ltd'),
(2, 'John', 'Mwangi', 'John.Mwangi@gmail.com', '0723456789', 'Mwangi Properties'),
(3, 'Grace', 'Njeri', 'Grace.Njeri@gmail.com', '0734567890', 'Grace Estates'),
(4, 'James', 'Odinga', 'James.Odinga@gmail.com', '0745678901', 'Odinga Real Estate'),
(5, 'Rose', 'Atieno', 'Rose.Atiens@gmail.com', '0756789012', 'Luo Heritage Realty'),
(6, 'Peter', 'Ngugi', 'Peter.Ngugi@gmail.com', '0767890123', 'Ngugi & Sons Realty'),
(7, 'Mary', 'Ochieng', 'Mary.Ochieng@gmail.com', '0778901234', 'Ochieng Premier Realty'),
(8, 'Charles', 'Kiptoo', 'Charles.Kiptoo@gmail.com', '0789012345', 'Kalenjin Investments'),
(9, 'Faith', 'Salma', 'Faith.Salma@gmail.com', '0790123456', 'Coastline Properties'),
(10, 'Charity', 'Nabwire', 'Charity.Nabwire@gmail.com', '0701234567', 'Bunyasi Estates');

-- To add data to the maintenance requests table

INSERT INTO maintenance_request (Request_id, Request_date, Description, Status, Property_id, Tenant_id) VALUES
(1, '2024-01-15', 'Leaking faucet in the bathroom', 'Pending', 101, 1),
(2, '2024-02-20', 'Broken window in the living room', 'Completed', 102, 2),
(3, '2024-03-10', 'Clogged sink in the kitchen', 'Pending', 103, 3),
(4, '2024-04-01', 'Air conditioning not working', 'In Progress', 104, 4),
(5, '2024-05-05', 'Electricity outage in the building', 'Pending', 105, 5),
(6, '2024-06-10', 'Pest infestation in the kitchen', 'Completed', 106, 6),
(7, '2024-07-15', 'Broken door lock', 'In Progress', 107, 7),
(8, '2024-08-01', 'Water heater malfunctioning', 'Completed', 108, 8),
(9, '2024-09-10', 'Faulty plumbing in the bathroom', 'Pending', 109, 9),
(10, '2024-10-05', 'Damaged floor tiles', 'In Progress', 110, 10);

-- To add data to the lease table

INSERT INTO lease (Lease_id, Lease_start, Lease_end, Monthly_rent, Property_id, Tenant_id) VALUES
(1, '2024-01-01', '2025-01-01', 50000.00, 101, 1),
(2, '2024-02-15', '2025-02-15', 70000.00, 102, 2),
(3, '2024-03-01', '2025-03-01', 45000.00, 103, 3),
(4, '2024-04-01', '2025-04-01', 60000.00, 104, 4),
(5, '2024-05-10', '2025-05-10', 85000.00, 105, 5),
(6, '2024-06-15', '2025-06-15', 30000.00, 106, 6),
(7, '2024-07-01', '2025-07-01', 45000.00, 107, 7),
(8, '2024-08-20', '2025-08-20', 75000.00, 108, 8),
(9, '2024-09-05', '2025-09-05', 120000.00, 109, 9),
(10, '2024-10-01', '2025-10-01', 65000.00, 110, 10);

-- To add data to the owners table

INSERT INTO owner (Owner_id, Firstname, Lastname, Email, Phone_number, Agent_id) VALUES
(1, 'James', 'Karanja', 'james.karanja@gmail.com', '0712345678', 1),
(2, 'Wangari', 'Kamau', 'wangari.kamau@gmail.com', '0723456789', 2),
(3, 'David', 'Ochieng', 'david.ochieng@gmail.com', '0734567890', 3),
(4, 'Mary', 'Mwaniki', 'mary.mwaniki@gmail.com', '0745678901', 4),
(5, 'Grace', 'Atieno', 'grace.atieno@gmail.com', '0756789012', 5),
(6, 'Joseph', 'Mwangi', 'joseph.mwangi@gmail.com', '0767890123', 6),
(7, 'Peter', 'Njiru', 'peter.njiru@gmail.com', '0778901234', 7),
(8, 'Elizabeth', 'Mutiso', 'elizabeth.mutiso@gmail.com', '0789012345', 8),
(9, 'Njeri', 'Gikonyo', 'njeri.gikonyo@gmail.com', '0790123456', 9),
(10, 'John', 'Omondi', 'john.omondi@gmail.com', '0701234567', 10);

-- To add data to the property table

INSERT INTO property (Property_id, Property_type, Address, County, City, Price_ksh, Owner_id, Agent_id, Zipcode, Size_m2) VALUES
(101, 'Apartment', '123 Riverside Drive', 'Nairobi', 'Nairobi', 50000.00, 1, 1, '00100', 120),
(102, 'House', '456 Mountain Road', 'Nakuru', 'Nakuru', 70000.00, 2, 2, '20100', 250),
(103, 'Apartment', '789 Lakeside Avenue', 'Kisumu', 'Kisumu', 45000.00, 3, 3, '40100', 100),
(104, 'Townhouse', '101 Coastal Lane', 'Mombasa', 'Mombasa', 60000.00, 4, 4, '80100', 200),
(105, 'Villa', '202 Beach Road', 'Kilifi', 'Kilifi', 85000.00, 5, 5, '90200', 350),
(106, 'Studio', '303 High Street', 'Meru', 'Nanyuki', 30000.00, 6, 6, '60000', 50),
(107, 'Condo', '404 Parkview Crescent', 'Machakos', 'Kangundo', 45000.00, 7, 7, '90100', 80),
(108, 'Apartment', '505 Downtown Street', 'Nairobi', 'Nairobi', 75000.00, 8, 8, '11000', 150),
(109, 'Mansion', '606 Forest View', 'Embu', 'Kiritiri', 120000.00, 9, 9, '70000', 500),
(110, 'Bungalow', '707 Greenfield Road', 'Nyeri', 'Nyeri', 65000.00, 10, 10, '20000', 200);

-- To add data to the tenants table

INSERT INTO tenant (Tenant_id, Firstname, Lastname, Email, Phone_number, Lease_start, Lease_end, Property_id, Agent_id) VALUES
(1, 'Peter', 'Njiru', 'peter.njiru@gmail.com', '0712345678', '2024-01-01', '2025-01-01', 101, 1),
(2, 'Susan', 'Karanja', 'susan.karanja@gmail.com', '0723456789', '2024-02-15', '2025-02-15', 102, 2),
(3, 'John', 'Ochieng', 'john.ochieng@gmail.com', '0734567890', '2024-03-01', '2025-03-01', 103, 3),
(4, 'Mary', 'Omondi', 'mary.omondi@gmail.com', '0745678901', '2024-04-01', '2025-04-01', 104, 4),
(5, 'Michael', 'Achieng', 'michael.achieng@gmail.com', '0756789012', '2024-05-10', '2025-05-10', 105, 5),
(6, 'Elizabeth', 'Mutiso', 'elizabeth.mutiso@gmail.com', '0767890123', '2024-06-15', '2025-06-15', 106, 6),
(7, 'Njeri', 'Gikonyo', 'njeri.gikonyo@gmail.com', '0778901234', '2024-07-01', '2025-07-01', 107, 7),
(8, 'Robert', 'Kipchirchir', 'robert.kipchirchir@gmail.com', '0789012345', '2024-08-20', '2025-08-20', 108, 8),
(9, 'Wangari', 'Nabwire', 'wangari.nabwire@gmail.com', '0790123456', '2024-09-05', '2025-09-05', 109, 9),
(10, 'James', 'Wekesa', 'james.wekesa@gmail.com', '0701234567', '2024-10-01', '2025-10-01', 110, 10);

-- To add data to the payments table

INSERT INTO payment (Payment_id, Payment_date, Amount_paid, Payment_method, Lease_id) VALUES
(1, '2024-01-10', 50000.00, 'Bank Transfer', 1),
(2, '2024-02-18', 70000.00, 'Mobile Payment', 2),
(3, '2024-03-05', 45000.00, 'Cash', 3),
(4, '2024-04-10', 60000.00, 'Cheque', 4),
(5, '2024-05-15', 85000.00, 'Bank Transfer', 5),
(6, '2024-06-20', 30000.00, 'Mobile Payment', 6),
(7, '2024-07-05', 45000.00, 'Cash', 7),
(8, '2024-08-15', 75000.00, 'Cheque', 8),
(9, '2024-09-12', 120000.00, 'Bank Transfer', 9),
(10, '2024-10-01', 65000.00, 'Mobile Payment', 10);

-- To add data to the client_interactions table
INSERT INTO client_interactions (Client_id, Interaction_date, Interaction_type, Notes) VALUES
(1, '2024-01-15 09:00:00', 'Email', 'Discussed property availability and pricing.'),
(2, '2024-02-20 14:30:00', 'Call', 'Follow-up on maintenance request.'),
(3, '2024-03-10 11:00:00', 'Meeting', 'Client meeting to sign lease agreement.'),
(4, '2024-04-01 16:00:00', 'Email', 'Sent reminder for upcoming payment.'),
(5, '2024-05-05 10:30:00', 'Call', 'Discussed lease renewal options.'),
(6, '2024-06-10 13:00:00', 'Email', 'Informed client about maintenance schedule.'),
(7, '2024-07-15 15:30:00', 'Meeting', 'Inspection of the property with the client.'),
(8, '2024-08-01 09:30:00', 'Email', 'Updated client on payment confirmation.'),
(9, '2024-09-10 10:00:00', 'Call', 'Client inquiry about property details.'),
(10, '2024-10-05 14:00:00', 'Meeting', 'Final walkthrough before move-in.');

-- To add data to the transactions table
INSERT INTO transactions (Property_id, Client_id, Agent_id, Transaction_date, Amount, Status) VALUES
(101, 1, 1, '2024-01-10', 50000.00, 'Completed'),
(102, 2, 2, '2024-02-18', 70000.00, 'Completed'),
(103, 3, 3, '2024-03-05', 45000.00, 'Pending'),
(104, 4, 4, '2024-04-10', 60000.00, 'Completed'),
(105, 5, 5, '2024-05-15', 85000.00, 'Pending'),
(106, 6, 6, '2024-06-20', 30000.00, 'Completed'),
(107, 7, 7, '2024-07-05', 45000.00, 'Pending'),
(108, 8, 8, '2024-08-15', 75000.00, 'Completed'),
(109, 9, 9, '2024-09-12', 120000.00, 'Pending'),
(110, 10, 10, '2024-10-01', 65000.00, 'Completed');

-- To add data to the automated_communications table
INSERT INTO automated_communications (Client_id, Communication_date, Message, Status) VALUES
(1, '2024-01-01 08:00:00', 'Reminder: Your lease starts today!', 'Sent'),
(2, '2024-02-10 10:00:00', 'Notification: Upcoming payment due in 5 days.', 'Sent'),
(3, '2024-03-15 09:00:00', 'Alert: Maintenance request received and scheduled.', 'Sent'),
(4, '2024-04-05 15:00:00', 'Reminder: Lease renewal options available.', 'Pending'),
(5, '2024-05-01 11:00:00', 'Update: Your payment has been confirmed.', 'Sent'),
(6, '2024-06-15 14:00:00', 'Notification: Maintenance request completed.', 'Sent'),
(7, '2024-07-10 16:00:00', 'Alert: Overdue payment reminder.', 'Pending'),
(8, '2024-08-01 08:30:00', 'Update: Property inspection report available.', 'Sent'),
(9, '2024-09-05 09:15:00', 'Notification: Lease end approaching, renew now!', 'Pending'),
(10, '2024-10-01 10:00:00', 'Reminder: Final move-in checklist.', 'Sent');

-- To add data to the security_audit table
INSERT INTO security_audit (Timestamp, User_id, Action, Details) VALUES
('2024-01-01 10:00:00', 1, 'Login', 'User logged in successfully.'),
('2024-01-05 14:30:00', 2, 'Data Update', 'Updated property details for Property_id 102.'),
('2024-02-10 09:00:00', 3, 'Password Change', 'User changed password.'),
('2024-03-15 11:00:00', 4, 'Failed Login', 'Failed login attempt.'),
('2024-04-20 12:00:00', 5, 'Data Deletion', 'Deleted tenant record for Tenant_id 5.'),
('2024-05-25 08:30:00', 6, 'Login', 'User logged in successfully.'),
('2024-06-10 16:00:00', 7, 'Data Update', 'Updated lease details for Lease_id 7.'),
('2024-07-05 13:45:00', 8, 'Failed Login', 'Failed login attempt.'),
('2024-08-01 14:00:00', 9, 'Password Change', 'User changed password.'),
('2024-09-15 09:30:00', 10, 'Login', 'User logged in successfully.');
