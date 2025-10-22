--Number of transactions and total amount per customer
SELECT 
    a.customer_id as customer_id,
    COUNT(t.transaction_id) AS transaction_count,
    NVL(SUM(t.amount),0) AS total_amount
FROM accounts a
LEFT JOIN transactions t ON a.account_id = t.account_id
GROUP BY a.customer_id
ORDER BY total_amount desc;
