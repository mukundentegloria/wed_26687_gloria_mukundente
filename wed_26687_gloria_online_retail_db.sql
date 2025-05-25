-- ====================================
-- 💼 CUSTOMERS TABLE
-- ====================================
CREATE TABLE CUSTOMERS (
    customer_id   NUMBER PRIMARY KEY,
    name          VARCHAR2(100) NOT NULL,
    email         VARCHAR2(100) UNIQUE NOT NULL,
    phone         VARCHAR2(20) CHECK (REGEXP_LIKE(phone, '^[0-9+() -]+$')),
    address       VARCHAR2(200) NOT NULL
);
-- ====================================
-- 🏭 SUPPLIERS TABLE
-- ====================================
CREATE TABLE SUPPLIERS (
    supplier_id   NUMBER PRIMARY KEY,
    name          VARCHAR2(100) NOT NULL,
    email         VARCHAR2(100) UNIQUE,
    phone         VARCHAR2(20) CHECK (REGEXP_LIKE(phone, '^[0-9+() -]+$')),
    lead_time     NUMBER CHECK (lead_time > 0)
);

-- ====================================
-- 🛍️ PRODUCTS TABLE
-- ====================================
CREATE TABLE PRODUCTS (
    product_id    NUMBER PRIMARY KEY,
    name          VARCHAR2(100) NOT NULL,
    price         NUMBER(10,2) NOT NULL CHECK (price > 0),
    stock         NUMBER NOT NULL CHECK (stock >= 0),
    supplier_id   NUMBER NOT NULL,
    CONSTRAINT fk_supplier FOREIGN KEY (supplier_id) REFERENCES SUPPLIERS(supplier_id)
);

-- ====================================
-- 📑 ORDERS TABLE
-- ====================================
CREATE TABLE ORDERS (
    order_id      NUMBER PRIMARY KEY,
    customer_id   NUMBER NOT NULL,
    order_date    DATE DEFAULT SYSDATE NOT NULL,
    total         NUMBER(10,2) NOT NULL CHECK (total >= 0),
    status        VARCHAR2(20) DEFAULT 'Pending' 
                  CHECK (status IN ('Pending', 'Shipped', 'Delivered', 'Cancelled')) NOT NULL,
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(customer_id)
);

-- ====================================
-- 📦 ORDER_ITEMS TABLE
-- ====================================
CREATE TABLE ORDER_ITEMS (
    item_id       NUMBER PRIMARY KEY,
    order_id      NUMBER NOT NULL,
    product_id    NUMBER NOT NULL,
    quantity      NUMBER NOT NULL CHECK (quantity > 0),
    unit_price    NUMBER(10,2) NOT NULL CHECK (unit_price > 0),
    CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES ORDERS(order_id),
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES PRODUCTS(product_id)
);

INSERT INTO CUSTOMERS VALUES (1, 'Alice Umwiza', 'alice@mail.com', '+250788000001', 'Kigali, Rwanda');
INSERT INTO CUSTOMERS VALUES (2, 'Bob Smith', 'bob@mail.com', '+250788000002', 'Huye, Rwanda');
INSERT INTO CUSTOMERS VALUES (3, 'Clara Nshimiyimana', 'clara@mail.com', '+250788000003', 'Musanze, Rwanda');
INSERT INTO CUSTOMERS VALUES (4, 'David Uwimana', 'david@mail.com', '+250788000004', 'Rubavu, Rwanda');
INSERT INTO CUSTOMERS VALUES (5, 'Elise Mugisha', 'elise@mail.com', '+250788000005', 'Muhanga, Rwanda');

INSERT INTO SUPPLIERS VALUES (1, 'RwandaElectro Ltd', 'contact@rwandaelectro.com', '+250788123456', 3);
INSERT INTO SUPPLIERS VALUES (2, 'AgroSuppliers Inc', 'info@agrosuppliers.com', '+250788234567', 5);
INSERT INTO SUPPLIERS VALUES (3, 'TechZone Africa', 'support@techzone.rw', '+250788345678', 2);
INSERT INTO SUPPLIERS VALUES (4, 'GreenHarvest Ltd', 'orders@greenharvest.rw', '+250788456789', 4);
INSERT INTO SUPPLIERS VALUES (5, 'SmartLogix', 'sales@smartlogix.rw', '+250788567890', 6);

