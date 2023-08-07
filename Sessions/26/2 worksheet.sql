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

--1) List all people their vacations and notes they may have, include the person, place, note type, and note text

--2) Show all vacation places and number of notes for each. Only vacations that have notes

--3) Show all note types and how many notes there are for each type

--4) Delete all notes for a particular vacation and person




