SELECT 
    t.ticket_id,
    a.airport_name,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name
FROM
    tickets t
        JOIN
    customers c ON c.customer_id = t.customer_id
        JOIN
    flights f ON f.flight_id = t.flight_id
        JOIN
    airports a ON a.airport_id = f.destination_airport_id
WHERE
    price < 5000 AND class = 'First';