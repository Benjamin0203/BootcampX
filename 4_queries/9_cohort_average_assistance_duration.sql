
--We also need to know the average total amount of time being spent on an assistance request for each cohort. This is just the average of the total_duration column from the previous query.

-- Calculate the average total duration of assistance requests for each cohort.
--use the previous query as a sub query to determine the duration per cohort.
--Return a single row average_total_duration

SELECT AVG(total_duration) FROM (
SELECT SUM(completed_at -started_at) AS total_duration FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
) AS average_total_duration;

