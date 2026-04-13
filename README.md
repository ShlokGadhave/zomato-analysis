# zomato-analysis

# 🍽️ Zomato Restaurant Data Analysis using SQL

## 📌 Project Overview
This project focuses on analyzing restaurant data from the Zomato dataset using SQL.  
The goal is to extract meaningful insights such as top-rated restaurants, popular locations, cost trends, and customer preferences.

---

## 📂 Dataset
- Source: Zomato Bangalore Dataset  
- Format: CSV  
- Records: ~50,000+ restaurants  
- Features:
  - Restaurant Name
  - Location
  - Rating
  - Votes
  - Cuisines
  - Cost for Two
  - Online Order
  - Table Booking

---

## 🛠️ Tools & Technologies
- SQL (MySQL)
- GitHub
- CSV Dataset

---

## 🧩 Database Design

### ER Diagram
```mermaid
erDiagram

    RESTAURANTS {
        int restaurant_id PK
        string name
        float rating
        int votes
        int cost_for_two
        string rest_type
        int location_id FK
    }

    LOCATIONS {
        int location_id PK
        string location_name
    }

    CUISINES {
        int cuisine_id PK
        string cuisine_name
    }

    RESTAURANT_CUISINE {
        int id PK
        int restaurant_id FK
        int cuisine_id FK
    }

    SERVICES {
        int service_id PK
        int restaurant_id FK
        string online_order
        string book_table
    }

    LOCATIONS ||--o{ RESTAURANTS : has
    RESTAURANTS ||--o{ RESTAURANT_CUISINE : mapped_to
    CUISINES ||--o{ RESTAURANT_CUISINE : includes
    RESTAURANTS ||--|| SERVICES : has
