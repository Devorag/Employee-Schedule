-- SM Excellent! 100%
/*
    1. The current presidential term is undergoing serious political challenges. 
       Two presidents were already impeached and the third is now beginning his term. 
       insert these three new presidents, the first two have already ended their term.
	    1) Jack Valento - Republican (Born 1980)
        2) Sam Smith - Democrat (Born 1964)
        3) Nick Wonder - Republican (Born 1995)
 */
c
SELECT 47, 'Jack', 'Valento', 'Republican', 1980, 2021, 2022
union select 48, 'Sam', 'Smith', 'Democrat', 1964, 2022, 2023
union SELECT 49, 'Nick', 'Wonder', 'Republican', 1995, 2023, null
/*
    2. After the recent unrest, a new law was made that multiple presidents can serve a term together. 
       Elections were held and all United States Olympic medalists from any 21st century Olympics were elected for the current term. 
       They are all Republicans. Please add them to the table.
*/
insert president( p.num, p.firstname, p.lastname, p.party, p.yearborn, p.termstart)
select 47, m.firstname, m.lastname, 'Republican', m.yearborn, 2024
from Medalist m
where m.Country = 'United States'
and m.OlympicYear >= 2000

