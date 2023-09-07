use RecordKeeperDB
go
--Medalist
--1 show all 
select * from Medalist m
--2 show all but only columns Olympic Year, Country and Medal
select m.OlympicYear, m.Country, m.Medal FROM Medalist m 
--3 show all that won their medal in the 1800s
SELECT * from Medalist m where m.OlympicYear BETWEEN 1800 and 1899
--4 show all that were over 50 years old when they won their medal sorted by Year Born (high to low)
select * from Medalist m 
where m.OlympicYear - m.YearBorn > 50 
order by m.YearBorn DESC
--5 show all for the Olymmpic Years 1896, 1998, 2008 sorted by Olympic Year (high to low), Last Name (low to high)
select * from Medalist m
where m.OlympicYear in (1896,1998,2008) 
order by m.OlympicYear DESC, m.LastName 
--6 show all sorted (all low to high) by Country, Olympic Year, and then by Year Born, that were born in the 1800s. In the resultset only include the Last Name and the columns that are in the sort.
select m.LastName, m.Country, m.OlympicYear, m.YearBorn from Medalist m 
where m.YearBorn BETWEEN 1800 and 1899 
order by m.Country, m.OlympicYear, m.YearBorn
--7 show all that were in their 30s when they won their medal sorted by Year Born from highest to lowest
select * from Medalist m 
where m.OlympicYear - m.YearBorn BETWEEN 30 and 39 
order by m.YearBorn DESC
--8 show all that won their medals when they were either 20,30,40, or 50 years old
select * from Medalist m where m.OlympicYear - m.YearBorn in (20,30,40,50)
--invention
--9 show all inventions that as of the current year are over 300 years old
select * from Invention i where i.YearInvented < 1723
--10 show all inventions that the inventor died before they reached 50 years old
select * from Invention i where i.YearDied - i.YearBorn < 50