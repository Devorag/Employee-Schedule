use CarDB
go 
DELETE AutoClass
delete trip 
delete car
delete person 
go 

insert autoclass(AutoClassName)
select 'Minicompact'
union select 'Subcompact'
union select 'Compact'
union select 'Mid-size'
union select 'Large'
union select 'Two-seater'
union select 'Minivan'
union select 'Small SUV'
union select 'Standard SUV'


insert person(lastname)
select 'Smith'
union select 'Jones'
union select 'Franklyn'


insert car(PersonId, AutoClassId, Make, Model, MakeYear, Price, Used)
select p.personId, (select a.autoclassId from AutoClass a where a.AutoClassName = 'Subcompact'), 'Toyota', 'Camry', 2019, 20000, 0 from person p where p.lastname = 'Smith'
union select p.personId, (select a.AutoClassId from AutoClass a where a.AutoClassName = 'Compact'), 'Ford', 'Mustang', 2020, 35000, 0 from person p where p.LastName = 'Smith'
union select p.personId, (select a.AutoClassId from AutoClass a where a.AutoClassName = 'Mid-size'), 'Honda', 'Accord', 2016, 40000, 1  from person p where p.lastname = 'Smith'
union select p.personId, (select a.AutoClassId from AutoClass a where a.AutoClassName = 'Large'), 'Jeep', 'Wrangler', 2016, 40000, 0 from person p where p.lastname = 'Jones'
union SELECT p.personId,  (select a.AutoClassId from AutoClass a where a.AutoClassName = 'Two-sweater'), 'Honda', 'Odyssey', 2015, 25000, 1 from person p where p.lastname = 'Jones'
union select p.personId, (select a.AutoClassId from AutoClass a where a.AutoClassName = 'Minivan'), 'Pontiac', 'Lesabre',1980, 100, 1 from person p where p.lastname = 'Franklyn'
union select p.personId, (select a.AutoClassId from AutoClass a where a.AutoClassName = 'MInicompact'), 'Olds Mobile', 'Sedan', 1966, 12345678.91, 1 from person p where p.lastname = 'Franklyn'
union SELECT p.personId, (select a.AutoClassId from AutoClass a where a.AutoClassName = 'Standard SUV'), 'Olds Moblie', 'Sedan', 1965, 12345678.91, 1 from person p where p.lastname = 'Smith'

insert trip(CarId, Destination, StartDate, EndDate, MilesTraveled)
select
    case 
    when s.statecode like 'A%' then (select c.CarId from car c where c.Make = 'Honda' and c.makeyear = 2016)
    when s.statecode like 'N%' then (select c.CarId from car c where c.Make = 'Jeep' and c.makeyear = 2016)
    else (select c.CarId from car c where c.make = 'Pontiac' and c.MakeYear = 1980)
    end,
    s.statename, 
    case when s.StateCode like 'A%' then '01/01/1970' when s.statecode like 'N%' then '03/01/1970' else '06/01/1970' end,
    case when s.StateCode like 'A%' then '01/02/1970' when s.statecode like 'N%' then '03/01/1972' else '06/01/1973' end,
    case when s.StateCode like 'C%' then 100 when s.statecode like 'W%' then 200 else 300 end
from RecordKeeperDB.dbo.states s 