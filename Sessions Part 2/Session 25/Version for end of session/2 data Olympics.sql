use recordkeeperdb
go

delete OlympicSportSubCategoryOlympian
delete OlympicSportSubCategory
delete Olympian
delete Olympics
delete City
delete Country
delete OlympicMedal
delete Season
delete SportSubCategory
delete Sport

insert Season(SeasonName)
select 'Summer'
union select 'Winter'

insert OlympicMedal(OlympicMedalName, OlympicMedalSequence)
select 'Gold', 1
union select 'Silver', 2
union select 'Bronze', 3

insert Country(CountryName)
select 'Algeria'
union select 'Argentina'
union select 'Australia'
union select 'Austria'
union select 'Belarus'
union select 'Belgium'
union select 'Brazil'
union select 'Canada'
union select 'China'
union select 'Croatia'
union select 'Cuba'
union select 'Czech Republic'
union select 'Czechoslovakia'
union select 'Denmark'
union select 'East Germany'
union select 'Ethiopia'
union select 'Finland'
union select 'France'
union select 'Germany'
union select 'Great Britain'
union select 'Greece'
union select 'Hungary'
union select 'Italy'
union select 'Jamaica'
union select 'Japan'
union select 'Kenya'
union select 'Liechtenstein'
union select 'Morocco'
union select 'Netherlands'
union select 'New Zealand'
union select 'Norway'
union select 'Panama'
union select 'Poland'
union select 'Romania'
union select 'Russia'
union select 'South Africa'
union select 'South Korea'
union select 'Soviet Union'
union select 'Spain'
union select 'Sweden'
union select 'Switzerland'
union select 'Trinidad and Tobago'
union select 'Unified Team'
union select 'United States'
union select 'Uzbekistan'
union select 'West Germany'
union select 'Western Australia'
union select 'Yugoslavia'

insert Sport(SportName)
select 'Alpine Skiing'
union select 'Archery'
union select 'Athletics'
union select 'Biathlon'
union select 'Boxing'
union select 'Canoeing'
union select 'Croquet'
union select 'Cross-country Skiing'
union select 'Cycling'
union select 'Diving'
union select 'Fencing'
union select 'Field'
union select 'Figure Skating'
union select 'Freestyle Skiing'
union select 'Gymnastics'
union select 'Luge'
union select 'Nordic Combined'
union select 'Road'
union select 'Shooting'
union select 'Skeleton'
union select 'Ski Jumping'
union select 'Speed Skating'
union select 'Swimming'
union select 'Tennis'
union select 'Trampoline'

insert City(CityName, CountryId)
select 'Athens',  (select c.countryid from Country c where c.CountryName = 'Greece')
union select 'Barcelona',  (select c.countryid from Country c where c.CountryName = 'Spain')
union select 'Beijing',  (select c.countryid from Country c where c.CountryName = 'china')
union select 'Chamonix',  (select c.countryid from Country c where c.CountryName = 'France')
union select 'Cortina d''Ampezzo',  (select c.countryid from Country c where c.CountryName = 'Italy')
union select 'Garmisch-Partenkirchen',  (select c.countryid from Country c where c.CountryName = 'Germany')
union select 'Grenoble',  (select c.countryid from Country c where c.CountryName = 'France')
union select 'Innsbruck',  (select c.countryid from Country c where c.CountryName = 'Austria')
union select 'Lake Placid',  (select c.countryid from Country c where c.CountryName = 'United States')
union select 'London',  (select c.countryid from Country c where c.CountryName = 'Great Britain')
union select 'Los Angeles',  (select c.countryid from Country c where c.CountryName = 'United States')
union select 'Montreal',  (select c.countryid from Country c where c.CountryName = 'Canada')
union select 'Nagano',  (select c.countryid from Country c where c.CountryName = 'Japan')
union select 'Oslo',  (select c.countryid from Country c where c.CountryName = 'Norway')
union select 'Paris',  (select c.countryid from Country c where c.CountryName = 'France')
union select 'Rome',  (select c.countryid from Country c where c.CountryName = 'Italy')
union select 'Salt Lake City',  (select c.countryid from Country c where c.CountryName = 'United States')
union select 'Sapporo',  (select c.countryid from Country c where c.CountryName = 'Japan')
union select 'Sarajevo',  (select c.countryid from Country c where c.CountryName = 'Yugoslavia')
union select 'Squaw Valley',  (select c.countryid from Country c where c.CountryName = 'United States')
union select 'St. Louis',  (select c.countryid from Country c where c.CountryName = 'United States')
union select 'St. Moritz',  (select c.countryid from Country c where c.CountryName = 'Switzerland')
union select 'Stockholm',  (select c.countryid from Country c where c.CountryName = 'Sweden')
union select 'Sydney',  (select c.countryid from Country c where c.CountryName = 'Australia')
union select 'Tokyo',  (select c.countryid from Country c where c.CountryName = 'Japan')
union select 'Turin',  (select c.countryid from Country c where c.CountryName = 'Italy')

insert SportSubCategory(SportSubCategoryName, SportId)
 select '10 Km',  (select s.sportid from sport s where s.SportName = 'Cross-country Skiing')
union select '10 Km',  (select s.sportid from sport s where s.SportName = 'Cycling')
union select '10 Metre Platform',  (select s.sportid from sport s where s.SportName = 'Diving')
union select '10 Miles Walk',  (select s.sportid from sport s where s.SportName = 'Athletics')
union select '100 M Freestyle',  (select s.sportid from sport s where s.SportName = 'Swimming')
union select '100 M',  (select s.sportid from sport s where s.SportName = 'Athletics')
union select '110 Metres Hurdles',  (select s.sportid from sport s where s.SportName = 'Athletics')
union select '18 Km',  (select s.sportid from sport s where s.SportName = 'Cross-country Skiing')
union select '200 M',  (select s.sportid from sport s where s.SportName = 'Athletics')
union select '200 Metres',  (select s.sportid from sport s where s.SportName = 'Athletics')
union select '2500 Metres Steeplechase',  (select s.sportid from sport s where s.SportName = 'Athletics')
union select '3 M Springboard',  (select s.sportid from sport s where s.SportName = 'Diving')
union select '300 M Military Rifle, three positions',  (select s.sportid from sport s where s.SportName = 'Shooting')
union select '50 Km',  (select s.sportid from sport s where s.SportName = 'Cross-country Skiing')
union select '5000 Metres',  (select s.sportid from sport s where s.SportName = 'Athletics')
union select '5000 Metres',  (select s.sportid from sport s where s.SportName = 'Speed Skating')
union select 'Au Chapelet 50 Metres',  (select s.sportid from sport s where s.SportName = 'Archery')
union select 'C-1 1000 M',  (select s.sportid from sport s where s.SportName = 'Canoeing')
union select 'Club Swinging',  (select s.sportid from sport s where s.SportName = 'Gymnastics')
union select 'Discus Throw',  (select s.sportid from sport s where s.SportName = 'Athletics')
union select 'Featherweight',  (select s.sportid from sport s where s.SportName = 'Boxing')
union select 'Flyweight',  (select s.sportid from sport s where s.SportName = 'Boxing')
union select 'Foil, Individual',  (select s.sportid from sport s where s.SportName = 'Fencing')
union select 'Freestyle Javelin',  (select s.sportid from sport s where s.SportName = 'Athletics')
union select 'Heavyweight',  (select s.sportid from sport s where s.SportName = 'Boxing')
union select 'High Jump',  (select s.sportid from sport s where s.SportName = 'Field')
union select 'Individual Road Race',  (select s.sportid from sport s where s.SportName = 'Cycling')
union select 'Individual Time Trial',  (select s.sportid from sport s where s.SportName = 'Cycling')
union select 'K-1 1000 Metres',  (select s.sportid from sport s where s.SportName = 'Canoeing')
union select 'Ladies'' Singles',  (select s.sportid from sport s where s.SportName = 'Figure Skating')
union select 'Long Jump',  (select s.sportid from sport s where s.SportName = 'Field')
union select 'Marathon',  (select s.sportid from sport s where s.SportName = 'Athletics')
union select 'Men''s 1,000 Metres',  (select s.sportid from sport s where s.SportName = 'Speed Skating')
union select 'Men''s 100 M',  (select s.sportid from sport s where s.SportName = 'Athletics')
union select 'Men''s 100 Metre Freestyle',  (select s.sportid from sport s where s.SportName = 'Swimming')
union select 'Men''s 10000 Metres',  (select s.sportid from sport s where s.SportName = 'Speed Skating')
union select 'Men''s 15 Km',  (select s.sportid from sport s where s.SportName = 'Cross-country Skiing')
union select 'Men''s 20 Km',  (select s.sportid from sport s where s.SportName = 'Biathlon')
union select 'Men''s 5,000 Metres',  (select s.sportid from sport s where s.SportName = 'Speed Skating')
union select 'Men''s 50 Km freestyle',  (select s.sportid from sport s where s.SportName = 'Cross-country Skiing')
union select 'Men''s 500 Metres',  (select s.sportid from sport s where s.SportName = 'Speed Skating')
union select 'Men''s 800 M',  (select s.sportid from sport s where s.SportName = 'Athletics')
union select 'Men''s Double York Round',  (select s.sportid from sport s where s.SportName = 'Archery')
union select 'Men''s Downhill',  (select s.sportid from sport s where s.SportName = 'Alpine Skiing')
union select 'Men''s Giant Slalom',  (select s.sportid from sport s where s.SportName = 'Alpine Skiing')
union select 'Men''s Individual',  (select s.sportid from sport s where s.SportName = 'Archery')
union select 'Men''s Individual',  (select s.sportid from sport s where s.SportName = 'Biathlon')
union select 'Men''s Individual',  (select s.sportid from sport s where s.SportName = 'Nordic Combined')
union select 'Men''s Individual',  (select s.sportid from sport s where s.SportName = 'Skeleton')
union select 'Men''s Individual',  (select s.sportid from sport s where s.SportName = 'Ski Jumping')
union select 'Men''s Marathon',  (select s.sportid from sport s where s.SportName = 'Road')
union select 'Men''s Moguls',  (select s.sportid from sport s where s.SportName = 'Freestyle Skiing')
union select 'Men''s Normal Hill',  (select s.sportid from sport s where s.SportName = 'Ski Jumping')
union select 'Men''s Singles',  (select s.sportid from sport s where s.SportName = 'Figure Skating')
union select 'Men''s Singles',  (select s.sportid from sport s where s.SportName = 'Luge')
union select 'Men''s Slalom',  (select s.sportid from sport s where s.SportName = 'Alpine Skiing')
union select 'Men''s Sprint',  (select s.sportid from sport s where s.SportName = 'Biathlon')
union select 'Men''s Time Trial',  (select s.sportid from sport s where s.SportName = 'Cycling')
union select 'Men''s',  (select s.sportid from sport s where s.SportName = 'Trampoline')
union select 'Mens''',  (select s.sportid from sport s where s.SportName = 'Archery')
union select 'Road Race',  (select s.sportid from sport s where s.SportName = 'Cycling')
union select 'Sabre',  (select s.sportid from sport s where s.SportName = 'Fencing')
union select 'Sailors 100 M Freestyle',  (select s.sportid from sport s where s.SportName = 'Swimming')
union select 'Singles, One Ball',  (select s.sportid from sport s where s.SportName = 'Croquet')
union select 'Uneven Bars',  (select s.sportid from sport s where s.SportName = 'Gymnastics')
union select 'Vault',  (select s.sportid from sport s where s.SportName = 'Gymnastics')
union select 'Women''s 1,500 Metres',  (select s.sportid from sport s where s.SportName = 'Speed Skating')
union select 'Women''s 10 Km',  (select s.sportid from sport s where s.SportName = 'Cross-country Skiing')
union select 'Women''s 100 M',  (select s.sportid from sport s where s.SportName = 'Athletics')
union select 'Women''s 1500 metres',  (select s.sportid from sport s where s.SportName = 'Speed Skating')
union select 'Women''s 200 Metre Breaststroke',  (select s.sportid from sport s where s.SportName = 'Swimming')
union select 'Women''s 3 Metre Springboard',  (select s.sportid from sport s where s.SportName = 'Diving')
union select 'Women''s 30 Km',  (select s.sportid from sport s where s.SportName = 'Cross-country Skiing')
union select 'Women''s 80 M Hurdles',  (select s.sportid from sport s where s.SportName = 'Athletics')
union select 'Women''s Aerials',  (select s.sportid from sport s where s.SportName = 'Freestyle Skiing')
union select 'Women''s Combined 5 Km + 10 km pursuit',  (select s.sportid from sport s where s.SportName = 'Cross-country Skiing')
union select 'Women''s Combined',  (select s.sportid from sport s where s.SportName = 'Alpine Skiing')
union select 'Women''s Double Columbia Round',  (select s.sportid from sport s where s.SportName = 'Archery')
union select 'Women''s Downhill',  (select s.sportid from sport s where s.SportName = 'Alpine Skiing')
union select 'Women''s Individual',  (select s.sportid from sport s where s.SportName = 'Archery')
union select 'Women''s Indoor Singles',  (select s.sportid from sport s where s.SportName = 'Tennis')
union select 'Women''s Javelin Throw',  (select s.sportid from sport s where s.SportName = 'Athletics')
union select 'Women''s Marathon',  (select s.sportid from sport s where s.SportName = 'Road')
union select 'Women''s Singles',  (select s.sportid from sport s where s.SportName = 'Figure Skating')
union select 'Women''s Singles',  (select s.sportid from sport s where s.SportName = 'Luge')
union select 'Women''s Slalom',  (select s.sportid from sport s where s.SportName = 'Alpine Skiing')
union select 'Women''s Super-G',  (select s.sportid from sport s where s.SportName = 'Alpine Skiing')
union select 'Women''s',  (select s.sportid from sport s where s.SportName = 'Trampoline')

insert Olympics(OlympicYear, SeasonId, CityId)
select 1896, (select s.seasonid from season s where s.seasonname = 'Summer') , (select c.cityid from city c where c.cityname = 'Athens')
union select 1900, (select s.seasonid from season s where s.seasonname = 'Summer') , (select c.cityid from city c where c.cityname = 'Paris')
union select 1904, (select s.seasonid from season s where s.seasonname = 'Summer') , (select c.cityid from city c where c.cityname = 'St. Louis')
union select 1908, (select s.seasonid from season s where s.seasonname = 'Summer') , (select c.cityid from city c where c.cityname = 'London')
union select 1912, (select s.seasonid from season s where s.seasonname = 'Summer') , (select c.cityid from city c where c.cityname = 'Stockholm')
union select 1924, (select s.seasonid from season s where s.seasonname = 'Winter') , (select c.cityid from city c where c.cityname = 'Chamonix')
union select 1928, (select s.seasonid from season s where s.seasonname = 'Winter') , (select c.cityid from city c where c.cityname = 'St. Moritz')
union select 1932, (select s.seasonid from season s where s.seasonname = 'Summer') , (select c.cityid from city c where c.cityname = 'Los Angeles')
union select 1932, (select s.seasonid from season s where s.seasonname = 'Winter') , (select c.cityid from city c where c.cityname = 'Lake Placid')
union select 1936, (select s.seasonid from season s where s.seasonname = 'Winter') , (select c.cityid from city c where c.cityname = 'Garmisch-Partenkirchen')
union select 1948, (select s.seasonid from season s where s.seasonname = 'Summer') , (select c.cityid from city c where c.cityname = 'London')
union select 1948, (select s.seasonid from season s where s.seasonname = 'Winter') , (select c.cityid from city c where c.cityname = 'St. Moritz')
union select 1952, (select s.seasonid from season s where s.seasonname = 'Winter') , (select c.cityid from city c where c.cityname = 'Oslo')
union select 1956, (select s.seasonid from season s where s.seasonname = 'Winter') , (select c.cityid from city c where c.cityname = 'Cortina d''Ampezzo')
union select 1960, (select s.seasonid from season s where s.seasonname = 'Summer') , (select c.cityid from city c where c.cityname = 'Rome')
union select 1960, (select s.seasonid from season s where s.seasonname = 'Winter') , (select c.cityid from city c where c.cityname = 'Squaw Valley')
union select 1964, (select s.seasonid from season s where s.seasonname = 'Summer') , (select c.cityid from city c where c.cityname = 'Tokyo')
union select 1964, (select s.seasonid from season s where s.seasonname = 'Winter') , (select c.cityid from city c where c.cityname = 'Innsbruck')
union select 1968, (select s.seasonid from season s where s.seasonname = 'Winter') , (select c.cityid from city c where c.cityname = 'Grenoble')
union select 1972, (select s.seasonid from season s where s.seasonname = 'Winter') , (select c.cityid from city c where c.cityname = 'Sapporo')
union select 1976, (select s.seasonid from season s where s.seasonname = 'Summer') , (select c.cityid from city c where c.cityname = 'Montreal')
union select 1976, (select s.seasonid from season s where s.seasonname = 'Winter') , (select c.cityid from city c where c.cityname = 'Innsbruck')
union select 1980, (select s.seasonid from season s where s.seasonname = 'Winter') , (select c.cityid from city c where c.cityname = 'Lake Placid')
union select 1984, (select s.seasonid from season s where s.seasonname = 'Winter') , (select c.cityid from city c where c.cityname = 'Sarajevo')
union select 1992, (select s.seasonid from season s where s.seasonname = 'Summer') , (select c.cityid from city c where c.cityname = 'Barcelona')
union select 1998, (select s.seasonid from season s where s.seasonname = 'Winter') , (select c.cityid from city c where c.cityname = 'Nagano')
union select 2000, (select s.seasonid from season s where s.seasonname = 'Summer') , (select c.cityid from city c where c.cityname = 'Sydney')
union select 2002, (select s.seasonid from season s where s.seasonname = 'Winter') , (select c.cityid from city c where c.cityname = 'Salt Lake City')
union select 2004, (select s.seasonid from season s where s.seasonname = 'Summer') , (select c.cityid from city c where c.cityname = 'Athens')
union select 2006, (select s.seasonid from season s where s.seasonname = 'Winter') , (select c.cityid from city c where c.cityname = 'Turin')
union select 2008, (select s.seasonid from season s where s.seasonname = 'Summer') , (select c.cityid from city c where c.cityname = 'Beijing')

insert Olympian(CountryId, FirstName, LastName, YearBorn)
 select (select c.countryid from country c where c.countryname = 'Greece'), 'Sotirios', 'Versis', 1879
