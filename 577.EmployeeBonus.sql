/* Write an SQL query to report the name and bonus amount of each employee with a bonus less than 1000.
Return the result table in any order. The query result format is in the following example. */

# Write your MySQL query statement below

SELECT 
    E.name, 
    B.bonus
FROM Employee AS E
LEFT JOIN Bonus AS B
ON E.empID = B.empID
WHERE B.bonus < 1000 OR bonus is NULL
