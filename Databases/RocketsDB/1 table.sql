use rocketsDB
go 
drop table if exists Journey 
drop table if exists rockets 
go 
create table dbo.rockets(
    RocketsId int not null identity primary key,
    RocketName varchar(50) not null constraint u_rocket_name unique,
    YearBuilt int not null
)
go 

create table dbo.Journey(
    JourneyID int not null identity primary key,
    RocketsId int not null constraint f_rockets_journey foreign key REFERENCES rockets(RocketsId) ,
    PlanetName varchar(50) not null, 
    MilesTraveled int not null, 
    LaunchDate date not null,
    DateReachedDestination date not null,
    DateReturned date not null
)