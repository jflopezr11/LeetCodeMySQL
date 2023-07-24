/* Write an SQL query to report the movies with an odd-numbered ID and a description that is not "boring".

Return the result table ordered by rating in descending order. */

/* Write your MySQL query statement below*/


SELECT *
FROM cinema
WHERE MOD(id, 2) <> 0 AND description NOT LIKE '%boring%'
ORDER BY rating DESC