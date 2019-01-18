

SELECT 
    t1.flight_id,
    t1.departure_time,
    t1.arrival_time,
    a.airport_name AS origin,
    a1.airport_name AS destination
FROM
    (SELECT 
        *
    FROM
        flights
    WHERE
        status = 'Departing'
    ORDER BY departure_time DESC
    LIMIT 5) t1
        JOIN
    airports a ON a.airport_id = t1.origin_airport_id
        JOIN
    airports a1 ON a1.airport_id = t1.destination_airport_id
ORDER BY departure_time , flight_id;