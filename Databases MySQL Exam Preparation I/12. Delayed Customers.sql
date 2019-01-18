SELECT 
    t1.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS full_name,
    t1.price,
    a.airport_name
FROM
    (SELECT 
        t.customer_id, t.price, f.destination_airport_id
    FROM
        flights f
    JOIN tickets t ON t.flight_id = f.flight_id
    WHERE
        status = 'Delayed'
    ORDER BY t.price DESC
    LIMIT 3) t1
        JOIN
    airports a ON a.airport_id = t1.destination_airport_id
        JOIN
    customers c ON t1.customer_id = c.customer_id;