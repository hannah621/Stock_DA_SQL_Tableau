DROP DATABASE CIS_project;
CREATE DATABASE CIS_project;
USE CIS_project;

SELECT * FROM 2018_financial_data
ORDER BY A;



SELECT A AS Companies, Revenue, RevenueGrowth, GrossProfit, NetIncome, `Market Cap`,
		EPS, DividendperShare, `Dividend Yield`, Totalassets, Totaldebt, Totalshareholdersequity, priceToBookRatio, 
        ROE, `10Y Revenue Growth (per share)`, `3Y Revenue Growth (per share)`, `5Y Revenue Growth (per share)`
FROM 2018_financial_data
ORDER BY Companies;

DROP TABLE top10_GrossProfit;

CREATE TABLE  top10_revenue_growth AS
SELECT A AS Companies, RevenueGrowth
FROM 2018_financial_data
ORDER BY RevenueGrowth DESC
LIMIT 10;

CREATE TABLE top10_revenue AS
SELECT A AS Companies, Revenue
FROM 2018_financial_data
ORDER BY Revenue DESC
LIMIT 10;

CREATE TABLE top10_GrossProfit AS
SELECT A AS Companies, GrossProfit
FROM 2018_financial_data
ORDER BY GrossProfit DESC
LIMIT 10;

CREATE TABLE top10_MarketCap
SELECT A AS Companies, `Market Cap`
FROM 2018_financial_data
ORDER BY `Market Cap` DESC
LIMIT 10;

CREATE TABLE top10_NetIncome
SELECT A AS Companies, NetIncome
FROM 2018_financial_data
ORDER BY NetIncome DESC
LIMIT 10;