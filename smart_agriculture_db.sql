CREATE DATABASE IF NOT EXISTS smart_agriculture_db;
USE smart_agriculture_db;
-- Table 1: Physical Parameters Logged by Robot Sensors
CREATE TABLE IF NOT EXISTS robot_sensor_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    robot_id VARCHAR(20) NOT NULL,
    temperature FLOAT NOT NULL,
    humidity FLOAT NOT NULL,
    rainfall FLOAT NOT NULL,
    watering_status INT NOT NULL, -- 0 = OFF, 1 = ON
    crop_label VARCHAR(50) NOT NULL,
    recorded_at DATETIME NOT NULL
);

-- Table 2: Chemical Soil Nutrients Logged by Robot Probe
CREATE TABLE IF NOT EXISTS soil_nutrients_log (
    nutrient_id INT AUTO_INCREMENT PRIMARY KEY,
    log_id INT NOT NULL, -- Foreign Reference Link to Table 1
    N INT NOT NULL,
    P INT NOT NULL,
    K INT NOT NULL,
    ph FLOAT NOT NULL,
    soil_zone VARCHAR(10) NOT NULL
);
INSERT INTO robot_sensor_log (log_id, robot_id, temperature, humidity, rainfall, watering_status, crop_label, recorded_at) VALUES
(1,'BOT-01',20.88,82.0,202.94,1,'rice','2026-10-01 08:00:00'),(2,'BOT-01',21.77,80.32,226.66,1,'rice','2026-10-01 09:00:00'),(3,'BOT-01',23.0,82.32,263.96,1,'rice','2026-10-01 10:00:00'),(4,'BOT-01',26.49,80.16,242.86,1,'rice','2026-10-01 11:00:00'),(5,'BOT-01',20.13,81.6,262.72,1,'rice','2026-10-01 12:00:00'),
(6,'BOT-01',22.61,63.69,87.76,0,'maize','2026-10-02 08:00:00'),(7,'BOT-01',26.1,71.57,102.27,0,'maize','2026-10-02 09:00:00'),(8,'BOT-01',24.13,67.31,99.3,0,'maize','2026-10-02 10:00:00'),(9,'BOT-01',25.43,69.21,66.84,0,'maize','2026-10-02 11:00:00'),(10,'BOT-01',23.24,62.56,90.24,0,'maize','2026-10-02 12:00:00'),
(11,'BOT-01',23.6,60.4,140.94,1,'coffee','2026-10-03 08:00:00'),(12,'BOT-01',26.27,54.67,118.76,1,'coffee','2026-10-03 09:00:00'),(13,'BOT-01',24.52,53.31,180.94,1,'coffee','2026-10-03 10:00:00'),(14,'BOT-01',23.53,51.82,148.51,0,'coffee','2026-10-03 11:00:00'),(15,'BOT-01',24.13,56.84,168.34,1,'coffee','2026-10-03 12:00:00'),
(16,'BOT-01',29.5,75.0,95.0,0,'cotton','2026-10-04 08:00:00'),(17,'BOT-01',28.7,78.2,100.5,1,'cotton','2026-10-04 09:00:00'),(18,'BOT-01',30.1,74.5,92.1,0,'cotton','2026-10-04 10:00:00'),(19,'BOT-01',25.0,60.0,50.0,0,'groundnut','2026-10-05 08:00:00'),(20,'BOT-01',26.2,62.4,55.4,0,'groundnut','2026-10-05 09:00:00'),
(21,'BOT-02',21.34,83.1,210.45,1,'rice','2026-10-06 08:00:00'),(22,'BOT-02',22.45,84.2,215.6,1,'rice','2026-10-06 09:00:00'),(23,'BOT-02',24.12,79.5,230.1,1,'rice','2026-10-06 10:00:00'),(24,'BOT-02',25.67,81.2,240.5,1,'rice','2026-10-06 11:00:00'),(25,'BOT-02',20.45,82.9,250.7,1,'rice','2026-10-06 12:00:00'),
(26,'BOT-02',23.45,65.4,89.1,0,'maize','2026-10-07 08:00:00'),(27,'BOT-02',27.2,70.1,101.4,0,'maize','2026-10-07 09:00:00'),(28,'BOT-02',24.89,66.5,95.8,0,'maize','2026-10-07 10:00:00'),(29,'BOT-02',25.12,68.4,70.2,0,'maize','2026-10-07 11:00:00'),(30,'BOT-02',22.9,61.2,91.6,0,'maize','2026-10-07 12:00:00'),
(31,'BOT-02',24.1,59.2,142.1,1,'coffee','2026-10-08 08:00:00'),(32,'BOT-02',25.8,55.1,120.3,1,'coffee','2026-10-08 09:00:00'),(33,'BOT-02',24.9,52.4,185.2,1,'coffee','2026-10-08 10:00:00'),(34,'BOT-02',23.1,50.9,145.1,0,'coffee','2026-10-08 11:00:00'),(35,'BOT-02',24.6,55.4,170.2,1,'coffee','2026-10-08 12:00:00'),
(36,'BOT-02',28.9,74.2,96.5,0,'cotton','2026-10-09 08:00:00'),(37,'BOT-02',29.1,77.1,102.1,1,'cotton','2026-10-09 09:00:00'),(38,'BOT-02',30.5,73.1,91.4,0,'cotton','2026-10-09 10:00:00'),(39,'BOT-02',26.1,61.5,52.1,0,'groundnut','2026-10-10 08:00:00'),(40,'BOT-02',27.0,63.1,54.2,0,'groundnut','2026-10-10 09:00:00'),
(41,'BOT-01',21.11,81.5,205.2,1,'rice','2026-10-11 08:00:00'),(42,'BOT-01',22.12,80.9,220.4,1,'rice','2026-10-11 09:00:00'),(43,'BOT-01',23.45,83.1,260.1,1,'rice','2026-10-11 10:00:00'),(44,'BOT-01',26.12,79.9,245.3,1,'rice','2026-10-11 11:00:00'),(45,'BOT-01',20.55,82.1,261.2,1,'rice','2026-10-11 12:00:00'),
(46,'BOT-01',22.88,64.2,86.4,0,'maize','2026-10-12 08:00:00'),(47,'BOT-01',26.45,70.9,103.1,0,'maize','2026-10-12 09:00:00'),(48,'BOT-01',24.34,68.1,98.2,0,'maize','2026-10-12 10:00:00'),(49,'BOT-01',25.76,68.9,65.2,0,'maize','2026-10-12 11:00:00'),(50,'BOT-01',23.11,63.1,89.9,0,'maize','2026-10-12 12:00:00'),
(51,'BOT-01',23.9,61.2,141.5,1,'coffee','2026-10-13 08:00:00'),(52,'BOT-01',26.11,55.2,119.1,1,'coffee','2026-10-13 09:00:00'),(53,'BOT-01',24.67,54.1,182.3,1,'coffee','2026-10-13 10:00:00'),(54,'BOT-01',23.44,52.1,149.2,0,'coffee','2026-10-13 11:00:00'),(55,'BOT-01',24.23,57.1,169.1,1,'coffee','2026-10-13 12:00:00'),
(56,'BOT-01',29.1,76.2,94.2,0,'cotton','2026-10-14 08:00:00'),(57,'BOT-01',28.4,79.1,101.2,1,'cotton','2026-10-14 09:00:00'),(58,'BOT-01',30.3,75.1,93.4,0,'cotton','2026-10-14 10:00:00'),(59,'BOT-01',25.4,61.2,51.2,0,'groundnut','2026-10-15 08:00:00'),(60,'BOT-01',26.5,63.4,56.1,0,'groundnut','2026-10-15 09:00:00'),
(61,'BOT-02',21.5,82.5,208.1,1,'rice','2026-10-16 08:00:00'),(62,'BOT-02',22.1,83.9,218.4,1,'rice','2026-10-16 09:00:00'),(63,'BOT-02',24.5,78.4,233.1,1,'rice','2026-10-16 10:00:00'),(64,'BOT-02',25.9,82.1,241.9,1,'rice','2026-10-16 11:00:00'),(65,'BOT-02',20.1,81.4,252.1,1,'rice','2026-10-16 12:00:00'),
(66,'BOT-02',23.9,64.1,88.5,0,'maize','2026-10-17 08:00:00'),(67,'BOT-02',27.5,71.2,102.9,0,'maize','2026-10-17 09:00:00'),(68,'BOT-02',24.1,67.2,94.1,0,'maize','2026-10-17 10:00:00'),(69,'BOT-02',25.5,69.1,71.5,0,'maize','2026-10-17 11:00:00'),(70,'BOT-02',22.1,62.1,92.4,0,'maize','2026-10-17 12:00:00'),
(71,'BOT-02',24.5,58.1,143.9,1,'coffee','2026-10-18 08:00:00'),(72,'BOT-02',25.1,56.2,121.5,1,'coffee','2026-10-18 09:00:00'),(73,'BOT-02',24.2,53.9,184.1,1,'coffee','2026-10-18 10:00:00'),(74,'BOT-02',23.8,51.2,144.9,0,'coffee','2026-10-18 11:00:00'),(75,'BOT-02',24.9,54.1,171.5,1,'coffee','2026-10-18 12:00:00'),
(76,'BOT-02',28.1,75.1,97.1,0,'cotton','2026-10-19 08:00:00'),(77,'BOT-02',29.5,76.9,103.4,1,'cotton','2026-10-19 09:00:00'),(78,'BOT-02',30.1,72.9,90.9,0,'cotton','2026-10-19 10:00:00'),(79,'BOT-02',26.5,62.1,53.9,0,'groundnut','2026-10-20 08:00:00'),(80,'BOT-02',27.2,64.0,55.1,0,'groundnut','2026-10-20 09:00:00'),
(81,'BOT-01',21.0,82.0,203.0,1,'rice','2026-10-21 08:00:00'),(82,'BOT-01',21.5,81.0,225.0,1,'rice','2026-10-21 09:00:00'),(83,'BOT-01',23.2,82.5,264.0,1,'rice','2026-10-21 10:00:00'),(84,'BOT-01',26.5,80.0,243.0,1,'rice','2026-10-21 11:00:00'),(85,'BOT-01',20.2,81.5,262.5,1,'rice','2026-10-21 12:00:00'),
(86,'BOT-01',22.5,63.5,87.5,0,'maize','2026-10-22 08:00:00'),(87,'BOT-01',26.2,71.5,102.5,0,'maize','2026-10-22 09:00:00'),(88,'BOT-01',24.2,67.5,99.5,0,'maize','2026-10-22 10:00:00'),(89,'BOT-01',25.5,69.5,66.5,0,'maize','2026-10-22 11:00:00'),(90,'BOT-01',23.3,62.5,90.5,0,'maize','2026-10-22 12:00:00'),
(91,'BOT-01',23.5,60.5,141.0,1,'coffee','2026-10-23 08:00:00'),(92,'BOT-01',26.2,54.5,119.0,1,'coffee','2026-10-23 09:00:00'),(93,'BOT-01',24.5,53.5,181.0,1,'coffee','2026-10-23 10:00:00'),(94,'BOT-01',23.5,51.5,148.0,0,'coffee','2026-10-23 11:00:00'),(95,'BOT-01',24.1,56.5,168.5,1,'coffee','2026-10-23 12:00:00'),
(96,'BOT-01',29.4,75.2,95.1,0,'cotton','2026-10-24 08:00:00'),(97,'BOT-01',28.6,78.1,100.2,1,'cotton','2026-10-24 09:00:00'),(98,'BOT-01',30.2,74.2,92.3,0,'cotton','2026-10-24 10:00:00'),(99,'BOT-01',25.1,60.2,50.5,0,'groundnut','2026-10-25 08:00:00'),(100,'BOT-01',26.3,62.5,55.2,0,'groundnut','2026-10-25 09:00:00');

