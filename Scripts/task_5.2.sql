--Largest transaction per customer and date
SELECT 
    a.customer_id, 
    t.transaction_id, 
    t.amount AS max_amount, 
    t.transaction_date
FROM accounts a
JOIN transactions t ON a.account_id = t.account_id
WHERE 
    (a.customer_id, t.amount) IN (
    SELECT a.customer_id, MAX(t.amount)
    FROM accounts a
    JOIN transactions t ON a.account_id = t.account_id
    GROUP BY a.customer_id
)
ORDER BY a.customer_id;

