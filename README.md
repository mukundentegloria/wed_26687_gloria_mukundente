# 🗃️ Online Retail Inventory & Order Management System

**Name:** MUKUNDENTE Gloria


**Student ID:** 26687

## 📌 Introduction

In the modern business landscape, managing product inventory, tracking customer orders, and maintaining supplier relationships are essential operations for any retail organization. Manual processes often result in errors, inefficiencies, and delays, directly impacting customer satisfaction and revenue.

This project addresses these challenges by building a robust Oracle-based solution using PL/SQL, designed to streamline the core functions of an online retail system.

## 🌐 Project Overview

The system is a Retail Inventory & Order Management System built for small to mid-sized businesses. It automates inventory tracking, manages customer orders, and simplifies supplier coordination.

It includes:

 - Customer registration and order placement

 - Product stock management

 - Supplier tracking and restocking logic

 - Detailed order breakdown using order items

 - MIS integration through structured database and analytics support

## 🎯 Project Objectives

### This project aims to:

 - 🧠 Improve decision-making using a structured MIS-oriented database

 - 🔄 Automate order processing and inventory management

 - ✅ Enhance data consistency and security via constraints and relational integrity

 - 📦 Provide real-time access to product availability and order history

 - 📊 Enable business intelligence and reporting through optimized queries

## 🔍 Phase I: Problem Statement and Presentation

## 🧩 Objective

To identify a real-world business problem requiring a PL/SQL-based Oracle database solution. The problem must be complex, involving multiple entities, relationships, and business logic, and should benefit significantly from automation and MIS integration.

## ❗ Problem Definition

 - Retail businesses often struggle with:

 - 🔄 Manual tracking of stock and supplier restocking delays

 - 🧾 Inaccurate order records and inconsistent customer information

 - ⌛ Slow response to customer needs due to outdated systems

 - ❌ Lack of integration between different business units (sales, supply, and support)

## 🏢 Context

The system will be implemented in a mid-sized retail business that operates online and offline. It caters to clients who purchase electronics, agricultural products, and accessories. Inventory turnover is high, and real-time updates are critical to daily operations.

## 👤 Target Users

🧑‍💼 Store Managers – for overseeing orders, stock, and suppliers

👨‍💻 Sales Executives – to track customer orders and status

📦 Warehouse Staff – to manage stock movement and product quantities

🛒 Customers – to place orders and receive timely deliveries

## ✅ Project Goals

 - 📌 Automate inventory and order processing

 - 🧮 Ensure accurate and real-time tracking of stock levels

 - 🔗 Maintain clear supplier-product relationships for better logistics

 - 🔐 Improve data security, validation, and audit capabilities

 - 📈 Support MIS-based analysis through reliable and structured data

---

## 🔄 Phase II: Business Process Modeling (MIS-Driven)

### 🎯 Objective

The purpose of this phase is to visualize the flow of information and decision-making in the Online Retail Inventory & Order Management System, using MIS principles. This model provides a clear understanding of how each entity interacts within the system and supports organizational efficiency.

## 🗂️ 1. Define the Scope

## Business Process Modeled:

We are modeling the Order Processing and Inventory Update Workflow for the retail system.

## Why MIS-Relevant?

This process supports MIS functions by enabling:

 - 🧠 Data-driven decision-making for restocking and sales

 - 🔐 Real-time access to product status for customers and staff

 - ⏱️ Efficiency in managing customer orders and updating inventory

## Objectives & Expected Outcomes:

 - ✅ Automate the customer order lifecycle

 - 🛒 Track stock levels in real-time

 - 🚚 Coordinate restocking from suppliers when inventory is low

 - 📈 Provide management with actionable reports

## 👥 2. Identify Key Entities (Actors & Systems)

## Entity	Role & Responsibility

 - 🧑 Customer	Places order via platform
 - 🛒 Sales System	Captures order details and sends confirmation
 - 📦 Inventory System	Checks and updates stock availability
 - 🏢 Supplier	Restocks products when inventory is low
 - 📊 MIS Dashboard	Provides order analytics and low-stock alerts to management
 - 👨‍💼 Store Manager	Monitors operations and handles escalations

### 🏊 3. Use of Swimlanes for Clarity
### 📸 Screenshot of Swimlane Diagram

