-- To calculate the total number of leases each agent manages

SELECT Agent_id, COUNT(*) AS Total_Leases FROM lease GROUP BY Agent_id;

-- To show the total revenue generated by an agent

SELECT a.Agent_id, a.Firstname AS Agent_Firstname, a.Lastname AS Agent_Lastname, 
       SUM(p.Amount_paid) AS Total_Revenue
FROM agent a
JOIN property p ON a.Agent_id = p.Agent_id
JOIN lease l ON p.Property_id = l.Property_id
JOIN payment p ON l.Lease_id = p.Lease_id
GROUP BY a.Agent_id;

-- To show the average monthly rent for the properties in a specific area

SELECT AVG(p.Price_ksh) AS Avg_Monthly_Rent
FROM property p
WHERE p.City = 'Nairobi';