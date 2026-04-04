-- Display restaurants sorted by rating in descending order.
SELECT `Restaurant Name`,`Aggregate rating` FROM zomato 
Order By `Aggregate Rating` DESC;

-- Display restaurants sorted by votes in descending order. 
SELECT `Restaurant Name`,Votes FROM zomato 
Order By Votes DESC;

-- Find the top 5 most expensive restaurants.
SELECT `Restaurant Name`,`Price Range` FROM zomato 
Order By `Price Range` DESC Limit 5; 

-- Find restaurants with rating between 3.5 and 4.5. 
SELECT `Restaurant Name`,`Aggregate rating` FROM zomato WHERE `Aggregate Rating` Between 3.5 and 4.5;

-- Find restaurants where cost is greater than 1000.
SELECT `Restaurant Name`,`Average Cost For Two` FROM zomato HAVING `Average Cost For Two`>1000;

-- Find restaurants that serve North Indian cuisine.
SELECT `Restaurant Name`,Cuisines FROM zomato WHERE Cuisines='North Indian';

-- Find restaurants with rating less than 3.
SELECT `Restaurant Name`,`Aggregate Rating` FROM zomato Having `Aggregate Rating`<3;

-- Find restaurants with votes between 500 and 1000.
SELECT `Restaurant Name`,Votes FROM zomato WHERE Votes Between 500 and 1000;

-- Find restaurants whose name starts with “Cafe”.
SELECT `Restaurant Name`,Cuisines FROM zomato WHERE Cuisines='Cafe';

-- Find restaurants whose name ends with “Bar”.
SELECT `Restaurant Name`,Cuisines FROM zomato WHERE Cuisines='Bar';