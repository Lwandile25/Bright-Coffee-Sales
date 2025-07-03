------Select all columns
SELECT
    *
FROM
    COFFEE.PUBLIC.COFFEETABLE 
LIMIT 10;

/* ------------------------------------------------------------------------------------------------
   Bright Coffee Shop Sales Analysis
   Query: Top Performing Products and Categories with Time Buckets
   ------------------------------------------------------------------------------------------------
   Purpose:
   - Analyze sales data by product, category, store, and time dimensions
   - Classify products, stores, and time periods by performance thresholds
   - Identify peak hours, high-demand products, and revenue opportunities
------------------------------------------------------------------------------------------------- */

--------------Check for duplicates-----------
SELECT *, COUNT(*)
FROM COFFEE.PUBLIC.COFFEETABLE
GROUP BY ALL
HAVING COUNT(*) > 1;

-------Check for NULL values
SELECT *
FROM COFFEE.PUBLIC.COFFEETABLE
WHERE TRANSACTION_ID IS NULL
   OR TRANSACTION_DATE IS NULL
   OR TRANSACTION_TIME IS NULL
   OR TRANSACTION_QTY IS NULL
   OR STORE_LOCATION IS NULL
   OR PRODUCT_ID IS NULL
   OR UNIT_PRICE IS NULL
   OR PRODUCT_CATEGORY IS NULL
   OR PRODUCT_TYPE IS NULL
   OR PRODUCT_DETAIL IS NULL;

-----Aggregated Analysis--------------------------
SELECT
    STORE_LOCATION,
    TRANSACTION_DATE,
    TO_CHAR(TRANSACTION_DATE, 'YYYYMM') AS month_id,
    TRIM(TO_CHAR(TRANSACTION_DATE, 'Mon')) AS month_name,
    DAYNAME(TRANSACTION_DATE) AS weekday,

    ------------Time of Day Buckets-----------------------
    CASE
        WHEN TRANSACTION_TIME BETWEEN '06:00:00' AND '11:59:59' THEN 'Morning'
        WHEN TRANSACTION_TIME BETWEEN '12:00:00' AND '16:59:59' THEN 'Afternoon'
        WHEN TRANSACTION_TIME BETWEEN '17:00:00' AND '19:59:59' THEN 'Evening'
        ELSE 'Night'
    END AS time_of_day,

    PRODUCT_CATEGORY,
    PRODUCT_TYPE,
    PRODUCT_DETAIL,
-----------------------------Aggregate Functions-------------------------------------------------------
    COUNT(DISTINCT TRANSACTION_ID) AS total_transactions,
    SUM(TRANSACTION_QTY) AS total_units_sold,
    SUM(TRANSACTION_QTY * UNIT_PRICE) AS Revenue
FROM COFFEE.PUBLIC.COFFEETABLE
GROUP BY ALL
-----------------------------------------------------------------------------------------------------------------------
