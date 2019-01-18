

SELECT 
    MIN(salary) AS min_average_salary
FROM
    (SELECT 
        department_id, AVG(salary) AS salary
    FROM
        employees
    GROUP BY department_id) AS res;