-- SM Excellent! 100% See comments, no need to resubmit.
--For all questions do long-hand delete unless otherwise specified, first do as select and then delete, after each question re-insert the data

--1 Delete all medalist records using shorthand syntax
delete Medalist
--2 Delete all medalist records using longhand syntax
DELETE m from Medalist m
--3 In medalist delete all where age of medalist is less than 18 or over 60, in your select statement show the age
-- SM Tip: Can use "not between"
DELETE m
--SELECT age = m.OlympicYear - m.YearBorn, *
from Medalist m 
where m.OlympicYear - m.YearBorn < 18 or m.OlympicYear - m.yearborn > 60
--4 In medalist delete all medalists with two last names, with or without a hyphen (Smith Jones or Smith-Jones). Only show the first and last name in your select statement. 
-- SM Tip: Can use like with []
DELETE m
--SELECT m.FirstName, m.LastName
from Medalist m 
where m.LastName like '% %' or m.LastName like '%-%'
/*5 
In invention delete all records where it is impossible that this inventor created this invention (based on year born or died). 
In select statement show columns in this order Invention Name, Inventor Last Name, Year Invented, Year Born, Year Died, Age at time of invention
*/
-- SM Tip: Can use "not between"
DELETE i 
--SELECT i.InventionName, i.InventorLastName, i.YearInvented, i.YearBorn, i.YearDied, age= i.YearInvented - i.YearBorn
from Invention i
where i.YearDied < i.YearInvented
or i.YearBorn > i.YearInvented


