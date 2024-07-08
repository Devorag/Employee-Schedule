use RecordKeeperDB 
go

create or alter proc dbo.PresidentUpdate (
	@PresidentId int output, 
	@PartyId int, 
	@Num int output, 
	@FirstName varchar (100),
	@LastName varchar (100), 
	@DateBorn date, 
	@DateDied datetime2,
	@TermStart int, 
	@TermEnd int, 
	@Message varchar(500) = ' ' output 
)
as 
begin 
	declare @return int = 0

	select @PresidentId = isnull(@Presidentid,0), @TermEnd = nullif(@TermEnd, 0), @Num = isnull(@Num,0)

	if @Termend is null and exists(select * from president p where p.TermEnd is null and p.presidentid <> @PresidentId)
	begin 
		select @return = 1, @Message = 'There can only be one current president at a time'
		goto finished 

		end

	if @PresidentId = 0 
	begin
		if @Num = 0
		begin
			select @Num = max(p.Num) + 1 from president p 
		end

		insert President(PartyId, num, FirstName, LastName, DateBorn, DateDied, TermStart, TermEnd)
		values(@PartyId, @num, @FirstName, @LastName, @DateBorn, @DateDied, @TermStart, @TermEnd) 

		select @PresidentId = SCOPE_IDENTITY()
	end
	else 
	begin 
		update President 
		set 
			PartyId = @PartyId, 
			Num = @Num, 
			FirstName = @FirstName,
			LastName = @LastName,
			DateBorn = @DateBorn,
			DateDied = @DateDied,
			TermStart = @TermStart, 
			TermEnd = @TermEnd
		where PresidentId = @PresidentId 
	end 


	return @return 
	finished:
end
go 