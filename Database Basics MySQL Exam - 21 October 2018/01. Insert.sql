



insert into travel_cards (card_number,job_during_journey,colonist_id,journey_id)
select IF(c.birth_date>'1980-01-01',concat(year(c.birth_date),day(c.birth_date),LEFT(c.ucn, 4)), 
concat(year(c.birth_date),month(c.birth_date),right(c.ucn, 4))) AS card_number,
(CASE
    WHEN c.id % 2 = 0  THEN 'Pilot'
    WHEN c.id % 3 = 0 THEN 'Cook'
    ELSE 'Engineer'
END) AS job_during_journey,
(c.id) AS colonist_id,
(LEFT(c.ucn, 1)) AS journey_id
 from colonists c
 WHERE c.id between 96 AND 100;