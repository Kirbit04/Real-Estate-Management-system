-- To generate a report on overdue payments

SELECT p.Payment_id, p.Payment_date, p.Amount_paid, l.Lease_id, t.Tenant_id, t.Firstname AS Tenant_Firstname, 
       t.Lastname AS Tenant_Lastname
FROM payment p
JOIN lease l ON p.Lease_id = l.Lease_id
JOIN tenant t ON l.Tenant_id = t.Tenant_id
WHERE p.Payment_date < CURDATE() AND p.Amount_paid IS NULL;

-- To generate a report on active leases in a particular city

SELECT p.City, COUNT(l.Lease_id) AS Active_Leases
FROM lease l
JOIN property p ON l.Property_id = p.Property_id
WHERE l.Lease_end > CURDATE()
GROUP BY p.City;

-- To generate a report on tenants with overdue maintenance requests

SELECT t.Tenant_id, t.Firstname AS Tenant_Firstname, t.Lastname AS Tenant_Lastname,
       m.Request_id, m.Description, m.Request_date
FROM tenant t
JOIN maintenance_request m ON t.Tenant_id = m.Tenant_id
WHERE m.Request_date < CURDATE() AND m.Status != 'Completed';

-- To generate a report of all the properties and the total revenue from payments

SELECT property.Address, SUM(payment.Amount_paid) AS Total_Revenue
FROM property
JOIN lease ON property.Property_id = lease.Property_id
JOIN payment ON lease.Lease_id = payment.Lease_id
GROUP BY property.Address;


