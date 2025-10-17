
# 🐆 Wildlife Conservation Monitoring Assignment  
### 🌿 The Ranger and the Rare Animal

Meera is a forest ranger who protects wildlife in a nature reserve. She’s searching for the rare **Shadow Leopard**, which hasn’t been seen in months. To help track sightings and share data with scientists, she uses a simple database with three tables: `rangers`, `species`, and `sightings`. These help her log observations, learn about endangered animals, and find clues about where the Shadow Leopard might be hiding.

---

## 🎯 Assignment Objective

This project focuses on **PostgreSQL database operations** using a real-world scenario in wildlife conservation monitoring.  
You will create and manage **three tables (`rangers`, `species`, `sightings`)**, insert sample data, and perform essential SQL queries including:

- CRUD operations  
- Constraints (PK, FK, CHECK, DEFAULT)  
- JOINs  
- Aggregations (COUNT, MAX, etc.)  
- Filtering (WHERE, HAVING)  
- Data manipulation (UPDATE, DELETE)

This assignment strengthens your understanding of **relational databases** while working with a meaningful environmental use case.

---

## ⚙️ Database Setup

1. Install **PostgreSQL** on your system (if not already installed).  
2. Open **pgAdmin** or your preferred **PostgreSQL terminal**.  
3. Create a new database named:  
   ```sql
   CREATE DATABASE conservation_db;
````

4. Connect to the new database.
5. Write and execute SQL queries for the problems listed below.

---

## 🧱 Table Details

| Table Name  | Description                                                      |
| ----------- | ---------------------------------------------------------------- |
| `rangers`   | Stores ranger information (name, contact, zone)                  |
| `species`   | Information about animal species (name, scientific name, status) |
| `sightings` | Records of when and where animals were seen                      |

### 🧩 Table Structures

#### 1️⃣ rangers

| Field Name  | Description               |
| ----------- | ------------------------- |
| `ranger_id` | Unique ID for each ranger |
| `name`      | Full name of the ranger   |
| `region`    | Area they patrol          |

#### 2️⃣ species

| Field Name            | Description                          |
| --------------------- | ------------------------------------ |
| `species_id`          | Unique ID for each species           |
| `common_name`         | Common name (e.g., Shadow Leopard)   |
| `scientific_name`     | Scientific name                      |
| `discovery_date`      | When the species was first recorded  |
| `conservation_status` | Status like Endangered or Vulnerable |

#### 3️⃣ sightings

| Field Name      | Description                            |
| --------------- | -------------------------------------- |
| `sighting_id`   | Unique ID for each sighting            |
| `ranger_id`     | Who made the sighting (FK → `rangers`) |
| `species_id`    | Which animal was seen (FK → `species`) |
| `sighting_time` | Date and time of the sighting          |
| `location`      | Where it was seen                      |
| `notes`         | Additional observations (optional)     |

---

## 🔗 Relationships Between Tables

| Relationship            | Description                                       |
| ----------------------- | ------------------------------------------------- |
| `sightings` → `rangers` | Each sighting is linked to the ranger who made it |
| `sightings` → `species` | Each sighting is linked to a specific species     |

---

## 📊 Sample Data

### 🧍‍♀️ rangers

| ranger_id | name        | region         |
| --------- | ----------- | -------------- |
| 1         | Alice Green | Northern Hills |
| 2         | Bob White   | River Delta    |
| 3         | Carol King  | Mountain Range |

### 🐾 species

| species_id | common_name      | scientific_name         | discovery_date | conservation_status |
| ---------- | ---------------- | ----------------------- | -------------- | ------------------- |
| 1          | Snow Leopard     | Panthera uncia          | 1775-01-01     | Endangered          |
| 2          | Bengal Tiger     | Panthera tigris tigris  | 1758-01-01     | Endangered          |
| 3          | Red Panda        | Ailurus fulgens         | 1825-01-01     | Vulnerable          |
| 4          | Asiatic Elephant | Elephas maximus indicus | 1758-01-01     | Endangered          |

### 📍 sightings

| sighting_id | species_id | ranger_id | location          | sighting_time       | notes                      |
| ----------- | ---------- | --------- | ----------------- | ------------------- | -------------------------- |
| 1           | 1          | 1         | Peak Ridge        | 2024-05-10 07:45:00 | Camera trap image captured |
| 2           | 2          | 2         | Bankwood Area     | 2024-05-12 16:20:00 | Juvenile seen              |
| 3           | 3          | 3         | Bamboo Grove East | 2024-05-15 09:10:00 | Feeding observed           |
| 4           | 1          | 2         | Snowfall Pass     | 2024-05-18 18:30:00 | NULL                       |

---

## 🧠 PostgreSQL Problems (50 Marks)

1️⃣ **Insert a new ranger:**
Register a new ranger `'Derek Fox'` in `'Coastal Plains'`.

2️⃣ **Count unique species sighted:**
Return the total number of distinct species ever sighted.

3️⃣ **Find sightings with 'Pass' in location.**

4️⃣ **List each ranger and their total sightings count.**

5️⃣ **List species never sighted.**

6️⃣ **Show most recent 2 sightings** with species name and ranger.

7️⃣ **Update all species discovered before 1800** to have status `'Historic'`.

8️⃣ **Label time of day for each sighting:**
Morning (< 12 PM), Afternoon (12–5 PM), Evening (> 5 PM).

9️⃣ **Delete rangers who have never sighted any species.**

---

## 📝 Submission Instructions

* Write **all SQL commands** in one `.sql` file:
  `PostgreSQL_Assignment.sql`
* Include:

  * Table creation queries
  * Sample data insertions
  * All problem queries (with comments like `-- Problem 1`)
* Ensure all queries run successfully before submission.
* Upload the file to a **public GitHub repository** and submit the repo link.

---

## 🪶 Bonus Section (Answer Any 5 in Bangla)

### 1️⃣ PostgreSQL কী?

PostgreSQL একটি শক্তিশালী ওপেন-সোর্স রিলেশনাল ডাটাবেস ম্যানেজমেন্ট সিস্টেম। এটি SQL (Structured Query Language) ভিত্তিক এবং ACID কমপ্লায়েন্ট, অর্থাৎ এটি ডাটা ইন্টেগ্রিটি এবং রিলায়েবিলিটি বজায় রাখে।

### 2️⃣ PostgreSQL-এ Database Schema এর উদ্দেশ্য কী?

একটি **Schema** ডাটাবেসের ভিতরে টেবিল, ভিউ, ফাংশন ইত্যাদি সংগঠিতভাবে রাখার একটি পদ্ধতি। এটি ডাটাবেসকে আলাদা আলাদা লজিক্যাল গ্রুপে ভাগ করে ব্যবস্থাপনা সহজ করে।

### 3️⃣ Primary Key এবং Foreign Key কী?

* **Primary Key:** টেবিলের প্রতিটি রেকর্ডকে ইউনিকভাবে চিহ্নিত করে।
* **Foreign Key:** অন্য টেবিলের Primary Key এর সাথে সম্পর্ক তৈরি করে ডাটার রেফারেন্স বজায় রাখে।

### 4️⃣ VARCHAR এবং CHAR এর পার্থক্য কী?

* **CHAR(n):** নির্দিষ্ট দৈর্ঘ্যের স্ট্রিং সংরক্ষণ করে (যেমন CHAR(10) সবসময় 10 চরিত্রের জায়গা দখল করে)।
* **VARCHAR(n):** পরিবর্তনশীল দৈর্ঘ্যের স্ট্রিং সংরক্ষণ করে এবং অপ্রয়োজনীয় জায়গা নেয় না।

### 5️⃣ WHERE ক্লজের কাজ কী?

`WHERE` ক্লজ ডাটাকে ফিল্টার করতে ব্যবহার হয়। এটি নির্দিষ্ট শর্ত পূরণ করা রেকর্ডগুলো নির্বাচন করে।
**উদাহরণ:**

```sql
SELECT * FROM species WHERE conservation_status = 'Endangered';
```

### 6️⃣ LIMIT এবং OFFSET কী জন্য ব্যবহৃত হয়?

`LIMIT` রেজাল্টে কতগুলো সারি দেখাতে হবে তা নির্ধারণ করে এবং `OFFSET` নির্দিষ্ট সংখ্যক সারি বাদ দিয়ে পরের ডাটা প্রদর্শন করে।
**উদাহরণ:**

```sql
SELECT * FROM sightings LIMIT 5 OFFSET 10;
```

### 7️⃣ UPDATE স্টেটমেন্ট দিয়ে কীভাবে ডাটা পরিবর্তন করা হয়?

`UPDATE` কমান্ড টেবিলের বিদ্যমান রেকর্ড পরিবর্তন করতে ব্যবহৃত হয়।
**উদাহরণ:**

```sql
UPDATE species SET conservation_status = 'Historic' WHERE discovery_date < '1800-01-01';
```

### 8️⃣ JOIN অপারেশনের ভূমিকা কী?

`JOIN` দুটি বা তার বেশি টেবিলের ডাটা একত্রে দেখানোর জন্য ব্যবহৃত হয়।
**উদাহরণ:**

```sql
SELECT r.name, s.common_name
FROM sightings si
JOIN rangers r ON si.ranger_id = r.ranger_id
JOIN species s ON si.species_id = s.species_id;
```

### 9️⃣ GROUP BY ক্লজের কাজ কী?

`GROUP BY` একই ধরণের ডাটা গ্রুপ করে এবং তাদের উপর **aggregate functions** যেমন COUNT(), SUM(), AVG() প্রয়োগ করতে সাহায্য করে।

### 🔟 COUNT(), SUM(), AVG() এর ব্যবহার কী?

এগুলো **aggregate functions** — ডাটার সারাংশ বের করতে ব্যবহৃত হয়।
**উদাহরণ:**

```sql
SELECT COUNT(*) AS total_species FROM species;
```

---

## ⚡ Important Notice

* Plagiarism or AI-generated content will result in **zero marks**.
* Participation is **mandatory** for all students.
* This assignment builds skills necessary for future tools like **Prisma ORM** and **Full-Stack Development**.

---

