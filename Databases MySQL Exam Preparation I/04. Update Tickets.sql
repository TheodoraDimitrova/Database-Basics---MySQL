


UPDATE tickets 
SET 
    price = (price * 50) / 100
WHERE
    ticket_id IN (SELECT 
            ticket_id
        FROM
            (SELECT 
                t.ticket_id
            FROM
                tickets t
            JOIN flights f ON f.flight_id = t.flight_id
            JOIN (SELECT 
                *
            FROM
                airlines
            ORDER BY rating DESC
            LIMIT 1) a ON f.airline_id = a.airline_id) t1);