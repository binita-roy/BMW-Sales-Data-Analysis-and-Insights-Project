# BMW Sales Data Analysis and Insights Project

## Project Overview
This project analyzes BMW sales data from 2019 to 2023, showcasing an end-to-end data solution pipeline. The goal is to uncover insights into sales trends, channel performance, and regional revenue distribution to aid data-driven decision-making.

The project involves:
- Building an ETL pipeline using **Azure Data Factory**.
- Creating a star schema for data modeling in **Azure SQL Database**.
- Developing interactive dashboards in **Power BI** for storytelling and insights.

## Business Goals
1. Identify the best-performing regions, countries, and channels.
2. Understand the sales performance of car models.
3. Analyze year-over-year growth trends and average revenue per sale.
4. Provide actionable insights to optimize sales strategies.

## Tools and Technologies
- **Azure Data Factory**: For ETL pipeline.
- **Azure SQL Database**: For data storage and modeling.
- **Power BI**: For data visualization and dashboards.
- **Python**: For statistical tests and prediction modeling.
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
Three dashboards were created in Power BI to present the findings interactively:

### 1. BMW Sales Overview
- **Visualizations**: Total Revenue, Total Quantity Sold, Year Over Year Growth, and Average Revenue per Sale (Cards).
- **Insights**: A summary of sales metrics to provide a quick performance overview.
- ![BMW Sales Overview Snapshot](https://github.com/binita-roy/BMW-Sales-Data-Analysis-and-Insights-Project/blob/5a8dd0737eb7850af8d1c17443c441e58948321b/Dashboard_BMW%20Sales%20Overview.PNG)

### 2. Detailed Sales Insights
- **Visualizations**: Revenue by Model, Region, Country, and Channel (Matrix, Maps).
- **Insights**: Deeper analysis of sales patterns by product and geography.
- ![Detailed Sales Insights Snapshot](https://github.com/binita-roy/BMW-Sales-Data-Analysis-and-Insights-Project/blob/5a8dd0737eb7850af8d1c17443c441e58948321b/Dashboard_Detailed%20Sales%20Insights.PNG)

### 3. Sales Performance and Growth Analysis
- **Visualizations**: Year-over-Year Growth (Gauge), Revenue Progress (KPI).
- **Insights**: Focused on growth metrics and achieving revenue targets.
- ![Sales Performance Snapshot](https://github.com/binita-roy/BMW-Sales-Data-Analysis-and-Insights-Project/blob/5a8dd0737eb7850af8d1c17443c441e58948321b/Dashboard_Sales%20Performance%20and%20Growth%20Analysis.PNG)

## Key Learnings
- Hands-on experience with Azure services for ETL and data modeling.
- Developed proficiency in Power BI for creating impactful dashboards and storytelling.
- Applied data normalization techniques with star schema design for efficient querying and analysis.

## Future Work
- **Real-Time Data Processing**: Incorporate streaming pipelines to enable real-time insights.
- **Predictive Modeling**: Build machine learning models for demand forecasting or revenue prediction.
- **Customer Insights**: Add dashboards focused on customer satisfaction and feedback trends.

---

## Credits
- **Dataset Source**: [Kaggle BMW Sales Data](https://www.kaggle.com/datasets/sherifsamyabdelkarem/sales-data-bmw).
- **Project Author**: Binita Roy  
- **Contact**: [Your LinkedIn Profile](https://www.linkedin.com/in/binita-roy/) | [Your Email](mailto:binitaroy1312@gmail.com)

  
