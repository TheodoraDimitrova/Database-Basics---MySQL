SELECT 
    `first_name`, `last_name`, `job_title`
FROM
    `employees`
WHERE
    `salary` >= 20000.00
        AND `salary` <= 30000.00
ORDER BY `employee_id`;