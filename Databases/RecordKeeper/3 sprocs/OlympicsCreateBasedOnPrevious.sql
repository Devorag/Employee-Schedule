create or alter proc dbo.OlympicsCreateBasedOnPrevious(
	@OlympicsId int = null output, 
	@SeasonId int, 
	@CityId int, 
	@OlympicYear int, 
	@BaseOlympicsId int,
	@Message varchar(500) = '' output
)
as 
begin 
	declare @return int = 0

	insert Olympics(SeasonId, CityId, OlympicYear) 
	values (@SeasonId, @CityId, @OlympicYear) 

	select @OlympicsId = SCOPE_IDENTITY();

	insert OlympicSportSubCategory(OlympicsId, SportSubCategoryId)
	select @OlympicsId, osc.SportSubCategoryId
	from OlympicSportSubCategory osc 
	where osc.OlympicsId = @BaseOlympicsId

	insert OlympicSportSubCategoryOlympian(OlympicSportSubCategoryId, OlympianId)
	select osc.OlympicSportSubCategoryId, m.OlympianId
	from OlympicSportSubCategory osc 
	join OlympicSportSubCategory bosc 
	on osc.OlympicSportSubCategoryId = bosc.OlympicSportSubCategoryId
	and bosc.OlympicsId = @BaseOlympicsId
	join OlympicSportSubCategoryOlympian m 
	on m.OlympicSportSubCategoryId = bosc.OlympicSportSubCategoryId
	where osc.OlympicsId = @OlympicsId

	return @return 
end 
go

declare
	@OlympicsId int,
	@SeasonId int, 
	@CityId int, 
	@OlympicYear int, 
	@BaseOlympicsId int,
	@i int, 
	@m varchar(500)

select @BaseOlympicsId = o.olympicsid, @OlympicYear = o.olympicyear + 1 from Olympics o order by o.OlympicsId desc
select top 1 @SeasonId = s.seasonid from season s order by s.seasonid
select top 1 @Cityid = c.CityId from city c order by c.CityId

exec @i = OlympicsCreateBasedOnPrevious
	@OlympicsId = @OlympicsId output, 
	@SeasonId = @SeasonId, 
	@CityId = @CityId, 
	@OlympicYear = @OlympicYear, 
	@BaseOlympicsId = @BaseOlympicsId,
	@Message = @m output

select @i, @m 

select o.OlympicsId, o.olympicyear, NumOlympicSportSubCategoryid = count(distinct osc.OlympicSportSubCategoryId), NumOlympicSportSubCategoryOlympianId = count(osco.OlympicSportSubCategoryOlympianId)
from olympics o 
left join olympicsportsubcategory osc
on osc.olympicsid = o.olympicsid 
left join OlympicSportSubCategoryOlympian osco
on osco.olympicSportsubcategoryid = osc.olympicSportSubCategoryId
where o.olympicsid in (@Olympicsid, @BaseOlympicsId) 
group by o.OlympicsId, o.OlympicYear

delete m
from OlympicSportSubCategoryOlympian m 
join OlympicSportSubCategory s 
on s.OlympicSportSubCategoryId = m.OlympicSportSubCategoryId 
where s.OlympicsId = @OlympicsId

delete OlympicSportSubCategory where OlympicsId = @OlympicsId
delete Olympics  where OlympicsId = @OlympicsId




