CREATE TABLE sales_data (
    InvoiceNo INTEGER,
    StockCode Text,
    DescriptionA Text,
    Quantity INTEGER,
    InvoiceDate TIMESTAMP,
    UnitPrice REAL,
    CustomerID INTEGER,
    Country TEXT
);

SELECT * FROM sales_data
WHERE Country = 'France'
ORDER BY InvoiceDate DESC
LIMIT 10;

SELECT Country, SUM(Quantity) AS TotalItems, SUM(Quantity * UnitPrice) AS TotalRevenue
FROM sales_data
GROUP BY Country
ORDER BY TotalRevenue DESC;

SELECT CustomerID, SUM(Quantity * UnitPrice) AS Revenue
FROM sales_data
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID
ORDER BY Revenue DESC
LIMIT 1;


CREATE INDEX idx_country_date ON sales_data(Country, InvoiceDate);

INSERT INTO sales_data (InvoiceNo, StockCode, DescriptionA, Quantity, InvoiceDate, UnitPrice, CustomerID, Country)
VALUES 
('536365', '85123A', 'DESIGNER STAND', 6, '2010-12-01 08:26:00', 2.55, 17850, 'INDIA'),
('536365', '71053', 'WHITE METAL LANTERN', 6, '2010-12-01 08:26:00', 3.39, 17850, 'INDIA'),
('536365', '84406B', 'AGARBATTI STAND', 8, '2010-12-01 08:26:00', 2.75, 17850, 'United Kingdom'),
('536365', '84029G', 'STAINLESS STEAL WATER BOTTLE', 6, '2010-12-01 08:26:00', 3.39, 17850, 'INDIA');

SELECT * FROM sales_data