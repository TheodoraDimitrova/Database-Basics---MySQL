DELETE e . * FROM employees e
        LEFT JOIN
    employees_clients ON e.id = employees_clients.employee_id 
WHERE
    employees_clients.client_id IS NULL;