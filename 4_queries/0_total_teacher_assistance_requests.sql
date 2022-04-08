SELECT count(teachers.id) as total_assistances,  
teachers.name AS name
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.id;
