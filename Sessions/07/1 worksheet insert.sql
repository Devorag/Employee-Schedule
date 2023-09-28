/*
--WorldRecord
Provide values for all of the columns except the primary key (Id). 
World Record Name and Code must be unique. 
Values have to "fit" into the columns. String (varchar) value cannot exceed max length, data types have to be compatible 
Unless otherwise specified "make up" the data
*/
select * from WorldRecord w order by w.WorldRecordId DESC
--1 using the values clause insert a new world record for "Smallest Computer"
INSERT worldrecord(Category, RecordName, RecordDesc, FullName, Amount, UnitOfMeasure, YearAchieved, Country)
values( 'Technology', ' Smallest Computer', 'This is the worlds smallest computer', 'Peter Smith', 1, 'Inch', 2000, 'USA')
--2 using the values clause insert 3 new records: "Fastest Computer", "Slowest Computer", "Lightest Computer"
INSERT worldrecord(Category, RecordName, RecordDesc, FullName, Amount, UnitOfMeasure, YearAchieved, Country)
values( 'Technology', ' Smallest Computer', 'This is the worlds smallest computer', 'Peter Smith', 1, 'Inch', 2000, 'USA'),
      ( 'Technology', ' Fastest Computer', 'This is the worlds fastest computer', 'Peter Smith', 1, 'Second', 2000, 'USA'),
      ( 'Technology', ' Lightest Computer', 'This is the worlds lightest computer', 'Peter Smith', 1, 'pound', 2000, 'USA')
--3 delete the 3 new records from number 2, and re-insert it using a union select statement
DELETE WorldRecord 
where RecordName in ('Fastest Computer' , 'Smallest Comoputer' , 'Lightest Computer')

INSERT worldrecord(Category, RecordName, RecordDesc, FullName, Amount, UnitOfMeasure, YearAchieved, Country)
select 'Technology', ' Slowest Computer', 'This is the worlds slowest computer', 'Peter Smith', 1, 'minute', 2000, 'USA'
union SELECT  'Technology', ' Fastest Computer', 'This is the worlds fastest computer', 'Peter Smith', 1, 'Second', 2000, 'USA'
union SELECT  'Technology', ' Lightest Computer', 'This is the worlds lightest computer', 'Peter Smith', 1, 'pound', 2000, 'USA'
--4 all French inventors are being awarded a world record, use literal values for any column that does not have a match in the Invention table
INSERT worldrecord(Category, RecordName, RecordDesc, FullName, Amount, UnitOfMeasure, YearAchieved, Country)
SELECT 'Misc', i.InventionName, i.InventionDesc, i.InventorLastName, 100, 'Quantum' , i.YearDied - 1, i.Country
from Invention i 
where i.Country = 'France'
/*5 
All world records that are measured in Metres were broken by the very same people 1 year later, they did the same stunt twice as large/high. 
Insert new world records for them. Prefix the record name with the word "Super"
*/
INSERT worldrecord(Category, RecordName, RecordDesc, FullName, Amount, UnitOfMeasure, YearAchieved, Country)
SELECT w.Category, 'Super '+ w.RecordName, w.RecordDesc, w.FullName, w.Amount * 2, w.UnitOfMeasure, w.YearAchieved + 1, w.Country
from WorldRecord w 
where w.UnitOfMeasure = 'Metres'

--common errors
--5 do not provide enough values for the insert statement

--6 do not provide enough columns for the insert statement

--7 attempt to insert the primary key

--8 insert a value that is too long for one of the columns

--9 insert a value of the wrong data type (eg varchar/string into an int/number)

--10 insert using union select, but forget to use the word union so that the select produces two result sets

