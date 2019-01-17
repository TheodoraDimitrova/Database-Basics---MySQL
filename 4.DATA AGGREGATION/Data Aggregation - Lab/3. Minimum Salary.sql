SELECT 
    department_id, ROUND(MIN(salary), 2) AS 'salary'
FROM
    employees
GROUP BY department_id
HAVING salary > 800;