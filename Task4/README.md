# Online Retail Data Analysis – SQL Server:



This project demonstrates how to analyze e-commerce transactional data using \*\*SQL Server (T-SQL)\*\*.

It showcases skills in \*\*data extraction, aggregation, subqueries, joins, views, and query optimization\*\*.



---



# Dataset:



\*\*Source:\*\* `data.csv` (Online Retail Dataset)



| Column        | Description                            |

| ------------- | -------------------------------------- |

| `InvoiceNo`   | Unique invoice number (transaction ID) |

| `StockCode`   | Product code                           |

| `Description` | Product name                           |

| `Quantity`    | Quantity sold                          |

| `InvoiceDate` | Date and time of purchase              |

| `UnitPrice`   | Price per unit                         |

| `CustomerID`  | Customer identifier                    |

| `Country`     | Country of customer                    |



---



# Tools Used:



\* \*\*Microsoft SQL Server Management Studio (SSMS)\*\*

\* \*\*SQL Server (T-SQL syntax)\*\*



---



# How to Run:



1\. \*\*Clone or download\*\* this repository.

2\. Place your dataset file (e.g., `data.csv`) in a known directory on your system.

3\. Open `OnlineRetail.sql` in \*\*SQL Server Management Studio (SSMS)\*\*.

4\. Update the `BULK INSERT` path inside the script:



&nbsp;  ```sql

&nbsp;  BULK INSERT OnlineRetail

&nbsp;  FROM 'C:\\path\\to\\data.csv'

&nbsp;  WITH (

&nbsp;      FIRSTROW = 2,

&nbsp;      FIELDTERMINATOR = ',',

&nbsp;      ROWTERMINATOR = '\\n',

&nbsp;      CODEPAGE = '65001',

&nbsp;      TABLOCK

&nbsp;  );

&nbsp;  ```

5\. Execute the script step by step (F5).



---



# SQL Features Demonstrated:



| Feature                                  | Example                                       |

| ---------------------------------------- | --------------------------------------------- |

| \*\*SELECT / WHERE / ORDER BY / GROUP BY\*\* | Basic data extraction and aggregation         |

| \*\*Aggregate Functions\*\*                  | `SUM`, `AVG` for revenue calculations         |

| \*\*Subqueries\*\*                           | Identify customers spending above the average |

| \*\*JOINs\*\*                                | Self-join to find products bought together    |

| \*\*Views\*\*                                | Create reusable data views for reporting      |

| \*\*Indexes\*\*                              | Optimize query performance                    |



---



# Key Analyses Performed:



1\. \*\*View all records\*\*

2\. \*\*Total revenue per country\*\*

3\. \*\*Average revenue per customer\*\*

4\. \*\*Top 5 selling products\*\*

5\. \*\*Transactions from the United Kingdom only\*\*

6\. \*\*Customers spending above average (subquery)\*\*

7\. \*\*Sales summary view (`vw\_SalesByCountry`)\*\*

8\. \*\*Indexes on `Country` and `InvoiceDate` for performance\*\*



---



# Deliverables:



\* `OnlineRetail.sql` → SQL script with all queries

\* `Screenshots/` → Folder containing output screenshots (results of queries)



---



# Author:



P.Harsha Vardhan

---



✅ \*This project fulfills SQL fundamentals such as SELECT, JOIN, GROUP BY, Subqueries, Views, and Index optimization using SQL Server.\*



