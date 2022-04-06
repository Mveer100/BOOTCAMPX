SELECT AVG(duration) AS average_assignment_duration,
AVG(assignments.duration) AS average_estimated_duration,
students.name AS student
FROM assignment_submissions
JOIN students ON assignment_submissions.student_id = students.id
JOIN assignments ON assignment_submissions.assignment_id = assignment.id
GROUP BY STUDENT
ORDER BY average_assignment_duration

-- SELECT THE STUDENT NAME,      STUDENTS.NAME
--  THEIR AVERAGE COMPLETE TIME,   assignment_submissions
--  THE AVEGRAGE COMPLETION TIME
-- WHERE STUDENTS WHO HAVE A NULL start_date

-- ORDER BY (VARIABLE FOR AVERAGE COMPLETION TIME)


--  Table "public.assignment_submissions"
--      Column      |  Type   |                              Modifiers                              
-- -----------------+---------+---------------------------------------------------------------------
--  id              | integer | not null default nextval('assignment_submissions_id_seq'::regclass)
--  assignment_id   | integer | 
--  student_id      | integer | 
--  duration        | integer | 
--  submission_date | date    | 
-- Indexes:


--    Table "public.assignments"
--   Column  |          Type          |                        Modifiers                         
-- ----------+------------------------+----------------------------------------------------------
--  id       | integer                | not null default nextval('assignments_id_seq'::regclass)
--  name     | character varying(255) | 
--  content  | text                   | 
--  day      | integer                | 
--  chapter  | integer                | 
--  duration | integer  

--  Table "public.students"
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