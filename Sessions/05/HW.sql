--use long hand unless otherwise specified, do as select showing before and after, and then convert to update, after each question reinsert the original data

/*1
	You are a hacker, and "broke into" the RecordKeeper database. 
	Mess up the medalist data
	Set the age of all medalists to be 1 years old and set their Last Name to be their First Name, and set their First Name to be their Sport, and set Country to be Hackersland
*/
update m
set  yearborn = m.olympicyear - 1, FirstName = m.LastName, Sport = m.FirstName, m.Country = 'Hackersland'
--select yearborn = m.olympicyear - 1, age = m.OlympicYear - m.YearBorn, FirstName = m.LastName, Sport = m.FirstName, m.olympicyear, m.YearBorn, m.LastName, m.FirstName, 'Hackersland' , m.Country
from medalist m 

SELECT * from Medalist m

/*2
	The Winter Olympics were too hot in France and Italy, change the Season to Fall when Olympic Location is in those countries.
*/
UPDATE m 
set Season = 'fall'
--SELECT 'France' , 'Italy' , m.Country, 'fall' , m.season, *
from Medalist m
where m.Country in ('France' , 'Italy')


/*3 
	Several complaints were filed with the Olympics Association, and they are making an effort to be politically correct. 
	Use as many statements needed to do the following.
	The International Shipping Association has protested that the sport Boxing reflects badly on their business. Change the sport to "Fist Combat"
	The World Bird Union complained about the use of Featherweight for boxing. Change that subcategory to "Not Heavyweight".
	The Union of Bronze Miners claims that the Olympics are unfairly depressing the price of Bronze. Change the "Bronze" medal to "Tin"
*/
update m 
set Sport = 'Fist Combat'
--select m.sport, * 
from Medalist m 
where m.Sport = 'boxing'

update m 
set SportSubcategory = 'Not Heavyweight'
--SELECT m.sportsubcategory, * 
from Medalist m 
where m.SportSubcategory like '%featherweight%'

update m 
set medal = 'tin'
--select m.medal, * 
from Medalist m 
where m.Medal = 'bronze'

/*4
	It has been found that sport Trampoline has been rife with illegal drug use. Remove all trampoline records from the table. 
*/
DELETE m
--SELECT m.sport, *
from Medalist M
where m.Sport = 'trampoline'


/*5
	The Grenada government has proven that:
		all Alpine skiers from 1936 to 1950 were Grenadian
		all Figure Skaters recorded as from Great Britain in 1924 and 1976 were actually Grenadian
	Grenada has been robbed of its glory. Correct the records.
*/
SELECT m.country, m.Sport, m.OlympicYear
from Medalist m 
where m.OlympicYear BETWEEN 1936 and 1950
and m.sport like '%alpine%'
