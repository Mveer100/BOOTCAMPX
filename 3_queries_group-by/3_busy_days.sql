SELECT day, count(assignments) as total_assignments
FROM assignments
HAVING count(*) >= 10
GROUP BY day ORDER BY day;