-- Select the total number of students who were in the first 3 cohorts.

--  count 
-- -------
--     48
-- (1 row)


SELECT count(*)
FROM students
WHERE cohort_id IN (1, 2, 3);
