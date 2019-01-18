

SELECT DISTINCT
    (c.customer_id),
    CONCAT(c.first_name, ' ', c.last_name) AS full_name,
    DATEDIFF(year,c.date_of_birth, '2016/01/01')
FROM
    tickets t
        JOIN
    flights f ON t.flight_id = f.flight_id
        JOIN
    customers c ON c.customer_id = t.customer_id
WHERE
    f.status = 'Departing'
GROUP BY c.customer_id;
