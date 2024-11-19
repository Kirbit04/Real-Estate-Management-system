-- To get the details of a tenant, the property they're renting and the amount they paid for the lease

SELECT tenant.Firstname, tenant.Lastname, property.Address, payment.Amount_paid
FROM tenant
JOIN lease ON tenant.Tenant_id = lease.Tenant_id
JOIN payment ON lease.Lease_id = payment.Lease_id
JOIN property ON lease.Property_id = property.Property_id
WHERE tenant.Tenant_id = 1;

-- To fetch all properties, their owners and the agents that manage those properties using INNER JOIN

SELECT p.Property_id, p.Property_type, p.Address, p.City, o.Owner_id, o.Firstname AS Owner_Firstname, 
       o.Lastname AS Owner_Lastname, a.Agent_id, a.Firstname AS Agent_Firstname, a.Lastname AS Agent_Lastname
FROM property p
INNER JOIN owner o ON p.Owner_id = o.Owner_id
INNER JOIN agent a ON p.Agent_id = a.Agent_id;

-- To fetch all properties, their owners and the agents that manage those properties using OUTER JOIN
SELECT p.Property_id, p.Property_type, p.Address, p.City, o.Owner_id, o.Firstname AS Owner_Firstname, 
       o.Lastname AS Owner_Lastname, a.Agent_id, a.Firstname AS Agent_Firstname, a.Lastname AS Agent_Lastname
FROM property p
LEFT JOIN owner o ON p.Owner_id = o.Owner_id
LEFT JOIN agent a ON p.Agent_id = a.Agent_id;

-- To fetch data for tenants, their leases and respective payments

SELECT l.Lease_id, t.Tenant_id, t.Firstname AS Tenant_Firstname, t.Lastname AS Tenant_Lastname, 
       l.Lease_start, l.Lease_end, p.Payment_id, p.Payment_date, p.Amount_paid
FROM lease l
JOIN tenant t ON l.Tenant_id = t.Tenant_id
JOIN payment p ON l.Lease_id = p.Lease_id;



