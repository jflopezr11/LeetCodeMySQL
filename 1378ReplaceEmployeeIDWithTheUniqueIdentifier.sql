/* Write an SQL query to show the unique ID of each user, If a user does not have a unique ID replace just show null.

Return the result table in any order. */

SELECT 
    e.unique_id AS unique_id,
    em.name AS name 
FROM Employees AS em
LEFT JOIN EmployeeUNI as e 
ON em.id = e.id

/* runtime is really really slow - Runtime 3072 ms

Honestly, don't know why. I will comeback to this and refactor 