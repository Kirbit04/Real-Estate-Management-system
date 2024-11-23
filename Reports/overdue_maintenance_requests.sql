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
