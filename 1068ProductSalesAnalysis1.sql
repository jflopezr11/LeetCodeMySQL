/*Write an SQL query that reports the product_name, year, and price for each sale_id in the Sales table.

Return the resulting table in any order.*/

SELECT 
    p.product_name AS product_name, 
    s.year, 
    s.price 
FROM Sales AS s 
INNER JOIN Product AS p 
ON s.product_id = p.product_id 

/* still really slow in my opinion. Runtime 1708 ms; however, it Beats 95.6%

If there's a way to make it faster I will refactor 05/23 */

