# 🛒 E-commerce Database Schema Project

## 📚 Task 1: Database Setup and Schema Design

### ✅ Objective
Design and implement a relational database schema for an **E-commerce platform** using MySQL. The schema includes essential entities such as users, products, orders, payments, and categories. The project demonstrates how to define tables, relationships, primary keys, and foreign keys using SQL.

---

## 🛠️ Tools Used
- MySQL Workbench 8.x
- SQL (DDL – Data Definition Language)
- EER Diagram Designer (in MySQL Workbench)

---

## 📦 Domain: E-commerce

This project simulates an online shopping system. It covers major components of a real-world e-commerce website including:
- User registration
- Product catalog
- Order and payment management
- Category classification

---

## 🧱 Database Entities

| Entity        | Description                                      |
|---------------|--------------------------------------------------|
| Users         | Stores customer information                      |
| Products      | Contains product details                         |
| Orders        | Stores order metadata for each user              |
| OrderItems    | Contains individual items in each order          |
| Payments      | Payment info for each order                      |
| Categories    | Classifies products under different categories   |

---

## 🧬 Relationships

- One **User** can place many **Orders**
- One **Order** can have many **OrderItems**
- Each **OrderItem** refers to one **Product**
- Each **Product** belongs to one **Category**
- One **Order** has one **Payment**

---

## 📝 SQL Script Included

The following SQL commands are included:
- `CREATE DATABASE`
- `CREATE TABLE` statements with data types
- Primary Key (`PRIMARY KEY`)
- Foreign Key (`FOREIGN KEY`)
- Constraints for uniqueness and referential integrity

To run:
```sql
-- Create and use database
CREATE DATABASE ecommerce_db;
USE ecommerce_db;

-- Create tables (Users, Products, Orders, etc.)
-- [See full SQL in the script file]

