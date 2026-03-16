-- SECTIONS --

-- Dataset Exploration --
#The first 10 rows.
SELECT *
FROM retail_sales_dataset
LIMIT 10;

#Total Transactions.
SELECT COUNT(*)
FROM retail_sales_dataset;

-- Revenue Analysis --
#Total Revenue.
SELECT SUM(`Total Amount`) AS Total_Revenue
FROM retail_sales_dataset;

#Revenue by each product category.
SELECT `Product Category`, SUM(`Total Amount`) AS Total_Revenue
FROM retail_sales_dataset
GROUP BY `Product Category`
ORDER BY Total_Revenue DESC;

-- Demand Analysis --
#Total Quantity sold by category-wise.
SELECT `Product Category`, SUM(`Quantity`) AS Total_Quantity
FROM retail_sales_dataset
GROUP BY `Product Category`
ORDER BY Total_Quantity DESC;

#Top 5 Best-Selling categories.
SELECT `Product Category`, SUM(`Quantity`) AS Total_Quantity
FROM retail_sales_dataset
GROUP BY `Product Category`
ORDER BY Total_Revenue DESC
LIMIT 3;

-- Customer Demographics --
#Total Revenue by gender.
SELECT `Gender`, SUM(`Total Amount`) AS Total_Revenue
FROM retail_sales_dataset
GROUP BY `Gender`;

#Average age of customers Gender-wise.
SELECT `Gender`, AVG(`Age`) AS Average_Age
FROM retail_sales_dataset
GROUP BY `Gender`;

-- Spending Behaviour --
#Average spending per transaction.
SELECT AVG(`Total Amount`)
FROM retail_sales_dataset;

#Customers who spend more than 1000 in a transaction.
SELECT *
FROM retail_sales_dataset
WHERE `Total Amount` > 1000;