INSERT INTO soil_nutrients_log (nutrient_id, log_id, N, P, K, ph, soil_zone) VALUES
(1,1,90,42,43,6.5,'Zone-A'),(2,2,85,58,41,7.04,'Zone-A'),(3,3,60,55,44,7.84,'Zone-A'),(4,4,74,35,40,6.98,'Zone-B'),(5,5,78,42,42,7.63,'Zone-B'),
(6,6,71,54,16,5.75,'Zone-C'),(7,7,61,44,17,6.87,'Zone-C'),(8,8,65,58,24,6.0,'Zone-D'),(9,9,60,55,19,6.8,'Zone-D'),(10,10,58,41,20,5.95,'Zone-E'),
(11,11,104,18,30,6.78,'Zone-A'),(12,12,91,21,34,7.45,'Zone-B'),(13,13,100,16,27,6.7,'Zone-C'),(14,14,88,30,22,7.03,'Zone-D'),(15,15,118,30,30,6.34,'Zone-E'),
(16,16,40,50,40,6.2,'Zone-F'),(17,17,45,52,42,6.5,'Zone-F'),(18,18,38,48,39,6.1,'Zone-G'),(19,19,50,40,20,6.0,'Zone-H'),(20,20,52,42,22,6.2,'Zone-H'),
(21,21,92,43,41,6.6,'Zone-A'),(22,22,84,57,42,7.1,'Zone-A'),(23,23,61,54,45,7.8,'Zone-A'),(24,24,73,36,39,6.9,'Zone-B'),(25,25,79,41,43,7.5,'Zone-B'),
(26,26,72,53,15,5.8,'Zone-C'),(27,27,62,45,18,6.9,'Zone-C'),(28,28,64,59,23,6.1,'Zone-D'),(29,29,61,54,20,6.7,'Zone-D'),(30,30,59,42,19,5.9,'Zone-E'),
(31,31,105,17,31,6.8,'Zone-A'),(32,32,92,22,33,7.4,'Zone-B'),(33,33,101,15,28,6.8,'Zone-C'),(34,34,87,31,21,7.0,'Zone-D'),(35,35,119,29,31,6.3,'Zone-E'),
(36,36,41,49,41,6.3,'Zone-F'),(37,37,44,53,41,6.4,'Zone-F'),(38,38,39,47,40,6.2,'Zone-G'),(39,39,51,41,19,6.1,'Zone-H'),(40,40,53,43,21,6.3,'Zone-H'),
(41,41,89,41,44,6.4,'Zone-A'),(42,42,86,59,40,7.0,'Zone-A'),(43,43,59,56,43,7.9,'Zone-A'),(44,44,75,34,41,6.8,'Zone-B'),(45,45,77,43,41,7.7,'Zone-B'),
(46,46,70,55,17,5.7,'Zone-C'),(47,47,60,43,16,6.8,'Zone-C'),(48,48,66,57,25,5.9,'Zone-D'),(49,49,59,56,18,6.9,'Zone-D'),(50,50,57,40,21,6.0,'Zone-E'),
(51,51,103,19,29,6.7,'Zone-A'),(52,52,90,20,35,7.5,'Zone-B'),(53,53,99,17,26,6.6,'Zone-C'),(54,54,89,29,23,7.1,'Zone-D'),(55,55,117,31,29,6.4,'Zone-E'),
(56,56,39,51,39,6.1,'Zone-F'),(57,57,46,51,43,6.6,'Zone-F'),(58,58,37,49,38,6.0,'Zone-G'),(59,59,49,39,21,5.9,'Zone-H'),(60,60,51,41,23,6.1,'Zone-H'),
(61,61,91,42,42,6.5,'Zone-A'),(62,62,85,58,42,7.1,'Zone-A'),(63,63,62,55,44,7.7,'Zone-A'),(64,64,74,35,40,7.0,'Zone-B'),(65,65,78,42,42,7.6,'Zone-B'),
(66,66,71,54,16,5.8,'Zone-C'),(67,67,61,44,17,6.9,'Zone-C'),(68,68,65,58,24,6.0,'Zone-D'),(69,69,60,55,19,6.8,'Zone-D'),(70,70,58,41,20,5.9,'Zone-E'),
(71,71,104,18,30,6.8,'Zone-A'),(72,72,91,21,34,7.4,'Zone-B'),(73,73,100,16,27,6.7,'Zone-C'),(74,74,88,30,22,7.0,'Zone-D'),(75,75,118,30,30,6.3,'Zone-E'),
(76,76,40,50,40,6.2,'Zone-F'),(77,77,45,52,42,6.5,'Zone-F'),(78,78,38,48,39,6.1,'Zone-G'),(79,79,50,40,20,6.0,'Zone-H'),(80,80,52,42,22,6.2,'Zone-H'),
(81,81,90,42,43,6.5,'Zone-A'),(82,82,85,58,41,7.0,'Zone-A'),(83,83,60,55,44,7.8,'Zone-A'),(84,84,74,35,40,7.0,'Zone-B'),(85,85,78,42,42,7.6,'Zone-B'),
(86,86,71,54,16,5.7,'Zone-C'),(87,87,61,44,17,6.9,'Zone-C'),(88,88,65,58,24,6.0,'Zone-D'),(89,89,60,55,19,6.8,'Zone-D'),(90,90,58,41,20,5.9,'Zone-E'),
(91,91,104,18,30,6.8,'Zone-A'),(92,92,91,21,34,7.4,'Zone-B'),(93,93,100,16,27,6.7,'Zone-C'),(94,94,88,30,22,7.0,'Zone-D'),(95,95,118,30,30,6.3,'Zone-E'),
(96,96,40,50,40,6.2,'Zone-F'),(97,97,45,52,42,6.5,'Zone-F'),(98,98,38,48,39,6.1,'Zone-G'),(99,99,50,40,20,6.0,'Zone-H'),(100,100,52,42,22,6.2,'Zone-H');

