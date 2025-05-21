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

 












