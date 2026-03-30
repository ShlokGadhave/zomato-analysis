-- Find the average rating of restaurants.
SELECT avg(`Aggregate Rating`) as Average_Rating , `Restaurant Name`FROM zomato Group By `Restaurant Name`;
USE zomato;

-- Find the maximum rating in the dataset.
SELECT max(`Aggregate Rating`) as Maximum_Rating FROM zomato ;

-- Find the minimum rating in the dataset.
SELECT min(`Aggregate Rating`) as Maximum_Rating FROM zomato ;

-- Find the average cost for two people.
SELECT avg(`Average Cost for two`) as Average_Cost FROM zomato;

-- Find the top 10 restaurants with the highest votes.
SELECT `Restaurant Name`,Votes FROM zomato Order By Votes desc Limit 10;

-- Count restaurants grouped by location.
SELECT count(`Restaurant Name`) as No_of_Restaurant ,Address FROM zomato Group By Address;

-- Count restaurants grouped by cuisine.
SELECT count(`Restaurant Name`) as No_of_Restaurant ,cuisines FROM zomato Group By cuisines;

-- Count restaurants grouped by City 
SELECT count(`Restaurant Name`) as no_of_Restaurant,City FROM zomato Group By city;

-- Find restaurants with votes greater than 1000. 
SELECT `Restaurant Name` FROM zomato WHERE Votes>1000;

-- Find restaurants with rating above the average rating.
SELECT `Restaurant Name`, AVG(`Aggregate Rating`) 
FROM zomato 
GROUP BY `Restaurant Name` 
HAVING AVG(`Aggregate Rating`) > 4.28;