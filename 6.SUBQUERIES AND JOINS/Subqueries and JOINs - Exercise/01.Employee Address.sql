
SELECT 
    employee_id, job_title, a.address_id, address_text
FROM
    employees e
        JOIN
    addresses a ON a.address_id = e.address_id
ORDER BY address_id
LIMIT 5;
