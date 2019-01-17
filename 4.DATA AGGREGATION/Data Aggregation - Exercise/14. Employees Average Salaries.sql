create table NewTable as
Select *
FROM employees
WHERE Salary > 30000;
delete FROM NewTable
WHERE manager_id = 42;

UPDATE NewTable
SET salary =salary+ 5000
WHERE department_id = 1;

SELECT 
    department_id, AVG(salary) AS AverageSalary
FROM
    NewTable
GROUP BY department_id;