-- Active: 1698904464779@@127.0.0.1@3306@business_db
--Write a SQL query to retrieve the product name, quantity, and total amount for each order item. Display the result in ascending order of the order ID.
SELECT o.id, p.name, oi.quantity, (oi.quantity * oi.unit_price) AS total_amount
FROM orders o
INNER JOIN order_items oi ON o.id = oi.order_id
INNER JOIN products p ON oi.product_id = p.id
ORDER BY o.id ASC;
