-- SM Excellent! 100% See comments, no need to resubmit.
-- All Columns should have Column Names unless otherwise specified
/*1. 
	The Olympic Committee has decided to give a special award to all gold medalists whose last name 
	begins with a 'P'. Show a list of these medalists and label them all as Category P
*/
SELECT category = 'Category P', * 
from Medalist m 
where m.Medal = 'gold'
and m.LastName like 'P%'
/*2
	 Three new sports are being added into this year's Winter Olympic Competitions in Norway. Create 3 new sports from literal values,
	 show in one result set, leaving the MedalistId, medalist information and Code blank.
*/
-- SM Specify the year.
SELECT MedalistId = '' , OlympicYear = '', Season = 'winter', OlympicLocation = 'Norway', Sport = 'Australian basketball', SportSubcategory = 'junior basketball', Medal = '', FirstName = '', LastName = '' ,Country = '', YearBorn = '' , Code = ''
union SELECT MedalistId = '' , OlympicYear = '', Season = 'winter', OlympicLocation = 'Norway', Sport = 'trench', SportSubcategory = 'teenage girls sport', Medal = '', FirstName = '', LastName = '' ,Country = '', YearBorn = '' , Code = ''
union SELECT MedalistId = '' , OlympicYear = '', Season = 'winter', OlympicLocation = 'Norway', Sport = 'volley ball', SportSubcategory = 'toss ball over court', Medal = '', FirstName = '', LastName = '' ,Country = '', YearBorn = '' , Code = ''

/*3.
	A New Swimming Competition is being added into the upcoming Olympics. Specify the location and year.
	Show a list of all the past swimming winners with three blank rows 	as placeholders for the future ones.
	They should be blank, but should have the sport filled in as swimming.
*/
SELECT MedalistId = '' , OlympicYear = 2023, Season = '', OlympicLocation = 'USA', Sport = 'swimming', SportSubcategory = '', Medal = '', FirstName = '', LastName = '',Country = '', YearBorn = 0, Code = '' 
union all SELECT MedalistId = '' , OlympicYear = 2023, Season = '', OlympicLocation = 'USA', Sport = 'swimming', SportSubcategory = '', Medal = '', FirstName = '', LastName = '',Country = '', YearBorn = 0, Code = '' 
union all SELECT MedalistId = '' , OlympicYear = 2023, Season = '', OlympicLocation = 'USA', Sport = 'swimming', SportSubcategory = '', Medal = '', FirstName = '', LastName = '',Country = '', YearBorn = 0, Code = '' 
union all SELECT m.MedalistId, m.OlympicYear, m.Season, m.OlympicLocation, m.Sport, m.SportSubcategory, m.Medal, m.FirstName, m.LastName, m.Country, m.YearBorn, m.Code 
from Medalist m 
where m.sport = 'swimming'
/*4.
	Show a list of medalists and inventors in one result set for all born before the year 1900. 
	include the columns: Invention Name\Sport - Medal (like Swimming Gold ), First Name, Last Name, Year Born
	use generic names for the columns and add record type column at the beginning that says whether it is Medalist or Invention
	sort by record type, YearBorn
*/
SELECT RecordType = 'Invention', topic = i.InventionName, i.InventorFirstName, i.InventorLastName, i.YearBorn 
from Invention i 
where i.YearBorn < 1900 
union select 'Medalist',m.sport + ' ' + m.medal, m.firstname, m.lastname, m.YearBorn 
from Medalist m 
where m.yearborn < 1900 
order by RecordType, i.YearBorn
/*5
	Show a list of Silver medalists under the age of 25.
	2 Rows for each: 
		1. Description (Full Name and Country separated by a space), 
		2. Medal(Sport Medal and Country, eg Swimming Gold USA), both rows should have a medalist code columns
	Keep rows for each medal together

*/
-- SM No need for union all.
select msequence = 1, age = m.olympicyear - m.yearborn, mdescription = m.firstname + ' ' + m.lastname + ' ' + m.country, m.Code 
from  Medalist m 
where m.OlympicYear - m.YearBorn < 25 
and m.Medal = 'silver'
union all SELECT 2, age = m.olympicyear - m.yearborn, medal = m.Sport + ' ' + m.Medal + ' ' + m.Country, m.Code 
from Medalist m
where m.OlympicYear - m.YearBorn < 25
and m.Medal = 'silver'
order by age, m.Code, msequence

