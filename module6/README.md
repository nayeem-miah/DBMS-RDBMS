# 📘 PostgreSQL Advanced Topics

This document explains key advanced topics in PostgreSQL, including  
**Subquery**, **View**, **Functions**, **Triggers**, **Indexing**, and **Indexing Algorithms**.

---

## 🔹 Subquery

**Definition:**  
A subquery is a query nested inside another SQL query.  
**Purpose:**  
Used to make the main query more dynamic and specific.

**Example:**
```sql
SELECT name, salary 
FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees);
````

➡️ Here, the subquery calculates the average salary, and the main query retrieves employees earning more than that average.

---

## 🔹 View

**Definition:**
A view is a virtual table based on the result of a SQL query.
**Purpose:**
Simplifies complex queries and improves data security by restricting direct table access.

**Example:**

```sql
CREATE VIEW high_salary_employees AS
SELECT name, salary FROM employees WHERE salary > 60000;

SELECT * FROM high_salary_employees;
```

---

## 🔹 Functions

PostgreSQL supports two main types of functions 👇

### 1. Procedural Function

* Written using **PL/pgSQL** language.
* Supports loops, conditions, and logical operations.

**Example:**

```sql
CREATE OR REPLACE FUNCTION get_total_salary()
RETURNS numeric AS $$
DECLARE 
    total numeric;
BEGIN
    SELECT SUM(salary) INTO total FROM employees;
    RETURN total;
END;
$$ LANGUAGE plpgsql;
```

### 2. Non-Procedural Function

* Written using plain SQL statements.
* Used for simple computations.

**Example:**

```sql
CREATE FUNCTION get_avg_salary()
RETURNS numeric AS
'SELECT AVG(salary) FROM employees;'
LANGUAGE SQL;
```

---

## 🔹 Triggers

**Definition:**
A trigger is an automatic function that runs in response to certain events like `INSERT`, `UPDATE`, or `DELETE`.

**Example:**

```sql
CREATE OR REPLACE FUNCTION log_employee_change()
RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO log_table(action, employee_name, change_time)
  VALUES (TG_OP, NEW.name, NOW());
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER employee_update_trigger
AFTER UPDATE ON employees
FOR EACH ROW
EXECUTE FUNCTION log_employee_change();
```

➡️ Whenever data is updated in the `employees` table, the change is automatically logged.

---

## 🔹 Indexing

**Definition:**
An index improves the performance of data retrieval operations in a database.
**Purpose:**
Makes searches faster in large datasets.

**Example:**

```sql
CREATE INDEX idx_employee_name ON employees(name);
```

➡️ Now, searching by employee name will be much faster.

---

## 🔹 Indexing Algorithms (Index Types)

PostgreSQL supports several index algorithms, each optimized for different use cases 👇

| Index Type                           | Usage                 | Description                                              |
| ------------------------------------ | --------------------- | -------------------------------------------------------- |
| **B-tree (Default)**                 | General purpose       | Most common; efficient for `<`, `>`, and `=` comparisons |
| **Hash Index**                       | Equality search       | Fast for `=` queries only                                |
| **GIN (Generalized Inverted Index)** | Full-text search      | Ideal for arrays and text search                         |
| **GiST (Generalized Search Tree)**   | Complex searches      | Suitable for geometric or range queries                  |
| **BRIN (Block Range Index)**         | Large sequential data | Efficient when data is physically ordered                |

---

## 🧠 Summary

| Topic                | Purpose                                       |
| -------------------- | --------------------------------------------- |
| **Subquery**         | Query within a query for dynamic filtering    |
| **View**             | Simplify and secure complex queries           |
| **Functions**        | Encapsulate logic and reusable SQL code       |
| **Triggers**         | Automate actions on data changes              |
| **Indexing**         | Speed up data retrieval                       |
| **Index Algorithms** | Provide flexibility for different query types |

---

💡 **Tip:** Always analyze your query performance using

```sql
EXPLAIN ANALYZE your_query;
```

to see how PostgreSQL uses indexes and optimize your queries efficiently.

```