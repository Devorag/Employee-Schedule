--1 The following list has student's answers for a spelling test. The correct spelling is below. Use a CTE to show the 'records' with the wrong answers.
select       'Jones','calendar'
union select 'Smith','calender'
union select 'Smith','definitely'
union select 'Jones','definately'
union select 'Smith','tomorrow'
union select 'Jones','tommorrow'
union select 'Jones','noticeable'
union select 'Smith','noticable'
union select 'Jones','convenient'
union select 'Smith','convinient'
union select 'Smith','deteriorate'
union select 'Jones','deterioreit'
union select 'Smith','beginning'
union select 'Jones','begining'
union select 'Smith','disappear'
union select 'Jones','dissappear'

--Correct Spelling
/*
'calendar'
'definitely'
'tomorrow'
'noticeable'
'convenient'
'deteriorate'
'beginning'
'disappear'
*/

--medalist
--2 What is the average first olympic year for all sports?

--3 Delete any records for countries that have less than 10 medals

--4 For all countries with more than 10 medals update the medal to Gold

--5 vacationdb, insert the following sample data into the vacation table

select 'Adams', 'Boat', 'Timbuktu', '2025-12-01','2035-12-15'
union select 'Bee', 'Bus', 'La La Land', '2035-12-01','2035-12-15'
union select 'Carter', 'Plane', 'Moon', '2045-12-01','2035-12-15'