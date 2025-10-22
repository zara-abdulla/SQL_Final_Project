--Account count and balance by customer age group 
SELECT 
    c.age AS customer_age, 
    COUNT(a.account_id) AS account_count, 
    SUM(a.balance) AS total_balance
FROM customers c
LEFT JOIN accounts a
    ON c.customer_id = a.customer_id
GROUP BY c.age
ORDER BY c.age;
