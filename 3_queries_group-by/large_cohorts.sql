SELECT cohorts.name, count(students.cohort_id) 
from cohorts
INNER JOIN students 
ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students.cohort_id) >= 18
ORDER BY count(students.cohort_id);