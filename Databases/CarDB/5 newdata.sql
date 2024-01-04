delete trip 
delete car
delete person 

insert person(lastname)
select 'Smith'
union select 'Jones'
union select 'Franklyn'
union select 'Thomas'


insert car(PersonId, Make, Model, MakeYear, Price, Used)
select p.personId, 'Toyota', 'Camry', 2019, 20000, 0 from person p where p.lastname = 'Smith'
union select p.personId, 'Ford', 'Mustang', 2020, 35000, 0 from person p where p.LastName = 'Smith'
union select p.personId, 'Honda', 'Accord', 2016, 40000, 1  from person p where p.lastname = 'Smith'
union select p.personId, 'Jeep', 'Wrangler', 2016, 40000, 0 from person p where p.lastname = 'Jones'
union SELECT p.personId, 'Honda', 'Odyssey', 2015, 25000, 1 from person p where p.lastname = 'Jones'
union select p.personId, 'Pontiac', 'Lesabre',1980, 100, 1 from person p where p.lastname = 'Franklyn'
union select p.personId, 'Olds Mobile', 'Sedan', 1966, 12345678.91, 1 from person p where p.lastname = 'Franklyn'
union SELECT p.personId, 'Olds Moblie', 'Sedan', 1965, 12345678.91, 1 from person p where p.lastname = 'Smith'

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