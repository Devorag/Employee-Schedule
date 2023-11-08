/*
Invention
do the work in the table source code files
all computed columns should be persisted
add columns without dropping tables
*/

-- 1. Create a new computed column called AgeAtTimeOfInvention showing how old each inventor was when they invented their invention.
ALTER table invention drop column if EXISTS AgeAtTimeOfInvention

alter table invention add AgeAtTimeOfInvention as yearinvented - yearborn PERSISTED 
 
--SELECT AgeAtTimeOfInvention = i.yearinvented - i.yearborn, i.YearBorn, i.YearInvented
--from Invention i 
-- 2. Create a new computed column called AgeAtDeath showing how old each inventor was when they died.
ALTER table invention drop column if EXISTS AgeAtDeath

alter table invention add AgeAtDeath as yeardied - yearborn persisted

/*  3. The Code column was mistakenly left out of the invention table!!     
       The column is made up of the following information:
            Year Invented
            First Letter of the Inventors First Name
            First Letter of the Inventors Last Name
            First 15 characters of the Invention Name in uppercase 
            All spaces removed from anywhere withing the code
        Add the column back in. Make sure to give the column a unique constraint
Note from Editor: When you run the table with this new column you will get an error since it's a computed column 
                with a "replace" and has a Unique constraint. You can ignore it as it does not affect the insert.
*/
alter table invention drop column if EXISTS inventioncode 

alter table invention add InventionCode as replace(CONCAT(YearInvented,SUBSTRING(InventorFirstName,1,1),substring(InventorLastName,1,1),upper(SUBSTRING(InventionName,1,15)))
,' ','') PERSISTED

--SELECT CONCAT(i.YearInvented,SUBSTRING(i.InventorFirstName,1,1),substring(i.InventorLastName,1,1),upper(SUBSTRING(i.InventionName,1,15)))
--from Invention i 
/*
4 Check out the new columns by selecting all records!
*/
select * 
from Invention i 