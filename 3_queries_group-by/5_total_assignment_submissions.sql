SELECT cohorts.name AS cohort_name, 
count(assignment_submissions) as total_submission
FROM  cohorts
JOIN students ON cohorts.id = students.cohort_id
JOIN assignment_submissions ON students.id  = assignment_submissions.student_id
GROUP BY cohort_name
ORDER BY total_submission DESC

--  Get the total number of assignment submissions for each cohort.

-- Select the cohort name and total submissions.
-- Order the results from greatest to least submissions. 

--  COHORTS 
--    Column   |          Type          |                      Modifiers                       
-- ------------+------------------------+------------------------------------------------------
--  id         | integer                | not null default nextval('cohorts_id_seq'::regclass)
--  name       | character varying(255) | not null
--  start_date | date                   | 
--  end_date   | date                   | 
-- Indexes:

-- /assignment_submissions 
--        Column      |  Type   |                              Modifiers                              
-- -----------------+---------+---------------------------------------------------------------------
--  id              | integer | not null default nextval('assignment_submissions_id_seq'::regclass)
--  assignment_id   | integer | 
--  student_id      | integer | 
--  duration        | integer | 
--  submission_date | date    | 
 

--  Table "public.students"
--    Column   |          Type          |                       Modifiers                       
-- ------------+------------------------+------------------------------------------------------
--  id         | integer                | not null default nextval('students_id_seq'::regclass)
--  name       | character varying(255) | not null
--  email      | character varying(255) | 
--  phone      | character varying(32)  | 
--  github     | character varying(255) | 
--  start_date | date                   | 
--  end_date   | date                   | 
--  cohort_id  | integer                | 
  