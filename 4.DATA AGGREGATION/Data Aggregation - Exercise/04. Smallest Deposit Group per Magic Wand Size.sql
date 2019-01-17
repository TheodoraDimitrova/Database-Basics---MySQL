SELECT 
    deposit_group
FROM
    wizzard_deposits
HAVING MIN(magic_wand_size);