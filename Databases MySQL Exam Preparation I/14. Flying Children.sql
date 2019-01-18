
SELECT 
    distinct(customer_id), full_name, age
FROM
    (SELECT 
        customers.customer_id,
            CONCAT(first_name, ' ', last_name) AS full_name,
            TIMESTAMPDIFF(YEAR, date_of_birth, '2016/12/30') AS age
    FROM
        customers
    RIGHT JOIN tickets ON tickets.customer_id = customers.customer_id
    RIGHT JOIN flights ON flights.flight_id = tickets.flight_id
    WHERE
        flights.status = 'Arrived') t1
WHERE
    age < 21
ORDER BY age DESC , customer_id;