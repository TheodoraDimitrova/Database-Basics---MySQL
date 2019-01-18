


insert into  flights (departure_time,arrival_time,status,origin_airport_id,destination_airport_id,airline_id)
select ('2017-06-19 14:00:00') departure_time,
('2017-06-21 11:00:00') arrival_time,
(CASE
    WHEN mod(a.airline_id,4)=0 THEN 'Departing'
   WHEN mod(a.airline_id,4)=1 THEN 'Delayed'
   WHEN mod(a.airline_id,4)=2 THEN 'Arrived'
   WHEN mod(a.airline_id,4)=3 THEN 'Canceled'
 
END) status,
(ceil(sqrt(length(a.airline_name)))) origin_airport_id,
(ceil(sqrt(length(a.nationality)))) destination_airport_id,
a.airline_id airline_id
from airlines a
where airline_id between 1 and 10;