-- To generate a report on overdue payments

INSERT INTO reports (Generated_on, Report_data)
SELECT NOW(), JSON_ARRAYAGG(
    JSON_OBJECT(
        'Payment_id', p.Payment_id,
        'Payment_date', p.Payment_date,
        'Amount_paid', p.Amount_paid,
        'Lease_id', l.Lease_id,
        'Tenant_id', t.Tenant_id,
        'Tenant_Firstname', t.Firstname,
        'Tenant_Lastname', t.Lastname
    )
) AS Report_data
FROM payment p
JOIN lease l ON p.Lease_id = l.Lease_id
JOIN tenant t ON l.Tenant_id = t.Tenant_id
WHERE p.Payment_date < CURDATE() AND p.Amount_paid IS NULL;

-- To generate a report on active leases in a particular city

INSERT INTO reports (Generated_on, Report_data)
SELECT NOW(), JSON_ARRAYAGG(
    JSON_OBJECT(
        'City', p.City,
        'Active_Leases', COUNT(l.Lease_id)
    )
) AS Report_data
FROM lease l
JOIN property p ON l.Property_id = p.Property_id
WHERE l.Lease_end > CURDATE()
GROUP BY p.City;

-- To generate a report on tenants with overdue maintenance requests

INSERT INTO reports (Generated_on, Report_data)
SELECT NOW(), JSON_ARRAYAGG(
    JSON_OBJECT(
        'Tenant_id', t.Tenant_id,
        'Tenant_Firstname', t.Firstname,
        'Tenant_Lastname', t.Lastname,
        'Request_id', m.Request_id,
        'Description', m.Description,
        'Request_date', m.Request_date
    )
) AS Report_data
FROM tenant t
JOIN maintenance_request m ON t.Tenant_id = m.Tenant_id
WHERE m.Request_date < CURDATE() AND m.Status != 'Completed';

-- To generate a report of all the properties and the total revenue from payments

INSERT INTO reports (Generated_on, Report_data)
SELECT NOW(), JSON_ARRAYAGG(
    JSON_OBJECT(
        'Address', property.Address,
        'Total_Revenue', SUM(payment.Amount_paid)
    )
) AS Report_data
FROM property
JOIN lease ON property.Property_id = lease.Property_id
JOIN payment ON lease.Lease_id = payment.Lease_id
GROUP BY property.Address;
