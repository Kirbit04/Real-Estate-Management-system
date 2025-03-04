SELECT 
    p.Property_ID,
    p.Address,
    p.City,
    SUM(pm.Amount_paid) AS Total_Rent_Collected
FROM 
    Property p
JOIN 
    Lease l ON p.Property_ID = l.Property_ID
JOIN 
    Payment pm ON l.Lease_ID = pm.Lease_ID
GROUP BY 
    p.Property_ID, p.Address, p.City
ORDER BY 
    Total_Rent_Collected DESC;
