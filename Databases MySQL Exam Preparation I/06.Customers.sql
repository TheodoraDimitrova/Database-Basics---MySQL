
SELECT 
    customer_id,
    CONCAT(first_name, ' ', last_name) AS full_name,
    gender
FROM
    customers
ORDER BY full_name , customer_id;