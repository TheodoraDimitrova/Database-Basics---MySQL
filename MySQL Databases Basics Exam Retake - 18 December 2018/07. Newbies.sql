SELECT 
    e.id,
    CONCAT(e.first_name, ' ', e.last_name) AS full_name,
    e.salary,
    e.started_on
FROM
    employees e
WHERE
    e.salary > 100000
        AND started_on > '2018-01-01'
ORDER BY salary DESC;