-- SM Excellent! 81% See comments, fix and resubmit.
/*
For all Questions use select insert unless otherwise specified.
When getting data from a source table always use the "source" data when you can, otherwise use literal values
*/

/* 1. 
      The Lahtela twin brothers both won medals for the Men's Moguls Freestyle Skiing competition in the 2002 Winter Olympics. 
      Janne's gold medal was entered into the database, but Jack's bronze medal was not. 
      Please add him in to correct this mistake. 
*/
-- SM -50% Take data that you could from table.
insert Medalist(OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
select m.OlympicYear, m.season, m.olympiclocation, m.sport, m.sportsubcategory, 'bronze','Jack', m.lastname, m.country, m.yearborn
from Medalist m 
where m.LastName = 'Lahtela'


--2. For the year 2008; create a new sport, award medals for your new sport to the same medalists that won the 2008 Women's Trampoline sport.
-- SM -10% Take location, season, year, and medal from table.
insert Medalist(OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
SELECT m.OlympicYear, m.Season, m.OlympicLocation, 'basketball', 'toss balls in hoop', m.medal, m.FirstName, m.LastName, m.Country, m.YearBorn
from Medalist m
where 
-- SM No need for ()
m.OlympicYear = 2008 
and m.sport = 'Trampoline'
and m.SportSubcategory= 'Women''s'


/*3. 
      The Men's 200 Metres Swimming records were mistakenly left out of the 2000 Summer Olympic Games. 
      Add in the gold, silver and bronze medalists for it. 
      The good news is that it's the same exact winners as the Field High Jump! 
*/
-- SM -50% You're inserting 9 rows (3 times the same medalists), you should only insert 3. Take medal from table and you won't need union select. But make sure it's the right year.
insert Medalist(OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
SELECT m.OlympicYear, m.Season, m.OlympicLocation, 'swimming', 'Men''s 200 Metres', m.medal, m.firstname, m.lastname, m.country, m.yearborn 
from medalist m 
where m.sport = 'field' 
and m.SportSubcategory = 'High Jump'

/*4. 
     Add a new sport with new bronze, silver, and gold medalists for 2008. 
     Show two ways to do it. One with the values clause and one with the select statement.
*/
insert Medalist(OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
SELECT 2008, 'summer', 'Beijing, People''s Republic of China', 'dodgeball', 'wipe out other team to win', 'bronze', 'Meira', 'Zeiger', 'Nevada', 2004
union SELECT 2008, 'summer', 'Beijing, People''s Republic of China', 'dodgeball', 'wipe out other team to win', 'silver', 'Terry', 'Barren', 'Arizona', 1987
union SELECT 2008, 'summer', 'Beijing, People''s Republic of China', 'dodgeball', 'wipe out other team to win', 'gold', 'Mozes', 'Sapper', 'Indiana', 1974

insert Medalist(OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
VALUES 
      ( 2008, 'summer', 'Beijing, People''s Republic of China', 'dodgeball', 'wipe out other team to win', 'bronze', 'Meira', 'Zeiger', 'Nevada', 2004),
      ( 2008, 'summer', 'Beijing, People''s Republic of China', 'dodgeball', 'wipe out other team to win', 'silver', 'Terry', 'Barren', 'Arizona', 1987),
      ( 2008, 'summer', 'Beijing, People''s Republic of China', 'dodgeball', 'wipe out other team to win', 'gold', 'Mozes', 'Sapper', 'Indiana', 1974)


/*5
      A new Summer Olympic competition will be taking place in New York this year.
      It's the same sports and winners as the 2008 Summer Olympic in Beijing. 
      Add the records.
*/
-- SM No need for ().
insert Medalist(OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
select 2023, m.Season, 'New York', m.sport, m.sportsubcategory, m.medal, m.firstname, m.lastname, m.country, m.yearborn 
from medalist m 
where 
m.olympicyear = 2008
and m.Season = 'Summer'
and m.OlympicLocation like '%Beijing%'

