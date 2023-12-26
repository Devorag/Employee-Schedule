use rocketsDB
go 
delete Journey
delete Rockets

insert Rockets(RocketName, YearBuilt)
select 'Titan', 1988
union select 'Delta', 1989
union select 'Space Shuttle', 1981

insert Journey(RocketsId, PlanetName, MilesTraveled, LaunchDate, DateReachedDestination, DateReturned)
select r.RocketsId, 'Mars', 33000, '1990-11-23', '1991-01-02', '1991-10-23' from rockets r where r.RocketName = 'Titan'
union select r.rocketsId, 'Jupiter', 45000, '1992-01-07', '1992-03-30', '1993-01-01' from rockets r where r.rocketname = 'Titan'
union select r.rocketsId, 'Uranus', 33000, '1990-02-01', '1990-05-08', '1990-12-05' from rockets r where r.rocketname = 'Titan'
union select r.rocketsId, 'Mars', 5436000, '1982-12-17', '1983-02-28', '1984-01-02' from rockets r where r.rocketname = 'Space Shuttle'
union select r.rocketsId, 'Mercury', 76300, '1985-02-06', '1985-05-24', '1985-11-29' from rockets r where r.rocketname = 'Space Shuttle'
union select r.rocketsId, 'Venus', 222200, '1982-03-10', '1982-07-14', '1983-04-13' from rockets r where r.rocketname = 'Space Shuttle'
union select r.rocketsId, 'Uranus', 77770, '1994-01-10', '1994-03-19', '1994-10-21' from rockets r where r.rocketname = 'Delta'
union select r.rocketsId, 'Mercury', 66650, '1996-09-25', '1997-01-22', '1998-01-25' from rockets r where r.rocketname = 'Delta'
union select r.rocketsId, 'Venus', 555550, '1999-02-27', '1999-05-05', '2000-07-02' from rockets r where r.rocketname = 'Delta'