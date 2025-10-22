--Top 5 richest customers (top balance)
SELECT 
 customer_id, SUM(balance) AS total_balance
FROM accounts
GROUP BY customer_id
ORDER BY total_balance DESC
FETCH FIRST 5 ROWS ONLY;
