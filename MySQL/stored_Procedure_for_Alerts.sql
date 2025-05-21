DELIMITER $$

CREATE PROCEDURE CheckEnergyThreshold(IN userId INT, IN threshold DECIMAL(10,2))
BEGIN
    SELECT u.user_name, a.appliance_name, SUM(er.energy_consumed) AS total_energy
    FROM users u
    JOIN appliances a ON u.user_id = a.user_id
    JOIN energy_readings er ON a.appliance_id = er.appliance_id
    WHERE u.user_id = userId
    GROUP BY a.appliance_name
    HAVING total_energy > threshold;
    
    IF ROW_COUNT() > 0 THEN
        SELECT CONCAT('Alert: Energy consumption exceeded for user ', u.user_name) AS alert_message;
    END IF;
END $$

DELIMITER ;
