-- Invention

/* 1. We now need to store the Inventor's phone number, but it is not required due to the fact that 
      many inventors lived before phones were invented, this cannot be a required column.
      Add the column. do not allow null and default to blank.
      This column must allow dashes as well as numbers, so it cannot be an int column.
*/
alter table invention drop CONSTRAINT if EXISTS d_invention_InventorPhoneNumber 
alter table invention drop column if EXISTS InventorPhoneNumber 
go
ALTER table invention add InventorPhoneNumber varchar(12) not null constraint d_invention_InventorPhoneNumber DEFAULT ''
-- 2. Add a new column called Patented. Do not allow null, and should default to zero.
alter table invention drop CONSTRAINT if exists d_Invention_Patented 
alter table invention drop column if exists Patented 
go
alter table invention add Patented bit not null CONSTRAINT d_Invention_Patented DEFAULT 0 

-- 3. Test the new default values by inserting a new record without specifying the new columns

insert Invention(InventionName, InventionDesc, yearinvented, inventorfirstname, InventorLastName, Country, yearborn, YearDied) 
select 'Whooper', 'Speees', 1987, 'John', 'Mather', 'USA', 1924, 2018

select * 
from Invention i 
order by YearDied desc