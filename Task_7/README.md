# Title:



## Basic Sales Summary using SQLite and Python:



## Executive Summary:



This project demonstrates how to connect Python with a SQLite database to analyze sales data and generate a simple summary report.

Using SQL queries inside Python, we calculated key sales metrics like total quantity sold and total revenue per product.

Finally, we visualized the results using a bar chart to gain insights into which products generate the highest revenue.



## Business Problem:



Small businesses often maintain sales data in simple database files but struggle to quickly analyze them for decision-making.

The challenge is to create a lightweight and efficient way to:



Calculate total sales and revenue per product



Identify best-selling items



Visualize the performance of different products

This helps business owners make data-driven decisions to improve inventory and pricing strategies.



## Methodology:



#### Data Creation:



Built a SQLite database (sales\_data.db) and created a table named sales with columns — product, quantity, and price.



Inserted multiple rows of sample sales transactions.



#### Data Extraction (SQL):



Used the SQL query below to summarize total quantity and total revenue for each product:



SELECT product,

&nbsp;      SUM(quantity) AS total\_qty,

&nbsp;      SUM(quantity \* price) AS total\_revenue

FROM sales

GROUP BY product;





#### Data Analysis (Python \& Pandas):



Loaded SQL output into a pandas DataFrame.



Displayed the summarized data using print().



### Visualization (Matplotlib):



Created a bar chart showing total revenue for each product to highlight top-performing items.



Saved the chart as sales\_chart.png.



## Skills:



Python Programming



SQL (SELECT, SUM, GROUP BY)



SQLite Database Management



Data Analysis using pandas



Data Visualization using matplotlib



Working in Google Colab / Jupyter Notebook



GitHub Documentation \& Version Control



## Results \& Business Recommendations

### Results:



Successfully connected Python with SQLite and summarized sales data.



Identified top-performing products based on revenue.



Created a clear visual representation (bar chart) of sales performance.



## Recommendations:



Focus marketing on high-revenue products.



Reevaluate pricing and stock levels for low-performing items.



Integrate this analysis into a dashboard for real-time sales monitoring.



## Next Steps:



Automate the sales data update process using scripts or APIs.



Expand analysis to include profit margin, average order value, and time-based trends.



Build an interactive Power BI / Tableau dashboard using the same dataset.



Store and process larger datasets using SQL databases like MySQL or PostgreSQL.

