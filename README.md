---

# 🛒 Online Retail Inventory & Order Management System

## 📌 Project Overview

This project proposes an Oracle PL/SQL-based solution to address inefficiencies in managing online retail inventory and processing customer orders. The system is designed to streamline operations, track real-time inventory levels, automate order handling, and ensure accurate and timely delivery of products.

---

## 🎯 Objectives

* Develop a centralized inventory and order management database system.
* Automate business processes such as order validation, payment processing, and stock updates using PL/SQL.
* Ensure real-time inventory tracking and minimize manual errors.
* Enhance customer satisfaction with a reliable and responsive system.

---

## 👥 System Actors

| Actor                  | Role Description                                                                        |
| ---------------------- | --------------------------------------------------------------------------------------- |
| **Customer**           | Browses products, places orders, and makes payments.                                    |
| **Admin**              | Manages inventory, updates product information, and monitors orders and shipments.      |
| **Warehouse Staff**    | Updates stock levels, processes orders for dispatch, and monitors inventory thresholds. |
| **Delivery Personnel** | Handles delivery tracking and updates order shipping status.                            |

---

## 🧱 Main Entities

| Entity             | Description                                                                                    |
| ------------------ | ---------------------------------------------------------------------------------------------- |
| **Customer**       | Stores customer profile data, contact details, and shipping addresses.                         |
| **Product**        | Contains product ID, name, category, price, and available stock quantity.                      |
| **Order**          | Represents a customer's purchase; includes order date, status, and customer ID.                |
| **Order\_Details** | Contains detailed line items of products in a specific order, including quantity and subtotal. |
| **Inventory**      | Tracks the stock levels of each product, including minimum reorder thresholds.                 |
| **Payment**        | Records the method, status, and timestamp of a customer's transaction.                         |
| **Shipping**       | Stores delivery tracking numbers, shipping method, and status of dispatched orders.            |

---

## 🔄 Entity Relationships

* A **Customer** can place multiple **Orders**.
* Each **Order** contains one or more **Order\_Details**, linked to **Products**.
* Each **Product** is tracked in the **Inventory** table.
* Each **Order** results in a **Payment** and **Shipping** entry.

---

## 🛠️ Technologies Used

* **Database**: Oracle 11g/19c
* **Language**: PL/SQL
* **Tool**: Oracle SQL Developer

---

## ✅ Phase 1 Deliverables

* 📄 **Problem Statement** finalized
* 🎯 **Objectives** defined
* 🧱 **Main Entities** and **Relationships** identified
* 👥 **Actors** and their interactions specified
* 📊 PowerPoint **Presentation** delivered to stakeholders

---

## 📈 Benefits

* Improved inventory accuracy and reduced stock-outs.
* Automated order validation and processing.
* Better customer experience through timely updates and deliveries.
* Efficient staff operations with clear role-based data access.

---


