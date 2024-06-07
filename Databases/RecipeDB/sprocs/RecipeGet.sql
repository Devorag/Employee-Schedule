create or alter procedure dbo.RecipeGet
as 
begin 
	select * 
	from Recipe r
	order by r.recipename, r.recipestatus
end
go

exec RecipeGet 