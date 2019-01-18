
SELECT 
    c.country_name,
    MAX(p.elevation) AS highest_peak_elevation,
    MAX(r.length) AS longest_river_length
FROM
    countries c
        LEFT JOIN
    mountains_countries mc ON mc.country_code = c.country_code
        LEFT JOIN
    mountains m ON m.id = mc.mountain_id
        LEFT JOIN
    countries_rivers cr ON cr.country_code = c.country_code
        LEFT JOIN
    peaks p ON mc.mountain_id = p.mountain_id
        LEFT JOIN
    rivers r ON r.id = cr.river_id
GROUP BY country_name
ORDER BY highest_peak_elevation DESC , longest_river_length DESC , country_name
LIMIT 5;