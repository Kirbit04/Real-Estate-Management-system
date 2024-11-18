SELECT Firstname, Lastname FROM tenant WHERE Tenant_id IN (SELECT Tenant_id FROM lease WHERE Property_id = 1);
