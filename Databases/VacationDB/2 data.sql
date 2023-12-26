use vacationDB 
go 
delete vacation 
delete Person 


insert person(lastName)
select 'Adams'
union select 'Bee'
union select 'Carter'

insert Vacation(PersonId, Place, StartDate, EndDate)
select p.personId, 'France', '1990-01-01', '1990-01-11' from person p where p.lastname = 'Adams'
union select p.personId, 'England','1991-01-01', '1991-01-11' from person p where p.lastname = 'Adams'
union select p.personId, 'Japan', '1991-01-01', '1991-01-11' from person p where p.lastname = 'Adams'
union select p.personId, 'Russia', '2000-01-01', '2002-01-11' from person p where p.lastname = 'Bee'
union select p.personId, 'Hungary', '2003-01-01', '2004-01-11' from person p where p.lastname = 'Bee'
union select p.personId, 'NY', '2000-01-01', '2000-01-11' from person p where p.lastname = 'Carter'
union SELECT p.personId, 'NJ', '2010-01-01', '2011-01-11' from person p where p.lastname = 'Carter'