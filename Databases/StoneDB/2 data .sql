use stoneDB
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
order by s.soldprice desc\

