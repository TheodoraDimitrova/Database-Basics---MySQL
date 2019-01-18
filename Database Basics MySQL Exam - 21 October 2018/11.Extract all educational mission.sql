
SELECT 
    p.name, ports.name
FROM
    journeys j
        JOIN
    spaceports ports ON j.destination_spaceport_id = ports.id
        JOIN
    planets p ON p.id = ports.planet_id
WHERE
    purpose = 'Educational'
ORDER BY ports.name DESC;