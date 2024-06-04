--create database for OnlineSportRetail
CREATE DATABASE OnlineSportRetail

GO

--create scheme
CREATE SCHEMA retail

GO

--create table named Brand
CREATE TABLE retail.Brand(
product_id NVARCHAR(20) PRIMARY KEY
,brand VARCHAR(20)
)

GO
--upload brand data details using bulk upload
BULK INSERT retail.Brand
  FROM 'C:\Users\Ann\Desktop\linkedin worthy\sql\Optimizing Online Sports Retail Revenue-datacamp\brands_v2.csv'

  WITH(
  CODEPAGE = 'ACP',
  FIELDTERMINATOR = ',',
  ROWTERMINATOR = '\n',
  FIRSTROW = 2
  )


  --create table named Finance
CREATE TABLE retail.Finance(
product_id NVARCHAR(20) FOREIGN KEY REFERENCES retail.Brand(product_id)
,listing_price DECIMAL(10,2)
,sale_price DECIMAL(10,2)
,discount DECIMAL(10,2)
,revenue DECIMAL(10,2)
)

GO
--upload Finance data details using bulk insert statement
BULK INSERT retail.Finance
  FROM 'C:\Users\Ann\Desktop\linkedin worthy\sql\Optimizing Online Sports Retail Revenue-datacamp\finance.csv'

  WITH(
  CODEPAGE = 'ACP',
  FIELDTERMINATOR = ',',
  ROWTERMINATOR = '\n',
  FIRSTROW = 2
  )


 --create table named Info
CREATE TABLE retail.Info(
product_name NVARCHAR(100)
,product_id NVARCHAR(20) FOREIGN KEY REFERENCES retail.Brand(product_id)
,description NVARCHAR(MAX)
)

GO
--upload Finance data details using bulk insert statement
BULK INSERT retail.Info
  FROM 'C:\Users\Ann\Desktop\linkedin worthy\sql\Optimizing Online Sports Retail Revenue-datacamp\info_v2.csv'

  WITH(
  CODEPAGE = 'ACP',
  FIELDTERMINATOR = ',',
  ROWTERMINATOR = '\n',
  FIRSTROW = 2
  )

  --select * from retail.Info

  --create table named Traffic
CREATE TABLE retail.Traffic(
product_id NVARCHAR(20) FOREIGN KEY REFERENCES retail.Brand(product_id)
,last_visited DATETIME
)

GO
--upload Finance data details using bulk insert statement
BULK INSERT retail.Traffic
  FROM 'C:\Users\Ann\Desktop\linkedin worthy\sql\Optimizing Online Sports Retail Revenue-datacamp\traffic_v3.csv'

  WITH(
  CODEPAGE = 'ACP',
  FIELDTERMINATOR = ',',
  ROWTERMINATOR = '\n',
  FIRSTROW = 2
  )

    --create table named Reviews
CREATE TABLE retail.Reviews(
product_id NVARCHAR(20) FOREIGN KEY REFERENCES retail.Brand(product_id)
,rating DECIMAL(5,2)
,reviews INT
)

GO
--upload Finance data details using bulk insert statement
BULK INSERT retail.Reviews
  FROM 'C:\Users\Ann\Desktop\linkedin worthy\sql\Optimizing Online Sports Retail Revenue-datacamp\reviews_v2.csv'

  WITH(
  CODEPAGE = 'ACP',
  FIELDTERMINATOR = ',',
  ROWTERMINATOR = '\n',
  FIRSTROW = 2
  )