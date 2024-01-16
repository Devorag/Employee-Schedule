/*
VacationDB
We are now allowing people to save notes on their vacations. Each note has a note type (listed below).
Allow the user to save a note for a particular vacation, the note text should be max 500 characters.
Only allow the user to save one note type per vacation. IOW do not allow a vacation to have two complaints.
Keep it simple no check constraints, just unique and foreign keys

Note Types:
Praise / Compliment
Complaint
Suggestion
Warning

select LastName = 'Adams', Place = 'Canada', NoteType = 'Praise', NoteText = 'Nice Place'
union select 'Adams', 'England', 'Suggestion', 'Bring your own coffee'
union select 'Adams', 'France', 'Complaint','They think they are better than Americans'
union select 'Adams', 'Japan', 'Warning', 'Japanese is hard to speak'
union select 'Bee', 'England', 'Compliment', 'Good tea'
union select 'Bee', 'Hawaii', 'Compliment', 'Sunny and lots of beach'
union select 'Bee', 'Hungary', 'Compliment', 'Interesting culture'
union select 'Carter', 'England', 'Suggestion', 'Bring boots'
*/
use vacationdb 
go 
drop table if exists VacationNote 
drop table if exists NoteType 
go 
create table dbo.NoteType(
    NoteTypeId int not null identity primary key, 
    NoteTypeName varchar(20) not null constraint u_note_type_name unique 
)
go 
create table dbo.VacationNote(
    VacationNoteId int not null identity primary key, 
    VacationId int not null constraint f_vacation_vacationnote foreign key references Vacation(VacationId),
    NoteTypeId int not null constraint f_NoteType_vacationnote foreign key references NoteType(NoteTypeId),
    NoteText varchar(500) not null, 
    constraint u_VacationNote_Vacation_NoteType unique(VacationId, NoteTypeId)
)
go 
insert NoteType(NoteTypeName)
select 'Praise / Compliment'
union select 'Complaint'
union select 'Suggestion'
union select 'Warning'

;
with x as(
    select LastName = 'Adams', Place = 'Canada', NoteTypeName = 'Praise', NoteText = 'Nice Place'
    union select 'Adams', 'England', 'Suggestion', 'Bring your own coffee'
    union select 'Adams', 'France', 'Complaint','They think they are better than Americans'
    union select 'Adams', 'Japan', 'Warning', 'Japanese is hard to speak'
    union select 'Bee', 'England', 'Compliment', 'Good tea'
    union select 'Bee', 'Hawaii', 'Compliment', 'Sunny and lots of beach'
    union select 'Bee', 'Hungary', 'Compliment', 'Interesting culture'
    union select 'Carter', 'England', 'Suggestion', 'Bring boots'
)
insert VacationNote(VacationId, NoteTypeId, NoteText)
select v.vacationId, nt.notetypeId, x.NoteText
from x 
join person p 
on x.LastName = p.LastName 
join vacation v 
on p.personId = v.PersonId 
and v.Place = x.place 
join notetype nt 
on nt.NoteTypeName = x.NoteTypename
--1) List all people their vacations and notes they may have, include the person, place, note type, and note text
select p.LastName, v.Place, nt.NoteTypeName, vn.NoteText
from person p 
join vacation v 
on p.PersonId = v.personId 
left join VacationNote vn 
on v.VacationId = vn.VacationId 
left join NoteType nt 
on nt.NoteTypeId = vn.NoteTypeId 
order by p.LastName, v.place, nt.NoteTypeName, vn.NoteText
--2) Show all vacation places and number of notes for each. Only vacations that have notes
select v.place, NumNotes = count(vn.NoteTypeId)
from vacation v 
join vacationnote vn 
on v.VacationId = vn.VacationId 
group by v.place 
--3) Show all note types and how many notes there are for each type
select nt.NoteTypeName, NumNotes = count(nt.NoteTypeId)
from NoteType nt 
join VacationNote vn 
on vn.NoteTypeId = nt.NoteTypeId 
group by nt.NoteTypeName 
--4) Delete all notes for a particular vacation and person
delete vn 
from Vacation v 
join person p 
on v.PersonId = p.PersonId 
join VacationNote vn 
on v.VacationId = vn.VacationId 
where p.LastName =  'Adams'
and v.place = 'England'

