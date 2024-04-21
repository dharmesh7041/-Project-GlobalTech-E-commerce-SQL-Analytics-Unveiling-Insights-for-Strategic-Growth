CREATE DATABASE GlobalTech;

USE GlobalTech;

-- Creating Orders Table-- ----------------------------------------------------------------------- 

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    payment_status VARCHAR(20)
);

INSERT INTO 
Orders (order_id, customer_id, order_date, total_amount, payment_status) 
VALUES
(1, 101, '2024-01-05', 150.00, 'Paid'),
(2, 102, '2024-01-08', 220.50, 'Paid'),
(3, 103, '2024-01-10', 75.20, 'Paid'),
(4, 104, '2024-01-15', 430.80, 'Paid'),
(5, 105, '2024-01-20', 198.90, 'Paid'),
(6, 106, '2024-01-25', 320.00, 'Paid'),
(7, 107, '2024-01-28', 150.50, 'Paid'),
(8, 108, '2024-02-01', 180.25, 'Paid'),
(9, 109, '2024-02-05', 90.00, 'Paid'),
(10, 110, '2024-02-10', 750.60, 'Paid'),
(11, 111, '2024-02-15', 420.75, 'Paid'),
(12, 112, '2024-02-18', 330.20, 'Paid'),
(13, 113, '2024-02-20', 165.30, 'Paid'),
(14, 114, '2024-02-25', 480.90, 'Paid'),
(15, 115, '2024-03-01', 550.00, 'Paid'),
(16, 116, '2024-03-05', 120.75, 'Paid'),
(17, 117, '2024-03-08', 290.50, 'Paid'),
(18, 118, '2024-03-12', 180.25, 'Paid'),
(19, 119, '2024-03-15', 90.00, 'Paid'),
(20, 120, '2024-03-20', 720.60, 'Paid'),
(21, 121, '2024-03-25', 510.75, 'Paid'),
(22, 122, '2024-03-28', 330.20, 'Paid'),
(23, 123, '2024-04-01', 165.30, 'Paid'),
(24, 124, '2024-04-05', 480.90, 'Paid'),
(25, 125, '2024-04-10', 600.00, 'Paid'),
(26, 126, '2024-04-15', 320.75, 'Paid'),
(27, 127, '2024-04-18', 290.50, 'Paid'),
(28, 128, '2024-04-20', 380.25, 'Paid'),
(29, 129, '2024-04-25', 290.00, 'Paid'),
(30, 130, '2024-04-30', 450.80, 'Paid');

SELECT *
FROM Orders;

-- Creating Customers Table-- ----------------------------------------------------------------------- 

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    customer_email VARCHAR(50),
    customer_country VARCHAR(20)
);

INSERT INTO
 Customers (customer_id, customer_name, customer_email, customer_country) 
 VALUES
(101, 'John Doe', 'john.doe@example.com', 'USA'),
(102, 'Jane Smith', 'jane.smith@example.com', 'Canada'),
(103, 'David Brown', 'david.brown@example.com', 'UK'),
(104, 'Emily Davis', 'emily.davis@example.com', 'Australia'),
(105, 'Michael Lee', 'michael.lee@example.com', 'Germany'),
(106, 'Maria Garcia', 'maria.garcia@example.com', 'Spain'),
(107, 'James Wilson', 'james.wilson@example.com', 'France'),
(108, 'Laura Martinez', 'laura.martinez@example.com', 'Mexico'),
(109, 'Robert Johnson', 'robert.johnson@example.com', 'Brazil'),
(110, 'Jennifer Anderson', 'jennifer.anderson@example.com', 'Canada'),
(111, 'William Taylor', 'william.taylor@example.com', 'USA'),
(112, 'Mary Rodriguez', 'mary.rodriguez@example.com', 'Spain'),
(113, 'Richard Lopez', 'richard.lopez@example.com', 'Mexico'),
(114, 'Linda Hernandez', 'linda.hernandez@example.com', 'UK'),
(115, 'Charles Young', 'charles.young@example.com', 'Australia'),
(116, 'Jessica King', 'jessica.king@example.com', 'Germany'),
(117, 'Thomas Wright', 'thomas.wright@example.com', 'France'),
(118, 'Patricia Scott', 'patricia.scott@example.com', 'Brazil'),
(119, 'Daniel Nguyen', 'daniel.nguyen@example.com', 'USA'),
(120, 'Karen Hill', 'karen.hill@example.com', 'Spain'),
(121, 'Nancy Green', 'nancy.green@example.com', 'Mexico'),
(122, 'Mark Baker', 'mark.baker@example.com', 'UK'),
(123, 'Betty Adams', 'betty.adams@example.com', 'Australia'),
(124, 'Donald Carter', 'donald.carter@example.com', 'Germany'),
(125, 'Dorothy Ward', 'dorothy.ward@example.com', 'France'),
(126, 'Steven Morris', 'steven.morris@example.com', 'Brazil'),
(127, 'Sandra Rivera', 'sandra.rivera@example.com', 'USA'),
(128, 'Edward Coleman', 'edward.coleman@example.com', 'Spain'),
(129, 'Kimberly Barnes', 'kimberly.barnes@example.com', 'Mexico'),
(130, 'Ronald Parker', 'ronald.parker@example.com', 'UK');

