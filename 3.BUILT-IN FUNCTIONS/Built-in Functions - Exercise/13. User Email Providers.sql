SELECT 
    user_name,
    SUBSTRING(email,
        POSITION('@' IN email) + 1,
        LENGTH(email)) AS 'Email Provider'
FROM
    users
ORDER BY `Email Provider` , user_name;