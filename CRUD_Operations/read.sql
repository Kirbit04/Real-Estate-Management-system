-- To select all properties that belong to a specific owner

SELECT p.Property_id, p.Property_type, p.Address, p.County, p.City, p.Price_ksh, p.Size_m2
FROM property p
JOIN owner o ON p.Owner_id = o.Owner_id
WHERE o.Owner_id = 3;

-- To fetch all the paymets that have been made towards a specific lease

SELECT p.Payment_id, p.Payment_date, p.Amount_paid, p.Payment_method
FROM payment p
JOIN lease l ON p.Lease_id = l.Lease_id
WHERE l.Lease_id = 6;

-- To get all the maintentance requests for a particular property

SELECT mr.Request_id, mr.Request_date, mr.Description, mr.Status
FROM maintenance_request mr
JOIN property p ON mr.Property_id = p.Property_id
WHERE p.Property_id = 107;

-- To show the agents and the tenants each caters to

SELECT a.Agent_id, a.Firstname AS Agent_Firstname, a.Lastname AS Agent_Lastname,
       t.Tenant_id, t.Firstname AS Tenant_Firstname, t.Lastname AS Tenant_Lastname, t.Email AS Tenant_Email
FROM agent a
JOIN property p ON a.Agent_id = p.Agent_id
JOIN lease l ON p.Property_id = l.Property_id
JOIN tenant t ON l.Tenant_id = t.Tenant_id;
