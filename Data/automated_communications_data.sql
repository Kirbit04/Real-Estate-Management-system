DELETE FROM `automated_communications`;

INSERT INTO `automated_communications` (Communication_id, Client_id, Communication_date, Message, Status) VALUES
(1, 1, '2024-11-20 10:00:00', 'Welcome message', 'Sent'),
(2, 2, '2024-11-21 11:00:00', 'Follow-up', 'Sent'),
(3, 3, '2024-11-22 12:00:00', 'Survey invitation', 'Pending'),
(4, 4, '2024-11-23 13:00:00', 'Reminder', 'Sent'),
(5, 5, '2024-11-24 14:00:00', 'Promotion', 'Sent'),
(6, 6, '2024-11-25 15:00:00', 'Update', 'Failed'),
(7, 7, '2024-11-26 16:00:00', 'Newsletter', 'Sent'),
(8, 8, '2024-11-27 17:00:00', 'Birthday wishes', 'Sent'),
(9, 9, '2024-11-28 18:00:00', 'Alert', 'Pending'),
(10, 10, '2024-11-29 19:00:00', 'Notification', 'Sent');

