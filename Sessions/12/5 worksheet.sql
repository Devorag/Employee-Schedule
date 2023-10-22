--1 show the number of inventions per inventor, sort from highest to lowest
SELECT CountInventions = COUNT(*), i.InventorFirstName, i.InventorLastName, i.YearBorn
from Invention i 
group by i.InventorFirstName, i.InventorLastName, i.YearBorn
order by CountInventions desc
--2 show the number of inventions per inventor having more than 1 invention, sort from highest to lowest
--1 show the number of inventions per inventor, sort from highest to lowest
SELECT CountInventions = COUNT(*), i.InventorFirstName, i.InventorLastName, i.YearBorn
from invention i 
group by i.InventorFirstName, i.InventorLastName, i.YearBorn
having count(*) > 1
order by CountInventions desc
--note from editor: This question is different than initally shown on video, it has been corrected as will be explained on video.
--3 show oldest and most recent invention year per country, sort by min year and then country
select MinYear = MIN(i.YearInvented), MaxYear = MAX(i.YearInvented), i.Country
from Invention i 
group by i.Country
order by MinYear, i.Country
--4 show oldest and most recent invention year per country, but only for countries USA, France, Germany, sort by country and then by year invented
select MinYear = MIN(i.YearInvented), MaxYear = MAX(i.YearInvented), i.Country
from invention i 
where i.country in ('USA', 'France', 'Germany')
group by i.Country
order by MinYear, i.country
--5 show the average age of an inventor at the time of his discovery 
select AvgAge = avg(i.YearInvented - i.YearBorn)
from invention i 
--6 show the average age of an inventor at the time of his discovery per country, sort by average age
select AvgAge = avg(i.YearInvented - i.YearBorn)
from invention i 
group by i.Country
order by AvgAge
--7 show the average age of an inventor at the time of his discovery per country, sort by average age, 
--  but only for those that have an average age less than or equal to 35, sort by age then by country
select AvgAge = avg(i.YearInvented - i.YearBorn)
from invention i 
group by i.Country
having AvgAge = avg(i.YearInvented - i.YearBorn) <= 35
order by AvgAge, i.country

