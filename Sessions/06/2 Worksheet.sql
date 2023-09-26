--ensure that all columns have column names
--1 produce 3 new inventions from literal values, show in one result set
select InventionId = 1189, InventionName = 'snowbrush', InventionDesc = 'wipes off snow from shoes', YearInvented = 2022, InventorFirstName = 'Devora', InventorLastName = 'Goldfisher', Country = 'USA', YearBorn = 2004, YearDied = 0, code = '155CPD'
union select InventionId = 1190, InventionName = 'hairremovalcream', InventionDesc = 'removes hair upon application', YearInvented = 2022, InventorFirstName = 'Devora', InventorLastName = 'Goldfisher', Country = 'USA', YearBorn = 2004, YearDied = 0, code = '155CPD'
union select InventionId = 1191, InventionName = 'selfcleanbathroom', InventionDesc = 'automatically cleans itself after being used', YearInvented = 2022, InventorFirstName = 'Devora', InventorLastName = 'Goldfisher', Country = 'USA', YearBorn = 2004, YearDied = 0, code = '155CPD'
from invention i
--2 put two new inventions on top of a list of inventions, fill in only the invention name and leave the other columns blank or 0
SELECT InventionId = 0, InventionName = 'spinwheel', InventionDesc = '', YearInvented = 0, InventorFirstName = '', InventorLastName = '', Country = '', YearBorn = 0, YearDied = 0, Code = ''
union SELECT InventionId = 0, InventionName = 'mousecontrol', InventionDesc = '', YearInvented = 0, InventorFirstName = '', InventorLastName = '', Country = '', YearBorn = 0, YearDied = 0, Code = ''
union SELECT i.InventionId, i.InventionName, i.InventionDesc, i.YearInvented, i.InventorFirstName, i.InventorLastName, i.Country, i.YearBorn, i.YearDied, i.Code
from Invention i 
--3 put two new rows on the of a list of inventions, the new rows should have the same invention name and all other columns blank
SELECT InventionId = 0, InventionName = 'spinwheel', InventionDesc = '', YearInvented = 0, InventorFirstName = '', InventorLastName = '', Country = '', YearBorn = 0, YearDied = 0, Code = ''
union all SELECT InventionId = 0, InventionName = 'spinwheel', InventionDesc = '', YearInvented = 0, InventorFirstName = '', InventorLastName = '', Country = '', YearBorn = 0, YearDied = 0, Code = ''
union all SELECT i.InventionId, i.InventionName, i.InventionDesc, i.YearInvented, i.InventorFirstName, i.InventorLastName, i.Country, i.YearBorn, i.YearDied, i.Code
from Invention i 
/*4 
	show list of inventions, each invention on 3 rows
	1st row = Invention Name, 2nd row = Inventor First and Last Name, 3rd row = Country
	each row should also have the invention code (note from editor: codes have been updated, disregard any differences you see)
	for each row add column that states which column it is
	Keep 1,2,3 together for each Invention
*/
SELECT recordtype = 'Invention Name', i.InventionName, i.code from Invention i 
union SELECT 2, i.InventorFirstName + '' +  i.InventorLastName, i.code from Invention i 
union SELECT 3, i.Country, i.code from Invention i 
ORDER BY I.Code