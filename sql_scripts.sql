-- Create Database
CREATE DATABASE PredictiveMaintenanceDB;

-- Use Database
USE PredictiveMaintenanceDB;

-- Create Table
CREATE TABLE MachineSensorData (
    UDI INT PRIMARY KEY,
    ProductID VARCHAR(10),
    Air_temperature FLOAT,
    Process_temperature FLOAT,
    Rotational_speed FLOAT,
    Torque FLOAT,
    Tool_wear INT,
    Machine_failure INT
);

-- Basic Data Check
SELECT COUNT(*) AS Total_Rows FROM MachineSensorData;

-- Failure Distribution
SELECT Machine_failure, COUNT(*) AS Failure_Count
FROM MachineSensorData
GROUP BY Machine_failure;

-- Avg Sensor Values
SELECT 
    AVG(Air_temperature) AS Avg_Air_Temp,
    AVG(Process_temperature) AS Avg_Process_Temp,
    AVG(Torque) AS Avg_Torque
FROM MachineSensorData;