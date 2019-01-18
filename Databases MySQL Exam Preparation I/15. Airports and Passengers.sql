select a.airport_id,a.airport_name,count(t.customer_id) from flights

join airports a
on flights.origin_airport_id=a.airport_id
join tickets t
on t.flight_id=flights.flight_id
where status='Departing'
group by a.airport_name
order by a.airport_id;