-- Q1: ROW_NUMBER() per crop temperature tracking
SELECT log_id,
 crop_label, 
 temperature, 
 ROW_NUMBER() OVER 
 (PARTITION BY crop_label ORDER BY temperature DESC) as 
 temp_row FROM robot_sensor_log;

-- Q2: RANK() for rainfall levels
SELECT log_id,
 crop_label, rainfall, 
 RANK() OVER (PARTITION BY crop_label ORDER BY rainfall DESC) as
 rain_rank FROM robot_sensor_log;
 
 

-- Q3: DENSE_RANK() on Soil pH values
SELECT n.nutrient_id,
 r.crop_label, 
 n.ph,
 DENSE_RANK() OVER (PARTITION BY r.crop_label ORDER BY n.ph DESC)
 as ph_rank 
 FROM soil_nutrients_log n JOIN robot_sensor_log r 
 ON n.log_id = r.log_id;

-- Q4: LAG() Time-Series delta evaluation
SELECT log_id, 
recorded_at, 
temperature, 
LAG(temperature, 1) OVER (ORDER BY recorded_at)
 as prior_temp 
 FROM robot_sensor_log;

-- Q5: LEAD() predictive calculation for future incoming rainfall
SELECT log_id,
 crop_label,
 rainfall, 
 LEAD(rainfall, 1) OVER (PARTITION BY crop_label ORDER BY recorded_at) 
 as next_rain
 FROM robot_sensor_log;
 
 -- Q6: NTILE(4) Quartile division for nitrogen levels
