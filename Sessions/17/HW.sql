--Do all work without dropping tables, and put your scripts in the table source code
-- Medalist

/* 1. The Olympic Committee would like to have a new column that stores the age of medalist at time they won the medal.
      Add in this column.
*/
alter table medalist drop column if exists AgeAtTimeOfMedal 
alter table medalist add AgeAtTimeOfMedal as olympicyear - YearBorn PERSISTED
--SELECT AgeAtTimeOfMedal = m.olympicyear - m.YearBorn, m.OlympicYear, m.YearBorn 
--from Medalist m 
/* 2. A new column is required to display medalist information in a short summary.
      It should look like this: Medal - Medalist Initials: Olympic Year
      Example: Bronze - S.V.: 1896
*/
alter table medalist drop column if exists ShortSummaryMedalistInfo
alter table medalist add ShortSummaryMedalistInfo as concat(medal, ' - ', substring(firstname,1,1), '.', SUBSTRING(lastname,1,1), '.: ', olympicyear) PERSISTED
--select ShortSummaryMedalistInfo = concat(m.medal, ' - ', substring(m.firstname,1,1), '.', SUBSTRING(m.lastname,1,1), '.: ', m.olympicyear)
--from Medalist m 
/* 3. The Olympic Committee would like a column that says if a medalist is a gold medalist or not.
      Create a new computed column, if the medal is gold than the value should be 1, otherwise it should be 0. 
*/
alter table medalist drop column if exists GoldMedal
alter table medalist add GoldMedal as 
      case
            when medal ='gold' then 1
            else 0
      end 
 PERSISTED
/* 4. The Olympic Committe wants to record the address of all medalists. 
      It should allow blanks in case an address is unknown but shouldn't allow nulls.
*/
alter table medalist drop CONSTRAINT if exists d_medalist_AddressMedalist
alter table medalist drop column if exists AddressMedalist
alter table medalist add AddressMedalist varchar(1000) not null CONSTRAINT d_medalist_AddressMedalist DEFAULT ''
-- president
-- 5. Add a column called AgeAtDeath for each president
alter table president drop column if exists AgeAtDeath
go
alter table president add AgeAtDeath as  DATEDIFF (year, DateBorn, DateDied) PERSISTED 
go
--SELECT AgeAtDeath = year(p.DateDied) - year(p.DateBorn), p.DateDied, p.DateBorn
--from president p 
-- 6. Add a column called YearsServed for each president
alter table president drop column if exists YearsServed 
go
alter table president add YearsServed as termend - termstart PERSISTED 
go
--select YearsServed = TermEnd - TermStart, p.TermEnd, p.TermStart 
--from president p 
-- 7. Add a new column that displays the number of full terms served, zero is correct if served less than 4 years
alter table president drop column if EXISTS NumberOfFullTermsServed
go
alter table president add NumberOfFullTermsServed as (termend - termstart) / 4 PERSISTED
go
--select p.termstart, p.termend, NumberOfFullTermsServed = 
      --case 
        --    when TermEnd - TermStart = 8 then 2
         --   when TermEnd - TermStart >= 4 then 1
          --  when TermEnd - TermStart < 4 then 0 
      --end
--from president p 

insert president(num, firstname, lastname, party, DateBorn, termstart, termend)
select 25, 'John', 'Luther', 'Republican', '02-05-1965', 2028, 2036

SELECT * 
from president p 
ORDER by TermEnd desc

insert Medalist(OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
select 2008, 'summer', 'Athens - Greece', 'cycling', 'kind of bicycle', 'gold', 'Mary', 'Kuper', 'Indiana', 1989

SELECT * 
from Medalist m 
where m.yearborn = 1989