<img width="434" alt="image" src="https://github.com/user-attachments/assets/713f3f95-b4e4-4954-b0b9-96cd3242172c" />


🛠 Tool Used: draw.io

### 📐 4. UML/BPMN Notation

### ✅ Used BPMN elements are:

 - 🔷 Start and End Events

 - ⬛ Tasks (e.g., “Check Inventory”, “Send Order to Supplier”)

 - 🔺 Decision Points (e.g., “Is stock available?”)

 - 🔁 Data Flows and Message Links

 - 📤 Intermediate Messages (e.g., Notification to Supplier)

### 🔁 5. Logical Flow

### The model ensures a structured flow:

 - Customer places order 🧾

 - System checks inventory 📦

 - If in stock → proceed with fulfillment

 - If not → notify supplier

 - Supplier ships products 🚚

 - System updates stock and notifies customer 📬

 - Manager views updates on MIS dashboard 📊

### 📝 6. Diagram Explanation 

📃 Business Process Explanation:

This business process focuses on the Order Lifecycle and Inventory Management, showing how various entities work together within an MIS framework. It enhances decision-making by:

 - 🔄 Automating stock updates and supplier communication

 - 🧠 Allowing managers to see low-stock alerts via MIS dashboard

 - 📈 Generating analytics for better planning

**The MIS role here is pivotal:** it integrates all systems, provides transparency, and ensures quick response times, which significantly improves customer satisfaction and operational efficiency.

---

# 🧠 Phase III: Logical Model Design

**🔖 Covers:** *Entity Design*, *Attributes*, *Keys*, *Relationships*, *Constraints*, *Normalization*, *Real-World Scenarios*

## 🎯 Objective

This phase is dedicated to constructing a logical data model for the Online Retail Inventory & Order Management System. The design ensures that the system aligns with both:

#### 🧩 Phase I – the problem definition (real-world retail order processing),

#### 🔄 Phase II – the business process model (MIS-driven workflow).

The logical model serves as a `blueprint` before moving to physical implementation (Phase IV).

🗂️ 1. Entity-Relationship (ER) Model
We identified key entities that reflect the operations of a retail business. These entities capture all critical data used to support management decisions.

## 👥 Entities and Their Roles:

| Entity           | Description                         |
| ---------------- | ----------------------------------- |
| 👤 `Customers`   | Buyers who place orders             |
| 🧾 `Orders`      | Transactions initiated by customers |
| 🛒 `Order_Items` | Details of products in each order   |
| 📦 `Products`    | Goods available for purchase        |
| 🚚 `Suppliers`   | Vendors supplying the products      |

Each entity includes:

 - Primary Keys (PKs) 🔑

 - Foreign Keys (FKs) 🔗

 - Descriptive attributes

### 📸 UML/ER Diagram Screenshot:

![image](https://github.com/user-attachments/assets/71110e47-4b71-4db2-b69f-5e589cde80e5)

## 🔗 2. Relationships & Constraints
### 🔄 Entity Relationships:

| Relationship               | Type        | Description                           |
| -------------------------- | ----------- | ------------------------------------- |
| `Customers` → `Orders`     | One-to-Many | A customer can place multiple orders  |
| `Orders` → `Order_Items`   | One-to-Many | Each order contains multiple products |
| `Order_Items` → `Products` | Many-to-One | Each item refers to one product       |
| `Products` → `Suppliers`   | Many-to-One | Products are linked to one supplier   |

### ⚙️ Constraints Applied:

| Constraint Type    | Example                                      |
| ------------------ | -------------------------------------------- |
| **Primary Key** 🔑 | `customer_id`, `order_id`, etc.              |
| **Foreign Key** 🔗 | `order_items.order_id → orders.order_id`     |
| **NOT NULL** ❗     | `product_name`, `price`, `quantity`          |
| **UNIQUE** 🔁      | `customer_email`, `product_code`             |
| **CHECK** ✅        | `price > 0`, `quantity >= 0`                 |
| **DEFAULT** 🧾     | `order_date = SYSDATE`, `status = 'Pending'` |

### 📐 3. Normalization (Up to 3NF)
To ensure data integrity and reduce redundancy, the design follows the Third Normal Form (3NF):

| Form | Explanation                          | Applied? |
| ---- | ------------------------------------ | -------- |
| 1NF  | No repeating groups, atomic columns  | ✅        |
| 2NF  | All attributes fully dependent on PK | ✅        |
| 3NF  | No transitive dependencies           | ✅        |

## 🌐 4. Real-World Data Handling

The schema accounts for real-world use cases:

 - ✔️ A customer reorders multiple times

 - ✔️ Each order tracks multiple items

 - ✔️ Inventory is updated through suppliers

 - ✔️ Prices, discounts, or availability can vary by product

It supports operations such as:

 - 📊 Order tracking

 - 📦 Inventory restocking

 - 📈 Sales reporting

 - 🛠️ MIS dashboards for managers

 ---

 # 🗃️ Phase IV: Database Creation and Naming (Pluggable Database Implementation)

**🔖 Covers:** `Physical DB creation`, `user access`, `naming conventions`, `Oracle OEM setup`, `GitHub documentation`

## 🎯 Objective

This phase focuses on building the physical environment for the system designed in Phases I–III. Using Oracle PL/SQL, we establish a named pluggable database, manage user roles, and prepare for monitoring and reporting via Oracle Enterprise Manager (OEM). This foundation allows the logical model to be executed in a real database environment.

### 🔨Database Creation

The Pluggable Database (PDB) was created using the following naming format:

```sql
Database Name: wed_26687_gloria_online_retail_db
Username: gloria
Password: gloria
```
### Steps Executed in SQL Command Prompt

**1.Create a pluggable database:**

```sql
SQL> CREATE PLUGGABLE DATABASE wed_26687_gloria_online_retail_db
  2  ADMIN USER gloria IDENTIFIED BY gloria
  3    FILE_NAME_CONVERT = (
  4      'C:\ORACLE21C\ORADATA\ORCL\PDBSEED\',
  5      'C:\ORACLE21C\ORADATA\ORCL\WED_26687_GLORIA_ONLINE_RETAIL_DB\'
  6    );

Pluggable database created.
```
**2.Open the newly created PDB:**

```sql

SQL> ALTER PLUGGABLE DATABASE wed_26687_gloria_online_retail_db OPEN;

Pluggable database altered.

```
* **Use** Makes the PDB ready for operations.

#### 3.save the newly created PDB.


```sql
SQL> ALTER PLUGGABLE DATABASE wed_26687_gloria_online_retail_db SAVE STATE;

Pluggable database altered.
```
* **Use** It makes sure that the PDB remains open after the database restarts.

#### 4. Set the Session Container

```sql
SQL> ALTER SESSION SET CONTAINER = wed_26687_gloria_online_retail_db;

Session altered.
```
* **Use:** It changes the session to the newly created PDB for subsequent operations.

### 5.User Creation and Privilege Assignment

#### Create a Database User

```sql
SQL> create user gloria identified by gloria;

User created.
```
* **Use:** It creates a new user, gloria, with the password gloria.

#### Grant Basic Privileges

```sql
SQL> GRANT CONNECT, RESOURCE, DBA, SYSDBA TO gloria;

Grant succeeded.
```

*  **Use:** To assigns full privileges for database operations.

<img width="958" alt="pdb creation" src="https://github.com/user-attachments/assets/4ef60a69-76e2-493c-a7c7-da09458d4ac2" />

### ⚖️ **Oracle Enterprise Manager (OEM)**

The **OEM dashboard** verified that:

* The database was created successfully.
* Table relationships were correctly established and implemented.

## 📸 OEM screenshot of successful database creation and table relationships.

<img width="933" alt="OM" src="https://github.com/user-attachments/assets/b5189843-71b6-4921-b596-b9f79371a5fd" />

---

#  Phase 5: 📊Table Implementation and Data Insertion


### 📠 What This Phase Covers

* **Table Creation:** Implementing the logical design by creating tables within the Oracle database.
* **Data Insertion:** Adding realistic and meaningful data for testing and demonstration.
* **Data Integrity:** Ensuring data integrity and validating that all data supports necessary queries and operations outlined in the problem statement.

 ### ♻️ Logical Design Implementation
 
The logical design was implemented by creating database tables aligned with the previously developed ER diagram. Relationships between entities were maintained using primary and foreign keys.

## Table creation:

### 🙍‍♀️Customer Table

```sql
CREATE TABLE CUSTOMERS (
    customer_id   NUMBER PRIMARY KEY,
    name          VARCHAR2(100) NOT NULL,
    email         VARCHAR2(100) UNIQUE NOT NULL,
    phone         VARCHAR2(20) CHECK (REGEXP_LIKE(phone, '^[0-9+() -]+$')),
    address       VARCHAR2(200) NOT NULL
);
```
### 🏭 Suppliers Table
```sql
CREATE TABLE SUPPLIERS (
    supplier_id   NUMBER PRIMARY KEY,
    name          VARCHAR2(100) NOT NULL,
    email         VARCHAR2(100) UNIQUE,
    phone         VARCHAR2(20) CHECK (REGEXP_LIKE(phone, '^[0-9+() -]+$')),
    lead_time     NUMBER CHECK (lead_time > 0)
);
```
### 🛍️ PRODUCTS TABLE
```sql
CREATE TABLE PRODUCTS (
    product_id    NUMBER PRIMARY KEY,
    name          VARCHAR2(100) NOT NULL,
    price         NUMBER(10,2) NOT NULL CHECK (price > 0),
    stock         NUMBER NOT NULL CHECK (stock >= 0),
    supplier_id   NUMBER NOT NULL,
    CONSTRAINT fk_supplier FOREIGN KEY (supplier_id) REFERENCES SUPPLIERS(supplier_id)
);
```
### 📑 ORDERS TABLE

```sql
CREATE TABLE ORDERS (
    order_id      NUMBER PRIMARY KEY,
    customer_id   NUMBER NOT NULL,
    order_date    DATE DEFAULT SYSDATE NOT NULL,
    total         NUMBER(10,2) NOT NULL CHECK (total >= 0),
    status        VARCHAR2(20) DEFAULT 'Pending' 
                  CHECK (status IN ('Pending', 'Shipped', 'Delivered', 'Cancelled')) NOT NULL,
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(customer_id)
);
```
### 📦 ORDER_ITEMS TABLE
 
```sql
CREATE TABLE ORDER_ITEMS (
    item_id       NUMBER PRIMARY KEY,
    order_id      NUMBER NOT NULL,
    product_id    NUMBER NOT NULL,
    quantity      NUMBER NOT NULL CHECK (quantity > 0),
    unit_price    NUMBER(10,2) NOT NULL CHECK (unit_price > 0),
    CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES ORDERS(order_id),
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES PRODUCTS(product_id)
);
```
## Data Insertion:

#### 🙍‍♀️Insert into CUSTOMERS VALUES
```sql
INSERT INTO CUSTOMERS VALUES (1, 'Alice Johnson', 'alice@mail.com', '+250788000001', 'Kigali, Rwanda');
INSERT INTO CUSTOMERS VALUES (2, 'Bob Smith', 'bob@mail.com', '+250788000002', 'Huye, Rwanda');
INSERT INTO CUSTOMERS VALUES (3, 'Clara Nshimiyimana', 'clara@mail.com', '+250788000003', 'Musanze, Rwanda');
INSERT INTO CUSTOMERS VALUES (4, 'David Uwimana', 'david@mail.com', '+250788000004', 'Rubavu, Rwanda');
INSERT INTO CUSTOMERS VALUES (5, 'Elise Mugisha', 'elise@mail.com', '+250788000005', 'Muhanga, Rwanda');
```
#### 🏭Insert into PRODUCTS VALUES

```sql
INSERT INTO PRODUCTS VALUES (1, 'LED TV 40"', 250000.00, 10, 1);
INSERT INTO PRODUCTS VALUES (2, 'Organic Fertilizer 10kg', 15000.00, 100, 2);
INSERT INTO PRODUCTS VALUES (3, 'Smartphone Galaxy Z', 600000.00, 20, 3);
INSERT INTO PRODUCTS VALUES (4, 'Hybrid Maize Seeds', 12000.00, 200, 4);
INSERT INTO PRODUCTS VALUES (5, 'Wireless Router', 80000.00, 15, 5);
```
### 📑 Insert into ORDERS VALUES

```sql
INSERT INTO ORDERS VALUES (101, 1, SYSDATE, 750000.00, 'Pending');
INSERT INTO ORDERS VALUES (102, 2, SYSDATE, 15000.00, 'Shipped');
INSERT INTO ORDERS VALUES (103, 3, SYSDATE, 600000.00, 'Delivered');
INSERT INTO ORDERS VALUES (104, 4, SYSDATE, 24000.00, 'Pending');
INSERT INTO ORDERS VALUES (105, 5, SYSDATE, 80000.00, 'Cancelled');
```

### 📦Insert into ORDER_ITEMS VALUES

```sql
INSERT INTO ORDER_ITEMS VALUES (1001, 101, 1, 3, 250000.00);
INSERT INTO ORDER_ITEMS VALUES (1002, 102, 2, 1, 15000.00);
INSERT INTO ORDER_ITEMS VALUES (1003, 103, 3, 1, 600000.00);
INSERT INTO ORDER_ITEMS VALUES (1004, 104, 4, 2, 12000.00);
INSERT INTO ORDER_ITEMS VALUES (1005, 105, 5, 1, 80000.00);
```

## 🧪Queries to Test

Queries to validate table joins, constraints, and real-world scenarios across the 5 main entities.

### 🔎 1. View All Orders with Customer and Order Details
```sql
SELECT o.order_id, c.name AS customer_name, o.order_date, o.total, o.status
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;
```
### 📉 2. Products with Low Stock (Threshold < 100 Units)

```sql
SELECT product_id, name, stock
FROM products
WHERE stock < 100;
```
### 📈 3. Total Orders by Each Customer

```sql
SELECT c.customer_id, c.name, COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;
```
## 🛡️ Data Integrity Measures

 - **Primary Keys:** Ensures uniqueness in `CUSTOMERS`, `SUPPLIERS`, 
   `PRODUCTS`, `ORDERS`, and `ORDER_ITEMS`.

 - **Foreign Keys:** Maintains referential integrity across tables.

 - **Check Constraints:** Enforces valid price, quantity, stock, phone formats 
   and lead time.

 - **Not Null:** Guarantees critical fields are never left empty.

---

## 🔄 VI. Phase: Database Interaction and Transactions

### 🌟 Phase Overview

This phase ensures that the system effectively interacts with the database using SQL operations, procedures, functions, cursors, transactions, and packages. It supports data manipulation, transformation, analytics, and modular design — all aligned with the objectives defined in earlier phases.

---

## 🛠️ 1. DML (Data Manipulation Language)

### 📅 INSERT – *Add New Records*

**Purpose:** Adds new entries to a table.

```sql
INSERT INTO customers (customer_id, name, email, phone)
VALUES (1, 'Alice Johnson', 'alice@example.com', '0788123456');
```

✅ **Output:** 1 row inserted – a new customer record is added.

---

### ✏️ UPDATE – *Modify Existing Records*

**Purpose:** Changes existing data in a table.

```sql
UPDATE customers
SET email = 'alice.j@example.com'
WHERE customer_id = 1;
```

✅ **Output:** 1 row updated – the customer’s email is modified.

---

### ❌ DELETE – *Remove Records*

**Purpose:** Deletes specific entries from a table.

```sql
DELETE FROM customers
WHERE customer_id = 1;
```

✅ **Output:** 1 row deleted – the customer record is removed.

---

## 🧱 2. DDL (Data Definition Language)

### 📦 CREATE – *Define New Tables or Structures*

**Purpose:** Creates a new table in the database.

```sql
CREATE TABLE categories (
  category_id NUMBER PRIMARY KEY,
  category_name VARCHAR2(100) NOT NULL
);
```

✅ **Output:** Table `categories` created.

---

### 🧩 ALTER – *Modify Existing Structure*

**Purpose:** Changes the structure of an existing table.

```sql
ALTER TABLE categories
ADD status VARCHAR2(10) DEFAULT 'active';
```

✅ **Output:** Column `status` added to `categories`.

---

### 🛁 DROP – *Delete Table or Database Objects*

**Purpose:** Permanently removes a table.

```sql
DROP TABLE categories;
```

✅ **Output:** Table `categories` dropped from the database.

---

## ⚙️ 3. Stored Procedures

### 📌 Example: Get Product Info by ID

**Purpose:** Fetch product details for a given product ID.

```sql
CREATE OR REPLACE PROCEDURE get_product_info(p_id IN NUMBER) AS
  v_name products.name%TYPE;
  v_price products.price%TYPE;
BEGIN
  SELECT name, price INTO v_name, v_price
  FROM products
  WHERE product_id = p_id;

  DBMS_OUTPUT.PUT_LINE('Product Name: ' || v_name || ', Price: ' || v_price);
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No product found with ID ' || p_id);
END;
/
```

✅ **Execution:**

```sql
EXEC get_product_info(101);
```

📄 **Output:** `Product Name: Laptop, Price: 950000`

---

## 🧰 4. Functions

### 🌟 Example: Calculate Stock Value

**Purpose:** Returns total stock value for a product.

```sql
CREATE OR REPLACE FUNCTION calculate_stock_value(p_id IN NUMBER)
RETURN NUMBER IS
  v_price products.price%TYPE;
  v_qty products.quantity%TYPE;
BEGIN
  SELECT price, quantity INTO v_price, v_qty
  FROM products
  WHERE product_id = p_id;

  RETURN v_price * v_qty;
END;
/
```

✅ **Usage:**

```sql
SELECT calculate_stock_value(101) AS total_stock_value FROM dual;
```

📄 **Output:** `Total_Stock_Value: 3800000`

---

## 🔄 5. Cursors

### 📓 Example: Loop Through All Customers

**Purpose:** Read all customers and print their details.

```sql
DECLARE
  CURSOR cust_cursor IS
    SELECT name, email FROM customers;

  v_name customers.name%TYPE;
  v_email customers.email%TYPE;
BEGIN
  OPEN cust_cursor;
  LOOP
    FETCH cust_cursor INTO v_name, v_email;
    EXIT WHEN cust_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('Name: ' || v_name || ', Email: ' || v_email);
  END LOOP;
  CLOSE cust_cursor;
END;
/
```

✅ **Output:**

```
Name: Alice Johnson, Email: alice@example.com
Name: John Doe, Email: john@example.com
...
```

---

## 📦 6. Packages

### 🌟 Purpose: Group Related Procedures and Functions

```sql
CREATE OR REPLACE PACKAGE customer_pkg AS
  PROCEDURE print_customers;
  FUNCTION get_customer_email(p_id NUMBER) RETURN VARCHAR2;
END customer_pkg;
/
```

### 📦 Package Body

```sql
CREATE OR REPLACE PACKAGE BODY customer_pkg AS

  PROCEDURE print_customers IS
    CURSOR c IS SELECT name, email FROM customers;
    v_name customers.name%TYPE;
    v_email customers.email%TYPE;
  BEGIN
    FOR cust IN c LOOP
      DBMS_OUTPUT.PUT_LINE(cust.name || ': ' || cust.email);
    END LOOP;
  END;

  FUNCTION get_customer_email(p_id NUMBER) RETURN VARCHAR2 IS
    v_email customers.email%TYPE;
  BEGIN
    SELECT email INTO v_email FROM customers WHERE customer_id = p_id;
    RETURN v_email;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RETURN 'Email not found';
  END;

END customer_pkg;
/
```

✅ **Execution:**

```sql
EXEC customer_pkg.print_customers;
SELECT customer_pkg.get_customer_email(1) FROM dual;
```

---

## 🚑 7. Exception Handling

### ⚠️ Example: Error in Order Lookup

```sql
BEGIN
  SELECT * FROM orders WHERE order_id = 9999;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Order not found.');
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Unexpected error: ' || SQLERRM);
END;
/
```

✅ **Output:** `Order not found.`

---

## ✅ What This Phase Covers

* Use of **DML** to manipulate data (Insert, Update, Delete).
* Use of **DDL** to define and modify database structures.
* Implementation of **modular PL/SQL** using procedures, functions, and packages.
* Use of **cursors** for row-by-row data handling.
* Application of **exception handling** to ensure graceful error reporting.
* **Structured testing** of database logic.
* Real-world interaction with the database system supporting **MIS goals** like automation, decision-support, and error-free data management.

















