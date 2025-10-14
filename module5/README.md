# 📘 PostgreSQL — Date, Time, and Joins Reference

This document covers essential PostgreSQL concepts related to **date and time operations**, **grouping**, and **different types of joins**, with examples.

---

## 🕒 Date and Time Related Work

### 🔹 Current Date and Time
```sql
SELECT CURRENT_DATE;        -- Returns today's date
SELECT CURRENT_TIME;        -- Returns current time
SELECT CURRENT_TIMESTAMP;   -- Returns current date and time
````

### 🔹 Adding or Subtracting Time

```sql
SELECT CURRENT_DATE - INTERVAL '1 day';   -- Yesterday's date
SELECT CURRENT_DATE + INTERVAL '7 days';  -- Date after 7 days
SELECT NOW() - INTERVAL '2 hours';        -- 2 hours ago from now
```

### 🔹 Date and Time Formatting

You can format dates and times using `TO_CHAR()`:

```sql
SELECT TO_CHAR(NOW(), 'YYYY-MM-DD');      -- 2025-10-14
SELECT TO_CHAR(NOW(), 'Day, DD Mon YYYY');-- Tuesday, 14 Oct 2025
SELECT TO_CHAR(NOW(), 'HH24:MI:SS');      -- 14:35:20
```

---

## 📊 GROUP BY Example

The `GROUP BY` clause is used to aggregate data.

**Example:**

```sql
CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    product VARCHAR(50),
    quantity INT,
    price NUMERIC
);

INSERT INTO sales (product, quantity, price) VALUES
('Laptop', 2, 1000),
('Laptop', 1, 1000),
('Mouse', 5, 20),
('Keyboard', 3, 50);

SELECT product, SUM(quantity) AS total_quantity, SUM(price) AS total_price
FROM sales
GROUP BY product;
```

**Result:**

| product  | total_quantity | total_price |
| -------- | -------------- | ----------- |
| Laptop   | 3              | 2000        |
| Mouse    | 5              | 20          |
| Keyboard | 3              | 50          |

---

## 🔗 Relational Tables Example

```sql
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    product VARCHAR(50),
    amount INT
);
```

---

## 🤝 Types of Joins

### 1️⃣ INNER JOIN

Returns only matching rows.

```sql
SELECT customers.name, orders.product
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id;
```

### 2️⃣ LEFT JOIN

Returns all records from the **left** table, and matched records from the right.

```sql
SELECT customers.name, orders.product
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id;
```

### 3️⃣ RIGHT JOIN

Returns all records from the **right** table, and matched records from the left.

```sql
SELECT customers.name, orders.product
FROM customers
RIGHT JOIN orders
ON customers.customer_id = orders.customer_id;
```

### 4️⃣ CROSS JOIN

Returns the **cartesian product** of both tables.

```sql
SELECT customers.name, orders.product
FROM customers
CROSS JOIN orders;
```

### 5️⃣ NATURAL JOIN

Automatically joins tables based on columns with the **same name**.

```sql
SELECT *
FROM customers
NATURAL JOIN orders;
```

### 6️⃣ JOIN USING

Simplifies joins when both tables share a column with the same name.

```sql
SELECT *
FROM customers
JOIN orders USING (customer_id);
```

---

## ✅ Summary

| Feature                        | Description                           |
| ------------------------------ | ------------------------------------- |
| `CURRENT_DATE`, `CURRENT_TIME` | Get current date/time                 |
| `INTERVAL`                     | Add or subtract time                  |
| `TO_CHAR()`                    | Format date/time                      |
| `GROUP BY`                     | Group and aggregate data              |
| `JOIN`                         | Combine tables based on relationships |
| `LEFT JOIN`, `RIGHT JOIN`      | Keep all rows from one side           |
| `CROSS JOIN`                   | Cartesian product                     |
| `NATURAL JOIN`, `USING`        | Automatic or simplified joins         |


