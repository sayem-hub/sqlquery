-- Active: 1698904464779@@127.0.0.1@3306@business_db
--Write a SQL query to retrieve all the customer information along with the total number of orders placed by each customer. 
--Display the result in descending order of the number of orders.
SELECT a.id, a.name, COUNT(orders.id) AS total_orders
FROM customers a
LEFT JOIN orders ON a.id = orders.customer_id
GROUP BY a.id, a.name
ORDER BY total_orders DESC;
