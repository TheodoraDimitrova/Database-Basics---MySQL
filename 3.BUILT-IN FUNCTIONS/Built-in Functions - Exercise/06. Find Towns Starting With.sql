SELECT 
    *
FROM
    `towns`
WHERE
    `name` REGEXP '^[MmKkBbEe]'
ORDER BY `name`;