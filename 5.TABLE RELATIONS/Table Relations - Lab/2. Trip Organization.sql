SELECT 
    c.id AS driver_id,
    v.vehicle_type,
    CONCAT(first_name, ' ', last_name) AS driver_name
FROM
    campers c
        JOIN
    vehicles v ON c.id = v.driver_id;