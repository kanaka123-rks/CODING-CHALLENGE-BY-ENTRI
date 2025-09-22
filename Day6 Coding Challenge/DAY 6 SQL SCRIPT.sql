
CREATE database FORMER_YEILD;
USE FORMER_YEILD;

CREATE TABLE farmers (
    farmer_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(150),
    hire_date DATE
);

INSERT INTO farmers (farmer_id, first_name, last_name, email, hire_date) VALUES
(1, 'John', 'Doe', 'john.doe@agri-innovate.com', '2020-05-15'),
(2, 'Jane', 'Smith', 'jane.smith@agri-innovate.com', '2021-02-20'),
(3, 'Peter', 'Jones', 'peter.jones@agri-innovate.com', '2020-11-10'),
(4, 'Maria', 'Garcia', 'maria.garcia@agri-innovate.com', '2022-08-01'),
(5, 'Alex', 'Chen', 'alex.chen@agri-innovate.com', '2023-03-25');



CREATE TABLE plots (
    plot_id INT PRIMARY KEY,
    plot_name VARCHAR(100),
    farmer_id INT,
    crop_type VARCHAR(100),
    soil_type VARCHAR(100),
    FOREIGN KEY (farmer_id) REFERENCES farmers(farmer_id)
);

INSERT INTO plots (plot_id, plot_name, farmer_id, crop_type, soil_type) VALUES
(101, 'West Field', 1, 'Wheat', 'Loam'),
(102, 'North Pasture', 2, 'Corn', 'Clay'),
(103, 'South Farm', 1, 'Soybeans', 'Sand'),
(104, 'East Meadow', 3, 'Wheat', 'Loam'),
(105, 'Plot A', 4, 'Corn', 'Clay'),
(106, 'Plot B', 5, 'Soybeans', 'Sand'),
(107, 'High Plains', 3, 'Corn', 'Loam'),
(108, 'Valley View', 2, 'Wheat', 'Clay');


CREATE TABLE yields (
    yield_id INT PRIMARY KEY,
    plot_id INT,
    harvest_date DATE,
    yield_kg DECIMAL(10,2),
    weather_condition VARCHAR(100),
    FOREIGN KEY (plot_id) REFERENCES plots(plot_id)
);

INSERT INTO yields (yield_id, plot_id, harvest_date, yield_kg, weather_condition) VALUES
(1, 101, '2024-07-20', 1500.50, 'Sunny'),
(2, 102, '2024-09-15', 2100.75, 'Rainy'),
(3, 103, '2024-10-01', 950.20, 'Mild'),
(4, 104, '2024-07-25', 1650.30, 'Sunny'),
(5, 105, '2024-09-18', 2200.10, 'Rainy'),
(6, 106, '2024-10-05', 880.90, 'Mild'),
(7, 107, '2024-09-20', 2350.40, 'Sunny'),
(8, 108, '2024-08-01', 1450.60, 'Mild'),
(9, 101, '2023-07-19', 1400.00, 'Rainy'),
(10, 102, '2023-09-14', 2050.00, 'Sunny'),
(11, 103, '2023-10-02', 900.00, 'Mild'),
(12, 104, '2023-07-24', 1550.00, 'Rainy'),
(13, 105, '2023-09-17', 2150.00, 'Sunny'),
(14, 106, '2023-10-04', 850.00, 'Mild'),
(15, 107, '2023-09-19', 2250.00, 'Rainy'),
(16, 108, '2023-07-31', 1350.00, 'Mild'),
(17, 101, '2022-07-21', 1300.00, 'Sunny'),
(18, 102, '2022-09-16', 2000.00, 'Rainy'),
(19, 103, '2022-10-03', 800.00, 'Mild'),
(20, 104, '2022-07-26', 1500.00, 'Sunny');



CREATE TABLE irrigation_logs (
    log_id INT PRIMARY KEY,
    plot_id INT,
    irrigation_date DATE,
    water_amount_liters DECIMAL(10,2),
    FOREIGN KEY (plot_id) REFERENCES plots(plot_id)
);

INSERT INTO irrigation_logs (log_id, plot_id, irrigation_date, water_amount_liters) VALUES
(1, 101, '2024-05-10', 50000.00),
(2, 102, '2024-06-12', 75000.00),
(3, 103, '2024-07-15', 30000.00),
(4, 104, '2024-05-12', 45000.00),
(5, 105, '2024-06-15', 80000.00),
(6, 106, '2024-07-18', 25000.00),
(7, 107, '2024-06-20', 70000.00),
(8, 108, '2024-05-25', 55000.00),
(9, 101, '2023-05-11', 48000.00),
(10, 102, '2023-06-13', 72000.00),
(11, 103, '2023-07-16', 28000.00),
(12, 104, '2023-05-13', 43000.00),
(13, 105, '2023-06-16', 78000.00),
(14, 106, '2023-07-19', 23000.00),
(15, 107, '2023-06-21', 68000.00);
#------------------------------------------------------------------------------------------------------------------------------
#----Identify the top 3 most productive plots based on average yield per harvest. Show the plot_name, crop_type, and average_yield_kg.
SELECT 
    p.plot_name,
   p.crop_type,
    AVG(y.yield_kg) AS average_yield_kg
