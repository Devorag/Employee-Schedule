use RecordKeeperDB
go
--Invention
--1 show all 
select * from Invention i
--2 show only columns InventionId, YearInvented, and InventionName sorted by "YearInvented"
select i.InventionId, i.YearInvented, i.InventionName from Invention i order by YearInvented
--3 show all for Year Invented in the 1800s sorted by Year Invented from most recent to oldest
select * from Invention i where i.YearInvented between 1800 and 1899 order by i.YearInvented DESC
--4 show only the columns InventionId, InventionName, InventorLastName sorted by Country and for the Year Invented 1440, 1605,1733, 1804, and 1901
select i.InventionId, i.InventionName, i.InventorLastName from Invention i  where i.YearInvented in (1440,1605,1733,1804,1901) order by i.Country
--5 show all where inventor was born in the 1800s
select * from Invention i where i.YearBorn between 1800 and 1899
--6 show all where inventor died before 2000
select * from Invention i where i.YearDied < 2000
--7 show all inventions after 1789 sorted by Last Name from Z to A
select * from Invention i where i.YearInvented > 1789 order by i.InventorLastName DESC
--8 show all where the inventor was less than 30 years old at time of invention
select * from Invention i  where i.YearInvented - i.YearBorn < 30

