/*
--Invention
Provide values for all the columns except primary key. 
Beware of inserting into some columns: InventionName must be unique, proper data types and varchar lengths. 
Omit code from the insert because it is a computed column
Unless otherwise specified "make up" the data
*/
select * from Invention i

--1 using the values clause insert a new invention "Artificial Goldfish"
insert Invention(InventionName, InventionDesc, yearinvented, inventorfirstname, InventorLastName, Country, yearborn, YearDied) 
VALUES( 'Artificial Goldfish', 'fake fish', 2023, 'Devora', 'Goldenberg', 'USA', 2004, 0) 
 
--2 using the values clause insert 2 new inventions "Inflatable Computer", "Inflatable Electric Car"
insert Invention(InventionName, InventionDesc, yearinvented, inventorfirstname, InventorLastName, Country, yearborn, YearDied) 
VALUES
    ( 'Inflatable Computer' , 'computer that inflates', 2023, 'Jake', 'Snyder', 'USA', 1943, 2020),
    ( 'Inflatable Electric Car' , 'car that inflates', 2023, 'Pearl', 'Roster', 'Canada', 1943, 2020)
--3 delete the two records from number 2 and re-insert them with a select statement
delete Invention i where i.InventionName in ('Inflatable Computer', 'Inflatable Electric Car')

insert Invention(InventionName, InventionDesc, yearinvented, inventorfirstname, InventorLastName, Country, yearborn, YearDied) 
select 'Inflatable Computer' , 'computer that inflates', 2023, 'Jake', 'Snyder', 'USA', 1943, 2020
union SELECT  'Inflatable Electric Car' , 'car that inflates', 2023, 'Pearl', 'Roster', 'Canada', 1943, 2020
/*4
    World record holders in the Technology category are now being called inventors, insert invention records for them. 
    Use literal values for any column that does not have a match in world record table
*/
insert Invention(InventionName, InventionDesc, yearinvented, inventorfirstname, InventorLastName, Country, yearborn, YearDied) 
select w.RecordName, w.RecordDesc, w.YearAchieved, w.FullName, w.FullName, w.Country, w.YearAchieved - 20, w.YearAchieved + 50 
from WorldRecord w 
where w.Category = 'Technology'
--Note: This question was slightly changed from what is shown on the video. 
--5 All the inventors invented an edible form of their invention 10 years later. Prefix the name with "Edible", leave the description as is.
insert Invention(InventionName, InventionDesc, yearinvented, inventorfirstname, InventorLastName, Country, yearborn, YearDied)
select 'Edible' + i.InventionName, i.InventionDesc, i.YearInvented + 10, i.InventorFirstName, i.InventorLastName, i.Country, i.YearBorn, i.YearDied
from Invention i  