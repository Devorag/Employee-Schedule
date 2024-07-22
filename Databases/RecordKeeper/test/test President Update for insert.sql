use RecordKeeperDB 
go 

declare @Message varchar (500) = '', @return int, @partyid int, @num int, @presidentid int, 
	@FirstName varchar (100),
	@LastName varchar (100), 
	@DateBorn date, 
	@DateDied datetime2,
	@TermSTart int, 
	@TermEnd int

select top 1 
			@presidentid = p.presidentid, 
			@partyid = p.PartyId,
			@Num = Num, 
			@FirstName = FirstName,
			@LastName = LastName,
			@DateBorn = DateBorn,
			@DateDied = DateBorn,
			@TermStart = TermSTart, 
			@TermEnd = TermEnd
from President p order by p.num 

select @FirstName = reverse (@FirstName), @TermEnd = @TermSTart + 4 

exec  @return = UpdatePresident
	@PresidentId = @presidentid output, 
	@PartyId = @partyid, 
	@Num = @num, 
	@FirstName = @FirstName,
	@LastName = @LastName, 
	@DateBorn = @DateBorn, 
	@DateDied = null,
	@TermSTart = @TermSTart, 
	@TermEnd = @TermEnd, 
	@Message = @Message output 

Select @return, @Message, @presidentid 

select top 1 * from president p where p.PresidentId = @presidentid 

