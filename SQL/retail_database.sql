-- Create Database

CREATE DATABASE RetailAnalytics;

USE RetailAnalytics;


-- Create Sales Table

CREATE TABLE Sales
(
    Order_ID INT PRIMARY KEY,
    Order_Date DATE,
    Customer_Name VARCHAR(100),
    Region VARCHAR(50),
    Category VARCHAR(50),
    Product_Name VARCHAR(100),
    Quantity INT,
    Sales DECIMAL(10,2),
    Profit DECIMAL(10,2)
);


-- Insert Sample Data

INSERT INTO Sales VALUES
(1001,'2025-01-05','John Smith','West','Technology','Laptop',2,2400,500),
(1002,'2025-01-08','Mary Jones','East','Furniture','Desk',1,700,120),
(1003,'2025-01-15','David Brown','South','Office Supplies','Printer',3,900,200),
(1004,'2025-02-02','Sarah Lee','West','Technology','Monitor',2,600,150),
(1005,'2025-02-10','Michael White','Central','Furniture','Chair',5,750,100),
(1006,'2025-02-20','Emma Wilson','East','Technology','Tablet',4,1600,300),
(1007,'2025-03-05','Daniel Clark','South','Office Supplies','Papers',10,200,50),
(1008,'2025-03-12','Olivia Martin','West','Technology','Phone',3,2100,400),
(1009,'2025-03-18','James Taylor','Central','Furniture','Sofa',1,1200,250),
(1010,'2025-03-25','Sophia Anderson','East','Office Supplies','Pen Set',20,300,80);



-- BUSINESS ANALYSIS QUERIES


-- 1. Total Sales

SELECT 
SUM(Sales) AS Total_Sales
FROM Sales;



-- 2. Total Profit

SELECT
SUM(Profit) AS Total_Profit
FROM Sales;



-- 3. Sales by Category

SELECT
Category,
SUM(Sales) AS Revenue
FROM Sales
GROUP BY Category
ORDER BY Revenue DESC;



-- 4. Top Products by Sales

SELECT
Product_Name,
SUM(Sales) AS Total_Revenue
FROM Sales
GROUP BY Product_Name
ORDER BY Total_Revenue DESC;



-- 5. Sales by Region

SELECT
Region,
SUM(Sales) AS Regional_Sales
FROM Sales
GROUP BY Region
ORDER BY Regional_Sales DESC;