union select (select c.countryid from country c where c.countryname = 'United States'), 'Robert', 'Garrett', 1875
union select (select c.countryid from country c where c.countryname = 'Greece'), 'Panagiotis', 'Paraskevopoulos', 1875
union select (select c.countryid from country c where c.countryname = 'Austria'), 'Adolf', 'Schmal', 1872
union select (select c.countryid from country c where c.countryname = 'France'), 'Paul', 'Masson', 1876
union select (select c.countryid from country c where c.countryname = 'France'), 'Léon', 'Flameng', 1877
union select (select c.countryid from country c where c.countryname = 'Denmark'), 'Holger', 'Nielsen', 1866
union select (select c.countryid from country c where c.countryname = 'Greece'), 'Ioannis', 'Georgiadis', 1876
union select (select c.countryid from country c where c.countryname = 'Greece'), 'Tilemachos', 'Karakalos', 1866
union select (select c.countryid from country c where c.countryname = 'Greece'), 'Dimitrios', 'Drivas', 1872
union select (select c.countryid from country c where c.countryname = 'Greece'), 'Ioannis', 'Malokinis', 1880
union select (select c.countryid from country c where c.countryname = 'Greece'), 'Spyridon', 'Chazapis', 1872
union select (select c.countryid from country c where c.countryname = 'France'), 'Eugène', 'Mougin', 1852
union select (select c.countryid from country c where c.countryname = 'France'), 'Henri', 'Helle', 1873
union select (select c.countryid from country c where c.countryname = 'France'), 'Jean', 'Chastanié', 1875
union select (select c.countryid from country c where c.countryname = 'Canada'), 'George', 'Orton', 1873
union select (select c.countryid from country c where c.countryname = 'Great Britain'), 'Sidney', 'Robinson', 1876
union select (select c.countryid from country c where c.countryname = 'France'), 'Chrétien', 'Waydelich', 1841
union select (select c.countryid from country c where c.countryname = 'France'), 'Gaston', 'Aumoitte', 1884
union select (select c.countryid from country c where c.countryname = 'France'), 'Georges', 'Johin', 1877
union select (select c.countryid from country c where c.countryname = 'United States'), 'William', 'Thompson', 1848
union select (select c.countryid from country c where c.countryname = 'United States'), 'George', 'Bryant', 1878
union select (select c.countryid from country c where c.countryname = 'United States'), 'Robert', 'Williams', 1841
union select (select c.countryid from country c where c.countryname = 'United States'), 'Eliza', 'Pollock', 1840
union select (select c.countryid from country c where c.countryname = 'United States'), 'Matilda', 'Howell', 1859
union select (select c.countryid from country c where c.countryname = 'United States'), 'Emma', 'Cooke', 1848
union select (select c.countryid from country c where c.countryname = 'Cuba'), 'Charles', 'Tatham', 1854
union select (select c.countryid from country c where c.countryname = 'Cuba'), 'Ramón', 'Fonst', 1883
union select (select c.countryid from country c where c.countryname = 'Cuba'), 'Albertson', 'Van Zo Post', 1866
union select (select c.countryid from country c where c.countryname = 'United States'), 'Ralph', 'Wilson', 1880
union select (select c.countryid from country c where c.countryname = 'United States'), 'Edward', 'Hennig', 1879
union select (select c.countryid from country c where c.countryname = 'United States'), 'Emil', 'Voigt', 1879
union select (select c.countryid from country c where c.countryname = 'Great Britain'), 'Edward', 'Spencer', 1881
union select (select c.countryid from country c where c.countryname = 'Great Britain'), 'George', 'Larner', 1875
union select (select c.countryid from country c where c.countryname = 'Great Britain'), 'Ernest', 'Webb', 1874
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Arne', 'Halse', 1887
union select (select c.countryid from country c where c.countryname = 'Sweden'), 'Eric', 'Lemming', 1880
union select (select c.countryid from country c where c.countryname = 'Greece'), 'Michalis', 'Dorizas', 1886
union select (select c.countryid from country c where c.countryname = 'Great Britain'), 'Frank', 'Parks', 1875
union select (select c.countryid from country c where c.countryname = 'Great Britain'), 'Albert', 'Oldman', 1883
union select (select c.countryid from country c where c.countryname = 'Great Britain'), 'Sidney', 'Evans', 1881
union select (select c.countryid from country c where c.countryname = 'Sweden'), 'Märtha', 'Adlerstråhle', 1868
union select (select c.countryid from country c where c.countryname = 'Great Britain'), 'Gwendoline', 'Eastlake-Smith', 1883
union select (select c.countryid from country c where c.countryname = 'Great Britain'), 'Alice', 'Greene', 1879
union select (select c.countryid from country c where c.countryname = 'United States'), 'Martin', 'Hawkins', 1888
union select (select c.countryid from country c where c.countryname = 'United States'), 'Fred', 'Kelly', 1891
union select (select c.countryid from country c where c.countryname = 'United States'), 'James', 'Wendell', 1890
union select (select c.countryid from country c where c.countryname = 'United States'), 'Carl', 'Schutte', 1887
union select (select c.countryid from country c where c.countryname = 'South Africa'), 'Rudolph', 'Lewis', 1887
union select (select c.countryid from country c where c.countryname = 'Great Britain'), 'Freddie', 'Grubb', 1887
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Engebret', 'Skogen', 1887
union select (select c.countryid from country c where c.countryname = 'Hungary'), 'Sándor', 'Prokopp', 1887
union select (select c.countryid from country c where c.countryname = 'United States'), 'Carl', 'Osburn', 1884
union select (select c.countryid from country c where c.countryname = 'Great Britain'), 'Ethel', 'Muckelt', 1885
union select (select c.countryid from country c where c.countryname = 'Austria'), 'Herma', 'Szabo', 1902
union select (select c.countryid from country c where c.countryname = 'United States'), 'Beatrix', 'Loughran', 1900
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Roald', 'Larsen', 1898
union select (select c.countryid from country c where c.countryname = 'Finland'), 'Clas', 'Thunberg', 1893
union select (select c.countryid from country c where c.countryname = 'Finland'), 'Julius', 'Skutnabb', 1889
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Reidar', 'Ødegaard', 1901
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Johan', 'Grøttumsbråten', 1899
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Ole', 'Hegge', 1898
union select (select c.countryid from country c where c.countryname = 'Great Britain'), 'David', 'Carnegie', 1901
union select (select c.countryid from country c where c.countryname = 'United States'), 'Jennison', 'Heaton', 1904
union select (select c.countryid from country c where c.countryname = 'United States'), 'John', 'Heaton', 1908
union select (select c.countryid from country c where c.countryname = 'Czechoslovakia'), 'Rudolf', 'Burkert', 1904
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Alf', 'Andersen', 1906
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Sigmund', 'Ruud', 1907
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Bernt', 'Evensen', 1905
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Ivar', 'Ballangrud', 1904
union select (select c.countryid from country c where c.countryname = 'Finland'), 'Julius', 'Skutnabb', 1889
union select (select c.countryid from country c where c.countryname = 'United States'), 'Wilhelmina', 'von Bremen', 1909
union select (select c.countryid from country c where c.countryname = 'Poland'), 'Stanislawa', 'Walasiewicz', 1911
union select (select c.countryid from country c where c.countryname = 'Canada'), 'Hilda', 'Strike', 1910
union select (select c.countryid from country c where c.countryname = 'Sweden'), 'Allan', 'Carlsson', 1910
union select (select c.countryid from country c where c.countryname = 'Argentina'), 'Carmelo', 'Robledo', 1912
union select (select c.countryid from country c where c.countryname = 'Germany'), 'Josef', 'Schleinkofer', 1910
union select (select c.countryid from country c where c.countryname = 'Sweden'), 'Bernhard', 'Britz', 1906
union select (select c.countryid from country c where c.countryname = 'Italy'), 'Attilio', 'Pavesi', 1910
union select (select c.countryid from country c where c.countryname = 'Italy'), 'Guglielmo', 'Segato', 1906
union select (select c.countryid from country c where c.countryname = 'United States'), 'Marion', 'Roper', 1910
union select (select c.countryid from country c where c.countryname = 'United States'), 'Dorothy', 'Poynton-Hill', 1915
union select (select c.countryid from country c where c.countryname = 'United States'), 'Georgia', 'Coleman', 1912
union select (select c.countryid from country c where c.countryname = 'Canada'), 'Montgomery', 'Wilson', 1909
union select (select c.countryid from country c where c.countryname = 'Austria'), 'Karl', 'Schäfer', 1909
union select (select c.countryid from country c where c.countryname = 'Sweden'), 'Gillis', 'Grafström', 1893
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Hans', 'Vinjarengen', 1905
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Johan', 'Grøttumsbråten', 1899
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Ole', 'Stenen', 1903
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Kaare', 'Walberg', 1912
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Birger', 'Ruud', 1911
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Hans', 'Beck', 1911
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Laila', 'Schou Nilsen', 1919
union select (select c.countryid from country c where c.countryname = 'Germany'), 'Christl', 'Cranz', 1914
union select (select c.countryid from country c where c.countryname = 'Germany'), 'Käthe', 'Grasegger', 1917
union select (select c.countryid from country c where c.countryname = 'Finland'), 'Pekka', 'Niemi', 1909
union select (select c.countryid from country c where c.countryname = 'Sweden'), 'Erik', 'Larsson', 1912
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Oddbjørn', 'Hagen', 1908
union select (select c.countryid from country c where c.countryname = 'Sweden'), 'Nils-Joel', 'Englund', 1907
union select (select c.countryid from country c where c.countryname = 'Sweden'), 'Elis', 'Wiklund', 1909
union select (select c.countryid from country c where c.countryname = 'Sweden'), 'Axel', 'Wikström', 1907
union select (select c.countryid from country c where c.countryname = 'Sweden'), 'Vivi-Anne', 'Hultén', 1911
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Sonja', 'Henie', 1912
union select (select c.countryid from country c where c.countryname = 'Great Britain'), 'Cecilia', 'Colledge', 1920
union select (select c.countryid from country c where c.countryname = 'Panama'), 'Lloyd', 'La Beach', 1922
union select (select c.countryid from country c where c.countryname = 'United States'), 'Harrison', 'Dillard', 1923
union select (select c.countryid from country c where c.countryname = 'United States'), 'Barney', 'Ewell', 1918
union select (select c.countryid from country c where c.countryname = 'Western Australia'), 'Shirley', 'Strickland', 1925
union select (select c.countryid from country c where c.countryname = 'Netherlands'), 'Fanny', 'Blankers-Koen', 1918
union select (select c.countryid from country c where c.countryname = 'Great Britain'), 'Maureen', 'Gardner', 1928
union select (select c.countryid from country c where c.countryname = 'South Korea'), 'Han', 'Soo-ann', 1926
union select (select c.countryid from country c where c.countryname = 'Argentina'), 'Pascual', 'Pérez', 1926
union select (select c.countryid from country c where c.countryname = 'Italy'), 'Spartaco', 'Bandinelli', 1921
union select (select c.countryid from country c where c.countryname = 'United States'), 'Patsy', 'Elsener', 1929
union select (select c.countryid from country c where c.countryname = 'United States'), 'Vicki', 'Draves', 1924
union select (select c.countryid from country c where c.countryname = 'United States'), 'Zoe Ann', 'Olsen-Jensen', 1931
union select (select c.countryid from country c where c.countryname = 'Austria'), 'Resi', 'Hammerer', 1925
union select (select c.countryid from country c where c.countryname = 'Switzerland'), 'Hedy', 'Schlunegger', 1923
union select (select c.countryid from country c where c.countryname = 'Austria'), 'Trude', 'Beiser', 1927
union select (select c.countryid from country c where c.countryname = 'Sweden'), 'Gunnar', 'Eriksson', 1921
union select (select c.countryid from country c where c.countryname = 'Sweden'), 'Martin', 'Lundström', 1918
union select (select c.countryid from country c where c.countryname = 'Sweden'), 'Nils', 'Östensson', 1918
union select (select c.countryid from country c where c.countryname = 'Austria'), 'Edi', 'Rada', 1922
union select (select c.countryid from country c where c.countryname = 'United States'), 'Dick', 'Button', 1929
union select (select c.countryid from country c where c.countryname = 'Switzerland'), 'Hans', 'Gerschwiler', 1920
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Thorleif', 'Schjelderup', 1920
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Petter', 'Hugsted', 1921
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Birger', 'Ruud', 1911
union select (select c.countryid from country c where c.countryname = 'Austria'), 'Toni', 'Spiss', 1930
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Stein', 'Eriksen', 1927
union select (select c.countryid from country c where c.countryname = 'Austria'), 'Christian', 'Pravda', 1927
union select (select c.countryid from country c where c.countryname = 'Germany'), 'Annemarie', 'Buchner', 1924
union select (select c.countryid from country c where c.countryname = 'United States'), 'Andrea Mead', 'Lawrence', 1932
union select (select c.countryid from country c where c.countryname = 'Germany'), 'Ossi', 'Reichert', 1925
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Sverre', 'Stenersen', 1926
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Simon', 'Slåttvik', 1917
union select (select c.countryid from country c where c.countryname = 'Finland'), 'Heikki', 'Hasu', 1926
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Sverre Ingolf', 'Haugli', 1925
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Hjalmar', 'Andersen', 1923
union select (select c.countryid from country c where c.countryname = 'Netherlands'), 'Kees', 'Broekman', 1927
union select (select c.countryid from country c where c.countryname = 'Canada'), 'Lucile', 'Wheeler', 1935
union select (select c.countryid from country c where c.countryname = 'Switzerland'), 'Madeleine', 'Berthod', 1931
union select (select c.countryid from country c where c.countryname = 'Switzerland'), 'Frieda', 'Dänzer', 1930
union select (select c.countryid from country c where c.countryname = 'Poland'), 'Franciszek', 'Gasienica Gron', 1931
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Sverre', 'Stenersen', 1926
union select (select c.countryid from country c where c.countryname = 'Sweden'), 'Bengt', 'Eriksson', 1931
union select (select c.countryid from country c where c.countryname = 'Germany'), 'Harry', 'Glaß', 1930
union select (select c.countryid from country c where c.countryname = 'Finland'), 'Antti', 'Hyvärinen', 1932
union select (select c.countryid from country c where c.countryname = 'Finland'), 'Aulis', 'Kallakorpi', 1929
union select (select c.countryid from country c where c.countryname = 'New Zealand'), 'Barry', 'Magee', 1934
union select (select c.countryid from country c where c.countryname = 'Ethiopia'), 'Abebe', 'Bikila', 1932
union select (select c.countryid from country c where c.countryname = 'Morocco'), 'Rhadi', 'Ben Abdesselam', 1929
union select (select c.countryid from country c where c.countryname = 'Romania'), 'Leon', 'Rotman', 1934
union select (select c.countryid from country c where c.countryname = 'Hungary'), 'János', 'Parti', 1932
union select (select c.countryid from country c where c.countryname = 'Soviet Union'), 'Aleksandr', 'Silayev', 1928
union select (select c.countryid from country c where c.countryname = 'Belgium'), 'Willy', 'Vanden Berghen', 1939
union select (select c.countryid from country c where c.countryname = 'Soviet Union'), ' Viktor', 'Kapitonov', 1933
union select (select c.countryid from country c where c.countryname = 'Italy'), 'Livio', 'Trapè', 1937
union select (select c.countryid from country c where c.countryname = 'Soviet Union'), 'Larisa', 'Latynina', 1934
union select (select c.countryid from country c where c.countryname = 'Soviet Union'), 'Margarita', 'Nikolaeva', 1935
union select (select c.countryid from country c where c.countryname = 'Soviet Union'), 'Sofia', 'Muratova', 1929
union select (select c.countryid from country c where c.countryname = 'France'), 'Guy', 'Périllat', 1940
union select (select c.countryid from country c where c.countryname = 'France'), 'Jean', 'Vuarnet', 1933
union select (select c.countryid from country c where c.countryname = 'Germany'), 'Hans-Peter', 'Lanig', 1935
union select (select c.countryid from country c where c.countryname = 'Soviet Union'), 'Aleksandr', 'Privalov', 1933
union select (select c.countryid from country c where c.countryname = 'Sweden'), 'Klas', 'Lestander', 1931
union select (select c.countryid from country c where c.countryname = 'Finland'), 'Antti', 'Tyrväinen', 1933
union select (select c.countryid from country c where c.countryname = 'Soviet Union'), 'Radya', 'Yeroshina', 1930
union select (select c.countryid from country c where c.countryname = 'Soviet Union'), 'Maria', 'Gusakova', 1931
union select (select c.countryid from country c where c.countryname = 'Soviet Union'), 'Lyubov', 'Kozyreva', 1929
union select (select c.countryid from country c where c.countryname = 'Austria'), 'Otto', 'Leodolter', 1936
union select (select c.countryid from country c where c.countryname = 'Germany'), 'Helmut', 'Recknagel', 1937
union select (select c.countryid from country c where c.countryname = 'Finland'), 'Niilo', 'Halonen', 1940
union select (select c.countryid from country c where c.countryname = 'Soviet Union'), 'Rafayel', 'Grach', 1932
union select (select c.countryid from country c where c.countryname = 'Soviet Union'), 'Yevgeny', 'Grishin', 1931
union select (select c.countryid from country c where c.countryname = 'United States'), 'Bill', 'Disney', 1932
union select (select c.countryid from country c where c.countryname = 'Trinidad and Tobago'), 'Edwin', 'Roberts', 1941
union select (select c.countryid from country c where c.countryname = 'United States'), 'Henry', 'Carr', 1941
union select (select c.countryid from country c where c.countryname = 'United States'), 'Paul', 'Drayton', 1939
union select (select c.countryid from country c where c.countryname = 'Romania'), 'Aurel', 'Vernescu', 1939
union select (select c.countryid from country c where c.countryname = 'Sweden'), 'Rolf', 'Peterson', 1944
union select (select c.countryid from country c where c.countryname = 'Hungary'), 'Mihály', 'Hesz', 1943
union select (select c.countryid from country c where c.countryname = 'Belgium'), 'Walter', 'Godefroot', 1943
union select (select c.countryid from country c where c.countryname = 'Italy'), 'Mario', 'Zanin', 1940
union select (select c.countryid from country c where c.countryname = 'Denmark'), 'Kjell', 'Rodian', 1942
union select (select c.countryid from country c where c.countryname = 'United States'), 'Lawrence', 'Andreasen', 1945
union select (select c.countryid from country c where c.countryname = 'United States'), 'Kenneth', 'Sitzberger', 1945
union select (select c.countryid from country c where c.countryname = 'United States'), 'Frank', 'Gorman', 1937
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Olav', 'Jordet', 1939
union select (select c.countryid from country c where c.countryname = 'Soviet Union'), 'Vladimir', 'Melanin', 1933
union select (select c.countryid from country c where c.countryname = 'Soviet Union'), 'Aleksandr', 'Privalov', 1933
union select (select c.countryid from country c where c.countryname = 'Soviet Union'), 'Maria', 'Gusakova', 1931
union select (select c.countryid from country c where c.countryname = 'Soviet Union'), 'Klavdiya', 'Boyarskikh', 1939
union select (select c.countryid from country c where c.countryname = 'Soviet Union'), 'Yevdokiya', 'Mekshilo', 1931
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Torgeir', 'Brandtzæg', 1941
union select (select c.countryid from country c where c.countryname = 'Finland'), 'Veikko', 'Kankkonen', 1940
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Toralf', 'Engan', 1936
union select (select c.countryid from country c where c.countryname = 'Soviet Union'), 'Berta', 'Kolokoltseva', 1937
union select (select c.countryid from country c where c.countryname = 'Soviet Union'), 'Lidiya', 'Skoblikova', 1939
union select (select c.countryid from country c where c.countryname = 'Finland'), 'Kaija', 'Mustonen', 1941
union select (select c.countryid from country c where c.countryname = 'Austria'), 'Christl', 'Haas', 1943
union select (select c.countryid from country c where c.countryname = 'Austria'), 'Olga', 'Pall', 1947
union select (select c.countryid from country c where c.countryname = 'France'), 'Isabelle', 'Mir', 1949
union select (select c.countryid from country c where c.countryname = 'Sweden'), 'Gunnar', 'Larsson', 1944
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Harald', 'Grønningen', 1934
union select (select c.countryid from country c where c.countryname = 'Finland'), 'Eero', 'Mäntyranta', 1937
union select (select c.countryid from country c where c.countryname = 'Czechoslovakia'), 'Hana', 'Mašková', 1949
union select (select c.countryid from country c where c.countryname = 'United States'), 'Peggy', 'Fleming', 1948
union select (select c.countryid from country c where c.countryname = 'East Germany'), 'Gabriele', 'Seyfert', 1948
union select (select c.countryid from country c where c.countryname = 'Sweden'), 'Örjan', 'Sandler', 1940
union select (select c.countryid from country c where c.countryname = 'Sweden'), 'Johnny', 'Höglin', 1943
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Fred', 'Anton Maier', 1938
union select (select c.countryid from country c where c.countryname = 'Sweden'), 'Lars-Göran', 'Arwidson', 1946
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Magnar', 'Solberg', 1937
union select (select c.countryid from country c where c.countryname = 'East Germany'), 'Hansjörg', 'Knauthe', 1944
union select (select c.countryid from country c where c.countryname = 'Finland'), 'Marjatta', 'Kajosmaa', 1938
union select (select c.countryid from country c where c.countryname = 'Soviet Union'), 'Galina', 'Kulakova', 1942
union select (select c.countryid from country c where c.countryname = 'Soviet Union'), 'Alevtina', 'Olyunina', 1942
union select (select c.countryid from country c where c.countryname = 'East Germany'), 'Wolfram', 'Fiedler', 1951
union select (select c.countryid from country c where c.countryname = 'East Germany'), 'Wolfgang', 'Scheidel', 1943
union select (select c.countryid from country c where c.countryname = 'East Germany'), 'Harald', 'Ehrig', 1949
union select (select c.countryid from country c where c.countryname = 'East Germany'), 'Margit', 'Schumann', 1952
union select (select c.countryid from country c where c.countryname = 'East Germany'), 'Anna-Maria', 'Müller', 1949
union select (select c.countryid from country c where c.countryname = 'East Germany'), 'Ute', 'Rührold', 1954
union select (select c.countryid from country c where c.countryname = 'Italy'), 'Giancarlo', 'Ferrari', 1942
union select (select c.countryid from country c where c.countryname = 'United States'), 'Darrell', 'Pace', 1956
union select (select c.countryid from country c where c.countryname = 'Japan'), 'Hiroshi', 'Michinaga', 1956
union select (select c.countryid from country c where c.countryname = 'Soviet Union'), 'Valeriy', 'Borzov', 1949
union select (select c.countryid from country c where c.countryname = 'Trinidad and Tobago'), 'Hasely', 'Crawford', 1950
union select (select c.countryid from country c where c.countryname = 'Jamaica'), 'Don', 'Quarrie', 1951
union select (select c.countryid from country c where c.countryname = 'Hungary'), 'Márta', 'Egervári', 1956
union select (select c.countryid from country c where c.countryname = 'Romania'), 'Nadia', 'Comaneci', 1961
union select (select c.countryid from country c where c.countryname = 'Romania'), 'Teodora', 'Ungureanu', 1960
union select (select c.countryid from country c where c.countryname = 'Netherlands'), 'Enith', 'Brigitha', 1955
union select (select c.countryid from country c where c.countryname = 'East Germany'), 'Kornelia', 'Ender', 1958
union select (select c.countryid from country c where c.countryname = 'East Germany'), 'Petra', 'Priemer', 1961
union select (select c.countryid from country c where c.countryname = 'Canada'), 'Toller', 'Cranston', 1949
union select (select c.countryid from country c where c.countryname = 'Great Britain'), 'John', 'Curry', 1949
union select (select c.countryid from country c where c.countryname = 'Soviet Union'), 'Vladimir', 'Kovalyov', 1953
union select (select c.countryid from country c where c.countryname = 'East Germany'), 'Christine', 'Errath', 1956
union select (select c.countryid from country c where c.countryname = 'United States'), 'Dorothy', 'Hamill', 1956
union select (select c.countryid from country c where c.countryname = 'Netherlands'), 'Dianne', 'de Leeuw', 1955
union select (select c.countryid from country c where c.countryname = 'East Germany'), 'Hans', 'Rinn', 1953
union select (select c.countryid from country c where c.countryname = 'East Germany'), 'Dettlef', 'Günther', 1954
union select (select c.countryid from country c where c.countryname = 'West Germany'), 'Josef', 'Fendt', 1947
union select (select c.countryid from country c where c.countryname = 'West Germany'), 'Elisabeth', 'Demleitner', 1952
union select (select c.countryid from country c where c.countryname = 'East Germany'), 'Margit', 'Schumann', 1952
union select (select c.countryid from country c where c.countryname = 'East Germany'), 'Ute', 'Rührold', 1954
union select (select c.countryid from country c where c.countryname = 'Canada'), 'Steve', 'Podborski', 1957
union select (select c.countryid from country c where c.countryname = 'Austria'), 'Leonhard', 'Stock', 1958
union select (select c.countryid from country c where c.countryname = 'Austria'), 'Peter', 'Wirnsberger', 1958
union select (select c.countryid from country c where c.countryname = 'Switzerland'), 'Jacques', 'Lüthy', 1959
union select (select c.countryid from country c where c.countryname = 'Sweden'), 'Ingemar', 'Stenmark', 1956
union select (select c.countryid from country c where c.countryname = 'United States'), 'Phil', 'Mahre', 1957
union select (select c.countryid from country c where c.countryname = 'Switzerland'), 'Marie-Theres', 'Nadig', 1954
union select (select c.countryid from country c where c.countryname = 'Austria'), 'Annemarie', 'Moser-Pröll', 1953
union select (select c.countryid from country c where c.countryname = 'Liechtenstein'), 'Hanni', 'Wenzel', 1956
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Tom Erik', 'Oxholm', 1959
union select (select c.countryid from country c where c.countryname = 'United States'), 'Eric', 'Heiden', 1958
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Kay', 'Stenshjemmet', 1953
union select (select c.countryid from country c where c.countryname = 'East Germany'), 'Sabine', 'Becker', 1959
union select (select c.countryid from country c where c.countryname = 'Netherlands'), 'Annie', 'Borckink', 1951
union select (select c.countryid from country c where c.countryname = 'Netherlands'), 'Ria', 'Visser', 1961
union select (select c.countryid from country c where c.countryname = 'Liechtenstein'), 'Andreas', 'Wenzel', 1958
union select (select c.countryid from country c where c.countryname = 'Switzerland'), 'Max', 'Julen', 1961
union select (select c.countryid from country c where c.countryname = 'Yugoslavia'), 'Jure', 'Franko', 1962
union select (select c.countryid from country c where c.countryname = 'East Germany'), 'Ute', 'Oberhoffner', 1961
union select (select c.countryid from country c where c.countryname = 'East Germany'), 'Steffi', 'Martin', 1962
union select (select c.countryid from country c where c.countryname = 'East Germany'), 'Bettina', 'Schmidt', 1960
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Kai Arne', 'Engelstad', 1954
union select (select c.countryid from country c where c.countryname = 'Canada'), 'Gaétan', 'Boucher', 1958
union select (select c.countryid from country c where c.countryname = 'Soviet Union'), 'Sergey', 'Khlebnikov', 1955
union select (select c.countryid from country c where c.countryname = 'Unified Team'), 'Natalia', 'Valeeva', 1969
union select (select c.countryid from country c where c.countryname = 'South Korea'), 'Cho', 'Youn-jeong', 1969
union select (select c.countryid from country c where c.countryname = 'South Korea'), 'Kim', 'Soo-nyung', 1971
union select (select c.countryid from country c where c.countryname = 'United States'), 'Johnny', 'Gray', 1960
union select (select c.countryid from country c where c.countryname = 'Kenya'), 'William', 'Tanui', 1964
union select (select c.countryid from country c where c.countryname = 'Kenya'), 'Nixon', 'Kiprotich', 1962
union select (select c.countryid from country c where c.countryname = 'France'), 'Stéphan', 'Caron', 1966
union select (select c.countryid from country c where c.countryname = 'Unified Team'), 'Alexander', 'Popov', 1971
union select (select c.countryid from country c where c.countryname = 'Brazil'), 'Gustavo', 'Borges', 1972
union select (select c.countryid from country c where c.countryname = 'United States'), 'Anita', 'Nall', 1976
union select (select c.countryid from country c where c.countryname = 'Japan'), 'Kyoko', 'Iwasaki', 1978
union select (select c.countryid from country c where c.countryname = 'China'), 'Lin', 'Li', 1970
union select (select c.countryid from country c where c.countryname = 'Germany'), 'Hilde', 'Gerg', 1975
union select (select c.countryid from country c where c.countryname = 'Germany'), 'Katja', 'Seizinger', 1972
union select (select c.countryid from country c where c.countryname = 'Germany'), 'Martina', 'Ertl-Renz', 1973
union select (select c.countryid from country c where c.countryname = 'Belarus'), 'Alexei', 'Aidarov', 1974
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Halvard', 'Hanevold', 1969
union select (select c.countryid from country c where c.countryname = 'Italy'), 'Pieralberto', 'Carrara', 1966
union select (select c.countryid from country c where c.countryname = 'Austria'), 'Christian', 'Hoffmann', 1974
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Bjørn', 'Dæhlie', 1967
union select (select c.countryid from country c where c.countryname = 'Sweden'), 'Niklas', 'Jonsson', 1969
union select (select c.countryid from country c where c.countryname = 'Czech Republic'), 'Katerina', 'Neumannová', 1973
union select (select c.countryid from country c where c.countryname = 'Russia'), 'Larisa', 'Lazutina', 1965
union select (select c.countryid from country c where c.countryname = 'Russia'), 'Olga', 'Danilova', 1970
union select (select c.countryid from country c where c.countryname = 'Trinidad and Tobago'), 'Ato', 'Boldon', 1973
union select (select c.countryid from country c where c.countryname = 'Greece'), 'Konstantinos', 'Kenteris', 1973
union select (select c.countryid from country c where c.countryname = 'Great Britain'), 'Darren', 'Campbell', 1973
union select (select c.countryid from country c where c.countryname = 'Morocco'), 'Brahim', 'Lahlafi', 1968
union select (select c.countryid from country c where c.countryname = 'Ethiopia'), 'Million', 'Wolde', 1979
union select (select c.countryid from country c where c.countryname = 'Algeria'), 'Ali', 'Saïdi-Sief', 1978
union select (select c.countryid from country c where c.countryname = 'Algeria'), 'Abderrahmane', 'Hammad', 1977
union select (select c.countryid from country c where c.countryname = 'Russia'), 'Sergey', 'Klyugin', 1974
union select (select c.countryid from country c where c.countryname = 'Cuba'), 'Javier', 'Sotomayor', 1967
union select (select c.countryid from country c where c.countryname = 'Ethiopia'), 'Tesfaye', 'Tola', 1974
union select (select c.countryid from country c where c.countryname = 'Ethiopia'), 'Gezahegne', 'Abera', 1978
union select (select c.countryid from country c where c.countryname = 'Kenya'), 'Erick', 'Wainaina', 1973
union select (select c.countryid from country c where c.countryname = 'Italy'), 'Karen', 'Putzer', 1978
union select (select c.countryid from country c where c.countryname = 'Italy'), 'Daniela', 'Ceccarelli', 1975
union select (select c.countryid from country c where c.countryname = 'Croatia'), 'Janica', 'Kostelic', 1982
union select (select c.countryid from country c where c.countryname = 'United States'), 'Michelle', 'Kwan', 1980
union select (select c.countryid from country c where c.countryname = 'United States'), 'Sarah', 'Hughes', 1985
union select (select c.countryid from country c where c.countryname = 'Russia'), 'Irina', 'Slutskaya', 1979
union select (select c.countryid from country c where c.countryname = 'Finland'), 'Janne', 'Lahtela', 1974
union select (select c.countryid from country c where c.countryname = 'United States'), 'Travis', 'Mayer', 1982
union select (select c.countryid from country c where c.countryname = 'Canada'), 'Deidra', 'Dionne', 1982
union select (select c.countryid from country c where c.countryname = 'Australia'), 'Alisa', 'Camplin', 1974
union select (select c.countryid from country c where c.countryname = 'Canada'), 'Veronica', 'Brenner', 1974
union select (select c.countryid from country c where c.countryname = 'Australia'), 'Tim', 'Cuddihy', 1987
union select (select c.countryid from country c where c.countryname = 'Italy'), 'Marco', 'Galiazzo', 1983
union select (select c.countryid from country c where c.countryname = 'Japan'), 'Hiroshi', 'Yamamoto', 1962
union select (select c.countryid from country c where c.countryname = 'Great Britain'), 'Alison', 'Williamson', 1971
union select (select c.countryid from country c where c.countryname = 'South Korea'), 'Park', 'Sung-hyun', 1983
union select (select c.countryid from country c where c.countryname = 'South Korea'), 'Lee', 'Sung-jin', 1985
union select (select c.countryid from country c where c.countryname = 'Spain'), 'Joan Lino', 'Martínez', 1978
union select (select c.countryid from country c where c.countryname = 'United States'), 'Dwight', 'Phillips', 1977
union select (select c.countryid from country c where c.countryname = 'United States'), 'John', 'Moffitt', 1980
union select (select c.countryid from country c where c.countryname = 'United States'), 'Deena', 'Kastor', 1973
union select (select c.countryid from country c where c.countryname = 'Japan'), 'Mizuki', 'Noguchi', 1978
union select (select c.countryid from country c where c.countryname = 'Kenya'), 'Catherine', 'Ndereba', 1972
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Frode', 'Andresen', 1973
union select (select c.countryid from country c where c.countryname = 'Germany'), 'Sven', 'Fischer', 1971
union select (select c.countryid from country c where c.countryname = 'Norway'), 'Halvard', 'Hanevold', 1969
union select (select c.countryid from country c where c.countryname = 'Poland'), 'Justyna', 'Kowalczyk-Tekieli', 1983
union select (select c.countryid from country c where c.countryname = 'Czech Republic'), 'Katerina', 'Neumannová', 1973
union select (select c.countryid from country c where c.countryname = 'Russia'), 'Yuliya', 'Chepalova', 1976
union select (select c.countryid from country c where c.countryname = 'Germany'), 'Tatjana', 'Hüfner', 1983
union select (select c.countryid from country c where c.countryname = 'Germany'), 'Sylke', 'Otto', 1969
union select (select c.countryid from country c where c.countryname = 'Germany'), 'Silke', 'Kraushaar-Pielach', 1970
union select (select c.countryid from country c where c.countryname = 'Germany'), 'Christina', 'Obergföll', 1981
union select (select c.countryid from country c where c.countryname = 'Czech Republic'), 'Barbora', 'Špotáková', 1981
union select (select c.countryid from country c where c.countryname = 'Russia'), 'Mariya', 'Abakumova', 1986
union select (select c.countryid from country c where c.countryname = 'United States'), 'Levi', 'Leipheimer', 1973
union select (select c.countryid from country c where c.countryname = 'Switzerland'), 'Fabian', 'Cancellara', 1981
union select (select c.countryid from country c where c.countryname = 'Sweden'), 'Gustav', 'Larsson', 1980
union select (select c.countryid from country c where c.countryname = 'China'), 'Dong', 'Dong', 1989
union select (select c.countryid from country c where c.countryname = 'China'), 'Lu', 'Chunlong', 1989
union select (select c.countryid from country c where c.countryname = 'Canada'), 'Jason', 'Burnett', 1986
union select (select c.countryid from country c where c.countryname = 'Uzbekistan'), 'Ekaterina', 'Khilko', 1982
union select (select c.countryid from country c where c.countryname = 'China'), 'He', 'Wenna', 1989
union select (select c.countryid from country c where c.countryname = 'Canada'), 'Karen', 'Cockburn', 1980


