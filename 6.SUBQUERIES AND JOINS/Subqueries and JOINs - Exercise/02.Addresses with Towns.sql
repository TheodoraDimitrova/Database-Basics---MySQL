

SELECT 
    employee_id,first_name, last_name, d.name
FROM
    employees 
        JOIN
    departments d ON employees.department_id = d.department_id
    where name='Sales'
       
ORDER BY employee_id desc;