INSERT INTO PRODUCTS VALUES (1, 'LED TV 40"', 250000.00, 10, 1);
INSERT INTO PRODUCTS VALUES (2, 'Organic Fertilizer 10kg', 15000.00, 100, 2);
INSERT INTO PRODUCTS VALUES (3, 'Smartphone Galaxy Z', 600000.00, 20, 3);
INSERT INTO PRODUCTS VALUES (4, 'Hybrid Maize Seeds', 12000.00, 200, 4);
INSERT INTO PRODUCTS VALUES (5, 'Wireless Router', 80000.00, 15, 5);

INSERT INTO ORDERS VALUES (101, 1, SYSDATE, 750000.00, 'Pending');
INSERT INTO ORDERS VALUES (102, 2, SYSDATE, 15000.00, 'Shipped');
INSERT INTO ORDERS VALUES (103, 3, SYSDATE, 600000.00, 'Delivered');
INSERT INTO ORDERS VALUES (104, 4, SYSDATE, 24000.00, 'Pending');
INSERT INTO ORDERS VALUES (105, 5, SYSDATE, 80000.00, 'Cancelled');

INSERT INTO ORDER_ITEMS VALUES (1001, 101, 1, 3, 250000.00);
INSERT INTO ORDER_ITEMS VALUES (1002, 102, 2, 1, 15000.00);
INSERT INTO ORDER_ITEMS VALUES (1003, 103, 3, 1, 600000.00);
INSERT INTO ORDER_ITEMS VALUES (1004, 104, 4, 2, 12000.00);
INSERT INTO ORDER_ITEMS VALUES (1005, 105, 5, 1, 80000.00);

--️ 4. DDL and DML Operations


ALTER TABLE products ADD warranty_months NUMBER DEFAULT 12;


UPDATE products SET price = price * 1.1 WHERE product_id = 101;
DELETE FROM customers WHERE customer_id = 2;

--️ 5. Procedure, Function, and Cursor

-- Function to Calculate Total Price
CREATE OR REPLACE FUNCTION get_order_total(p_order_id NUMBER) RETURN NUMBER IS
    v_total NUMBER := 0;
BEGIN
    SELECT SUM(subtotal) INTO v_total FROM order_items WHERE order_id = p_order_id;
    RETURN v_total;
END;
/

-- 📋 Procedure: Print Customer Orders (with Exception Handling)
CREATE OR REPLACE PROCEDURE print_customer_orders(p_customer_id NUMBER) IS
    CURSOR c_orders IS
        SELECT order_id, order_date
        FROM orders
        WHERE customer_id = p_customer_id;
BEGIN
    FOR rec IN c_orders LOOP
        DBMS_OUTPUT.PUT_LINE('Order ID: ' || rec.order_id || ', Date: ' || rec.order_date);
    END LOOP;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No orders found for the customer.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error fetching customer orders: ' || SQLERRM);
END;
/
-- ⛔ Trigger: Restrict Manipulations on Weekdays and Holidays (with Exception Handling)
CREATE OR REPLACE TRIGGER restrict_weekday_holiday_ops
BEFORE INSERT OR UPDATE OR DELETE ON customers
DECLARE
    v_day VARCHAR2(10);
    v_is_holiday NUMBER := 0;
BEGIN
    SELECT TO_CHAR(SYSDATE, 'DY', 'NLS_DATE_LANGUAGE=ENGLISH') INTO v_day FROM dual;

    SELECT COUNT(*)
    INTO v_is_holiday
    FROM holidays
    WHERE holiday_date = TRUNC(SYSDATE);

    IF v_day IN ('MON','TUE','WED','THU','FRI') OR v_is_holiday > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, '❌ Modifications are not allowed on weekdays or holidays.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Trigger error: ' || SQLERRM);
        RAISE;
END;
/

-- 🕵️ Trigger: Audit Changes in Products Table (with Exception Handling)
CREATE OR REPLACE TRIGGER log_audit_changes
AFTER INSERT OR UPDATE OR DELETE ON products
FOR EACH ROW
DECLARE
    v_action VARCHAR2(10);
BEGIN
    IF INSERTING THEN
        v_action := 'INSERT';
    ELSIF UPDATING THEN
        v_action := 'UPDATE';
    ELSIF DELETING THEN
        v_action := 'DELETE';
    END IF;

    INSERT INTO audit_log (user_id, action_time, operation, status)
    VALUES (USER, SYSDATE, v_action, 'ALLOWED');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Audit trigger failed: ' || SQLERRM);
END;
/

-- ✅ Transaction Control
ROLLBACK;  -- Undo uncommitted changes if needed
COMMIT;    -- Confirm all successful operations


