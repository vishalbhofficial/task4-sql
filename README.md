# Task 4 – Ecommerce Sales Database (SQL for Data Analysis)

1. Table Creation
Created a table named sales_data.

Defined columns:
  - InvoiceNo – INTEGER
  - StockCode – TEXT
  - DescriptionA – TEXT
  - Quantity – INTEGER
  - InvoiceDate – TIMESTAMP (stores date and time)
  - UnitPrice – REAL
  - CustomerID – INTEGER
  - Country – TEXT

✍️ 2. Data Insertion
Inserted sample records into sales_data table.

Included entries from:
  - India
  - United Kingdom

Example products added:
  - DESIGNER STAND
  - WHITE METAL LANTERN
  - AGARBATTI STAND
  - STAINLESS STEEL WATER BOTTLE

3. Filter by country (France) and display latest 10 entries:

SELECT * FROM sales_data
WHERE Country = 'France'
ORDER BY InvoiceDate DESC
LIMIT 10;

4. Group by country and calculate total items & revenue:

SELECT Country, SUM(Quantity) AS TotalItems, SUM(Quantity * UnitPrice) AS TotalRevenue
FROM sales_data
GROUP BY Country
ORDER BY TotalRevenue DESC;

5. Find highest-spending customer:

SELECT CustomerID, SUM(Quantity * UnitPrice) AS Revenue
FROM sales_data
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID
ORDER BY Revenue DESC
LIMIT 1;


DELEVIRABLES : 
- Task 4 - Ecommerce  Sales Database SQL File
- Output Screenshot
- Readme - This file

