
-- Customers Table
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100) UNIQUE,
  phone VARCHAR(15),
  address TEXT
);

-- Products Table
CREATE TABLE products (
  product_id INT PRIMARY KEY,
  name VARCHAR(100),
  description TEXT,
  price DECIMAL(10,2),
  stock INT
);

-- Orders Table
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  status VARCHAR(50),
  total_amount DECIMAL(10,2),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Order Items Table
CREATE TABLE order_items (
  order_item_id INT PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT,
  price DECIMAL(10,2),
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Payments Table
CREATE TABLE payments (
  payment_id INT PRIMARY KEY,
  order_id INT,
  payment_date DATE,
  payment_method VARCHAR(50),
  amount DECIMAL(10,2),
  FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

-- Sample Data
INSERT INTO customers VALUES
(1, 'John Doe', 'john@example.com', '1234567890', 'New York'),
(2, 'Jane Smith', 'jane@example.com', '9876543210', 'Los Angeles');

INSERT INTO products VALUES
(1, 'Laptop', 'Gaming Laptop', 80000.00, 10),
(2, 'Smartphone', '5G Android Phone', 25000.00, 20);

INSERT INTO orders VALUES
(1, 1, '2025-07-01', 'Shipped', 105000.00),
(2, 2, '2025-07-15', 'Processing', 25000.00);

INSERT INTO order_items VALUES
(1, 1, 1, 1, 80000.00),
(2, 1, 2, 1, 25000.00),
(3, 2, 2, 1, 25000.00);

INSERT INTO payments VALUES
(1, 1, '2025-07-02', 'Credit Card', 105000.00),
(2, 2, '2025-07-16', 'UPI', 25000.00);
