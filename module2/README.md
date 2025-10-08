# 📘 Database Concepts Overview

## 🧩 1. Anomalies

Anomalies are data inconsistencies that occur when a database is not properly normalized. They typically appear during insert, update, or delete operations.

### 🔹 Types of Anomalies:
- **Update Anomaly:**  
  Occurs when the same data exists in multiple places, and an update in one place doesn’t reflect in others.

- **Delete Anomaly:**  
  Happens when deleting one record unintentionally removes other important data.

- **Insert Anomaly:**  
  Occurs when certain data cannot be inserted without the presence of other data.

---

## 🧮 2. Normalization

Normalization is the process of organizing data in a database to reduce redundancy and improve data integrity.

### 🎯 Goals:
- Minimize data duplication  
- Eliminate anomalies  
- Ensure data consistency  

---

## 🔸 3. Functional Dependency

A **functional dependency** describes the relationship between two attributes, typically between a key and a non-key attribute.

**Notation:**  
`X → Y` means if two tuples have the same value for X, they must have the same value for Y.

**Example:**  
`Student_ID → Student_Name`  
(If Student_ID is the same, Student_Name must also be the same.)

---

## 🧾 4. Normal Forms (NF)

Normalization occurs in several steps, known as **Normal Forms**.

### 🧠 Major Normal Forms:
1. **1NF (First Normal Form):**  
   - Each column must hold atomic (indivisible) values.  
   - No repeating groups or arrays.

2. **2NF (Second Normal Form):**  
   - Must be in 1NF.  
   - No partial dependency (non-key attribute should depend on the whole primary key).

3. **3NF (Third Normal Form):**  
   - Must be in 2NF.  
   - No transitive dependency (non-key attributes should not depend on other non-key attributes).

---

## 🧩 5. ERD (Entity Relationship Diagram)

An **ERD (Entity Relationship Diagram)** is a visual representation of entities and their relationships in a database.

**Example Entities:**
- Student
- Course
- Enrollment

**Example Relationship:**  
A *Student* **enrolls in** a *Course*.

---

## 🐘 6. PostgreSQL Database

### 🔹 Benefits of PostgreSQL:
- **Open Source** and free to use  
- **High Performance** and scalability  
- Supports **advanced data types** like JSON, Arrays, hstore, etc.  
- **Secure** with SSL and authentication support  
- **ACID compliant** for reliable transactions  
- Works on **Windows, Linux, and macOS**

---

### 🔹 How to Install PostgreSQL:
1. Visit the official website: [https://www.postgresql.org/download](https://www.postgresql.org/download)  
2. Choose your operating system (Windows/Linux/macOS).  
3. Download and run the installer.  
4. Set a password for the **postgres** superuser during installation.  
5. After installation, open **pgAdmin** to create and manage your databases easily.

---

### 🧰 Tools Used:
- **pgAdmin:** GUI tool for managing PostgreSQL databases.  
- **SQL Shell (psql):** Command-line interface for PostgreSQL.  

---

### 🧠 Summary:
By applying **Normalization** and understanding **Functional Dependencies**, we can avoid **Anomalies**, design a clear **ERD**, and manage efficient databases using **PostgreSQL**.
