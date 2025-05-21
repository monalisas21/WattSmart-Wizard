DELIMITER $$

CREATE PROCEDURE GenerateEnergyReport(IN userId INT, IN startDate DATE, IN endDate DATE)
BEGIN
    SELECT u.user_name, a.appliance_name, SUM(er.energy_consumed) AS total_energy
    FROM users u
    JOIN appliances a ON u.user_id = a.user_id
    JOIN energy_readings er ON a.appliance_id = er.appliance_id
    WHERE u.user_id = userId
    AND er.reading_time BETWEEN startDate AND endDate
    GROUP BY a.appliance_name;
END $$

DELIMITER ;
