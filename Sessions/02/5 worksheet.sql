--WorldRecord
--1 show all for USA that where acheived in the first two decades of the 21st century
select * from WorldRecord w
 where w.Country = 'USA' 
 and w.yearachieved 
 BETWEEN 2000 and 2029
--2 show all that category starts with a letters from A to D
SELECT * from WorldRecord w where w.Category >= 'A' and w.Category < 'E'
--3 show all that country is United Kingdom or country contains j
select * from WorldRecord w where w.Country = 'United Kingdom' or w.Country like '%j%'
/*4
show all for USA or United Kindom that category is either Technology or Transportation, sort it by category then by country, 
show the columns Category, Country, Record Name, Amount, and Unit of Measure
*/
SELECT w.Category, w.country, w.recordname, w.amount, w.unitofmeasure from WorldRecord w where w.Country in ('USA', 'United Kingdom') and w.Category in ('technology' , 'transportation') order by w.Category, w.Country