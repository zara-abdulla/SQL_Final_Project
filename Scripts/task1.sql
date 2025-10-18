--1.Hər müştərinin neçə aktiv hesabı var və balans cəmi nə qədərdir.
SELECT 
    customer_id,
    COUNT(account_id) AS active_account_count,
    SUM(balance) AS total_balance
FROM accounts
WHERE status = 'Active'
GROUP BY customer_id
ORDER BY customer_id;