SELECT nutrient_id,
 N, NTILE(4) OVER (ORDER BY N DESC) 
 as nitrogen_quartile
 FROM soil_nutrients_log;

-- Q7: CUME_DIST() cumulative statistical distribution of Potassium
SELECT nutrient_id,
 K, CUME_DIST() OVER (ORDER BY K ASC)
 as potassium_cume_dist 
 FROM soil_nutrients_log;

-- Q8: FIRST_VALUE() recovery tracking for robot startup profile
SELECT log_id,
 robot_id, 
 recorded_at,
 temperature, 
 FIRST_VALUE(temperature) OVER (PARTITION BY robot_id ORDER BY recorded_at ASC)
 as startup_temp
 FROM robot_sensor_log;

-- Q9: LAST_VALUE() bounded assessment for ongoing irrigation evaluation
SELECT log_id, 
crop_label,
 humidity, 
 LAST_VALUE(humidity) OVER (PARTITION BY crop_label 
 ORDER BY recorded_at ASC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)
 as final_humidity 
FROM robot_sensor_log;

-- Q10: PERCENT_RANK() calculation for Phosphorous content index inside zones
SELECT nutrient_id,
 soil_zone, P, 
 PERCENT_RANK() OVER (PARTITION BY soil_zone ORDER BY P DESC) 
 as phosphorous_pct_rank
 FROM soil_nutrients_log;
 
 -- Q11: Comprehensive Deep Inner Join with complete statistical cross aggregates
