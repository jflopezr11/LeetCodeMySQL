# Write your MySQL query statement below

SELECT 
    a.machine_id, 
    ROUND(AVG(b.timestamp - a.timestamp),3) AS  processing_time
FROM Activity AS a
JOIN Activity AS b
    on a.machine_id = b.machine_id AND 
    a.process_id = b.process_id
WHERE a.activity_type = 'start' AND b.activity_type = 'end'
GROUP BY a.machine_id


-- Agruable the hardest query to date. DEFINITELY NOT EASY. If this is easy I am in trouble 
