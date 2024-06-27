create or alter procedure dbo.PresidentDelete (
	@PresidentId int 
)
as 
begin 
	delete President where PresidentId = @PresidentId
end 
go 