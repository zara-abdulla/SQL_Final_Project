--Customer segmentation based on balance and transaction count (High, Medium, Low)
SELECT customer_id, sum(balance) AS total_balance, count(transaction_id) AS account_count,
CASE 
WHEN sum(balance) > 
    (SELECT avg(balance) FROM accounts) AND count(transaction_id) > 8 THEN 'High'
WHEN sum(balance) > 
    (SELECT avg(balance) FROM accounts) AND count(transaction_id) > 4 THEN 'Medium'
ELSE 'Low' 
END AS customer_segmentation
FROM accounts
JOIN transactions USING (account_id)
GROUP BY customer_id
ORDER BY total_balance DESC;