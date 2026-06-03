CREATE TABLE customers (
    custtomer_id INTEGER,
    customer_name TEXT,
    country TEXT
);

INSERT INTO customers VALUES
(1,'John','USA'),
(2,'Emma','UK'),
(3,'Raj','India');

CREATE TABLE orders (
    order_id INTEGER,
    customer_id INTEGER,
    amount REAL,
    order_date TEXT
);

INSERT INTO orders VALUES
(101,1,500,'2024-01-01'),
(102,1,300,'2024-01-10'),
(103,2,700,'2024-02-01'),
(104,3,900,'2024-02-05');
