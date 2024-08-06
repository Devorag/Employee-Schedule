use RecordKeeperDB 
go

create or alter proc dbo.OlympicsSummaryGet (
	@Message varchar(500) = '' output
)
as 
begin 

	select 
		o.olympicsid, 
		s.seasonName, 
		c.CityName,
		o.olympicyear, 
		NumOlympicSports = count(distinct osc.OlympicSportSubCategoryId),
		NumOlympian = count(osco.OlympicSportSubCategoryOlympianId)
	from Olympics o 
	join Season s 
	on s.seasonid = o.seasonid 
	join city c 
	on c.cityid = o.cityid 
	left join olympicSportSubCategory osc 
	on o.olympicsid = osc.olympicsid 
	left join olympicsportsubCategoryOlympian osco 
	on osco.OlympicSportSubCategoryId = osc.OlympicSportSubCategoryId 
	group by o.OlympicsId, o.OlympicYear, s.SeasonName, c.cityName
	order by o.OlympicYear desc, s.SeasonName 
end 
go 
exec OlympicsSummaryGet