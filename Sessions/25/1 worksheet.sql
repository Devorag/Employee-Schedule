--All with CTE
--analyze literal values
--1 for each person show the number of records, min, max, and avg
select LastName = 'Smith', Amount = 19
union select LastName = 'Smith', Amount = 10
union select LastName = 'Smith', Amount = 20
union select LastName = 'Jones', Amount = 30
union select LastName = 'Jones', Amount = 40
union select LastName = 'Smith', Amount = 50

--Aggregate based on aggregate
--2. In RecordKeeper What is the average year that countries created their first invention

--insert sample data
--3 In cardb insert the following car info using a CTE, either ensure that you have these Person records or change to match your data
use cardb
go
select Person='Smith', Make='Lego', Model='ABC', MakeYear=2039, Price=200000, Used=0, AutoClass='Mid-size'
union select 'Smith','Segway', 'Rumbler', 2050, 135000, 0, null
union select 'Smith','SpaceX', 'BirdX', 2059, 13000, 1, 'Two-Seater'
union select 'Jones','Google', 'WebSurfer', 2038, 100, 0, 'Small SUV'

--CRUD
--4 in cardb delete anybody with less than 3 cars (ensure that you have some data for that)

--5 for all people with more than 3 cars update the cars to used = 1
