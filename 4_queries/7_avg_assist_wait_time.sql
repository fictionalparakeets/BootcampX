-- Calculate the average time it takes to start an assistance request.

-- Return just a single column here.

--  average_wait_time 
-- -------------------
--  00:08:46.258793
-- (1 row)


SELECT AVG(created_at - started_at) AS average_wait_time
FROM assistance_requests;
