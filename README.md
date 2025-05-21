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

Sure! Here's a paraphrased version of your sentences:

---

### ⚖️ **Oracle Enterprise Manager (OEM)**

The **OEM dashboard** verified that:

* The database was created successfully.
* Table relationships were correctly established and implemented.

## 📸 OEM screenshot of successful database creation and table relationships.

<img width="933" alt="OM" src="https://github.com/user-attachments/assets/b5189843-71b6-4921-b596-b9f79371a5fd" />

---






