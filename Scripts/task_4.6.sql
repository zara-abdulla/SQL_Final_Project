--First and last credit amounts per customer
WITH ranked_credits AS (
    SELECT 
        customer_id, 
        credit_amount, 
        start_date,
        ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY start_date) AS first_rnk,
        ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY start_date DESC) AS last_rnk
    FROM credits
)
SELECT 
    customer_id,
	MAX(CASE WHEN first_rnk = 1 THEN start_date END) AS first_credit_date,
	MAX(CASE WHEN last_rnk = 1 THEN start_date END) AS last_credit_date,
    MAX(CASE WHEN first_rnk = 1 THEN ROUND(credit_amount, 2) END) AS first_credit,
    MAX(CASE WHEN last_rnk = 1 THEN ROUND(credit_amount, 2) END) AS last_credit
FROM ranked_credits
GROUP BY customer_id;	
