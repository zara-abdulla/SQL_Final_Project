--Largest transaction per customer compared to average transaction
SELECT 
    a.customer_id,
    MAX(t.amount) AS max_amount,
    ROUND(AVG(t.amount),2) AS avg_amount,
    CASE 
        WHEN MAX(t.amount) > AVG(t.amount) THEN 'Above Average'
        ELSE 'Below Average'
    END AS comparison
FROM accounts a
LEFT JOIN transactions t ON a.account_id = t.account_id
GROUP BY a.customer_id
Order by a.customer_id;
