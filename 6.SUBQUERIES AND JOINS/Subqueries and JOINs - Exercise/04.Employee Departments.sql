SELECT 
    employee_id,first_name, salary,d.name
FROM
    employees e
        JOIN
    departments d ON e.department_id = d.department_id
    where e.salary>15000
    order by e.department_id desc
    limit 5;