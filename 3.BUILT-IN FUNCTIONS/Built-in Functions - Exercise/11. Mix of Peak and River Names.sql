SELECT 
    a.peak_name,
    b.river_name,
    LOWER(CONCAT(a.peak_name,
                    SUBSTRING(b.river_name, 2),
                    ' ')) AS mix
FROM
    peaks a,
    rivers b
WHERE
    RIGHT(a.peak_name, 1) = LEFT(b.river_name, 1)
ORDER BY mix;