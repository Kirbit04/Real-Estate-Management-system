-- To fetch all the paymets that have been made towards a specific lease

SELECT p.Payment_id, p.Payment_date, p.Amount_paid, p.Payment_method
FROM payment p
JOIN lease l ON p.Lease_id = l.Lease_id
WHERE l.Lease_id = 6;
