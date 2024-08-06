create or alter proc dbo.DashboardGet(
@Message varchar(500) = '' output
)
as 
begin 
	declare @return int = 0 

	select DashboardType = 'president', DashBoardText = concat('Click here to search from among ', count(*), ' Presidents') from president p
	union 
	select DashboardType = 'Olympics', DashBoardText = concat('Click here to search from among ', count(*), ' Olympic games') from Olympics p

	return @return 
end 
go 

exec DashboardGet