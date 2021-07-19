-- Task: Get all students without a Github username:
    -- Select their id, name, email, and cohort_id.
    -- Order them by cohort_id.

-- id  |       name        |             email              | cohort_id 
-- -----+-------------------+--------------------------------+-----------
--   99 | Herminia Smitham  | sawayn.sarina@yahoo.com        |         7
--  102 | Jacinthe Kautzer  | litzy_fay@hilpert.net          |         7
--  111 | Bernardo Turcotte | margarita.anderson@paolo.name  |         8
--  123 | Eloisa Quigley    | schmidt.ansel@gmail.com        |         9
--  128 | Tiana Altenwerth  | zelda.stanton@yahoo.com        |         9
-- ...
-- (20 rows)


SELECT id, name, email, cohort_id 
FROM students
WHERE github IS NULL
ORDER BY cohort_id
