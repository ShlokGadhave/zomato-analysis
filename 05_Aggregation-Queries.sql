-- Find the average votes of restaurants.
SELECT avg(votes) as Total_Votes FROM zomato;

-- Find the total votes across all restaurants.
SELECT `Restaurant Name`,sum(votes) as Total_Votes FROM zomato Group By `Restaurant Name`;

-- Find the average cost for each location.
SELECT Address,avg(`Average Cost For Two`) as Average_Cost FROM zomato Group By Address;

-- Find the highest cost restaurant.
SELECT `Restaurant Name`,max(`Average Cost For Two`) as Max_Cost FROM zomato
 Group By `Restaurant Name` 
Order By Max(`Average Cost For Two`) DESC 
Limit 1;

-- Find the lowest cost restaurant.
SELECT `Restaurant Name`,max(`Average Cost For Two`) as Max_Cost FROM zomato
 Group By `Restaurant Name` 
Order By Max(`Average Cost For Two`) ASC
Limit 1;

-- Count restaurants that allow online ordering. 
SELECT count(`Restaurant Name`) AS Total_Restaurant , `Has Online Delivery` FROM zomato 
WHERE `Has Online Delivery`='Yes';

-- Count restaurants that allow table booking.
SELECT count(`Restaurant Name`) as Total_Restaurant,`Has Table Booking` 
FROM zomato 
WHERE `Has Table Booking`='Yes';

-- Count restaurants that do not allow online ordering.
SELECT count(`Restaurant Name`) as Total_Restaurant,`Has Table Booking` 
FROM zomato 
WHERE `Has Table Booking`='No';

-- Find locations having more than 50 restaurants.
SELECT `Restaurant ID`,count(`Restaurant Name`) as Total FROM zomato Group By `Restaurant ID` Having count(`Restaurant Name`)>50;

-- Find cuisines appearing more than 100 times.
SELECT Cuisines,count(*) as Total FROM zomato Group By Cuisines Having count(*)>100;






