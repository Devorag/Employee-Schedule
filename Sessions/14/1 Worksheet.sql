--world records
/* 1. Display a column called Color for the World Record Table based on the Category. All Animals should be blue, Size should be red,
 Food should be orange and all other Categories should be black.
 */
 select color = 
 case category
 when 'animals' then 'blue'
 when 'size' then 'red'
 when 'food' then 'orange'
 else 'black'
 end 
  ,* 
 from worldrecord w
 order by w.category 

/* 2. Display a new column called Units Of Measure Abbreviation.
      All Centimetres should say Ce, Inches should say In, Kilometres should say Ki, Metres should say Me and all other UOM should remain the same.
*/
select UOM = 
case w.UnitOfMeasure
when 'centimetres' then 'Ce'
when 'Inches' then 'In'
when 'Kilometres' then 'Ki'
when 'Metres' then 'Me'
else w.UnitOfMeasure
end
,* 
from WorldRecord w 
order by w.UnitOfMeasure

/* 3. The world record data is being analyzed. Display a new column for the thirty most recent awards that were achieved from 2015 and on.
      2015 should say group one, 2016 should say group two, 2017 should say group three, 2018 should say group four. 
      All other years should say unassigned group.
*/
select top 30 
YearGroup = 
case w,YearAchieved
when '2015' then 'Group One'
when '2016' then 'Group Two'
when '2017' then 'Group Threee'
when '2018' then 'Group Four'
else 'Unassigned Group'
,* 
from WorldRecord w 
where w.YearAchieved > 2015
order by w.YearAchieved
/* 4. Some of the country names are outdated and require modification. 
      USA should say United States, United Kingdom should say England and Russian Federation should be Russia.
	All other country names should remain the same.
*/
--SELECT NewCountry =
update w 
set country = 
case w.Country 
when 'USA' then 'United States'
when 'United Kingdom' then 'England'
when 'Russian Federation' then 'Russia'
else w.Country
end
from WorldRecord w 
