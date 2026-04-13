-- 1. Restaurants with Highest Rating
SELECT *
FROM zomato
WHERE CAST(rate AS DECIMAL(3,1)) = (
    SELECT MAX(CAST(rate AS DECIMAL(3,1)))
    FROM zomato_restaurants
);

-- 2. Second Highest Rated Restaurants
SELECT *
FROM zomato
WHERE CAST(rate AS DECIMAL(3,1)) = (
    SELECT MAX(CAST(rate AS DECIMAL(3,1)))
    FROM zomato_restaurants
    WHERE CAST(rate AS DECIMAL(3,1)) < (
        SELECT MAX(CAST(rate AS DECIMAL(3,1)))
        FROM zomato_restaurants
    )
);

-- 3. Restaurants with Votes Greater Than Average
SELECT *
FROM zomato
WHERE votes > (
    SELECT AVG(votes)
    FROM zomato_restaurants
);

-- 4. Restaurants with Cost Greater Than Average
SELECT *
FROM zomato
WHERE approx_cost_for_two > (
    SELECT AVG(approx_cost_for_two)
    FROM zomato_restaurants
);

-- 5. Top 5 Most Expensive Restaurants
SELECT *
FROM zomato
ORDER BY approx_cost_for_two DESC
LIMIT 5;

-- 6. Restaurants with Rating Above Average
SELECT *
FROM zomato
WHERE CAST(rate AS DECIMAL(3,1)) > (
    SELECT AVG(CAST(rate AS DECIMAL(3,1)))
    FROM zomato_restaurants
);

-- 7. Most Common Restaurant Type
SELECT rest_type, COUNT(*) AS total
FROM zomato
GROUP BY rest_type
ORDER BY total DESC
LIMIT 1;

-- 8. Location with Highest Number of Restaurants
SELECT location, COUNT(*) AS total
FROM zomato
GROUP BY location
ORDER BY total DESC
LIMIT 1;

-- 9. Restaurants Serving More Than One Cuisine
SELECT *
FROM zomato
WHERE cuisines LIKE '%,%';

-- 10. Restaurants with High Rating but Low Cost
SELECT *
FROM zomato
WHERE CAST(rate AS DECIMAL(3,1)) > 4
AND approx_cost_for_two < (
    SELECT AVG(approx_cost_for_two)
    FROM zomato_restaurants
);

-- 11. Restaurants with Maximum Votes in Each Location
SELECT *
FROM zomato
WHERE votes = (
    SELECT MAX(votes)
    FROM zomato_restaurants z2
    WHERE z1.location = z2.location
);

-- 12. Locations with Above Average Rating
SELECT location, AVG(CAST(rate AS DECIMAL(3,1))) AS avg_rating
FROM zomato
GROUP BY location
HAVING avg_rating > (
    SELECT AVG(CAST(rate AS DECIMAL(3,1)))
    FROM zomato_restaurants
);

-- 13. Restaurants with Duplicate Names
SELECT name, COUNT(*) AS total
FROM zomato
GROUP BY name
HAVING COUNT(*) > 1;

-- 14. Top Rated Restaurant in Each Location
SELECT *
FROM zomato
WHERE CAST(rate AS DECIMAL(3,1)) = (
    SELECT MAX(CAST(rate AS DECIMAL(3,1)))
    FROM zomato_restaurants z2
    WHERE z1.location = z2.location
);

-- 15. Restaurants with Votes Greater Than Location Average
SELECT *
FROM zomato
WHERE votes > (
    SELECT AVG(votes)
    FROM zomato_restaurants z2
    WHERE z1.location = z2.location
);