
# 📊 Power BI Dashboard – Sales Data Analysis

## 🧠 Objective
The goal of this project is to design an **interactive Power BI dashboard** using the **Sample Sales Data** from Kaggle.  
It provides valuable business insights by visualizing **sales trends, profit margins, and product performance** across countries, years, and categories.

---

## 📘 Dataset Overview
- **Dataset Name:** `sales_data_sample.csv`  
- **Source:** [Kaggle – Sample Sales Data](https://www.kaggle.com/datasets/kyanyoga/sample-sales-data)  
- **Description:**  
  The dataset contains company sales transaction data including order details, sales amount, profit estimation, product line, country, and order date.  
  It covers multiple regions (USA, EMEA, APAC) over the years **2003–2005**.

### Main Columns
| Column | Description |
|--------|-------------|
| ORDERNUMBER | Unique order ID |
| QUANTITYORDERED | Number of items sold |
| PRICEEACH | Unit price per product |
| SALES | Total sales amount |
| ORDERDATE | Date when the order was placed |
| STATUS | Order shipping status |
| PRODUCTLINE | Category/type of product |
| COUNTRY | Country of the sale |
| YEAR_ID | Year of the order |

---

## 🧩 Dashboard Layout
The dashboard includes the following visuals:
1. **KPI Cards:** Total Sales, Quantity Sold, Profit, Total Orders  
2. **Line Chart:** Sales trend over time (monthly/yearly)  
3. **Bar Chart:** Top 5 Product Lines by Sales  
4. **Pie Chart:** Sales by Channel or Product Line  
5. **Map:** Country-wise Sales Performance  
6. **Filters/Slicers:** Region, Year, Product Line, Order Status  

---


## 🧮 DAX Calculations Used
```DAX
Total Sales = SUM('SalesData'[SALES])
Total Quantity = SUM('SalesData'[QUANTITYORDERED])
Average Price = AVERAGE('SalesData'[PRICEEACH])
Total Orders = DISTINCTCOUNT('SalesData'[ORDERNUMBER])
Average Sales per Order = DIVIDE([Total Sales], [Total Orders])
Estimated Profit = [Total Sales] * 0.3
Profit Margin (%) = DIVIDE([Estimated Profit], [Total Sales]) * 100
```

---

## 💡 Key Insights
- Highest sales are recorded in **USA and EMEA** regions.  
- **Classic Cars** and **Motorcycles** are the top-performing product lines.  
- Steady sales growth observed from **2003–2005**.  
- **Online and Offline** sales channels perform similarly.  
- Seasonal peaks in **Q4** indicate increased demand.  

---

## ✅ Conclusion
This Power BI dashboard delivers a clear overview of business performance through interactive visuals and KPIs.  
It helps stakeholders monitor **sales trends**, **profitability**, and **regional performance** efficiently, supporting data-driven decision-making.

---

## 👤 Prepared by
**P Harsha Vardhan**  
*Data Analyst Intern *
