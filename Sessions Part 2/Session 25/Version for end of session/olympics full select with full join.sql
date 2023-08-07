use recordkeeperdb
go
select 
	o.OlympicYear,
	n.SeasonName,
	OlympicLocation = c.CityName + ', ' + r.CountryName,
	s.SportName,
	ssc.SportSubCategoryName,
	d.OlympicMedalName,
	p.FirstName, 
	p.LastName, 
	OlympianOrigin = mo.CountryName, 
	p.YearBorn
from OlympicSportSubCategoryOlympian m
join OlympicSportSubCategory os 
on os.OlympicSportSubCategoryId = m.OlympicSportSubCategoryId
join SportSubCategory ssc 
on ssc.SportSubCategoryId = os.SportSubCategoryId
join sport s 
on s.SportId = ssc.SportId
join Olympics o 
on o.OlympicsId = os.OlympicsId
join Season n 
on n.SeasonId = o.SeasonId
join City c 
on c.CityId = o.CityId
join Country r 
on r.CountryId = c.CountryId
left join OlympicMedal d 
on d.OlympicMedalId = m.OlympicMedalId
join Olympian p 
on p.OlympianId = m.OlympianId
join Country mo
on mo.CountryId = p.CountryId




