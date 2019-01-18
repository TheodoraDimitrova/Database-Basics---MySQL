SELECT 
    ship.name AS spaceship_name, ports.name
FROM
    (SELECT 
        id, name
    FROM
        spaceships
    ORDER BY light_speed_rate DESC
    LIMIT 1) AS ship
        JOIN
    journeys j ON j.spaceship_id = ship.id
        JOIN
    spaceports ports ON ports.id = j.destination_spaceport_id;