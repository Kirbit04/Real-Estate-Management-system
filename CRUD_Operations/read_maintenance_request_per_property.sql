-- To get all the maintentance requests for a particular property

SELECT mr.Request_id, mr.Request_date, mr.Description, mr.Status
FROM maintenance_request mr
JOIN property p ON mr.Property_id = p.Property_id
WHERE p.Property_id = 107;
