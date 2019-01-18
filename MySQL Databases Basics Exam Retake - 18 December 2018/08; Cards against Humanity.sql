SELECT 
    cards.id,
    CONCAT(cards.card_number,
            ' : ',
            clients.full_name) AS card_token
FROM
    cards
        JOIN
    bank_accounts ON cards.bank_account_id = bank_accounts.id
        JOIN
    clients ON bank_accounts.client_id = clients.id
ORDER BY id DESC;