--Credit-to-account balance ratio per customer 
SELECT 
    c.customer_id,
    SUM(a.balance) AS total_balance,
    SUM(c.credit_amount) AS credit_amount
CASE 
    WHEN SUM(a.balance) = 0 THEN NULL
    ELSE ROUND(SUM(c.credit_amount) / SUM(a.balance), 2)
    END AS credit_to_balance_ratio
FROM credits c
JOIN accounts a ON c.customer_id = a.customer_id
GROUP BY c.customer_id
ORDER BY credit_to_balance_ratio DESC;
