# Sales Trend Analysis Using SQL Aggregations





## Title:



Sales Trend Analysis — Monthly Revenue \& Order Volume Using SQL Server



## Executive Summary:



This project focuses on analyzing sales trends from an e-commerce dataset using SQL Server.

By grouping data by month and year, the analysis identifies revenue growth patterns and order volume fluctuations.

The insights generated help understand how seasonal trends influence business performance and revenue consistency.



## Business Problem:



The company wants to understand:



How sales and order volumes vary month-to-month and year-to-year.



Which months generate the highest revenue.



How to use data-driven insights to improve planning, inventory, and marketing strategies.



Without this analysis, decision-making relies on assumptions rather than data patterns.



## Methodology:



The following steps were followed to complete this task:



Step 1: Database \& Table Setup



Created a database named SalesAnalysisDB in SQL Server Management Studio.



Imported the e-commerce dataset into a table named online\_sales.



CREATE DATABASE SalesAnalysisDB;

GO

USE SalesAnalysisDB;

GO



CREATE TABLE online\_sales (

&nbsp;   InvoiceNo NVARCHAR(20) NULL,

&nbsp;   StockCode NVARCHAR(20) NULL,

&nbsp;   Description NVARCHAR(255) NULL,

&nbsp;   Quantity INT NULL,

&nbsp;   InvoiceDate DATETIME NULL,

&nbsp;   UnitPrice DECIMAL(10,2) NULL,

&nbsp;   CustomerID NVARCHAR(20) NULL,

&nbsp;   Country NVARCHAR(50) NULL

);



Step 2: Data Cleaning \& Import



Used the Import Wizard in SQL Server to import the CSV file.



Ensured all columns allowed NULL values to avoid insertion errors.



Adjusted data types (Quantity → INT, UnitPrice → DECIMAL).



Step 3: Data Analysis Queries

➤ Monthly Revenue \& Order Volume

SELECT 

&nbsp;   YEAR(InvoiceDate) AS OrderYear,

&nbsp;   MONTH(InvoiceDate) AS OrderMonth,

&nbsp;   SUM(Quantity \* UnitPrice) AS TotalRevenue,

&nbsp;   COUNT(DISTINCT InvoiceNo) AS OrderVolume

FROM online\_sales

GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)

ORDER BY OrderYear, OrderMonth;



➤ Filter by Specific Year (Example: 2011)

SELECT 

&nbsp;   YEAR(InvoiceDate) AS OrderYear,

&nbsp;   MONTH(InvoiceDate) AS OrderMonth,

&nbsp;   SUM(Quantity \* UnitPrice) AS TotalRevenue,

&nbsp;   COUNT(DISTINCT InvoiceNo) AS OrderVolume

FROM online\_sales

WHERE YEAR(InvoiceDate) = 2011

GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)

ORDER BY OrderYear, OrderMonth;



➤ Top 3 Months by Revenue

SELECT TOP 3 

&nbsp;   YEAR(InvoiceDate) AS OrderYear,

&nbsp;   MONTH(InvoiceDate) AS OrderMonth,

&nbsp;   SUM(Quantity \* UnitPrice) AS TotalRevenue

FROM online\_sales

GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)

ORDER BY TotalRevenue DESC;



## Skills Demonstrated:



SQL Aggregation Functions: SUM(), COUNT(), DISTINCT



Date Functions: YEAR(), MONTH()



Data Grouping: GROUP BY, ORDER BY



Data Cleaning \& Importing: Using SQL Server Import Wizard



Business Analytics: Monthly revenue and order trend identification



## Results \& Business Recommendations:



## Results:





Year	Month	Total Revenue	Order Volume

2010	12	₹189,345	521

2011	01	₹212,560	643

2011	02	₹198,210	602

Recommendations



Focus marketing efforts on high-performing months to maximize profit.



Offer discounts or promotions in low-revenue months to boost engagement.



Use these trends to forecast future sales and manage inventory more efficiently.



## Next Steps:



Integrate this analysis with Power BI for visual dashboards.



Extend analysis to include product category performance.



Automate data refresh and reporting using SQL Server Agent.



## Project Details:



Internship: Data Analyst Intern 

Task: 6 — Sales Trend Analysis Using Aggregations

Tool Used: SQL Server Management Studio 21

Author: P Harsha Vardhan