FROM plots p join yields y on p.plot_id= y.plot_id
GROUP BY plot_name, crop_type
ORDER BY average_yield_kg DESC
LIMIT 3;
#----Calculate the total water consumption for each plot and rank them from highest to lowest. Show plot_name and total_water_liters
SELECT 
    p.plot_name,
    SUM(i.water_amount_liters) AS total_water_liters,
    RANK() OVER (ORDER BY SUM(water_amount_liters) DESC) AS rankforplot
FROM plots p join irrigation_logs i on p.plot_id=i.plot_id
GROUP BY plot_name
ORDER BY rankforplot;




#----------------------------------------------------------------------------------------------------------------------------------

#--Determine the average yield for each crop type under different weather conditions. 
#--The output should have crop_type, weather_condition, and average_yield_kg
SELECT
    p.crop_type,
    y.weather_condition,
    AVG(y.yield_kg) AS average_yield_kg
FROM yields y
JOIN plots p ON y.plot_id = p.plot_id
GROUP BY p.crop_type, y.weather_condition
ORDER BY p.crop_type, y.weather_condition;

----------------------------------------------------------------------------------------------------------------------------------
#--Find the highest-yielding plot for each soil type. Show the soil_type, plot_name, and highest_yield_kg.
select p.plot_id,p.plot_name,p.soil_type,
      sum(y.yield_kg) as highest_yielding
from plots p join yields y on p.plot_id=y.plot_id
      group by p.soil_type,p.plot_name
      order by highest_yielding desc;
 
       
       
       SELECT plot_id, plot_name, soil_type, highest_yielding, ranking
FROM (
    SELECT 
        p.plot_id,
        p.plot_name,
        p.soil_type,
        SUM(y.yield_kg) AS highest_yielding,
        RANK() OVER (PARTITION BY p.soil_type ORDER BY SUM(y.yield_kg) DESC) AS ranking
    FROM plots p
    JOIN yields y ON p.plot_id = y.plot_id
    GROUP BY p.plot_id, p.plot_name, p.soil_type
) t
WHERE ranking = 1
ORDER BY soil_type;
#--------------------------------------------------------------------------------------------------------------------------------
#--Identify the farmer who manages the plots with the lowest average water 
#--consumption. Show the first_name, last_name, and their plots' 
#--average_water_liters_per_plot.
SELECT 
    f.first_name,
    p.plot_name,
    AVG(ir.water_amount_liters) AS average_water_liters_per_plot
FROM farmers f
JOIN plots p 
    ON f.farmer_id = p.farmer_id
JOIN irrigation_logs ir 
    ON p.plot_id = ir.plot_id
GROUP BY f.farmer_id, f.first_name, p.plot_name
ORDER BY average_water_liters_per_plot ASC
LIMIT 1;

SELECT 
    DATE_FORMAT(harvest_date, '%Y-%m') AS month,
    COUNT(*) AS number_of_harvests
FROM yields
WHERE harvest_date >= DATE_SUB(CURDATE(), INTERVAL 12 MONTH)
GROUP BY DATE_FORMAT(harvest_date, '%Y-%m')
ORDER BY month;

#------------------------------------------------------------------------------------------------------------------------




SELECT 
    p.plot_name,
    p.crop_type,
    y.yield_kg,
    SUM(ir.water_amount_liters) AS total_water_used
FROM plots p
JOIN yields y 
    ON p.plot_id = y.plot_id
JOIN irrigation_logs ir 
    ON p.plot_id = ir.plot_id
GROUP BY p.plot_id, p.plot_name, p.crop_type, y.yield_kg
HAVING 
    y.yield_kg < (
        SELECT AVG(y2.yield_kg)
        FROM yields y2
        JOIN plots p2 ON y2.plot_id = p2.plot_id
        WHERE p2.crop_type = p.crop_type
    )
    AND SUM(ir.water_amount_liters) > (
        SELECT AVG(ir2.total_water)
        FROM (
            SELECT p3.crop_type, SUM(ir3.water_amount_liters) AS total_water
            FROM irrigation_logs ir3
            JOIN plots p3 ON ir3.plot_id = p3.plot_id
            WHERE p3.crop_type = p.crop_type
            GROUP BY p3.plot_id
        ) ir2
    );
