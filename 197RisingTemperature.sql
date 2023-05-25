/* Write an SQL query to find all dates' Id with higher temperatures compared to its previous dates (yesterday).

Return the result table in any order. */

SELECT weather.id AS id 
FROM Weather 
join
Weather AS w 
ON DATEDIFF(weather.recordDate, w.recordDate) = 1
AND weather.Temperature > w.Temperature

/* bruh.. self joins are annoying.. I will read on DATEDIFF.. 