-- The first olympic games happened in 1896. No data is allowed to be inserted before that.
insert Medalist (OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
select 1893, 'Summer', 'Athens, Greece', 'Athletics', 'Discus Throw', 'Gold', 'Robert', 'Garrett', 'United States', 1880

  -- No null data is allowed.
insert Medalist (OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
select null, 'Summer', 'Athens, Greece', 'Athletics', 'Discus Throw', 'Gold', 'Robert', 'Garrett', 'United States', 1880

insert Medalist (OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
select 1893, null, 'Athens, Greece', 'Athletics', 'Discus Throw', 'Gold', 'Robert', 'Garrett', 'United States', 1880

insert Medalist (OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
select 1893, 'summer', null, 'Athletics', 'Discus Throw', 'Gold', 'Robert', 'Garrett', 'United States', 1880

insert Medalist (OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
select 1893, 'summer', 'Athens, Greece', null, 'Discus Throw', 'Gold', 'Robert', 'Garrett', 'United States', 1880

insert Medalist (OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
select 1893, 'summer', 'Athens, Greece', 'Athletics', null, 'Gold', 'Robert', 'Garrett', 'United States', 1880

insert Medalist (OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
select 1893, 'summer', 'Athens, Greece', 'Athletics', 'Discus Throw', null, 'Robert', 'Garrett', 'United States', 1880

insert Medalist (OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
select 1893, 'summer', 'Athens, Greece', 'Athletics', 'Discus Throw', 'Gold', null, 'Garrett', 'United States', 1880

insert Medalist (OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
select 1893, 'summer', 'Athens, Greece', 'Athletics', 'Discus Throw', 'Gold', 'Robert', null, 'United States', 1880

insert Medalist (OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
select 1893, 'summer', 'Athens, Greece', 'Athletics', 'Discus Throw', 'Gold', 'Robert', 'Garrett', null, 1880

insert Medalist (OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
select 1893,'summer', 'Athens, Greece', 'Athletics', 'Discus Throw', 'Gold', 'Robert', 'Garrett', 'United States', null

-- Columns should not allow blank data, zeros or negative numbers to be inserted. 

insert Medalist (OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
select 1893, '', 'Athens, Greece', 'Athletics', 'Discus Throw', 'Gold', 'Robert', 'Garrett', 'United States', 1880

insert Medalist (OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
select 1893, 'Summer', '', 'Athletics', 'Discus Throw', 'Gold', 'Robert', 'Garrett', 'United States', 1880

insert Medalist (OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
select 1893, 'Summer', 'Athens, Greece', '', 'Discus Throw', 'Gold', 'Robert', 'Garrett', 'United States', 1880

insert Medalist (OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
select 1893, 'Summer', 'Athens, Greece', 'Athletics', '', 'Gold', 'Robert', 'Garrett', 'United States', 1880

insert Medalist (OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
select 1893, 'Summer', 'Athens, Greece', 'Athletics', 'Discus Throw', '', 'Robert', 'Garrett', 'United States', 1880

insert Medalist (OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
select 1893, 'Summer', 'Athens, Greece', 'Athletics', 'Discus Throw', 'Gold', '', 'Garrett', 'United States', 1880

insert Medalist (OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
select 1893, 'Summer', 'Athens, Greece', 'Athletics', 'Discus Throw', 'Gold', 'Robert', '', 'United States', 1880

insert Medalist (OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
select 1893, 'Summer', 'Athens, Greece', 'Athletics', 'Discus Throw', 'Gold', 'Robert', 'Garrett', '', 1880

insert Medalist (OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
select 1893, 'Summer', 'Athens, Greece', 'Athletics', 'Discus Throw', 'Gold', 'Robert', 'Garrett', 'United States', 0

 --  Medalists must be at least 14 years old in order to compete in olympic games.

 insert Medalist (OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
select 1893, 'Summer', 'Athens, Greece', 'Athletics', 'Discus Throw', 'Gold', 'Robert', 'Garrett', 'United States', 1889

    --  Each olympic year and season can only have one of each medal for each sport and it's sport subcategory.

 insert Medalist (OlympicYear, Season, OlympicLocation, Sport, SportSubcategory, Medal, FirstName, LastName, Country, YearBorn)
select 1893, 'Summer', 'Athens, Greece', 'Athletics', 'Discus Throw', 'silver', 'Robert', 'Garrett', 'United States', 1875
union select 1893,'summer','Athens, Greece', 'Athletics', 'Discus Throw', 'silver', 'Robert', 'Garrett', 'United States', 1875
