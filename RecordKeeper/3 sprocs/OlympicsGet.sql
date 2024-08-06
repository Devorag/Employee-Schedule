use RecordKeeperDB 
go

create or alter proc dbo.OlympicsGet(
	@OlympicsId int = 0, 
	@All bit = 0, 
	@IncludeBlank bit = 0,
	@Message varchar(500) = '' output 
)

as 
begin 
	declare @return int = 0 

	select o.OlympicsId, 
			o.SeasonId,	
			o.CityId, 
			o.OlympicYear, 
			s.seasonName, 
			OlympicsDesc = concat(s.seasonname, ' ', c.CityName, ' ', o.OlympicYear), 
			ListOrder = 1 
	from Olympics o 
	join Season s 
	on s.seasonid = o.seasonid 
	join city c 
	on c.cityid = o.cityid
	where o.olympicsId = @OlympicsId 
	or @All = 1 
	union select 0, 0, OlympicYear = 0, '', SeasonName = '', '', ListOrder = 0
	where @IncludeBlank = 1 
	order by ListOrder, o.OlympicYear desc, s.SeasonName 

	return @return
end
go 

exec OlympicsGet @All = 1, @IncludeBlank = 1