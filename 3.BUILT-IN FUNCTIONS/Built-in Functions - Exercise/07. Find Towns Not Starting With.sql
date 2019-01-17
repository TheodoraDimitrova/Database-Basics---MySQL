SELECT 
    *
FROM
    `towns`
WHERE
    `name` REGEXP '^[^RrBbDd]'
ORDER BY `name`;