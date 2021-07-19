CREATE TABLE assignments (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  content TEXT,
  day INTEGER,
  chapter INTEGER,
  duration INTEGER
);

CREATE TABLE assignment_submissions (
  id SERIAL PRIMARY KEY NOT NULL,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  duration INTEGER,
  submission_date DATE
);

SELECT name as student_name,
cohorts.name as cohort_name,
cohorts.start_date as cohort_start_date
start_date as student_start_date
FROM students JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.start_date IS NOT start_date
ORDER BY cohorts.start_date;