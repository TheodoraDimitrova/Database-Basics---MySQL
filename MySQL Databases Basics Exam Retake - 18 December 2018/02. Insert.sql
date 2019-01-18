insert into cards(card_number,card_status,bank_account_id)
select (concat(reverse(SUBSTRING_INDEX(c.full_name, ' ',1)),' ',SUBSTRING_INDEX(reverse(c.full_name), ' ', 1))),
('Active'),
(bank_accounts.id) 
from clients c
join bank_accounts
on bank_accounts.client_id=c.id
where c.id between 191 and 200;