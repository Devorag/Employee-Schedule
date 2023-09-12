use RecordKeeperDB
GO
--World Record
--1 show all for Category animals
select * from WorldRecord w where w.Category = 'animals'

--2 show all except for Category animals
select * from WorldRecord w where w.Category <> 'animals'
--3 show all for Category that is begins with letter S or higher
select * from WorldRecord w where w.Category >= 'S'
--4 show all for Category that is begins with letter earlier than S
select * from WorldRecord w where w.Category < 's'
--Note questions 5 and 6 assume there are no categories with only one letter
--5 show all that start with a letters from A to D
SELECT * from WorldRecord w where w.Category BETWEEN 'a' and 'e'
--6 show all except those that start with letters from B to S
SELECT * from WorldRecord w where w.Category not BETWEEN 'b' and 't'
--7 show all for categories Size and Speed
select * from WorldRecord w where w.Category in ('size', 'speed')
--8 show all except for categories Size and Speed
SELECT * from WorldRecord w where w.Category not in ('size','speed')

