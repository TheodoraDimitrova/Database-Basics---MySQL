

SELECT 
    flight_id, departure_time, arrival_time
FROM
    flights
WHERE
    status = 'Delayed'
ORDER BY flight_id;