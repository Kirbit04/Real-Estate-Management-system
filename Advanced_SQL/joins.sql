SELECT tenant.Firstname, tenant.Lastname, property.Address, payment.Amount_paid
FROM tenant
JOIN lease ON tenant.Tenant_id = lease.Tenant_id
JOIN payment ON lease.Lease_id = payment.Lease_id
JOIN property ON lease.Property_id = property.Property_id
WHERE tenant.Tenant_id = 1;
