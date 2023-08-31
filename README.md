
# Atliq Hardware Sales Analysis


## About the Company:
- AtliQ was established in 2017 as an IT services company to help businesses integrate their processes with automated tools. It is Headquartered in Vadodara, Gujrat
- It also supplies computer hardware peripherals to their clients across various different citites in India such as in Delhi NCR, Bhubaneshwar, Surat, Nagour etc.
- The companies IT services include:
    1. **Web development:** 
    - Design and development of custom websites that meet the specific needs of the business.
    2. **Digital marketing:** 
    - Develops and execute digital marketing strategies that can help business reach their target audiences and achieve the desired business goals.
    3. **IT consulting:** 
    - Provides advice and guidance on a variety of IT-related matters, such as security, cloud computing, and mobile app development.

---
## Problem Statement:
- The sales director of Atliq Hardware is facing challenges in tracking sales in a dynamically growing market. The sales director does not have a direct access to track down the performance of the business. Atliq has regional managers in north, south and central regions to monitor business in their respective region. These regional managers responsibility involves communicating the performance of the business to the sales director. 
- So, the sales directors recieves updates on monthly basis which he finds incomplete, inadeqaute, limited, and insubstantial in terms of numbers. This is concerning for the sales director as the sales in most regions are declining and he is not able to take data driven decision.

- Following are the specific problems that the sales director is facing:
    1. He is unable to track sales in real time. He only receives sales data on a monthly basis, which is too slow to make timely decisions.
    2. He does not have a clear understanding of how his sales are performing in different regions or product categories.
    3. He is unable to identify trends in his sales data. This makes it difficult for him to predict future sales and make informed decisions about marketing and pricing.

---

## Solution:
- The sales director hopes that by building a Power BI dashboard, he will be able to address these problems and improve sales for Atliq Hardware. The dashboard will provide him with real-time sales data, insights into sales performance by region and product category, and trends in his sales data. This information will help him make better decisions about marketing, pricing, and product development.5
- The sales director hopes to view the following specific things in the dashboard which will help him take data-driven decisions:
    1. **Real-time sales data:**
    - This will allow him to track sales performance and make timely decisions about marketing, pricing, and product development.
    2. **Sales performance by region and product category:** 
    - This will give him a clear understanding of how his sales are performing in different areas and for different products. 
    3. **Trends in sales data:**
    - This will help him predict future sales and make informed decisions about marketing and pricing. 

---

## Data Gathering and Analysis:
- The data was gathered from the description section of the playlist created by codebasics youtube channel
- The data was initially kept in a database in MySQL text file format
- This MySQL database was imported to MySQL workbench to do further data analysis.
- Below are the name of the tables and its description that the Atliq Sales database contains:
|Atliq Sales Database|Brief description of the table|
|---|---|
|1. Customers|Contains the information regarding the clients involved in business|
|2. Date|Contains information related to dates on which business was done|
|3. Products|Contains information regarding the products the company supplies|
|4. Markets|Contains information regarding the locations where business is done|
|5. Transactions|Contains information about the business done with the client|

### 1. Analysis of the Customers table:
- The **customers table** contains the following attributes:
    1. `Customer_code`:
    - The unique code given to the client
    2. `Custome_name`:
    - Name of the client with whom business is done
    3. `Custome_type`:
    - The category in which the client lies such as **E-Commerce/Brick & Mortar**
