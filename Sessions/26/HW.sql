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

insert Medal(MedalName)
select 'Made America Great'
union select 'Won most debates'
union select 'Scored the most points'
union select 'Eyes remained focused on his goal'
union select 'Laughed and smiled through it all'
union select 'stood against the tide' 
union select 'Never gave up hope'
union select 'Conquered the world while sitting'
union select 'Cheered everyone on'

;
with x as(
    select LastName = 'Washington', PartyName = 'None, Federalist', MedalName = 'Never gave up hope'
    union select 'Monroe', 'Democratic-Republican', 'Eyes remained focused on his goal'
    union select 'Tyler', 'whig', 'Laughed and smiled through it all'
    union select 'Fillmore', 'whig', 'Laughed and smiled through it all'
    union select 'Lincoln', 'Republican', 'Won most debates'
    union select 'Lincoln', 'Republican', 'Scored the most points'
    union select 'Lincoln', 'Republican', 'Conquered the world while sitting'
    union select 'Cleveland', 'Democratic', 'Stood against the tide'
    union select 'Taft', 'Republican', 'Laughed and smiled through it all'
    union select 'Eisenhower', 'Republican', 'Scored the most points'
    union select 'Reagan', 'Democratic', 'Made America Great'
    union select 'Obama', 'Democratic', 'Made America Great'
    union select 'Trump', 'Republican', 'Scored the most points'
    union select 'Trump', 'Republican', 'Won most debates'
)
insert PresidentMedal(PresidentId, MedalId)
select p.presidentId, m.medalId
from x 
join president p 
on p.LastName = x.LastName 
join party pt 
on pt.PartyName = x.PartyName 
join medal m 
on m.MedalName = x.MedalName


--1) Select all presidents and any medals they may have, sorted by medal and president number. Show Name, Number, Medal, Party
select p.FirstName, p.LastName, p.num, m.MedalName, pt.PartyName
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
select TimesAwarded = count(pm.MedalId), m.medalname
from medal m 
left join presidentmedal pm 
on m.medalId = pm.medalId
group by m.medalname  
having count(pm.MedalId) = 0 
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
delete pm 
from medal m 
join PresidentMedal pm 
on pm.MedalId = m.MedalId  
join president p 
on p.PresidentId = pm.PresidentId 
where p.TermEnd < 1993

