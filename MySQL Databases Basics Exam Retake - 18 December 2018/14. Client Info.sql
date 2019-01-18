CREATE PROCEDURE udp_clientinfo (full_name VARCHAR(50))
BEGIN
   select clients.full_name,clients.age,account_number,concat('$','',balance) balance from clients 
join bank_accounts
on bank_accounts.client_id=clients.id
where clients.full_name=full_name ;
END 