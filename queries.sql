-- Total revenue
SELECT SUM(quantity * price) AS total_revenue FROM sales;

-- Top products
SELECT product, SUM(quantity) as total_sold
FROM sales
GROUP BY product
ORDER BY total_sold DESC;

-- Monthly sales
SELECT DATE_TRUNC('month', order_date) AS month,
SUM(quantity * price) AS revenue
FROM sales
GROUP BY month;