SELECT r.crop_label,
 s.soil_zone,
 AVG(r.temperature)
 as avg_temp,
 AVG(s.ph) as avg_ph, 
 SUM(s.N) as total_n
 FROM robot_sensor_log r INNER JOIN soil_nutrients_log s ON r.log_id = s.log_id 
 GROUP BY r.crop_label,
 s.soil_zone;

-- Q12: Complex Left Join checking for any anomalies or unlinked physical sensors
SELECT r.log_id, 
r.robot_id, 
r.crop_label, 
s.nutrient_id 
FROM robot_sensor_log r 
LEFT JOIN soil_nutrients_log s
 ON r.log_id = s.log_id 
 WHERE r.temperature > 25.0;

-- Q13: Filter using HAVING clause on combined aggregated database fields
SELECT r.crop_label, 
COUNT(r.log_id) as total_readings,
 MIN(s.ph) as min_ph
 FROM robot_sensor_log r 
 JOIN soil_nutrients_log s 
 ON r.log_id = s.log_id
 GROUP BY r.crop_label 
 HAVING COUNT(r.log_id) >= 5 
 AND AVG(s.ph) > 6.0;

-- Q14: Subquery-Driven execution checking metrics exceeding average nitrogen limits
SELECT log_id,
 robot_id,
 crop_label 
 FROM robot_sensor_log
 WHERE log_id 
 IN (SELECT log_id FROM soil_nutrients_log WHERE N > (SELECT AVG(N) FROM soil_nutrients_log));

