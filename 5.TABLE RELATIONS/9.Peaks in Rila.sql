
select m.mountain_range,peak_name,elevation 
from peaks  p
join mountains as m
on p.mountain_id=m.id
and m.mountain_range='Rila'
order by elevation desc;