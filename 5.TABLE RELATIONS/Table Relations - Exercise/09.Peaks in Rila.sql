SELECT 
    m.mountain_range, peak_name, elevation
FROM
    peaks p
        JOIN
    mountains AS m ON p.mountain_id = m.id
        AND m.mountain_range = 'Rila'
ORDER BY elevation DESC;