SELECT 
    *
FROM
    soft_uni.employees;


SELECT 
    e.employee_id,
    CONCAT(e.first_name, ' ', e.last_name) AS employee_name,
     CONCAT(m.first_name, ' ', m.last_name) AS manager_name,
    d.name as department_name
   
FROM
    employees AS e
        JOIN
    employees AS m ON m.employee_id = e.manager_id
        JOIN
    departments AS d ON e.department_id = d.department_id
ORDER BY e.employee_id
LIMIT 5;