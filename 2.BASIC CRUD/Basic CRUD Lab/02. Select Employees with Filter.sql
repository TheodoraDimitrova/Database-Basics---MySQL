SELECT 
    id,
    CONCAT(first_name, ' ', last_name) AS name,
    job_title,
    salary
FROM
    employees
WHERE
    salary > 1000
ORDER BY (id); 