-- Q15: Correlated Subquery validation assessing crop moisture parameters
SELECT r1.log_id,
 r1.crop_label,
 r1.humidity 
 FROM robot_sensor_log r1
 WHERE r1.humidity > 
 (SELECT AVG(r2.humidity) 
 FROM robot_sensor_log r2 
 WHERE r2.crop_label = r1.crop_label);

-- Q16: Deep Multi-conditional CASE structures analyzing robot behaviors
SELECT log_id,
 crop_label,
 temperature, 
 CASE WHEN temperature > 28 
 AND humidity < 65 THEN 'CRITICAL'
 WHEN temperature 
 BETWEEN 22 AND 28 THEN 'OPTIMAL' ELSE 'STABLE' END as decision
 FROM robot_sensor_log;

-- Q17: Multi-Level Common Table Expressions (CTE) evaluating chemical imbalances
WITH HighN AS
 (SELECT log_id, N FROM soil_nutrients_log WHERE N > 80),
 HotTemp AS (SELECT log_id, crop_label,
 temperature 
 FROM robot_sensor_log 
 WHERE temperature > 24.0) 
 SELECT hn.log_id, hc.crop_label, 
 hn.N FROM 
 HighN hn 
 JOIN HotTemp hc 
 ON hn.log_id = hc.log_id;

-- Q18: Cross-tabulation looking into water pump operational time-frames
SELECT robot_id, 
SUM(CASE WHEN watering_status = 1 
THEN 1
 ELSE 0 END)
 as pump_on, 
 COUNT(*) 
 as logs FROM robot_sensor_log 
 GROUP BY robot_id;

-- Q19: Mathematical standard deviation and variance monitoring on soil acidity matrix
SELECT s.soil_zone, 
STDDEV(s.ph) 
as pH_stddev,
 VARIANCE(s.ph) 
 as pH_variance 
 FROM soil_nutrients_log s 
 GROUP BY s.soil_zone;

-- Q20: Mathematical FLOOR, CEIL, and ROUND cleanups on sensory feeds
SELECT log_id,
crop_label, 
ROUND(temperature, 1) 
as r_temp,
FLOOR(temperature)
 as f_temp,
 CEIL(temperature)
 as c_temp 
 FROM robot_sensor_log;

 -- Q21: Moving Average Calculation using dynamic window bounds for temperature rolling averages
