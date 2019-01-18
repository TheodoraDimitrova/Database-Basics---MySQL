SELECT 
    c.id, c.full_name, COUNT(cards.id) AS cards
FROM
    clients c
        LEFT JOIN
    bank_accounts ON bank_accounts.client_id = c.id
        LEFT JOIN
    cards ON cards.bank_account_id = bank_accounts.id
GROUP BY c.id
ORDER BY cards DESC , c.id
LIMIT 1;