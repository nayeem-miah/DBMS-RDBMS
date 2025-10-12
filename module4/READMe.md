# PostgreSQL Setup and Common Operations

## ⚙️ PostgreSQL Setup in VS Code
1. Install **PostgreSQL** and **pgAdmin** on your system.
2. Install **VS Code extension** → `Database client` + `Database client PostgreSQL Driver`.
3. Configure a connection:
   - Open Command Palette → **Database client: Add New Connection**.
   - Select **PostgreSQL** and enter:
     ```
     Server: localhost
     Database: your_db_name
     User: postgres
     Password: your_password
     Port: 5432
     ```
4. Connect to your database and start running SQL queries directly in VS Code.

---

## 🧩 SQL Actions

### 🔹 ALTER ACTION
Used to modify existing database structures (like tables, columns, constraints, etc.)

```sql
ALTER TABLE students ADD COLUMN phone VARCHAR(20);
ALTER TABLE students RENAME COLUMN grade TO student_grade;
ALTER TABLE students DROP COLUMN phone;
````

---

### 🔹 SELECT ACTION

Used to fetch data from a table.

```sql
SELECT * FROM students;                      -- All data
SELECT first_name, age FROM students;        -- Specific columns
SELECT * FROM students WHERE age > 20;       -- With condition
```

---

### 🔹 Sorting, Filtering & Specific Columns

**Sorting:**

```sql
SELECT * FROM students ORDER BY age ASC;     -- Ascending
SELECT * FROM students ORDER BY age DESC;    -- Descending
```

**Filtering:**

```sql
SELECT * FROM students WHERE country = 'Bangladesh';
SELECT * FROM students WHERE grade = 'A';
```

**Specific Columns:**

```sql
SELECT first_name, last_name FROM students;
```

---

## 🔠 String Functions in PostgreSQL

| Function   | Description                 | Example                                                                 |
| ---------- | --------------------------- | ----------------------------------------------------------------------- |
| `CONCAT()` | Combine two or more strings | `SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM students;` |
| `UPPER()`  | Convert to uppercase        | `SELECT UPPER(first_name) FROM students;`                               |
| `LOWER()`  | Convert to lowercase        | `SELECT LOWER(country) FROM students;`                                  |
| `LENGTH()` | Get string length           | `SELECT LENGTH(first_name) FROM students;`                              |

---

## 🧮 Types of Functions

### **Scalar Functions**

Work on individual rows and return a single value per row.
Examples:

* `UPPER()`
* `LOWER()`
* `CONCAT()`
* `LENGTH()`

### **Aggregate Functions**

Work on groups of rows and return a single result.
Examples:

* `AVG()`
* `SUM()`
* `MAX()`
* `MIN()`
* `COUNT()`

Example:

```sql
SELECT AVG(age), COUNT(*) FROM students;
```

---

## ⚠️ Handling NULL Values

`NULL` represents missing or undefined data.

```sql
SELECT * FROM students WHERE grade IS NULL;
SELECT * FROM students WHERE grade IS NOT NULL;
```

Replace NULL values:

```sql
SELECT COALESCE(grade, 'N/A') FROM students;
```

---

## 🔍 Searching Data

**Using LIKE (case-sensitive):**

```sql
SELECT * FROM students WHERE first_name LIKE 'N%';
```

**Using ILIKE (case-insensitive):**

```sql
SELECT * FROM students WHERE country ILIKE '%bangla%';
```

**Wildcards:**

* `%` → matches any sequence of characters.
* `_` → matches a single character.

---

## 🗑️ Delete Data

**Delete a single record:**

```sql
DELETE FROM students WHERE email = 'abc@gmail.com';
```

**Delete multiple records:**

```sql
DELETE FROM students WHERE country = 'India';
```

**Delete all data (use carefully):**

```sql
DELETE FROM students;
```

---

## ✅ Summary

| Topic                 | Description                        |
| --------------------- | ---------------------------------- |
| **ALTER**             | Modify table structure             |
| **SELECT**            | Retrieve data                      |
| **Sorting/Filtering** | Organize and filter records        |
| **Functions**         | Perform text or numeric operations |
| **NULL**              | Handle missing values              |
| **LIKE/ILIKE**        | Search with patterns               |
| **DELETE**            | Remove data                        |

---

