--this code is shown in middle of worksheet 1, it is provided here for your convenience
select 
      (
          select c.CarId 
          from Car c 
          where 
          (c.Make = 'Honda' and c.MakeYear = 2016 and s.StateCode like 'A%')
          or (c.Make = 'Jeep' and c.MakeYear = 2016 and s.StateCode like 'N%')
          or (c.Make = 'Pontiac' and c.MakeYear = 1980 and s.StateCode not like 'A%' and s.StateCode not like 'N%')
      ), 
      s.StateName,
      case when s.StateCode like 'A%' then '01/01/1970' when s.StateCode like 'N%' then '03/01/1970' else '06/01/1970' end,
      case when s.StateCode like 'A%' then '01/02/1970' when s.StateCode like 'N%' then '03/01/1972' else '06/01/1973' end,
      case when s.StateCode like 'C%' then 100 when s.StateCode like 'W%' then 200 else 300 end
from RecordKeeperDB.dbo.states s
