-- Invention 
/* 1. Show all inventions with a new column called Seperator Description based on these conditions:
      When Invention Name and Description both have a dash it should say dash. 
      When Invention Name contains an e and the Description has a paranthesis, it should say paranthesis.
      When Invention Name has a space and Description has a comma, it should say comma.
      For anything else, it should say unspecified.
*/
SELECT Seperator Desc = 
case 
when i.inventionname like '%-%' and i.inventionDescription like '%-%' then 'dash'
when i.inventionname like '%e%' and i.inventionDescription like '%(%' then 'paranthesis'
when i.inventionname like '% %' and i.inventiondescription like '%,%' then 'comma'
else 'unspecified'
end
from invention i 
order by i.inventionname, i.inventiondescription
/* 2. Show all inventions with a new column CenturyName (e.g. 1700s is the Eighteenth Century).
      Show for any inventions invented in the Seventeenth through Twentieth Centuries.
      Only show CenturyName if the inventor lived longer than the average life span of that century.
      For the 1600's the average life span was 30 years and for each century after ten more years were added to
      the average life span. For all other inventions, the CenturyName should be blank.
*/
SELECT CenturyName = 
case 
when i.YearInvented between 1600 and 1700 and i.YearDied - i.YearBorn > 30 then 'Seventeenth Century'
when i.YearInvented between 1700 and 1800 and i.YearDied - i.YearBorn > 40 then 'Eighteenth Century'
when i.YearInvented between 1800 and 1900 and i.YearDied - i.YearBorn > 50 then 'Nineteenth Century'
when i.YearInvented between 1900 and 2000 and i.YearDied - i.YearBorn > 60 then 'Twentieth Century'
else '% %'
end,* 
from invention i 
where i.YearInvented BETWEEN 1600 and 2000
order by i.yearinvented
/* 3. Hack the Invention Table. 
      Mess up the last names in the following way: 
      If the first name starts with a T and the last name contains an e then Uppercase the Last Name. 
      If the first name is more than 6 characters and the last name has a space then reverse the last name. 
      If the first name is John, James or William and the last name is less than five characters then add an exclamation mark to the last name.
      Any other inventor's last name should not be affected.
*/
SELECT lastname = 
case 
when i.InventorFirstName like 't%' and i.InventorLastName like '%e%' then upper(i.inventorlastname)
when len(i.InventorFirstName) > 6  and i.InventorLastName like '% %' then reverse(i.inventorlastname)
when i.InventorFirstName in ('John', 'James', 'William') and len(i.InventorLastName) < 5 then CONCAT(i.InventorLastName, '!')
else i.InventorLastName
end,* 
from invention i 
/* 4. You are still hacking the Invention Table but have now decided to mess up the Inventors' First Names. 
      If the inventor was under 30 at the time of his invention and the year invented was sometime between 1600 and 1800 
            then his First Name should only show the first letter. 
      If he was somewhere from 31 - 50 and the Year Invented doesn't end in a 5 then his First Name should show the first two letters.
      If he was over fifty and the Year Invented was before 2000 then his First Name should show the first three letters. 
      In all other cases, the first name should just show the first letter followed by a period.
*/
--SELECT firstname = 
update i 
set InventorFirstName =
case 
when i.yearinvented - i.yearborn < 30 and i.YearInvented between 1600 and 1800 then SUBSTRING(i.InventorFirstName,1,1)
when i.yearinvented - i.yearborn between 31 and 50  and i.YearInvented not like '%5' then SUBSTRING(i.InventorFirstName,1,2)
when i.yearinvented - i.yearborn > 50 and i.YearInvented < 2000 then SUBSTRING(i.InventorFirstName,1,3)
else CONCAT(SUBSTRING(i.InventorFirstName,1,1), '.')
end
from invention i 