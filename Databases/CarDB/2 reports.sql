select
    (select c.CarId from car c where c.Make = 'Honda' and c.makeyear = 2016) , 
     s.statename, 
    case when s.StateCode like 'A%' then '01/01/1970' when s.statecode like 'N%' then '03/01/1970' else '06/01/1970' end,
    case when s.StateCode like 'A%' then '01/01/1971' when s.statecode like 'N%' then '03/01/1972' else '06/01/1973' end,
    case when s.StateCode like 'C%' then 100 when s.statecode like 'W%' then 200 else 300 end
from RecordKeeperDB.dbo.states s 