create or alter procedure dbo.ColorGet(@ColorId int = 0, @ColorName varchar(35) = '', @All bit = 0)
as
begin
	select @ColorName = nullif(@ColorName,'')

	select m.ColorId, m.ColorName
	from Color m
	where m.ColorId = @ColorId
	or @All = 1
	or m.ColorName like '%' + @ColorName + '%'
	order by m.ColorName
end
go
grant execute on ColorGet to approle