SELECT *
FROM  Customers;

-- Creating Product Table-- ----------------------------------------------------------------------- 

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    unit_price DECIMAL(10, 2),
    supplier_id INT NOT NULL
);

INSERT INTO 
Products (product_id, product_name, category, unit_price, supplier_id) 
VALUES
(1, 'Laptop', 'Electronics', 800.00, 1),
(2, 'Smartphone', 'Electronics', 500.00, 2),
(3, 'T-shirt', 'Fashion', 25.00, 3),
(4, 'Sneakers', 'Fashion', 80.00, 4),
(5, 'Blender', 'Appliances', 120.00, 5);

SELECT *
FROM  Products;

-- Creating Order_Items Table-- ----------------------------------------------------------------------- 

CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity_ordered INT,
    item_price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO 
Order_Items (order_item_id, order_id, product_id, quantity_ordered, item_price) 
VALUES
(1, 1, 1, 1, 800.00),
(2, 1, 2, 2, 1000.00),
(3, 2, 3, 3, 75.00),
(4, 3, 4, 1, 80.00),
(5, 4, 5, 2, 240);

SELECT *
FROM  Order_Items;



-- 1. Retrieve orders placed in the month of January 2024?-- 

SELECT *
FROM Orders
WHERE order_date >= '2024-01-01' AND order_date < '2024-02-01';

-- 2. Find the orders where the total amount is greater than the average total amount of all orders?-- 

SELECT *
FROM orders
WHERE total_amount > (SELECT AVG(total_amount)
FROM orders);

-- 3. Retrieve orders placed in the month of March 2024?-- 

SELECT * 
FROM Orders 
WHERE EXTRACT(MONTH FROM order_date) = 3 AND EXTRACT(YEAR FROM order_date) = 2024
ORDER BY EXTRACT(MONTH FROM order_date);

-- 4. Retrieve the customer name and their corresponding order details (order ID and total amount) for all orders?-- 

SELECT customers.customer_name,orders.order_id,orders.total_amount
FROM customers
JOIN orders
ON  customers.customer_id = orders.customer_id;

-- 5. Retrieve the top 5 customers who have spent the most on orders?-- 

SELECT customers.customer_id,customers.customer_name, SUM(total_amount) AS total_spent
FROM customers
JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id,customers.customer_name
LIMIT 5;

-- 6. Identify products that have not been ordered yet?--

SELECT products.product_name
FROM products
LEFT JOIN order_items
ON products.product_id = order_items.product_id
WHERE order_items.product_id IS NULL;

-- 7. Calculate the total revenue generated from orders placed by customers in each country?-- 

SELECT customers.customer_country, SUM(total_amount) AS total_revenue
FROM orders
JOIN customers
ON orders.customer_id = customers.customer_id
GROUP BY customers.customer_country
ORDER BY total_revenue DESC;

-- 8. Identify customers who have placed orders more than once on the same day?-- 

SELECT customer_id, COUNT(order_id)
FROM orders
GROUP BY customer_id,order_date
HAVING COUNT(order_id) > 1 ;

-- 9. Retrieve orders placed by customers from a specific country (e.g., Spain)?-- 

SELECT orders.order_id,orders.order_date,customers.customer_name
FROM orders
JOIN customers
ON orders.customer_id = customers.customer_id
WHERE customer_country = "spain";

-- 10. Retrieve the product details (name, category) along with the total quantity ordered for each product, but only for products that belong
 -- to the 'Electronics' category. Order the results by total quantity ordered in descending order?-- 
 
 SELECT products.product_name,products.category, SUM( quantity_ordered) AS total_quantity
 FROM products
 JOIN order_items
 ON products.product_id = order_items.product_id
 WHERE products.category = "Electronics"
 GROUP BY products.product_name,products.category
 ORDER BY total_quantity DESC;









