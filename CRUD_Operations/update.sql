-- To update a tenants information

UPDATE `tenant` SET `Phone_number` = '0723456789' WHERE `Tenant_id` = 1;

-- To update the status of a maintenance request

UPDATE maintenance_request
SET Status = 'Completed'
WHERE Request_id = 3;

-- To update the monthly rent on a lease

UPDATE lease
SET Monthly_rent = 70000.00
WHERE Lease_id = 4;

-- To update a property if an agent is reassigned 

UPDATE property
SET Agent_id = 2
WHERE Property_id = 101;

