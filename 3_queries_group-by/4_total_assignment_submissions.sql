SELECT cohorts.name as cohort, count(assignments.*) as total_submissions FROM assignments
JOIN assignment_submissions ON assignment_id = assignments.id
JOIN  students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;