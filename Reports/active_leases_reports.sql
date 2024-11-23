-- Generate a report on active leases in a particular city

INSERT INTO reports (Generated_on, Report_data)
SELECT NOW(), JSON_ARRAYAGG(
    JSON_OBJECT(
        'City', City,
        'Active_Leases', Active_Leases
    )
) AS Report_data
FROM (
    SELECT p.City, COUNT(l.Lease_id) AS Active_Leases
    FROM lease l
    JOIN property p ON l.Property_id = p.Property_id
    WHERE l.Lease_end > CURDATE()
    GROUP BY p.City
) AS ActiveLeasesData;

