
SELECT 
    t1.id, p.name, ports.name, t1.purpose
FROM
    (SELECT 
        id,
            DATEDIFF(journey_end, journey_start) diff,
            purpose,
            destination_spaceport_id
    FROM
        journeys
    ORDER BY diff
    LIMIT 1) AS t1
        JOIN
    spaceports ports ON ports.id = t1.destination_spaceport_id
        JOIN
    planets p ON p.id = ports.planet_id;