/* Write a SQL query to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

Return the result table sorted in any order.*/

SELECT 
    v.customer_id , 
    COUNT(v.visit_id) AS count_no_trans
FROM Visits AS v
LEFT JOIN Transactions AS t
ON v.visit_id = t.visit_id
WHERE transaction_id IS NULL  
GROUP BY customer_id


/* probably the slowest Runtime of 3228 ms - definitly needed help on this.  However, I remembered i needed to use the where and group by. 