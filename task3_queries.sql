-- SELECT
SELECT * FROM customers;

-- WHERE
SELECT *
FROM customers
WHERE country = 'USA';

-- ORDER BY
SELECT *
FROM orders
ORDER BY amount DESC;

-- GROUP BY
SELECT customer_id,
       SUM(amount) AS total_sales
FROM orders
GROUP BY customer_id;

-- AVG
SELECT AVG(amount) AS average_order_value
FROM orders;

-- INNER JOIN
SELECT c.customer_name,
       o.order_id,
       o.amount
FROM customers c
INNER JOIN orders o
ON c.custtomer_id = o.customer_id;

-- LEFT JOIN
SELECT c.customer_name,
       o.order_id
FROM customers c
LEFT JOIN orders o
ON c.custtomer_id = o.customer_id;

-- SUBQUERY
SELECT *
FROM orders
WHERE amount >
(
    SELECT AVG(amount)
    FROM orders
);

-- VIEW
SELECT * FROM customer_sales;

-- INDEX
CREATE INDEX idx_customer_id
ON orders(customer_id);
