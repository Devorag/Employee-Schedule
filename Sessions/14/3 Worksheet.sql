/* 1. 
Show all world records with a description of their amounts:
	1-50 achieved before 2015 = low, 50-1000 achieved after and including 2015 = medium, 
	1000-2000 not in 2020 = high, anything above 2000 = off the charts, anything else blank
The new column should be displayed first and then all other columns
*/
select AmountDesc = 
case 
when w.amount between 1 and 50 and w.yearachieved < 2015 then 'low'
when w.amount between 50 and 1000 and w.yearachieved >= 2015 then 'medium'
when w.amount between 1000 and 2000 and w.yearachieved <> 2020 then 'high'
when w.amount > 2000 then 'off the charts'
else ' '
end,* 
from worldrecord w 
/* 2. Display a Code Column:
    Any record with a desc length
		greater than 300 and an h in the name gets an h,
		less than 300 and a name that starts with a d get a d, 
    all whose names contain an e or an i get an e
	all others get an x
*/
select Code = 
case 
when LEN(w.RecordDesc) > 2000 and w.RecordName like '%h%' then 'h'
when LEN(w.RecordDesc) < 300 and w.RecordName like 'd%' then 'd'
when w.RecordName like '%[ei]%' then 'e'
else 'x'
end,* 
from worldrecord w 
/* 3. 
	  Hack the WorldRecord Table
	  Update the category column based on the following conditions: 
	  when record was achieved between 2000 and 2005 and category starts with an a then reverse the category,
      when record was achieved from 2006 to 2015 and category starts with s then category should just say the first initial, 
	  when record was achieved after 2015 and category has a space in it then change category to uppercase. 
	  For everything else, change category to lowercase.
*/
--select category =
update w 
set Category = 
case 
when w.yearachieved between 2000 and 2005 and w.category like 'a%' then REVERSE(w.Category)
when w.YearAchieved between 2006 and 2015 and w.Category like 's%' then SUBSTRING(w.category,1,1)
when w.YearAchieved > 2015 and w.Category like '% %' then UPPER(w.Category)
else LOWER(w.Category) 
end
from worldrecord w
/* 4. Update the Amount column based on the following conditions: 
	  	When unit of measure is Total Number and country is USA or England add 100. 
	  	When unit of measure is People and country is India take away 1000. 
	  	When unit of measure is metres and country is Germany, Italy or Japan add 1000. 
	  	For all other cases add 10. 
	Ensure that no records end up with a zero or less in their amount column.
*/
--select w.amount, w.unitofmeasure, w.country,
update amount = 
w.amount +
CASE
when w.unitofmeasure = 'Total Number' and w.country in ('USA', 'England' ) then 100
when w.unitofmeasure = 'People' and w.country = 'India' and w.Amount > 1000 then -1000
when w.unitofmeasure = 'metres' and w.country in ('Germany', 'Italy', 'Japan') then 1000
else 10
end
from worldrecord w 