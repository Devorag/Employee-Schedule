use RecordKeeperDb
go

create or alter procedure dbo.PresidentSearch( 
	@PartyId int = 0,
	@BeginTermStart int = 0,
	@EndTermStart int = 0,
	@LastName varchar(100) = '', 
	@Message varchar(1000) = '' output 
)
as 
begin 
	declare @return int = 0, @count int = 0
	declare @t table(presidentid int)

	select @PartyId = isnull(@PartyId, 0), @LastName = isnull(@LastName, 0),
	@BeginTermStart = nullif(@BeginTermStart,0), @EndTermStart = nullif(@EndTermStart,0)

	insert @t(presidentid)
	select p.presidentid
	from President p 
	join party y
	on y.partyid = p.partyid
	where (@LastName = '' or p.LastName like '%' + @LastName + '%')
	and (@PartyId = 0 or p.partyid = @PartyId)
	and (p.termstart between isnull(@BeginTermStart, p.termstart) and isnull(@EndTermStart, p.TermStart))

	select @count = count(*)
	from @t

	if @count > 10 
	begin 
		select @return = 1,  @Message = concat('Search would return ', @count, ' rows. You are only allowed to return 10 rows.')
		goto finished
	end

	select p.PresidentId, p.PartyId, p.Num,  y.Partyname, p.FirstName, p.LastName, p.DateBorn, p.DateDied, 
	NumExecutiveOrders = count(e.executiveorderid)
	from @t t 
	join President p 
	on t.presidentid = p.presidentid
	join party y
	on y.partyid = p.partyid
	left join executiveorder e 
	on e.presidentid = p.presidentid
	group by p.PresidentId, p.PartyId, y.partyname, p.num, p.FirstName, p.LastName, p.DateBorn, p.DateDied
	order by p.num 

	finished:

	return @return
end 
go  

declare @i int, @m varchar(1000)
exec @i = PresidentSearch @BeginTermStart = 1950, @EndTermStart = 0, @Message = @m output

select @i, @m

exec PresidentSearch @BeginTermStart = 1950, @EndTermStart = 1800

exec PresidentSearch @BeginTermStart = 1850, @EndTermStart = 1899

--exec PresidentSearch 

--exec PresidentSearch @LastName = '' 

--exec PresidentSearch @LastName = null 

--exec PresidentSearch @LastName = 'm', @PartyId = 213




