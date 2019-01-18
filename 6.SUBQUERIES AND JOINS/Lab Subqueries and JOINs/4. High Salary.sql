SELECT * FROM soft_uni.employees;

SELECT 
    count(*) from employees e
    where e.salary >
    (SELECT 
        AVG(salary) as salary
    FROM
        employees) ;