SELECT log_id,
 crop_label, 
 recorded_at, 
 AVG(temperature) OVER (PARTITION BY crop_label
 ORDER BY recorded_at ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) 
 as rolling_avg
 FROM robot_sensor_log;

-- Q22: Cumulative Running Total tracking rainfall accumulation across telemetry streams
SELECT log_id, 
       robot_id, 
       recorded_at,
       SUM(rainfall) OVER (
           PARTITION BY robot_id 
           ORDER BY recorded_at 
           ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
       ) as cumulative_rain 
FROM robot_sensor_log;


-- Q23: Mixed Window Processing mapping specific NPK ratios to total crop pools
SELECT s.nutrient_id,
 r.crop_label,
 ROUND(((s.N + s.P + s.K) / SUM(s.N + s.P + s.K) OVER (PARTITION BY r.crop_label)) * 100, 2) 
 as contribution_pct
 FROM soil_nutrients_log s 
 JOIN robot_sensor_log r 
 ON s.log_id = r.log_id;

-- Q24: String manipulations tracking consolidated zone assets and alphanumeric tags
SELECT s.nutrient_id,
 UPPER(r.crop_label) 
 as crop, 
 CONCAT(s.soil_zone, '-ID-', s.nutrient_id) 
 as barcode_tag 
 FROM soil_nutrients_log s 
 JOIN robot_sensor_log r
 ON s.log_id = r.log_id;

-- Q25: Filtering derived partitions using inner inline views to discover secondary ranked values
SELECT * FROM (SELECT log_id,
 crop_label, humidity, 
 DENSE_RANK() OVER (PARTITION BY crop_label ORDER BY humidity DESC) 
 as hum_rank 
 FROM robot_sensor_log)
 as inline_tab 
 WHERE hum_rank = 2;
 
 -- Q26: Dynamic analytics tracking peak shifts between current, preceding and succeeding records
SELECT log_id, 
crop_label,
 rainfall, 
 LAG(rainfall, 1) OVER (PARTITION BY crop_label ORDER BY log_id) 
 as prior_rain, LEAD(rainfall, 1) OVER (PARTITION BY crop_label ORDER BY log_id)
 as next_rain 
 FROM robot_sensor_log;

-- Q27: Extraction processing parsing granular hour matrices out of timestamp variables
SELECT log_id,
 recorded_at, 
 EXTRACT(HOUR FROM recorded_at)
 as hour_marker, EXTRACT(DAY FROM recorded_at)
 as day_marker 
 FROM robot_sensor_log
 WHERE crop_label = 'rice';

-- Q28: Complex inline EXISTS constraints evaluating localized chemical presence matrices
SELECT r.log_id,
 r.crop_label, 
 r.temperature
 FROM robot_sensor_log r
 WHERE EXISTS (SELECT 1 FROM soil_nutrients_log s
 WHERE s.log_id = r.log_id 
 AND s.ph < 6.0 
 AND s.soil_zone 
 IN ('Zone-C', 'Zone-E'));

-- Q29: Dynamic Biochemical threshold mapping using hybrid nested CASE statements
SELECT s.nutrient_id,
 s.N, r.crop_label, 
 CASE WHEN s.N > 100 
 THEN 'OVERFLOW' 
 WHEN s.N BETWEEN 50 AND 100 THEN 'BALANCED' ELSE 'DEFICIENCY' END as alert_tier
 FROM soil_nutrients_log s
 JOIN robot_sensor_log r
 ON s.log_id = r.log_id;

-- Q30: Absolute Complex Enterprise Query - Summary window grouping evaluation
SELECT DISTINCT r.crop_label,
 MAX(r.temperature) OVER(PARTITION BY r.crop_label)
 as peak_temp, MIN(r.temperature) OVER(PARTITION BY r.crop_label) 
 as valley_temp,
 AVG(s.ph) OVER(PARTITION BY r.crop_label) 
 as crop_ph 
 FROM robot_sensor_log r 
 JOIN soil_nutrients_log s 
 ON r.log_id = s.log_id;



 
