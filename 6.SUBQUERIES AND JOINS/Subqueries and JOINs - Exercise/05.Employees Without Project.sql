
SELECT 
    e.employee_id, first_name
FROM
    employees e
        LEFT JOIN
    employees_projects ep ON e.employee_id = ep.employee_id
WHERE
    ep.project_id IS NULL
ORDER BY e.employee_id DESC
LIMIT 3;