SELECT 
    branches.name, COUNT(employees_clients.client_id) AS clients
FROM
    branches
        JOIN
    employees ON employees.branch_id = branches.id
        JOIN
    employees_clients ON employees_clients.employee_id = employees.id
GROUP BY branches.id
ORDER BY clients DESC , branches.id
;