delete ExecutiveOrder;

with x as (
	select OrderNumber= 13765, PageNum = 7619, OrderName = ' abc', UpheldByCourt  = 0, n = 1
	union 
	select OrderNumber= 13766, PageNum = 7620, OrderName = ' cdef', UpheldByCourt  = 0, n = 2
	union 
	select OrderNumber= 13767, PageNum = 7620, OrderName = ' ghi', UpheldByCourt  = 0, n  =3
	union 
	select OrderNumber= 13768, PageNum = 7620, OrderName = ' jklmnoop sdfsdfksjdfuhu ', UpheldByCourt  = 0, n = 4
)
insert ExecutiveOrder(PresidentId, OrderNumber, PageNum, YearIssued, OrderName, UpheldByCourt)
select p.PresidentId, x.OrderNumber + (p.Num * 10)+ x.n , x.PageNum, p.TermStart ,x.OrderName + ' ' + p.LastName , x.UpheldByCourt
from x
cross join President p 

