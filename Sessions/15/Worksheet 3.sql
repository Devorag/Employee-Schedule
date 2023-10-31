-- 1. Use the Car Database
use CarDB
go
-- 2. Drop the Car table 
drop table if exists Car
go 
/* 3. Create a table called Car using the CarDB database.
   Include five columns: the Make, Model, Year and Price of the car. Also, include if the car is used or not.
*/
create table dbo.car(
      make VARCHAR(25),
      model VARCHAR(25),
      MakeYear int, 
      price decimal(10,2),
      used bit 
)
go    

insert car(make, model, MakeYear, price, used)
select  'Toyota', 'Camry', 2019, 20000, 0
union select 'Ford', 'Mustang', 2020, 35000, 0
union select 'Honda', 'Accord', 2016, 13000, 1
union select 'Jeep', 'Wrangler', 2021, 40000, 0
union select 'Honda', 'Odyssey', 2015, 25000, 1
union select 'Pontiac', 'LeSabre',2015, 25000, 1

/* 4. Populate the table with the following sample data:

      Toyota, Camry, 2019, $20000, new
      Ford, Mustang, 2020, $35000, new
      Honda, Accord, 2016, $13000, used
      Jeep, Wrangler, 2021, $40000, new
      Honda, Odyssey, 2015, $25000, used

      Add three more of your own examples.
*/

-- 5. Show a list of all the cars
select * from car c 
-- 6. Show a list of cars ordered by year and then by model alphabetically.
SELECT * from car c 
order by c.makeyear, c.model
-- 7. Show the count for each make of the cars. Display the count and the make. Order by highest to lowest.
SELECT Num = count(*), c.make from car c
group by c.make
 order by num
-- 8. Show the average year and price of the cars.
SELECT AVG(c.MakeYear), AVG(c.price) 
from car c
 
/* 9. The car market just went up and all luxury cars now cost an additional $5,000.
      Update the price of three cars that cost over $30,000.
*/
update c 
set price =  c.price + 5000
--SELECT c.price + 5000  
from car c 
where c.price > 30000
