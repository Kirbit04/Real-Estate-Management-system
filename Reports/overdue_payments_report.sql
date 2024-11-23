-- Generate a report on overdue payments
INSERT INTO reports (Generated_on, Report_data)
SELECT NOW(), COALESCE(
    JSON_ARRAYAGG(
        JSON_OBJECT(
            'Payment_id', p.Payment_id,
            'Payment_date', p.Payment_date,
            'Amount_paid', p.Amount_paid,
            'Lease_id', l.Lease_id,
            'Tenant_id', t.Tenant_id,
            'Tenant_Firstname', t.Firstname,
            'Tenant_Lastname', t.Lastname
        )
    ),
    JSON_ARRAY()
) AS Report_data
FROM payment p
JOIN lease l ON p.Lease_id = l.Lease_id
JOIN tenant t ON l.Tenant_id = t.Tenant_id
WHERE p.Payment_date < CURDATE() AND p.Amount_paid IS NULL;

