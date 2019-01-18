SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS name,
    e.started_on,
    t1.count_of_clients
FROM
    employees e
        RIGHT JOIN
    (SELECT 
        employee_id, COUNT(client_id) AS count_of_clients
    FROM
        employees_clients
    GROUP BY employees_clients.employee_id
    ORDER BY count_of_clients DESC) AS t1 ON t1.employee_id = e.id
ORDER BY t1.count_of_clients DESC , e.id
LIMIT 5;