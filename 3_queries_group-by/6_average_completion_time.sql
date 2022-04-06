SELECT students.name as student,
 AVG(assignment_submissions.duration) AS avg_assignment_dur
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
WHERE students.end_date IS NULL
GROUP BY student
ORDER BY avg_assignment_dur;

-- JOIN assignment_submissions ON students.id  = assignment_submissions.student_id

-- SELECT cohorts.name AS cohort_name, 
-- count(assignment_submissions) as total_submission
-- FROM  cohorts
-- JOIN students ON cohorts.id = students.cohort_id
-- JOIN assignment_submissions ON students.id  = assignment_submissions.student_id
-- GROUP BY cohort_name
-- ORDER BY total_submission D ESC

-- Table "public.assignment_submissions"
--      Column      |  Type   |                              Modifiers                              
-- -----------------+---------+---------------------------------------------------------------------
--  id              | integer | not null default nextval('assignment_submissions_id_seq'::regclass)
--  assignment_id   | integer | 
--  student_id      | integer | 
--  duration        | integer | 
--  submission_date | date    | 
-- Indexes:

-- Table "public.students"
--    Column   |          Type          |                       Modifiers                       
-- ------------+------------------------+-------------------------------------------------------
--  id         | integer                | not null default nextval('students_id_seq'::regclass)
--  name       | character varying(255) | not null
--  email      | character varying(255) | 
--  phone      | character varying(32)  | 
--  github     | character varying(255) | 
--  start_date | date                   | 
--  end_date   | date                   | 
--  cohort_id  | integer  