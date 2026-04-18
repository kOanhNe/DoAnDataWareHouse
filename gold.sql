USE DataSupplyChain;
GO

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'gold')
    EXEC('CREATE SCHEMA gold');
GO


-- Dim tables
CREATE TABLE gold.Dim_Date (
    Date_Key INT PRIMARY KEY,
    Full_Date DATE,
    Day INT, Month INT, Year INT, Quarter INT
);
CREATE TABLE gold.Dim_Customer (
    Customer_Key INT IDENTITY PRIMARY KEY,
    Customer_Id NVARCHAR(100),
    Customer_Fname NVARCHAR(100),
    Customer_Lname NVARCHAR(100),
    Customer_Email NVARCHAR(100),
    Customer_Segment NVARCHAR(50),
    Customer_City NVARCHAR(100),
    Customer_State NVARCHAR(100),
    Customer_Country NVARCHAR(100),
    Customer_Zipcode NVARCHAR(20)
);
CREATE TABLE gold.Dim_Geography (
    Geography_Key INT IDENTITY PRIMARY KEY,
    Country NVARCHAR(100),
    State NVARCHAR(100),
    City NVARCHAR(100)
);
CREATE TABLE gold.Dim_Product (
    Product_Key INT IDENTITY PRIMARY KEY,
    Category_Key INT,
    Product_Card_Id INT,
    Product_Name NVARCHAR(255),
    Product_Price FLOAT,
    Product_Status INT
);
CREATE TABLE gold.Dim_Category (
    Category_Key INT IDENTITY PRIMARY KEY,
    Department_Key INT,
    Category_Id INT,
    Category_Name NVARCHAR(255)
);
CREATE TABLE gold.Dim_Department (
    Department_Key INT IDENTITY PRIMARY KEY,
    Department_Id INT,
    Department_Name NVARCHAR(255)
);
CREATE TABLE gold.Dim_Order (
    Order_Key INT IDENTITY PRIMARY KEY,
    Geography_Key INT,
    Order_Id INT,
    Order_Region NVARCHAR(100),
    Order_Status NVARCHAR(50),
    Transaction_Type NVARCHAR(50)
);
CREATE TABLE gold.Dim_Shipping_Mode (
    Shipping_Mode_Key INT IDENTITY PRIMARY KEY,
    Shipping_Mode NVARCHAR(50),
    Late_Delivery_Risk INT,
    Delivery_Status NVARCHAR(50)
);

-- Fact tables
CREATE TABLE gold.Fact_Sales (
    Fact_Sales_Key INT IDENTITY PRIMARY KEY,
    Customer_Key INT, Product_Key INT,
    Order_Key INT, Date_Key INT,
    Order_Item_Total FLOAT,
    Order_Item_Quantity INT,
    Order_Item_Discount FLOAT,
    Order_Item_Profit_Ratio FLOAT,
    Order_Item_Discount_Rate FLOAT,
    Sales FLOAT
);
CREATE TABLE gold.Fact_Order (
    Fact_Order_Key INT IDENTITY PRIMARY KEY,
    Customer_Key INT, Product_Key INT,
    Order_Key INT, Date_Key INT,
    order_count INT DEFAULT 1,
    total_sales FLOAT,
    total_discount FLOAT,
    total_quantity INT,
    total_profit FLOAT
);
CREATE TABLE gold.Fact_Shipping (
    Fact_Shipping_Key INT IDENTITY PRIMARY KEY,
    Customer_Key INT, Shipping_Mode_Key INT,
    Order_Key INT, Order_Date_Key INT, Shipping_Date_Key INT,
    Days_For_Shipping_Real INT,
    Days_For_Shipment_Scheduled INT,
    Shipping_Delay_Days INT,
    On_Time_Flag INT,
    Is_Late INT
);