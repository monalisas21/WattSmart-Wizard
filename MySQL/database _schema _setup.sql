-- Table for storing user information
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(100),
    email VARCHAR(100),
    address VARCHAR(255)
);

-- Table for storing appliance details
CREATE TABLE appliances (
    appliance_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    appliance_name VARCHAR(100),
    power_rating DECIMAL(5,2),
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

-- Table for storing energy readings
CREATE TABLE energy_readings (
    reading_id INT PRIMARY KEY AUTO_INCREMENT,
    appliance_id INT,
    reading_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    energy_consumed DECIMAL(10,2), -- kWh
    FOREIGN KEY (appliance_id) REFERENCES appliances(appliance_id) ON DELETE CASCADE
);
