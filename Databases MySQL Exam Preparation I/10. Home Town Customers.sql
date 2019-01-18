select distinct(c.customer_id)
,concat(c.first_name,' ',c.last_name) as full_name,t2.town_name from 
(select f.flight_id,a.airport_name,a.town_id ,t.town_name from flights f
join airports a
on a.airport_id=f.origin_airport_id
join towns t
on t.town_id=a.town_id
where status='Departing') t1
join (select f.flight_id,t.customer_id,c.home_town_id,town_name from flights f
join tickets t
on t.flight_id=f.flight_id
join customers c
on c.customer_id=t.customer_id
join towns 
on towns.town_id=c.home_town_id
where status='Departing') t2
on t1.flight_id=t2.flight_id
join customers c
on t2.customer_id=c.customer_id
where t1.town_name=t2.town_name
order by c.customer_id;





