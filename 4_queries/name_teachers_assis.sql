SELECT DISTINCT teachers.name as teacher, 
cohorts.name as cohort,
count(assistance_requests.*) as total_assistances
FROM cohorts 
JOIN students
ON students.cohort_id = cohorts.id
JOIN assistance_requests 
ON students.id = assistance_requests.student_id 
JOIN teachers
ON assistance_requests.teacher_id = teachers.id
GROUP BY teachers.name, cohorts.name
HAVING cohorts.name = 'JUL02';