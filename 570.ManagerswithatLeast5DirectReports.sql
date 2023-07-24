/* Find the managers with at least five direct reports.

Return the result table in any order.

The result format is in the following example. */


SELECT
    name
FROM employee 
WHERE id in (
    Select
        managerId 
    FROM employee
    GROUP BY managerId
    HAVING COUNT(*) >= 5
)
