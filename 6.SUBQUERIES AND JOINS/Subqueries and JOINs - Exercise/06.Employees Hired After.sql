

SELECT 
   e.first_name,e.last_name,e.hire_date, d.name 
FROM
    employees e
        JOIN
    departments d ON e.department_id = d.department_id
WHERE
    e.hire_date > '1999/1/1'
        AND d.name IN ('Finance' , 'Sales')
ORDER BY e.hire_date;