SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN cohorts ON cohort.id = cohort_id
JOIN students ON students.id = student_id
where cohorts.name = 'FEB12'