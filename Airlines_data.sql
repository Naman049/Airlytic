-- List All Airlines:-- 

SELECT * FROM new_schema.airlines;


-- Count the Number of Airports in Each Country:-- 


SELECT COUNTRY, COUNT(*) AS Number_of_Airports 
FROM new_schema.airports 
GROUP BY COUNTRY;


-- Find Flights with a Duration Longer than 5 Hours:-- 

SELECT * FROM new_schema.sample_flights 
WHERE AIR_TIME > 300;

-- Find the Top 10 Longest Flights by Duration:-- 

SELECT * FROM new_schema.sample_flights
ORDER BY AIR_TIME DESC 
LIMIT 10;


-- What is the IATA_CODE for the airline that-- 
-- had the greatest number of flights in 2015?-- 


SELECT AIRLINE, COUNT(*) AS Number_of_Flights 
FROM new_schema.sample_flights 
WHERE YEAR = 2015 
GROUP BY AIRLINE 
ORDER BY Number_of_Flights DESC 
LIMIT 1;


-- What is the name of the airline that had -- 
-- the greatest number of flights in 2015?-- 

SELECT AIRLINE 
FROM new_schema.airlines 
WHERE IATA_CODE = (
    SELECT AIRLINE 
    FROM new_schema.sample_flights 
    WHERE YEAR = 2015 
    GROUP BY AIRLINE 
    ORDER BY COUNT(*) DESC 
    LIMIT 1
);


-- On which day of the week were there the-- 
 -- greatest number of flights?-- 
 
 SELECT DAY_OF_WEEK, COUNT(*) AS Number_of_Flights 
FROM new_schema.sample_flights 
GROUP BY DAY_OF_WEEK 
ORDER BY Number_of_Flights DESC 
LIMIT 1;


-- On which day of the week was there the-- 
 --  least number of flights?-- 
 
 SELECT DAY_OF_WEEK, COUNT(*) AS Number_of_Flights 
FROM new_schema.sample_flights 
GROUP BY DAY_OF_WEEK 
ORDER BY Number_of_Flights ASC 
LIMIT 1;



--  On which day of the year 2015 --  
-- did Delta Airlines have the greatest number of flights?--

SELECT MONTH, DAY, COUNT(*) AS Number_of_Flights 
FROM new_schema.sample_flights
WHERE AIRLINE = 'DL' AND YEAR = 2015 
GROUP BY MONTH, DAY 
ORDER BY Number_of_Flights DESC 
LIMIT 1; 



-- What is the name of the airline that had-- 
--  the least number of flights during 2015?-- 


SELECT AIRLINE 
FROM new_schema.airlines
WHERE IATA_CODE = (
    SELECT AIRLINE 
    FROM new_schema.sample_flights
    WHERE YEAR = 2015 
    GROUP BY AIRLINE 
    ORDER BY COUNT(*) ASC 
    LIMIT 1
);



-- Which airline had the greatest-- 
 -- average "departure delay" times?-- 
 
SELECT AIRLINE, AVG(DEPARTURE_DELAY) AS Avg_Departure_Delay 
FROM new_schema.sample_flights
GROUP BY AIRLINE 
ORDER BY Avg_Departure_Delay DESC 
LIMIT 1;


-- Which ten airports were the-- 
--  most frequent destination airport?-- 

SELECT DESTINATION_AIRPORT, COUNT(*) AS Number_of_Arrivals 
FROM new_schema.sample_flights
GROUP BY DESTINATION_AIRPORT 
ORDER BY Number_of_Arrivals DESC 
LIMIT 10;



-- Which ten airports were the-- 
 -- most frequent originating airports?-- 
 
 
SELECT ORIGIN_AIRPORT, COUNT(*) AS Number_of_Departures 
FROM new_schema.sample_flights
GROUP BY ORIGIN_AIRPORT 
ORDER BY Number_of_Departures DESC 
LIMIT 10;


-- Which airline had the -- 
-- greatest percentage of "departure delay" flights?-- 


SELECT AIRLINE, 
COUNT(*) * 100.0 / (SELECT COUNT(*) FROM new_schema.sample_flights ) as Delay_Percentage
FROM new_schema.sample_flights
WHERE DEPARTURE_DELAY > 0 
GROUP BY AIRLINE 
ORDER BY Delay_Percentage DESC 
LIMIT 1;


-- Find All Airports in the State of California:--

SELECT * FROM new_schema.airports
WHERE STATE = 'CA';


-- List All Flights with a Distance Greater Than 1000 Miles:--

SELECT * FROM new_schema.sample_flights
WHERE DISTANCE > 1000;


-- Top 5 Airlines with Most Flights:--

SELECT AIRLINE, COUNT(*) AS Number_of_Flights 
FROM new_schema.sample_flights
GROUP BY AIRLINE 
ORDER BY Number_of_Flights DESC 
LIMIT 5;


-- Total Number of Flights from Each Airport:--

SELECT ORIGIN_AIRPORT, COUNT(*) AS Number_of_Departures 
FROM new_schema.sample_flights
GROUP BY ORIGIN_AIRPORT;


-- Average Flight Duration for Each Airline:--

SELECT AIRLINE, AVG(AIR_TIME) AS Avg_Flight_Duration 
FROM new_schema.sample_flights
GROUP BY AIRLINE;


-- Top 5 Longest Flights by Distance: -- 

SELECT * FROM new_schema.sample_flights
ORDER BY DISTANCE DESC 
LIMIT 5;

