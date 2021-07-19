-- Get currently enrolled students' average assignment completion time.

--     Select the students name and average time from assignment submissions.
--     Order the results from greatest duration to least greatest duration.
--     A student will have a null end_date if they are currently enrolled

--        student       | average_assignment_duration 
-- ---------------------+-----------------------------
--  Hettie Hettinger    |        140.0533333333333333
--  Santino Oberbrunner |        139.2991803278688525
--  Vance Kihn          |        100.0730994152046784
--  Jerrold Rohan       |         99.3553719008264463
--  Vivienne Larson     |         96.1818181818181818
--  ...
-- (42 rows)


SELECT students.name AS student, AVG(assignment_submissions.duration) AS average_assignment_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;
