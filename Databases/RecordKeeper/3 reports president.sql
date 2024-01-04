-- SM Excellent! See comments, fix and resubmit.
--3) reports and tasks
	--a) list all executive orders sorted by page number, display the official executive order format
    --Exec. Order No. 6102, 3 C.F.R. 5 1933. Forbidding the hoarding of gold coin, gold bullion, and gold certificates within the continental United States.
-- SM -10% Should be taken from computed column.
SELECT OfficialExecutiveOrderFormat = concat('Exec. Order No.', ' ', o.OrderNumber, ' ', o.VolumeNumber, ' ', o.CodeName, ' ', o.PageNumber, ' ', o.yearissued, '. ', o.OrderName) 
from orders o 
order by o.PageNumber 
	--b) same as (a) but include the presidents name
-- SM -10% Should be taken from computed column.
SELECT OfficialExecutiveOrderFormat = concat('Exec. Order No.', ' ', o.OrderNumber, ' ', o.VolumeNumber, ' ', o.CodeName, ' ', o.PageNumber, ' ', o.yearissued, '. ', o.OrderName), p.lastname, p.firstname
from president p 
join orders o
on p.PresidentId = o.PresidentId 
order by o.PageNumber 
	--c) same as (b) but include the party name
-- SM -10% Should be taken from computed column.
SELECT OfficialExecutiveOrderFormat = concat('Exec. Order No.', ' ', o.OrderNumber, ' ', o.VolumeNumber, ' ', o.CodeName, ' ', o.PageNumber, ' ', o.yearissued, '. ', o.OrderName), p.lastname, p.firstname, pt.partyName
from party pt 
join president p 
on pt.PartyId = p.PartyId 
join orders o 
on p.PresidentId = o.PresidentId 
order by o.PageNumber 
	--d) show number of executive orders per president for presidents that issued 3 or more orders. sort by highest number of orders
select NumOrders = count(*), p.LastName 
from president p 
join orders o 
on p.PresidentId = o.PresidentId 
group by p.LastName
having count(*) >= 3
order by NumOrders desc 

	--e) show number of executive orders per party
select NumOrders = count(*), pt.PartyName 
from party pt 
join president p 
on pt.PartyId = p.PartyId 
join orders o 
on p.PresidentId = o.PresidentId 
group by pt.partyName
	--f) pick a party that has one or more executive orders and delete the party
-- SM -100% Can't run this. See error.
delete pt 
from party pt
join president p 
on pt.PartyId = p.PartyId
join orders o 
on p.PresidentId = o.PresidentId
where pt.partyName = 'Republican'

	--g) for a particular party with exec orders update all to not upheld
update o
set o.orderupheld = 0 
from party pt
join president p 
on pt.PartyId = p.PartyId
join orders o 
on p.PresidentId = o.PresidentId
where pt.partyName = 'Republican'