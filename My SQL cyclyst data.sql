-- Select * from clean2023data2

#Assesing the columns of the table
-- DESCRIBE clean2023data2;
-- SHOW COLUMNS FROM clean2023data2;

#Let determine the total number of role in the table
-- SELECT COUNT(*) FROM clean2023data2;


#let retrieve a random sample of 10 rows from the table.
-- SELECT * FROM clean2023data2 ORDER BY RAND() LIMIT 10;

#et calculate basic summary statistics for the "ride_length_minutes" column.
/*SELECT 
     MIN(ride_length_minutes) AS min_duration,
    MAX(ride_length_minutes) AS max_duration,
    AVG(ride_length_minutes) AS avg_duration,
    STDDEV(ride_length_minutes) AS std_deviation
FROM clean2023data2;  */


#Let identify the top 10 most common start station names
/*SELECT start_station_name, COUNT(*) AS station_count
FROM clean2023data2
GROUP BY start_station_name
ORDER BY station_count DESC
LIMIT 10;*/

#Let Count the number of rides by member type (member_casual)
/*SELECT member_casual, COUNT(*) AS ride_count
FROM clean2023data2
GROUP BY member_casual;*/



#Calculate the average ride length for each member
/*SELECT member_casual, AVG(ride_length_minutes) AS avg_ride_length
FROM clean2023data2
GROUP BY member_casual;*/



#let count the number of rides for each day of the week
/*SELECT day_of_week, COUNT(*) AS ride_count
FROM clean2023data2
GROUP BY day_of_week
ORDER BY day_of_week;*/





#Let Identify the most common start-to-end station pairs.
/*SELECT 
    start_station_name, 
    end_station_name, 
    COUNT(*) AS pair_count
FROM clean2023data2
GROUP BY start_station_name, end_station_name
ORDER BY pair_count DESC
LIMIT 10;*/





#Create a histogram of ride durations.
/*SELECT 
    FLOOR(ride_length_minutes / 10) * 10 AS duration_range,
    COUNT(*) AS ride_count
FROM clean2023data2
GROUP BY duration_range
ORDER BY duration_range;*/






#let calculate the average ride length for each day of the week.
/*SELECT 
    day_of_week, 
    AVG(ride_length_minutes) AS avg_ride_length
FROM clean2023data2
GROUP BY day_of_week
ORDER BY day_of_week;*/








#Let find the distinct rideable types available in the dataset.
/*select DISTINCT rideable_type from clean2023data2\*/



#LET calculate the average ride length for each rideable type.
/*SELECT rideable_type, AVG(ride_length_minutes) AS avg_ride_length
FROM clean2023data2
GROUP BY rideable_type;*/



#LET Count the number of rides for each hour of the day when rides started.alter

/*SELECT 
    EXTRACT(HOUR FROM started_at) AS start_hour,
    COUNT(*) AS ride_count
FROM clean2023data2
GROUP BY start_hour
ORDER BY start_hour;*/




#LET calculate the average ride length for each hour of the day when rides started.
/*SELECT 
    EXTRACT(HOUR FROM started_at) AS start_hour,
    AVG(ride_length_minutes) AS avg_ride_length
FROM clean2023data2
GROUP BY start_hour
ORDER BY start_hour;*/




#let count the number of rides for each month.
/*SELECT 
    EXTRACT(MONTH FROM started_at) AS start_month,
    COUNT(*) AS ride_count
FROM clean2023data2
GROUP BY start_month
ORDER BY start_month;*/


#LET remove null value.
/*SELECT *
FROM clean2023data2
WHERE start_station_name IS NOT NULL;*/





#let save the clean data into new table
/*CREATE TABLE CleanCylistdata AS
SELECT *
FROM clean2023data2
WHERE start_station_name IS NOT NULL
and end_station_name IS NOT NULL;*/


#let view the new table that is clean
select * from  cleancylistdata
