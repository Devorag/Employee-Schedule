use RecordKeeperDB
go
--worldrecords
--1 show all 
select * from WorldRecord w
--2 show all but only columns WorldRecordId, RecordName, and FullName
select w.WorldRecordId, w.FullName, w.RecordName from WorldRecord w
--3 show same as above but columns in this order WorldRecordId, FullName, RecordName
select w.WorldRecordId, w.FullName, w.RecordName from WorldRecord w
--4 show all for the Year Achieved 2017
select * from WorldRecord w where w.YearAchieved = 2017
--5 show all that are Year Achieved before 2000
select * from WorldRecord w where w.YearAchieved < 2000
--6 show all that are Year Achieved after 2000
select * from WorldRecord w where w.YearAchieved > 2000
--7 show all that are not for the Year Achieved 2000
select * from WorldRecord w where w.YearAchieved <> 2000
--8 show all that were achieved in the years 2000, 2016, 2018
select * from WorldRecord w where w.YearAchieved in (2000,2016,2018)
--9 show all that are between the years 2000 and 2012
select * from WorldRecord w where w.YearAchieved BETWEEN 2000 and 2012
--10 show all sorted by Year Achieved to earliest to latest
select * from WorldRecord w order by w.YearAchieved
--11 show all with an Amount from 1 to 10 sorted by the Amount (high to low) and then by the Year Achieved (low to high)
select * from WorldRecord w where w.amount BETWEEN 1 and 10 order by Amount DESC, w.YearAchieved