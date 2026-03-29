-- Display all restaurants in the dataset.
SELECT `Restaurant Name` FROM zomato;

-- Show only restaurant names and locations.
SELECT `Restaurant Name`,Address FROM zomato;

-- Count total restaurants in the dataset.
SELECT count(`Restaurant Name`) as `Total Restaurant` FROM zomato;

-- Find the number of unique locations.
SELECT Distinct count(Address) as `Total Address` FROM zomato;

-- Display restaurants that allow online ordering.
SELECT `Restaurant Name`FROM zomato WHERE `Has Online delivery`='Yes';

-- Display restaurants that allow table booking.
SELECT `Restaurant Name`,`Has Table Booking` FROM zomato WHERE `Has Table Booking`='YES';

-- Show restaurants with rating greater than 4.
SELECT * FROM zomato WHERE `Aggregate Rating`>4;

-- Find restaurants where cost for two people is less than 500.
SELECT*FROM zomato WHERE `Average Cost for two`<500;

-- Show restaurants that serve Chinese cuisine.
SELECT `Restaurant Name` FROM zomato WHERE cuisines='Chinese';


