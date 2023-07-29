-- Calculate the average total duration of assistance requests for each cohort.

SELECT AVG(total_duration) AS average_total_duration
FROM (
  SELECT SUM(assistance_requests.completed_at - assistance_requests.started_at) AS total_duration
  FROM assistance_requests
  JOIN students ON student_id = students.id
  JOIN cohorts ON cohort_id = cohorts.id
  GROUP BY cohorts.name
) AS cohort_average_total_durations;