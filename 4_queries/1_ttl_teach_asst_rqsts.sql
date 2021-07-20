-- Get the total number of assistance_requests for a teacher.

--     Select the teacher's name and the total assistance requests.
--     Since this query needs to work with any specific teacher name, use 'Waylon Boehm' for the teacher's name here.

--  total_assistances |     name     
-- -------------------+--------------
--               4227 | Waylon Boehm
-- (1 row)


SELECT COUNT(assistance_requests.*) AS total_assistances, name
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY name;
