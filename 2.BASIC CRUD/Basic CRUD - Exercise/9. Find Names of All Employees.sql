select concat(first_name,' ',middle_name,' ',last_name) as 'full_ name' from employees
where salary in('25000', '14000', '12500','23600');