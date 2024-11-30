--Creating a new schema named "sales"
CREATE SCHEMA sales;

-- Creating the bmw_sales_data table to populate the complete dataset
CREATE TABLE sales.bmw_sales_data(
    date DATE,
    year INT,
    model VARCHAR(100),
    revenue NUMERIC,
    quantity_sold INT,
    region VARCHAR(50),
    country VARCHAR(100),
    channel VARCHAR(50)
);

-- Setting Up Star Schema

-- Date Dimension
CREATE TABLE date_dim (
    date_id INT PRIMARY KEY IDENTITY(1,1),
    date DATE NOT NULL,
    year INT NOT NULL
);

-- Model Dimension
CREATE TABLE model_dim (
    model_id INT PRIMARY KEY IDENTITY(1,1),
    model_name VARCHAR(50) NOT NULL
);

-- Region Dimension
CREATE TABLE region_dim (
    region_id INT PRIMARY KEY IDENTITY(1,1),
    region_name VARCHAR(50) NOT NULL
);

-- Country Dimension
CREATE TABLE country_dim (
    country_id INT PRIMARY KEY IDENTITY(1,1),
    country_name VARCHAR(50) NOT NULL
);

-- Channel Dimension
CREATE TABLE channel_dim (
    channel_id INT PRIMARY KEY IDENTITY(1,1),
    channel_name VARCHAR(50) NOT NULL
);

-- Inserting Values in the Dimension Tables

-- Populating date_dim
INSERT INTO date_dim (date, year)
SELECT DISTINCT date, year FROM sales.bmw_sales_data;

-- Populating model_dim
INSERT INTO model_dim (model_name)
SELECT DISTINCT model FROM sales.bmw_sales_data;

-- Populating region_dim
INSERT INTO region_dim (region_name)
SELECT DISTINCT region FROM sales.bmw_sales_data;

-- Populating country_dim
INSERT INTO country_dim (country_name)
SELECT DISTINCT country FROM sales.bmw_sales_data;

-- Populating channel_dim
INSERT INTO channel_dim (channel_name)
SELECT DISTINCT channel FROM sales.bmw_sales_data;

-- Creating the Fact Table
CREATE TABLE sales_fact (
    sales_id INT PRIMARY KEY IDENTITY(1,1),
    date_id INT FOREIGN KEY REFERENCES date_dim(date_id),
    model_id INT FOREIGN KEY REFERENCES model_dim(model_id),
    region_id INT FOREIGN KEY REFERENCES region_dim(region_id),
    country_id INT FOREIGN KEY REFERENCES country_dim(country_id),
    channel_id INT FOREIGN KEY REFERENCES channel_dim(channel_id),
    revenue NUMERIC,
    quantity_sold INT
);

-- Inserting Values in the Fact Table
INSERT INTO sales_fact (date_id, model_id, region_id, country_id, channel_id, revenue, quantity_sold)
SELECT 
    d.date_id,
    m.model_id,
    rg.region_id,
    c.country_id,
    ch.channel_id,
    bmw.revenue,
    bmw.quantity_sold
FROM 
    sales.bmw_sales_data AS bmw
    JOIN date_dim AS d ON bmw.date = d.date
    JOIN model_dim AS m ON bmw.model = m.model_name
    JOIN region_dim AS rg ON bmw.region = rg.region_name
    JOIN country_dim AS c ON bmw.country = c.country_name
    JOIN channel_dim AS ch ON bmw.channel = ch.channel_name;

    

