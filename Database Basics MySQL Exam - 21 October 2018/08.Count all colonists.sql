
SELECT 
    COUNT(c.id)
FROM
    colonists c
        JOIN
    travel_cards ON travel_cards.colonist_id = c.id
        JOIN
    journeys ON journeys.id = travel_cards.journey_id
WHERE
    journeys.purpose = 'Technical';