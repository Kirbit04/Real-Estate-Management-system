-- To select all properties that belong to a specific owner

SELECT p.Property_id, p.Property_type, p.Address, p.County, p.City, p.Price_ksh, p.Size_m2
FROM property p
JOIN owner o ON p.Owner_id = o.Owner_id
WHERE o.Owner_id = 3;
