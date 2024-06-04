# Optimizing-Online-Sports-Retail-Revenue
Exploratory Data Analysis with SQL

This project allowed me to dive into product data for an online sports clothing company with the final goal of developing recommendations for the company to maximize its revenue. I dealt with a wide variety of information kept in several tables. The information includes prices, discounts, revenue, ratings, reviews, product descriptions, and website traffic. 

# Project Highlights
Import Data from Excel to SSMS: The initial step involved creating a database to house the "brands" and "finance", "info", "reviews" and "traffic" datasets. After that, tables were created to hold the imported data. Data importation was carried out using BULK INSERT and INSERT commands.

# Exploratory Data Analysis:
Utilizes SQL queries to explore and analyze Online Sports Retail Revenue. Examines various aspects such as review by month, discount offered, price point difference and several others.

# Insights and Visualizations:
I Explored a wide range of SQL statements and clauses, each revealing new layers of data manipulation and analysis:
1.     Crafting strategic VIEWS
2.     Harnessing the power of AGGREGATE FUNCTIONS for precise analysis 
3.     Common Table Expressions(CTEs) for streamlined workflows 
4.     Implementing ROW_NUMBER() for dynamic data ranking 
5.     Employing Number FILTERING strategies for accuracy 
6.     Seamlessly integrating datasets with JOINS for comprehensive analysis 
7.     Optimizing analysis with DATE Manipulation techniques 
8.     And so much more… See file attached for more details

# Project Source: Datacamp (Optimiing Online Retail Revenue)


# Data Source
[click to download data sets](https://www.kaggle.com/datasets/irenewidyastuti/datacamp-optimizing-online-sports-retail-revenue)

# See snippets
```
CREATE VIEW BrandFinance
AS
(
SELECT
		rf.[product_id]
		,rb.brand
      ,rf.[listing_price]
      ,rf.[sale_price]
      ,rf.[discount]
      ,rf.[revenue]
	  ,rr.rating
	  ,rr.reviews
  FROM [OnlineSportRetail].[retail].[Finance] AS rf
  LEFT JOIN [OnlineSportRetail].[retail].[Brand] AS rb
  ON rf.product_id = rb.product_id
  LEFT JOIN [OnlineSportRetail].retail.Reviews AS rr
    ON rr.product_id = rf.product_id
  WHERE rb.brand IS NOT NULL
  )
  
```