----------
--insert OlympicSportSubCategory(SportSubCategoryId, OlympicsId)
;
with x(Sport, SportSubcategory, OlympicLocation , OlympicYear) as 
(
 select 'Athletics', 'Discus Throw', 'Athens, Greece', 1896
union select 'Athletics', 'Discus Throw', 'Athens, Greece', 1896
union select 'Athletics', 'Discus Throw', 'Athens, Greece', 1896
union select 'Cycling', '10 Km', 'Athens, Greece', 1896
union select 'Cycling', '10 Km', 'Athens, Greece', 1896
union select 'Cycling', '10 Km', 'Athens, Greece', 1896
union select 'Fencing', 'Sabre', 'Athens, Greece', 1896
union select 'Fencing', 'Sabre', 'Athens, Greece', 1896
union select 'Fencing', 'Sabre', 'Athens, Greece', 1896
union select 'Swimming', 'Sailors 100 M Freestyle', 'Athens, Greece', 1896
union select 'Swimming', 'Sailors 100 M Freestyle', 'Athens, Greece', 1896
union select 'Swimming', 'Sailors 100 M Freestyle', 'Athens, Greece', 1896
union select 'Archery', 'Au Chapelet 50 Metres', 'Paris, France', 1900
union select 'Archery', 'Au Chapelet 50 Metres', 'Paris, France', 1900
union select 'Athletics', '2500 Metres Steeplechase', 'Paris, France', 1900
union select 'Athletics', '2500 Metres Steeplechase', 'Paris, France', 1900
union select 'Athletics', '2500 Metres Steeplechase', 'Paris, France', 1900
union select 'Croquet', 'Singles, One Ball', 'Paris, France', 1900
union select 'Croquet', 'Singles, One Ball', 'Paris, France', 1900
union select 'Croquet', 'Singles, One Ball', 'Paris, France', 1900
union select 'Archery', 'Men''s Double York Round', 'St. Louis, United States', 1904
union select 'Archery', 'Men''s Double York Round', 'St. Louis, United States', 1904
union select 'Archery', 'Men''s Double York Round', 'St. Louis, United States', 1904
union select 'Archery', 'Women''s Double Columbia Round', 'St. Louis, United States', 1904
union select 'Archery', 'Women''s Double Columbia Round', 'St. Louis, United States', 1904
union select 'Archery', 'Women''s Double Columbia Round', 'St. Louis, United States', 1904
union select 'Fencing', 'Foil, Individual', 'St. Louis, United States', 1904
union select 'Fencing', 'Foil, Individual', 'St. Louis, United States', 1904
union select 'Fencing', 'Foil, Individual', 'St. Louis, United States', 1904
union select 'Gymnastics', 'Club Swinging', 'St. Louis, United States', 1904
union select 'Gymnastics', 'Club Swinging', 'St. Louis, United States', 1904
union select 'Gymnastics', 'Club Swinging', 'St. Louis, United States', 1904
union select 'Athletics', '10 Miles Walk', 'London, United Kingdom', 1908
union select 'Athletics', '10 Miles Walk', 'London, United Kingdom', 1908
union select 'Athletics', '10 Miles Walk', 'London, United Kingdom', 1908
union select 'Athletics', 'Freestyle Javelin', 'London, United Kingdom', 1908
union select 'Athletics', 'Freestyle Javelin', 'London, United Kingdom', 1908
union select 'Athletics', 'Freestyle Javelin', 'London, United Kingdom', 1908
union select 'Boxing', 'Heavyweight', 'London, United Kingdom', 1908
union select 'Boxing', 'Heavyweight', 'London, United Kingdom', 1908
union select 'Boxing', 'Heavyweight', 'London, United Kingdom', 1908
union select 'Tennis', 'Women''s Indoor Singles', 'London, United Kingdom', 1908
union select 'Tennis', 'Women''s Indoor Singles', 'London, United Kingdom', 1908
union select 'Tennis', 'Women''s Indoor Singles', 'London, United Kingdom', 1908
union select 'Athletics', '110 Metres Hurdles', 'Stockholm, Sweden', 1912
union select 'Athletics', '110 Metres Hurdles', 'Stockholm, Sweden', 1912
union select 'Athletics', '110 Metres Hurdles', 'Stockholm, Sweden', 1912
union select 'Cycling', 'Individual Time Trial', 'Stockholm, Sweden', 1912
union select 'Cycling', 'Individual Time Trial', 'Stockholm, Sweden', 1912
union select 'Cycling', 'Individual Time Trial', 'Stockholm, Sweden', 1912
union select 'Shooting', '300 M Military Rifle, three positions', 'Stockholm, Sweden', 1912
union select 'Shooting', '300 M Military Rifle, three positions', 'Stockholm, Sweden', 1912
union select 'Shooting', '300 M Military Rifle, three positions', 'Stockholm, Sweden', 1912
union select 'Figure Skating', 'Ladies'' Singles', 'Chamonix, France', 1924
union select 'Figure Skating', 'Ladies'' Singles', 'Chamonix, France', 1924
union select 'Figure Skating', 'Ladies'' Singles', 'Chamonix, France', 1924
union select 'Speed Skating', '5000 Metres', 'Chamonix, France', 1924
union select 'Speed Skating', '5000 Metres', 'Chamonix, France', 1924
union select 'Speed Skating', '5000 Metres', 'Chamonix, France', 1924
union select 'Cross-country Skiing', '18 Km', 'St. Moritz, Switzerland', 1928
union select 'Cross-country Skiing', '18 Km', 'St. Moritz, Switzerland', 1928
union select 'Cross-country Skiing', '18 Km', 'St. Moritz, Switzerland', 1928
union select 'Skeleton', 'Men''s Individual', 'St. Moritz, Switzerland', 1928
union select 'Skeleton', 'Men''s Individual', 'St. Moritz, Switzerland', 1928
union select 'Skeleton', 'Men''s Individual', 'St. Moritz, Switzerland', 1928
union select 'Ski Jumping', 'Men''s Individual', 'St. Moritz, Switzerland', 1928
union select 'Ski Jumping', 'Men''s Individual', 'St. Moritz, Switzerland', 1928
union select 'Ski Jumping', 'Men''s Individual', 'St. Moritz, Switzerland', 1928
union select 'Speed Skating', '5000 Metres', 'St. Moritz, Switzerland', 1928
union select 'Speed Skating', '5000 Metres', 'St. Moritz, Switzerland', 1928
union select 'Speed Skating', '5000 Metres', 'St. Moritz, Switzerland', 1928
union select 'Athletics', 'Women''s 100 M', 'Los Angeles, United States', 1932
union select 'Athletics', 'Women''s 100 M', 'Los Angeles, United States', 1932
union select 'Athletics', 'Women''s 100 M', 'Los Angeles, United States', 1932
union select 'Boxing', 'Featherweight', 'Los Angeles, United States', 1932
union select 'Boxing', 'Featherweight', 'Los Angeles, United States', 1932
union select 'Boxing', 'Featherweight', 'Los Angeles, United States', 1932
union select 'Cycling', 'Individual Time Trial', 'Los Angeles, United States', 1932
union select 'Cycling', 'Individual Time Trial', 'Los Angeles, United States', 1932
union select 'Cycling', 'Individual Time Trial', 'Los Angeles, United States', 1932
union select 'Diving', '10 Metre Platform', 'Los Angeles, United States', 1932
union select 'Diving', '10 Metre Platform', 'Los Angeles, United States', 1932
union select 'Diving', '10 Metre Platform', 'Los Angeles, United States', 1932
union select 'Figure Skating', 'Men''s Singles', 'Lake Placid, United States', 1932
union select 'Figure Skating', 'Men''s Singles', 'Lake Placid, United States', 1932
union select 'Figure Skating', 'Men''s Singles', 'Lake Placid, United States', 1932
union select 'Nordic Combined', 'Men''s Individual', 'Lake Placid, United States', 1932
union select 'Nordic Combined', 'Men''s Individual', 'Lake Placid, United States', 1932
union select 'Nordic Combined', 'Men''s Individual', 'Lake Placid, United States', 1932
union select 'Ski Jumping', 'Men''s Individual', 'Lake Placid, United States', 1932
union select 'Ski Jumping', 'Men''s Individual', 'Lake Placid, United States', 1932
union select 'Ski Jumping', 'Men''s Individual', 'Lake Placid, United States', 1932
union select 'Alpine Skiing', 'Women''s Combined', 'Garmisch-Partenkirchen, Germany', 1936
union select 'Alpine Skiing', 'Women''s Combined', 'Garmisch-Partenkirchen, Germany', 1936
union select 'Alpine Skiing', 'Women''s Combined', 'Garmisch-Partenkirchen, Germany', 1936
union select 'Cross-country Skiing', '18 Km', 'Garmisch-Partenkirchen, Germany', 1936
union select 'Cross-country Skiing', '18 Km', 'Garmisch-Partenkirchen, Germany', 1936
union select 'Cross-country Skiing', '18 Km', 'Garmisch-Partenkirchen, Germany', 1936
union select 'Cross-country Skiing', '50 Km', 'Garmisch-Partenkirchen, Germany', 1936
union select 'Cross-country Skiing', '50 Km', 'Garmisch-Partenkirchen, Germany', 1936
union select 'Cross-country Skiing', '50 Km', 'Garmisch-Partenkirchen, Germany', 1936
union select 'Figure Skating', 'Ladies'' Singles', 'Garmisch-Partenkirchen, Germany', 1936
union select 'Figure Skating', 'Ladies'' Singles', 'Garmisch-Partenkirchen, Germany', 1936
union select 'Figure Skating', 'Ladies'' Singles', 'Garmisch-Partenkirchen, Germany', 1936
union select 'Athletics', 'Men''s 100 M', 'London, United Kingdom', 1948
union select 'Athletics', 'Men''s 100 M', 'London, United Kingdom', 1948
union select 'Athletics', 'Men''s 100 M', 'London, United Kingdom', 1948
union select 'Athletics', 'Women''s 80 M Hurdles', 'London, United Kingdom', 1948
union select 'Athletics', 'Women''s 80 M Hurdles', 'London, United Kingdom', 1948
union select 'Athletics', 'Women''s 80 M Hurdles', 'London, United Kingdom', 1948
union select 'Boxing', 'Flyweight', 'London, United Kingdom', 1948
union select 'Boxing', 'Flyweight', 'London, United Kingdom', 1948
union select 'Boxing', 'Flyweight', 'London, United Kingdom', 1948
union select 'Diving', 'Women''s 3 Metre Springboard', 'London, United Kingdom', 1948
union select 'Diving', 'Women''s 3 Metre Springboard', 'London, United Kingdom', 1948
union select 'Diving', 'Women''s 3 Metre Springboard', 'London, United Kingdom', 1948
union select 'Alpine Skiing', 'Women''s Downhill', 'St. Moritz, Switzerland', 1948
union select 'Alpine Skiing', 'Women''s Downhill', 'St. Moritz, Switzerland', 1948
union select 'Alpine Skiing', 'Women''s Downhill', 'St. Moritz, Switzerland', 1948
union select 'Cross-country Skiing', '18 Km', 'St. Moritz, Switzerland', 1948
union select 'Cross-country Skiing', '18 Km', 'St. Moritz, Switzerland', 1948
union select 'Cross-country Skiing', '18 Km', 'St. Moritz, Switzerland', 1948
union select 'Figure Skating', 'Men''s Singles', 'St. Moritz, Switzerland', 1948
union select 'Figure Skating', 'Men''s Singles', 'St. Moritz, Switzerland', 1948
union select 'Figure Skating', 'Men''s Singles', 'St. Moritz, Switzerland', 1948
union select 'Ski Jumping', 'Men''s Individual', 'St. Moritz, Switzerland', 1948
union select 'Ski Jumping', 'Men''s Individual', 'St. Moritz, Switzerland', 1948
union select 'Ski Jumping', 'Men''s Individual', 'St. Moritz, Switzerland', 1948
union select 'Alpine Skiing', 'Men''s Giant Slalom', 'Oslo, Norway', 1952
union select 'Alpine Skiing', 'Men''s Giant Slalom', 'Oslo, Norway', 1952
union select 'Alpine Skiing', 'Men''s Giant Slalom', 'Oslo, Norway', 1952
union select 'Alpine Skiing', 'Women''s Slalom', 'Oslo, Norway', 1952
union select 'Alpine Skiing', 'Women''s Slalom', 'Oslo, Norway', 1952
union select 'Alpine Skiing', 'Women''s Slalom', 'Oslo, Norway', 1952
union select 'Nordic Combined', 'Men''s Individual', 'Oslo, Norway', 1952
union select 'Nordic Combined', 'Men''s Individual', 'Oslo, Norway', 1952
union select 'Nordic Combined', 'Men''s Individual', 'Oslo, Norway', 1952
union select 'Speed Skating', '5000 Metres', 'Oslo, Norway', 1952
union select 'Speed Skating', '5000 Metres', 'Oslo, Norway', 1952
union select 'Speed Skating', '5000 Metres', 'Oslo, Norway', 1952
union select 'Alpine Skiing', 'Women''s Downhill', 'Cortina d''Ampezzo, Italy', 1956
union select 'Alpine Skiing', 'Women''s Downhill', 'Cortina d''Ampezzo, Italy', 1956
union select 'Alpine Skiing', 'Women''s Downhill', 'Cortina d''Ampezzo, Italy', 1956
union select 'Nordic Combined', 'Men''s Individual', 'Cortina d''Ampezzo, Italy', 1956
union select 'Nordic Combined', 'Men''s Individual', 'Cortina d''Ampezzo, Italy', 1956
union select 'Nordic Combined', 'Men''s Individual', 'Cortina d''Ampezzo, Italy', 1956
union select 'Ski Jumping', 'Men''s Individual', 'Cortina d''Ampezzo, Italy', 1956
union select 'Ski Jumping', 'Men''s Individual', 'Cortina d''Ampezzo, Italy', 1956
union select 'Ski Jumping', 'Men''s Individual', 'Cortina d''Ampezzo, Italy', 1956
union select 'Athletics', 'Marathon', 'Rome, Italy', 1960
union select 'Athletics', 'Marathon', 'Rome, Italy', 1960
union select 'Athletics', 'Marathon', 'Rome, Italy', 1960
union select 'Canoeing', 'C-1 1000 M', 'Rome, Italy', 1960
union select 'Canoeing', 'C-1 1000 M', 'Rome, Italy', 1960
union select 'Canoeing', 'C-1 1000 M', 'Rome, Italy', 1960
union select 'Cycling', 'Road Race', 'Rome, Italy', 1960
union select 'Cycling', 'Road Race', 'Rome, Italy', 1960
union select 'Cycling', 'Road Race', 'Rome, Italy', 1960
union select 'Gymnastics', 'Vault', 'Rome, Italy', 1960
union select 'Gymnastics', 'Vault', 'Rome, Italy', 1960
union select 'Gymnastics', 'Vault', 'Rome, Italy', 1960
union select 'Alpine Skiing', 'Men''s Downhill', 'Squaw Valley, United States', 1960
union select 'Alpine Skiing', 'Men''s Downhill', 'Squaw Valley, United States', 1960
union select 'Alpine Skiing', 'Men''s Downhill', 'Squaw Valley, United States', 1960
union select 'Biathlon', 'Men''s 20 Km', 'Squaw Valley, United States', 1960
union select 'Biathlon', 'Men''s 20 Km', 'Squaw Valley, United States', 1960
union select 'Biathlon', 'Men''s 20 Km', 'Squaw Valley, United States', 1960
union select 'Cross-country Skiing', 'Women''s 10 Km', 'Squaw Valley, United States', 1960
union select 'Cross-country Skiing', 'Women''s 10 Km', 'Squaw Valley, United States', 1960
union select 'Cross-country Skiing', 'Women''s 10 Km', 'Squaw Valley, United States', 1960
union select 'Ski Jumping', 'Men''s Individual', 'Squaw Valley, United States', 1960
union select 'Ski Jumping', 'Men''s Individual', 'Squaw Valley, United States', 1960
union select 'Ski Jumping', 'Men''s Individual', 'Squaw Valley, United States', 1960
union select 'Speed Skating', 'Men''s 500 Metres', 'Squaw Valley, United States', 1960
union select 'Speed Skating', 'Men''s 500 Metres', 'Squaw Valley, United States', 1960
union select 'Speed Skating', 'Men''s 500 Metres', 'Squaw Valley, United States', 1960
union select 'Athletics', '200 M', 'Tokyo, Japan', 1964
union select 'Athletics', '200 M', 'Tokyo, Japan', 1964
union select 'Athletics', '200 M', 'Tokyo, Japan', 1964
union select 'Canoeing', 'K-1 1000 Metres', 'Tokyo, Japan', 1964
union select 'Canoeing', 'K-1 1000 Metres', 'Tokyo, Japan', 1964
union select 'Canoeing', 'K-1 1000 Metres', 'Tokyo, Japan', 1964
union select 'Cycling', 'Individual Road Race', 'Tokyo, Japan', 1964
union select 'Cycling', 'Individual Road Race', 'Tokyo, Japan', 1964
union select 'Cycling', 'Individual Road Race', 'Tokyo, Japan', 1964
union select 'Diving', '3 M Springboard', 'Tokyo, Japan', 1964
union select 'Diving', '3 M Springboard', 'Tokyo, Japan', 1964
union select 'Diving', '3 M Springboard', 'Tokyo, Japan', 1964
union select 'Biathlon', 'Men''s 20 Km', 'Innsbruck, Austria', 1964
union select 'Biathlon', 'Men''s 20 Km', 'Innsbruck, Austria', 1964
union select 'Biathlon', 'Men''s 20 Km', 'Innsbruck, Austria', 1964
union select 'Cross-country Skiing', 'Women''s 10 Km', 'Innsbruck, Austria', 1964
union select 'Cross-country Skiing', 'Women''s 10 Km', 'Innsbruck, Austria', 1964
union select 'Cross-country Skiing', 'Women''s 10 Km', 'Innsbruck, Austria', 1964
union select 'Ski Jumping', 'Men''s Normal Hill', 'Innsbruck, Austria', 1964
union select 'Ski Jumping', 'Men''s Normal Hill', 'Innsbruck, Austria', 1964
union select 'Ski Jumping', 'Men''s Normal Hill', 'Innsbruck, Austria', 1964
union select 'Speed Skating', 'Women''s 1500 metres', 'Innsbruck, Austria', 1964
union select 'Speed Skating', 'Women''s 1500 metres', 'Innsbruck, Austria', 1964
union select 'Speed Skating', 'Women''s 1500 metres', 'Innsbruck, Austria', 1964
union select 'Alpine Skiing', 'Women''s Downhill', 'Grenoble, France', 1968
union select 'Alpine Skiing', 'Women''s Downhill', 'Grenoble, France', 1968
union select 'Alpine Skiing', 'Women''s Downhill', 'Grenoble, France', 1968
union select 'Cross-country Skiing', 'Men''s 15 Km', 'Grenoble, France', 1968
union select 'Cross-country Skiing', 'Men''s 15 Km', 'Grenoble, France', 1968
union select 'Cross-country Skiing', 'Men''s 15 Km', 'Grenoble, France', 1968
union select 'Figure Skating', 'Ladies'' Singles', 'Grenoble, France', 1968
union select 'Figure Skating', 'Ladies'' Singles', 'Grenoble, France', 1968
union select 'Figure Skating', 'Ladies'' Singles', 'Grenoble, France', 1968
union select 'Speed Skating', 'Men''s 10000 Metres', 'Grenoble, France', 1968
union select 'Speed Skating', 'Men''s 10000 Metres', 'Grenoble, France', 1968
union select 'Speed Skating', 'Men''s 10000 Metres', 'Grenoble, France', 1968
union select 'Biathlon', 'Men''s Individual', 'Sapporo, Japan', 1972
union select 'Biathlon', 'Men''s Individual', 'Sapporo, Japan', 1972
union select 'Biathlon', 'Men''s Individual', 'Sapporo, Japan', 1972
union select 'Cross-country Skiing', '10 Km', 'Sapporo, Japan', 1972
union select 'Cross-country Skiing', '10 Km', 'Sapporo, Japan', 1972
union select 'Cross-country Skiing', '10 Km', 'Sapporo, Japan', 1972
union select 'Luge', 'Men''s Singles', 'Sapporo, Japan', 1972
union select 'Luge', 'Men''s Singles', 'Sapporo, Japan', 1972
union select 'Luge', 'Men''s Singles', 'Sapporo, Japan', 1972
union select 'Luge', 'Women''s Singles', 'Sapporo, Japan', 1972
union select 'Luge', 'Women''s Singles', 'Sapporo, Japan', 1972
union select 'Luge', 'Women''s Singles', 'Sapporo, Japan', 1972
union select 'Archery', 'Mens''', 'Montreal, Canada', 1976
union select 'Archery', 'Mens''', 'Montreal, Canada', 1976
union select 'Archery', 'Mens''', 'Montreal, Canada', 1976
union select 'Athletics', '100 M', 'Montreal, Canada', 1976
union select 'Athletics', '100 M', 'Montreal, Canada', 1976
union select 'Athletics', '100 M', 'Montreal, Canada', 1976
union select 'Gymnastics', 'Uneven Bars', 'Montreal, Canada', 1976
union select 'Gymnastics', 'Uneven Bars', 'Montreal, Canada', 1976
union select 'Gymnastics', 'Uneven Bars', 'Montreal, Canada', 1976
union select 'Swimming', '100 M Freestyle', 'Montreal, Canada', 1976
union select 'Swimming', '100 M Freestyle', 'Montreal, Canada', 1976
union select 'Swimming', '100 M Freestyle', 'Montreal, Canada', 1976
union select 'Figure Skating', 'Men''s Singles', 'Innsbruck, Austria', 1976
union select 'Figure Skating', 'Men''s Singles', 'Innsbruck, Austria', 1976
union select 'Figure Skating', 'Men''s Singles', 'Innsbruck, Austria', 1976
union select 'Figure Skating', 'Women''s Singles', 'Innsbruck, Austria', 1976
union select 'Figure Skating', 'Women''s Singles', 'Innsbruck, Austria', 1976
union select 'Figure Skating', 'Women''s Singles', 'Innsbruck, Austria', 1976
union select 'Luge', 'Men''s Singles', 'Innsbruck, Austria', 1976
union select 'Luge', 'Men''s Singles', 'Innsbruck, Austria', 1976
union select 'Luge', 'Men''s Singles', 'Innsbruck, Austria', 1976
union select 'Luge', 'Women''s Singles', 'Innsbruck, Austria', 1976
union select 'Luge', 'Women''s Singles', 'Innsbruck, Austria', 1976
union select 'Luge', 'Women''s Singles', 'Innsbruck, Austria', 1976
union select 'Alpine Skiing', 'Men''s Downhill', 'Lake Placid, United States', 1980
union select 'Alpine Skiing', 'Men''s Downhill', 'Lake Placid, United States', 1980
union select 'Alpine Skiing', 'Men''s Downhill', 'Lake Placid, United States', 1980
union select 'Alpine Skiing', 'Men''s Slalom', 'Lake Placid, United States', 1980
union select 'Alpine Skiing', 'Men''s Slalom', 'Lake Placid, United States', 1980
union select 'Alpine Skiing', 'Men''s Slalom', 'Lake Placid, United States', 1980
union select 'Alpine Skiing', 'Women''s Downhill', 'Lake Placid, United States', 1980
union select 'Alpine Skiing', 'Women''s Downhill', 'Lake Placid, United States', 1980
union select 'Alpine Skiing', 'Women''s Downhill', 'Lake Placid, United States', 1980
union select 'Speed Skating', 'Men''s 5,000 Metres', 'Lake Placid, United States', 1980
union select 'Speed Skating', 'Men''s 5,000 Metres', 'Lake Placid, United States', 1980
union select 'Speed Skating', 'Men''s 5,000 Metres', 'Lake Placid, United States', 1980
union select 'Speed Skating', 'Women''s 1,500 Metres', 'Lake Placid, United States', 1980
union select 'Speed Skating', 'Women''s 1,500 Metres', 'Lake Placid, United States', 1980
union select 'Speed Skating', 'Women''s 1,500 Metres', 'Lake Placid, United States', 1980
union select 'Alpine Skiing', 'Men''s Giant Slalom', 'Sarajevo, Yugoslavia', 1984
union select 'Alpine Skiing', 'Men''s Giant Slalom', 'Sarajevo, Yugoslavia', 1984
union select 'Alpine Skiing', 'Men''s Giant Slalom', 'Sarajevo, Yugoslavia', 1984
union select 'Luge', 'Women''s Singles', 'Sarajevo, Yugoslavia', 1984
union select 'Luge', 'Women''s Singles', 'Sarajevo, Yugoslavia', 1984
union select 'Luge', 'Women''s Singles', 'Sarajevo, Yugoslavia', 1984
union select 'Speed Skating', 'Men''s 1,000 Metres', 'Sarajevo, Yugoslavia', 1984
union select 'Speed Skating', 'Men''s 1,000 Metres', 'Sarajevo, Yugoslavia', 1984
union select 'Speed Skating', 'Men''s 1,000 Metres', 'Sarajevo, Yugoslavia', 1984
union select 'Archery', 'Women''s Individual', 'Barcelona, Spain', 1992
union select 'Archery', 'Women''s Individual', 'Barcelona, Spain', 1992
union select 'Archery', 'Women''s Individual', 'Barcelona, Spain', 1992
union select 'Athletics', 'Men''s 800 M', 'Barcelona, Spain', 1992
union select 'Athletics', 'Men''s 800 M', 'Barcelona, Spain', 1992
union select 'Athletics', 'Men''s 800 M', 'Barcelona, Spain', 1992
union select 'Swimming', 'Men''s 100 Metre Freestyle', 'Barcelona, Spain', 1992
union select 'Swimming', 'Men''s 100 Metre Freestyle', 'Barcelona, Spain', 1992
union select 'Swimming', 'Men''s 100 Metre Freestyle', 'Barcelona, Spain', 1992
union select 'Swimming', 'Women''s 200 Metre Breaststroke', 'Barcelona, Spain', 1992
union select 'Swimming', 'Women''s 200 Metre Breaststroke', 'Barcelona, Spain', 1992
union select 'Swimming', 'Women''s 200 Metre Breaststroke', 'Barcelona, Spain', 1992
union select 'Alpine Skiing', 'Women''s Combined', 'Nagano, Japan', 1998
union select 'Alpine Skiing', 'Women''s Combined', 'Nagano, Japan', 1998
union select 'Alpine Skiing', 'Women''s Combined', 'Nagano, Japan', 1998
union select 'Biathlon', 'Men''s 20 Km', 'Nagano, Japan', 1998
union select 'Biathlon', 'Men''s 20 Km', 'Nagano, Japan', 1998
union select 'Biathlon', 'Men''s 20 Km', 'Nagano, Japan', 1998
union select 'Cross-country Skiing', 'Men''s 50 Km freestyle', 'Nagano, Japan', 1998
union select 'Cross-country Skiing', 'Men''s 50 Km freestyle', 'Nagano, Japan', 1998
union select 'Cross-country Skiing', 'Men''s 50 Km freestyle', 'Nagano, Japan', 1998
union select 'Cross-country Skiing', 'Women''s Combined 5 Km + 10 km pursuit', 'Nagano, Japan', 1998
union select 'Cross-country Skiing', 'Women''s Combined 5 Km + 10 km pursuit', 'Nagano, Japan', 1998
union select 'Cross-country Skiing', 'Women''s Combined 5 Km + 10 km pursuit', 'Nagano, Japan', 1998
union select 'Athletics', '200 Metres', 'Sydney, Australia', 2000
union select 'Athletics', '200 Metres', 'Sydney, Australia', 2000
union select 'Athletics', '200 Metres', 'Sydney, Australia', 2000
union select 'Athletics', '5000 Metres', 'Sydney, Australia', 2000
union select 'Athletics', '5000 Metres', 'Sydney, Australia', 2000
union select 'Athletics', '5000 Metres', 'Sydney, Australia', 2000
union select 'Field', 'High Jump', 'Sydney, Australia', 2000
union select 'Field', 'High Jump', 'Sydney, Australia', 2000
union select 'Field', 'High Jump', 'Sydney, Australia', 2000
union select 'Road', 'Men''s Marathon', 'Sydney, Australia', 2000
union select 'Road', 'Men''s Marathon', 'Sydney, Australia', 2000
union select 'Road', 'Men''s Marathon', 'Sydney, Australia', 2000
union select 'Alpine Skiing', 'Women''s Super-G', 'Salt Lake City, United States', 2002
union select 'Alpine Skiing', 'Women''s Super-G', 'Salt Lake City, United States', 2002
union select 'Alpine Skiing', 'Women''s Super-G', 'Salt Lake City, United States', 2002
union select 'Figure Skating', 'Women''s Singles', 'Salt Lake City, United States', 2002
union select 'Figure Skating', 'Women''s Singles', 'Salt Lake City, United States', 2002
union select 'Figure Skating', 'Women''s Singles', 'Salt Lake City, United States', 2002
union select 'Freestyle Skiing', 'Men''s Moguls', 'Salt Lake City, United States', 2002
union select 'Freestyle Skiing', 'Men''s Moguls', 'Salt Lake City, United States', 2002
union select 'Freestyle Skiing', 'Women''s Aerials', 'Salt Lake City, United States', 2002
union select 'Freestyle Skiing', 'Women''s Aerials', 'Salt Lake City, United States', 2002
union select 'Freestyle Skiing', 'Women''s Aerials', 'Salt Lake City, United States', 2002
union select 'Archery', 'Men''s Individual', 'Athens, Greece', 2004
union select 'Archery', 'Men''s Individual', 'Athens, Greece', 2004
union select 'Archery', 'Men''s Individual', 'Athens, Greece', 2004
union select 'Archery', 'Women''s Individual', 'Athens, Greece', 2004
union select 'Archery', 'Women''s Individual', 'Athens, Greece', 2004
union select 'Archery', 'Women''s Individual', 'Athens, Greece', 2004
union select 'Field', 'Long Jump', 'Athens, Greece', 2004
union select 'Field', 'Long Jump', 'Athens, Greece', 2004
union select 'Field', 'Long Jump', 'Athens, Greece', 2004
union select 'Road', 'Women''s Marathon', 'Athens, Greece', 2004
union select 'Road', 'Women''s Marathon', 'Athens, Greece', 2004
union select 'Road', 'Women''s Marathon', 'Athens, Greece', 2004
union select 'Biathlon', 'Men''s Sprint', 'Turin, Italy', 2006
union select 'Biathlon', 'Men''s Sprint', 'Turin, Italy', 2006
union select 'Biathlon', 'Men''s Sprint', 'Turin, Italy', 2006
union select 'Cross-country Skiing', 'Women''s 30 Km', 'Turin, Italy', 2006
union select 'Cross-country Skiing', 'Women''s 30 Km', 'Turin, Italy', 2006
union select 'Cross-country Skiing', 'Women''s 30 Km', 'Turin, Italy', 2006
union select 'Luge', 'Women''s Singles', 'Turin, Italy', 2006
union select 'Luge', 'Women''s Singles', 'Turin, Italy', 2006
union select 'Luge', 'Women''s Singles', 'Turin, Italy', 2006
union select 'Athletics', 'Women''s Javelin Throw', 'Beijing, China', 2008
union select 'Athletics', 'Women''s Javelin Throw', 'Beijing, China', 2008
union select 'Athletics', 'Women''s Javelin Throw', 'Beijing, China', 2008
union select 'Cycling', 'Men''s Time Trial', 'Beijing, China', 2008
union select 'Cycling', 'Men''s Time Trial', 'Beijing, China', 2008
union select 'Cycling', 'Men''s Time Trial', 'Beijing, China', 2008
union select 'Trampoline', 'Men''s', 'Beijing, China', 2008
union select 'Trampoline', 'Men''s', 'Beijing, China', 2008
union select 'Trampoline', 'Men''s', 'Beijing, China', 2008
union select 'Trampoline', 'Women''s', 'Beijing, China', 2008
union select 'Trampoline', 'Women''s', 'Beijing, China', 2008
union select 'Trampoline', 'Women''s', 'Beijing, China', 2008
)
insert OlympicSportSubCategory(SportSubCategoryId, OlympicsId)
select ssc.SportSubCategoryId, o.OlympicsId
from x
join Sport s 
on s.SportName = x.Sport
join SportSubCategory ssc 
on ssc.SportSubCategoryName = x.SportSubcategory 
and ssc.SportId = s.SportId
join City c 
on c.CityName = substring(x.OlympicLocation,0, charindex(',', x.olympiclocation, 0))
join Olympics o 
on o.OlympicYear = x.OlympicYear
and o.CityId = c.CityId

