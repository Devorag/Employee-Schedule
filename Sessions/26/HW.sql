-- SM Excellent! 100% See comment, no need to resubmit.
/*
The government is starting a new program to award medals to presidents for outstanding service. 
Add tables to store medals and award them to presidents. A medal can be assigned to more than one president. 
When awarding a medal to a president record the date and time of the award.
A president cannot receive the same award more than once.

Medals:
	Made America Great
	(make up several more)

Ensure that sample data provides A) president with no medals
                                 B) president with only one medal
                                 C) president with multiple medals
                                 D) a medal shared by multiple presidents
                                 E) a medal that has never been awarded to a president
                                 
*/



--1) Select all presidents and any medals they may have, sorted by medal and president number. Show Name, Number, Medal, Party
select p.FirstName, p.LastName, p.num, MedalName = isnull(m.MedalName, ''), pt.PartyName
from president p 
left join party pt  
on p.PartyId = pt.PartyId 
left join PresidentMedal pm 
on p.presidentId = pm.presidentId 
left join medal m 
on pm.MedalId = m.medalId 
order by m.medalname, p.num
--2) Show the Medal that was awarded the most times.
select top 1 MostTimesAwarded = count(pm.MedalId), m.MedalName
from medal m 
left join presidentmedal pm 
on m.medalId = pm.medalId
group by m.medalname 
order by MostTimesAwarded desc 
--3) Show all medals and the amount of times it has been awarded. Zero if never awarded.
select TimesAwarded = count(pm.MedalId), m.medalname
from medal m 
left join presidentmedal pm 
on m.medalId = pm.medalId
group by m.medalname  
--4a) Show all parties and the number of medals awarded to it's presidents. Omit party if no medals
-- SM There's an easier way to do this without a having.
-- You only want those that have medals. Use simple join not a left join.
select NumMedals = count(pm.MedalId), pt.PartyName
from party pt 
left join president p 
on p.PartyId = pt.PartyId 
left join PresidentMedal pm 
on pm.presidentId = p.PresidentId 
left join medal m 
on pm.MedalId =m.MedalId
group by pt.partyname
having count(pm.MedalId) > 0 
order by pt.PartyName

--4b) Same as 4a, but show zero if no medals awarded to a party's presidents
select NumMedals = count(pm.MedalId), pt.PartyName
from party pt 
left join president p 
on p.PartyId = pt.PartyId 
left join PresidentMedal pm 
on pm.presidentId = p.PresidentId 
left join medal m 
on pm.MedalId =m.MedalId
group by pt.partyname
order by pt.PartyName
--5) Which medal(s) has never been awarded
select * 
from medal m 
left join presidentmedal pm 
on m.medalId = pm.medalId
where pm.presidentId is null 
--6) Pick a president that has been awarded at least one medal, and strip him of his awards. Do not delete the medal.

select TimesAwared = count(pm.MedalId), p.LastName 
from president p 
join PresidentMedal pm 
on pm.PresidentId = p.PresidentId 
join medal m 
on m.MedalId = pm.MedalId 
group by p.LastName 

delete pm 
from PresidentMedal pm 
join president p 
on p.PresidentId = pm.PresidentId 
join medal m 
on m.MedalId = pm.MedalId 
where p.lastname = 'Trump'

--7) We are awarding a medal to all presidents, the medal name is "Champion of Internet Safety". 
--a) Create the medal and award it to all presidents
insert Medal(MedalName)
select 'Champion of Internet Safety'
;
with x as (
    select LastName = p.lastname, MedalName = 'Champion of Internet Safety'
    from president p 
)
insert PresidentMedal(PresidentId, MedalId)
select distinct p.PresidentId, m.MedalId
from x
join president p 
on p.lastname = x.LastName 
join medal m 
on m.MedalName = x.MedalName 


--b) Uh. Somebody pointed out the presidents before 1993 could not have championed internet safety. Remove the award from all presidents that ended their terms prior to that year. 
-- SM -50% You should only delete the specified medal not ALL medals.
delete pm 
from medal m 
join PresidentMedal pm 
on pm.MedalId = m.MedalId  
join president p 
on p.PresidentId = pm.PresidentId 
where p.TermEnd < 1993
and m.medalname = 'Champion of Internet Safety'
