create or alter procedure dbo.SportSubCategoryGet(
	@SportSubCategoryId int = 0,
	@All bit = 0,
	@Message varchar(500) = ''  output
)
as
begin
	declare @return int = 0

	select @All = isnull(@All,0), @SportSubCategoryId = isnull(@SportSubCategoryId,0)

	select s.SportSubCategoryId, s.SportId, s.SportSubCategoryName
	from SportSubCategory s
	where SportSubCategoryId = @SportSubCategoryId
	or @All = 1
	
	return @return
end
go
