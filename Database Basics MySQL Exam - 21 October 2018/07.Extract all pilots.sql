

SELECT 
    c.id, CONCAT(first_name, ' ', last_name) AS full_name
FROM
    colonists c
        LEFT JOIN
    travel_cards ON travel_cards.colonist_id = c.id
WHERE
    travel_cards.job_during_journey = 'Pilot'
ORDER BY id;