SELECT cohorts.name as cohort, count(assignment_submissions.student_id) as total_submissions
FROM assignment_submissions
INNER JOIN students ON assignment_submissions.student_id = students.id
INNER JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY count(assignment_submissions.student_id) DESC;