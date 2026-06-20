create DATABASE task2;
USE task2;

CREATE TABLE Customers (
    Customer_ID VARCHAR(50) PRIMARY KEY,
    Customer_Name VARCHAR(100),
    Region VARCHAR(50),
    Segment VARCHAR(50)
);

LOAD DATA LOCAL INFILE 'D:/Customers.csv'
INTO TABLE Customers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

CREATE TABLE Orders (
    Order_ID VARCHAR(50),
    Order_Date VARCHAR(50),
    Customer_ID VARCHAR(50),
    Product_Category VARCHAR(100),
    Sales DECIMAL(10,2),
    Quantity INT,
    Profit DECIMAL(10,2),
    Discount DECIMAL(10,2)
);

LOAD DATA LOCAL INFILE 'D:/Orders.csv'
INTO TABLE Orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SELECT COUNT(*) FROM Customers;
SELECT COUNT(*) FROM Orders;

# Inner join
SELECT 
	o.Order_ID,
    o.Order_Date,
    C.Customer_Name,
    c.Region,
    o.Product_Category,
    o.Sales,
    o.Profit
FROM Orders o
INNER JOIN Customers c
ON o.Customer_ID = c.Customer_ID
LIMIT 20;

# Total Sales by Region
SELECT
	c.Region,
    ROUND(SUM(o.Sales),2) AS Total_Sales
FROM Orders o
JOIN Customers c
ON o.Customer_ID = c.Customer_ID
GROUP BY c.Region
ORDER BY Total_Sales DESC;


# Profit Margin by Category
SELECT
	Product_Category,
    ROUND((SUM(Profit)/SUM(Sales))*100,2) AS Profit_Margin
FROM Orders
GROUP BY Product_Category
ORDER BY Profit_Margin DESC;


# Monthly Sales Trend
SELECT
    MONTHNAME(STR_TO_DATE(Order_Date,'%d-%m-%Y')) AS Month,
    ROUND(SUM(Sales),2) AS Monthly_Sales
FROM Orders
GROUP BY MONTH(STR_TO_DATE(Order_Date,'%d-%m-%Y')),
         MONTHNAME(STR_TO_DATE(Order_Date,'%d-%m-%Y'))
ORDER BY MONTH(STR_TO_DATE(Order_Date,'%d-%m-%Y'));


# Top 5 Customers by Revenue
SELECT
	c.Customer_Name,
    ROUND(Sum(o.Sales),2) AS Total_Revenue
FROM Orders o
JOIN Customers c
ON o.Customer_ID = c.CUstomer_ID
GROUP BY c.Customer_Name
ORDER BY Total_Revenue DESC
LIMIT 5;
