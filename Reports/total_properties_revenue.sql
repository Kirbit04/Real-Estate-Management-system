-- Generate a report of all the properties and the total revenue from payments

INSERT INTO reports (Generated_on, Report_data)
SELECT NOW(), JSON_ARRAYAGG(
    JSON_OBJECT(
        'Address', Address,
        'Total_Revenue', Total_Revenue
    )
) AS Report_data
FROM (
    SELECT property.Address, SUM(payment.Amount_paid) AS Total_Revenue
    FROM property
    JOIN lease ON property.Property_id = lease.Property_id
    JOIN payment ON lease.Lease_id = payment.Lease_id
    GROUP BY property.Address
) AS RevenueData;