--> [SQL queries for Customers table](https://github.com/Kartik-137/Atliq-Sales-Analysis-/blob/main/Customers_Analysis_queries.sql)

 ### 2. Analysis of the Date table:
- The **date table** contains the following attributes:
    1. `date`:
    - Date in YYYY-MM-DD format 
    2. `cy_date`:
    - Starting date of each month
    3. `year`:
    - Year from the date column
    4. `month_name`:
    - Month from the date column
    5. `date_yy_mmm`
    - Date in YY-MMM format
--> [SQL queries for Date table](https://github.com/Kartik-137/Atliq-Sales-Analysis-/blob/main/Date_Analysis_queries.sql)

### Analysis of the Products table:
- The **products table** contains the following attributes:
    1. `Product_code`:
    - The unique code of the products supplies to the clients.
    2. `Product_type`:
    - The category in which the product falls which are own brand and distribution.
--> [SQL quries for Products table](https://github.com/Kartik-137/Atliq-Sales-Analysis-/blob/main/Products_Analysis_queries.sql)
    
### Analysis of the Markets table:
- The **markets table** contains the following attributes:
    1. `Markets_code`:
    - The unique code assigned to each market
    2. `Markets_name`:
    - The name corresponding to the unique market_code
    3. `Zone`:
    - The zone under which the market comes such as central, north or south
--> [SQL queries for Markets table](https://github.com/Kartik-137/Atliq-Sales-Analysis-/blob/main/Markets_Analysis_queries.sql)

### Analysis of the Transactions table:
- The **transactions table** contains the following attributes:
    1. `Product_code`:
    - Primary key from products table used for establishing relationship between transactions table and products table.
    2. `Customer_code`:
    - Primary key from customers table used for establishing relationship between transactions table and customers table.
    3. `market_code`:
    - Primary key from markets table used for establishing relationship between transactions table and markets table.
    4. `order_date`:
    - Date on which order by the client was placed
    5. `sales_qty`:
    - The number of units sold of a particular product.
    6. `sales_amount`:
    - The total amount of money generated from sales i.e the amount of money paid by customers for products.
    7. `currency`:
    - Mode of currency in which transaction was made i.e in USD or INR.
    8. `gross_profit_margin`:
    - The percentage of profit that is made on each sale.
    - given as: (sale_amount-cost_price)/sales_amount
    9. `gross_profit`:
    - Calculated by subtracting the cost price of the product from the sales amount.
--> [SQL queries for Transactions table](https://github.com/Kartik-137/Atliq-Sales-Analysis-/blob/main/Transactions_Analysis_queries.sql)


### Some brief results as obtained from Data Analysis in MySQL
1. The database contains 5 tables with transactions table being the center table which holds the numbers indicating the business done with clients all over India.
2. Atliq has 38 customers spread across 17 different cities of which 2 (New York, Paris) are outside India.
3. The transactions are made mostly in INR with 2 records done in USD.These two transactions in 'USD' are from Delhi NCR
4. The data is collected from the year 2017 upto 2020.
5. Top 3 cities which generates the Largest Revenue is Delhi NCR, Mumbai and Ahmedabad.
6. 2018 generated the largest revenur with over 413 million rupees.

---
## Extract, Transform, Load And Data Modelling:
1. Import the date from MySQL database to Power BI by establishing connection between the two
2. Transforming the data in Power Query Editor:
- Filtered the Indian cities only by excluding the business from New York and Paris. Because as observed during data analysis no records were found for business done outside India.
- Created a new column for sales amount which has values INR only
3. Applied the final changes and loaded the transformed table to Power BI for data vizualization.

4. The relationship with the 4 child tables which are customers, markets, products, date was established with the fact table transactions which holds the references (foreign key) from the primary keys of child tables. The relationship being one to many.
- **Relationship between the tables**
![Relationship between tables](https://github.com/Kartik-137/Atliq-Sales-Analysis-/blob/main/Data%20Modelling%20image.png?raw=true)

## --------------------------------------
## Creating the final report

### 1. **Creating Base measures**
- Table named Base measure was created to store the new measures which are as follows:
    
    
    1.**Revenue**: `SUM('sales transactions'[INR_sales_amount])`

    2.**Total Quantity**: `SUM('sales transactions'[sales_qty])` 
    
    3.**Total Gross Profit** = `SUM('sales transactions'[gross_profit])` 
    
    4.**Profit Margin %** = `DIVIDE([Total Gross Profit],[Revenue],0)` 
    
    5.**Profit Margin Contribution %** = `DIVIDE([Total Gross Profit],CALCULATE([Total Gross Profit],ALL('sales products'),ALL('sales customers'),ALL('sales markets')))`
    
    6.**Revenue Contribtion %** = `DIVIDE([Revenue],CALCULATE([Revenue],ALL('sales products'),ALL('sales customers'),ALL('sales markets')))`
    
    7.**Revenue LastYear** = `CALCULATE([Revenue], SAMEPERIODLASTYEAR('sales date'[date]))`

### 2. **Sales Insights Dashboard**
- ![Sales insights](https://github.com/Kartik-137/Atliq-Sales-Analysis-/blob/main/Sales%20Insights.jpg)

### 3. **Profit Analysis Dashboard**
- ![Profit Analysis](https://github.com/Kartik-137/Atliq-Sales-Analysis-/blob/main/Profit%20Analysis.jpg)

### 4. **Performance Insights Dashboard**
- ![Performance Insights](https://github.com/Kartik-137/Atliq-Sales-Analysis-/blob/main/Performance%20insights.jpg)

---
## Insights from the final report
1. Atliq mainly does business with two types of customers, those in Brick and mortar category and others in E-Commerce
2. The revenue trend fluctuates for 2017-18 but the major decline in business is observed during year end of 2019-20. Overall the business is not performing well
3. Delhi NCR, Mumbai, Ahmedabad remains on top over the span of 4 years in terms of revenue genrated.
4. Electricalsara stores remains the top customer to generate largest revenue over the 4 years with over 413 million rupees.
5. The profit margin contribution percentage of the product whose name is not mention in the data, tops with a contribution  of 49% to companies overall profit. This product is then followed by Prod040, Prod090 etc.
6. Bengaluru remains at bottom in terms of revenue, gross profit margin over the years.
7. Delhi NCR makes up 50% profit contribution to Atliq's overall profit. 
8. The revenue contribution from north zone is obvious due the profit contribution percentage by Delhi NCR
9. The central zone over the years has gained stability but the south zone struggles to compete.
