
SELECT 
    employees.employee_id,
    employees.first_name,
    IF(p.start_date >= '2005/01/01',
        NULL,
        p.name) AS project_name
FROM
    employees
        JOIN
    employees_projects ON employees.employee_id = employees_projects.employee_id
        JOIN
    projects p ON p.project_id = employees_projects.project_id
WHERE
    employees_projects.employee_id = 24
ORDER BY project_name
;