
SELECT 
    p.name, SUM(t1.count_journey) AS journeys_count
FROM
    (SELECT 
        ports.id, ports.planet_id, COUNT(j.id) AS count_journey
    FROM
        spaceports ports
    JOIN journeys j ON j.destination_spaceport_id = ports.id
    GROUP BY j.destination_spaceport_id) AS t1
        JOIN
    planets p ON p.id = t1.planet_id
GROUP BY t1.planet_id
ORDER BY journeys_count DESC , name;

