delete Attraction
delete vacation 
delete Person 


insert person(lastName)
select 'Adams'
union select 'Bee'
union select 'Carter'
union select 'Andy'

insert Vacation(PersonId, Place, StartDate, EndDate)
select p.personId, 'France', '1990-01-01', '1990-01-11' from person p where p.lastname = 'Adams'
union select p.personId, 'England','1991-01-01', '1991-01-11' from person p where p.lastname = 'Adams'
union select p.personId, 'Japan', '1991-01-01', '1991-01-11' from person p where p.lastname = 'Adams'
union select p.personId, 'Russia', '2000-01-01', '2002-01-11' from person p where p.lastname = 'Bee'
union select p.personId, 'Hungary', '2003-01-01', '2004-01-11' from person p where p.lastname = 'Bee'
union select p.personId, 'NY', '2000-01-01', '2000-01-11' from person p where p.lastname = 'Carter'
union SELECT p.personId, 'NJ', '2010-01-01', '2011-01-11' from person p where p.lastname = 'Carter'

insert Attraction(VacationId, AttractionName, AmountSpent)
select v.vacationId, 'Eiffel Tower', 35 from vacation v where v.place = 'France'
union select v.vacationId, 'Big Ben Tower', 75 from vacation v where v.place = 'England'
union select v.vacationId, 'Change of Guards', 0 from vacation v where v.place = 'England'
union select v.vacationId, 'Buckingham Palace', 5 from vacation v where v.place = 'England'
union select v.vacationId, 'London Tower', 1 from vacation v where v.place = 'England'
union SELECT v.vacationId, 'Budapest', 150 from vacation v where v.place = 'Hungary'
union select v.vacationId, 'Niagra Falls', 150 from vacation v where v.place = 'Canada'
union select v.vacationId, 'Toronto Music Garden', 15 from vacation v where v.place = 'Canada'