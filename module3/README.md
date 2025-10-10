# PostgreSQL Commands Reference

This README provides a concise reference for using **PostgreSQL** via the SQL Shell (psql) and Windows PowerShell.

---

## SQL Shell (psql) Commands

The **psql** command-line interface allows you to interact with PostgreSQL databases.

| Command | Description |
|---------|-------------|
| `select version();` | Shows the current PostgreSQL version. |
| `\l` | Lists all databases. |
| `\c database_name` | Connects to a specific database. |
| `\d` | Lists all tables, views, and sequences in the current database. |
| `\dn` | Lists all schemas. |
| `\du` | Lists all roles and users. |
| `\! cls` | Clears the screen (Windows). |
| `\dt` | Lists all tables in the current schema. |
| `\conninfo` | Shows information about the current connection. |
| `\q` | Quits the SQL Shell. |

---

## Windows PowerShell PostgreSQL Commands

You can run PostgreSQL commands directly from **PowerShell**.

### Connecting to PostgreSQL

```powershell
psql -U user_name database_name
````

### Creating Databases

```sql
CREATE DATABASE db_name;
```

**Documentation:**

* [PostgreSQL CREATE DATABASE](https://www.postgresql.org/docs/current/sql-createdatabase.html)
* [GeeksforGeeks: PostgreSQL psql Commands](https://www.geeksforgeeks.org/postgresql/postgresql-psql-commands/)

---

## User and Role Management

```sql
CREATE USER user2 WITH LOGIN ENCRYPTED PASSWORD 'Nayeem123$';
CREATE ROLE role2 WITH LOGIN ENCRYPTED PASSWORD 'Nayeem123$';
```

---

## Table Operations

### Creating a Table

```sql
CREATE TABLE test_table (
  name VARCHAR(50)
);
```

### Inserting Data

**Syntax:**

```sql
INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...);
```

**Example:**

```sql
INSERT INTO test_table (name)
VALUES ('Nayeem');
```

### Selecting Data

**Syntax:**

```sql
SELECT * FROM table_name;
```

**Example:**

```sql
SELECT * FROM test_table;
```

### Inserting Multiple Rows

**Syntax:**

```sql
INSERT INTO table_name (column1, column2, ...)
VALUES 
(value1, value2, ...),
(value3, value4, ...),
(value5, value6, ...);
```

**Example:**

```sql
INSERT INTO person2 (id, user_name, age)
VALUES 
(4, 'Jhon', 21),
(3, 'Tanin', 23);
```

---

## Privileges and Access Control

```sql
GRANT ALL PRIVILEGES ON TABLE test_table TO user1;
GRANT SELECT ON TABLE test_table TO user3;
REVOKE SELECT ON TABLE test_table FROM user3;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO user3;
```

---

## Database Management

```sql
ALTER DATABASE db_name RENAME TO updated_db;
DROP DATABASE db_name;
```

---

## Example Table Creation with Constraints

```sql
CREATE TABLE person2 (
  id SERIAL PRIMARY KEY,
  user_name VARCHAR(20) NOT NULL,
  age INTEGER CHECK (age >= 18)
);

CREATE TABLE person4 (
  id SERIAL,
  user_name VARCHAR(20) NOT NULL,
  age INTEGER CHECK (age >= 18),
  PRIMARY KEY (id, user_name),
  UNIQUE (user_name, age)
);
```

### Inserting Data into Tables

```sql
-- Insert a single row
INSERT INTO person2 (id, user_name, age) VALUES (2, 'Rakib', 21);

-- Insert multiple rows
INSERT INTO person2 (id, user_name, age)
VALUES 
(4, 'Jhon', 21),
(3, 'Tanin', 23);

-- Insert without specifying column names (values must match column order)
INSERT INTO person2 VALUES (6, 'RS', 24);
```

---

## References

* [PostgreSQL Official Documentation](https://www.postgresql.org/docs/)
* [GeeksforGeeks: PostgreSQL psql Commands](https://www.geeksforgeeks.org/postgresql/postgresql-psql-commands/)

---

## Bonus: Valentina Studio Notes

If you use **Valentina Studio** (Windows 64-bit):

```sql
-- Create database
CREATE DATABASE ph;

-- Create table example
CREATE TABLE person (
  person_id SERIAL,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  age INTEGER,
  isActive BOOLEAN,
  dob DATE
);

-- Rename and drop tables
ALTER TABLE person RENAME TO "user";
DROP TABLE "user";
```
