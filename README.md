# Airlytic 

## Dataset Descriptions

### Sample_flights.csv

- **Overview**: This dataset contains detailed flight information for various flights, including departure and arrival times, delays, distances, and other relevant attributes.
- **Key Columns**:
  - `YEAR`, `MONTH`, `DAY`, `DAY_OF_WEEK`: Date and day information.
  - `AIRLINE`, `FLIGHT_NUMBER`, `TAIL_NUMBER`: Airline and flight identification details.
  - `ORIGIN_AIRPORT`, `DESTINATION_AIRPORT`: Origin and destination airports.
  - `DEPARTURE_TIME`, `ARRIVAL_TIME`: Actual departure and arrival times.
  - `DEPARTURE_DELAY`, `ARRIVAL_DELAY`: Delays in departure and arrival.
  - `DISTANCE`: Distance between origin and destination.
  - `CANCELLED`, `DIVERTED`: Cancellation and diversion statuses.
  - `AIR_SYSTEM_DELAY`, `SECURITY_DELAY`, `AIRLINE_DELAY`, `LATE_AIRCRAFT_DELAY`, `WEATHER_DELAY`: Breakdown of delay reasons.

### airlines.csv

- **Overview**: This dataset provides a mapping of airline codes to their respective airline names.
- **Key Columns**:
  - `IATA_CODE`: Airline code.
  - `AIRLINE`: Full airline name.

### airports.csv

- **Overview**: This dataset contains information about various airports, including their locations and codes.
- **Key Columns**:
  - `IATA_CODE`: Airport code.
  - `AIRPORT`: Full airport name.
  - `CITY`, `STATE`, `COUNTRY`: Location information.
  - `LATITUDE`, `LONGITUDE`: Geographical coordinates.

## Project Overview

In this project, I performed an advanced SQL analysis on the airline data to derive insights that can help in improving business operations, customer satisfaction, and overall efficiency. Below are the 20 questions I focused on during the analysis, along with a brief explanation of their relevance to business improvements.

1. **List All Airlines**
   - *Importance*: Provides a comprehensive view of all the airlines involved in the dataset.

2. **Count the Number of Airports in Each Country**
   - *Importance*: Helps in understanding the geographical spread and infrastructure availability in different countries.

3. **Find Flights with a Duration Longer than 5 Hours**
   - *Importance*: Identifies long-haul flights which might require more resources and better planning.

4. **Find the Top 10 Longest Flights by Duration**
   - *Importance*: Highlights the most time-intensive routes that could impact scheduling and crew management.

5. **What is the IATA_CODE for the airline that had the greatest number of flights in 2015?**
   - *Importance*: Identifies the busiest airline, which could be a key player in the industry.

6. **What is the name of the airline that had the greatest number of flights in 2015?**
   - *Importance*: Similar to question 5, but focuses on identifying the airline by name.

7. **On which day of the week were there the greatest number of flights?**
   - *Importance*: Helps in understanding peak days, which is essential for resource allocation.

8. **On which day of the week was there the least number of flights?**
   - *Importance*: Identifies off-peak days which can be targeted for maintenance or other operations.

9. **On which day of the year 2015 did Delta Airlines have the greatest number of flights?**
   - *Importance*: Provides insights specific to Delta Airlines, useful for targeted analysis or partnerships.

10. **What is the name of the airline that had the least number of flights during 2015?**
    - *Importance*: Helps identify smaller players in the industry, which might have different operational strategies.

11. **Which airline had the greatest average "departure delay" times?**
    - *Importance*: Identifies airlines with potential operational inefficiencies.

12. **Which ten airports were the most frequent destination airports?**
    - *Importance*: Helps in understanding popular destinations, useful for marketing and operational planning.

13. **Which ten airports were the most frequent originating flights?**
    - *Importance*: Identifies major hubs which are crucial for understanding traffic flow.

14. **Which airline had the greatest percentage of "departure delay" flights?**
    - *Importance*: Highlights airlines with the most delays, useful for addressing customer satisfaction issues.

15. **Find All Airports in the State of California**
    - *Importance*: A region-specific query that can be useful for localized analysis or planning.

16. **List All Flights with a Distance Greater Than 1000 Miles**
    - *Importance*: Identifies long-distance flights that may require special considerations in terms of fuel, crew, and scheduling.

17. **Top 5 Airlines with Most Flights**
    - *Importance*: Focuses on the major players in the industry, key for understanding market share.

18. **Total Number of Flights from Each Airport**
    - *Importance*: Provides insights into the activity level of different airports, essential for capacity planning.

19. **Average Flight Duration for Each Airline**
    - *Importance*: Helps in understanding the operational focus of different airlines, such as short-haul vs. long-haul operations.

20. **Top 5 Longest Flights by Distance**
    - *Importance*: Identifies routes that are logistically challenging, crucial for planning and resource allocation.

## How to Use This Repository

1. **Datasets**: The repository includes the datasets used for analysis.
2. **SQL Queries**: SQL scripts for each of the 20 questions are provided.
3. **Results**: A summary of insights derived from the analysis.
