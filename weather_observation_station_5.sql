-- Query the two cities in STATION with the shortest and longest CITY names, 
--
-- as well as their respective lengths (i.e.: number of characters in the name).
--
-- If there is more than one smallest or largest city,
--
-- choose the one that comes first when ordered alphabetically.

select city,length_city from (select a.*, rownum r from (select length(city) length_city,city from station order by length_city, city) a) where r in (1,(select count(*) from station));
