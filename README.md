# Titanic Exploratory Data Analysis (EDA)





---



## Project Overview:

This project performs Exploratory Data Analysis (EDA) on the Titanic dataset, a classic dataset used for analytical learning and survival prediction studies.  

The goal is to explore, clean, and visualize data to understand relationships, identify patterns, and extract actionable insights.



---



## Datasets Used:





| File Name | Description |

|------------|-------------|

| `train.csv` | Passenger details with survival information |

| `test.csv` | Passenger details without survival labels |

| `gender\_submission.csv` | Sample survival predictions for the test data |



---



## Tools \& Libraries:





\- Platform: Google Colab / Jupyter Notebook  

\- Languages \& Libraries:

&nbsp; - `pandas` → Data manipulation  

&nbsp; - `matplotlib` → Basic plotting  

&nbsp; - `seaborn` → Advanced visualizations  



---



## EDA Workflow:





1.Basic Data Exploration  

Used `.describe()`, `.info()`, and `.value\_counts()` to understand dataset shape, data types, and statistical summaries.



2.Data Visualization  

Created correlation visuals using:

\- `sns.pairplot()` → pairwise relationships  

\- `sns.heatmap()` → correlation matrix



3.Relationship \& Trend Analysis  

Explored patterns between survival rate and key attributes such as:

\- Gender (`Sex`)

\- Class (`Pclass`)

\- Age and Fare



4.Univariate \& Bivariate Visuals  

Used:

\- Histograms to study distributions  

\- Boxplots to compare continuous features  

\- Scatterplots to observe variable relationships



5.Observations  

Added insights and remarks after each major visualization for clear interpretation.



6.Summary of Findings  

Compiled all patterns and takeaways into a structured summary for presentation and reporting.



---



## Key Insights





| Insight | Description |

|----------|-------------|

| 🧍‍♀️ Gender | Females had a significantly higher survival rate than males |

| 🛳️ Class | 1st-class passengers were more likely to survive than 3rd-class |

| 👶 Age | Younger passengers (especially children) had higher survival chances |

| 💰 Fare | Higher fare correlated positively with survival probability |

| 📈 Trend | Most passengers were aged between 20–40 years |





---



## How to Run the Notebook:





1\. Open \[Google Colab](https://colab.research.google.com/) or Jupyter Notebook.  

2\. Upload the three datasets: `train.csv`, `test.csv`, and `gender\_submission.csv`.  

3\. Run all cells sequentially.  

4\. The notebook will automatically generate visuals and insights.  

5\. Save and download the final output (`EDA\_Report.pdf` or processed CSVs).



---



## Output Files:





| File Name | Description |

|------------|-------------|

| `train\_with\_month.csv` | Dataset with generated `order\_date` and extracted month column |

| `grouped\_by\_year\_month.csv` | Aggregated file showing grouped results by year and month |

| `EDA\_Report.pdf` | Final professional report with visuals, insights, and author info |



---



## Learning Outcomes:





\- Performed end-to-end data exploration and visualization.  

\- Identified meaningful trends through graphical analysis.  

\- Gained experience with real-world data preparation and cleaning.  

\- Strengthened understanding of EDA practices and Python libraries.



---



## Author:





P. Harsha Vardhan  

Data Analyst Intern



---











