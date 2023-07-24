/*Find the number of times each student attended each exam.

Return the result table ordered by student_id and subject_name.

The result format is in the following example. */

SELECT 
    s.student_id, 
    s.student_name,
    sb.subject_name, 
    COUNT(e.subject_name) AS attended_exams
FROM students AS s
JOIN subjects AS sb
LEFT JOIN examinations AS e
ON s.student_id = e.student_id AND sb.subject_name = e.subject_name 
GROUP BY s.student_id, sb.subject_name
ORDER BY s.student_id, sb.subject_name