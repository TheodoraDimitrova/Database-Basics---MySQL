SELECT 
    SUBSTRING_INDEX(c.full_name, ' ', 1) AS client_first_name,
    e.first_name
FROM
    employees_clients ec
        JOIN
    clients c ON c.id = ec.client_id
        JOIN
    employees e ON e.id = ec.employee_id
HAVING client_first_name = e.first_name
ORDER BY c.id;