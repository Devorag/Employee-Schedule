/*
    You buy toys wholesale from China and sell to local toy stores. 
    You are trying to organize your inventory, and create a system to track how much you are spending and earning.
*/

-- 1. Create a database called ToyDB
use master 
GO
drop database if exists ToyDB
go
create database ToyDB
/* 2. Create a table called Toy to store the data. 
      This is the information that needs to be recorded: 
		name of the toy, item number, the purchase price per unit, date purchased, quantity purchased, sold (true or false), price per unit sold, date sold.
	  Note that in this business the entire stock of each toy is sold together, so we do not need to record the quantity sold.
	  Note that the maximum price for a toy purchased and sold is $9999.99

*/
use ToyDB
go
drop table if exists Toy 
go 
create table dbo.toy(
      ToyID int not null IDENTITY primary key, 
      ToyName varchar(50),
      ItemNumber varchar(5),
      PurchasePricePerunit decimal(8,2),
      DatePurchased date,
      QuantityPurchased INT,
      Sold bit,
      PricePerUnitSold decimal(8,2),
      DateSold date
)
go 

insert toy(ToyName, ItemNumber, PurchasePricePerunit, DatePurchased, QuantityPurchased, Sold , PricePerUnitSold, DateSold)
SELECT 'Baby Doll', '12389',12, '01-15-2021',500,1,20, '01-19-2021'
union select 'Monopoly', '25678',15, '02-9-2021' ,1000,1,22, '02-18-2021'
union select 'Fire Truck', '89076' ,5, '01-9-2020' ,250,1,15, '02-8-2021'
union select 'Lego Police Station', '09865' ,20, '10-9-2021' ,400,1,40, '10-12-2021'
union select 'Silly Putty', '87645',00.25, '10-15-2021',1000,1,1,'10-19-2021'
union select 'Playmobil Hospital', '98234',30, '09-8-2019',50,1,50, '10-1-2019' 
union SELECT 'Doll House','23897',18,'09-7-2021',300,0, null, null
union select 'Basketball','36098',5, '02-9-2021', 500,0, null, NULL
union select 'Magnet Tiles', '87634',20, '01-1-2020', 350,1,30, '01-22-2020'
union select 'Banana Grams', '90765',14, '09-13-2019', 200,1,20, '09-15-2019'  

/* 3. Populate the table with sample data. 
      Add the following toys and then add two more of your own:
      Baby Doll, item number - 12389, bought 500 for $12 each on Jan 15 2021, sold for $20 each on Feb 19 2021
      Monopoly, item number - 25678, bought 1000 for $15 each on Feb 9 2021, sold on April 18 2021 for $22 each 
      Fire Truck, item number - 89076, bought 250 for $5 each on Jan 9 2020, sold on Feb 8 2021 for $15 each 
      Lego Police Station, item number - 09865, bought 400 for $20 each on October 9 2021, sold for $40 each on Oct 12 2021
      Silly Putty, item number - 87645, bought 1000 for $0.25 each on Oct 15 2021, sold for $1 on Oct 19 2021
      Playmobil Hospital, item number - 98234, bought 50 for $30 each on Sept 8 2019, sold on Oct 1 2019 for $50 each 
      Doll House, item number - 23897, bought 300 for $18 each on Sept 7 2021, not sold yet
      Basketball, item number - 36098, bought 500 for $5 each on Feb 9 2021, not sold yet   
*/


-- 4. Show a list of toys sorted by quantity purchased, exclude toys not sold at all
SELECT * 
from toy t 
where t.sold = 1
order by t.QuantityPurchased
-- 5. Show the top 4 toys that were sold for at least five dollars more per unit than they were purchased for. Display the profit as well
select top (4) profit = t.PricePerUnitSold - t.PurchasePricePerunit ,*
from toy t 
where t.PricePerUnitSold - t.PurchasePricePerunit >= 5 
-- 6. Show a new column called SoldOrNot. For any toys that have not sold at all, display the words unsold, otherwise display the price the toy sold for.
SELECT SoldOrNot = 
      case sold 
            WHEN 0 THEN 'unsold'
            else CONVERT(varchar,t.sold)
      END
from toy t 

/* 7. Show how many days each toy sat in the warehouse until it was sold, ordered by fastest selling to slowest selling.
      If it is still in stock show how long it has been gathering dust for.
      Use two SQL statements. 
*/
select DaysinWarehouse = DATEDIFF(day,t.DatePurchased,t.DateSold) , t.DatePurchased, t.DateSold 
from toy t 
where t.Sold = 1
order by DaysInWarehouse 

select DaysInWarehouse = datediff(day,t.DatePurchased,GETDATE())
from toy t 
where t.sold = 0 
order by DaysInWarehouse


/* 8. A new worker recently joined your staff and made two mistakes in logging the inventory:
        1.  Baseballs, not basketballs were bought for $5 each on Feb 9 2021
        2.  There was never any Silly Putty bought or sold by your company.
     Correct the data using two SQL statements.
*/
update t 
set toyname = 'baseballs'
--select * 
from toy t 
where ToyName = 'basketballs'


delete t 
from toy t 
where t.ToyName = 'silly putty'