--insert OlympicSportSubCategoryOlympian(OlympianId, OlympicMedalId, OlympicSportSubCategoryId)
;
with x(Sport, SportSubcategory, OlympicLocation, FirstName, LastName, Country, Medal, OlympicYear, YearBorn) as 
(
select 'Athletics', 'Discus Throw', 'Athens, Greece', 'Sotirios', 'Versis', 'Greece', 'Bronze', 1896, 1879
union select 'Athletics', 'Discus Throw', 'Athens, Greece', 'Robert', 'Garrett', 'United States', 'Gold', 1896, 1875
union select 'Athletics', 'Discus Throw', 'Athens, Greece', 'Panagiotis', 'Paraskevopoulos', 'Greece', 'Silver', 1896, 1875
union select 'Cycling', '10 Km', 'Athens, Greece', 'Adolf', 'Schmal', 'Austria', 'Bronze', 1896, 1872
union select 'Cycling', '10 Km', 'Athens, Greece', 'Paul', 'Masson', 'France', 'Gold', 1896, 1876
union select 'Cycling', '10 Km', 'Athens, Greece', 'Léon', 'Flameng', 'France', 'Silver', 1896, 1877
union select 'Fencing', 'Sabre', 'Athens, Greece', 'Holger', 'Nielsen', 'Denmark', 'Bronze', 1896, 1866
union select 'Fencing', 'Sabre', 'Athens, Greece', 'Ioannis', 'Georgiadis', 'Greece', 'Gold', 1896, 1876
union select 'Fencing', 'Sabre', 'Athens, Greece', 'Tilemachos', 'Karakalos', 'Greece', 'Silver', 1896, 1866
union select 'Swimming', 'Sailors 100 M Freestyle', 'Athens, Greece', 'Dimitrios', 'Drivas', 'Greece', 'Bronze', 1896, 1872
union select 'Swimming', 'Sailors 100 M Freestyle', 'Athens, Greece', 'Ioannis', 'Malokinis', 'Greece', 'Gold', 1896, 1880
union select 'Swimming', 'Sailors 100 M Freestyle', 'Athens, Greece', 'Spyridon', 'Chazapis', 'Greece', 'Silver', 1896, 1872
union select 'Archery', 'Au Chapelet 50 Metres', 'Paris, France', 'Eugène', 'Mougin', 'France', 'Gold', 1900, 1852
union select 'Archery', 'Au Chapelet 50 Metres', 'Paris, France', 'Henri', 'Helle', 'France', 'Silver', 1900, 1873
union select 'Athletics', '2500 Metres Steeplechase', 'Paris, France', 'Jean', 'Chastanié', 'France', 'Bronze', 1900, 1875
union select 'Athletics', '2500 Metres Steeplechase', 'Paris, France', 'George', 'Orton', 'Canada', 'Gold', 1900, 1873
union select 'Athletics', '2500 Metres Steeplechase', 'Paris, France', 'Sidney', 'Robinson', 'Great Britain', 'Silver', 1900, 1876
union select 'Croquet', 'Singles, One Ball', 'Paris, France', 'Chrétien', 'Waydelich', 'France', 'Bronze', 1900, 1841
union select 'Croquet', 'Singles, One Ball', 'Paris, France', 'Gaston', 'Aumoitte', 'France', 'Gold', 1900, 1884
union select 'Croquet', 'Singles, One Ball', 'Paris, France', 'Georges', 'Johin', 'France', 'Silver', 1900, 1877
union select 'Archery', 'Men''s Double York Round', 'St. Louis, United States', 'William', 'Thompson', 'United States', 'Bronze', 1904, 1848
union select 'Archery', 'Men''s Double York Round', 'St. Louis, United States', 'George', 'Bryant', 'United States', 'Gold', 1904, 1878
union select 'Archery', 'Men''s Double York Round', 'St. Louis, United States', 'Robert', 'Williams', 'United States', 'Silver', 1904, 1841
union select 'Archery', 'Women''s Double Columbia Round', 'St. Louis, United States', 'Eliza', 'Pollock', 'United States', 'Bronze', 1904, 1840
union select 'Archery', 'Women''s Double Columbia Round', 'St. Louis, United States', 'Matilda', 'Howell', 'United States', 'Gold', 1904, 1859
union select 'Archery', 'Women''s Double Columbia Round', 'St. Louis, United States', 'Emma', 'Cooke', 'United States', 'Silver', 1904, 1848
union select 'Fencing', 'Foil, Individual', 'St. Louis, United States', 'Charles', 'Tatham', 'Cuba', 'Bronze', 1904, 1854
union select 'Fencing', 'Foil, Individual', 'St. Louis, United States', 'Ramón', 'Fonst', 'Cuba', 'Gold', 1904, 1883
union select 'Fencing', 'Foil, Individual', 'St. Louis, United States', 'Albertson', 'Van Zo Post', 'Cuba', 'Silver', 1904, 1866
union select 'Gymnastics', 'Club Swinging', 'St. Louis, United States', 'Ralph', 'Wilson', 'United States', 'Bronze', 1904, 1880
union select 'Gymnastics', 'Club Swinging', 'St. Louis, United States', 'Edward', 'Hennig', 'United States', 'Gold', 1904, 1879
union select 'Gymnastics', 'Club Swinging', 'St. Louis, United States', 'Emil', 'Voigt', 'United States', 'Silver', 1904, 1879
union select 'Athletics', '10 Miles Walk', 'London, United Kingdom', 'Edward', 'Spencer', 'Great Britain', 'Bronze', 1908, 1881
union select 'Athletics', '10 Miles Walk', 'London, United Kingdom', 'George', 'Larner', 'Great Britain', 'Gold', 1908, 1875
union select 'Athletics', '10 Miles Walk', 'London, United Kingdom', 'Ernest', 'Webb', 'Great Britain', 'Silver', 1908, 1874
union select 'Athletics', 'Freestyle Javelin', 'London, United Kingdom', 'Arne', 'Halse', 'Norway', 'Bronze', 1908, 1887
union select 'Athletics', 'Freestyle Javelin', 'London, United Kingdom', 'Eric', 'Lemming', 'Sweden', 'Gold', 1908, 1880
union select 'Athletics', 'Freestyle Javelin', 'London, United Kingdom', 'Michalis', 'Dorizas', 'Greece', 'Silver', 1908, 1886
union select 'Boxing', 'Heavyweight', 'London, United Kingdom', 'Frank', 'Parks', 'Great Britain', 'Bronze', 1908, 1875
union select 'Boxing', 'Heavyweight', 'London, United Kingdom', 'Albert', 'Oldman', 'Great Britain', 'Gold', 1908, 1883
union select 'Boxing', 'Heavyweight', 'London, United Kingdom', 'Sidney', 'Evans', 'Great Britain', 'Silver', 1908, 1881
union select 'Tennis', 'Women''s Indoor Singles', 'London, United Kingdom', 'Märtha', 'Adlerstråhle', 'Sweden', 'Bronze', 1908, 1868
union select 'Tennis', 'Women''s Indoor Singles', 'London, United Kingdom', 'Gwendoline', 'Eastlake-Smith', 'Great Britain', 'Gold', 1908, 1883
union select 'Tennis', 'Women''s Indoor Singles', 'London, United Kingdom', 'Alice', 'Greene', 'Great Britain', 'Silver', 1908, 1879
union select 'Athletics', '110 Metres Hurdles', 'Stockholm, Sweden', 'Martin', 'Hawkins', 'United States', 'Bronze', 1912, 1888
union select 'Athletics', '110 Metres Hurdles', 'Stockholm, Sweden', 'Fred', 'Kelly', 'United States', 'Gold', 1912, 1891
union select 'Athletics', '110 Metres Hurdles', 'Stockholm, Sweden', 'James', 'Wendell', 'United States', 'Silver', 1912, 1890
union select 'Cycling', 'Individual Time Trial', 'Stockholm, Sweden', 'Carl', 'Schutte', 'United States', 'Bronze', 1912, 1887
union select 'Cycling', 'Individual Time Trial', 'Stockholm, Sweden', 'Rudolph', 'Lewis', 'South Africa', 'Gold', 1912, 1887
union select 'Cycling', 'Individual Time Trial', 'Stockholm, Sweden', 'Freddie', 'Grubb', 'Great Britain', 'Silver', 1912, 1887
union select 'Shooting', '300 M Military Rifle, three positions', 'Stockholm, Sweden', 'Engebret', 'Skogen', 'Norway', 'Bronze', 1912, 1887
union select 'Shooting', '300 M Military Rifle, three positions', 'Stockholm, Sweden', 'Sándor', 'Prokopp', 'Hungary', 'Gold', 1912, 1887
union select 'Shooting', '300 M Military Rifle, three positions', 'Stockholm, Sweden', 'Carl', 'Osburn', 'United States', 'Silver', 1912, 1884
union select 'Figure Skating', 'Ladies'' Singles', 'Chamonix, France', 'Ethel', 'Muckelt', 'Great Britain', 'Bronze', 1924, 1885
union select 'Figure Skating', 'Ladies'' Singles', 'Chamonix, France', 'Herma', 'Szabo', 'Austria', 'Gold', 1924, 1902
union select 'Figure Skating', 'Ladies'' Singles', 'Chamonix, France', 'Beatrix', 'Loughran', 'United States', 'Silver', 1924, 1900
union select 'Speed Skating', '5000 Metres', 'Chamonix, France', 'Roald', 'Larsen', 'Norway', 'Bronze', 1924, 1898
union select 'Speed Skating', '5000 Metres', 'Chamonix, France', 'Clas', 'Thunberg', 'Finland', 'Gold', 1924, 1893
union select 'Speed Skating', '5000 Metres', 'Chamonix, France', 'Julius', 'Skutnabb', 'Finland', 'Silver', 1924, 1889
union select 'Cross-country Skiing', '18 Km', 'St. Moritz, Switzerland', 'Reidar', 'Ødegaard', 'Norway', 'Bronze', 1928, 1901
union select 'Cross-country Skiing', '18 Km', 'St. Moritz, Switzerland', 'Johan', 'Grøttumsbråten', 'Norway', 'Gold', 1928, 1899
union select 'Cross-country Skiing', '18 Km', 'St. Moritz, Switzerland', 'Ole', 'Hegge', 'Norway', 'Silver', 1928, 1898
union select 'Skeleton', 'Men''s Individual', 'St. Moritz, Switzerland', 'David', 'Carnegie', 'Great Britain', 'Bronze', 1928, 1901
union select 'Skeleton', 'Men''s Individual', 'St. Moritz, Switzerland', 'Jennison', 'Heaton', 'United States', 'Gold', 1928, 1904
union select 'Skeleton', 'Men''s Individual', 'St. Moritz, Switzerland', 'John', 'Heaton', 'United States', 'Silver', 1928, 1908
union select 'Ski Jumping', 'Men''s Individual', 'St. Moritz, Switzerland', 'Rudolf', 'Burkert', 'Czechoslovakia', 'Bronze', 1928, 1904
union select 'Ski Jumping', 'Men''s Individual', 'St. Moritz, Switzerland', 'Alf', 'Andersen', 'Norway', 'Gold', 1928, 1906
union select 'Ski Jumping', 'Men''s Individual', 'St. Moritz, Switzerland', 'Sigmund', 'Ruud', 'Norway', 'Silver', 1928, 1907
union select 'Speed Skating', '5000 Metres', 'St. Moritz, Switzerland', 'Bernt', 'Evensen', 'Norway', 'Bronze', 1928, 1905
union select 'Speed Skating', '5000 Metres', 'St. Moritz, Switzerland', 'Ivar', 'Ballangrud', 'Norway', 'Gold', 1928, 1904
union select 'Speed Skating', '5000 Metres', 'St. Moritz, Switzerland', 'Julius', 'Skutnabb', 'Finland', 'Silver', 1928, 1889
union select 'Athletics', 'Women''s 100 M', 'Los Angeles, United States', 'Wilhelmina', 'von Bremen', 'United States', 'Bronze', 1932, 1909
union select 'Athletics', 'Women''s 100 M', 'Los Angeles, United States', 'Stanislawa', 'Walasiewicz', 'Poland', 'Gold', 1932, 1911
union select 'Athletics', 'Women''s 100 M', 'Los Angeles, United States', 'Hilda', 'Strike', 'Canada', 'Silver', 1932, 1910
union select 'Boxing', 'Featherweight', 'Los Angeles, United States', 'Allan', 'Carlsson', 'Sweden', 'Bronze', 1932, 1910
union select 'Boxing', 'Featherweight', 'Los Angeles, United States', 'Carmelo', 'Robledo', 'Argentina', 'Gold', 1932, 1912
union select 'Boxing', 'Featherweight', 'Los Angeles, United States', 'Josef', 'Schleinkofer', 'Germany', 'Silver', 1932, 1910
union select 'Cycling', 'Individual Time Trial', 'Los Angeles, United States', 'Bernhard', 'Britz', 'Sweden', 'Bronze', 1932, 1906
union select 'Cycling', 'Individual Time Trial', 'Los Angeles, United States', 'Attilio', 'Pavesi', 'Italy', 'Gold', 1932, 1910
union select 'Cycling', 'Individual Time Trial', 'Los Angeles, United States', 'Guglielmo', 'Segato', 'Italy', 'Silver', 1932, 1906
union select 'Diving', '10 Metre Platform', 'Los Angeles, United States', 'Marion', 'Roper', 'United States', 'Bronze', 1932, 1910
union select 'Diving', '10 Metre Platform', 'Los Angeles, United States', 'Dorothy', 'Poynton-Hill', 'United States', 'Gold', 1932, 1915
union select 'Diving', '10 Metre Platform', 'Los Angeles, United States', 'Georgia', 'Coleman', 'United States', 'Silver', 1932, 1912
union select 'Figure Skating', 'Men''s Singles', 'Lake Placid, United States', 'Montgomery', 'Wilson', 'Canada', 'Bronze', 1932, 1909
union select 'Figure Skating', 'Men''s Singles', 'Lake Placid, United States', 'Karl', 'Schäfer', 'Austria', 'Gold', 1932, 1909
union select 'Figure Skating', 'Men''s Singles', 'Lake Placid, United States', 'Gillis', 'Grafström', 'Sweden', 'Silver', 1932, 1893
union select 'Nordic Combined', 'Men''s Individual', 'Lake Placid, United States', 'Hans', 'Vinjarengen', 'Norway', 'Bronze', 1932, 1905
union select 'Nordic Combined', 'Men''s Individual', 'Lake Placid, United States', 'Johan', 'Grøttumsbråten', 'Norway', 'Gold', 1932, 1899
union select 'Nordic Combined', 'Men''s Individual', 'Lake Placid, United States', 'Ole', 'Stenen', 'Norway', 'Silver', 1932, 1903
union select 'Ski Jumping', 'Men''s Individual', 'Lake Placid, United States', 'Kaare', 'Walberg', 'Norway', 'Bronze', 1932, 1912
union select 'Ski Jumping', 'Men''s Individual', 'Lake Placid, United States', 'Birger', 'Ruud', 'Norway', 'Gold', 1932, 1911
union select 'Ski Jumping', 'Men''s Individual', 'Lake Placid, United States', 'Hans', 'Beck', 'Norway', 'Silver', 1932, 1911
union select 'Alpine Skiing', 'Women''s Combined', 'Garmisch-Partenkirchen, Germany', 'Laila', 'Schou Nilsen', 'Norway', 'Bronze', 1936, 1919
union select 'Alpine Skiing', 'Women''s Combined', 'Garmisch-Partenkirchen, Germany', 'Christl', 'Cranz', 'Germany', 'Gold', 1936, 1914
union select 'Alpine Skiing', 'Women''s Combined', 'Garmisch-Partenkirchen, Germany', 'Käthe', 'Grasegger', 'Germany', 'Silver', 1936, 1917
union select 'Cross-country Skiing', '18 Km', 'Garmisch-Partenkirchen, Germany', 'Pekka', 'Niemi', 'Finland', 'Bronze', 1936, 1909
union select 'Cross-country Skiing', '18 Km', 'Garmisch-Partenkirchen, Germany', 'Erik', 'Larsson', 'Sweden', 'Gold', 1936, 1912
union select 'Cross-country Skiing', '18 Km', 'Garmisch-Partenkirchen, Germany', 'Oddbjørn', 'Hagen', 'Norway', 'Silver', 1936, 1908
union select 'Cross-country Skiing', '50 Km', 'Garmisch-Partenkirchen, Germany', 'Nils-Joel', 'Englund', 'Sweden', 'Bronze', 1936, 1907
union select 'Cross-country Skiing', '50 Km', 'Garmisch-Partenkirchen, Germany', 'Elis', 'Wiklund', 'Sweden', 'Gold', 1936, 1909
union select 'Cross-country Skiing', '50 Km', 'Garmisch-Partenkirchen, Germany', 'Axel', 'Wikström', 'Sweden', 'Silver', 1936, 1907
union select 'Figure Skating', 'Ladies'' Singles', 'Garmisch-Partenkirchen, Germany', 'Vivi-Anne', 'Hultén', 'Sweden', 'Bronze', 1936, 1911
union select 'Figure Skating', 'Ladies'' Singles', 'Garmisch-Partenkirchen, Germany', 'Sonja', 'Henie', 'Norway', 'Gold', 1936, 1912
union select 'Figure Skating', 'Ladies'' Singles', 'Garmisch-Partenkirchen, Germany', 'Cecilia', 'Colledge', 'Great Britain', 'Silver', 1936, 1920
union select 'Athletics', 'Men''s 100 M', 'London, United Kingdom', 'Lloyd', 'La Beach', 'Panama', 'Bronze', 1948, 1922
union select 'Athletics', 'Men''s 100 M', 'London, United Kingdom', 'Harrison', 'Dillard', 'United States', 'Gold', 1948, 1923
union select 'Athletics', 'Men''s 100 M', 'London, United Kingdom', 'Barney', 'Ewell', 'United States', 'Silver', 1948, 1918
union select 'Athletics', 'Women''s 80 M Hurdles', 'London, United Kingdom', 'Shirley', 'Strickland', 'Western Australia', 'Bronze', 1948, 1925
union select 'Athletics', 'Women''s 80 M Hurdles', 'London, United Kingdom', 'Fanny', 'Blankers-Koen', 'Netherlands', 'Gold', 1948, 1918
union select 'Athletics', 'Women''s 80 M Hurdles', 'London, United Kingdom', 'Maureen', 'Gardner', 'Great Britain', 'Silver', 1948, 1928
union select 'Boxing', 'Flyweight', 'London, United Kingdom', 'Han', 'Soo-ann', 'South Korea', 'Bronze', 1948, 1926
union select 'Boxing', 'Flyweight', 'London, United Kingdom', 'Pascual', 'Pérez', 'Argentina', 'Gold', 1948, 1926
union select 'Boxing', 'Flyweight', 'London, United Kingdom', 'Spartaco', 'Bandinelli', 'Italy', 'Silver', 1948, 1921
union select 'Diving', 'Women''s 3 Metre Springboard', 'London, United Kingdom', 'Patsy', 'Elsener', 'United States', 'Bronze', 1948, 1929
union select 'Diving', 'Women''s 3 Metre Springboard', 'London, United Kingdom', 'Vicki', 'Draves', 'United States', 'Gold', 1948, 1924
union select 'Diving', 'Women''s 3 Metre Springboard', 'London, United Kingdom', 'Zoe Ann', 'Olsen-Jensen', 'United States', 'Silver', 1948, 1931
union select 'Alpine Skiing', 'Women''s Downhill', 'St. Moritz, Switzerland', 'Resi', 'Hammerer', 'Austria', 'Bronze', 1948, 1925
union select 'Alpine Skiing', 'Women''s Downhill', 'St. Moritz, Switzerland', 'Hedy', 'Schlunegger', 'Switzerland', 'Gold', 1948, 1923
union select 'Alpine Skiing', 'Women''s Downhill', 'St. Moritz, Switzerland', 'Trude', 'Beiser', 'Austria', 'Silver', 1948, 1927
union select 'Cross-country Skiing', '18 Km', 'St. Moritz, Switzerland', 'Gunnar', 'Eriksson', 'Sweden', 'Bronze', 1948, 1921
union select 'Cross-country Skiing', '18 Km', 'St. Moritz, Switzerland', 'Martin', 'Lundström', 'Sweden', 'Gold', 1948, 1918
union select 'Cross-country Skiing', '18 Km', 'St. Moritz, Switzerland', 'Nils', 'Östensson', 'Sweden', 'Silver', 1948, 1918
union select 'Figure Skating', 'Men''s Singles', 'St. Moritz, Switzerland', 'Edi', 'Rada', 'Austria', 'Bronze', 1948, 1922
union select 'Figure Skating', 'Men''s Singles', 'St. Moritz, Switzerland', 'Dick', 'Button', 'United States', 'Gold', 1948, 1929
union select 'Figure Skating', 'Men''s Singles', 'St. Moritz, Switzerland', 'Hans', 'Gerschwiler', 'Switzerland', 'Silver', 1948, 1920
union select 'Ski Jumping', 'Men''s Individual', 'St. Moritz, Switzerland', 'Thorleif', 'Schjelderup', 'Norway', 'Bronze', 1948, 1920
union select 'Ski Jumping', 'Men''s Individual', 'St. Moritz, Switzerland', 'Petter', 'Hugsted', 'Norway', 'Gold', 1948, 1921
union select 'Ski Jumping', 'Men''s Individual', 'St. Moritz, Switzerland', 'Birger', 'Ruud', 'Norway', 'Silver', 1948, 1911
union select 'Alpine Skiing', 'Men''s Giant Slalom', 'Oslo, Norway', 'Toni', 'Spiss', 'Austria', 'Bronze', 1952, 1930
union select 'Alpine Skiing', 'Men''s Giant Slalom', 'Oslo, Norway', 'Stein', 'Eriksen', 'Norway', 'Gold', 1952, 1927
union select 'Alpine Skiing', 'Men''s Giant Slalom', 'Oslo, Norway', 'Christian', 'Pravda', 'Austria', 'Silver', 1952, 1927
union select 'Alpine Skiing', 'Women''s Slalom', 'Oslo, Norway', 'Annemarie', 'Buchner', 'Germany', 'Bronze', 1952, 1924
union select 'Alpine Skiing', 'Women''s Slalom', 'Oslo, Norway', 'Andrea Mead', 'Lawrence', 'United States', 'Gold', 1952, 1932
union select 'Alpine Skiing', 'Women''s Slalom', 'Oslo, Norway', 'Ossi', 'Reichert', 'Germany', 'Silver', 1952, 1925
union select 'Nordic Combined', 'Men''s Individual', 'Oslo, Norway', 'Sverre', 'Stenersen', 'Norway', 'Bronze', 1952, 1926
union select 'Nordic Combined', 'Men''s Individual', 'Oslo, Norway', 'Simon', 'Slåttvik', 'Norway', 'Gold', 1952, 1917
union select 'Nordic Combined', 'Men''s Individual', 'Oslo, Norway', 'Heikki', 'Hasu', 'Finland', 'Silver', 1952, 1926
union select 'Speed Skating', '5000 Metres', 'Oslo, Norway', 'Sverre Ingolf', 'Haugli', 'Norway', 'Bronze', 1952, 1925
union select 'Speed Skating', '5000 Metres', 'Oslo, Norway', 'Hjalmar', 'Andersen', 'Norway', 'Gold', 1952, 1923
union select 'Speed Skating', '5000 Metres', 'Oslo, Norway', 'Kees', 'Broekman', 'Netherlands', 'Silver', 1952, 1927
union select 'Alpine Skiing', 'Women''s Downhill', 'Cortina d''Ampezzo, Italy', 'Lucile', 'Wheeler', 'Canada', 'Bronze', 1956, 1935
union select 'Alpine Skiing', 'Women''s Downhill', 'Cortina d''Ampezzo, Italy', 'Madeleine', 'Berthod', 'Switzerland', 'Gold', 1956, 1931
union select 'Alpine Skiing', 'Women''s Downhill', 'Cortina d''Ampezzo, Italy', 'Frieda', 'Dänzer', 'Switzerland', 'Silver', 1956, 1930
union select 'Nordic Combined', 'Men''s Individual', 'Cortina d''Ampezzo, Italy', 'Franciszek', 'Gasienica Gron', 'Poland', 'Bronze', 1956, 1931
union select 'Nordic Combined', 'Men''s Individual', 'Cortina d''Ampezzo, Italy', 'Sverre', 'Stenersen', 'Norway', 'Gold', 1956, 1926
union select 'Nordic Combined', 'Men''s Individual', 'Cortina d''Ampezzo, Italy', 'Bengt', 'Eriksson', 'Sweden', 'Silver', 1956, 1931
union select 'Ski Jumping', 'Men''s Individual', 'Cortina d''Ampezzo, Italy', 'Harry', 'Glaß', 'Germany', 'Bronze', 1956, 1930
union select 'Ski Jumping', 'Men''s Individual', 'Cortina d''Ampezzo, Italy', 'Antti', 'Hyvärinen', 'Finland', 'Gold', 1956, 1932
union select 'Ski Jumping', 'Men''s Individual', 'Cortina d''Ampezzo, Italy', 'Aulis', 'Kallakorpi', 'Finland', 'Silver', 1956, 1929
union select 'Athletics', 'Marathon', 'Rome, Italy', 'Barry', 'Magee', 'New Zealand', 'Bronze', 1960, 1934
union select 'Athletics', 'Marathon', 'Rome, Italy', 'Abebe', 'Bikila', 'Ethiopia', 'Gold', 1960, 1932
union select 'Athletics', 'Marathon', 'Rome, Italy', 'Rhadi', 'Ben Abdesselam', 'Morocco', 'Silver', 1960, 1929
union select 'Canoeing', 'C-1 1000 M', 'Rome, Italy', 'Leon', 'Rotman', 'Romania', 'Bronze', 1960, 1934
union select 'Canoeing', 'C-1 1000 M', 'Rome, Italy', 'János', 'Parti', 'Hungary', 'Gold', 1960, 1932
union select 'Canoeing', 'C-1 1000 M', 'Rome, Italy', 'Aleksandr', 'Silayev', 'Soviet Union', 'Silver', 1960, 1928
union select 'Cycling', 'Road Race', 'Rome, Italy', 'Willy', 'Vanden Berghen', 'Belgium', 'Bronze', 1960, 1939
union select 'Cycling', 'Road Race', 'Rome, Italy', ' Viktor', 'Kapitonov', 'Soviet Union', 'Gold', 1960, 1933
union select 'Cycling', 'Road Race', 'Rome, Italy', 'Livio', 'Trapè', 'Italy', 'Silver', 1960, 1937
union select 'Gymnastics', 'Vault', 'Rome, Italy', 'Larisa', 'Latynina', 'Soviet Union', 'Bronze', 1960, 1934
union select 'Gymnastics', 'Vault', 'Rome, Italy', 'Margarita', 'Nikolaeva', 'Soviet Union', 'Gold', 1960, 1935
union select 'Gymnastics', 'Vault', 'Rome, Italy', 'Sofia', 'Muratova', 'Soviet Union', 'Silver', 1960, 1929
union select 'Alpine Skiing', 'Men''s Downhill', 'Squaw Valley, United States', 'Guy', 'Périllat', 'France', 'Bronze', 1960, 1940
union select 'Alpine Skiing', 'Men''s Downhill', 'Squaw Valley, United States', 'Jean', 'Vuarnet', 'France', 'Gold', 1960, 1933
union select 'Alpine Skiing', 'Men''s Downhill', 'Squaw Valley, United States', 'Hans-Peter', 'Lanig', 'Germany', 'Silver', 1960, 1935
union select 'Biathlon', 'Men''s 20 Km', 'Squaw Valley, United States', 'Aleksandr', 'Privalov', 'Soviet Union', 'Bronze', 1960, 1933
union select 'Biathlon', 'Men''s 20 Km', 'Squaw Valley, United States', 'Klas', 'Lestander', 'Sweden', 'Gold', 1960, 1931
union select 'Biathlon', 'Men''s 20 Km', 'Squaw Valley, United States', 'Antti', 'Tyrväinen', 'Finland', 'Silver', 1960, 1933
union select 'Cross-country Skiing', 'Women''s 10 Km', 'Squaw Valley, United States', 'Radya', 'Yeroshina', 'Soviet Union', 'Bronze', 1960, 1930
union select 'Cross-country Skiing', 'Women''s 10 Km', 'Squaw Valley, United States', 'Maria', 'Gusakova', 'Soviet Union', 'Gold', 1960, 1931
union select 'Cross-country Skiing', 'Women''s 10 Km', 'Squaw Valley, United States', 'Lyubov', 'Kozyreva', 'Soviet Union', 'Silver', 1960, 1929
union select 'Ski Jumping', 'Men''s Individual', 'Squaw Valley, United States', 'Otto', 'Leodolter', 'Austria', 'Bronze', 1960, 1936
union select 'Ski Jumping', 'Men''s Individual', 'Squaw Valley, United States', 'Helmut', 'Recknagel', 'Germany', 'Gold', 1960, 1937
union select 'Ski Jumping', 'Men''s Individual', 'Squaw Valley, United States', 'Niilo', 'Halonen', 'Finland', 'Silver', 1960, 1940
union select 'Speed Skating', 'Men''s 500 Metres', 'Squaw Valley, United States', 'Rafayel', 'Grach', 'Soviet Union', 'Bronze', 1960, 1932
union select 'Speed Skating', 'Men''s 500 Metres', 'Squaw Valley, United States', 'Yevgeny', 'Grishin', 'Soviet Union', 'Gold', 1960, 1931
union select 'Speed Skating', 'Men''s 500 Metres', 'Squaw Valley, United States', 'Bill', 'Disney', 'United States', 'Silver', 1960, 1932
union select 'Athletics', '200 M', 'Tokyo, Japan', 'Edwin', 'Roberts', 'Trinidad and Tobago', 'Bronze', 1964, 1941
union select 'Athletics', '200 M', 'Tokyo, Japan', 'Henry', 'Carr', 'United States', 'Gold', 1964, 1941
union select 'Athletics', '200 M', 'Tokyo, Japan', 'Paul', 'Drayton', 'United States', 'Silver', 1964, 1939
union select 'Canoeing', 'K-1 1000 Metres', 'Tokyo, Japan', 'Aurel', 'Vernescu', 'Romania', 'Bronze', 1964, 1939
union select 'Canoeing', 'K-1 1000 Metres', 'Tokyo, Japan', 'Rolf', 'Peterson', 'Sweden', 'Gold', 1964, 1944
union select 'Canoeing', 'K-1 1000 Metres', 'Tokyo, Japan', 'Mihály', 'Hesz', 'Hungary', 'Silver', 1964, 1943
union select 'Cycling', 'Individual Road Race', 'Tokyo, Japan', 'Walter', 'Godefroot', 'Belgium', 'Bronze', 1964, 1943
union select 'Cycling', 'Individual Road Race', 'Tokyo, Japan', 'Mario', 'Zanin', 'Italy', 'Gold', 1964, 1940
union select 'Cycling', 'Individual Road Race', 'Tokyo, Japan', 'Kjell', 'Rodian', 'Denmark', 'Silver', 1964, 1942
union select 'Diving', '3 M Springboard', 'Tokyo, Japan', 'Lawrence', 'Andreasen', 'United States', 'Bronze', 1964, 1945
union select 'Diving', '3 M Springboard', 'Tokyo, Japan', 'Kenneth', 'Sitzberger', 'United States', 'Gold', 1964, 1945
union select 'Diving', '3 M Springboard', 'Tokyo, Japan', 'Frank', 'Gorman', 'United States', 'Silver', 1964, 1937
union select 'Biathlon', 'Men''s 20 Km', 'Innsbruck, Austria', 'Olav', 'Jordet', 'Norway', 'Bronze', 1964, 1939
union select 'Biathlon', 'Men''s 20 Km', 'Innsbruck, Austria', 'Vladimir', 'Melanin', 'Soviet Union', 'Gold', 1964, 1933
union select 'Biathlon', 'Men''s 20 Km', 'Innsbruck, Austria', 'Aleksandr', 'Privalov', 'Soviet Union', 'Silver', 1964, 1933
union select 'Cross-country Skiing', 'Women''s 10 Km', 'Innsbruck, Austria', 'Maria', 'Gusakova', 'Soviet Union', 'Bronze', 1964, 1931
union select 'Cross-country Skiing', 'Women''s 10 Km', 'Innsbruck, Austria', 'Klavdiya', 'Boyarskikh', 'Soviet Union', 'Gold', 1964, 1939
union select 'Cross-country Skiing', 'Women''s 10 Km', 'Innsbruck, Austria', 'Yevdokiya', 'Mekshilo', 'Soviet Union', 'Silver', 1964, 1931
union select 'Ski Jumping', 'Men''s Normal Hill', 'Innsbruck, Austria', 'Torgeir', 'Brandtzæg', 'Norway', 'Bronze', 1964, 1941
union select 'Ski Jumping', 'Men''s Normal Hill', 'Innsbruck, Austria', 'Veikko', 'Kankkonen', 'Finland', 'Gold', 1964, 1940
union select 'Ski Jumping', 'Men''s Normal Hill', 'Innsbruck, Austria', 'Toralf', 'Engan', 'Norway', 'Silver', 1964, 1936
union select 'Speed Skating', 'Women''s 1500 metres', 'Innsbruck, Austria', 'Berta', 'Kolokoltseva', 'Soviet Union', 'Bronze', 1964, 1937
union select 'Speed Skating', 'Women''s 1500 metres', 'Innsbruck, Austria', 'Lidiya', 'Skoblikova', 'Soviet Union', 'Gold', 1964, 1939
union select 'Speed Skating', 'Women''s 1500 metres', 'Innsbruck, Austria', 'Kaija', 'Mustonen', 'Finland', 'Silver', 1964, 1941
union select 'Alpine Skiing', 'Women''s Downhill', 'Grenoble, France', 'Christl', 'Haas', 'Austria', 'Bronze', 1968, 1943
union select 'Alpine Skiing', 'Women''s Downhill', 'Grenoble, France', 'Olga', 'Pall', 'Austria', 'Gold', 1968, 1947
union select 'Alpine Skiing', 'Women''s Downhill', 'Grenoble, France', 'Isabelle', 'Mir', 'France', 'Silver', 1968, 1949
union select 'Cross-country Skiing', 'Men''s 15 Km', 'Grenoble, France', 'Gunnar', 'Larsson', 'Sweden', 'Bronze', 1968, 1944
union select 'Cross-country Skiing', 'Men''s 15 Km', 'Grenoble, France', 'Harald', 'Grønningen', 'Norway', 'Gold', 1968, 1934
union select 'Cross-country Skiing', 'Men''s 15 Km', 'Grenoble, France', 'Eero', 'Mäntyranta', 'Finland', 'Silver', 1968, 1937
union select 'Figure Skating', 'Ladies'' Singles', 'Grenoble, France', 'Hana', 'Mašková', 'Czechoslovakia', 'Bronze', 1968, 1949
union select 'Figure Skating', 'Ladies'' Singles', 'Grenoble, France', 'Peggy', 'Fleming', 'United States', 'Gold', 1968, 1948
union select 'Figure Skating', 'Ladies'' Singles', 'Grenoble, France', 'Gabriele', 'Seyfert', 'East Germany', 'Silver', 1968, 1948
union select 'Speed Skating', 'Men''s 10000 Metres', 'Grenoble, France', 'Örjan', 'Sandler', 'Sweden', 'Bronze', 1968, 1940
union select 'Speed Skating', 'Men''s 10000 Metres', 'Grenoble, France', 'Johnny', 'Höglin', 'Sweden', 'Gold', 1968, 1943
union select 'Speed Skating', 'Men''s 10000 Metres', 'Grenoble, France', 'Fred', 'Anton Maier', 'Norway', 'Silver', 1968, 1938
union select 'Biathlon', 'Men''s Individual', 'Sapporo, Japan', 'Lars-Göran', 'Arwidson', 'Sweden', 'Bronze', 1972, 1946
union select 'Biathlon', 'Men''s Individual', 'Sapporo, Japan', 'Magnar', 'Solberg', 'Norway', 'Gold', 1972, 1937
union select 'Biathlon', 'Men''s Individual', 'Sapporo, Japan', 'Hansjörg', 'Knauthe', 'East Germany', 'Silver', 1972, 1944
union select 'Cross-country Skiing', '10 Km', 'Sapporo, Japan', 'Marjatta', 'Kajosmaa', 'Finland', 'Bronze', 1972, 1938
union select 'Cross-country Skiing', '10 Km', 'Sapporo, Japan', 'Galina', 'Kulakova', 'Soviet Union', 'Gold', 1972, 1942
union select 'Cross-country Skiing', '10 Km', 'Sapporo, Japan', 'Alevtina', 'Olyunina', 'Soviet Union', 'Silver', 1972, 1942
union select 'Luge', 'Men''s Singles', 'Sapporo, Japan', 'Wolfram', 'Fiedler', 'East Germany', 'Bronze', 1972, 1951
union select 'Luge', 'Men''s Singles', 'Sapporo, Japan', 'Wolfgang', 'Scheidel', 'East Germany', 'Gold', 1972, 1943
union select 'Luge', 'Men''s Singles', 'Sapporo, Japan', 'Harald', 'Ehrig', 'East Germany', 'Silver', 1972, 1949
union select 'Luge', 'Women''s Singles', 'Sapporo, Japan', 'Margit', 'Schumann', 'East Germany', 'Bronze', 1972, 1952
union select 'Luge', 'Women''s Singles', 'Sapporo, Japan', 'Anna-Maria', 'Müller', 'East Germany', 'Gold', 1972, 1949
union select 'Luge', 'Women''s Singles', 'Sapporo, Japan', 'Ute', 'Rührold', 'East Germany', 'Silver', 1972, 1954
union select 'Archery', 'Mens''', 'Montreal, Canada', 'Giancarlo', 'Ferrari', 'Italy', 'Bronze', 1976, 1942
union select 'Archery', 'Mens''', 'Montreal, Canada', 'Darrell', 'Pace', 'United States', 'Gold', 1976, 1956
union select 'Archery', 'Mens''', 'Montreal, Canada', 'Hiroshi', 'Michinaga', 'Japan', 'Silver', 1976, 1956
union select 'Athletics', '100 M', 'Montreal, Canada', 'Valeriy', 'Borzov', 'Soviet Union', 'Bronze', 1976, 1949
union select 'Athletics', '100 M', 'Montreal, Canada', 'Hasely', 'Crawford', 'Trinidad and Tobago', 'Gold', 1976, 1950
union select 'Athletics', '100 M', 'Montreal, Canada', 'Don', 'Quarrie', 'Jamaica', 'Silver', 1976, 1951
union select 'Gymnastics', 'Uneven Bars', 'Montreal, Canada', 'Márta', 'Egervári', 'Hungary', 'Bronze', 1976, 1956
union select 'Gymnastics', 'Uneven Bars', 'Montreal, Canada', 'Nadia', 'Comaneci', 'Romania', 'Gold', 1976, 1961
union select 'Gymnastics', 'Uneven Bars', 'Montreal, Canada', 'Teodora', 'Ungureanu', 'Romania', 'Silver', 1976, 1960
union select 'Swimming', '100 M Freestyle', 'Montreal, Canada', 'Enith', 'Brigitha', 'Netherlands', 'Bronze', 1976, 1955
union select 'Swimming', '100 M Freestyle', 'Montreal, Canada', 'Kornelia', 'Ender', 'East Germany', 'Gold', 1976, 1958
union select 'Swimming', '100 M Freestyle', 'Montreal, Canada', 'Petra', 'Priemer', 'East Germany', 'Silver', 1976, 1961
union select 'Figure Skating', 'Men''s Singles', 'Innsbruck, Austria', 'Toller', 'Cranston', 'Canada', 'Bronze', 1976, 1949
union select 'Figure Skating', 'Men''s Singles', 'Innsbruck, Austria', 'John', 'Curry', 'Great Britain', 'Gold', 1976, 1949
union select 'Figure Skating', 'Men''s Singles', 'Innsbruck, Austria', 'Vladimir', 'Kovalyov', 'Soviet Union', 'Silver', 1976, 1953
union select 'Figure Skating', 'Women''s Singles', 'Innsbruck, Austria', 'Christine', 'Errath', 'East Germany', 'Bronze', 1976, 1956
union select 'Figure Skating', 'Women''s Singles', 'Innsbruck, Austria', 'Dorothy', 'Hamill', 'United States', 'Gold', 1976, 1956
union select 'Figure Skating', 'Women''s Singles', 'Innsbruck, Austria', 'Dianne', 'de Leeuw', 'Netherlands', 'Silver', 1976, 1955
union select 'Luge', 'Men''s Singles', 'Innsbruck, Austria', 'Hans', 'Rinn', 'East Germany', 'Bronze', 1976, 1953
union select 'Luge', 'Men''s Singles', 'Innsbruck, Austria', 'Dettlef', 'Günther', 'East Germany', 'Gold', 1976, 1954
union select 'Luge', 'Men''s Singles', 'Innsbruck, Austria', 'Josef', 'Fendt', 'West Germany', 'Silver', 1976, 1947
union select 'Luge', 'Women''s Singles', 'Innsbruck, Austria', 'Elisabeth', 'Demleitner', 'West Germany', 'Bronze', 1976, 1952
union select 'Luge', 'Women''s Singles', 'Innsbruck, Austria', 'Margit', 'Schumann', 'East Germany', 'Gold', 1976, 1952
union select 'Luge', 'Women''s Singles', 'Innsbruck, Austria', 'Ute', 'Rührold', 'East Germany', 'Silver', 1976, 1954
union select 'Alpine Skiing', 'Men''s Downhill', 'Lake Placid, United States', 'Steve', 'Podborski', 'Canada', 'Bronze', 1980, 1957
union select 'Alpine Skiing', 'Men''s Downhill', 'Lake Placid, United States', 'Leonhard', 'Stock', 'Austria', 'Gold', 1980, 1958
union select 'Alpine Skiing', 'Men''s Downhill', 'Lake Placid, United States', 'Peter', 'Wirnsberger', 'Austria', 'Silver', 1980, 1958
union select 'Alpine Skiing', 'Men''s Slalom', 'Lake Placid, United States', 'Jacques', 'Lüthy', 'Switzerland', 'Bronze', 1980, 1959
union select 'Alpine Skiing', 'Men''s Slalom', 'Lake Placid, United States', 'Ingemar', 'Stenmark', 'Sweden', 'Gold', 1980, 1956
union select 'Alpine Skiing', 'Men''s Slalom', 'Lake Placid, United States', 'Phil', 'Mahre', 'United States', 'Silver', 1980, 1957
union select 'Alpine Skiing', 'Women''s Downhill', 'Lake Placid, United States', 'Marie-Theres', 'Nadig', 'Switzerland', 'Bronze', 1980, 1954
union select 'Alpine Skiing', 'Women''s Downhill', 'Lake Placid, United States', 'Annemarie', 'Moser-Pröll', 'Austria', 'Gold', 1980, 1953
union select 'Alpine Skiing', 'Women''s Downhill', 'Lake Placid, United States', 'Hanni', 'Wenzel', 'Liechtenstein', 'Silver', 1980, 1956
union select 'Speed Skating', 'Men''s 5,000 Metres', 'Lake Placid, United States', 'Tom Erik', 'Oxholm', 'Norway', 'Bronze', 1980, 1959
union select 'Speed Skating', 'Men''s 5,000 Metres', 'Lake Placid, United States', 'Eric', 'Heiden', 'United States', 'Gold', 1980, 1958
union select 'Speed Skating', 'Men''s 5,000 Metres', 'Lake Placid, United States', 'Kay', 'Stenshjemmet', 'Norway', 'Silver', 1980, 1953
union select 'Speed Skating', 'Women''s 1,500 Metres', 'Lake Placid, United States', 'Sabine', 'Becker', 'East Germany', 'Bronze', 1980, 1959
union select 'Speed Skating', 'Women''s 1,500 Metres', 'Lake Placid, United States', 'Annie', 'Borckink', 'Netherlands', 'Gold', 1980, 1951
union select 'Speed Skating', 'Women''s 1,500 Metres', 'Lake Placid, United States', 'Ria', 'Visser', 'Netherlands', 'Silver', 1980, 1961
union select 'Alpine Skiing', 'Men''s Giant Slalom', 'Sarajevo, Yugoslavia', 'Andreas', 'Wenzel', 'Liechtenstein', 'Bronze', 1984, 1958
union select 'Alpine Skiing', 'Men''s Giant Slalom', 'Sarajevo, Yugoslavia', 'Max', 'Julen', 'Switzerland', 'Gold', 1984, 1961
union select 'Alpine Skiing', 'Men''s Giant Slalom', 'Sarajevo, Yugoslavia', 'Jure', 'Franko', 'Yugoslavia', 'Silver', 1984, 1962
union select 'Luge', 'Women''s Singles', 'Sarajevo, Yugoslavia', 'Ute', 'Oberhoffner', 'East Germany', 'Bronze', 1984, 1961
union select 'Luge', 'Women''s Singles', 'Sarajevo, Yugoslavia', 'Steffi', 'Martin', 'East Germany', 'Gold', 1984, 1962
union select 'Luge', 'Women''s Singles', 'Sarajevo, Yugoslavia', 'Bettina', 'Schmidt', 'East Germany', 'Silver', 1984, 1960
union select 'Speed Skating', 'Men''s 1,000 Metres', 'Sarajevo, Yugoslavia', 'Kai Arne', 'Engelstad', 'Norway', 'Bronze', 1984, 1954
union select 'Speed Skating', 'Men''s 1,000 Metres', 'Sarajevo, Yugoslavia', 'Gaétan', 'Boucher', 'Canada', 'Gold', 1984, 1958
union select 'Speed Skating', 'Men''s 1,000 Metres', 'Sarajevo, Yugoslavia', 'Sergey', 'Khlebnikov', 'Soviet Union', 'Silver', 1984, 1955
union select 'Archery', 'Women''s Individual', 'Barcelona, Spain', 'Natalia', 'Valeeva', 'Unified Team', 'Bronze', 1992, 1969
union select 'Archery', 'Women''s Individual', 'Barcelona, Spain', 'Cho', 'Youn-jeong', 'South Korea', 'Gold', 1992, 1969
union select 'Archery', 'Women''s Individual', 'Barcelona, Spain', 'Kim', 'Soo-nyung', 'South Korea', 'Silver', 1992, 1971
union select 'Athletics', 'Men''s 800 M', 'Barcelona, Spain', 'Johnny', 'Gray', 'United States', 'Bronze', 1992, 1960
union select 'Athletics', 'Men''s 800 M', 'Barcelona, Spain', 'William', 'Tanui', 'Kenya', 'Gold', 1992, 1964
union select 'Athletics', 'Men''s 800 M', 'Barcelona, Spain', 'Nixon', 'Kiprotich', 'Kenya', 'Silver', 1992, 1962
union select 'Swimming', 'Men''s 100 Metre Freestyle', 'Barcelona, Spain', 'Stéphan', 'Caron', 'France', 'Bronze', 1992, 1966
union select 'Swimming', 'Men''s 100 Metre Freestyle', 'Barcelona, Spain', 'Alexander', 'Popov', 'Unified Team', 'Gold', 1992, 1971
union select 'Swimming', 'Men''s 100 Metre Freestyle', 'Barcelona, Spain', 'Gustavo', 'Borges', 'Brazil', 'Silver', 1992, 1972
union select 'Swimming', 'Women''s 200 Metre Breaststroke', 'Barcelona, Spain', 'Anita', 'Nall', 'United States', 'Bronze', 1992, 1976
union select 'Swimming', 'Women''s 200 Metre Breaststroke', 'Barcelona, Spain', 'Kyoko', 'Iwasaki', 'Japan', 'Gold', 1992, 1978
union select 'Swimming', 'Women''s 200 Metre Breaststroke', 'Barcelona, Spain', 'Lin', 'Li', 'China', 'Silver', 1992, 1970
union select 'Alpine Skiing', 'Women''s Combined', 'Nagano, Japan', 'Hilde', 'Gerg', 'Germany', 'Bronze', 1998, 1975
union select 'Alpine Skiing', 'Women''s Combined', 'Nagano, Japan', 'Katja', 'Seizinger', 'Germany', 'Gold', 1998, 1972
union select 'Alpine Skiing', 'Women''s Combined', 'Nagano, Japan', 'Martina', 'Ertl-Renz', 'Germany', 'Silver', 1998, 1973
union select 'Biathlon', 'Men''s 20 Km', 'Nagano, Japan', 'Alexei', 'Aidarov', 'Belarus', 'Bronze', 1998, 1974
union select 'Biathlon', 'Men''s 20 Km', 'Nagano, Japan', 'Halvard', 'Hanevold', 'Norway', 'Gold', 1998, 1969
union select 'Biathlon', 'Men''s 20 Km', 'Nagano, Japan', 'Pieralberto', 'Carrara', 'Italy', 'Silver', 1998, 1966
union select 'Cross-country Skiing', 'Men''s 50 Km freestyle', 'Nagano, Japan', 'Christian', 'Hoffmann', 'Austria', 'Bronze', 1998, 1974
union select 'Cross-country Skiing', 'Men''s 50 Km freestyle', 'Nagano, Japan', 'Bjørn', 'Dæhlie', 'Norway', 'Gold', 1998, 1967
union select 'Cross-country Skiing', 'Men''s 50 Km freestyle', 'Nagano, Japan', 'Niklas', 'Jonsson', 'Sweden', 'Silver', 1998, 1969
union select 'Cross-country Skiing', 'Women''s Combined 5 Km + 10 km pursuit', 'Nagano, Japan', 'Katerina', 'Neumannová', 'Czech Republic', 'Bronze', 1998, 1973
union select 'Cross-country Skiing', 'Women''s Combined 5 Km + 10 km pursuit', 'Nagano, Japan', 'Larisa', 'Lazutina', 'Russia', 'Gold', 1998, 1965
union select 'Cross-country Skiing', 'Women''s Combined 5 Km + 10 km pursuit', 'Nagano, Japan', 'Olga', 'Danilova', 'Russia', 'Silver', 1998, 1970
union select 'Athletics', '200 Metres', 'Sydney, Australia', 'Ato', 'Boldon', 'Trinidad and Tobago', 'Bronze', 2000, 1973
union select 'Athletics', '200 Metres', 'Sydney, Australia', 'Konstantinos', 'Kenteris', 'Greece', 'Gold', 2000, 1973
union select 'Athletics', '200 Metres', 'Sydney, Australia', 'Darren', 'Campbell', 'Great Britain', 'Silver', 2000, 1973
union select 'Athletics', '5000 Metres', 'Sydney, Australia', 'Brahim', 'Lahlafi', 'Morocco', 'Bronze', 2000, 1968
union select 'Athletics', '5000 Metres', 'Sydney, Australia', 'Million', 'Wolde', 'Ethiopia', 'Gold', 2000, 1979
union select 'Athletics', '5000 Metres', 'Sydney, Australia', 'Ali', 'Saïdi-Sief', 'Algeria', 'Silver', 2000, 1978
union select 'Field', 'High Jump', 'Sydney, Australia', 'Abderrahmane', 'Hammad', 'Algeria', 'Bronze', 2000, 1977
union select 'Field', 'High Jump', 'Sydney, Australia', 'Sergey', 'Klyugin', 'Russia', 'Gold', 2000, 1974
union select 'Field', 'High Jump', 'Sydney, Australia', 'Javier', 'Sotomayor', 'Cuba', 'Silver', 2000, 1967
union select 'Road', 'Men''s Marathon', 'Sydney, Australia', 'Tesfaye', 'Tola', 'Ethiopia', 'Bronze', 2000, 1974
union select 'Road', 'Men''s Marathon', 'Sydney, Australia', 'Gezahegne', 'Abera', 'Ethiopia', 'Gold', 2000, 1978
union select 'Road', 'Men''s Marathon', 'Sydney, Australia', 'Erick', 'Wainaina', 'Kenya', 'Silver', 2000, 1973
union select 'Alpine Skiing', 'Women''s Super-G', 'Salt Lake City, United States', 'Karen', 'Putzer', 'Italy', 'Bronze', 2002, 1978
union select 'Alpine Skiing', 'Women''s Super-G', 'Salt Lake City, United States', 'Daniela', 'Ceccarelli', 'Italy', 'Gold', 2002, 1975
union select 'Alpine Skiing', 'Women''s Super-G', 'Salt Lake City, United States', 'Janica', 'Kostelic', 'Croatia', 'Silver', 2002, 1982
union select 'Figure Skating', 'Women''s Singles', 'Salt Lake City, United States', 'Michelle', 'Kwan', 'United States', 'Bronze', 2002, 1980
union select 'Figure Skating', 'Women''s Singles', 'Salt Lake City, United States', 'Sarah', 'Hughes', 'United States', 'Gold', 2002, 1985
union select 'Figure Skating', 'Women''s Singles', 'Salt Lake City, United States', 'Irina', 'Slutskaya', 'Russia', 'Silver', 2002, 1979
union select 'Freestyle Skiing', 'Men''s Moguls', 'Salt Lake City, United States', 'Janne', 'Lahtela', 'Finland', 'Gold', 2002, 1974
union select 'Freestyle Skiing', 'Men''s Moguls', 'Salt Lake City, United States', 'Travis', 'Mayer', 'United States', 'Silver', 2002, 1982
union select 'Freestyle Skiing', 'Women''s Aerials', 'Salt Lake City, United States', 'Deidra', 'Dionne', 'Canada', 'Bronze', 2002, 1982
union select 'Freestyle Skiing', 'Women''s Aerials', 'Salt Lake City, United States', 'Alisa', 'Camplin', 'Australia', 'Gold', 2002, 1974
union select 'Freestyle Skiing', 'Women''s Aerials', 'Salt Lake City, United States', 'Veronica', 'Brenner', 'Canada', 'Silver', 2002, 1974
union select 'Archery', 'Men''s Individual', 'Athens, Greece', 'Tim', 'Cuddihy', 'Australia', 'Bronze', 2004, 1987
union select 'Archery', 'Men''s Individual', 'Athens, Greece', 'Marco', 'Galiazzo', 'Italy', 'Gold', 2004, 1983
union select 'Archery', 'Men''s Individual', 'Athens, Greece', 'Hiroshi', 'Yamamoto', 'Japan', 'Silver', 2004, 1962
union select 'Archery', 'Women''s Individual', 'Athens, Greece', 'Alison', 'Williamson', 'Great Britain', 'Bronze', 2004, 1971
union select 'Archery', 'Women''s Individual', 'Athens, Greece', 'Park', 'Sung-hyun', 'South Korea', 'Gold', 2004, 1983
union select 'Archery', 'Women''s Individual', 'Athens, Greece', 'Lee', 'Sung-jin', 'South Korea', 'Silver', 2004, 1985
union select 'Field', 'Long Jump', 'Athens, Greece', 'Joan Lino', 'Martínez', 'Spain', 'Bronze', 2004, 1978
union select 'Field', 'Long Jump', 'Athens, Greece', 'Dwight', 'Phillips', 'United States', 'Gold', 2004, 1977
union select 'Field', 'Long Jump', 'Athens, Greece', 'John', 'Moffitt', 'United States', 'Silver', 2004, 1980
union select 'Road', 'Women''s Marathon', 'Athens, Greece', 'Deena', 'Kastor', 'United States', 'Bronze', 2004, 1973
union select 'Road', 'Women''s Marathon', 'Athens, Greece', 'Mizuki', 'Noguchi', 'Japan', 'Gold', 2004, 1978
union select 'Road', 'Women''s Marathon', 'Athens, Greece', 'Catherine', 'Ndereba', 'Kenya', 'Silver', 2004, 1972
union select 'Biathlon', 'Men''s Sprint', 'Turin, Italy', 'Frode', 'Andresen', 'Norway', 'Bronze', 2006, 1973
union select 'Biathlon', 'Men''s Sprint', 'Turin, Italy', 'Sven', 'Fischer', 'Germany', 'Gold', 2006, 1971
union select 'Biathlon', 'Men''s Sprint', 'Turin, Italy', 'Halvard', 'Hanevold', 'Norway', 'Silver', 2006, 1969
union select 'Cross-country Skiing', 'Women''s 30 Km', 'Turin, Italy', 'Justyna', 'Kowalczyk-Tekieli', 'Poland', 'Bronze', 2006, 1983
union select 'Cross-country Skiing', 'Women''s 30 Km', 'Turin, Italy', 'Katerina', 'Neumannová', 'Czech Republic', 'Gold', 2006, 1973
union select 'Cross-country Skiing', 'Women''s 30 Km', 'Turin, Italy', 'Yuliya', 'Chepalova', 'Russia', 'Silver', 2006, 1976
union select 'Luge', 'Women''s Singles', 'Turin, Italy', 'Tatjana', 'Hüfner', 'Germany', 'Bronze', 2006, 1983
union select 'Luge', 'Women''s Singles', 'Turin, Italy', 'Sylke', 'Otto', 'Germany', 'Gold', 2006, 1969
union select 'Luge', 'Women''s Singles', 'Turin, Italy', 'Silke', 'Kraushaar-Pielach', 'Germany', 'Silver', 2006, 1970
union select 'Athletics', 'Women''s Javelin Throw', 'Beijing, China', 'Christina', 'Obergföll', 'Germany', 'Bronze', 2008, 1981
union select 'Athletics', 'Women''s Javelin Throw', 'Beijing, China', 'Barbora', 'Špotáková', 'Czech Republic', 'Gold', 2008, 1981
union select 'Athletics', 'Women''s Javelin Throw', 'Beijing, China', 'Mariya', 'Abakumova', 'Russia', 'Silver', 2008, 1986
union select 'Cycling', 'Men''s Time Trial', 'Beijing, China', 'Levi', 'Leipheimer', 'United States', 'Bronze', 2008, 1973
union select 'Cycling', 'Men''s Time Trial', 'Beijing, China', 'Fabian', 'Cancellara', 'Switzerland', 'Gold', 2008, 1981
union select 'Cycling', 'Men''s Time Trial', 'Beijing, China', 'Gustav', 'Larsson', 'Sweden', 'Silver', 2008, 1980
union select 'Trampoline', 'Men''s', 'Beijing, China', 'Dong', 'Dong', 'China', 'Bronze', 2008, 1989
union select 'Trampoline', 'Men''s', 'Beijing, China', 'Lu', 'Chunlong', 'China', 'Gold', 2008, 1989
union select 'Trampoline', 'Men''s', 'Beijing, China', 'Jason', 'Burnett', 'Canada', 'Silver', 2008, 1986
union select 'Trampoline', 'Women''s', 'Beijing, China', 'Ekaterina', 'Khilko', 'Uzbekistan', 'Bronze', 2008, 1982
union select 'Trampoline', 'Women''s', 'Beijing, China', 'He', 'Wenna', 'China', 'Gold', 2008, 1989
union select 'Trampoline', 'Women''s', 'Beijing, China', 'Karen', 'Cockburn', 'Canada', 'Silver', 2008, 1980
) 
insert OlympicSportSubCategoryOlympian(OlympianId, OlympicMedalId, OlympicSportSubCategoryId)
select 
op.OlympianId, om.OlympicMedalId ,oss.OlympicSportSubCategoryId 
from x
join Sport s 
on s.SportName = x.Sport
join SportSubCategory ssc 
on ssc.SportSubCategoryName = x.SportSubcategory 
and ssc.SportId = s.SportId
join City c 
on c.CityName = substring(x.OlympicLocation,0, charindex(',', x.olympiclocation, 0))
join Olympics o 
on o.OlympicYear = x.OlympicYear
and o.CityId = c.CityId
join OlympicSportSubCategory oss 
on oss.SportSubCategoryId = ssc.SportSubCategoryId
and oss.OlympicsId = o.OlympicsId
join Olympian op 
on op.FirstName = x.FirstName
and op.LastName = x.LastName
and op.YearBorn = x.YearBorn
join OlympicMedal om 
on om.OlympicMedalName = x.Medal










