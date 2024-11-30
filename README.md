# BMW Sales Data Analysis and Insights Project

## Project Overview
This project analyzes BMW sales data from 2019 to 2023, showcasing an end-to-end data solution pipeline. The goal is to uncover insights into sales trends, channel performance, and regional revenue distribution to aid data-driven decision-making.

The project involves:
- Building an ETL pipeline using **Azure Data Factory**.
- Creating a star schema for data modeling in **Azure SQL Database**.
- Developing interactive dashboards in **Power BI** for storytelling and insights.

## Business Goals
1. Increasing revenue across regions, countries, and sale channels
2. Analyzing year-over-year growth trends and average revenue per sale
3. Identifying the best-performing regions, countries, and channels.
4. Identifying top-performing car models and adjusting inventory or marketing.
6. Providing actionable insights to optimize sales strategies.

## Tools and Technologies
- **Azure Data Factory**: For ETL pipeline.
- **Azure SQL Database**: For data storage and modeling.
- **Power BI**: For data visualization and dashboards.
- **SQL**: For data transformation and querying.

## ETL Pipeline Overview
The ETL pipeline was built in Azure Data Factory, extracting raw data from Kaggle, transforming it, and loading it into Azure SQL Database. Below is the schema for the pipeline:

![ETL Pipeline Schema](https://github.com/binita-roy/BMW-Sales-Data-Analysis-and-Insights-Project/blob/5a8dd0737eb7850af8d1c17443c441e58948321b/ETL%20Pipeline_BMW%20Sales%20Data.PNG)

## Data Modeling
A star schema was implemented in Azure SQL Database to support analytical queries. It consists of:
- **Fact Table**: `sales_fact` containing revenue, quantity sold, etc.
- **Dimension Tables**: `model_dim`, `region_dim`, `channel_dim`, `country_dim`, `date_dim`.

![Star Schema Visualization](https://github.com/binita-roy/BMW-Sales-Data-Analysis-and-Insights-Project/blob/5a8dd0737eb7850af8d1c17443c441e58948321b/Database%20Schema_BMW%20Sales%20Data.PNG)

## Dashboards and Insights
### Key Metrics (KPIs) to Track
- **Total Revenue**: Overall revenue generated from sales.
- **Year-Over-Year (YOY) Growth**: Growth in revenue from previous year.
- **Total Quantity of Sold**: Total quantity of cars sold.
- **Average Revenue per Sale**: Revenue generated on average per sale.
- 
Three dashboards were created in Power BI to present the findings interactively:

### 1. BMW Sales Overview
- **Visualizations**: Progress in achieving Yearly Target Revenue, Yearly Total Quantity Sold, and Year Over Year Growth.
- **Insights**: A summary of sales metrics to provide a quick performance overview.
- ![BMW Sales Overview Snapshot](https://github.com/binita-roy/BMW-Sales-Data-Analysis-and-Insights-Project/blob/5a8dd0737eb7850af8d1c17443c441e58948321b/Dashboard_BMW%20Sales%20Overview.PNG)

### 2. Detailed Sales Insights
- **Visualizations**: Revenue, Total Quantity of Sold, and Average Revenue per Sales Channel by Model, Region, and Channel.
- **Insights**: Deeper analysis of sales patterns by car models and sales channels.
- ![Detailed Sales Insights Snapshot](https://github.com/binita-roy/BMW-Sales-Data-Analysis-and-Insights-Project/blob/5a8dd0737eb7850af8d1c17443c441e58948321b/Dashboard_Detailed%20Sales%20Insights.PNG)

### 3. Sales Performance and Growth Analysis
- **Visualizations**: Total Revenue, Year-over-Year Growth in Revenue, Total Quantity of Sold, Average Revenue per Sale.
- **Insights**: Focused on growth metrics and forecasting total revenue, total quantity of sold, and average revenue per sale for the next 4 quarters.
- ![Sales Performance Snapshot](https://github.com/binita-roy/BMW-Sales-Data-Analysis-and-Insights-Project/blob/5a8dd0737eb7850af8d1c17443c441e58948321b/Dashboard_Sales%20Performance%20and%20Growth%20Analysis.PNG)

## Key Insights
- Current Total Revenue per Year is 74,73M euros, which is 12.08% behind to achieve the Yearly Target Revenue of 85M euros.
- In 2023 around 24.80% Year over Year has been achieved, but it should be scaled upto 35% in the upcoming years.
- Currently, 2916 cars are sold per year, which should be increased to 3500 for achieving the target.
- Top-performing car models are: BMW Z4, BMW3 Series, BMW X4, BMW M4, and BMW X1
- The Wholesale channel has generated around 44% of total revenue.
- The Online sales channel has generated the highest amount (33.79%) of Average Revenue per Sale, although this sales channel was introduced in 2023.

## Recommendation
- Monitoring the recommended Key Performance Metrics (KPIs) to observe the progress.
- Promoting the top-performing car models based on the regions.
- Promoting the Online sales channel for increasing the customer engagement as well as the revenue.

## Key Learnings
- Hands-on experience with Azure services for ETL and data modeling.
- Developed proficiency in Power BI for creating impactful dashboards and storytelling.
- Applied data normalization techniques with star schema design for efficient querying and analysis.

---

## Credits
- **Dataset Source**: [Kaggle BMW Sales Data](https://www.kaggle.com/datasets/sherifsamyabdelkarem/sales-data-bmw).
- **Project Author**: Binita Roy  
- **Contact**: [LinkedIn](https://www.linkedin.com/in/binita-roy/) | [Email](mailto:binitaroy1312@gmail.com)

  
