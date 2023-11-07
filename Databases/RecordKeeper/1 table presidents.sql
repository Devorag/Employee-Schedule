-- SM Excellent! See comments, fix and resubmit.

/*President
    The U.S Government used the data in the presidents table to provide the captions for new monuments engraved into the side of a mountain in NY.
    There was bad data in the table, some term ends and term starts were reversed. 
    So the caption engraved in the mountain says something like Served: 1900 to 1886. This was discovered on opening day by some of the audience.
    It is going to cost 1.4 million dollars to correct that error engraved into the mountain.
    Ensure all bad data possibilities are prevented.
    They have specified a few rules:
        No president's term can begin before 1776 when America became a country
        Term end cannot be before term start.
        A president must be at least 35 years old.
*/


use RecordKeeperDB
drop table if exists president
go
		create table dbo.president(
		PresidentId int not null identity (1000,1) primary key,
-- SM Should be > 0.
		Num int not null CONSTRAINT u_president_Num unique, 
-- SM Don't allow blank.
		FirstName varchar(100) not null, 
-- SM Don't allow blank.
		LastName varchar(100) not null, 
-- SM Don't allow blank.
        Party varchar(50) not null,
-- SM Don't allow future date.
		DateBorn date not null,
		DateDied datetime2,
		TermStart int not null constraint ck_president_term_Start_cannot_Be_Before_1776 check(TermStart >= 1776),
		TermEnd int,
-- SM Also ensure the president is alive durring his full term. You might need to update data file.
		CONSTRAINT ck_president_term_end_Cannot_be_before_term_start CHECK(TermEnd >= TermStart),
		constraint ck_president_must_be_at_least_35_years_old check(TermStart - year(dateborn) >= 35)
	)
go




