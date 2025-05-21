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
### 📸 Insert Screenshot of Your Swimlane Diagram Here

<img width="724" alt="image" src="https://github.com/user-attachments/assets/cdd25892-f502-4ffe-b7f5-aa8065582c19" />

🛠 Tool Used: Lucidchart or draw.io

🎯 Place your diagram showing customers, sales system, inventory, supplier, and manager in clearly labeled swimlanes.

Swimlanes Included:

Customer

Sales Application

Inventory System

Supplier

MIS Dashboard

Store Manager

📐 4. UML/BPMN Notation
✅ Used BPMN elements such as:

🔷 Start and End Events

⬛ Tasks (e.g., “Check Inventory”, “Send Order to Supplier”)

🔺 Decision Points (e.g., “Is stock available?”)

🔁 Data Flows and Message Links

📤 Intermediate Messages (e.g., Notification to Supplier)

📸 Insert Screenshot of BPMN Diagram Here

Highlight use of start/end events, tasks, and gateways for clarity.

🔁 5. Logical Flow
The model ensures a structured flow:

Customer places order 🧾

System checks inventory 📦

If in stock → proceed with fulfillment

If not → notify supplier

Supplier ships products 🚚

System updates stock and notifies customer 📬

Manager views updates on MIS dashboard 📊

📸 Insert Screenshot Showing Decision Pathway

Highlight the conditional flow between “stock available?” and “send to supplier”.

📝 6. Diagram Explanation (One Page)
📃 Business Process Explanation

This business process focuses on the Order Lifecycle and Inventory Management, showing how various entities work together within an MIS framework. It enhances decision-making by:

🔄 Automating stock updates and supplier communication

🧠 Allowing managers to see low-stock alerts via MIS dashboard

📈 Generating analytics for better planning

The MIS role here is pivotal—it integrates all systems, provides transparency, and ensures quick response times, which significantly improves customer satisfaction and operational efficiency.

