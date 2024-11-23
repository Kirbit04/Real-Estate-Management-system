-- To show the agents and the tenants each caters to

SELECT a.Agent_id, a.Firstname AS Agent_Firstname, a.Lastname AS Agent_Lastname,
       t.Tenant_id, t.Firstname AS Tenant_Firstname, t.Lastname AS Tenant_Lastname, t.Email AS Tenant_Email
FROM agent a
JOIN property p ON a.Agent_id = p.Agent_id
JOIN lease l ON p.Property_id = l.Property_id
JOIN tenant t ON l.Tenant_id = t.Tenant_id;
