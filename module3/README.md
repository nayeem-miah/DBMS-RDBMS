
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

### User and Role Management

```sql
CREATE USER user2 WITH LOGIN ENCRYPTED PASSWORD 'Nayeem123$';
CREATE ROLE role2 WITH LOGIN ENCRYPTED PASSWORD 'Nayeem123$';
```

### Table Operations

```sql
CREATE TABLE test_table2 (name VARCHAR(50));
INSERT INTO test_table(name) VALUES('nayeem');
SELECT * FROM test_table;
```

### Privileges and Access Control

```sql
GRANT ALL PRIVILEGES ON TABLE test_table TO user1;
GRANT SELECT ON TABLE test_table TO user3;
REVOKE SELECT ON TABLE test_table FROM user3;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO user3;
```

---

## References

* [PostgreSQL Official Documentation](https://www.postgresql.org/docs/)
* [GeeksforGeeks: PostgreSQL psql Commands](https://www.geeksforgeeks.org/postgresql/postgresql-psql-commands/)

---
