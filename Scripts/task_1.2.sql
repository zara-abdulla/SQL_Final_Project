--Average account balance by city
SELECT 
    c.city, 
    ROUND(AVG(a.balance), 2) AS avg_balance
FROM customers c
LEFT JOIN accounts a
    ON c.customer_id = a.customer_id
GROUP BY c.city
ORDER BY avg_balance DESC;
