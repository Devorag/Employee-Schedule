/*
I sell precious stones, each stone has a type, shape, color, and weight. 
I need to record the price I purchased it at, when I purchased it, when I sold it, and how much it sold for. 
I also need to see how long it took for me to sell it and how much profit\loss I made.
*/

/*
Stone
    StoneType not null not blank
    StoneShape not null not blank
    StoneColor not null not blank
    StoneWeight not null, range between .001 and 5.999
    PurchasePrice not null decimal 10 million 2 pennies, cannot be zero, 
    SoldPrice same data type as PurchasePrice, not null, allow zero
    PurchaseDate not null, cannot be before 1/1/1962
    SoldDate null
    CustomerType not null blank, must be either consumer or dealer
    Multi column constraints
        SoldDate cannot be earlier than PurchaseDate
        SoldPrice and SoldDate both ahve to either have a value or be blank
*/
drop table if exists dbo.stone
go
create table dbo.stone(
    StoneID int not null identity primary key,
    StoneType varchar(20) not null constraint ck_Stone_Stone_type_cannot_be_blank check(StoneType <> ''),
    StoneShape varchar(20) not null constraint ck_Stone_Stone_shape_cannot_Be_blank check(StoneShape <> ''),
    StoneColor varchar(20) not null CONSTRAINT ck_Stone_Stone_Color_cannot_Be_blank check(StoneColor <> ''),
    StoneWeight decimal(4,3) not null CONSTRAINT ck_Stone_weight_must_between_point_001_and_5_point_999 CHECK(StoneWeight between .001 and 5.999),
    PurchasePrice decimal(10,2) not null constraint ck_Stone_purchase_price_must_Be_betwwen_1_penny_and_10_million check(PurchasePrice between .001 and 10000000.00), --not null decimal 10 million 2 pennies, cannot be zero, 
    SoldPrice  decimal(10,2) not null constraint ck_Sold_price_must_be_greater_than_Zero check(soldprice >= 0),  --same data type as PurchasePrice, not null, allow zero
    PurchaseDate date not null constraint ck_stone_purchase_date_cannot_be_before_1_1_1962 check(PurchaseDate >= '1962-1-1'), --cannot be before 1/1/1962
    SoldDate date null,
    CustomerType varchar(8) not null CONSTRAINT ck_stone_customer_type_must_be_either_consumer_or_dealer CHECK(CustomerType in ('', 'consumer', 'dealer')),--blank, must be either consumer or dealer
    ProfitLossAmount as case when soldprice = 0 then 0 else soldprice - PurchasePrice end persisted,
    CONSTRAINT ck_ctone_sold_Date_Cannot_be_before_purchase_Date CHECK(SoldDate >= PurchaseDate),
    CONSTRAINT ck_stone_sold_date_and_sold_price_and_customer_type_must_be_either_all_blank_or_all_have_value 
        check((soldPrice = 0 and SoldDate is null and CustomerType = '') or (soldprice > 0 and SoldDate is not null and CustomerType > ''))

)
go 
insert Stone(StoneType, StoneShape,StoneColor,StoneWeight,PurchasePrice,SoldPrice,PurchaseDate,SoldDate,CustomerType)
select 'Diamond', 'princess', 'white', .0443, 1000, 2500 , '03/29/2012', '05/02/2013', 'consumer'
union select 'Ruby', 'oval', 'red', 2.1, 6000, 5700, '09/08/2018', '01/02/2019', 'dealer'
union select 'Emerald', 'round', 'green', .98, 1500, 5300, '12/21/2011', '12/05/2012', 'dealer'
union select 'Sapphire', 'trillion', 'pink', 1.63, 3500, 7650, '03/19/2019', '05/07/2020', 'dealer'
union select 'Diamond', 'pear', 'blue', 1.006, 1900, 1700, '04/24/2016', '06/15/2017', 'consumer'
union select 'Emerald', 'oval', 'purple', 2.009, 3700, 6000, '02/09/2013', '12/08/2013', 'dealer'
union select 'Ruby', 'oval', 'green', 2.07, 6700, 0, '09/08/2021', null, ''
union select 'Emerald', 'princess', 'red', .98, 1500, 0, '02/21/2021', null, ''
union select 'Diamond', 'round', 'white', .0443, 2500, 0, '01/25/2020', null, ''
union select 'Sapphire', 'trillion', 'pink', 1.08, 3500,0, '03/29/2020', null, ''
union select 'Emerald', 'pear', 'blue', 1.006, 2600,0, '06/04/2020', null, ''
 

go
select * 
from Stone s
order by s.soldprice desc


--Now that I'll have my data organized, I'll need the following reports:
--1) I need to know the number of stones sold to consumers vs to other dealers.
select Num = count(*), s.CustomerType
from stone s 
where s.SoldPrice > 0
group by s.CustomerType 
order by Num desc
--2) Show me the min, max, average days stones sat in inventory, per stone type?
SELECt 
    MinInInventory = min(DATEDIFF(day,s.PurchaseDate, ISNULL(s.SoldDate,GETDATE()))),
    MaxInInventory = max(DATEDIFF(day,s.PurchaseDate, ISNULL(s.SoldDate,GETDATE()))),
    AvgInInventory = avg(DATEDIFF(day,s.PurchaseDate, ISNULL(s.SoldDate,GETDATE())))
from stone s 
group by s.StoneType
order by MinInInventory
--3) Show me the profit\loss per stone, and also per stone type and shape
SELECT s.StoneType, s.StoneShape, profitlossamount = sum(s.ProfitLossAmount)
from stone s 
where s.SoldPrice > 0 
group by s.StoneType, s.StoneShape
ORDER by ProfitLossAmount desc