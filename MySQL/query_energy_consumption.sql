-- Query to get total energy consumption for a user within a time range
SELECT u.user_name, SUM(er.energy_consumed) AS total_consumption, 
       MIN(er.reading_time) AS start_time, MAX(er.reading_time) AS end_time
FROM users u
JOIN appliances a ON u.user_id = a.user_id
JOIN energy_readings er ON a.appliance_id = er.appliance_id
WHERE u.user_id = 1  -- For user John Doe
AND er.reading_time BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY u.user_name;
