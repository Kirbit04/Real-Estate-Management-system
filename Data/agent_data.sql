DELETE FROM `agent`;

INSERT IGNORE INTO `agent` (Agent_id, Firstname, Lastname, Email, Phone, Agency) VALUES
(1, 'Alice', 'Brown', 'alice.brown@example.com', '1234500001', 'RealEstateCo'),
(2, 'Bob', 'Green', 'bob.green@example.com', '1234500002', 'PropertyHub'),
(3, 'Charlie', 'Black', 'charlie.black@example.com', '1234500003', 'HomeFinders'),
(4, 'Donna', 'White', 'donna.white@example.com', '1234500004', 'SecureEstates'),
(5, 'Evan', 'Grey', 'evan.grey@example.com', '1234500005', 'PrimeLands'),
(6, 'Fiona', 'Blue', 'fiona.blue@example.com', '1234500006', 'RealtyWorld'),
(7, 'George', 'Violet', 'george.violet@example.com', '1234500007', 'MetroEstates'),
(8, 'Helen', 'Indigo', 'helen.indigo@example.com', '1234500008', 'CityProperties'),
(9, 'Ivan', 'Red', 'ivan.red@example.com', '1234500009', 'SuburbanHomes'),
(10, 'Jack', 'Yellow', 'jack.yellow@example.com', '1234500010', 'ModernResidences');

