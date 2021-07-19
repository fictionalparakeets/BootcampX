-- Get the total amount of time that a student has spent on all assignments.

--     This should work for any student but use 'Ibrahim Schimmel' for now.
--     Select only the total amount of time as a single column.

--  total_duration 
-- ----------------
--            6888
-- (1 row)


SELECT SUM(assignment_submissions.duration) AS total_duration
FROM assignment_submissions 
JOIN students on students.id = assignment_submissions.student_id
WHERE students.name = 'Ibrahim Schimmel';

-- Answer from Compass:
-- SELECT sum(assignment_submissions.duration) as total_duration
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.name = 'Ibrahim Schimmel';
