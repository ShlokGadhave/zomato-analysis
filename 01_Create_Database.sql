Create Database Zomato;
USE Zomato;

CREATE TABLE zomato_restaurants (
    restaurant_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    online_order VARCHAR(10),
    book_table VARCHAR(10),
    rate VARCHAR(10),
    votes INT,
    location VARCHAR(100),
    rest_type VARCHAR(255),
    cuisines VARCHAR(255),
    approx_cost_for_two INT,
    listed_in_type VARCHAR(100),
    listed_in_city VARCHAR(100)
);