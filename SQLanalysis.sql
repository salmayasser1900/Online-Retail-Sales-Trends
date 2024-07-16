-- lets start with the unique data
SELECT COUNT(DISTINCT CUSTOMERNAME) AS UniqueCustomers
FROM sales_data_sample;

-- total orders
SELECT COUNT(DISTINCT ORDERNUMBER) AS TotalOrders
FROM sales_data_sample;

-- all Product categories
SELECT COUNT(DISTINCT PRODUCTCODE) AS ProductCategories
FROM sales_data_sample;

-- Calculate the basic calculations

SELECT SUM(SALES) AS TotalSalesAmount
FROM sales_data_sample;

-- Average orders value
SELECT ROUND(AVG(OrderValue), 0) AS AverageOrderValue
FROM (
    SELECT ORDERNUMBER, SUM(SALES) AS OrderValue
    FROM sales_data_sample
    GROUP BY ORDERNUMBER
) AS AvgOrders;

-- Most frequently purchased items
SELECt PRODUCTCODE
FROM sales_data_sample

SELECT PRODUCTCODE, COUNT(*) AS PurchaseCount
FROM sales_data_sample
GROUP BY PRODUCTCODE
ORDER BY PurchaseCount DESC
LIMIT 3;

-- Purchase Products by country
SELECT COUNTRY,
COUNT(*) AS TotalOrders,
SUM(SALES) AS TotalSales
FROM sales_data_sample
GROUP BY COUNTRY
ORDER BY TotalSales DESC;

-- Purchase patterns by month
SELECT MONTH_ID, COUNT(*) AS TotalOrders,
SUM(SALES) AS TotalSales
FROM sales_data_sample
GROUP BY MONTH_ID
ORDER BY MONTH_ID;






















