SELECT p.Property_id, p.Property_type, p.Address, p.City, p.Price_ksh
FROM property p
JOIN owner o ON p.Owner_id = o.Owner_id
WHERE o.Owner_id = 1;  
