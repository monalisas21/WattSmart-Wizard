-- Insert sample users
INSERT INTO users (user_name, email, address)
VALUES ('John Doe', 'john@example.com', '123 Main St'), 
       ('Jane Smith', 'jane@example.com', '456 Oak Ave');

-- Insert sample appliances
INSERT INTO appliances (user_id, appliance_name, power_rating)
VALUES (1, 'Refrigerator', 150), 
       (1, 'Air Conditioner', 2000),
       (2, 'Washing Machine', 500);

-- Insert sample energy readings (consumption in kWh)
INSERT INTO energy_readings (appliance_id, energy_consumed)
VALUES (1, 1.5), (1, 1.8), (2, 4.2), (3, 2.0);
