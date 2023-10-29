--invention 

/* 1. Display a column called  Citizenship for the Invention Table based on the Country. England should be English, USA should be American, France should be French,
      Germany should be German and all others should say Citizenship Unknown.
 */
select Citizenship =
case i.country
when 'England' then 'English'
when 'USA' then 'American'
when 'France' then 'French'
when 'Germany' then 'German'
else 'Citizenship Unknown'
end
,*  
from invention i 
/* 2. Modify the Inventor's Last Names to include their citizenship. Use the same countries specified in question 1. Last Name should say Last Name - Citizenship. 
	  For all other countries Last Name should remain the same.
      This change should only be for inventions that were invented after 1800.
*/
--select inventorlastname =
update i 
set i.InventorLastName = 
case i.country
when 'England' then CONCAT(i.inventorlastname, '-' , 'English')
when 'USA' then CONCAT(i.inventorlastname, '-' ,'American')
when 'France' then CONCAT(i.inventorlastname, '-' , 'French')
when 'Germany' then CONCAT(i.inventorlastname, '-' , 'German')
else i.InventorLastName
end 
from Invention i 
where i.YearInvented > 1800
/* 3. The following names have not been considered suitable first names since the year 1900 and require altering. 
      Switch Konrad to Kurt, Nicephore to Nick, Thomas Alva to Tom, Whitcomb to Will and Anastase to Allen. All other names can remain the same.
      Keep in mind that we can only rename these inventors if they were born after the year 1900 when this went into effect. 
*/
--SELECT firstname = 
update i 
set i.InventorFirstName = 
case i.InventorFirstName 
when 'Konrad' then 'Kurt'
when 'Niceohore' then 'Nick'
when 'Thomas Alva' then 'Tom'
when 'Whitcomb' then 'Will'
when 'Anastase' then 'Allen' 
else i.InventorFirstName
end
from invention i 
where i.YearBorn > 1900

/* 4. 
	Display a new column with the Year Born spelled out in words (1700 would be Seventeen Hundred) for all Years Born that show up at least 3 times in the invention table. 
	First show the records that this applies to with a select statement. Then write the select statement with the new column.
	Other years should show null
*/
select count(i.YearBorn), i.YearBorn
from Invention i 
group by i.YearBorn 
HAVING COUNT(i.YearBorn) >= 3

select YearBornInWords = 
case i.YearBorn
when '1765' then 'seventeen hundred sixty five'
when '1845' then 'eighteen hundred forty seven'
when '1896' then 'eighteen hundred ninety six'
end
,*
from Invention i 