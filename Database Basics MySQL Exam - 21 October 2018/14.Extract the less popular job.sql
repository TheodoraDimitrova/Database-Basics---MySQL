
 
SELECT 
    tc.job_during_journey
FROM
    travel_cards tc
        JOIN
    (SELECT 
        id, DATEDIFF(journey_end, journey_start) AS diff
    FROM
        journeys
    ORDER BY diff DESC
    LIMIT 1) AS t1 ON t1.id = tc.journey_id
GROUP BY tc.job_during_journey
ORDER BY COUNT(tc.id)
LIMIT 1;