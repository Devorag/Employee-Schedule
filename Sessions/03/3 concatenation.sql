--String Concatenation
--1) Show all world record breakers in one column as Full Name, Country like this John Smith, USA
SELECT w.FullName + ' ' + w.country from WorldRecord w 
--2) Show all inventions in this format: InventionName (FirstName LastName)
select i.InventionName + '(' + i.InventorFirstName + ' ' + i.InventorLastName + ')' from Invention i
--3) Show all where world record description contains the record name
select * from WorldRecord w where w.RecordDesc like '%' + w.recordname + '%'
--4) Show all world records that description does not contain Unit Of Measure
SELECT * from WorldRecord w where w.RecordDesc not like '%' + w.unit of measure + '%'