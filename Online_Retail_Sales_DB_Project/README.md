
# Online Retail Sales Database Design

## Overview
This project implements a normalized SQL schema for an e-commerce platform with key entities and relationships.

## Tools Used
- MySQL / PostgreSQL
- dbdiagram.io

## Schema Details

### Entities
- Customers
- Products
- Orders
- Order Items
- Payments

### ER Diagram
Designed using dbdiagram.io. Shows relationships between the above entities.

### SQL Schema
Includes table creation with constraints and foreign keys.

### Sample Data
Pre-filled data for all tables for testing.

### Query Report (JOIN Example)
```
SELECT 
  c.name AS customer_name,
  o.order_id,
  o.order_date,
  p.name AS product_name,
  oi.quantity,
  oi.price,
  pay.payment_method,
  pay.amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
JOIN payments pay ON o.order_id = pay.order_id;
```

## Deliverables
- ER diagram (dbdiagram format)
- SQL schema
- Sample data
- Query report
