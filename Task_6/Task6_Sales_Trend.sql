-- ===========================================
-- TASK 6: Sales Trend Analysis Using Aggregations
-- Author: P Harsha Vardhan
-- Tool: SQL Server Management Studio 21
-- ===========================================

USE SalesAnalysisDB;
GO

-- 1. Check top 10 records
SELECT TOP 10 * FROM data_1;
GO

-- 2. Monthly revenue & order volume
SELECT 
    YEAR(InvoiceDate) AS OrderYear,
    MONTH(InvoiceDate) AS OrderMonth,
    SUM(Quantity * UnitPrice) AS TotalRevenue,
    COUNT(DISTINCT InvoiceNo) AS OrderVolume
FROM data_1
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)
ORDER BY OrderYear, OrderMonth;
GO

-- 3. Filter for year 2011
SELECT 
    YEAR(InvoiceDate) AS OrderYear,
    MONTH(InvoiceDate) AS OrderMonth,
    SUM(Quantity * UnitPrice) AS TotalRevenue,
    COUNT(DISTINCT InvoiceNo) AS OrderVolume
FROM data_1
WHERE YEAR(InvoiceDate) = 2011
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)
ORDER BY OrderYear, OrderMonth;
GO

-- 4. Top 3 months by revenue
SELECT TOP 3 
    YEAR(InvoiceDate) AS OrderYear,
    MONTH(InvoiceDate) AS OrderMonth,
    SUM(Quantity * UnitPrice) AS TotalRevenue
FROM data_1
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)
ORDER BY TotalRevenue DESC;
GO
